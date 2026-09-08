.align 3
nonmatching func_0021EF38, 0x24

glabel func_0021EF38
    /* 11FEB8 0021EF38 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* 11FEBC 0021EF3C DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* 11FEC0 0021EF40 00008144 */  mtc1       $at, $f0
    /* 11FEC4 0021EF44 2D100000 */  daddu      $v0, $zero, $zero
    /* 11FEC8 0021EF48 480080AC */  sw         $zero, 0x48($a0)
    /* 11FECC 0021EF4C 380080E4 */  swc1       $f0, 0x38($a0)
    /* 11FED0 0021EF50 340080AC */  sw         $zero, 0x34($a0)
    /* 11FED4 0021EF54 0800E003 */  jr         $ra
    /* 11FED8 0021EF58 440080AC */   sw        $zero, 0x44($a0)
endlabel func_0021EF38
    /* 11FEDC 0021EF5C 00000000 */  nop
