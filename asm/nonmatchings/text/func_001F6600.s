.align 3
nonmatching func_001F6600, 0x20

glabel func_001F6600
    /* F7580 001F6600 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F7584 001F6604 1E00063C */  lui        $a2, %hi(D_001DF3D0)
    /* F7588 001F6608 0000BF7F */  sq         $ra, 0x0($sp)
    /* F758C 001F660C 6CD9070C */  jal        func_001F65B0
    /* F7590 001F6610 D0F3C624 */   addiu     $a2, $a2, %lo(D_001DF3D0)
    /* F7594 001F6614 0000BF7B */  lq         $ra, 0x0($sp)
    /* F7598 001F6618 0800E003 */  jr         $ra
    /* F759C 001F661C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F6600
