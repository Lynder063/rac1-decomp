"""Write extracted levels as a Godot 4 project that the editor opens and edits.

Each level is a scene, levels/level_NN/level_NN.tscn:

    Level_NN              rc1/level.gd: fly camera when the scene is run
      Game                game axes (Z up) rotated into Godot's (Y up)
        Terrain           terrain.glb, one node per fragment (editable children)
        Ties/Tie_NNNN     instances of ties/tie_<class>.glb
        Shrubs/Shrub_NNNN instances of shrubs/shrub_<class>.glb

Placements are node transforms in game units; fields the game stores
per instance are node metadata (rc1_*), so a packer can write them back.
"""

import json
import shutil
import struct
from pathlib import Path

from formats import unpack
from gltf import Gltf
from level import Level
from mesh import Mesh
from shrubs import shrub_classes, shrub_instances
from terrain import terrain
from ties import tie_classes, tie_instances

SCRIPTS = Path(__file__).parent / "rc1"
GAME_TO_GODOT = [1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 0, 0, 0, 0, 0, 1]  # (x, y, z) -> (x, z, -y)
# Placements store W = 0.01 (0.0 on some); only other values become metadata.
STORED_W = struct.unpack("<f", struct.pack("<f", 0.01))[0]

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


def number(x: float) -> str:
    """The shortest text that reads back as the same float32, as Godot writes it."""
    target = struct.pack("<f", x)
    for digits in range(1, 10):
        shortest = float(f"{x:.{digits}g}")
        if struct.pack("<f", shortest) == target:
            break
    text = repr(shortest).removesuffix(".0")
    return "0" if text == "-0" else text


def transform(m: list[float]) -> str:
    """Transform3D lists basis rows, then the origin; m is column-major."""
    values = [m[col * 4 + row] for row in range(3) for col in range(3)] + m[12:15]
    return f"Transform3D({', '.join(map(number, values))})"


def apply(m: list[float], p) -> tuple[float, float, float]:
    return tuple(sum(m[k * 4 + i] * p[k] for k in range(3)) + m[12 + i] for i in range(3))


def value(v) -> str:
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
        self.resources, self.nodes, self.editable = [], [], []

    def resource(self, kind: str, path: str, rid: str) -> str:
        self.resources.append(f'[ext_resource type="{kind}" path="{path}" id="{rid}"]')
        return rid

    def node(self, name: str, parent: str | None = None, kind: str | None = None,
             instance: str | None = None, **properties) -> None:
        head = f'[node name="{name}"'
        head += f' type="{kind}"' if kind else ""
        head += f' parent="{parent}"' if parent is not None else ""
        head += f' instance=ExtResource("{instance}")' if instance else ""
        lines = [head + "]"]
        for key, v in properties.items():
            key = key.replace("__", "/")
            lines.append(f"{key} = {v if key in ('transform', 'script') else value(v)}")
        self.nodes.append("\n".join(lines))

    def text(self) -> str:
        parts = ["[gd_scene format=3]", "\n".join(self.resources), *self.nodes]
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

    def material(self, gltf: Gltf, key, depth: int, texture=None, **options) -> int:
        name = f"{key[0]}_{key[1]:04}"
        texture = texture or self.level.texture(*key)
        self.textures[name] = texture
        return gltf.material(name, f"{'../' * depth}textures/{name}.png",
                             cutout=texture.cutout and not options.get("unlit"), **options)

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
        self.scene.resource("Script", "res://rc1/level.gd", "level")
        self.scene.node(f"Level_{level.id:02}", kind="Node3D", script='ExtResource("level")',
                        metadata__rc1_level=level.id)
        self.scene.node("Game", ".", "Node3D", transform=transform(GAME_TO_GODOT))
        self.write_terrain(terrain(level.block(unpack("<I", level.index, 0x08)[0]), lod), lod)
        ties = tie_classes(level)
        self.write_objects("tie", ties, tie_instances(level.gameplay, ties))
        shrubs = shrub_classes(level)
        self.write_objects("shrub", shrubs, shrub_instances(level.gameplay, shrubs))
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
        for class_id, mesh in classes.items():
            path = self.glb(f"{family}s/{family}_{class_id}.glb", [mesh], 1)
            self.scene.resource("PackedScene", path, f"{family}_{class_id}")
        self.scene.node(group, "Game", "Node3D")
        for p in placements:
            fields = {f"metadata__rc1_{k}": v for k, v in p.items() if k not in ("class_id", "matrix", "stored_w")}
            if p["stored_w"] != STORED_W:
                fields["metadata__rc1_matrix_w"] = p["stored_w"]
            self.scene.node(f"{title}_{p['index']:04}", f"Game/{group}", instance=f"{family}_{p['class_id']}",
                            transform=transform(p["matrix"]), **fields)
            self.place(classes[p["class_id"]], p["matrix"])
        self.stats["meshes"] += len({p["class_id"] for p in placements})
        self.stats[f"{family}s"] = {"classes": len(classes), "instances": len(placements),
                                    "class_triangles": sum(m.triangles for m in classes.values())}

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


def write_project(project: Path, levels: list[int]) -> None:
    """project.godot and the rc1 scripts; the main scene is the first level."""
    project.mkdir(parents=True, exist_ok=True)
    main = f"res://levels/level_{levels[0]:02}/level_{levels[0]:02}.tscn"
    (project / "project.godot").write_text(PROJECT.format(main=main))
    shutil.copytree(SCRIPTS, project / "rc1")
