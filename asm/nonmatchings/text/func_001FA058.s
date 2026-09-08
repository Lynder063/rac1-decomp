.align 3
/* Handwritten function */
nonmatching func_001FA058, 0x110

glabel func_001FA058
    /* FAFD8 001FA058 1E000F3C */  lui        $15, %hi(D_001DE6A0)
    /* FAFDC 001FA05C A0E6EF25 */  addiu      $15, $15, %lo(D_001DE6A0)
    /* FAFE0 001FA060 0000EED9 */  lqc2       $vf14, 0x0($15)
    /* FAFE4 001FA064 45600046 */  abs.s      $f1, $f12
    /* FAFE8 001FA068 85680046 */  abs.s      $f2, $f13
    /* FAFEC 001FA06C C1080246 */  sub.s      $f3, $f1, $f2
    /* FAFF0 001FA070 00180344 */  mfc1       $3, $f3
    /* FAFF4 001FA074 00000000 */  nop
    /* FAFF8 001FA078 03006004 */  bltz       $3, .L001FA088
    /* FAFFC 001FA07C 00708044 */   mtc1      $0, $f14
    /* FB000 001FA080 45680046 */  abs.s      $f1, $f13
    /* FB004 001FA084 85600046 */  abs.s      $f2, $f12
.align 2
  .L001FA088:
    /* FB008 001FA088 36100E46 */  c.le.s     $f2, $f14
    /* FB00C 001FA08C C1080246 */  sub.s      $f3, $f1, $f2
    /* FB010 001FA090 33000145 */  bc1t       .L001FA160
    /* FB014 001FA094 00090246 */   add.s     $f4, $f1, $f2
    /* FB018 001FA098 C3180446 */  div.s      $f3, $f3, $f4
    /* FB01C 001FA09C 00600144 */  mfc1       $1, $f12
    /* FB020 001FA0A0 00680244 */  mfc1       $2, $f13
    /* FB024 001FA0A4 1000EFD9 */  lqc2       $vf15, 0x10($15)
    /* FB028 001FA0A8 1E00043C */  lui        $4, %hi(D_001DE6C0)
    /* FB02C 001FA0AC C0E68424 */  addiu      $4, $4, %lo(D_001DE6C0)
    /* FB030 001FA0B0 000080CC */  pref       0x00, 0x0($4)
    /* FB034 001FA0B4 C21F0300 */  srl        $3, $3, 31
    /* FB038 001FA0B8 C2170200 */  srl        $2, $2, 31
    /* FB03C 001FA0BC C20F0100 */  srl        $1, $1, 31
    /* FB040 001FA0C0 C0180300 */  sll        $3, $3, 3
    /* FB044 001FA0C4 00110200 */  sll        $2, $2, 4
    /* FB048 001FA0C8 40090100 */  sll        $1, $1, 5
    /* FB04C 001FA0CC 20208300 */  add        $4, $4, $3 /* handwritten instruction */
    /* FB050 001FA0D0 20208200 */  add        $4, $4, $2 /* handwritten instruction */
    /* FB054 001FA0D4 20208100 */  add        $4, $4, $1 /* handwritten instruction */
    /* FB058 001FA0D8 00180144 */  mfc1       $1, $f3
    /* FB05C 001FA0DC 0008A148 */  qmtc2.ni   $1, $vf1
    /* FB060 001FA0E0 000081C4 */  lwc1       $f1, 0x0($4)
    /* FB064 001FA0E4 040082C4 */  lwc1       $f2, 0x4($4)
    /* FB068 001FA0E8 4000C14A */  vaddx.yz   $vf1, $vf0, $vf1x
    /* FB06C 001FA0EC 5800214A */  vmulx.w    $vf1, $vf0, $vf1x
    /* FB070 001FA0F0 AA08E14B */  vmul.xyzw  $vf2, $vf1, $vf1
    /* FB074 001FA0F4 4301C04B */  vaddw.xyz  $vf5, $vf0, $vf0w
    /* FB078 001FA0F8 EA10E24B */  vmul.xyzw  $vf3, $vf2, $vf2
    /* FB07C 001FA0FC 6A08824A */  vmul.y     $vf1, $vf1, $vf2
    /* FB080 001FA100 2A19E34B */  vmul.xyzw  $vf4, $vf3, $vf3
    /* FB084 001FA104 6A08634A */  vmul.zw    $vf1, $vf1, $vf3
    /* FB088 001FA108 6A08224A */  vmul.w     $vf1, $vf1, $vf2
    /* FB08C 001FA10C AA08E44B */  vmul.xyzw  $vf2, $vf1, $vf4
    /* FB090 001FA110 6A08EE4B */  vmul.xyzw  $vf1, $vf1, $vf14
    /* FB094 001FA114 AA10EF4B */  vmul.xyzw  $vf2, $vf2, $vf15
    /* FB098 001FA118 3D08014B */  .word      0x4B01083D    # vadday.x   ACC, $vf1, $vf1y
    /* FB09C 001FA11C BE28014B */  .word      0x4B0128BE    # vmaddaz.x  ACC, $vf5, $vf1z
    /* FB0A0 001FA120 BF28014B */  .word      0x4B0128BF    # vmaddaw.x  ACC, $vf5, $vf1w
    /* FB0A4 001FA124 BC28024B */  .word      0x4B0228BC    # vmaddax.x  ACC, $vf5, $vf2x
    /* FB0A8 001FA128 BD28024B */  .word      0x4B0228BD    # vmadday.x  ACC, $vf5, $vf2y
    /* FB0AC 001FA12C BE28024B */  .word      0x4B0228BE    # vmaddaz.x  ACC, $vf5, $vf2z
    /* FB0B0 001FA130 4B28024B */  vmaddw.x   $vf1, $vf5, $vf2w
    /* FB0B4 001FA134 493F013C */  lui        $1, (0x3F490FDB >> 16)
    /* FB0B8 001FA138 DB0F2134 */  ori        $1, $1, (0x3F490FDB & 0xFFFF)
    /* FB0BC 001FA13C 00188144 */  mtc1       $1, $f3
    /* FB0C0 001FA140 00000000 */  nop
    /* FB0C4 001FA144 00082148 */  qmfc2.ni   $1, $vf1
    /* FB0C8 001FA148 00208144 */  mtc1       $1, $f4
    /* FB0CC 001FA14C C0180446 */  add.s      $f3, $f3, $f4
    /* FB0D0 001FA150 C2180146 */  mul.s      $f3, $f3, $f1
    /* FB0D4 001FA154 00180246 */  add.s      $f0, $f3, $f2
    /* FB0D8 001FA158 0800E003 */  jr         $31
    /* FB0DC 001FA15C 00000000 */   nop
.align 2
  .L001FA160:
    /* FB0E0 001FA160 0800E003 */  jr         $31
    /* FB0E4 001FA164 00008044 */   mtc1      $0, $f0
endlabel func_001FA058
