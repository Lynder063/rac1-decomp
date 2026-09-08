.align 3
nonmatching func_0012F248, 0x38

glabel func_0012F248
    /* 301C8 0012F248 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 301CC 0012F24C 0000A4AF */  sw         $a0, 0x0($sp)
    /* 301D0 0012F250 0400A5AF */  sw         $a1, 0x4($sp)
    /* 301D4 0012F254 3E000424 */  addiu      $a0, $zero, 0x3E
    /* 301D8 0012F258 0800A6AF */  sw         $a2, 0x8($sp)
    /* 301DC 0012F25C 14000524 */  addiu      $a1, $zero, 0x14
    /* 301E0 0012F260 2000BF7F */  sq         $ra, 0x20($sp)
    /* 301E4 0012F264 2D30A003 */  daddu      $a2, $sp, $zero
    /* 301E8 0012F268 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 301EC 0012F26C A2B9040C */  jal        func_0012E688
    /* 301F0 0012F270 1000A8AF */   sw        $t0, 0x10($sp)
    /* 301F4 0012F274 2000BF7B */  lq         $ra, 0x20($sp)
    /* 301F8 0012F278 0800E003 */  jr         $ra
    /* 301FC 0012F27C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012F248
