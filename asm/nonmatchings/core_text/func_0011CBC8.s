.align 3
nonmatching func_0011CBC8, 0x70

glabel func_0011CBC8
    /* 1DB48 0011CBC8 1300033C */  lui        $3, %hi(D_0012FDAC)
    /* 1DB4C 0011CBCC D0FFBD27 */  addiu      $29, $29, -0x30
    /* 1DB50 0011CBD0 ACFD628C */  lw         $2, %lo(D_0012FDAC)($3)
    /* 1DB54 0011CBD4 2D288000 */  daddu      $5, $4, $0
    /* 1DB58 0011CBD8 2000BFFF */  sd         $31, 0x20($29)
    /* 1DB5C 0011CBDC 11004004 */  bltz       $2, .L0011CC24
    /* 1DB60 0011CBE0 1000B0FF */   sd        $16, 0x10($29)
    /* 1DB64 0011CBE4 1600073C */  lui        $7, %hi(D_001581C0)
    /* 1DB68 0011CBE8 1600043C */  lui        $4, %hi(D_00158140)
    /* 1DB6C 0011CBEC C081E5AC */  sw         $5, %lo(D_001581C0)($7)
    /* 1DB70 0011CBF0 1600103C */  lui        $16, %hi(D_00158180)
    /* 1DB74 0011CBF4 40818424 */  addiu      $4, $4, %lo(D_00158140)
    /* 1DB78 0011CBF8 C081E724 */  addiu      $7, $7, %lo(D_001581C0)
    /* 1DB7C 0011CBFC 0000A0AF */  sw         $0, 0x0($29)
    /* 1DB80 0011CC00 01000524 */  addiu      $5, $0, 0x1
    /* 1DB84 0011CC04 2D300000 */  daddu      $6, $0, $0
    /* 1DB88 0011CC08 04000824 */  addiu      $8, $0, 0x4
    /* 1DB8C 0011CC0C 80810926 */  addiu      $9, $16, %lo(D_00158180)
    /* 1DB90 0011CC10 04000A24 */  addiu      $10, $0, 0x4
    /* 1DB94 0011CC14 326D040C */  jal        func_0011B4C8
    /* 1DB98 0011CC18 2D580000 */   daddu     $11, $0, $0
    /* 1DB9C 0011CC1C 02004104 */  bgez       $2, .L0011CC28
    /* 1DBA0 0011CC20 8081028E */   lw        $2, %lo(D_00158180)($16)
.align 2
  .L0011CC24:
    /* 1DBA4 0011CC24 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0011CC28:
    /* 1DBA8 0011CC28 2000BFDF */  ld         $31, 0x20($29)
    /* 1DBAC 0011CC2C 1000B0DF */  ld         $16, 0x10($29)
    /* 1DBB0 0011CC30 0800E003 */  jr         $31
    /* 1DBB4 0011CC34 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0011CBC8
