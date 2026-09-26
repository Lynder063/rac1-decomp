# Asset formats

What the extractor ([tools/extract](../tools/extract/README.md)) knows
about the data on the PAL disc (`SCES_509.16` v2.00), and the evidence for
each piece. This file describes formats and measured metadata only; it
contains no game data.

## Sources

- **The executable.** The functions named below are in our decompiled C or
  generated assembly, and they are the ground truth for everything the
  game reads directly.
- **Wrench** by chaoticgd and contributors
  ([github.com/chaoticgd/wrench](https://github.com/chaoticgd/wrench),
  revision `1b48f4d`, GPL-3.0-or-later). Field meanings for geometry,
  textures and the sky come from its source. The tables below say where a
  layout rests on Wrench alone.
- **Replanetizer** (RatchetModding, GPL-3.0-or-later). It reads the PS3 HD
  collection's files, whose layouts differ from the PS2 disc, so it was
  used for meaning only.

The extractor is newly written Python; no code from either project is
used.

How the decoders were checked:

- An earlier prototype of the decoders was compared on level 0 with Wrench
  readers compiled separately. WAD decompression, terrain faces and tie
  packets all matched.
- The current decoders reproduce that prototype's output exactly on all
  19 levels: every vertex, UV, face, placement and texture pixel. The one
  exception is the untextured sky shells, whose colours the prototype
  misread as texture coordinates (see "Sky").

## The disc

The ISO 9660 file system names three files:

| File | LBA | Bytes | Role |
|---|---:|---:|---|
| `SYSTEM.CNF` | 289 | 58 | Boot configuration. `func_00201E88` reads its sector and checks the region. |
| `SCES_509.16` | 290 | 1,388,100 | The executable, SHA-1 `79956931…2e15e83`. |
| `IOPRP243.IMG` | 968 | 264,449 | IOP reboot image, loaded by `func_00201E88`. |

Everything else is addressed by absolute 2048-byte sector:

- **Table of contents.** `func_0012F3F8` reads six sectors at LBA 1500
  and keeps 0x2960 bytes in `D_00137C80`. The table starts with
  `(1, 0x2960)`.
- **Global groups.** The rest of the table is groups of `(LBA, size)`
  pairs, listed at the end of this file. Sizes are in sectors, except
  MPEG (bytes) and two audio groups that store LBAs only. The names are
  Wrench's; the loaders that use the debug font (`func_001E96B8`), video
  (`func_001E99D8`) and IOP modules (`func_00201E88`) confirm three of
  them.
- **Level table.** At +0x28c8 (`D_0013A548`): 19 entries of
  (header LBA, total sectors). The total is not a contiguous extent,
  because a level's audio can sit before its header.
- **Level header.** `func_0012F4A8` reads five sectors and keeps 0x2434
  bytes, starting `(id, 0x2434)`. The fields:
  - +0x08, +0x10, +0x18 and +0x20: sector ranges for the level data,
    NTSC gameplay, PAL gameplay and occlusion. `func_00204C60` loads the
    first three.
  - +0x28: 36 (LBA, bytes) pairs.
  - +0x148: 15 music LBAs, then 30 scenes of 6 audio and 68 WAD LBAs.
    This layout is Wrench's; the payloads are not decoded yet.

## WAD compression

`func_0020C468` decompresses. After a 16-byte header, `"WAD"` then the
stream size at +3 (header included), the stream is LZO-like:

- **Literal runs:** a tag below 0x10 copies `tag + 3` bytes; tag 0 copies
  `next + 18`. Two literal runs in a row trap (`teq`).
- **Matches:** tags of 0x40 and up, 0x20 and up, and 0x10 and up give
  short, medium and far copies. A far copy adds 0x4000 to its distance.
  The low two bits of a match's second-to-last byte are 0–3 literals that
  follow it.
- **Initial literals:** a first byte above 0x11 copies `byte - 0x11`
  literals at once.
- **Block markers:** a far match with distance 0 is a no-op if its length
  is 1. Any other length skips to the next 0x2000-byte block, which the
  game refills by DMA into the scratchpad.

Wrench's generic decoder aligns this skip to 0x1000 bytes, but the PAL
code uses 0x2000. On this disc both give the same output, because every
marker sits near a 0x2000 boundary.

## Level data

The data range starts with eleven (offset, size) pairs, named after
Wrench's `RacLevelDataHeader`:

1. code overlay;
2. sound bank;
3. core index;
4. GS RAM;
5. HUD header;
6. five HUD banks;
7. core data.

The core index and core data are WAD-compressed, and so is the gameplay
range. The decompressed core data is exactly the size recorded at core
index +0x8c on every level.

### Code overlays

The first section is code. Its records are
(load address, size, type, entry point) followed by the bytes to copy.

- **Loading:** ParseBin (`func_0012DA38`) copies records until the entry
  point changes and returns it. The main loop (`func_0012DB18`) then calls
  it.
- **Size:** on every level the records fill the section exactly: 1.65–1.91
  MB, uncompressed, in seven records of types 1, 8, 1, 1, 1, 1, 1.
- **Layout:** the records replace the executable's whole `main` segment
  (`config/splat.yaml`):

  | Record | Level 0 | Executable's `main` segment |
  |---|---|---|
  | literals | 0x15f000 | `lit` at 0x15f000 |
  | bss | 0x161f00 | `bss` |
  | data | 0x166100 | `data` |
  | level vtables | three small records | `lvl_vtbl`, `lvl_camvtbl`, `lvl_sndvtbl` |
  | text | 1,078,552 bytes | `text`: 0x1E9080–0x23E730, 349,872 bytes |

- **Size of the text:** across the 19 levels the text record is 1.07–1.21
  MB. The data records share only 44–84% of their bytes with the
  executable at the same addresses.

So each level brings its own, much larger build of the game program; the
executable's `main` is the program that runs before the first level loads.
How much of the level code is the same engine relinked, and how much is
specific to a level, is not measured yet. Deduplicating it is the first
step towards decompiling it.

### Core index

The fields follow Wrench's `LevelCoreHeader`. The runtime tables in
`func_001EABE8` use the same relative layout, and every offset below was
checked against the decompressed sizes on all 19 levels.

| Offset | Contents |
|---|---|
| +0x00 | GS RAM table: count, offset. 16-byte entries (PSM, size, GS offset). |
| +0x08, +0x0c, +0x10, +0x14 | Core data offsets of the terrain, occlusion, sky and collision blocks. |
| +0x18, +0x20, +0x28 | Moby, tie and shrub class tables. Each entry is 32, 32 or 48 bytes and starts with a core offset and a class ID; tie and shrub entries remap 16 texture slots at +16. |
| +0x30…+0x48 | Terrain, moby, tie and shrub texture tables: count, offset. |
| +0x60 | Core offset of texture pixel data. |
| +0x78 | Index offset of 256 ratchet-sequence core offsets. |
| +0x80 | Gadget table: count, offset. 16-byte entries starting with a core offset. |
| +0x8c | Decompressed core size. |

Core blocks carry no sizes of their own. Each one ends at the next known
block start, as in Wrench:

- the four top-level blocks;
- the texture data;
- every class, gadget and ratchet-sequence offset;
- the end of the data.

## Textures

- **Entries:** each is 16 bytes: pixel offset from the texture data,
  width, height, type, palette in 256-byte units of GS RAM, mips and pad.
  `func_00203958` uploads PSMT8 pixels with 32-bit palettes.
- **Palette check:** the extractor requires every palette to be one the GS
  RAM table lists as a 32-bit palette (PSM 0).
- **Pixels:** 8-bit indices into a 256-colour palette. The GS reads these
  palettes with index bits 3 and 4 swapped (CSM1).
- **Alpha:** runs 0–0x80, which is opaque, and is doubled for PNG.
- **Mips:** only the base level is exported.

`func_001E94E8` handles a related standalone format (PIF), which is not
extracted yet.

## Terrain (tfrags)

A block header gives the fragment table's offset and count. The layouts
follow Wrench's tfrag reader. `func_002352C8` confirms which stream each
LOD uses and the qword sizes it sends by DMA, but not the VU program's
arithmetic.

- **Fragments:** 0x40 bytes each. The fields:
  - +0x10: data offset from the table;
  - +0x14, +0x16, +0x18: the LOD-2, shared and LOD-1 streams;
  - +0x1a to +0x1e: the refinement streams;
  - +0x22 and +0x23: their qword sizes;
  - +0x28: texture count.
- **Packets:** streams are VIF command lists. Only the exact packet
  sequences found on this disc are accepted: STROW, STMOD, STCYCL, and
  unmasked V3-16, V4-8, V4-16 and V4-32 unpacks, with every address
  checked against the fragment's VU memory map.
- **Positions:** signed 16-bit offsets from the STROW origin, /1024.
  Vertex infos hold (s, t, parent, position × 2).
- **Texture coordinates:** s and t are fixed point /4096. Negative values
  are halved, as Wrench does; this is not traced in VU code yet.
- **LOD 0:** two refinement stages each add absolute positions with two
  parents. They also add vertex infos for the new positions and for
  texture seams.
- **Faces:** strip descriptors are (count, packet end, material offset,
  pad). A count of 0 ends the list, a negative count switches material,
  and even counts are runs of quads.
- **Materials:** five-qword GS primitives. Their first word is the texture
  index, until `func_00204340` patches it at load time.

## Ties

Tie class meshes follow Wrench's tie reader. `func_00236A98` confirms the
AD GIF table pointer (+0x2c), the material count (+0x23) and the 80-byte
material stride.

- **Class header:** packet table at +0x00, packet counts per LOD at +0x20,
  scale at +0x40. Positions are signed 16-bit × scale / 1024; texture
  coordinates are /4096.
- **Packets:** each LOD-0 packet holds regular (16-byte) and extended
  (24-byte) vertices. Each vertex carries the GS address it is written to,
  sometimes two.
- **Replay:** the extractor replays each packet in GS address order:
  - 6 qwords per material;
  - 1 per strip tag;
  - 3 per vertex.

  It fails on any missing or conflicting write.
- **Placements:** PAL gameplay +0x34 points to a count, then 0xe0-byte
  instances:
  - class, draw distance, pad, occlusion index;
  - a column-major matrix at +0x10;
  - 0x80 bytes of ambient colours at +0x50;
  - directional lights at +0xd0 and UID at +0xd4.

## Shrubs

Shrubs follow Wrench's shrub reader.

- **Class header:** scale at +0x20, packet count at +0x28, and 24 stored
  normals at the offset at +0x2c. A class has a billboard if its offset
  at +0x1c is positive.
- **Packets:** a header, GIF tags, 64-byte material records, then two
  arrays of signed 16-bit vertex data.
- **Replay:** the extractor replays each packet in GS address order:
  - 1 qword per tag;
  - 5 per material;
  - 3 per vertex.

  Short packets repeat their last vertex as padding.
- **Winding:** the game's strips don't keep a consistent winding, so each
  face is turned towards the average of its vertices' stored normals.
- **Placements:** PAL gameplay +0x3c points to a count, then 0x70-byte
  instances:
  - class and draw distance (float);
  - a column-major matrix at +0x10;
  - colour, three integers, at +0x50;
  - directional lights at +0x60.

In both tie and shrub placements, the matrix's W component (+0x4c) holds
0.01 on 89% of ties and 99% of shrubs, and 0.0 on the rest. Its meaning is
unknown, so the Godot scenes record it when it isn't 0.01.

## Sky

`func_00203118` relocates the sky's pointers.

- **Header:** background colour at +0, shell count at +6, texture count at
  +0xc, texture definitions and data at +0x10, and eight shell offsets at
  +0x20.
- **Shells:** each shell is (cluster count, flags), with bit 0 meaning
  untextured. Its 0x20-byte cluster headers start at +0x10.
- **Clusters:** each points to its vertices (x, y, z, alpha: signed 16
  bits, positions /1024, alpha 0x80 opaque), a second 4-byte array per
  vertex, and faces (three indices and a texture, 0xff for none).
- **Second array:** texture coordinates (s, t, /4096) on textured shells,
  but an RGBA colour on untextured ones. Its alpha always equals the
  vertex alpha.
- **Winding:** faces are wound the opposite way to the other geometry.

The field meanings and scales are Wrench's, except the second array on
untextured shells. Wrench reads it as texture coordinates there too and
paints those shells white. On this disc they are colour gradients: level
1's runs from (53, 88, 139) to (120, 169, 201).

When a level has an untextured shell, it is shell 0: a dome over the whole
sphere, drawn first. Levels 5, 7, 10 and 15 have none, and the header
colour shows wherever no shell reaches.

The extractor composites the shells in order into a panorama. Each layer
is blended over the last by its alpha: the texture's alpha times the
vertex alpha, with 0x80 as full. That is the PS2's usual MODULATE and
alpha blend, inferred rather than traced in the game's code.

## Table of contents groups

Offsets into the table at LBA 1500, with populated and total slots. The
exact LBAs and sizes of every reference are printed by
`extract.py survey`.

| Offset | Group | Used / slots | Size unit |
|---|---|---:|---|
| 0x0008 | debug font | 1 / 1 | sectors |
| 0x0010 | save game | 1 / 1 | sectors |
| 0x0018 | ratchet sequences | 28 / 28 | sectors |
| 0x00f8 | hud sequences | 17 / 20 | sectors |
| 0x0198 | vendor | 1 / 1 | sectors |
| 0x01a0 | vendor audio | 37 / 37 | sectors |
| 0x02c8 | help controls | 12 / 12 | sectors |
| 0x0328 | help moves | 15 / 15 | sectors |
| 0x03a0 | help weapons | 15 / 15 | sectors |
| 0x0418 | help gadgets | 14 / 14 | sectors |
| 0x0488 | help ss | 7 / 7 | sectors |
| 0x04c0 | options ss | 7 / 7 | sectors |
| 0x04f8 | frontbin | 1 / 1 | sectors |
| 0x0500 | mission ss | 81 / 81 | sectors |
| 0x0788 | planets | 19 / 19 | sectors |
| 0x0820 | unknown stuff2 | 38 / 38 | sectors |
| 0x0950 | goodies images | 10 / 10 | sectors |
| 0x09a0 | character sketches | 19 / 19 | sectors |
| 0x0a38 | character renders | 19 / 19 | sectors |
| 0x0ad0 | skill images | 31 / 31 | sectors |
| 0x0bc8 | epilogue images | 60 / 60 | sectors |
| 0x0da8 | sketchbook | 30 / 30 | sectors |
| 0x0e98 | commercials | 4 / 4 | sectors |
| 0x0eb8 | item images | 9 / 9 | sectors |
| 0x0f00 | qwark boss audio | 185 / 240 | LBA only |
| 0x12c0 | IOP modules (compressed bundle) | 1 / 1 | sectors |
| 0x12c8 | spaceships | 4 / 4 | sectors |
| 0x12e8 | unknown animation | 20 / 20 | sectors |
| 0x1388 | space plates | 6 / 6 | sectors |
| 0x13b8 | transition | 1 / 1 | sectors |
| 0x13c0 | space audio | 36 / 36 | sectors |
| 0x14e0 | sound bank | 1 / 1 | sectors |
| 0x14e8 | unknown wad | 1 / 1 | sectors |
| 0x14f0 | music | 1 / 1 | sectors |
| 0x14f8 | hud header | 1 / 1 | sectors |
| 0x1500 | hud banks | 5 / 5 | sectors |
| 0x1528 | all text | 1 / 1 | sectors |
| 0x1530 | unknown things | 28 / 28 | sectors |
| 0x1610 | post credits sequence | 1 / 1 | sectors |
| 0x1618 | post credits audio | 18 / 18 | sectors |
| 0x16a8 | credits images (NTSC) | 20 / 20 | sectors |
| 0x1748 | credits images (PAL) | 20 / 20 | sectors |
| 0x17e8 | unknown wads | 2 / 2 | sectors |
| 0x17f8 | MPEG video | 84 / 88 | bytes |
| 0x1ab8 | help audio | 669 / 900 | LBA only |

## Level ranges

| Level | Header LBA | Data LBA / bytes | PAL gameplay LBA / bytes | Occlusion LBA / bytes |
|---:|---:|---:|---:|---:|
| 0 | 1,886,014 | 1,886,019 / 13,453,312 | 1,892,799 / 432,128 | 1,893,010 / 14,336 |
| 1 | 1,893,017 | 1,893,022 / 18,663,424 | 1,902,385 / 512,000 | 1,902,635 / 24,576 |
| 2 | 1,902,647 | 1,902,652 / 16,439,296 | 1,910,937 / 528,384 | 1,911,195 / 38,912 |
| 3 | 1,911,214 | 1,911,219 / 17,018,880 | 1,919,841 / 638,976 | 1,920,153 / 53,248 |
| 4 | 1,920,179 | 1,920,184 / 16,115,712 | 1,928,273 / 450,560 | 1,928,493 / 18,432 |
| 5 | 1,928,502 | 1,928,507 / 18,470,912 | 1,937,808 / 577,536 | 1,938,090 / 28,672 |
| 6 | 1,938,104 | 1,938,109 / 19,079,168 | 1,947,709 / 581,632 | 1,947,993 / 30,720 |
| 7 | 1,948,008 | 1,948,013 / 16,097,280 | 1,956,090 / 444,416 | 1,956,307 / 20,480 |
| 8 | 1,956,317 | 1,956,322 / 15,804,416 | 1,964,399 / 737,280 | 1,964,759 / 34,816 |
| 9 | 1,964,776 | 1,964,781 / 16,939,008 | 1,973,337 / 583,680 | 1,973,622 / 26,624 |
| 10 | 1,973,635 | 1,973,640 / 16,660,480 | 1,982,049 / 561,152 | 1,982,323 / 26,624 |
| 11 | 1,982,336 | 1,982,341 / 18,524,160 | 1,991,642 / 524,288 | 1,991,898 / 24,576 |
| 12 | 1,991,910 | 1,991,915 / 17,915,904 | 2,001,021 / 733,184 | 2,001,379 / 49,152 |
| 13 | 2,001,403 | 2,001,408 / 18,524,160 | 2,010,685 / 475,136 | 2,010,917 / 28,672 |
| 14 | 2,010,931 | 2,010,936 / 18,182,144 | 2,020,076 / 536,576 | 2,020,338 / 24,576 |
| 15 | 2,020,350 | 2,020,355 / 18,636,800 | 2,029,711 / 524,288 | 2,029,967 / 40,960 |
| 16 | 2,029,987 | 2,029,992 / 17,207,296 | 2,038,759 / 747,520 | 2,039,124 / 43,008 |
| 17 | 2,039,145 | 2,039,150 / 16,918,528 | 2,047,618 / 423,936 | 2,047,825 / 20,480 |
| 18 | 2,047,835 | 2,047,840 / 17,858,560 | 2,056,917 / 731,136 | 2,057,274 / 43,008 |

NTSC gameplay has the same size as PAL gameplay and sits just before it.
