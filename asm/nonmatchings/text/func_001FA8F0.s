.align 3
/* Handwritten function */
nonmatching func_001FA8F0, 0xF8

glabel func_001FA8F0
    /* FB870 001FA8F0 000081D8 */  lqc2       $vf1, 0x0($4)
    /* FB874 001FA8F4 1900013C */  lui        $1, %hi(D_0018D080)
    /* FB878 001FA8F8 80D02124 */  addiu      $1, $1, %lo(D_0018D080)
    /* FB87C 001FA8FC 00600244 */  mfc1       $2, $f12
    /* FB880 001FA900 300038D8 */  lqc2       $vf24, 0x30($1)
    /* FB884 001FA904 000039D8 */  lqc2       $vf25, 0x0($1)
    /* FB888 001FA908 10003AD8 */  lqc2       $vf26, 0x10($1)
    /* FB88C 001FA90C 20003BD8 */  lqc2       $vf27, 0x20($1)
    /* FB890 001FA910 E804004B */  vadd.x     $vf19, $vf0, $vf0
    /* FB894 001FA914 5B08F84B */  vmulw.xyzw $vf1, $vf1, $vf24w
    /* FB898 001FA918 400034D8 */  lqc2       $vf20, 0x40($1)
    /* FB89C 001FA91C 500035D8 */  lqc2       $vf21, 0x50($1)
    /* FB8A0 001FA920 600036D8 */  lqc2       $vf22, 0x60($1)
    /* FB8A4 001FA924 700037D8 */  lqc2       $vf23, 0x70($1)
    /* FB8A8 001FA928 3C100200 */  dsll32     $2, $2, 0
    /* FB8AC 001FA92C 00000000 */  nop
    /* FB8B0 001FA930 AC08D84B */  vsub.xyz   $vf2, $vf1, $vf24
    /* FB8B4 001FA934 C300014B */  vaddw.x    $vf3, $vf0, $vf1w
    /* FB8B8 001FA938 0020A248 */  qmtc2.ni   $2, $vf4
    /* FB8BC 001FA93C C700814A */  vsubw.y    $vf3, $vf0, $vf1w
    /* FB8C0 001FA940 BCC9C24B */  .word      0x4BC2C9BC    # vmulax.xyz ACC, $vf25, $vf2x
    /* FB8C4 001FA944 BDD0C24B */  .word      0x4BC2D0BD    # vmadday.xyz ACC, $vf26, $vf2y
    /* FB8C8 001FA948 8AD8C24B */  vmaddz.xyz $vf2, $vf27, $vf2z
    /* FB8CC 001FA94C DB24984A */  vmulw.y    $vf19, $vf4, $vf24w
    /* FB8D0 001FA950 1BB2814B */  vmulw.xy   $vf8, $vf22, $vf1w
    /* FB8D4 001FA954 4218824B */  vaddz.xy   $vf1, $vf3, $vf2z
    /* FB8D8 001FA958 5AA1824B */  vmulz.xy   $vf5, $vf20, $vf2z
    /* FB8DC 001FA95C FD11824B */  vabs.xy    $vf2, $vf2
    /* FB8E0 001FA960 DA41964B */  vmulz.xy   $vf7, $vf8, $vf22z
    /* FB8E4 001FA964 EC98814B */  vsub.xy    $vf3, $vf19, $vf1
    /* FB8E8 001FA968 6A2A954B */  vmul.xy    $vf9, $vf5, $vf21
    /* FB8EC 001FA96C AC11884B */  vsub.xy    $vf6, $vf2, $vf8
    /* FB8F0 001FA970 2812874B */  vadd.xy    $vf8, $vf2, $vf7
    /* FB8F4 001FA974 2C09974B */  vsub.xy    $vf4, $vf1, $vf23
    /* FB8F8 001FA978 00182148 */  qmfc2.ni   $1, $vf3
    /* FB8FC 001FA97C 0040053C */  lui        $5, (0x40000000 >> 16)
    /* FB900 001FA980 EC29864B */  vsub.xy    $vf7, $vf5, $vf6
    /* FB904 001FA984 00000000 */  nop
    /* FB908 001FA988 2C4A884B */  vsub.xy    $vf8, $vf9, $vf8
    /* FB90C 001FA98C 3C100100 */  dsll32     $2, $1, 0
    /* FB910 001FA990 13002004 */  bltz       $1, .L001FA9E0
    /* FB914 001FA994 00202448 */   qmfc2.ni  $4, $vf4
    /* FB918 001FA998 11004104 */  bgez       $2, .L001FA9E0
    /* FB91C 001FA99C 00000000 */   nop
    /* FB920 001FA9A0 00382248 */  qmfc2.ni   $2, $vf7
    /* FB924 001FA9A4 2D28A500 */  daddu      $5, $5, $5
    /* FB928 001FA9A8 00402348 */  qmfc2.ni   $3, $vf8
    /* FB92C 001FA9AC 26208500 */  xor        $4, $4, $5
    /* FB930 001FA9B0 0B004004 */  bltz       $2, .L001FA9E0
    /* FB934 001FA9B4 3C100200 */   dsll32    $2, $2, 0
    /* FB938 001FA9B8 09004004 */  bltz       $2, .L001FA9E0
    /* FB93C 001FA9BC 25186400 */   or        $3, $3, $4
    /* FB940 001FA9C0 05006004 */  bltz       $3, .L001FA9D8
    /* FB944 001FA9C4 3C180300 */   dsll32    $3, $3, 0
    /* FB948 001FA9C8 03006004 */  bltz       $3, .L001FA9D8
    /* FB94C 001FA9CC 00000000 */   nop
    /* FB950 001FA9D0 0800E003 */  jr         $31
    /* FB954 001FA9D4 01000220 */   addi      $2, $0, 0x1 /* handwritten instruction */
.align 2
  .L001FA9D8:
    /* FB958 001FA9D8 0800E003 */  jr         $31
    /* FB95C 001FA9DC 00000220 */   addi      $2, $0, 0x0 /* handwritten instruction */
.align 2
  .L001FA9E0:
    /* FB960 001FA9E0 0800E003 */  jr         $31
    /* FB964 001FA9E4 FFFF0220 */   addi      $2, $0, -0x1 /* handwritten instruction */
endlabel func_001FA8F0
