.align 3
/* Handwritten function */
nonmatching func_00126ED8, 0xD4

glabel func_00126ED8
    /* 27E58 00126ED8 E9CC0070 */  pnor       $t9, $zero, $zero
    /* 27E5C 00126EDC F6CB1970 */  psrlh      $t9, $t9, 15
    /* 27E60 00126EE0 1400858C */  lw         $a1, 0x14($a0)
    /* 27E64 00126EE4 1800868C */  lw         $a2, 0x18($a0)
    /* 27E68 00126EE8 0800878C */  lw         $a3, 0x8($a0)
    /* 27E6C 00126EEC 00008E8C */  lw         $t6, 0x0($a0)
    /* 27E70 00126EF0 04008D8C */  lw         $t5, 0x4($a0)
    /* 27E74 00126EF4 01001824 */  addiu      $t8, $zero, 0x1
    /* 27E78 00126EF8 1000898C */  lw         $t1, 0x10($a0)
    /* 27E7C 00126EFC 40400900 */  sll        $t0, $t1, 1
    /* 27E80 00126F00 FFFF0B24 */  addiu      $t3, $zero, -0x1
.align 2
  .L00126F04:
    /* 27E84 00126F04 0000AA78 */  lq         $t2, 0x0($a1)
    /* 27E88 00126F08 0000CF78 */  lq         $t7, 0x0($a2)
    /* 27E8C 00126F0C 0000B805 */  mtsab      $t5, 0x0
    /* 27E90 00126F10 E816EA71 */  qfsrv      $v0, $t7, $t2
    /* 27E94 00126F14 E81E4F71 */  qfsrv      $v1, $t2, $t7
    /* 27E98 00126F18 88560270 */  pextlb     $t2, $zero, $v0
    /* 27E9C 00126F1C FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 27EA0 00126F20 A87E0270 */  pextub     $t7, $zero, $v0
    /* 27EA4 00126F24 00001807 */  mtsab      $t8, 0x0
    /* 27EA8 00126F28 E81E6270 */  qfsrv      $v1, $v1, $v0
    /* 27EAC 00126F2C 88160370 */  pextlb     $v0, $zero, $v1
    /* 27EB0 00126F30 A81E0370 */  pextub     $v1, $zero, $v1
    /* 27EB4 00126F34 08514271 */  paddh      $t2, $t2, $v0
    /* 27EB8 00126F38 0879E371 */  paddh      $t7, $t7, $v1
    /* 27EBC 00126F3C 08115971 */  paddh      $v0, $t2, $t9
    /* 27EC0 00126F40 0819F971 */  paddh      $v1, $t7, $t9
    /* 27EC4 00126F44 76100270 */  psrlh      $v0, $v0, 1
    /* 27EC8 00126F48 76180370 */  psrlh      $v1, $v1, 1
    /* 27ECC 00126F4C 0000CA79 */  lq         $t2, 0x0($t6)
    /* 27ED0 00126F50 1000CF79 */  lq         $t7, 0x10($t6)
    /* 27ED4 00126F54 08114A70 */  paddh      $v0, $v0, $t2
    /* 27ED8 00126F58 08196F70 */  paddh      $v1, $v1, $t7
    /* 27EDC 00126F5C 08515970 */  paddh      $t2, $v0, $t9
    /* 27EE0 00126F60 76100A70 */  psrlh      $v0, $t2, 1
    /* 27EE4 00126F64 88516070 */  pcgth      $t2, $v1, $zero
    /* 27EE8 00126F68 F6530A70 */  psrlh      $t2, $t2, 15
    /* 27EEC 00126F6C 08516A70 */  paddh      $t2, $v1, $t2
    /* 27EF0 00126F70 76180A70 */  psrlh      $v1, $t2, 1
    /* 27EF4 00126F74 0000C27D */  sq         $v0, 0x0($t6)
    /* 27EF8 00126F78 1000C37D */  sq         $v1, 0x10($t6)
    /* 27EFC 00126F7C 2128A900 */  addu       $a1, $a1, $t1
    /* 27F00 00126F80 2130C900 */  addu       $a2, $a2, $t1
    /* 27F04 00126F84 DFFFE01C */  bgtz       $a3, .L00126F04
    /* 27F08 00126F88 2170C801 */   addu      $t6, $t6, $t0
    /* 27F0C 00126F8C 8000A524 */  addiu      $a1, $a1, 0x80
    /* 27F10 00126F90 8000C624 */  addiu      $a2, $a2, 0x80
    /* 27F14 00126F94 0C00878C */  lw         $a3, 0xC($a0)
    /* 27F18 00126F98 24606701 */  and        $t4, $t3, $a3
    /* 27F1C 00126F9C D9FF8015 */  bnez       $t4, .L00126F04
    /* 27F20 00126FA0 2D580000 */   daddu     $t3, $zero, $zero
    /* 27F24 00126FA4 0800E003 */  jr         $ra
    /* 27F28 00126FA8 00000000 */   nop
endlabel func_00126ED8
    /* 27F2C 00126FAC 00000000 */  nop
