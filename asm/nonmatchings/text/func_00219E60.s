.align 3
nonmatching func_00219E60, 0x2C

glabel func_00219E60
    /* 11ADE0 00219E60 1D00043C */  lui        $4, %hi(D_001D5F70)
    /* 11ADE4 00219E64 2D000224 */  addiu      $2, $0, 0x2D
    /* 11ADE8 00219E68 705F8324 */  addiu      $3, $4, %lo(D_001D5F70)
    /* 11ADEC 00219E6C 705F82AC */  sw         $2, %lo(D_001D5F70)($4)
    /* 11ADF0 00219E70 03000524 */  addiu      $5, $0, 0x3
    /* 11ADF4 00219E74 100160AC */  sw         $0, 0x110($3)
    /* 11ADF8 00219E78 1600013C */  lui        $1, %hi(D_0015F6E8)
    /* 11ADFC 00219E7C E8F625AC */  sw         $5, %lo(D_0015F6E8)($1)
    /* 11AE00 00219E80 0C0060AC */  sw         $0, 0xC($3)
    /* 11AE04 00219E84 0800E003 */  jr         $31
    /* 11AE08 00219E88 100060AC */   sw        $0, 0x10($3)
endlabel func_00219E60
    /* 11AE0C 00219E8C 00000000 */  nop
