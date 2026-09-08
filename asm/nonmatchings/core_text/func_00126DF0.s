.align 3
/* Handwritten function */
nonmatching func_00126DF0, 0xE4

glabel func_00126DF0
    /* 27D70 00126DF0 E9CC0070 */  pnor       $t9, $zero, $zero
    /* 27D74 00126DF4 F6CB1970 */  psrlh      $t9, $t9, 15
    /* 27D78 00126DF8 1400858C */  lw         $a1, 0x14($a0)
    /* 27D7C 00126DFC 1800868C */  lw         $a2, 0x18($a0)
    /* 27D80 00126E00 00008E8C */  lw         $t6, 0x0($a0)
    /* 27D84 00126E04 04008D8C */  lw         $t5, 0x4($a0)
    /* 27D88 00126E08 10008C8C */  lw         $t4, 0x10($a0)
    /* 27D8C 00126E0C 01000B24 */  addiu      $t3, $zero, 0x1
    /* 27D90 00126E10 40C00C00 */  sll        $t8, $t4, 1
    /* 27D94 00126E14 0000B805 */  mtsab      $t5, 0x0
.align 2
  .L00126E18:
    /* 27D98 00126E18 0800878C */  lw         $a3, 0x8($a0)
    /* 27D9C 00126E1C 0000A8DC */  ld         $t0, 0x0($a1)
    /* 27DA0 00126E20 0000C9DC */  ld         $t1, 0x0($a2)
    /* 27DA4 00126E24 89432871 */  pcpyld     $t0, $t1, $t0
    /* 27DA8 00126E28 E8460871 */  qfsrv      $t0, $t0, $t0
    /* 27DAC 00126E2C 00806B35 */  ori        $t3, $t3, 0x8000
    /* 27DB0 00126E30 1600E010 */  beqz       $a3, .L00126E8C
    /* 27DB4 00126E34 887E0870 */   pextlb    $t7, $zero, $t0
.align 2
  .L00126E38:
    /* 27DB8 00126E38 2128AC00 */  addu       $a1, $a1, $t4
    /* 27DBC 00126E3C 2130CC00 */  addu       $a2, $a2, $t4
    /* 27DC0 00126E40 0000A8DC */  ld         $t0, 0x0($a1)
    /* 27DC4 00126E44 0000C9DC */  ld         $t1, 0x0($a2)
    /* 27DC8 00126E48 89432871 */  pcpyld     $t0, $t1, $t0
    /* 27DCC 00126E4C E8460871 */  qfsrv      $t0, $t0, $t0
    /* 27DD0 00126E50 88560870 */  pextlb     $t2, $zero, $t0
    /* 27DD4 00126E54 FFFFE720 */  addi       $a3, $a3, -0x1 /* handwritten instruction */
    /* 27DD8 00126E58 08494F71 */  paddh      $t1, $t2, $t7
    /* 27DDC 00126E5C A97C4071 */  por        $t7, $t2, $zero
    /* 27DE0 00126E60 08513971 */  paddh      $t2, $t1, $t9
    /* 27DE4 00126E64 76500A70 */  psrlh      $t2, $t2, 1
    /* 27DE8 00126E68 0000C879 */  lq         $t0, 0x0($t6)
    /* 27DEC 00126E6C 08514871 */  paddh      $t2, $t2, $t0
    /* 27DF0 00126E70 88494071 */  pcgth      $t1, $t2, $zero
    /* 27DF4 00126E74 F64B0970 */  psrlh      $t1, $t1, 15
    /* 27DF8 00126E78 08514971 */  paddh      $t2, $t2, $t1
    /* 27DFC 00126E7C 76500A70 */  psrlh      $t2, $t2, 1
    /* 27E00 00126E80 0000CA7D */  sq         $t2, 0x0($t6)
    /* 27E04 00126E84 ECFFE01C */  bgtz       $a3, .L00126E38
    /* 27E08 00126E88 2170D801 */   addu      $t6, $t6, $t8
.align 2
  .L00126E8C:
    /* 27E0C 00126E8C F7530B70 */  psrah      $t2, $t3, 15
    /* 27E10 00126E90 4001A524 */  addiu      $a1, $a1, 0x140
    /* 27E14 00126E94 0C00878C */  lw         $a3, 0xC($a0)
    /* 27E18 00126E98 4001C624 */  addiu      $a2, $a2, 0x140
    /* 27E1C 00126E9C 24504701 */  and        $t2, $t2, $a3
    /* 27E20 00126EA0 E5FF4015 */  bnez       $t2, .L00126E38
    /* 27E24 00126EA4 FF7F6B31 */   andi      $t3, $t3, 0x7FFF
    /* 27E28 00126EA8 1400858C */  lw         $a1, 0x14($a0)
    /* 27E2C 00126EAC 1800868C */  lw         $a2, 0x18($a0)
    /* 27E30 00126EB0 00008E8C */  lw         $t6, 0x0($a0)
    /* 27E34 00126EB4 4000A524 */  addiu      $a1, $a1, 0x40
    /* 27E38 00126EB8 4000C624 */  addiu      $a2, $a2, 0x40
    /* 27E3C 00126EBC 8000CE25 */  addiu      $t6, $t6, 0x80
    /* 27E40 00126EC0 01006A31 */  andi       $t2, $t3, 0x1
    /* 27E44 00126EC4 D4FF4015 */  bnez       $t2, .L00126E18
    /* 27E48 00126EC8 FEFF6B31 */   andi      $t3, $t3, 0xFFFE
    /* 27E4C 00126ECC 0800E003 */  jr         $ra
    /* 27E50 00126ED0 00000000 */   nop
endlabel func_00126DF0
    /* 27E54 00126ED4 00000000 */  nop
