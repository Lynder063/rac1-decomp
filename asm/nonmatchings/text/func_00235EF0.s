.align 3
/* Handwritten function */
nonmatching func_00235EF0, 0x16C

glabel func_00235EF0
    /* 136E70 00235EF0 0070013C */  lui        $at, (0x70003C00 >> 16)
    /* 136E74 00235EF4 00000000 */  nop
    /* 136E78 00235EF8 00342E20 */  addi       $t6, $at, (0x70003400 & 0xFFFF) /* handwritten instruction */
    /* 136E7C 00235EFC 003C2F20 */  addi       $t7, $at, (0x70003C00 & 0xFFFF) /* handwritten instruction */
    /* 136E80 00235F00 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 136E84 00235F04 00B0A148 */  qmtc2.ni   $at, $vf22
    /* 136E88 00235F08 0000E121 */  addi       $at, $t7, 0x0 /* handwritten instruction */
    /* 136E8C 00235F0C C000E221 */  addi       $v0, $t7, 0xC0 /* handwritten instruction */
.align 2
  .L00235F10:
    /* 136E90 00235F10 0000207C */  sq         $zero, 0x0($at)
    /* 136E94 00235F14 00000000 */  nop
    /* 136E98 00235F18 1000207C */  sq         $zero, 0x10($at)
    /* 136E9C 00235F1C 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 136EA0 00235F20 00000000 */  nop
    /* 136EA4 00235F24 FAFF2214 */  bne        $at, $v0, .L00235F10
    /* 136EA8 00235F28 00000000 */   nop
.align 2
  .L00235F2C:
    /* 136EAC 00235F2C 0000CC8D */  lw         $t4, 0x0($t6)
    /* 136EB0 00235F30 0400CD8D */  lw         $t5, 0x4($t6)
    /* 136EB4 00235F34 47008011 */  beqz       $t4, .L00236054
    /* 136EB8 00235F38 0800CE21 */   addi      $t6, $t6, 0x8 /* handwritten instruction */
    /* 136EBC 00235F3C 00690D00 */  sll        $t5, $t5, 4
    /* 136EC0 00235F40 2068AC01 */  add        $t5, $t5, $t4 /* handwritten instruction */
.align 2
  alabel func_00235F44
    /* 136EC4 00235F44 F9FF8D11 */  beq        $t4, $t5, .L00235F2C
    /* 136EC8 00235F48 000081D9 */   lqc2      $vf1, 0x0($t4)
    /* 136ECC 00235F4C 0C008395 */  lhu        $v1, 0xC($t4)
    /* 136ED0 00235F50 10008C21 */  addi       $t4, $t4, 0x10 /* handwritten instruction */
    /* 136ED4 00235F54 FEFF8291 */  lbu        $v0, -0x2($t4)
    /* 136ED8 00235F58 AC08DC4B */  vsub.xyz   $vf2, $vf1, $vf28
    /* 136EDC 00235F5C 0018A348 */  qmtc2.ni   $v1, $vf3
    /* 136EE0 00235F60 FFFF8191 */  lbu        $at, -0x1($t4)
    /* 136EE4 00235F64 FC110200 */  dsll32     $v0, $v0, 7
    /* 136EE8 00235F68 00000000 */  nop
    /* 136EEC 00235F6C 3C19034B */  vitof0.x   $vf3, $vf3
    /* 136EF0 00235F70 20082F00 */  add        $at, $at, $t7 /* handwritten instruction */
    /* 136EF4 00235F74 BCE9C24B */  .word      0x4BC2E9BC    # vmulax.xyz ACC, $vf29, $vf2x
    /* 136EF8 00235F78 00002480 */  lb         $a0, 0x0($at)
    /* 136EFC 00235F7C BDF0C24B */  .word      0x4BC2F0BD    # vmadday.xyz ACC, $vf30, $vf2y
    /* 136F00 00235F80 00000000 */  nop
    /* 136F04 00235F84 EFFF8004 */  bltz       $a0, func_00235F44
    /* 136F08 00235F88 8AF8C24B */   vmaddz.xyz $vf2, $vf31, $vf2z
    /* 136F0C 00235F8C C400834A */  vsubx.y    $vf3, $vf0, $vf3x
    /* 136F10 00235F90 00000000 */  nop
    /* 136F14 00235F94 0050A248 */  qmtc2.ni   $v0, $vf10
    /* 136F18 00235F98 00000000 */  nop
    /* 136F1C 00235F9C 98D1834B */  vmulx.xy   $vf6, $vf26, $vf3x
    /* 136F20 00235FA0 00000000 */  nop
    /* 136F24 00235FA4 3C518A4A */  vitof0.y   $vf10, $vf10
    /* 136F28 00235FA8 00000000 */  nop
    /* 136F2C 00235FAC 0219824B */  vaddz.xy   $vf4, $vf3, $vf2z
    /* 136F30 00235FB0 00000000 */  nop
    /* 136F34 00235FB4 5AC1824B */  vmulz.xy   $vf5, $vf24, $vf2z
    /* 136F38 00235FB8 00000000 */  nop
    /* 136F3C 00235FBC FD11824B */  vabs.xy    $vf2, $vf2
    /* 136F40 00235FC0 00000000 */  nop
    /* 136F44 00235FC4 D852964A */  vmulx.y    $vf11, $vf10, $vf22x
    /* 136F48 00235FC8 00000000 */  nop
    /* 136F4C 00235FCC EC208A4B */  vsub.xy    $vf3, $vf4, $vf10
    /* 136F50 00235FD0 00000000 */  nop
    /* 136F54 00235FD4 00000000 */  nop
    /* 136F58 00235FD8 00000000 */  nop
    /* 136F5C 00235FDC AC10864B */  vsub.xy    $vf2, $vf2, $vf6
    /* 136F60 00235FE0 00000000 */  nop
    /* 136F64 00235FE4 2C218B4A */  vsub.y     $vf4, $vf4, $vf11
    /* 136F68 00235FE8 00000000 */  nop
    /* 136F6C 00235FEC 00000000 */  nop
    /* 136F70 00235FF0 00000000 */  nop
    /* 136F74 00235FF4 00182248 */  qmfc2.ni   $v0, $vf3
    /* 136F78 00235FF8 00000000 */  nop
    /* 136F7C 00235FFC AC28824B */  vsub.xy    $vf2, $vf5, $vf2
    /* 136F80 00236000 00000000 */  nop
    /* 136F84 00236004 CFFF4104 */  bgez       $v0, func_00235F44
    /* 136F88 00236008 3C100200 */   dsll32    $v0, $v0, 0
    /* 136F8C 0023600C CDFF4004 */  bltz       $v0, func_00235F44
    /* 136F90 00236010 00000000 */   nop
    /* 136F94 00236014 00202348 */  qmfc2.ni   $v1, $vf4
    /* 136F98 00236018 00000000 */  nop
    /* 136F9C 0023601C 00000000 */  nop
    /* 136FA0 00236020 00000000 */  nop
    /* 136FA4 00236024 00102248 */  qmfc2.ni   $v0, $vf2
    /* 136FA8 00236028 00000000 */  nop
    /* 136FAC 0023602C 01000420 */  addi       $a0, $zero, 0x1 /* handwritten instruction */
    /* 136FB0 00236030 FFFF0520 */  addi       $a1, $zero, -0x1 /* handwritten instruction */
    /* 136FB4 00236034 C3FF4004 */  bltz       $v0, func_00235F44
    /* 136FB8 00236038 3C100200 */   dsll32    $v0, $v0, 0
    /* 136FBC 0023603C C1FF4004 */  bltz       $v0, func_00235F44
    /* 136FC0 00236040 01000220 */   addi      $v0, $zero, 0x1 /* handwritten instruction */
    /* 136FC4 00236044 BFFF601C */  bgtz       $v1, func_00235F44
    /* 136FC8 00236048 000024A0 */   sb        $a0, 0x0($at)
    /* 136FCC 0023604C D1D70808 */  j          func_00235F44
    /* 136FD0 00236050 000025A0 */   sb        $a1, 0x0($at)
.align 2
  .L00236054:
    /* 136FD4 00236054 0800E003 */  jr         $ra
    /* 136FD8 00236058 00000000 */   nop
endlabel func_00235EF0
    /* 136FDC 0023605C 00000000 */  nop
