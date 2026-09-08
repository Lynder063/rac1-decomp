.align 3
nonmatching func_0012F308, 0x40

glabel func_0012F308
    /* 30288 0012F308 1600043C */  lui        $a0, %hi(D_0015EE48)
    /* 3028C 0012F30C 48EE84DC */  ld         $a0, %lo(D_0015EE48)($a0)
    /* 30290 0012F310 0010053C */  lui        $a1, (0x10000800 >> 16)
    /* 30294 0012F314 0008A534 */  ori        $a1, $a1, (0x10000800 & 0xFFFF)
    /* 30298 0012F318 1600063C */  lui        $a2, %hi(D_0015EE40)
    /* 3029C 0012F31C 40EEC6DC */  ld         $a2, %lo(D_0015EE40)($a2)
    /* 302A0 0012F320 01008464 */  daddiu     $a0, $a0, 0x1
    /* 302A4 0012F324 2D100000 */  daddu      $v0, $zero, $zero
    /* 302A8 0012F328 1600013C */  lui        $at, %hi(D_0015EE48)
    /* 302AC 0012F32C 48EE24FC */  sd         $a0, %lo(D_0015EE48)($at)
    /* 302B0 0012F330 0000A38C */  lw         $v1, 0x0($a1)
    /* 302B4 0012F334 3C180300 */  dsll32     $v1, $v1, 0
    /* 302B8 0012F338 3E180300 */  dsrl32     $v1, $v1, 0
    /* 302BC 0012F33C 2D30C300 */  daddu      $a2, $a2, $v1
    /* 302C0 0012F340 0800E003 */  jr         $ra
    /* 302C4 0012F344 508186FF */   sd        $a2, -0x7EB0($gp)
endlabel func_0012F308
