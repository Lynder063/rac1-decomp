.align 3
/* Handwritten function */
nonmatching func_0020ED48, 0x1A0

glabel func_0020ED48
    /* 10FCC8 0020ED48 20008580 */  lb         $5, 0x20($4)
    /* 10FCCC 0020ED4C 34008894 */  lhu        $8, 0x34($4)
    /* 10FCD0 0020ED50 3D00A004 */  bltz       $5, .L0020EE48
    /* 10FCD4 0020ED54 400080CC */   pref      0x00, 0x40($4)
    /* 10FCD8 0020ED58 2400828C */  lw         $2, 0x24($4)
    /* 10FCDC 0020ED5C 00009920 */  addi       $25, $4, 0x0 /* handwritten instruction */
    /* 10FCE0 0020ED60 00800731 */  andi       $7, $8, 0x8000
    /* 10FCE4 0020ED64 52002493 */  lbu        $4, 0x52($25)
    /* 10FCE8 0020ED68 00010631 */  andi       $6, $8, 0x100
    /* 10FCEC 0020ED6C 53002593 */  lbu        $5, 0x53($25)
    /* 10FCF0 0020ED70 3700C014 */  bnez       $6, .L0020EE50
    /* 10FCF4 0020ED74 2C00238F */   lw        $3, 0x2C($25)
    /* 10FCF8 0020ED78 400021DB */  lqc2       $vf1, 0x40($25)
    /* 10FCFC 0020ED7C F868004A */  .word      0x4A0068F8    # vcallms    0xD18
.align 2
  alabel func_0020ED80
    /* 10FD00 0020ED80 71002693 */  lbu        $6, 0x71($25)
    /* 10FD04 0020ED84 00000000 */  nop
    /* 10FD08 0020ED88 3F008514 */  bne        $4, $5, .L0020EE88
    /* 10FD0C 0020ED8C 0040A348 */   qmtc2.ni  $3, $vf8
    /* 10FD10 0020ED90 35008614 */  bne        $4, $6, .L0020EE68
    /* 10FD14 0020ED94 00000000 */   nop
    /* 10FD18 0020ED98 F00032DB */  lqc2       $vf18, 0xF0($25)
    /* 10FD1C 0020ED9C 00000000 */  nop
.align 2
  alabel func_0020EDA0
    /* 10FD20 0020EDA0 0300E010 */  beqz       $7, .L0020EDB0
    /* 10FD24 0020EDA4 01A02148 */   qmfc2.i   $1, $vf20
    /* 10FD28 0020EDA8 6C05D54B */  vsub.xyz   $vf21, $vf0, $vf21
    /* 10FD2C 0020EDAC 00000000 */  nop
.align 2
  .L0020EDB0:
    /* 10FD30 0020EDB0 C00034FB */  sqc2       $vf20, 0xC0($25)
    /* 10FD34 0020EDB4 D00035FB */  sqc2       $vf21, 0xD0($25)
    /* 10FD38 0020EDB8 E00036FB */  sqc2       $vf22, 0xE0($25)
    /* 10FD3C 0020EDBC 5891E84B */  vmulx.xyzw $vf5, $vf18, $vf8x
    /* 10FD40 0020EDC0 100027DB */  lqc2       $vf7, 0x10($25)
    /* 10FD44 0020EDC4 8044013C */  lui        $1, (0x44800000 >> 16)
    /* 10FD48 0020EDC8 0030A148 */  qmtc2.ni   $1, $vf6
    /* 10FD4C 0020EDCC D839C64B */  vmulx.xyz  $vf7, $vf7, $vf6x
    /* 10FD50 0020EDD0 7C29264A */  vftoi0.w   $vf6, $vf5
    /* 10FD54 0020EDD4 BCA1C54B */  .word      0x4BC5A1BC    # vmulax.xyz ACC, $vf20, $vf5x
    /* 10FD58 0020EDD8 BDA8C54B */  .word      0x4BC5A8BD    # vmadday.xyz ACC, $vf21, $vf5y
    /* 10FD5C 0020EDDC BEB0C54B */  .word      0x4BC5B0BE    # vmaddaz.xyz ACC, $vf22, $vf5z
    /* 10FD60 0020EDE0 4B39C04B */  vmaddw.xyz $vf5, $vf7, $vf0w
    /* 10FD64 0020EDE4 A8002297 */  lhu        $2, 0xA8($25)
    /* 10FD68 0020EDE8 7C29C64B */  vftoi0.xyz $vf6, $vf5
    /* 10FD6C 0020EDEC 9400218F */  lw         $1, 0x94($25)
    /* 10FD70 0020EDF0 000025FB */  sqc2       $vf5, 0x0($25)
    /* 10FD74 0020EDF4 01004220 */  addi       $2, $2, 0x1 /* handwritten instruction */
    /* 10FD78 0020EDF8 A80022A7 */  sh         $2, 0xA8($25)
    /* 10FD7C 0020EDFC 00000000 */  nop
    /* 10FD80 0020EE00 11002010 */  beqz       $1, .L0020EE48
    /* 10FD84 0020EE04 00302148 */   qmfc2.ni  $1, $vf6
    /* 10FD88 0020EE08 A8142170 */  pextuw     $2, $1, $1
    /* 10FD8C 0020EE0C A000268F */  lw         $6, 0xA0($25)
    /* 10FD90 0020EE10 A9134070 */  pcpyud     $2, $2, $0
    /* 10FD94 0020EE14 08182270 */  paddw      $3, $1, $2
    /* 10FD98 0020EE18 48082270 */  psubw      $1, $1, $2
    /* 10FD9C 0020EE1C BF1B0370 */  psraw      $3, $3, 14
    /* 10FDA0 0020EE20 BF0B0170 */  psraw      $1, $1, 14
    /* 10FDA4 0020EE24 892B6170 */  pcpyld     $5, $3, $1
    /* 10FDA8 0020EE28 C82D0570 */  ppach      $5, $0, $5
    /* 10FDAC 0020EE2C C82E0570 */  ppacb      $5, $0, $5
    /* 10FDB0 0020EE30 0500A610 */  beq        $5, $6, .L0020EE48
    /* 10FDB4 0020EE34 C0C0A730 */   andi      $7, $5, 0xC0C0
    /* 10FDB8 0020EE38 0300E014 */  bnez       $7, .L0020EE48
    /* 10FDBC 0020EE3C 00000000 */   nop
    /* 10FDC0 0020EE40 9C3A0808 */  j          func_0020EA70
    /* 10FDC4 0020EE44 00002423 */   addi      $4, $25, 0x0 /* handwritten instruction */
.align 2
  .L0020EE48:
    /* 10FDC8 0020EE48 0800E003 */  jr         $31
    /* 10FDCC 0020EE4C 00000000 */   nop
.align 2
  .L0020EE50:
    /* 10FDD0 0020EE50 C00034DB */  lqc2       $vf20, 0xC0($25)
    /* 10FDD4 0020EE54 D00035DB */  lqc2       $vf21, 0xD0($25)
    /* 10FDD8 0020EE58 E00036DB */  lqc2       $vf22, 0xE0($25)
    /* 10FDDC 0020EE5C 3C03F74B */  vmove.xyzw $vf23, $vf0
    /* 10FDE0 0020EE60 603B0808 */  j          func_0020ED80
    /* 10FDE4 0020EE64 00000000 */   nop
.align 2
  .L0020EE68:
    /* 10FDE8 0020EE68 710024A3 */  sb         $4, 0x71($25)
    /* 10FDEC 0020EE6C 80200400 */  sll        $4, $4, 2
    /* 10FDF0 0020EE70 20208200 */  add        $4, $4, $2 /* handwritten instruction */
    /* 10FDF4 0020EE74 4800848C */  lw         $4, 0x48($4)
    /* 10FDF8 0020EE78 000092D8 */  lqc2       $vf18, 0x0($4)
    /* 10FDFC 0020EE7C 00000000 */  nop
    /* 10FE00 0020EE80 683B0808 */  j          func_0020EDA0
    /* 10FE04 0020EE84 F00032FB */   sqc2      $vf18, 0xF0($25)
.align 2
  .L0020EE88:
    /* 10FE08 0020EE88 80280500 */  sll        $5, $5, 2
    /* 10FE0C 0020EE8C FF000120 */  addi       $1, $0, 0xFF /* handwritten instruction */
    /* 10FE10 0020EE90 0D008110 */  beq        $4, $1, .L0020EEC8
    /* 10FE14 0020EE94 2028A200 */   add       $5, $5, $2 /* handwritten instruction */
    /* 10FE18 0020EE98 80200400 */  sll        $4, $4, 2
    /* 10FE1C 0020EE9C 20208200 */  add        $4, $4, $2 /* handwritten instruction */
    /* 10FE20 0020EEA0 4800848C */  lw         $4, 0x48($4)
    /* 10FE24 0020EEA4 000092D8 */  lqc2       $vf18, 0x0($4)
.align 2
  alabel func_0020EEA8
    /* 10FE28 0020EEA8 4800A58C */  lw         $5, 0x48($5)
    /* 10FE2C 0020EEAC 5400248F */  lw         $4, 0x54($25)
    /* 10FE30 0020EEB0 0000B3D8 */  lqc2       $vf19, 0x0($5)
    /* 10FE34 0020EEB4 0088A448 */  qmtc2.ni   $4, $vf17
    /* 10FE38 0020EEB8 BC99F14B */  .word      0x4BF199BC    # vmulax.xyzw ACC, $vf19, $vf17x
    /* 10FE3C 0020EEBC BF90E04B */  .word      0x4BE090BF    # vmaddaw.xyzw ACC, $vf18, $vf0w
    /* 10FE40 0020EEC0 683B0808 */  j          func_0020EDA0
    /* 10FE44 0020EEC4 8C94F14B */   vmsubx.xyzw $vf18, $vf18, $vf17x
.align 2
  .L0020EEC8:
    /* 10FE48 0020EEC8 50002493 */  lbu        $4, 0x50($25)
    /* 10FE4C 0020EECC 1B00013C */  lui        $1, %hi(D_001B2F80)
    /* 10FE50 0020EED0 802F2124 */  addiu      $1, $1, %lo(D_001B2F80)
    /* 10FE54 0020EED4 00210400 */  sll        $4, $4, 4
    /* 10FE58 0020EED8 20208100 */  add        $4, $4, $1 /* handwritten instruction */
    /* 10FE5C 0020EEDC 00000000 */  nop
    /* 10FE60 0020EEE0 AA3B0808 */  j          func_0020EEA8
    /* 10FE64 0020EEE4 000092D8 */   lqc2      $vf18, 0x0($4)
endlabel func_0020ED48
