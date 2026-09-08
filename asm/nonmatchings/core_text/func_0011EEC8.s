.align 3
nonmatching func_0011EEC8, 0x60

glabel func_0011EEC8
    /* 1FE48 0011EEC8 3F300400 */  dsra32     $6, $4, 0
    /* 1FE4C 0011EECC 3F180500 */  dsra32     $3, $5, 0
    /* 1FE50 0011EED0 3C200400 */  dsll32     $4, $4, 0
    /* 1FE54 0011EED4 3F200400 */  dsra32     $4, $4, 0
    /* 1FE58 0011EED8 3C280500 */  dsll32     $5, $5, 0
    /* 1FE5C 0011EEDC 3F280500 */  dsra32     $5, $5, 0
    /* 1FE60 0011EEE0 18188300 */  mult       $3, $4, $3
    /* 1FE64 0011EEE4 1830C570 */  mult1      $6, $6, $5
    /* 1FE68 0011EEE8 19008500 */  multu      $4, $5
    /* 1FE6C 0011EEEC 12200000 */  mflo       $4
    /* 1FE70 0011EEF0 10100000 */  mfhi       $2
    /* 1FE74 0011EEF4 3C200400 */  dsll32     $4, $4, 0
    /* 1FE78 0011EEF8 3C100200 */  dsll32     $2, $2, 0
    /* 1FE7C 0011EEFC 3E200400 */  dsrl32     $4, $4, 0
    /* 1FE80 0011EF00 21186600 */  addu       $3, $3, $6
    /* 1FE84 0011EF04 25208200 */  or         $4, $4, $2
    /* 1FE88 0011EF08 FFFF053C */  lui        $5, (0xFFFF0000 >> 16)
    /* 1FE8C 0011EF0C 3E280500 */  dsrl32     $5, $5, 0
    /* 1FE90 0011EF10 3F100400 */  dsra32     $2, $4, 0
    /* 1FE94 0011EF14 21104300 */  addu       $2, $2, $3
    /* 1FE98 0011EF18 24208500 */  and        $4, $4, $5
    /* 1FE9C 0011EF1C 3C100200 */  dsll32     $2, $2, 0
    /* 1FEA0 0011EF20 0800E003 */  jr         $31
    /* 1FEA4 0011EF24 25108200 */   or        $2, $4, $2
endlabel func_0011EEC8
