.align 3
nonmatching func_0012CBA0, 0x8C

glabel func_0012CBA0
    /* 2DB20 0012CBA0 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2DB24 0012CBA4 03000524 */  addiu      $5, $0, 0x3
    /* 2DB28 0012CBA8 0000B0FF */  sd         $16, 0x0($29)
    /* 2DB2C 0012CBAC 1000BFFF */  sd         $31, 0x10($29)
    /* 2DB30 0012CBB0 96A2040C */  jal        func_00128A58
    /* 2DB34 0012CBB4 2D808000 */   daddu     $16, $4, $0
    /* 2DB38 0012CBB8 2D200002 */  daddu      $4, $16, $0
    /* 2DB3C 0012CBBC 96A2040C */  jal        func_00128A58
    /* 2DB40 0012CBC0 01000524 */   addiu     $5, $0, 0x1
    /* 2DB44 0012CBC4 0A004010 */  beqz       $2, .L0012CBF0
    /* 2DB48 0012CBC8 2D200002 */   daddu     $4, $16, $0
    /* 2DB4C 0012CBCC 96A2040C */  jal        func_00128A58
    /* 2DB50 0012CBD0 08000524 */   addiu     $5, $0, 0x8
    /* 2DB54 0012CBD4 2D200002 */  daddu      $4, $16, $0
    /* 2DB58 0012CBD8 96A2040C */  jal        func_00128A58
    /* 2DB5C 0012CBDC 08000524 */   addiu     $5, $0, 0x8
    /* 2DB60 0012CBE0 2D200002 */  daddu      $4, $16, $0
    /* 2DB64 0012CBE4 96A2040C */  jal        func_00128A58
    /* 2DB68 0012CBE8 08000524 */   addiu     $5, $0, 0x8
    /* 2DB6C 0012CBEC 440102AE */  sw         $2, 0x144($16)
.align 2
  .L0012CBF0:
    /* 2DB70 0012CBF0 2D200002 */  daddu      $4, $16, $0
    /* 2DB74 0012CBF4 96A2040C */  jal        func_00128A58
    /* 2DB78 0012CBF8 0E000524 */   addiu     $5, $0, 0xE
    /* 2DB7C 0012CBFC 480102AE */  sw         $2, 0x148($16)
    /* 2DB80 0012CC00 2D200002 */  daddu      $4, $16, $0
    /* 2DB84 0012CC04 96A2040C */  jal        func_00128A58
    /* 2DB88 0012CC08 01000524 */   addiu     $5, $0, 0x1
    /* 2DB8C 0012CC0C 2D200002 */  daddu      $4, $16, $0
    /* 2DB90 0012CC10 96A2040C */  jal        func_00128A58
    /* 2DB94 0012CC14 0E000524 */   addiu     $5, $0, 0xE
    /* 2DB98 0012CC18 4C0102AE */  sw         $2, 0x14C($16)
    /* 2DB9C 0012CC1C 1000BFDF */  ld         $31, 0x10($29)
    /* 2DBA0 0012CC20 0000B0DF */  ld         $16, 0x0($29)
    /* 2DBA4 0012CC24 0800E003 */  jr         $31
    /* 2DBA8 0012CC28 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012CBA0
    /* 2DBAC 0012CC2C 00000000 */  nop
