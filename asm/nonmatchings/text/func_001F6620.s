.align 3
nonmatching func_001F6620, 0x20

glabel func_001F6620
    /* F75A0 001F6620 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F75A4 001F6624 1E00063C */  lui        $a2, %hi(D_001DF770)
    /* F75A8 001F6628 0000BF7F */  sq         $ra, 0x0($sp)
    /* F75AC 001F662C 6CD9070C */  jal        func_001F65B0
    /* F75B0 001F6630 70F7C624 */   addiu     $a2, $a2, %lo(D_001DF770)
    /* F75B4 001F6634 0000BF7B */  lq         $ra, 0x0($sp)
    /* F75B8 001F6638 0800E003 */  jr         $ra
    /* F75BC 001F663C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F6620
