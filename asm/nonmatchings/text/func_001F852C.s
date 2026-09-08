/* Handwritten function */
nonmatching func_001F852C, 0x40

glabel func_001F852C
    /* F94AC 001F852C 00C90400 */  sll        $25, $4, 4
    /* F94B0 001F8530 00000000 */  nop
    /* F94B4 001F8534 00A3818F */  lw         $1, -0x5D00($28)
    /* F94B8 001F8538 0010083C */  lui        $8, (0x10000000 >> 16)
    /* F94BC 001F853C 10003923 */  addi       $25, $25, 0x10 /* handwritten instruction */
    /* F94C0 001F8540 25400401 */  or         $8, $8, $4
    /* F94C4 001F8544 0000207C */  sq         $0, 0x0($1)
    /* F94C8 001F8548 0040093C */  lui        $9, (0x40000000 >> 16)
    /* F94CC 001F854C 000028AC */  sw         $8, 0x0($1)
    /* F94D0 001F8550 25400901 */  or         $8, $8, $9
    /* F94D4 001F8554 0C0028AC */  sw         $8, 0xC($1)
    /* F94D8 001F8558 20503900 */  add        $10, $1, $25 /* handwritten instruction */
    /* F94DC 001F855C 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* F94E0 001F8560 00000000 */  nop
    /* F94E4 001F8564 0800E003 */  jr         $31
    /* F94E8 001F8568 00A38AAF */   sw        $10, -0x5D00($28)
endlabel func_001F852C
