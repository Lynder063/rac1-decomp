# Level extractor

Turns the levels on your own disc of Ratchet & Clank (PAL, `SCES_509.16`
v2.00) into a Godot 4 project. Godot is the map editor: open a level, move,
add or delete objects, and save. Tools to pack edited scenes back into game
data come later; the scenes already keep what they will need.

Never commit or share what it produces (see [LEGAL.md](../../LEGAL.md)).
It only writes to new directories under the ignored `assets/` or `build-sn/`.

## Before you start

You need:

- Python 3.10 or newer (standard library only).
- Godot 4, tested with 4.7.2. On macOS its command is
  `/Applications/Godot.app/Contents/MacOS/Godot`; below it is `godot`.
- An ISO image of your own PAL disc, placed at `baserom/SCES_509.16.iso`.
  `baserom/` is ignored by git.

The build only needs the executable from that image (see the main README).
The extractor reads the whole image, and it stops unless the executable
inside matches PAL v2.00.

## Extract

```sh
python3 tools/extract/extract.py godot baserom/SCES_509.16.iso assets/godot
godot --path assets/godot -e res://levels/level_00/level_00.tscn
```

The second command opens level 0 in the editor. Other levels are in the
FileSystem dock under `levels/`; double-click a `level_NN.tscn` to open it.

All 19 levels take about 15 seconds and 365 MB, one level per CPU core at
a time. Godot's first import takes about a minute. Options:

- `--level N` (repeatable) exports only some levels.
- `--jobs N` limits how many levels are exported at once.
- `--terrain-lod 2` uses the coarsest terrain.

## Regenerate

Nothing the extractor writes is kept in git, so a fresh checkout has none
of it: run the command above to make it. The same disc always gives
byte-identical files. To rebuild a project, delete its directory and run
the command again; the extractor never overwrites an existing directory.
Godot rebuilds its import cache (`.godot/`) the next time it opens the
project.

Until the packer exists, edits made in Godot live only in that project,
and regenerating replaces them. To keep an edited level:

1. Copy its scene, `levels/level_NN/level_NN.tscn`, somewhere safe.
2. Regenerate.
3. Copy the scene back. The meshes and textures it refers to come out
   identical, so its paths still resolve.

That only works when the extractor hasn't changed since the scene was
made. A newer extractor can write scenes with other nodes (the sky's
WorldEnvironment, for instance), so after updating it, move your changes
into the new scene instead. Godot saves a scene as text, so a diff
against a fresh export shows each edit.

## Other commands

```sh
python3 tools/extract/extract.py survey baserom/SCES_509.16.iso      # disc layout, as JSON
python3 tools/extract/extract.py raw baserom/SCES_509.16.iso build-sn/level-00 --level 0
```

`raw` writes one level's sections as stored on the disc and decompressed,
with a manifest of their sizes and hashes.

## The project

```
project.godot
rc1/level.gd                 fly camera when a level is run
rc1/check.gd                 headless check against level.json
levels/level_NN/
  level_NN.tscn              the level
  level.json                 what was extracted: counts, bounds, code overlay
  terrain.glb                one node per terrain fragment
  ties/tie_<class>.glb       one mesh per tie class
  shrubs/shrub_<class>.glb   one mesh per shrub class
  sky.png                    the sky as a panorama, used by the WorldEnvironment
  textures/*.png             shared by the level's meshes
```

Each level scene looks like this:

```
Level_NN
  WorldEnvironment      the sky (sky.png) and flat ambient light
  Sun                   a directional light, so shapes read in the editor
  Game                  turns the game's Z-up axes into Godot's Y-up
    Terrain             fragments Terrain_000... (editable children)
    Ties/Tie_NNNN       one node per placed tie
    Shrubs/Shrub_NNNN   one node per placed shrub
```

To edit a level:

- Move, rotate or scale objects as usual. Transforms under `Game` are in
  game units and axes.
- To add an object, drag a class `.glb` from the FileSystem dock onto
  `Game/Ties` or `Game/Shrubs`. The file is the object's class.
- Per-object game fields are in the Inspector's Metadata section:
  - `rc1_index`: the object's record in the original level (new objects
    have none);
  - `rc1_draw_distance`, `rc1_directional_lights`;
  - ties only: `rc1_occlusion_index`, `rc1_uid`;
  - shrubs only: `rc1_colour`, raw integers;
  - `rc1_matrix_w`: only on objects that store 0.0 instead of the usual 0.01.
- Textures are ordinary PNGs. Editing one changes every mesh that uses it.

Run a level (F6) to fly around it:

| Key | Action |
|---|---|
| Right mouse | Look |
| WASD | Move |
| Q / E | Down / up |
| Shift | Faster |
| Mouse wheel | Change speed |
| F | Frame the terrain |

## Checks

```sh
python3 -m unittest discover -s tools/extract                  # synthetic data only
godot --headless --path assets/godot --import
godot --headless --path assets/godot --script res://rc1/check.gd
```

The Godot check loads every level scene and compares its meshes, triangles,
textures, bounds and sky panorama with what the extractor wrote.

## Coverage

Extracted:

- terrain (tfrags);
- ties and shrubs, with their placements;
- the sky;
- the textures they use.

Approximations:

- Normals are flat, and Godot lights the scene. The game's own lighting,
  baked into vertex colours, is not decoded yet.
- Alpha-tested textures become cutouts.
- The sky is baked into a 2048×1024 panorama. The game centres its sky
  shells on the camera and never moves them, so a panorama loses nothing.
  Their blending follows the PS2's usual texture and alpha modes, which is
  inferred rather than traced in the game's code. Sprites the game adds
  to the sky at run time are not included.

Not yet extracted: mobys (animated objects), collision, audio, video and
each level's code overlay. [docs/ASSETS.md](../../docs/ASSETS.md) describes
the formats and the evidence for them.

## Code

| File | Contents |
|---|---|
| `extract.py` | Command line and safe output |
| `disc.py` | ISO files, sector table of contents, level headers |
| `level.py` | A level's sections, core blocks and textures |
| `formats.py` | Bounded reads, WAD decompression, code overlays, textures |
| `terrain.py`, `ties.py`, `shrubs.py`, `sky.py` | Geometry and placements |
| `mesh.py`, `gltf.py` | The mesh type and the GLB writer |
| `godot.py` | Project, scenes and level.json |

The decoders accept only the layouts found on this disc and raise
`FormatError` on anything else. Nothing is skipped silently.
