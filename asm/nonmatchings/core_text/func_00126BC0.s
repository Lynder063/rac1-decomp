.align 3
/* Handwritten function */
nonmatching func_00126BC0, 0x9C

glabel func_00126BC0
    /* 27B40 00126BC0 1400858C */  lw         $a1, 0x14($a0)
    /* 27B44 00126BC4 1800868C */  lw         $a2, 0x18($a0)
    /* 27B48 00126BC8 0800878C */  lw         $a3, 0x8($a0)
    /* 27B4C 00126BCC 00008E8C */  lw         $t6, 0x0($a0)
    /* 27B50 00126BD0 04008D8C */  lw         $t5, 0x4($a0)
    /* 27B54 00126BD4 1000898C */  lw         $t1, 0x10($a0)
    /* 27B58 00126BD8 40400900 */  sll        $t0, $t1, 1
    /* 27B5C 00126BDC FFFF0B24 */  addiu      $t3, $zero, -0x1
    /* 27B60 00126BE0 0000B805 */  mtsab      $t5, 0x0
.align 2
  .L00126BE4:
    /* 27B64 00126BE4 0000AA78 */  lq         $t2, 0x0($a1)
    /* 27B68 00126BE8 0000CF78 */  lq         $t7, 0x0($a2)
    /* 27B6C 00126BEC E816EA71 */  qfsrv      $v0, $t7, $t2
    /* 27B70 00126BF0 88560270 */  pextlb     $t2, $zero, $v0
    /* 27B74 00126BF4 A87E0270 */  pextub     $t7, $zero, $v0
    /* 27B78 00126BF8 0000C279 */  lq         $v0, 0x0($t6)
    /* 27B7C 00126BFC 1000C379 */  lq         $v1, 0x10($t6)
    /* 27B80 00126C00 08114A70 */  paddh      $v0, $v0, $t2
    /* 27B84 00126C04 08196F70 */  paddh      $v1, $v1, $t7
    /* 27B88 00126C08 E9CC0070 */  pnor       $t9, $zero, $zero
    /* 27B8C 00126C0C F6CB1970 */  psrlh      $t9, $t9, 15
    /* 27B90 00126C10 08515970 */  paddh      $t2, $v0, $t9
    /* 27B94 00126C14 76100A70 */  psrlh      $v0, $t2, 1
    /* 27B98 00126C18 08517970 */  paddh      $t2, $v1, $t9
    /* 27B9C 00126C1C 76180A70 */  psrlh      $v1, $t2, 1
    /* 27BA0 00126C20 0000C27D */  sq         $v0, 0x0($t6)
    /* 27BA4 00126C24 1000C37D */  sq         $v1, 0x10($t6)
    /* 27BA8 00126C28 FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 27BAC 00126C2C 2128A900 */  addu       $a1, $a1, $t1
    /* 27BB0 00126C30 2170C801 */  addu       $t6, $t6, $t0
    /* 27BB4 00126C34 EBFFE01C */  bgtz       $a3, .L00126BE4
    /* 27BB8 00126C38 2130C900 */   addu      $a2, $a2, $t1
    /* 27BBC 00126C3C 8000A524 */  addiu      $a1, $a1, 0x80
    /* 27BC0 00126C40 8000C624 */  addiu      $a2, $a2, 0x80
    /* 27BC4 00126C44 0C00878C */  lw         $a3, 0xC($a0)
    /* 27BC8 00126C48 24606701 */  and        $t4, $t3, $a3
    /* 27BCC 00126C4C E5FF8015 */  bnez       $t4, .L00126BE4
    /* 27BD0 00126C50 2D580000 */   daddu     $t3, $zero, $zero
    /* 27BD4 00126C54 0800E003 */  jr         $ra
    /* 27BD8 00126C58 00000000 */   nop
endlabel func_00126BC0
    /* 27BDC 00126C5C 00000000 */  nop
