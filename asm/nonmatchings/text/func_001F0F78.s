.align 3
nonmatching func_001F0F78, 0x74

glabel func_001F0F78
    /* F1EF8 001F0F78 04848A8F */  lw         $10, -0x7BFC($28)
    /* F1EFC 001F0F7C 1900023C */  lui        $2, %hi(D_0018AC00)
    /* F1F00 001F0F80 00AC4224 */  addiu      $2, $2, %lo(D_0018AC00)
    /* F1F04 001F0F84 F0FFBD27 */  addiu      $29, $29, -0x10
    /* F1F08 001F0F88 00190A00 */  sll        $3, $10, 4
    /* F1F0C 001F0F8C 0000BF7F */  sq         $31, 0x0($29)
    /* F1F10 001F0F90 00848B8F */  lw         $11, -0x7C00($28)
    /* F1F14 001F0F94 21406200 */  addu       $8, $3, $2
    /* F1F18 001F0F98 000004AD */  sw         $4, 0x0($8)
    /* F1F1C 001F0F9C 21484300 */  addu       $9, $2, $3
    /* F1F20 001F0FA0 040025AD */  sw         $5, 0x4($9)
    /* F1F24 001F0FA4 2D202001 */  daddu      $4, $9, $0
    /* F1F28 001F0FA8 080086AC */  sw         $6, 0x8($4)
    /* F1F2C 001F0FAC 2D108000 */  daddu      $2, $4, $0
    /* F1F30 001F0FB0 01004A25 */  addiu      $10, $10, 0x1
    /* F1F34 001F0FB4 0C004BAC */  sw         $11, 0xC($2)
    /* F1F38 001F0FB8 1600053C */  lui        $5, %hi(D_0015F108)
    /* F1F3C 001F0FBC 2D206001 */  daddu      $4, $11, $0
    /* F1F40 001F0FC0 04848AAF */  sw         $10, -0x7BFC($28)
    /* F1F44 001F0FC4 08F1A524 */  addiu      $5, $5, %lo(D_0015F108)
    /* F1F48 001F0FC8 9258040C */  jal        func_00116248
    /* F1F4C 001F0FCC 2D30E000 */   daddu     $6, $7, $0
    /* F1F50 001F0FD0 0084838F */  lw         $3, -0x7C00($28)
    /* F1F54 001F0FD4 01004224 */  addiu      $2, $2, 0x1
    /* F1F58 001F0FD8 0000BF7B */  lq         $31, 0x0($29)
    /* F1F5C 001F0FDC 21186200 */  addu       $3, $3, $2
    /* F1F60 001F0FE0 008483AF */  sw         $3, -0x7C00($28)
    /* F1F64 001F0FE4 0800E003 */  jr         $31
    /* F1F68 001F0FE8 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001F0F78
    /* F1F6C 001F0FEC 00000000 */  nop
