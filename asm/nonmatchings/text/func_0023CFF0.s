.align 3
nonmatching func_0023CFF0, 0x24

glabel func_0023CFF0
    /* 13DF70 0023CFF0 3C300600 */  dsll32     $6, $6, 0
    /* 13DF74 0023CFF4 3C280500 */  dsll32     $5, $5, 0
    /* 13DF78 0023CFF8 3A310600 */  dsrl       $6, $6, 4
    /* 13DF7C 0023CFFC 3C380700 */  dsll32     $7, $7, 0
    /* 13DF80 0023D000 2528A600 */  or         $5, $5, $6
    /* 13DF84 0023D004 3E380700 */  dsrl32     $7, $7, 0
    /* 13DF88 0023D008 2528A700 */  or         $5, $5, $7
    /* 13DF8C 0023D00C 0800E003 */  jr         $31
    /* 13DF90 0023D010 000085FC */   sd        $5, 0x0($4)
endlabel func_0023CFF0
    /* 13DF94 0023D014 00000000 */  nop
