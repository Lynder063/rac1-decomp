.align 3
nonmatching func_0011CCE0, 0x100

glabel func_0011CCE0
    /* 1DC60 0011CCE0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1DC64 0011CCE4 3000B2FF */  sd         $s2, 0x30($sp)
    /* 1DC68 0011CCE8 1300123C */  lui        $s2, %hi(D_0012FDB0)
    /* 1DC6C 0011CCEC 4000BFFF */  sd         $ra, 0x40($sp)
    /* 1DC70 0011CCF0 B0FD428E */  lw         $v0, %lo(D_0012FDB0)($s2)
    /* 1DC74 0011CCF4 2000B1FF */  sd         $s1, 0x20($sp)
    /* 1DC78 0011CCF8 32004104 */  bgez       $v0, .L0011CDC4
    /* 1DC7C 0011CCFC 1000B0FF */   sd        $s0, 0x10($sp)
    /* 1DC80 0011CD00 1600113C */  lui        $s1, %hi(D_00158500)
    /* 1DC84 0011CD04 00853026 */  addiu      $s0, $s1, %lo(D_00158500)
.align 2
  .L0011CD08:
    /* 1DC88 0011CD08 0080053C */  lui        $a1, (0x80000006 >> 16)
    /* 1DC8C 0011CD0C 2D200002 */  daddu      $a0, $s0, $zero
    /* 1DC90 0011CD10 0600A534 */  ori        $a1, $a1, (0x80000006 & 0xFFFF)
    /* 1DC94 0011CD14 BE6C040C */  jal        func_0011B2F8
    /* 1DC98 0011CD18 2D300000 */   daddu     $a2, $zero, $zero
    /* 1DC9C 0011CD1C 03004304 */  bgezl      $v0, .L0011CD2C
    /* 1DCA0 0011CD20 2400028E */   lw        $v0, 0x24($s0)
    /* 1DCA4 0011CD24 28000010 */  b          .L0011CDC8
    /* 1DCA8 0011CD28 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0011CD2C:
    /* 1DCAC 0011CD2C 19004010 */  beqz       $v0, .L0011CD94
    /* 1DCB0 0011CD30 2D200002 */   daddu     $a0, $s0, $zero
    /* 1DCB4 0011CD34 1600113C */  lui        $s1, %hi(D_00158300)
    /* 1DCB8 0011CD38 B0FD40AE */  sw         $zero, %lo(D_0012FDB0)($s2)
    /* 1DCBC 0011CD3C 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1DCC0 0011CD40 FF000524 */  addiu      $a1, $zero, 0xFF
    /* 1DCC4 0011CD44 2D300000 */  daddu      $a2, $zero, $zero
    /* 1DCC8 0011CD48 2D380000 */  daddu      $a3, $zero, $zero
    /* 1DCCC 0011CD4C 2D400000 */  daddu      $t0, $zero, $zero
    /* 1DCD0 0011CD50 00832926 */  addiu      $t1, $s1, %lo(D_00158300)
    /* 1DCD4 0011CD54 04000A24 */  addiu      $t2, $zero, 0x4
    /* 1DCD8 0011CD58 326D040C */  jal        func_0011B4C8
    /* 1DCDC 0011CD5C 2D580000 */   daddu     $t3, $zero, $zero
    /* 1DCE0 0011CD60 04004104 */  bgez       $v0, .L0011CD74
    /* 1DCE4 0011CD64 1600033C */   lui       $v1, %hi(D_00158528)
    /* 1DCE8 0011CD68 FEFF023C */  lui        $v0, (0xFFFEFFFF >> 16)
    /* 1DCEC 0011CD6C 16000010 */  b          .L0011CDC8
    /* 1DCF0 0011CD70 FFFF4234 */   ori       $v0, $v0, (0xFFFEFFFF & 0xFFFF)
.align 2
  .L0011CD74:
    /* 1DCF4 0011CD74 00832726 */  addiu      $a3, $s1, %lo(D_00158300)
    /* 1DCF8 0011CD78 28856624 */  addiu      $a2, $v1, %lo(D_00158528)
    /* 1DCFC 0011CD7C 0300E488 */  lwl        $a0, 0x3($a3)
    /* 1DD00 0011CD80 0000E498 */  lwr        $a0, 0x0($a3)
    /* 1DD04 0011CD84 0300C4A8 */  swl        $a0, 0x3($a2)
    /* 1DD08 0011CD88 0000C4B8 */  swr        $a0, 0x0($a2)
    /* 1DD0C 0011CD8C 0E000010 */  b          .L0011CDC8
    /* 1DD10 0011CD90 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011CD94:
    /* 1DD14 0011CD94 1000023C */  lui        $v0, %hi(D_FFFFF)
    /* 1DD18 0011CD98 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1DD1C 0011CD9C 00000000 */  nop
.align 2
  .L0011CDA0:
    /* 1DD20 0011CDA0 FFFF4224 */  addiu      $v0, $v0, %lo(D_FFFFF)
    /* 1DD24 0011CDA4 00000000 */  nop
    /* 1DD28 0011CDA8 00000000 */  nop
    /* 1DD2C 0011CDAC 00000000 */  nop
    /* 1DD30 0011CDB0 00000000 */  nop
    /* 1DD34 0011CDB4 FAFF4314 */  bne        $v0, $v1, .L0011CDA0
    /* 1DD38 0011CDB8 00000000 */   nop
    /* 1DD3C 0011CDBC D2FF0010 */  b          .L0011CD08
    /* 1DD40 0011CDC0 00853026 */   addiu     $s0, $s1, %lo(D_00158500)
.align 2
  .L0011CDC4:
    /* 1DD44 0011CDC4 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0011CDC8:
    /* 1DD48 0011CDC8 4000BFDF */  ld         $ra, 0x40($sp)
    /* 1DD4C 0011CDCC 3000B2DF */  ld         $s2, 0x30($sp)
    /* 1DD50 0011CDD0 2000B1DF */  ld         $s1, 0x20($sp)
    /* 1DD54 0011CDD4 1000B0DF */  ld         $s0, 0x10($sp)
    /* 1DD58 0011CDD8 0800E003 */  jr         $ra
    /* 1DD5C 0011CDDC 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0011CCE0
