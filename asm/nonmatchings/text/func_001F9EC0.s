.align 3
nonmatching func_001F9EC0, 0x28

glabel func_001F9EC0
    /* FAE40 001F9EC0 0000A5D8 */  lqc2       $vf5, 0x0($a1)
    /* FAE44 001F9EC4 0000C1D8 */  lqc2       $vf1, 0x0($a2)
    /* FAE48 001F9EC8 1000C2D8 */  lqc2       $vf2, 0x10($a2)
    /* FAE4C 001F9ECC 2000C3D8 */  lqc2       $vf3, 0x20($a2)
    /* FAE50 001F9ED0 BC09E54B */  .word      0x4BE509BC    # vmulax.xyzw ACC, $vf1, $vf5x
    /* FAE54 001F9ED4 BD10E54B */  .word      0x4BE510BD    # vmadday.xyzw ACC, $vf2, $vf5y
    /* FAE58 001F9ED8 BE18E54B */  .word      0x4BE518BE    # vmaddaz.xyzw ACC, $vf3, $vf5z
    /* FAE5C 001F9EDC 8B01E54B */  vmaddw.xyzw $vf6, $vf0, $vf5w
    /* FAE60 001F9EE0 0800E003 */  jr         $ra
    /* FAE64 001F9EE4 000086F8 */   sqc2      $vf6, 0x0($a0)
endlabel func_001F9EC0
