.align 3
nonmatching func_0021CDA0, 0xBC

glabel func_0021CDA0
    /* 11DD20 0021CDA0 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 11DD24 0021CDA4 1500023C */  lui        $2, %hi(D_001517D0)
    /* 11DD28 0021CDA8 1000BF7F */  sq         $31, 0x10($29)
    /* 11DD2C 0021CDAC 2D384000 */  daddu      $7, $2, $0
    /* 11DD30 0021CDB0 0000B07F */  sq         $16, 0x0($29)
    /* 11DD34 0021CDB4 D0174224 */  addiu      $2, $2, %lo(D_001517D0)
    /* 11DD38 0021CDB8 08004384 */  lh         $3, 0x8($2)
    /* 11DD3C 0021CDBC 10006014 */  bnez       $3, .L0021CE00
    /* 11DD40 0021CDC0 D017E224 */   addiu     $2, $7, %lo(D_001517D0)
    /* 11DD44 0021CDC4 1A00023C */  lui        $2, %hi(D_001A01F0)
    /* 11DD48 0021CDC8 FFFF0624 */  addiu      $6, $0, -0x1
    /* 11DD4C 0021CDCC F0014524 */  addiu      $5, $2, %lo(D_001A01F0)
    /* 11DD50 0021CDD0 A002A38C */  lw         $3, 0x2A0($5)
    /* 11DD54 0021CDD4 09006610 */  beq        $3, $6, .L0021CDFC
    /* 11DD58 0021CDD8 8C02A224 */   addiu     $2, $5, 0x28C
    /* 11DD5C 0021CDDC 80180300 */  sll        $3, $3, 2
    /* 11DD60 0021CDE0 21186200 */  addu       $3, $3, $2
    /* 11DD64 0021CDE4 1D00043C */  lui        $4, %hi(D_001D603B)
    /* 11DD68 0021CDE8 0000628C */  lw         $2, 0x0($3)
    /* 11DD6C 0021CDEC 3B6080A0 */  sb         $0, %lo(D_001D603B)($4)
    /* 11DD70 0021CDF0 00104238 */  xori       $2, $2, 0x1000
    /* 11DD74 0021CDF4 000062AC */  sw         $2, 0x0($3)
    /* 11DD78 0021CDF8 A002A6AC */  sw         $6, 0x2A0($5)
.align 2
  .L0021CDFC:
    /* 11DD7C 0021CDFC D017E224 */  addiu      $2, $7, %lo(D_001517D0)
.align 2
  .L0021CE00:
    /* 11DD80 0021CE00 08004384 */  lh         $3, 0x8($2)
    /* 11DD84 0021CE04 10006010 */  beqz       $3, .L0021CE48
    /* 11DD88 0021CE08 1D00023C */   lui       $2, %hi(D_001D5F70)
    /* 11DD8C 0021CE0C 705F5024 */  addiu      $16, $2, %lo(D_001D5F70)
    /* 11DD90 0021CE10 CB000392 */  lbu        $3, 0xCB($16)
    /* 11DD94 0021CE14 0D006010 */  beqz       $3, .L0021CE4C
    /* 11DD98 0021CE18 1000BF7B */   lq        $31, 0x10($29)
    /* 11DD9C 0021CE1C 625D080C */  jal        func_00217588
    /* 11DDA0 0021CE20 00000000 */   nop
    /* 11DDA4 0021CE24 CB0000A2 */  sb         $0, 0xCB($16)
    /* 11DDA8 0021CE28 1A00023C */  lui        $2, %hi(D_001A01F0)
    /* 11DDAC 0021CE2C F0014224 */  addiu      $2, $2, %lo(D_001A01F0)
    /* 11DDB0 0021CE30 FFFF0424 */  addiu      $4, $0, -0x1
    /* 11DDB4 0021CE34 A002438C */  lw         $3, 0x2A0($2)
    /* 11DDB8 0021CE38 80180300 */  sll        $3, $3, 2
    /* 11DDBC 0021CE3C 21184300 */  addu       $3, $2, $3
    /* 11DDC0 0021CE40 8C0264AC */  sw         $4, 0x28C($3)
    /* 11DDC4 0021CE44 A00244AC */  sw         $4, 0x2A0($2)
.align 2
  .L0021CE48:
    /* 11DDC8 0021CE48 1000BF7B */  lq         $31, 0x10($29)
.align 2
  .L0021CE4C:
    /* 11DDCC 0021CE4C 2D100000 */  daddu      $2, $0, $0
    /* 11DDD0 0021CE50 0000B07B */  lq         $16, 0x0($29)
    /* 11DDD4 0021CE54 0800E003 */  jr         $31
    /* 11DDD8 0021CE58 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0021CDA0
    /* 11DDDC 0021CE5C 00000000 */  nop
