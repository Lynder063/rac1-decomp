"""Write extracted levels as a Godot 4 project that the editor opens and edits.

Each level is a scene, levels/level_NN/level_NN.tscn:

    Level_NN              rc1/level.gd: fly camera when the scene is run
      WorldEnvironment    the sky, baked into sky.png, and flat ambient light
      Sun                 a directional light for the editor and the fly camera
      Game                game axes (Z up) rotated into Godot's (Y up)
        Terrain           terrain.glb, one node per fragment (editable children)
        Ties/Tie_NNNN     instances of ties/tie_<class>.glb
        Shrubs/Shrub_NNNN instances of shrubs/shrub_<class>.glb
        Mobys/Moby_NNNN   instances of mobys/moby_<class>.tscn: for now a
                          marker and a label naming the class

Placements are node transforms in game units; fields the game stores
per instance are node metadata (rc1_*), so a packer can write them back.
"""

import colorsys
import json
import shutil
import struct
from pathlib import Path

from formats import png, unpack
from gltf import Gltf
from level import Level
from mesh import Mesh
from mobys import moby_class_names, moby_instances
from shrubs import shrub_classes, shrub_instances
from sky import panorama, sky
from terrain import terrain
from ties import tie_classes, tie_instances

SCRIPTS = Path(__file__).parent / "rc1"
GAME_TO_GODOT = [1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0, 0, 0, 0, 0, 1]  # (x, y, z) -> (x, z, -y)
# Placements store W = 0.01 (0.0 on some); only other values become metadata.
STORED_W = struct.unpack("<f", struct.pack("<f", 0.01))[0]
PANORAMA = (2048, 1024)  # About one texel per pixel around the horizon.

PROJECT = """config_version=5

[application]

config/name="Ratchet & Clank levels (PAL)"
run/main_scene="{main}"

[importer_defaults]

scene={{
"meshes/create_shadow_meshes": false,
"meshes/ensure_tangents": false,
"meshes/force_disable_compression": true,
"meshes/generate_lods": false
}}
texture={{
"compress/mode": 0,
"detect_3d/compress_to": 0,
"mipmaps/generate": true
}}
"""


class Raw(str):
    """A value already in Godot's text syntax, such as ExtResource("id")."""


def number(x: float) -> str:
    """The shortest text that reads back as the same float32, as Godot writes it."""
    target = struct.pack("<f", x)
    for digits in range(1, 10):
        shortest = float(f"{x:.{digits}g}")
        if struct.pack("<f", shortest) == target:
            break
    text = repr(shortest).removesuffix(".0")
    return "0" if text == "-0" else text


def transform(m: list[float]) -> Raw:
    """Transform3D lists basis rows, then the origin; m is column-major."""
    values = [m[col * 4 + row] for row in range(3) for col in range(3)] + m[12:15]
    return Raw(f"Transform3D({', '.join(map(number, values))})")


def apply(m: list[float], p) -> tuple[float, float, float]:
    return tuple(sum(m[k * 4 + i] * p[k] for k in range(3)) + m[12 + i] for i in range(3))


def value(v) -> str:
    if isinstance(v, Raw):
        return v
    if isinstance(v, bool):
        return "true" if v else "false"
    if isinstance(v, float):
        return number(v)
    if isinstance(v, list):
        return f"[{', '.join(map(value, v))}]"
    return json.dumps(v) if isinstance(v, str) else str(v)


class Scene:
    """A text scene (.tscn) built node by node."""

    def __init__(self):
        self.resources, self.subresources, self.nodes, self.editable = [], [], [], []

    @staticmethod
    def block(head: str, properties: dict) -> str:
        return "\n".join([head] + [f"{k.replace('__', '/')} = {value(v)}" for k, v in properties.items()])

    def resource(self, kind: str, path: str, rid: str) -> Raw:
        self.resources.append(f'[ext_resource type="{kind}" path="{path}" id="{rid}"]')
        return Raw(f'ExtResource("{rid}")')

    def subresource(self, kind: str, rid: str, **properties) -> Raw:
        self.subresources.append(self.block(f'[sub_resource type="{kind}" id="{rid}"]', properties))
        return Raw(f'SubResource("{rid}")')

    def node(self, name: str, parent: str | None = None, kind: str | None = None,
             instance: str | None = None, **properties) -> None:
        head = f'[node name="{name}"'
        head += f' type="{kind}"' if kind else ""
        head += f' parent="{parent}"' if parent is not None else ""
        head += f" instance={instance}" if instance else ""
        self.nodes.append(self.block(head + "]", properties))

    def text(self) -> str:
        parts = ["[gd_scene format=3]", "\n".join(self.resources), *self.subresources, *self.nodes]
        parts += ["\n".join(f'[editable path="{path}"]' for path in self.editable)] if self.editable else []
        return "\n\n".join(p for p in parts if p) + "\n"


class LevelWriter:
    """Textures, meshes and the scene for one level."""

    def __init__(self, project: Path, level: Level):
        self.level = level
        self.name = f"level_{level.id:02}"
        self.dir = project / "levels" / self.name
        self.res = f"res://levels/{self.name}"
        self.textures = {}
        self.scene = Scene()
        self.corners = []
        self.stats = {"schema": 1, "level": level.id,
                      "overlay": {"entry_point": level.overlay["entry_point"],
                                  "sections": [{k: s[k] for k in ("address", "bytes", "type")}
                                               for s in level.overlay["sections"]]},
                      "mesh_instances": 0, "meshes": 0, "triangles": 0}

    def material(self, gltf: Gltf, key, depth: int) -> int:
        name = f"{key[0]}_{key[1]:04}"
        texture = self.textures[name] = self.level.texture(*key)
        return gltf.material(name, f"{'../' * depth}textures/{name}.png", cutout=texture.cutout)

    def glb(self, path: str, meshes: list[Mesh], depth: int) -> str:
        """Write meshes, one node each, to path; return its res:// path."""
        gltf = Gltf()
        for mesh in meshes:
            materials = {key: self.material(gltf, key, depth) for key in mesh.faces}
            gltf.node(mesh.name, gltf.mesh(mesh, materials))
        target = self.dir / path
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(gltf.glb())
        return f"{self.res}/{path}"

    def place(self, mesh: Mesh, matrix: list[float] | None = None) -> None:
        """Count a placed mesh, and keep its corners in Godot space for check.gd."""
        low, high = mesh.bounds()
        for p in ((x, y, z) for x in (low[0], high[0]) for y in (low[1], high[1]) for z in (low[2], high[2])):
            x, y, z = apply(matrix, p) if matrix else p
            self.corners.append((x, z, -y))
        self.stats["mesh_instances"] += 1
        self.stats["triangles"] += mesh.triangles

    def write(self, lod: int) -> dict:
        level = self.level
        self.dir.mkdir(parents=True)
        script = self.scene.resource("Script", "res://rc1/level.gd", "level")
        self.scene.node(f"Level_{level.id:02}", kind="Node3D", script=script, metadata__rc1_level=level.id)
        sky_offset, = unpack("<I", level.index, 0x10)
        self.write_environment(sky(level.block(sky_offset)) if sky_offset else None)
        self.scene.node("Game", ".", "Node3D", transform=transform(GAME_TO_GODOT))
        self.write_terrain(terrain(level.block(unpack("<I", level.index, 0x08)[0]), lod), lod)
        ties = tie_classes(level)
        self.write_objects("tie", ties, tie_instances(level.gameplay, ties))
        shrubs = shrub_classes(level)
        self.write_objects("shrub", shrubs, shrub_instances(level.gameplay, shrubs))
        self.write_mobys(moby_instances(level.gameplay))
        return self.finish()

    def write_terrain(self, fragments: list[Mesh], lod: int) -> None:
        path = self.glb("terrain.glb", fragments, 0)
        self.scene.node("Terrain", "Game", instance=self.scene.resource("PackedScene", path, "terrain"))
        self.scene.editable.append("Game/Terrain")
        for mesh in fragments:
            self.place(mesh)
        self.stats["meshes"] += len(fragments)
        self.stats["terrain"] = {"lod": lod, "fragments": len(fragments),
                                 "triangles": sum(m.triangles for m in fragments)}

    def write_objects(self, family: str, classes: dict[int, Mesh], placements: list[dict]) -> None:
        """One GLB per class, and one instance of it per placement."""
        group, title = f"{family.capitalize()}s", family.capitalize()
        scenes = {class_id: self.scene.resource("PackedScene", self.glb(f"{family}s/{family}_{class_id}.glb", [mesh], 1),
                                                f"{family}_{class_id}")
                  for class_id, mesh in classes.items()}
        self.scene.node(group, "Game", "Node3D")
        for p in placements:
            fields = {f"metadata__rc1_{k}": v for k, v in p.items() if k not in ("class_id", "matrix", "stored_w")}
            if p["stored_w"] != STORED_W:
                fields["metadata__rc1_matrix_w"] = p["stored_w"]
            self.scene.node(f"{title}_{p['index']:04}", f"Game/{group}", instance=scenes[p["class_id"]],
                            transform=transform(p["matrix"]), **fields)
            self.place(classes[p["class_id"]], p["matrix"])
        self.stats["meshes"] += len({p["class_id"] for p in placements})
        self.stats[f"{family}s"] = {"classes": len(classes), "instances": len(placements),
                                    "class_triangles": sum(m.triangles for m in classes.values())}

    def write_mobys(self, placements: list[dict]) -> None:
        """Placed mobys, each an instance of its class's scene. Until class
        meshes are extracted that scene is a marker and a label, so mobys
        are not level geometry and stay out of the mesh counts and bounds.

        rotation_order XYZ makes the Inspector show the game's own Euler
        angles (R = Rz * Ry * Rx); the transform itself is exact either way.
        """
        names = moby_class_names()
        scenes = {}
        for class_id in sorted({p["class_id"] for p in placements}):
            path = f"mobys/moby_{class_id}.tscn"
            write_marker(self.dir / path, class_id, f"{class_id} {names[class_id]}" if class_id in names else str(class_id))
            scenes[class_id] = self.scene.resource("PackedScene", f"{self.res}/{path}", f"moby_{class_id}")
        self.scene.node("Mobys", "Game", "Node3D")
        for p in placements:
            fields = {f"metadata__rc1_{k}": v for k, v in {"index": p["index"], **p["fields"]}.items()}
            self.scene.node(f"Moby_{p['index']:04}", "Game/Mobys", instance=scenes[p["class_id"]],
                            rotation_order=0, transform=transform(p["matrix"]), **fields)
        self.stats["mobys"] = {"classes": len(scenes), "named_classes": sum(c in names for c in scenes),
                               "instances": len(placements)}

    def write_environment(self, data) -> None:
        """The sky as a panorama (sky.png), flat ambient light and a sun.

        The game centres its sky on the camera and never moves it, so a
        panorama shows exactly what the shells do, at infinity.
        """
        environment = {"ambient_light_source": 2, "ambient_light_color": Raw("Color(0.85, 0.9, 1, 1)"),
                       "ambient_light_energy": 0.7}
        if data is None:
            environment.update(background_mode=1, background_color=Raw("Color(0, 0, 0, 1)"))
        else:
            width, height = PANORAMA
            (self.dir / "sky.png").write_bytes(png(width, height, 2, panorama(data, width, height)))
            texture = self.scene.resource("Texture2D", f"{self.res}/sky.png", "sky_png")
            material = self.scene.subresource("PanoramaSkyMaterial", "sky_material", panorama=texture)
            environment.update(background_mode=2, sky=self.scene.subresource("Sky", "sky", sky_material=material))
            self.stats["sky"] = {"shells": len(data.shells), "triangles": sum(m.triangles for m in data.shells),
                                 "textures": len(data.textures), "panorama": [width, height]}
        self.scene.node("WorldEnvironment", ".", "WorldEnvironment",
                        environment=self.scene.subresource("Environment", "environment", **environment))
        self.scene.node("Sun", ".", "DirectionalLight3D", rotation=Raw("Vector3(-0.959931, -0.610865, 0)"),
                        light_energy=0.8)

    def finish(self) -> dict:
        """Textures, the scene and level.json."""
        (self.dir / "textures").mkdir(parents=True, exist_ok=True)
        for name, texture in sorted(self.textures.items()):
            (self.dir / "textures" / f"{name}.png").write_bytes(texture.png())
        self.stats["textures"] = len(self.textures)
        self.stats["bounds"] = [[min(p[i] for p in self.corners) for i in range(3)],
                                [max(p[i] for p in self.corners) for i in range(3)]]
        (self.dir / f"{self.name}.tscn").write_text(self.scene.text())
        (self.dir / "level.json").write_text(json.dumps(self.stats, indent=2) + "\n")
        return self.stats


def write_marker(path: Path, class_id: int, label: str) -> None:
    """A moby class's stand-in: a box coloured by class number, and a label
    that faces the camera and fades out beyond 60 units."""
    scene = Scene()
    r, g, b = colorsys.hsv_to_rgb(class_id * 0.618034 % 1.0, 0.65, 0.95)
    colour = scene.subresource("StandardMaterial3D", "colour",
                               albedo_color=Raw(f"Color({number(r)}, {number(g)}, {number(b)}, 1)"))
    box = scene.subresource("BoxMesh", "box", material=colour, size=Raw("Vector3(0.5, 0.5, 0.5)"))
    scene.node(f"Moby_{class_id}", kind="Node3D", metadata__rc1_class=class_id)
    scene.node("Marker", ".", "MeshInstance3D", transform=Raw("Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.25)"),
               mesh=box)
    scene.node("Label", ".", "Label3D", transform=Raw("Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0.9)"),
               visibility_range_end=60.0, billboard=1, pixel_size=0.006, text=label, font_size=48)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(scene.text())


def write_project(project: Path, levels: list[int]) -> None:
    """project.godot and the rc1 scripts; the main scene is the first level."""
    project.mkdir(parents=True, exist_ok=True)
    main = f"res://levels/level_{levels[0]:02}/level_{levels[0]:02}.tscn"
    (project / "project.godot").write_text(PROJECT.format(main=main))
    shutil.copytree(SCRIPTS, project / "rc1")
