.align 3
/* Handwritten function */
nonmatching func_00126D10, 0xDC

glabel func_00126D10
    /* 27C90 00126D10 E9CC0070 */  pnor       $t9, $zero, $zero
    /* 27C94 00126D14 F6CB1970 */  psrlh      $t9, $t9, 15
    /* 27C98 00126D18 1400858C */  lw         $a1, 0x14($a0)
    /* 27C9C 00126D1C 1800868C */  lw         $a2, 0x18($a0)
    /* 27CA0 00126D20 0800878C */  lw         $a3, 0x8($a0)
    /* 27CA4 00126D24 00008E8C */  lw         $t6, 0x0($a0)
    /* 27CA8 00126D28 04008D8C */  lw         $t5, 0x4($a0)
    /* 27CAC 00126D2C 10008C8C */  lw         $t4, 0x10($a0)
    /* 27CB0 00126D30 0000A878 */  lq         $t0, 0x0($a1)
    /* 27CB4 00126D34 0000C978 */  lq         $t1, 0x0($a2)
    /* 27CB8 00126D38 0000B805 */  mtsab      $t5, 0x0
    /* 27CBC 00126D3C E8562871 */  qfsrv      $t2, $t1, $t0
    /* 27CC0 00126D40 40C00C00 */  sll        $t8, $t4, 1
    /* 27CC4 00126D44 88460A70 */  pextlb     $t0, $zero, $t2
    /* 27CC8 00126D48 FFFF0B24 */  addiu      $t3, $zero, -0x1
    /* 27CCC 00126D4C 1F00E010 */  beqz       $a3, .L00126DCC
    /* 27CD0 00126D50 A84E0A70 */   pextub    $t1, $zero, $t2
.align 2
  .L00126D54:
    /* 27CD4 00126D54 2128AC00 */  addu       $a1, $a1, $t4
    /* 27CD8 00126D58 2130CC00 */  addu       $a2, $a2, $t4
    /* 27CDC 00126D5C 0000AA78 */  lq         $t2, 0x0($a1)
    /* 27CE0 00126D60 0000CF78 */  lq         $t7, 0x0($a2)
    /* 27CE4 00126D64 E816EA71 */  qfsrv      $v0, $t7, $t2
    /* 27CE8 00126D68 88560270 */  pextlb     $t2, $zero, $v0
    /* 27CEC 00126D6C FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 27CF0 00126D70 A87E0270 */  pextub     $t7, $zero, $v0
    /* 27CF4 00126D74 08110A71 */  paddh      $v0, $t0, $t2
    /* 27CF8 00126D78 08192F71 */  paddh      $v1, $t1, $t7
    /* 27CFC 00126D7C A9444071 */  por        $t0, $t2, $zero
    /* 27D00 00126D80 A94CE071 */  por        $t1, $t7, $zero
    /* 27D04 00126D84 08115970 */  paddh      $v0, $v0, $t9
    /* 27D08 00126D88 08197970 */  paddh      $v1, $v1, $t9
    /* 27D0C 00126D8C 76100270 */  psrlh      $v0, $v0, 1
    /* 27D10 00126D90 76180370 */  psrlh      $v1, $v1, 1
    /* 27D14 00126D94 0000CA79 */  lq         $t2, 0x0($t6)
    /* 27D18 00126D98 1000CF79 */  lq         $t7, 0x10($t6)
    /* 27D1C 00126D9C 08114A70 */  paddh      $v0, $v0, $t2
    /* 27D20 00126DA0 08196F70 */  paddh      $v1, $v1, $t7
    /* 27D24 00126DA4 08515970 */  paddh      $t2, $v0, $t9
    /* 27D28 00126DA8 76100A70 */  psrlh      $v0, $t2, 1
    /* 27D2C 00126DAC 88516070 */  pcgth      $t2, $v1, $zero
    /* 27D30 00126DB0 F6530A70 */  psrlh      $t2, $t2, 15
    /* 27D34 00126DB4 08516A70 */  paddh      $t2, $v1, $t2
    /* 27D38 00126DB8 76180A70 */  psrlh      $v1, $t2, 1
    /* 27D3C 00126DBC 0000C27D */  sq         $v0, 0x0($t6)
    /* 27D40 00126DC0 1000C37D */  sq         $v1, 0x10($t6)
    /* 27D44 00126DC4 E3FFE01C */  bgtz       $a3, .L00126D54
    /* 27D48 00126DC8 2170D801 */   addu      $t6, $t6, $t8
.align 2
  .L00126DCC:
    /* 27D4C 00126DCC 8000A524 */  addiu      $a1, $a1, 0x80
    /* 27D50 00126DD0 8000C624 */  addiu      $a2, $a2, 0x80
    /* 27D54 00126DD4 0C00878C */  lw         $a3, 0xC($a0)
    /* 27D58 00126DD8 24506701 */  and        $t2, $t3, $a3
    /* 27D5C 00126DDC DDFF4015 */  bnez       $t2, .L00126D54
    /* 27D60 00126DE0 2D580000 */   daddu     $t3, $zero, $zero
    /* 27D64 00126DE4 0800E003 */  jr         $ra
    /* 27D68 00126DE8 00000000 */   nop
endlabel func_00126D10
    /* 27D6C 00126DEC 00000000 */  nop
