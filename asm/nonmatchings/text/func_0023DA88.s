.align 3
nonmatching func_0023DA88, 0x154

glabel func_0023DA88
    /* 13EA08 0023DA88 2D488000 */  daddu      $t1, $a0, $zero
    /* 13EA0C 0023DA8C 2D58A000 */  daddu      $t3, $a1, $zero
    /* 13EA10 0023DA90 5C00238D */  lw         $v1, 0x5C($t1)
    /* 13EA14 0023DA94 01000E24 */  addiu      $t6, $zero, 0x1
    /* 13EA18 0023DA98 5800268D */  lw         $a2, 0x58($t1)
    /* 13EA1C 0023DA9C 5400228D */  lw         $v0, 0x54($t1)
    /* 13EA20 0023DAA0 23186600 */  subu       $v1, $v1, $a2
    /* 13EA24 0023DAA4 21186200 */  addu       $v1, $v1, $v0
    /* 13EA28 0023DAA8 01004050 */  beql       $v0, $zero, .L0023DAB0
    /* 13EA2C 0023DAAC CD010000 */   break     0, 7
.align 2
  .L0023DAB0:
    /* 13EA30 0023DAB0 1A006200 */  div        $zero, $v1, $v0
    /* 13EA34 0023DAB4 0800248D */  lw         $a0, 0x8($t1)
    /* 13EA38 0023DAB8 C0420400 */  sll        $t0, $a0, 11
    /* 13EA3C 0023DABC 10280000 */  mfhi       $a1
    /* 13EA40 0023DAC0 4400C018 */  blez       $a2, .L0023DBD4
    /* 13EA44 0023DAC4 2D50A000 */   daddu     $t2, $a1, $zero
    /* 13EA48 0023DAC8 18000224 */  addiu      $v0, $zero, 0x18
    /* 13EA4C 0023DACC 5000248D */  lw         $a0, 0x50($t1)
    /* 13EA50 0023DAD0 18104201 */  mult       $v0, $t2, $v0
    /* 13EA54 0023DAD4 21308200 */  addu       $a2, $a0, $v0
    /* 13EA58 0023DAD8 1400C38C */  lw         $v1, 0x14($a2)
    /* 13EA5C 0023DADC 3D006010 */  beqz       $v1, .L0023DBD4
    /* 13EA60 0023DAE0 00000000 */   nop
    /* 13EA64 0023DAE4 1400678D */  lw         $a3, 0x14($t3)
    /* 13EA68 0023DAE8 3A00E010 */  beqz       $a3, .L0023DBD4
    /* 13EA6C 0023DAEC 2D680000 */   daddu     $t5, $zero, $zero
    /* 13EA70 0023DAF0 FFFF0C24 */  addiu      $t4, $zero, -0x1
    /* 13EA74 0023DAF4 18000F24 */  addiu      $t7, $zero, 0x18
.align 2
  .L0023DAF8:
    /* 13EA78 0023DAF8 1000C48C */  lw         $a0, 0x10($a2)
    /* 13EA7C 0023DAFC 01000051 */  beql       $t0, $zero, .L0023DB04
    /* 13EA80 0023DB00 CD010000 */   break     0, 7
.align 2
  .L0023DB04:
    /* 13EA84 0023DB04 1000658D */  lw         $a1, 0x10($t3)
    /* 13EA88 0023DB08 21108800 */  addu       $v0, $a0, $t0
    /* 13EA8C 0023DB0C 23104500 */  subu       $v0, $v0, $a1
    /* 13EA90 0023DB10 1A004800 */  div        $zero, $v0, $t0
    /* 13EA94 0023DB14 10180000 */  mfhi       $v1
    /* 13EA98 0023DB18 2A186700 */  slt        $v1, $v1, $a3
    /* 13EA9C 0023DB1C 1B006010 */  beqz       $v1, .L0023DB8C
    /* 13EAA0 0023DB20 2110A700 */   addu      $v0, $a1, $a3
    /* 13EAA4 0023DB24 01000D51 */  beql       $t0, $t5, .L0023DB2C
    /* 13EAA8 0023DB28 CD010000 */   break     0, 7
.align 2
  .L0023DB2C:
    /* 13EAAC 0023DB2C 1400C58C */  lw         $a1, 0x14($a2)
    /* 13EAB0 0023DB30 23104400 */  subu       $v0, $v0, $a0
    /* 13EAB4 0023DB34 2A18A200 */  slt        $v1, $a1, $v0
    /* 13EAB8 0023DB38 0B10A300 */  movn       $v0, $a1, $v1
    /* 13EABC 0023DB3C 21208200 */  addu       $a0, $a0, $v0
    /* 13EAC0 0023DB40 2328A200 */  subu       $a1, $a1, $v0
    /* 13EAC4 0023DB44 1A008800 */  div        $zero, $a0, $t0
    /* 13EAC8 0023DB48 1400C5AC */  sw         $a1, 0x14($a2)
    /* 13EACC 0023DB4C 10180000 */  mfhi       $v1
    /* 13EAD0 0023DB50 0F00A014 */  bnez       $a1, .L0023DB90
    /* 13EAD4 0023DB54 1000C3AC */   sw        $v1, 0x10($a2)
    /* 13EAD8 0023DB58 0000C2DC */  ld         $v0, 0x0($a2)
    /* 13EADC 0023DB5C 06004204 */  bltzl      $v0, .L0023DB78
    /* 13EAE0 0023DB60 5800228D */   lw        $v0, 0x58($t1)
    /* 13EAE4 0023DB64 1400C0AC */  sw         $zero, 0x14($a2)
    /* 13EAE8 0023DB68 0000CCFC */  sd         $t4, 0x0($a2)
    /* 13EAEC 0023DB6C 0800CCFC */  sd         $t4, 0x8($a2)
    /* 13EAF0 0023DB70 1000C0AC */  sw         $zero, 0x10($a2)
    /* 13EAF4 0023DB74 5800228D */  lw         $v0, 0x58($t1)
.align 2
  .L0023DB78:
    /* 13EAF8 0023DB78 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 13EAFC 0023DB7C 2A188201 */  slt        $v1, $t4, $v0
    /* 13EB00 0023DB80 0A100300 */  movz       $v0, $zero, $v1
    /* 13EB04 0023DB84 02000010 */  b          .L0023DB90
    /* 13EB08 0023DB88 580022AD */   sw        $v0, 0x58($t1)
.align 2
  .L0023DB8C:
    /* 13EB0C 0023DB8C 2D700000 */  daddu      $t6, $zero, $zero
.align 2
  .L0023DB90:
    /* 13EB10 0023DB90 5400238D */  lw         $v1, 0x54($t1)
    /* 13EB14 0023DB94 01004225 */  addiu      $v0, $t2, 0x1
    /* 13EB18 0023DB98 1A004300 */  div        $zero, $v0, $v1
    /* 13EB1C 0023DB9C 01006D50 */  beql       $v1, $t5, .L0023DBA4
    /* 13EB20 0023DBA0 CD010000 */   break     0, 7
.align 2
  .L0023DBA4:
    /* 13EB24 0023DBA4 10200000 */  mfhi       $a0
    /* 13EB28 0023DBA8 0A00C011 */  beqz       $t6, .L0023DBD4
    /* 13EB2C 0023DBAC 2D508000 */   daddu     $t2, $a0, $zero
    /* 13EB30 0023DBB0 18104F01 */  mult       $v0, $t2, $t7
    /* 13EB34 0023DBB4 5000238D */  lw         $v1, 0x50($t1)
    /* 13EB38 0023DBB8 21306200 */  addu       $a2, $v1, $v0
    /* 13EB3C 0023DBBC 1400C48C */  lw         $a0, 0x14($a2)
    /* 13EB40 0023DBC0 04008010 */  beqz       $a0, .L0023DBD4
    /* 13EB44 0023DBC4 00000000 */   nop
    /* 13EB48 0023DBC8 1400628D */  lw         $v0, 0x14($t3)
    /* 13EB4C 0023DBCC CAFF4014 */  bnez       $v0, .L0023DAF8
    /* 13EB50 0023DBD0 2D384000 */   daddu     $a3, $v0, $zero
.align 2
  .L0023DBD4:
    /* 13EB54 0023DBD4 0800E003 */  jr         $ra
    /* 13EB58 0023DBD8 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0023DA88
    /* 13EB5C 0023DBDC 00000000 */  nop
