.align 3
nonmatching func_0011EEC8, 0x60

glabel func_0011EEC8
    /* 1FE48 0011EEC8 3F300400 */  dsra32     $a2, $a0, 0
    /* 1FE4C 0011EECC 3F180500 */  dsra32     $v1, $a1, 0
    /* 1FE50 0011EED0 3C200400 */  dsll32     $a0, $a0, 0
    /* 1FE54 0011EED4 3F200400 */  dsra32     $a0, $a0, 0
    /* 1FE58 0011EED8 3C280500 */  dsll32     $a1, $a1, 0
    /* 1FE5C 0011EEDC 3F280500 */  dsra32     $a1, $a1, 0
    /* 1FE60 0011EEE0 18188300 */  mult       $v1, $a0, $v1
    /* 1FE64 0011EEE4 1830C570 */  mult1      $a2, $a2, $a1
    /* 1FE68 0011EEE8 19008500 */  multu      $a0, $a1
    /* 1FE6C 0011EEEC 12200000 */  mflo       $a0
    /* 1FE70 0011EEF0 10100000 */  mfhi       $v0
    /* 1FE74 0011EEF4 3C200400 */  dsll32     $a0, $a0, 0
    /* 1FE78 0011EEF8 3C100200 */  dsll32     $v0, $v0, 0
    /* 1FE7C 0011EEFC 3E200400 */  dsrl32     $a0, $a0, 0
    /* 1FE80 0011EF00 21186600 */  addu       $v1, $v1, $a2
    /* 1FE84 0011EF04 25208200 */  or         $a0, $a0, $v0
    /* 1FE88 0011EF08 FFFF053C */  lui        $a1, (0xFFFF0000 >> 16)
    /* 1FE8C 0011EF0C 3E280500 */  dsrl32     $a1, $a1, 0
    /* 1FE90 0011EF10 3F100400 */  dsra32     $v0, $a0, 0
    /* 1FE94 0011EF14 21104300 */  addu       $v0, $v0, $v1
    /* 1FE98 0011EF18 24208500 */  and        $a0, $a0, $a1
    /* 1FE9C 0011EF1C 3C100200 */  dsll32     $v0, $v0, 0
    /* 1FEA0 0011EF20 0800E003 */  jr         $ra
    /* 1FEA4 0011EF24 25108200 */   or        $v0, $a0, $v0
endlabel func_0011EEC8
