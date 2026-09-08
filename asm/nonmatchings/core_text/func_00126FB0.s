.align 3
/* Handwritten function */
nonmatching func_00126FB0, 0xD0

glabel func_00126FB0
    /* 27F30 00126FB0 E9CC0070 */  pnor       $t9, $zero, $zero
    /* 27F34 00126FB4 F6CB1970 */  psrlh      $t9, $t9, 15
    /* 27F38 00126FB8 1400858C */  lw         $a1, 0x14($a0)
    /* 27F3C 00126FBC 1800868C */  lw         $a2, 0x18($a0)
    /* 27F40 00126FC0 00008E8C */  lw         $t6, 0x0($a0)
    /* 27F44 00126FC4 04008D8C */  lw         $t5, 0x4($a0)
    /* 27F48 00126FC8 01001824 */  addiu      $t8, $zero, 0x1
    /* 27F4C 00126FCC FFFF0C24 */  addiu      $t4, $zero, -0x1
    /* 27F50 00126FD0 1000838C */  lw         $v1, 0x10($a0)
    /* 27F54 00126FD4 40100300 */  sll        $v0, $v1, 1
.align 2
  .L00126FD8:
    /* 27F58 00126FD8 0800878C */  lw         $a3, 0x8($a0)
    /* 27F5C 00126FDC FFFF0B24 */  addiu      $t3, $zero, -0x1
.align 2
  .L00126FE0:
    /* 27F60 00126FE0 0000A8DC */  ld         $t0, 0x0($a1)
    /* 27F64 00126FE4 0000C9DC */  ld         $t1, 0x0($a2)
    /* 27F68 00126FE8 89432871 */  pcpyld     $t0, $t1, $t0
    /* 27F6C 00126FEC 0000B805 */  mtsab      $t5, 0x0
    /* 27F70 00126FF0 E8460871 */  qfsrv      $t0, $t0, $t0
    /* 27F74 00126FF4 884E0870 */  pextlb     $t1, $zero, $t0
    /* 27F78 00126FF8 FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 27F7C 00126FFC 2128A300 */  addu       $a1, $a1, $v1
    /* 27F80 00127000 2130C300 */  addu       $a2, $a2, $v1
    /* 27F84 00127004 00001807 */  mtsab      $t8, 0x0
    /* 27F88 00127008 E8560870 */  qfsrv      $t2, $zero, $t0
    /* 27F8C 0012700C 88460A70 */  pextlb     $t0, $zero, $t2
    /* 27F90 00127010 08512871 */  paddh      $t2, $t1, $t0
    /* 27F94 00127014 08515971 */  paddh      $t2, $t2, $t9
    /* 27F98 00127018 76500A70 */  psrlh      $t2, $t2, 1
    /* 27F9C 0012701C 0000C879 */  lq         $t0, 0x0($t6)
    /* 27FA0 00127020 08514871 */  paddh      $t2, $t2, $t0
    /* 27FA4 00127024 88494071 */  pcgth      $t1, $t2, $zero
    /* 27FA8 00127028 F64B0970 */  psrlh      $t1, $t1, 15
    /* 27FAC 0012702C 08514971 */  paddh      $t2, $t2, $t1
    /* 27FB0 00127030 76500A70 */  psrlh      $t2, $t2, 1
    /* 27FB4 00127034 0000CA7D */  sq         $t2, 0x0($t6)
    /* 27FB8 00127038 E9FFE01C */  bgtz       $a3, .L00126FE0
    /* 27FBC 0012703C 2170C201 */   addu      $t6, $t6, $v0
    /* 27FC0 00127040 4001A524 */  addiu      $a1, $a1, 0x140
    /* 27FC4 00127044 4001C624 */  addiu      $a2, $a2, 0x140
    /* 27FC8 00127048 0C00878C */  lw         $a3, 0xC($a0)
    /* 27FCC 0012704C 24506701 */  and        $t2, $t3, $a3
    /* 27FD0 00127050 E3FF4015 */  bnez       $t2, .L00126FE0
    /* 27FD4 00127054 2D580000 */   daddu     $t3, $zero, $zero
    /* 27FD8 00127058 1400858C */  lw         $a1, 0x14($a0)
    /* 27FDC 0012705C 1800868C */  lw         $a2, 0x18($a0)
    /* 27FE0 00127060 00008E8C */  lw         $t6, 0x0($a0)
    /* 27FE4 00127064 4000A524 */  addiu      $a1, $a1, 0x40
    /* 27FE8 00127068 4000C624 */  addiu      $a2, $a2, 0x40
    /* 27FEC 0012706C 8000CE25 */  addiu      $t6, $t6, 0x80
    /* 27FF0 00127070 D9FF8015 */  bnez       $t4, .L00126FD8
    /* 27FF4 00127074 2D600000 */   daddu     $t4, $zero, $zero
    /* 27FF8 00127078 0800E003 */  jr         $ra
    /* 27FFC 0012707C 00000000 */   nop
endlabel func_00126FB0
