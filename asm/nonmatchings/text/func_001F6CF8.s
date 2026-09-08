.align 3
nonmatching func_001F6CF8, 0x8C

glabel func_001F6CF8
    /* F7C78 001F6CF8 A0FFBD27 */  addiu      $29, $29, -0x60
    /* F7C7C 001F6CFC 3000B37F */  sq         $19, 0x30($29)
    /* F7C80 001F6D00 2000B27F */  sq         $18, 0x20($29)
    /* F7C84 001F6D04 2D98A000 */  daddu      $19, $5, $0
    /* F7C88 001F6D08 1000B17F */  sq         $17, 0x10($29)
    /* F7C8C 001F6D0C 2D900001 */  daddu      $18, $8, $0
    /* F7C90 001F6D10 0000B07F */  sq         $16, 0x0($29)
    /* F7C94 001F6D14 2D88E000 */  daddu      $17, $7, $0
    /* F7C98 001F6D18 4000B47F */  sq         $20, 0x40($29)
    /* F7C9C 001F6D1C 2D808000 */  daddu      $16, $4, $0
    /* F7CA0 001F6D20 5000BF7F */  sq         $31, 0x50($29)
    /* F7CA4 001F6D24 2DA0C000 */  daddu      $20, $6, $0
    /* F7CA8 001F6D28 2D284002 */  daddu      $5, $18, $0
    /* F7CAC 001F6D2C 80D9070C */  jal        func_001F6600
    /* F7CB0 001F6D30 2D202002 */   daddu     $4, $17, $0
    /* F7CB4 001F6D34 23800202 */  subu       $16, $16, $2
    /* F7CB8 001F6D38 1AD2070C */  jal        func_001F4868
    /* F7CBC 001F6D3C 01000424 */   addiu     $4, $0, 0x1
    /* F7CC0 001F6D40 1E000A3C */  lui        $10, %hi(D_001DF3D0)
    /* F7CC4 001F6D44 2D200002 */  daddu      $4, $16, $0
    /* F7CC8 001F6D48 2D286002 */  daddu      $5, $19, $0
    /* F7CCC 001F6D4C 2D308002 */  daddu      $6, $20, $0
    /* F7CD0 001F6D50 2D382002 */  daddu      $7, $17, $0
    /* F7CD4 001F6D54 2D404002 */  daddu      $8, $18, $0
    /* F7CD8 001F6D58 2D484000 */  daddu      $9, $2, $0
    /* F7CDC 001F6D5C 9AD9070C */  jal        func_001F6668
    /* F7CE0 001F6D60 D0F34A25 */   addiu     $10, $10, %lo(D_001DF3D0)
    /* F7CE4 001F6D64 5000BF7B */  lq         $31, 0x50($29)
    /* F7CE8 001F6D68 4000B47B */  lq         $20, 0x40($29)
    /* F7CEC 001F6D6C 3000B37B */  lq         $19, 0x30($29)
    /* F7CF0 001F6D70 2000B27B */  lq         $18, 0x20($29)
    /* F7CF4 001F6D74 1000B17B */  lq         $17, 0x10($29)
    /* F7CF8 001F6D78 0000B07B */  lq         $16, 0x0($29)
    /* F7CFC 001F6D7C 0800E003 */  jr         $31
    /* F7D00 001F6D80 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_001F6CF8
    /* F7D04 001F6D84 00000000 */  nop
