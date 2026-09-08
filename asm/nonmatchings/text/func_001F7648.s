.align 3
nonmatching func_001F7648, 0x38

glabel func_001F7648
    /* F85C8 001F7648 0000A28F */  lw         $v0, 0x0($sp)
    /* F85CC 001F764C 000085A4 */  sh         $a1, 0x0($a0)
    /* F85D0 001F7650 020086A4 */  sh         $a2, 0x2($a0)
    /* F85D4 001F7654 040087A4 */  sh         $a3, 0x4($a0)
    /* F85D8 001F7658 060088A4 */  sh         $t0, 0x6($a0)
    /* F85DC 001F765C 080089A4 */  sh         $t1, 0x8($a0)
    /* F85E0 001F7660 0A008AA4 */  sh         $t2, 0xA($a0)
    /* F85E4 001F7664 10008BA4 */  sh         $t3, 0x10($a0)
    /* F85E8 001F7668 120082A4 */  sh         $v0, 0x12($a0)
    /* F85EC 001F766C 160080A4 */  sh         $zero, 0x16($a0)
    /* F85F0 001F7670 0C0080A4 */  sh         $zero, 0xC($a0)
    /* F85F4 001F7674 0E0080A4 */  sh         $zero, 0xE($a0)
    /* F85F8 001F7678 0800E003 */  jr         $ra
    /* F85FC 001F767C 140080A4 */   sh        $zero, 0x14($a0)
endlabel func_001F7648
