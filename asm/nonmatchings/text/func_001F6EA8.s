.align 3
nonmatching func_001F6EA8, 0x94

glabel func_001F6EA8
    /* F7E28 001F6EA8 A0FFBD27 */  addiu      $29, $29, -0x60
    /* F7E2C 001F6EAC 3000B37F */  sq         $19, 0x30($29)
    /* F7E30 001F6EB0 2000B27F */  sq         $18, 0x20($29)
    /* F7E34 001F6EB4 2D98A000 */  daddu      $19, $5, $0
    /* F7E38 001F6EB8 1000B17F */  sq         $17, 0x10($29)
    /* F7E3C 001F6EBC 2D900001 */  daddu      $18, $8, $0
    /* F7E40 001F6EC0 0000B07F */  sq         $16, 0x0($29)
    /* F7E44 001F6EC4 2D88E000 */  daddu      $17, $7, $0
    /* F7E48 001F6EC8 4000B47F */  sq         $20, 0x40($29)
    /* F7E4C 001F6ECC 2D808000 */  daddu      $16, $4, $0
    /* F7E50 001F6ED0 5000BF7F */  sq         $31, 0x50($29)
    /* F7E54 001F6ED4 2DA0C000 */  daddu      $20, $6, $0
    /* F7E58 001F6ED8 2D284002 */  daddu      $5, $18, $0
    /* F7E5C 001F6EDC 80D9070C */  jal        func_001F6600
    /* F7E60 001F6EE0 2D202002 */   daddu     $4, $17, $0
    /* F7E64 001F6EE4 43100200 */  sra        $2, $2, 1
    /* F7E68 001F6EE8 01000424 */  addiu      $4, $0, 0x1
    /* F7E6C 001F6EEC 1AD2070C */  jal        func_001F4868
    /* F7E70 001F6EF0 23800202 */   subu      $16, $16, $2
    /* F7E74 001F6EF4 1E000A3C */  lui        $10, %hi(D_001DF3D0)
    /* F7E78 001F6EF8 2D484000 */  daddu      $9, $2, $0
    /* F7E7C 001F6EFC 2D286002 */  daddu      $5, $19, $0
    /* F7E80 001F6F00 2D308002 */  daddu      $6, $20, $0
    /* F7E84 001F6F04 2D382002 */  daddu      $7, $17, $0
    /* F7E88 001F6F08 2D404002 */  daddu      $8, $18, $0
    /* F7E8C 001F6F0C 2D200002 */  daddu      $4, $16, $0
    /* F7E90 001F6F10 9AD9070C */  jal        func_001F6668
    /* F7E94 001F6F14 D0F34A25 */   addiu     $10, $10, %lo(D_001DF3D0)
    /* F7E98 001F6F18 2D100002 */  daddu      $2, $16, $0
    /* F7E9C 001F6F1C 5000BF7B */  lq         $31, 0x50($29)
    /* F7EA0 001F6F20 4000B47B */  lq         $20, 0x40($29)
    /* F7EA4 001F6F24 3000B37B */  lq         $19, 0x30($29)
    /* F7EA8 001F6F28 2000B27B */  lq         $18, 0x20($29)
    /* F7EAC 001F6F2C 1000B17B */  lq         $17, 0x10($29)
    /* F7EB0 001F6F30 0000B07B */  lq         $16, 0x0($29)
    /* F7EB4 001F6F34 0800E003 */  jr         $31
    /* F7EB8 001F6F38 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_001F6EA8
    /* F7EBC 001F6F3C 00000000 */  nop
