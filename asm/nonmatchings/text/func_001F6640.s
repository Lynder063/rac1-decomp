.align 3
nonmatching func_001F6640, 0x20

glabel func_001F6640
    /* F75C0 001F6640 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F75C4 001F6644 1E00063C */  lui        $a2, %hi(D_001DFB10)
    /* F75C8 001F6648 0000BF7F */  sq         $ra, 0x0($sp)
    /* F75CC 001F664C 6CD9070C */  jal        func_001F65B0
    /* F75D0 001F6650 10FBC624 */   addiu     $a2, $a2, %lo(D_001DFB10)
    /* F75D4 001F6654 0000BF7B */  lq         $ra, 0x0($sp)
    /* F75D8 001F6658 0800E003 */  jr         $ra
    /* F75DC 001F665C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F6640
    /* F75E0 001F6660 00000000 */  nop
    /* F75E4 001F6664 00000000 */  nop
