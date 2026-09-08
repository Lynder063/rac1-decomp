.align 3
nonmatching func_0023CFF0, 0x24

glabel func_0023CFF0
    /* 13DF70 0023CFF0 3C300600 */  dsll32     $a2, $a2, 0
    /* 13DF74 0023CFF4 3C280500 */  dsll32     $a1, $a1, 0
    /* 13DF78 0023CFF8 3A310600 */  dsrl       $a2, $a2, 4
    /* 13DF7C 0023CFFC 3C380700 */  dsll32     $a3, $a3, 0
    /* 13DF80 0023D000 2528A600 */  or         $a1, $a1, $a2
    /* 13DF84 0023D004 3E380700 */  dsrl32     $a3, $a3, 0
    /* 13DF88 0023D008 2528A700 */  or         $a1, $a1, $a3
    /* 13DF8C 0023D00C 0800E003 */  jr         $ra
    /* 13DF90 0023D010 000085FC */   sd        $a1, 0x0($a0)
endlabel func_0023CFF0
    /* 13DF94 0023D014 00000000 */  nop
