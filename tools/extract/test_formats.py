"""Synthetic fixtures only, never disc data: python3 -m unittest discover -s tools/extract"""

from pathlib import Path
import struct
import tempfile
import unittest

from disc import Disc
from formats import FormatError, span


class ContainerTests(unittest.TestCase):
    def test_span_bounds(self):
        for offset, size in ((-1, 1), (0, -1), (3, 2)):
            with self.assertRaises(FormatError):
                span(b"abcd", offset, size)

    def test_iso_directory_and_bounds(self):
        data = bytearray(20 * 2048)
        data[16 * 2048:16 * 2048 + 7] = b"\x01CD001\x01"
        struct.pack_into("<H", data, 16 * 2048 + 128, 2048)
        struct.pack_into("<I", data, 16 * 2048 + 158, 18)
        struct.pack_into("<I", data, 16 * 2048 + 166, 2048)
        record = bytearray(44)
        record[0], record[32] = 44, 10
        record[33:43] = b"TEST.TXT;1"
        struct.pack_into("<I", record, 2, 19)
        struct.pack_into("<I", record, 10, 4)
        data[18 * 2048:18 * 2048 + len(record)] = record
        with tempfile.TemporaryDirectory() as temp:
            path = Path(temp) / "synthetic.iso"
            path.write_bytes(data)
            with Disc(path) as disc:
                self.assertEqual(disc.files(), [{"name": "TEST.TXT", "lba": 19, "bytes": 4}])
                with self.assertRaises(FormatError):
                    disc.read(len(data) - 2, 4)
                with self.assertRaisesRegex(FormatError, "PAL v2.00"):
                    disc.survey()


if __name__ == "__main__":
    unittest.main()
