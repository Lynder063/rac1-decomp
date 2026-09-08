.align 3
nonmatching func_0011CCE0, 0x100

glabel func_0011CCE0
    /* 1DC60 0011CCE0 B0FFBD27 */  addiu      $29, $29, -0x50
    /* 1DC64 0011CCE4 3000B2FF */  sd         $18, 0x30($29)
    /* 1DC68 0011CCE8 1300123C */  lui        $18, %hi(D_0012FDB0)
    /* 1DC6C 0011CCEC 4000BFFF */  sd         $31, 0x40($29)
    /* 1DC70 0011CCF0 B0FD428E */  lw         $2, %lo(D_0012FDB0)($18)
    /* 1DC74 0011CCF4 2000B1FF */  sd         $17, 0x20($29)
    /* 1DC78 0011CCF8 32004104 */  bgez       $2, .L0011CDC4
    /* 1DC7C 0011CCFC 1000B0FF */   sd        $16, 0x10($29)
    /* 1DC80 0011CD00 1600113C */  lui        $17, %hi(D_00158500)
    /* 1DC84 0011CD04 00853026 */  addiu      $16, $17, %lo(D_00158500)
.align 2
  .L0011CD08:
    /* 1DC88 0011CD08 0080053C */  lui        $5, (0x80000006 >> 16)
    /* 1DC8C 0011CD0C 2D200002 */  daddu      $4, $16, $0
    /* 1DC90 0011CD10 0600A534 */  ori        $5, $5, (0x80000006 & 0xFFFF)
    /* 1DC94 0011CD14 BE6C040C */  jal        func_0011B2F8
    /* 1DC98 0011CD18 2D300000 */   daddu     $6, $0, $0
    /* 1DC9C 0011CD1C 03004304 */  bgezl      $2, .L0011CD2C
    /* 1DCA0 0011CD20 2400028E */   lw        $2, 0x24($16)
    /* 1DCA4 0011CD24 28000010 */  b          .L0011CDC8
    /* 1DCA8 0011CD28 FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0011CD2C:
    /* 1DCAC 0011CD2C 19004010 */  beqz       $2, .L0011CD94
    /* 1DCB0 0011CD30 2D200002 */   daddu     $4, $16, $0
    /* 1DCB4 0011CD34 1600113C */  lui        $17, %hi(D_00158300)
    /* 1DCB8 0011CD38 B0FD40AE */  sw         $0, %lo(D_0012FDB0)($18)
    /* 1DCBC 0011CD3C 0000A0AF */  sw         $0, 0x0($29)
    /* 1DCC0 0011CD40 FF000524 */  addiu      $5, $0, 0xFF
    /* 1DCC4 0011CD44 2D300000 */  daddu      $6, $0, $0
    /* 1DCC8 0011CD48 2D380000 */  daddu      $7, $0, $0
    /* 1DCCC 0011CD4C 2D400000 */  daddu      $8, $0, $0
    /* 1DCD0 0011CD50 00832926 */  addiu      $9, $17, %lo(D_00158300)
    /* 1DCD4 0011CD54 04000A24 */  addiu      $10, $0, 0x4
    /* 1DCD8 0011CD58 326D040C */  jal        func_0011B4C8
    /* 1DCDC 0011CD5C 2D580000 */   daddu     $11, $0, $0
    /* 1DCE0 0011CD60 04004104 */  bgez       $2, .L0011CD74
    /* 1DCE4 0011CD64 1600033C */   lui       $3, %hi(D_00158528)
    /* 1DCE8 0011CD68 FEFF023C */  lui        $2, (0xFFFEFFFF >> 16)
    /* 1DCEC 0011CD6C 16000010 */  b          .L0011CDC8
    /* 1DCF0 0011CD70 FFFF4234 */   ori       $2, $2, (0xFFFEFFFF & 0xFFFF)
.align 2
  .L0011CD74:
    /* 1DCF4 0011CD74 00832726 */  addiu      $7, $17, %lo(D_00158300)
    /* 1DCF8 0011CD78 28856624 */  addiu      $6, $3, %lo(D_00158528)
    /* 1DCFC 0011CD7C 0300E488 */  lwl        $4, 0x3($7)
    /* 1DD00 0011CD80 0000E498 */  lwr        $4, 0x0($7)
    /* 1DD04 0011CD84 0300C4A8 */  swl        $4, 0x3($6)
    /* 1DD08 0011CD88 0000C4B8 */  swr        $4, 0x0($6)
    /* 1DD0C 0011CD8C 0E000010 */  b          .L0011CDC8
    /* 1DD10 0011CD90 2D100000 */   daddu     $2, $0, $0
.align 2
  .L0011CD94:
    /* 1DD14 0011CD94 1000023C */  lui        $2, %hi(D_FFFFF)
    /* 1DD18 0011CD98 FFFF0324 */  addiu      $3, $0, -0x1
    /* 1DD1C 0011CD9C 00000000 */  nop
.align 2
  .L0011CDA0:
    /* 1DD20 0011CDA0 FFFF4224 */  addiu      $2, $2, %lo(D_FFFFF)
    /* 1DD24 0011CDA4 00000000 */  nop
    /* 1DD28 0011CDA8 00000000 */  nop
    /* 1DD2C 0011CDAC 00000000 */  nop
    /* 1DD30 0011CDB0 00000000 */  nop
    /* 1DD34 0011CDB4 FAFF4314 */  bne        $2, $3, .L0011CDA0
    /* 1DD38 0011CDB8 00000000 */   nop
    /* 1DD3C 0011CDBC D2FF0010 */  b          .L0011CD08
    /* 1DD40 0011CDC0 00853026 */   addiu     $16, $17, %lo(D_00158500)
.align 2
  .L0011CDC4:
    /* 1DD44 0011CDC4 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0011CDC8:
    /* 1DD48 0011CDC8 4000BFDF */  ld         $31, 0x40($29)
    /* 1DD4C 0011CDCC 3000B2DF */  ld         $18, 0x30($29)
    /* 1DD50 0011CDD0 2000B1DF */  ld         $17, 0x20($29)
    /* 1DD54 0011CDD4 1000B0DF */  ld         $16, 0x10($29)
    /* 1DD58 0011CDD8 0800E003 */  jr         $31
    /* 1DD5C 0011CDDC 5000BD27 */   addiu     $29, $29, 0x50
endlabel func_0011CCE0
