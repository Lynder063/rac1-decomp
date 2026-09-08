.align 3
nonmatching func_001E9E70, 0x58

glabel func_001E9E70
    /* EADF0 001E9E70 F0FFBD27 */  addiu      $29, $29, -0x10
    /* EADF4 001E9E74 0000BF7F */  sq         $31, 0x0($29)
    /* EADF8 001E9E78 F8B1080C */  jal        func_0022C7E0
    /* EADFC 001E9E7C 00000000 */   nop
    /* EAE00 001E9E80 62B0080C */  jal        func_0022C188
    /* EAE04 001E9E84 00000000 */   nop
    /* EAE08 001E9E88 1CB2080C */  jal        func_0022C870
    /* EAE0C 001E9E8C 00000000 */   nop
    /* EAE10 001E9E90 0500053C */  lui        $5, (0x5360B >> 16)
    /* EAE14 001E9E94 0B36A534 */  ori        $5, $5, (0x5360B & 0xFFFF)
    /* EAE18 001E9E98 26D3080C */  jal        func_00234C98
    /* EAE1C 001E9E9C 47000424 */   addiu     $4, $0, 0x47
    /* EAE20 001E9EA0 1600053C */  lui        $5, %hi(D_0015EF88)
    /* EAE24 001E9EA4 88EFA58C */  lw         $5, %lo(D_0015EF88)($5)
    /* EAE28 001E9EA8 0001023C */  lui        $2, (0x1000000 >> 16)
    /* EAE2C 001E9EAC 4E000424 */  addiu      $4, $0, 0x4E
    /* EAE30 001E9EB0 432B0500 */  sra        $5, $5, 13
    /* EAE34 001E9EB4 26D3080C */  jal        func_00234C98
    /* EAE38 001E9EB8 25284500 */   or        $5, $2, $5
    /* EAE3C 001E9EBC 0000BF7B */  lq         $31, 0x0($29)
    /* EAE40 001E9EC0 0800E003 */  jr         $31
    /* EAE44 001E9EC4 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001E9E70
