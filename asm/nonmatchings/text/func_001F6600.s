.align 3
nonmatching func_001F6600, 0x20

glabel func_001F6600
    /* F7580 001F6600 F0FFBD27 */  addiu      $29, $29, -0x10
    /* F7584 001F6604 1E00063C */  lui        $6, %hi(D_001DF3D0)
    /* F7588 001F6608 0000BF7F */  sq         $31, 0x0($29)
    /* F758C 001F660C 6CD9070C */  jal        func_001F65B0
    /* F7590 001F6610 D0F3C624 */   addiu     $6, $6, %lo(D_001DF3D0)
    /* F7594 001F6614 0000BF7B */  lq         $31, 0x0($29)
    /* F7598 001F6618 0800E003 */  jr         $31
    /* F759C 001F661C 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001F6600
