.align 3
nonmatching func_001F9EE8, 0x30

glabel func_001F9EE8
    /* FAE68 001F9EE8 0000A5D8 */  lqc2       $vf5, 0x0($a1)
    /* FAE6C 001F9EEC 0000C1D8 */  lqc2       $vf1, 0x0($a2)
    /* FAE70 001F9EF0 1000C2D8 */  lqc2       $vf2, 0x10($a2)
    /* FAE74 001F9EF4 2000C3D8 */  lqc2       $vf3, 0x20($a2)
    /* FAE78 001F9EF8 3000C4D8 */  lqc2       $vf4, 0x30($a2)
    /* FAE7C 001F9EFC 00000000 */  nop
    /* FAE80 001F9F00 BC09E54B */  .word      0x4BE509BC    # vmulax.xyzw ACC, $vf1, $vf5x
    /* FAE84 001F9F04 BD10E54B */  .word      0x4BE510BD    # vmadday.xyzw ACC, $vf2, $vf5y
    /* FAE88 001F9F08 BE18E54B */  .word      0x4BE518BE    # vmaddaz.xyzw ACC, $vf3, $vf5z
    /* FAE8C 001F9F0C 8B21E54B */  vmaddw.xyzw $vf6, $vf4, $vf5w
    /* FAE90 001F9F10 0800E003 */  jr         $ra
    /* FAE94 001F9F14 000086F8 */   sqc2      $vf6, 0x0($a0)
endlabel func_001F9EE8
