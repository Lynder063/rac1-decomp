"""A hand-built sky with one shell and one cluster; no disc data."""

import struct
import unittest

from formats import FormatError
from sky import sky


def fixture(textured=True):
    """Header at 0, texture def at 0x50, shell at 0x80, cluster at 0xa0, cluster data at 0xc0."""
    data = bytearray(0x542)
    struct.pack_into("<h", data, 6, 1)                        # One shell.
    struct.pack_into("<h", data, 0xc, 1 if textured else 0)   # Texture count.
    struct.pack_into("<II", data, 0x10, 0x50, 0x140)          # Texture defs and data.
    struct.pack_into("<I", data, 0x20, 0x80)                  # Shell 0.
    struct.pack_into("<4I", data, 0x50, 0, 1024, 2, 1)        # Palette at +0, pixels at +1024, 2x1.
    struct.pack_into("<II", data, 0x80, 1, 0)                 # One cluster, textured shell.
    struct.pack_into("<I6H", data, 0xa0, 0xc0, 3, 1, 0, 24, 36, 40)
    struct.pack_into("<12h", data, 0xc0, 0, 0, 0, 128, 1024, 0, 0, 64, 0, 1024, 0, 0)
    struct.pack_into("<6h", data, 0xd8, 0, 0, 4096, 0, 0, 4096)
    data[0xe4:0xe8] = bytes((0, 1, 2, 0 if textured else 255))
    data[0x140:0x148] = bytes((255, 0, 0, 128, 0, 255, 0, 0))
    data[0x540:0x542] = bytes((0, 1))
    return data


class SkyTests(unittest.TestCase):
    def test_shell_positions_uvs_alpha_and_reversed_winding(self):
        result = sky(fixture())
        shell, = result.shells
        self.assertEqual(shell.positions, [(0, 0, 0), (1, 0, 0), (0, 1, 0)])
        self.assertEqual(shell.uvs, [(0, 0), (1, 0), (0, 1)])
        self.assertEqual([c[3] for c in shell.colours], [1, 128 / 255, 0])
        self.assertEqual(shell.faces, {("sky", 0): [(2, 1, 0)]})
        self.assertEqual((result.textured, len(result.textures)), ([True], 1))
        self.assertEqual(result.textures[0].colours[1][:2], (0, 255))

    def test_untextured_faces(self):
        self.assertEqual(sky(fixture(textured=False)).shells[0].faces, {None: [(2, 1, 0)]})

    def test_rejects_bad_indices_textures_and_alpha(self):
        for offset, value in ((0xe4, 3), (0xe7, 1), (0xc6, 0x81)):
            data = fixture()
            data[offset] = value
            with self.subTest(offset=offset), self.assertRaises(FormatError):
                sky(data)


if __name__ == "__main__":
    unittest.main()
