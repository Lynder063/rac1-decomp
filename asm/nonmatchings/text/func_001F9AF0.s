.align 3
nonmatching func_001F9AF0, 0x30

glabel func_001F9AF0
    /* FAA70 001F9AF0 0010013C */  lui        $at, (0x1000D000 >> 16)
    /* FAA74 001F9AF4 00D02134 */  ori        $at, $at, (0x1000D000 & 0xFFFF)
    /* FAA78 001F9AF8 800025AC */  sw         $a1, 0x80($at)
    /* FAA7C 001F9AFC 00000000 */  nop
    /* FAA80 001F9B00 100024AC */  sw         $a0, 0x10($at)
    /* FAA84 001F9B04 00010234 */  ori        $v0, $zero, 0x100
    /* FAA88 001F9B08 200026AC */  sw         $a2, 0x20($at)
    /* FAA8C 001F9B0C 000022AC */  sw         $v0, 0x0($at)
    /* FAA90 001F9B10 1020033C */  lui        $v1, (0x20100000 >> 16)
    /* FAA94 001F9B14 0000638C */  lw         $v1, (0x20100000 & 0xFFFF)($v1)
    /* FAA98 001F9B18 0800E003 */  jr         $ra
    /* FAA9C 001F9B1C 01006334 */   ori       $v1, $v1, 0x1
endlabel func_001F9AF0
