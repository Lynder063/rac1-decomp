.align 3
nonmatching func_001ECB98, 0x74

glabel func_001ECB98
    /* EDB18 001ECB98 E0FFBD27 */  addiu      $29, $29, -0x20
    /* EDB1C 001ECB9C 1800023C */  lui        $2, %hi(D_001872B0)
    /* EDB20 001ECBA0 0000B07F */  sq         $16, 0x0($29)
    /* EDB24 001ECBA4 1000BF7F */  sq         $31, 0x10($29)
    /* EDB28 001ECBA8 B0725024 */  addiu      $16, $2, %lo(D_001872B0)
    /* EDB2C 001ECBAC 02000392 */  lbu        $3, 0x2($16)
    /* EDB30 001ECBB0 13006014 */  bnez       $3, .L001ECC00
    /* EDB34 001ECBB4 1000BF7B */   lq        $31, 0x10($29)
    /* EDB38 001ECBB8 C0000526 */  addiu      $5, $16, 0xC0
    /* EDB3C 001ECBBC 50000326 */  addiu      $3, $16, 0x50
    /* EDB40 001ECBC0 00006278 */  lq         $2, 0x0($3)
    /* EDB44 001ECBC4 0000A27C */  sq         $2, 0x0($5)
    /* EDB48 001ECBC8 03000492 */  lbu        $4, 0x3($16)
    /* EDB4C 001ECBCC 02000224 */  addiu      $2, $0, 0x2
    /* EDB50 001ECBD0 07008214 */  bne        $4, $2, .L001ECBF0
    /* EDB54 001ECBD4 60000426 */   addiu     $4, $16, 0x60
    /* EDB58 001ECBD8 2D20A000 */  daddu      $4, $5, $0
    /* EDB5C 001ECBDC 1400053C */  lui        $5, %hi(D_0013F590)
    /* EDB60 001ECBE0 2D308000 */  daddu      $6, $4, $0
    /* EDB64 001ECBE4 F6E6070C */  jal        func_001F9BD8
    /* EDB68 001ECBE8 90F5A524 */   addiu     $5, $5, %lo(D_0013F590)
    /* EDB6C 001ECBEC 60000426 */  addiu      $4, $16, 0x60
.align 2
  .L001ECBF0:
    /* EDB70 001ECBF0 D0000326 */  addiu      $3, $16, 0xD0
    /* EDB74 001ECBF4 00008278 */  lq         $2, 0x0($4)
    /* EDB78 001ECBF8 0000627C */  sq         $2, 0x0($3)
    /* EDB7C 001ECBFC 1000BF7B */  lq         $31, 0x10($29)
.align 2
  .L001ECC00:
    /* EDB80 001ECC00 0000B07B */  lq         $16, 0x0($29)
    /* EDB84 001ECC04 0800E003 */  jr         $31
    /* EDB88 001ECC08 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001ECB98
    /* EDB8C 001ECC0C 00000000 */  nop
