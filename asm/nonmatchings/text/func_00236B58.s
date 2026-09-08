.align 3
nonmatching func_00236B58, 0x54

glabel func_00236B58
    /* 137AD8 00236B58 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 137ADC 00236B5C 0000BF7F */  sq         $ra, 0x0($sp)
    /* 137AE0 00236B60 A6DA080C */  jal        func_00236A98
    /* 137AE4 00236B64 00000000 */   nop
    /* 137AE8 00236B68 1E00043C */  lui        $a0, %hi(D_001E3300)
    /* 137AEC 00236B6C 1E00053C */  lui        $a1, %hi(D_001E4500)
    /* 137AF0 00236B70 00338424 */  addiu      $a0, $a0, %lo(D_001E3300)
    /* 137AF4 00236B74 0045A524 */  addiu      $a1, $a1, %lo(D_001E4500)
    /* 137AF8 00236B78 A6E6070C */  jal        func_001F9A98
    /* 137AFC 00236B7C 00020624 */   addiu     $a2, $zero, 0x200
    /* 137B00 00236B80 1E00043C */  lui        $a0, %hi(D_001E2D00)
    /* 137B04 00236B84 1E00053C */  lui        $a1, %hi(D_001E4100)
    /* 137B08 00236B88 002D8424 */  addiu      $a0, $a0, %lo(D_001E2D00)
    /* 137B0C 00236B8C 0041A524 */  addiu      $a1, $a1, %lo(D_001E4100)
    /* 137B10 00236B90 A6E6070C */  jal        func_001F9A98
    /* 137B14 00236B94 00040624 */   addiu     $a2, $zero, 0x400
    /* 137B18 00236B98 A6DA080C */  jal        func_00236A98
    /* 137B1C 00236B9C 00000000 */   nop
    /* 137B20 00236BA0 0000BF7B */  lq         $ra, 0x0($sp)
    /* 137B24 00236BA4 0800E003 */  jr         $ra
    /* 137B28 00236BA8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00236B58
    /* 137B2C 00236BAC 00000000 */  nop
