.align 3
nonmatching func_001F6E18, 0x8C

glabel func_001F6E18
    /* F7D98 001F6E18 A0FFBD27 */  addiu      $29, $29, -0x60
    /* F7D9C 001F6E1C 3000B37F */  sq         $19, 0x30($29)
    /* F7DA0 001F6E20 2000B27F */  sq         $18, 0x20($29)
    /* F7DA4 001F6E24 2D98A000 */  daddu      $19, $5, $0
    /* F7DA8 001F6E28 1000B17F */  sq         $17, 0x10($29)
    /* F7DAC 001F6E2C 2D900001 */  daddu      $18, $8, $0
    /* F7DB0 001F6E30 0000B07F */  sq         $16, 0x0($29)
    /* F7DB4 001F6E34 2D88E000 */  daddu      $17, $7, $0
    /* F7DB8 001F6E38 4000B47F */  sq         $20, 0x40($29)
    /* F7DBC 001F6E3C 2D808000 */  daddu      $16, $4, $0
    /* F7DC0 001F6E40 5000BF7F */  sq         $31, 0x50($29)
    /* F7DC4 001F6E44 2DA0C000 */  daddu      $20, $6, $0
    /* F7DC8 001F6E48 2D284002 */  daddu      $5, $18, $0
    /* F7DCC 001F6E4C 90D9070C */  jal        func_001F6640
    /* F7DD0 001F6E50 2D202002 */   daddu     $4, $17, $0
    /* F7DD4 001F6E54 23800202 */  subu       $16, $16, $2
    /* F7DD8 001F6E58 1AD2070C */  jal        func_001F4868
    /* F7DDC 001F6E5C 03000424 */   addiu     $4, $0, 0x3
    /* F7DE0 001F6E60 1E000A3C */  lui        $10, %hi(D_001DFB10)
    /* F7DE4 001F6E64 2D200002 */  daddu      $4, $16, $0
    /* F7DE8 001F6E68 2D286002 */  daddu      $5, $19, $0
    /* F7DEC 001F6E6C 2D308002 */  daddu      $6, $20, $0
    /* F7DF0 001F6E70 2D382002 */  daddu      $7, $17, $0
    /* F7DF4 001F6E74 2D404002 */  daddu      $8, $18, $0
    /* F7DF8 001F6E78 2D484000 */  daddu      $9, $2, $0
    /* F7DFC 001F6E7C 9AD9070C */  jal        func_001F6668
    /* F7E00 001F6E80 10FB4A25 */   addiu     $10, $10, %lo(D_001DFB10)
    /* F7E04 001F6E84 5000BF7B */  lq         $31, 0x50($29)
    /* F7E08 001F6E88 4000B47B */  lq         $20, 0x40($29)
    /* F7E0C 001F6E8C 3000B37B */  lq         $19, 0x30($29)
    /* F7E10 001F6E90 2000B27B */  lq         $18, 0x20($29)
    /* F7E14 001F6E94 1000B17B */  lq         $17, 0x10($29)
    /* F7E18 001F6E98 0000B07B */  lq         $16, 0x0($29)
    /* F7E1C 001F6E9C 0800E003 */  jr         $31
    /* F7E20 001F6EA0 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_001F6E18
    /* F7E24 001F6EA4 00000000 */  nop
