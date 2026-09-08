.align 3
/* Handwritten function */
nonmatching func_00126AC0, 0xFC

glabel func_00126AC0
    /* 27A40 00126AC0 E9CC0070 */  pnor       $t9, $zero, $zero
    /* 27A44 00126AC4 F6CB1970 */  psrlh      $t9, $t9, 15
    /* 27A48 00126AC8 74C81970 */  psllh      $t9, $t9, 1
    /* 27A4C 00126ACC 1400858C */  lw         $a1, 0x14($a0)
    /* 27A50 00126AD0 1800868C */  lw         $a2, 0x18($a0)
    /* 27A54 00126AD4 00008E8C */  lw         $t6, 0x0($a0)
    /* 27A58 00126AD8 04008D8C */  lw         $t5, 0x4($a0)
    /* 27A5C 00126ADC 10008C8C */  lw         $t4, 0x10($a0)
    /* 27A60 00126AE0 01001824 */  addiu      $t8, $zero, 0x1
    /* 27A64 00126AE4 01000B24 */  addiu      $t3, $zero, 0x1
.align 2
  .L00126AE8:
    /* 27A68 00126AE8 0800878C */  lw         $a3, 0x8($a0)
    /* 27A6C 00126AEC 0000A8DC */  ld         $t0, 0x0($a1)
    /* 27A70 00126AF0 0000C9DC */  ld         $t1, 0x0($a2)
    /* 27A74 00126AF4 89432871 */  pcpyld     $t0, $t1, $t0
    /* 27A78 00126AF8 0000B805 */  mtsab      $t5, 0x0
    /* 27A7C 00126AFC E8460871 */  qfsrv      $t0, $t0, $t0
    /* 27A80 00126B00 884E0870 */  pextlb     $t1, $zero, $t0
    /* 27A84 00126B04 2128AC00 */  addu       $a1, $a1, $t4
    /* 27A88 00126B08 00806B35 */  ori        $t3, $t3, 0x8000
    /* 27A8C 00126B0C 00001807 */  mtsab      $t8, 0x0
    /* 27A90 00126B10 E8560870 */  qfsrv      $t2, $zero, $t0
    /* 27A94 00126B14 88460A70 */  pextlb     $t0, $zero, $t2
    /* 27A98 00126B18 1600E010 */  beqz       $a3, .L00126B74
    /* 27A9C 00126B1C 08792871 */   paddh     $t7, $t1, $t0
.align 2
  .L00126B20:
    /* 27AA0 00126B20 2130CC00 */  addu       $a2, $a2, $t4
    /* 27AA4 00126B24 0000A8DC */  ld         $t0, 0x0($a1)
    /* 27AA8 00126B28 0000C9DC */  ld         $t1, 0x0($a2)
    /* 27AAC 00126B2C 89432871 */  pcpyld     $t0, $t1, $t0
    /* 27AB0 00126B30 0000B805 */  mtsab      $t5, 0x0
    /* 27AB4 00126B34 E8460871 */  qfsrv      $t0, $t0, $t0
    /* 27AB8 00126B38 884E0870 */  pextlb     $t1, $zero, $t0
    /* 27ABC 00126B3C FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 27AC0 00126B40 2128AC00 */  addu       $a1, $a1, $t4
    /* 27AC4 00126B44 00001807 */  mtsab      $t8, 0x0
    /* 27AC8 00126B48 E8560870 */  qfsrv      $t2, $zero, $t0
    /* 27ACC 00126B4C 88460A70 */  pextlb     $t0, $zero, $t2
    /* 27AD0 00126B50 08512871 */  paddh      $t2, $t1, $t0
    /* 27AD4 00126B54 08494F71 */  paddh      $t1, $t2, $t7
    /* 27AD8 00126B58 A97C4071 */  por        $t7, $t2, $zero
    /* 27ADC 00126B5C 08513971 */  paddh      $t2, $t1, $t9
    /* 27AE0 00126B60 40400C00 */  sll        $t0, $t4, 1
    /* 27AE4 00126B64 B6500A70 */  psrlh      $t2, $t2, 2
    /* 27AE8 00126B68 0000CA7D */  sq         $t2, 0x0($t6)
    /* 27AEC 00126B6C ECFFE01C */  bgtz       $a3, .L00126B20
    /* 27AF0 00126B70 2170C801 */   addu      $t6, $t6, $t0
.align 2
  .L00126B74:
    /* 27AF4 00126B74 F7530B70 */  psrah      $t2, $t3, 15
    /* 27AF8 00126B78 4001A524 */  addiu      $a1, $a1, 0x140
    /* 27AFC 00126B7C 0C00878C */  lw         $a3, 0xC($a0)
    /* 27B00 00126B80 4001C624 */  addiu      $a2, $a2, 0x140
    /* 27B04 00126B84 24504701 */  and        $t2, $t2, $a3
    /* 27B08 00126B88 E5FF4015 */  bnez       $t2, .L00126B20
    /* 27B0C 00126B8C FF7F6B31 */   andi      $t3, $t3, 0x7FFF
    /* 27B10 00126B90 1400858C */  lw         $a1, 0x14($a0)
    /* 27B14 00126B94 1800868C */  lw         $a2, 0x18($a0)
    /* 27B18 00126B98 00008E8C */  lw         $t6, 0x0($a0)
    /* 27B1C 00126B9C 4000A524 */  addiu      $a1, $a1, 0x40
    /* 27B20 00126BA0 4000C624 */  addiu      $a2, $a2, 0x40
    /* 27B24 00126BA4 8000CE25 */  addiu      $t6, $t6, 0x80
    /* 27B28 00126BA8 01006A31 */  andi       $t2, $t3, 0x1
    /* 27B2C 00126BAC CEFF4015 */  bnez       $t2, .L00126AE8
    /* 27B30 00126BB0 FEFF6B31 */   andi      $t3, $t3, 0xFFFE
    /* 27B34 00126BB4 0800E003 */  jr         $ra
    /* 27B38 00126BB8 00000000 */   nop
endlabel func_00126AC0
    /* 27B3C 00126BBC 00000000 */  nop
