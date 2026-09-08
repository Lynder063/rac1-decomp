.align 3
nonmatching func_001F6F40, 0x94

glabel func_001F6F40
    /* F7EC0 001F6F40 A0FFBD27 */  addiu      $29, $29, -0x60
    /* F7EC4 001F6F44 3000B37F */  sq         $19, 0x30($29)
    /* F7EC8 001F6F48 2000B27F */  sq         $18, 0x20($29)
    /* F7ECC 001F6F4C 2D98A000 */  daddu      $19, $5, $0
    /* F7ED0 001F6F50 1000B17F */  sq         $17, 0x10($29)
    /* F7ED4 001F6F54 2D900001 */  daddu      $18, $8, $0
    /* F7ED8 001F6F58 0000B07F */  sq         $16, 0x0($29)
    /* F7EDC 001F6F5C 2D88E000 */  daddu      $17, $7, $0
    /* F7EE0 001F6F60 4000B47F */  sq         $20, 0x40($29)
    /* F7EE4 001F6F64 2D808000 */  daddu      $16, $4, $0
    /* F7EE8 001F6F68 5000BF7F */  sq         $31, 0x50($29)
    /* F7EEC 001F6F6C 2DA0C000 */  daddu      $20, $6, $0
    /* F7EF0 001F6F70 2D284002 */  daddu      $5, $18, $0
    /* F7EF4 001F6F74 88D9070C */  jal        func_001F6620
    /* F7EF8 001F6F78 2D202002 */   daddu     $4, $17, $0
    /* F7EFC 001F6F7C 43100200 */  sra        $2, $2, 1
    /* F7F00 001F6F80 02000424 */  addiu      $4, $0, 0x2
    /* F7F04 001F6F84 1AD2070C */  jal        func_001F4868
    /* F7F08 001F6F88 23800202 */   subu      $16, $16, $2
    /* F7F0C 001F6F8C 1E000A3C */  lui        $10, %hi(D_001DF770)
    /* F7F10 001F6F90 2D484000 */  daddu      $9, $2, $0
    /* F7F14 001F6F94 2D286002 */  daddu      $5, $19, $0
    /* F7F18 001F6F98 2D308002 */  daddu      $6, $20, $0
    /* F7F1C 001F6F9C 2D382002 */  daddu      $7, $17, $0
    /* F7F20 001F6FA0 2D404002 */  daddu      $8, $18, $0
    /* F7F24 001F6FA4 2D200002 */  daddu      $4, $16, $0
    /* F7F28 001F6FA8 9AD9070C */  jal        func_001F6668
    /* F7F2C 001F6FAC 70F74A25 */   addiu     $10, $10, %lo(D_001DF770)
    /* F7F30 001F6FB0 2D100002 */  daddu      $2, $16, $0
    /* F7F34 001F6FB4 5000BF7B */  lq         $31, 0x50($29)
    /* F7F38 001F6FB8 4000B47B */  lq         $20, 0x40($29)
    /* F7F3C 001F6FBC 3000B37B */  lq         $19, 0x30($29)
    /* F7F40 001F6FC0 2000B27B */  lq         $18, 0x20($29)
    /* F7F44 001F6FC4 1000B17B */  lq         $17, 0x10($29)
    /* F7F48 001F6FC8 0000B07B */  lq         $16, 0x0($29)
    /* F7F4C 001F6FCC 0800E003 */  jr         $31
    /* F7F50 001F6FD0 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_001F6F40
    /* F7F54 001F6FD4 00000000 */  nop
