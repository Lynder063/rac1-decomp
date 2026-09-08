.align 3
nonmatching func_001F9AF0, 0x30

glabel func_001F9AF0
    /* FAA70 001F9AF0 0010013C */  lui        $1, (0x1000D000 >> 16)
    /* FAA74 001F9AF4 00D02134 */  ori        $1, $1, (0x1000D000 & 0xFFFF)
    /* FAA78 001F9AF8 800025AC */  sw         $5, 0x80($1)
    /* FAA7C 001F9AFC 00000000 */  nop
    /* FAA80 001F9B00 100024AC */  sw         $4, 0x10($1)
    /* FAA84 001F9B04 00010234 */  ori        $2, $0, 0x100
    /* FAA88 001F9B08 200026AC */  sw         $6, 0x20($1)
    /* FAA8C 001F9B0C 000022AC */  sw         $2, 0x0($1)
    /* FAA90 001F9B10 1020033C */  lui        $3, (0x20100000 >> 16)
    /* FAA94 001F9B14 0000638C */  lw         $3, (0x20100000 & 0xFFFF)($3)
    /* FAA98 001F9B18 0800E003 */  jr         $31
    /* FAA9C 001F9B1C 01006334 */   ori       $3, $3, 0x1
endlabel func_001F9AF0
