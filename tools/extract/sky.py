"""The sky: textured shells drawn around the camera.

func_00203118 relocates the header, shell and cluster pointers; field
meanings, the 1/1024 scale and the reversed winding follow Wrench.
"""

import struct
from dataclasses import dataclass

from formats import FormatError, Texture, span, unpack
from mesh import Mesh


@dataclass
class Sky:
    background: tuple[int, int, int, int]
    textures: list[Texture]
    shells: list[Mesh]
    textured: list[bool]


def sky(data: bytes) -> Sky:
    """Shells of 0x20-byte clusters; each cluster points to vertices, UVs and faces.

    Vertices are (x, y, z, alpha) signed shorts with alpha 0x80 opaque;
    faces are three indices and a texture (0xff: untextured).
    """
    shell_count, = unpack("<h", data, 6)
    texture_count, = unpack("<h", data, 0xc)
    if not 0 <= shell_count <= 8 or not 0 <= texture_count <= 256:
        raise FormatError("invalid sky shell or texture count")
    defs, texture_data = unpack("<II", data, 0x10)
    textures = []
    for i in range(texture_count):
        palette, pixels, width, height = unpack("<4I", data, defs + i * 16)
        textures.append(Texture(width, height, span(data, texture_data + pixels, width * height),
                                span(data, texture_data + palette, 1024)))
    result = Sky(tuple(span(data, 0, 4)), textures, [], [])
    for shell_id in range(shell_count):
        offset, = unpack("<I", data, 0x20 + shell_id * 4)
        clusters, flags = unpack("<II", data, offset)
        if clusters > 0x10000:
            raise FormatError("invalid sky cluster count")
        mesh = Mesh(f"Sky_{shell_id}", colours=[])
        for cluster in range(clusters):
            base, nv, nf, vertices, uvs, faces, size = unpack("<I6H", data, offset + 0x20 + cluster * 0x20)
            block = span(data, base, size)
            first = len(mesh.positions)
            for (x, y, z, alpha), (s, t) in zip(struct.iter_unpack("<4h", span(block, vertices, nv * 8)),
                                                struct.iter_unpack("<2h", span(block, uvs, nv * 4))):
                if not 0 <= alpha <= 0x80:
                    raise FormatError("invalid sky vertex alpha")
                mesh.positions.append((x / 1024, y / 1024, z / 1024))
                mesh.uvs.append((s / 4096, t / 4096))
                mesh.colours.append((1.0, 1.0, 1.0, 1.0 if alpha == 0x80 else alpha * 2 / 255))
            for a, b, c, texture in struct.iter_unpack("4B", span(block, faces, nf * 4)):
                if max(a, b, c) >= nv or (texture != 0xff and texture >= texture_count):
                    raise FormatError("invalid sky face index or texture")
                mesh.add_face(None if texture == 0xff else ("sky", texture), (first + c, first + b, first + a))
        result.shells.append(mesh)
        result.textured.append(not flags & 1)
    return result
