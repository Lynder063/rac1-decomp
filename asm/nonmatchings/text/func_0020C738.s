.align 3
/* Handwritten function */
nonmatching func_0020C738, 0x20

glabel func_0020C738
    /* 10D6B8 0020C738 80006EAC */  sw         $14, 0x80($3)
    /* 10D6BC 0020C73C 00020620 */  addi       $6, $0, 0x200 /* handwritten instruction */
    /* 10D6C0 0020C740 200066AC */  sw         $6, 0x20($3)
    /* 10D6C4 0020C744 0020CE39 */  xori       $14, $14, 0x2000
    /* 10D6C8 0020C748 10006BAC */  sw         $11, 0x10($3)
    /* 10D6CC 0020C74C 00010634 */  ori        $6, $0, 0x100
    /* 10D6D0 0020C750 0800E003 */  jr         $31
    /* 10D6D4 0020C754 000066AC */   sw        $6, 0x0($3)
endlabel func_0020C738
