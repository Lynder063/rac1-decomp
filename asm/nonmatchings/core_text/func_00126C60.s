.align 3
/* Handwritten function */
nonmatching func_00126C60, 0xAC

glabel func_00126C60
    /* 27BE0 00126C60 1400858C */  lw         $a1, 0x14($a0)
    /* 27BE4 00126C64 1800868C */  lw         $a2, 0x18($a0)
    /* 27BE8 00126C68 00008E8C */  lw         $t6, 0x0($a0)
    /* 27BEC 00126C6C 04008D8C */  lw         $t5, 0x4($a0)
    /* 27BF0 00126C70 FFFF0C24 */  addiu      $t4, $zero, -0x1
    /* 27BF4 00126C74 1000838C */  lw         $v1, 0x10($a0)
    /* 27BF8 00126C78 40100300 */  sll        $v0, $v1, 1
    /* 27BFC 00126C7C 0000B805 */  mtsab      $t5, 0x0
.align 2
  .L00126C80:
    /* 27C00 00126C80 0800878C */  lw         $a3, 0x8($a0)
    /* 27C04 00126C84 FFFF0B24 */  addiu      $t3, $zero, -0x1
.align 2
  .L00126C88:
    /* 27C08 00126C88 0000A8DC */  ld         $t0, 0x0($a1)
    /* 27C0C 00126C8C 0000C9DC */  ld         $t1, 0x0($a2)
    /* 27C10 00126C90 89432871 */  pcpyld     $t0, $t1, $t0
    /* 27C14 00126C94 E8460871 */  qfsrv      $t0, $t0, $t0
    /* 27C18 00126C98 884E0870 */  pextlb     $t1, $zero, $t0
    /* 27C1C 00126C9C FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 27C20 00126CA0 2128A300 */  addu       $a1, $a1, $v1
    /* 27C24 00126CA4 2130C300 */  addu       $a2, $a2, $v1
    /* 27C28 00126CA8 0000C879 */  lq         $t0, 0x0($t6)
    /* 27C2C 00126CAC 08512871 */  paddh      $t2, $t1, $t0
    /* 27C30 00126CB0 88494071 */  pcgth      $t1, $t2, $zero
    /* 27C34 00126CB4 F64B0970 */  psrlh      $t1, $t1, 15
    /* 27C38 00126CB8 08514971 */  paddh      $t2, $t2, $t1
    /* 27C3C 00126CBC 76500A70 */  psrlh      $t2, $t2, 1
    /* 27C40 00126CC0 0000CA7D */  sq         $t2, 0x0($t6)
    /* 27C44 00126CC4 F0FFE01C */  bgtz       $a3, .L00126C88
    /* 27C48 00126CC8 2170C201 */   addu      $t6, $t6, $v0
    /* 27C4C 00126CCC 4001A524 */  addiu      $a1, $a1, 0x140
    /* 27C50 00126CD0 4001C624 */  addiu      $a2, $a2, 0x140
    /* 27C54 00126CD4 0C00878C */  lw         $a3, 0xC($a0)
    /* 27C58 00126CD8 24506701 */  and        $t2, $t3, $a3
    /* 27C5C 00126CDC EAFF4015 */  bnez       $t2, .L00126C88
    /* 27C60 00126CE0 2D580000 */   daddu     $t3, $zero, $zero
    /* 27C64 00126CE4 1400858C */  lw         $a1, 0x14($a0)
    /* 27C68 00126CE8 1800868C */  lw         $a2, 0x18($a0)
    /* 27C6C 00126CEC 00008E8C */  lw         $t6, 0x0($a0)
    /* 27C70 00126CF0 4000A524 */  addiu      $a1, $a1, 0x40
    /* 27C74 00126CF4 4000C624 */  addiu      $a2, $a2, 0x40
    /* 27C78 00126CF8 8000CE25 */  addiu      $t6, $t6, 0x80
    /* 27C7C 00126CFC E0FF8015 */  bnez       $t4, .L00126C80
    /* 27C80 00126D00 2D600000 */   daddu     $t4, $zero, $zero
    /* 27C84 00126D04 0800E003 */  jr         $ra
    /* 27C88 00126D08 00000000 */   nop
endlabel func_00126C60
    /* 27C8C 00126D0C 00000000 */  nop
