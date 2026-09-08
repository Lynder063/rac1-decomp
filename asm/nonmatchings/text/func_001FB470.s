.align 3
nonmatching func_001FB470, 0x24

glabel func_001FB470
    /* FC3F0 001FB470 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* FC3F4 001FB474 1600043C */  lui        $a0, %hi(D_0015EFB8)
    /* FC3F8 001FB478 B8EF848C */  lw         $a0, %lo(D_0015EFB8)($a0)
    /* FC3FC 001FB47C 0000BF7F */  sq         $ra, 0x0($sp)
    /* FC400 001FB480 5088040C */  jal        func_00122140
    /* FC404 001FB484 00000000 */   nop
    /* FC408 001FB488 0000BF7B */  lq         $ra, 0x0($sp)
    /* FC40C 001FB48C 0800E003 */  jr         $ra
    /* FC410 001FB490 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001FB470
    /* FC414 001FB494 00000000 */  nop
