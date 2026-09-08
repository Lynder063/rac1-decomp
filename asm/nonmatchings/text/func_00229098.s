.align 3
/* Handwritten function */
nonmatching func_00229098, 0x14C

glabel func_00229098
    /* 12A018 00229098 04008C8C */  lw         $12, 0x4($4)
    /* 12A01C 0022909C 10009BD8 */  lqc2       $vf27, 0x10($4)
    /* 12A020 002290A0 1600013C */  lui        $1, %hi(D_00160490)
    /* 12A024 002290A4 90042124 */  addiu      $1, $1, %lo(D_00160490)
    /* 12A028 002290A8 00003CD8 */  lqc2       $vf28, 0x0($1)
    /* 12A02C 002290AC 00700A3C */  lui        $10, (0x70000010 >> 16)
    /* 12A030 002290B0 00000B24 */  addiu      $11, $0, 0x0
    /* 12A034 002290B4 1600013C */  lui        $1, %hi(D_00160470)
    /* 12A038 002290B8 70042124 */  addiu      $1, $1, %lo(D_00160470)
    /* 12A03C 002290BC 00003ED8 */  lqc2       $vf30, 0x0($1)
    /* 12A040 002290C0 AC07DE4B */  vsub.xyz   $vf30, $vf0, $vf30
    /* 12A044 002290C4 00108C44 */  mtc1       $12, $f2
    /* 12A048 002290C8 A0108046 */  cvt.s.w    $f2, $f2
    /* 12A04C 002290CC C840013C */  lui        $1, (0x40C8F5C3 >> 16)
    /* 12A050 002290D0 C3F52134 */  ori        $1, $1, (0x40C8F5C3 & 0xFFFF)
    /* 12A054 002290D4 00088144 */  mtc1       $1, $f1
    /* 12A058 002290D8 03080246 */  div.s      $f0, $f1, $f2
    /* 12A05C 002290DC 00000144 */  mfc1       $1, $f0
    /* 12A060 002290E0 0008A148 */  qmtc2.ni   $1, $vf1
    /* 12A064 002290E4 B864004A */  .word      0x4A0064B8    # vcallms    0xC90
    /* 12A068 002290E8 01082148 */  qmfc2.i    $1, $vf1
    /* 12A06C 002290EC C007014B */  vaddx.x    $vf31, $vf0, $vf1x
    /* 12A070 002290F0 00000144 */  mfc1       $1, $f0
    /* 12A074 002290F4 0008A148 */  qmtc2.ni   $1, $vf1
    /* 12A078 002290F8 3864004A */  .word      0x4A006438    # vcallms    0xC80
    /* 12A07C 002290FC 01082148 */  qmfc2.i    $1, $vf1
    /* 12A080 00229100 C007814A */  vaddx.y    $vf31, $vf0, $vf1x
    /* 12A084 00229104 C5073F4A */  vsuby.w    $vf31, $vf0, $vf31y
    /* 12A088 00229108 58F7DF4B */  vmulx.xyz  $vf29, $vf30, $vf31x
    /* 12A08C 0022910C 58F01E4B */  vmulx.x    $vf1, $vf30, $vf30x
    /* 12A090 00229110 5B081F4B */  vmulw.x    $vf1, $vf1, $vf31w
    /* 12A094 00229114 41081F4B */  vaddy.x    $vf1, $vf1, $vf31y
    /* 12A098 00229118 58F09E4A */  vmulx.y    $vf1, $vf30, $vf30x
    /* 12A09C 0022911C 5B089F4A */  vmulw.y    $vf1, $vf1, $vf31w
    /* 12A0A0 00229120 46089D4A */  vsubz.y    $vf1, $vf1, $vf29z
    /* 12A0A4 00229124 58F05E4A */  vmulx.z    $vf1, $vf30, $vf30x
    /* 12A0A8 00229128 5B085F4A */  vmulw.z    $vf1, $vf1, $vf31w
    /* 12A0AC 0022912C 41085D4A */  vaddy.z    $vf1, $vf1, $vf29y
    /* 12A0B0 00229130 99F01E4B */  vmuly.x    $vf2, $vf30, $vf30y
    /* 12A0B4 00229134 9B101F4B */  vmulw.x    $vf2, $vf2, $vf31w
    /* 12A0B8 00229138 82101D4B */  vaddz.x    $vf2, $vf2, $vf29z
    /* 12A0BC 0022913C 99F09E4A */  vmuly.y    $vf2, $vf30, $vf30y
    /* 12A0C0 00229140 9B109F4A */  vmulw.y    $vf2, $vf2, $vf31w
    /* 12A0C4 00229144 81109F4A */  vaddy.y    $vf2, $vf2, $vf31y
    /* 12A0C8 00229148 99F05E4A */  vmuly.z    $vf2, $vf30, $vf30y
    /* 12A0CC 0022914C 9B105F4A */  vmulw.z    $vf2, $vf2, $vf31w
    /* 12A0D0 00229150 84105D4A */  vsubx.z    $vf2, $vf2, $vf29x
    /* 12A0D4 00229154 DAF01E4B */  vmulz.x    $vf3, $vf30, $vf30z
    /* 12A0D8 00229158 DB181F4B */  vmulw.x    $vf3, $vf3, $vf31w
    /* 12A0DC 0022915C C5181D4B */  vsuby.x    $vf3, $vf3, $vf29y
    /* 12A0E0 00229160 DAF09E4A */  vmulz.y    $vf3, $vf30, $vf30z
    /* 12A0E4 00229164 DB189F4A */  vmulw.y    $vf3, $vf3, $vf31w
    /* 12A0E8 00229168 C0189D4A */  vaddx.y    $vf3, $vf3, $vf29x
    /* 12A0EC 0022916C DAF05E4A */  vmulz.z    $vf3, $vf30, $vf30z
    /* 12A0F0 00229170 DB185F4A */  vmulw.z    $vf3, $vf3, $vf31w
    /* 12A0F4 00229174 C1185F4A */  vaddy.z    $vf3, $vf3, $vf31y
    /* 12A0F8 00229178 1600013C */  lui        $1, %hi(D_00160480)
    /* 12A0FC 0022917C 80042124 */  addiu      $1, $1, %lo(D_00160480)
    /* 12A100 00229180 00003AD8 */  lqc2       $vf26, 0x0($1)
    /* 12A104 00229184 9BD6DB4B */  vmulw.xyz  $vf26, $vf26, $vf27w
.align 2
  .L00229188:
    /* 12A108 00229188 BC09DA4B */  .word      0x4BDA09BC    # vmulax.xyz ACC, $vf1, $vf26x
    /* 12A10C 0022918C BD10DA4B */  .word      0x4BDA10BD    # vmadday.xyz ACC, $vf2, $vf26y
    /* 12A110 00229190 8A1EDA4B */  vmaddz.xyz $vf26, $vf3, $vf26z
    /* 12A114 00229194 68D1DB4B */  vadd.xyz   $vf5, $vf26, $vf27
    /* 12A118 00229198 000045F9 */  sqc2       $vf5, (0x70000000 & 0xFFFF)($10)
    /* 12A11C 0022919C 6829DC4B */  vadd.xyz   $vf5, $vf5, $vf28
    /* 12A120 002291A0 100045F9 */  sqc2       $vf5, (0x70000010 & 0xFFFF)($10)
    /* 12A124 002291A4 20004A25 */  addiu      $10, $10, %lo(D_70000020)
    /* 12A128 002291A8 00000000 */  nop
    /* 12A12C 002291AC FFFF8C21 */  addi       $12, $12, -0x1 /* handwritten instruction */
    /* 12A130 002291B0 00000000 */  nop
    /* 12A134 002291B4 F4FF8015 */  bnez       $12, .L00229188
    /* 12A138 002291B8 01006B25 */   addiu     $11, $11, 0x1
    /* 12A13C 002291BC 0070013C */  lui        $1, (0x70000010 >> 16)
    /* 12A140 002291C0 000025D8 */  lqc2       $vf5, (0x70000000 & 0xFFFF)($1)
    /* 12A144 002291C4 000045F9 */  sqc2       $vf5, 0x0($10)
    /* 12A148 002291C8 100025D8 */  lqc2       $vf5, (0x70000010 & 0xFFFF)($1)
    /* 12A14C 002291CC 100045F9 */  sqc2       $vf5, 0x10($10)
    /* 12A150 002291D0 01006B25 */  addiu      $11, $11, 0x1
    /* 12A154 002291D4 1600013C */  lui        $1, %hi(D_001604A0)
    /* 12A158 002291D8 A0042124 */  addiu      $1, $1, %lo(D_001604A0)
    /* 12A15C 002291DC 0800E003 */  jr         $31
    /* 12A160 002291E0 00002BAC */   sw        $11, 0x0($1)
endlabel func_00229098
    /* 12A164 002291E4 00000000 */  nop
