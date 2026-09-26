"""A small glTF 2.0 binary (GLB) writer for extracted meshes.

Positions stay in game axes; the Godot scene rotates the whole level
once. Textures are referenced by relative URI so that meshes share one
set of PNGs, which Godot imports as ordinary textures.
"""

import json
import math
import struct

from mesh import Mesh

FLOAT, ARRAY_BUFFER = 5126, 34962
REPEAT, LINEAR, LINEAR_MIPMAP_LINEAR = 10497, 9729, 9987


def face_normal(a, b, c) -> tuple[float, float, float]:
    ab = [b[i] - a[i] for i in range(3)]
    ac = [c[i] - a[i] for i in range(3)]
    n = (ab[1] * ac[2] - ab[2] * ac[1], ab[2] * ac[0] - ab[0] * ac[2], ab[0] * ac[1] - ab[1] * ac[0])
    length = math.sqrt(sum(x * x for x in n))
    return tuple(x / length for x in n) if length > 1e-20 else (0.0, 0.0, 1.0)


class Gltf:
    def __init__(self):
        self.buffer = bytearray()
        self.doc = {"asset": {"version": "2.0", "generator": "rac1-decomp tools/extract"},
                    "scene": 0, "scenes": [{"nodes": []}], "nodes": [], "meshes": [],
                    "materials": [], "textures": [], "images": [], "accessors": [], "bufferViews": [],
                    "samplers": [{"magFilter": LINEAR, "minFilter": LINEAR_MIPMAP_LINEAR,
                                  "wrapS": REPEAT, "wrapT": REPEAT}]}
        self.materials: dict = {}

    def floats(self, rows: list[tuple], bounds: bool = False) -> int:
        """An accessor for float vectors; bounds are those of the stored float32 values."""
        width = len(rows[0])
        payload = struct.pack(f"<{len(rows) * width}f", *(x for row in rows for x in row))
        self.buffer.extend(bytes(-len(self.buffer) % 4))
        self.doc["bufferViews"].append({"buffer": 0, "byteOffset": len(self.buffer),
                                        "byteLength": len(payload), "target": ARRAY_BUFFER})
        self.buffer.extend(payload)
        accessor = {"bufferView": len(self.doc["bufferViews"]) - 1, "componentType": FLOAT,
                    "count": len(rows), "type": f"VEC{width}"}
        if bounds:
            stored = list(struct.iter_unpack(f"<{width}f", payload))
            accessor["min"] = [min(r[i] for r in stored) for i in range(width)]
            accessor["max"] = [max(r[i] for r in stored) for i in range(width)]
        self.doc["accessors"].append(accessor)
        return len(self.doc["accessors"]) - 1

    def material(self, name: str, uri: str, *, cutout: bool = False) -> int:
        """A double-sided diffuse material; cutout uses glTF's MASK mode."""
        key = (name, uri, cutout)
        if key not in self.materials:
            self.doc["images"].append({"uri": uri})
            self.doc["textures"].append({"source": len(self.doc["images"]) - 1, "sampler": 0})
            pbr = {"baseColorTexture": {"index": len(self.doc["textures"]) - 1},
                   "metallicFactor": 0, "roughnessFactor": 1}
            material = {"name": name, "doubleSided": True, "pbrMetallicRoughness": pbr}
            if cutout:
                material.update(alphaMode="MASK", alphaCutoff=0.5)
            self.doc["materials"].append(material)
            self.materials[key] = len(self.doc["materials"]) - 1
        return self.materials[key]

    def mesh(self, mesh: Mesh, materials: dict) -> int:
        """One primitive per texture, unindexed so each face keeps a flat normal.

        materials maps each of the mesh's texture keys to a material index.
        """
        primitives = []
        for key, faces in mesh.faces.items():
            corners = [v for face in faces for v in face]
            flat = [face_normal(*(mesh.positions[v] for v in face)) for face in faces]
            attributes = {"POSITION": self.floats([mesh.positions[v] for v in corners], bounds=True),
                          "NORMAL": self.floats([n for n in flat for _ in range(3)]),
                          "TEXCOORD_0": self.floats([mesh.uvs[v] for v in corners])}
            primitives.append({"attributes": attributes, "material": materials[key], "mode": 4})
        self.doc["meshes"].append({"name": mesh.name, "primitives": primitives})
        return len(self.doc["meshes"]) - 1

    def node(self, name: str, mesh: int) -> None:
        self.doc["scenes"][0]["nodes"].append(len(self.doc["nodes"]))
        self.doc["nodes"].append({"name": name, "mesh": mesh})

    def glb(self) -> bytes:
        self.buffer.extend(bytes(-len(self.buffer) % 4))
        doc = {k: v for k, v in self.doc.items() if v != []}  # glTF arrays must not be empty.
        doc["buffers"] = [{"byteLength": len(self.buffer)}]
        text = json.dumps(doc, separators=(",", ":"), allow_nan=False).encode()
        text += b" " * (-len(text) % 4)
        return (struct.pack("<3I", 0x46546C67, 2, 28 + len(text) + len(self.buffer))
                + struct.pack("<I4s", len(text), b"JSON") + text
                + struct.pack("<I4s", len(self.buffer), b"BIN\0") + bytes(self.buffer))
