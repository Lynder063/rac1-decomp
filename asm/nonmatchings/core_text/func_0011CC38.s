.align 3
nonmatching func_0011CC38, 0x78

glabel func_0011CC38
    /* 1DBB8 0011CC38 1300033C */  lui        $3, %hi(D_0012FDAC)
    /* 1DBBC 0011CC3C D0FFBD27 */  addiu      $29, $29, -0x30
    /* 1DBC0 0011CC40 ACFD628C */  lw         $2, %lo(D_0012FDAC)($3)
    /* 1DBC4 0011CC44 2D288000 */  daddu      $5, $4, $0
    /* 1DBC8 0011CC48 2000BFFF */  sd         $31, 0x20($29)
    /* 1DBCC 0011CC4C 03004104 */  bgez       $2, .L0011CC5C
    /* 1DBD0 0011CC50 1000B0FF */   sd        $16, 0x10($29)
    /* 1DBD4 0011CC54 12000010 */  b          .L0011CCA0
    /* 1DBD8 0011CC58 2D100000 */   daddu     $2, $0, $0
.align 2
  .L0011CC5C:
    /* 1DBDC 0011CC5C 1600073C */  lui        $7, %hi(D_001581C0)
    /* 1DBE0 0011CC60 1600043C */  lui        $4, %hi(D_00158140)
    /* 1DBE4 0011CC64 C081E5AC */  sw         $5, %lo(D_001581C0)($7)
    /* 1DBE8 0011CC68 1600103C */  lui        $16, %hi(D_00158180)
    /* 1DBEC 0011CC6C 40818424 */  addiu      $4, $4, %lo(D_00158140)
    /* 1DBF0 0011CC70 C081E724 */  addiu      $7, $7, %lo(D_001581C0)
    /* 1DBF4 0011CC74 0000A0AF */  sw         $0, 0x0($29)
    /* 1DBF8 0011CC78 02000524 */  addiu      $5, $0, 0x2
    /* 1DBFC 0011CC7C 2D300000 */  daddu      $6, $0, $0
    /* 1DC00 0011CC80 04000824 */  addiu      $8, $0, 0x4
    /* 1DC04 0011CC84 80810926 */  addiu      $9, $16, %lo(D_00158180)
    /* 1DC08 0011CC88 04000A24 */  addiu      $10, $0, 0x4
    /* 1DC0C 0011CC8C 326D040C */  jal        func_0011B4C8
    /* 1DC10 0011CC90 2D580000 */   daddu     $11, $0, $0
    /* 1DC14 0011CC94 02004104 */  bgez       $2, .L0011CCA0
    /* 1DC18 0011CC98 8081028E */   lw        $2, %lo(D_00158180)($16)
    /* 1DC1C 0011CC9C FFFF0224 */  addiu      $2, $0, -0x1
.align 2
  .L0011CCA0:
    /* 1DC20 0011CCA0 2000BFDF */  ld         $31, 0x20($29)
    /* 1DC24 0011CCA4 1000B0DF */  ld         $16, 0x10($29)
    /* 1DC28 0011CCA8 0800E003 */  jr         $31
    /* 1DC2C 0011CCAC 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0011CC38
