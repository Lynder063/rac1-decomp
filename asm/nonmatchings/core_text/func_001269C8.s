.align 3
/* Handwritten function */
nonmatching func_001269C8, 0xF8

glabel func_001269C8
    /* 27948 001269C8 E9CC0070 */  pnor       $t9, $zero, $zero
    /* 2794C 001269CC F6CB1970 */  psrlh      $t9, $t9, 15
    /* 27950 001269D0 74C81970 */  psllh      $t9, $t9, 1
    /* 27954 001269D4 1400858C */  lw         $a1, 0x14($a0)
    /* 27958 001269D8 1800868C */  lw         $a2, 0x18($a0)
    /* 2795C 001269DC 0800878C */  lw         $a3, 0x8($a0)
    /* 27960 001269E0 00008E8C */  lw         $t6, 0x0($a0)
    /* 27964 001269E4 04008D8C */  lw         $t5, 0x4($a0)
    /* 27968 001269E8 10008C8C */  lw         $t4, 0x10($a0)
    /* 2796C 001269EC 01001824 */  addiu      $t8, $zero, 0x1
    /* 27970 001269F0 0000A878 */  lq         $t0, 0x0($a1)
    /* 27974 001269F4 0000C978 */  lq         $t1, 0x0($a2)
    /* 27978 001269F8 0000B805 */  mtsab      $t5, 0x0
    /* 2797C 001269FC E8562871 */  qfsrv      $t2, $t1, $t0
    /* 27980 00126A00 E87E0971 */  qfsrv      $t7, $t0, $t1
    /* 27984 00126A04 88460A70 */  pextlb     $t0, $zero, $t2
    /* 27988 00126A08 A84E0A70 */  pextub     $t1, $zero, $t2
    /* 2798C 00126A0C FFFF0B24 */  addiu      $t3, $zero, -0x1
    /* 27990 00126A10 00001807 */  mtsab      $t8, 0x0
    /* 27994 00126A14 E87EEA71 */  qfsrv      $t7, $t7, $t2
    /* 27998 00126A18 88560F70 */  pextlb     $t2, $zero, $t7
    /* 2799C 00126A1C A87E0F70 */  pextub     $t7, $zero, $t7
    /* 279A0 00126A20 08410A71 */  paddh      $t0, $t0, $t2
    /* 279A4 00126A24 1E00E010 */  beqz       $a3, .L00126AA0
    /* 279A8 00126A28 08492F71 */   paddh     $t1, $t1, $t7
.align 2
  .L00126A2C:
    /* 279AC 00126A2C 2128AC00 */  addu       $a1, $a1, $t4
    /* 279B0 00126A30 2130CC00 */  addu       $a2, $a2, $t4
    /* 279B4 00126A34 0000AA78 */  lq         $t2, 0x0($a1)
    /* 279B8 00126A38 0000CF78 */  lq         $t7, 0x0($a2)
    /* 279BC 00126A3C 0000B805 */  mtsab      $t5, 0x0
    /* 279C0 00126A40 E816EA71 */  qfsrv      $v0, $t7, $t2
    /* 279C4 00126A44 E81E4F71 */  qfsrv      $v1, $t2, $t7
    /* 279C8 00126A48 88560270 */  pextlb     $t2, $zero, $v0
    /* 279CC 00126A4C FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 279D0 00126A50 A87E0270 */  pextub     $t7, $zero, $v0
    /* 279D4 00126A54 00001807 */  mtsab      $t8, 0x0
    /* 279D8 00126A58 E81E6270 */  qfsrv      $v1, $v1, $v0
    /* 279DC 00126A5C 88160370 */  pextlb     $v0, $zero, $v1
    /* 279E0 00126A60 A81E0370 */  pextub     $v1, $zero, $v1
    /* 279E4 00126A64 08514271 */  paddh      $t2, $t2, $v0
    /* 279E8 00126A68 0879E371 */  paddh      $t7, $t7, $v1
    /* 279EC 00126A6C 08110A71 */  paddh      $v0, $t0, $t2
    /* 279F0 00126A70 08192F71 */  paddh      $v1, $t1, $t7
    /* 279F4 00126A74 A9444071 */  por        $t0, $t2, $zero
    /* 279F8 00126A78 A94CE071 */  por        $t1, $t7, $zero
    /* 279FC 00126A7C 08115970 */  paddh      $v0, $v0, $t9
    /* 27A00 00126A80 08197970 */  paddh      $v1, $v1, $t9
    /* 27A04 00126A84 B6100270 */  psrlh      $v0, $v0, 2
    /* 27A08 00126A88 B6180370 */  psrlh      $v1, $v1, 2
    /* 27A0C 00126A8C 0000C27D */  sq         $v0, 0x0($t6)
    /* 27A10 00126A90 40500C00 */  sll        $t2, $t4, 1
    /* 27A14 00126A94 1000C37D */  sq         $v1, 0x10($t6)
    /* 27A18 00126A98 E4FFE01C */  bgtz       $a3, .L00126A2C
    /* 27A1C 00126A9C 2170CA01 */   addu      $t6, $t6, $t2
.align 2
  .L00126AA0:
    /* 27A20 00126AA0 8000A524 */  addiu      $a1, $a1, 0x80
    /* 27A24 00126AA4 8000C624 */  addiu      $a2, $a2, 0x80
    /* 27A28 00126AA8 0C00878C */  lw         $a3, 0xC($a0)
    /* 27A2C 00126AAC 24506701 */  and        $t2, $t3, $a3
    /* 27A30 00126AB0 DEFF4015 */  bnez       $t2, .L00126A2C
    /* 27A34 00126AB4 2D580000 */   daddu     $t3, $zero, $zero
    /* 27A38 00126AB8 0800E003 */  jr         $ra
    /* 27A3C 00126ABC 00000000 */   nop
endlabel func_001269C8
