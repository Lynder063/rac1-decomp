.align 3
nonmatching func_0020C210, 0x20

glabel func_0020C210
    /* 10D190 0020C210 0010013C */  lui        $at, (0x1000D400 >> 16)
    /* 10D194 0020C214 00D42134 */  ori        $at, $at, (0x1000D400 & 0xFFFF)
    /* 10D198 0020C218 800026AC */  sw         $a2, 0x80($at)
    /* 10D19C 0020C21C 200025AC */  sw         $a1, 0x20($at)
    /* 10D1A0 0020C220 100024AC */  sw         $a0, 0x10($at)
    /* 10D1A4 0020C224 00010234 */  ori        $v0, $zero, 0x100
    /* 10D1A8 0020C228 0800E003 */  jr         $ra
    /* 10D1AC 0020C22C 000022AC */   sw        $v0, 0x0($at)
endlabel func_0020C210
