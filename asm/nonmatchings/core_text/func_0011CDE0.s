.align 3
nonmatching func_0011CDE0, 0x8C

glabel func_0011CDE0
    /* 1DD60 0011CDE0 B0FFBD27 */  addiu      $29, $29, -0x50
    /* 1DD64 0011CDE4 1300023C */  lui        $2, %hi(D_0012FCEC)
    /* 1DD68 0011CDE8 3000B3FF */  sd         $19, 0x30($29)
    /* 1DD6C 0011CDEC 1600033C */  lui        $3, %hi(D_00158528)
    /* 1DD70 0011CDF0 1000B1FF */  sd         $17, 0x10($29)
    /* 1DD74 0011CDF4 ECFC5324 */  addiu      $19, $2, %lo(D_0012FCEC)
    /* 1DD78 0011CDF8 2000B2FF */  sd         $18, 0x20($29)
    /* 1DD7C 0011CDFC 28857124 */  addiu      $17, $3, %lo(D_00158528)
    /* 1DD80 0011CE00 4000BFFF */  sd         $31, 0x40($29)
    /* 1DD84 0011CE04 2D900000 */  daddu      $18, $0, $0
    /* 1DD88 0011CE08 0000B0FF */  sd         $16, 0x0($29)
    /* 1DD8C 0011CE0C 2D202002 */  daddu      $4, $17, $0
    /* 1DD90 0011CE10 2D286002 */  daddu      $5, $19, $0
    /* 1DD94 0011CE14 6D54040C */  jal        func_001151B4
    /* 1DD98 0011CE18 04000624 */   addiu     $6, $0, 0x4
    /* 1DD9C 0011CE1C 0B004010 */  beqz       $2, .L0011CE4C
    /* 1DDA0 0011CE20 1300103C */   lui       $16, %hi(D_0012FDB4)
    /* 1DDA4 0011CE24 2D202002 */  daddu      $4, $17, $0
    /* 1DDA8 0011CE28 B4FD058E */  lw         $5, %lo(D_0012FDB4)($16)
    /* 1DDAC 0011CE2C 6D54040C */  jal        func_001151B4
    /* 1DDB0 0011CE30 04000624 */   addiu     $6, $0, 0x4
    /* 1DDB4 0011CE34 05004010 */  beqz       $2, .L0011CE4C
    /* 1DDB8 0011CE38 B4FD058E */   lw        $5, %lo(D_0012FDB4)($16)
    /* 1DDBC 0011CE3C 2D206002 */  daddu      $4, $19, $0
    /* 1DDC0 0011CE40 6D54040C */  jal        func_001151B4
    /* 1DDC4 0011CE44 04000624 */   addiu     $6, $0, 0x4
    /* 1DDC8 0011CE48 2B900200 */  sltu       $18, $0, $2
.align 2
  .L0011CE4C:
    /* 1DDCC 0011CE4C 2D104002 */  daddu      $2, $18, $0
    /* 1DDD0 0011CE50 4000BFDF */  ld         $31, 0x40($29)
    /* 1DDD4 0011CE54 3000B3DF */  ld         $19, 0x30($29)
    /* 1DDD8 0011CE58 2000B2DF */  ld         $18, 0x20($29)
    /* 1DDDC 0011CE5C 1000B1DF */  ld         $17, 0x10($29)
    /* 1DDE0 0011CE60 0000B0DF */  ld         $16, 0x0($29)
    /* 1DDE4 0011CE64 0800E003 */  jr         $31
    /* 1DDE8 0011CE68 5000BD27 */   addiu     $29, $29, 0x50
endlabel func_0011CDE0
    /* 1DDEC 0011CE6C 00000000 */  nop
