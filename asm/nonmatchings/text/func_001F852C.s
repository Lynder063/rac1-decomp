/* Handwritten function */
nonmatching func_001F852C, 0x40

glabel func_001F852C
    /* F94AC 001F852C 00C90400 */  sll        $t9, $a0, 4
    /* F94B0 001F8530 00000000 */  nop
    /* F94B4 001F8534 00A3818F */  lw         $at, -0x5D00($gp)
    /* F94B8 001F8538 0010083C */  lui        $t0, (0x10000000 >> 16)
    /* F94BC 001F853C 10003923 */  addi       $t9, $t9, 0x10 /* handwritten instruction */
    /* F94C0 001F8540 25400401 */  or         $t0, $t0, $a0
    /* F94C4 001F8544 0000207C */  sq         $zero, 0x0($at)
    /* F94C8 001F8548 0040093C */  lui        $t1, (0x40000000 >> 16)
    /* F94CC 001F854C 000028AC */  sw         $t0, 0x0($at)
    /* F94D0 001F8550 25400901 */  or         $t0, $t0, $t1
    /* F94D4 001F8554 0C0028AC */  sw         $t0, 0xC($at)
    /* F94D8 001F8558 20503900 */  add        $t2, $at, $t9 /* handwritten instruction */
    /* F94DC 001F855C 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* F94E0 001F8560 00000000 */  nop
    /* F94E4 001F8564 0800E003 */  jr         $ra
    /* F94E8 001F8568 00A38AAF */   sw        $t2, -0x5D00($gp)
endlabel func_001F852C
