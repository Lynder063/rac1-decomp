.align 3
/* Handwritten function */
nonmatching func_0020C738, 0x20

glabel func_0020C738
    /* 10D6B8 0020C738 80006EAC */  sw         $t6, 0x80($v1)
    /* 10D6BC 0020C73C 00020620 */  addi       $a2, $zero, 0x200 /* handwritten instruction */
    /* 10D6C0 0020C740 200066AC */  sw         $a2, 0x20($v1)
    /* 10D6C4 0020C744 0020CE39 */  xori       $t6, $t6, 0x2000
    /* 10D6C8 0020C748 10006BAC */  sw         $t3, 0x10($v1)
    /* 10D6CC 0020C74C 00010634 */  ori        $a2, $zero, 0x100
    /* 10D6D0 0020C750 0800E003 */  jr         $ra
    /* 10D6D4 0020C754 000066AC */   sw        $a2, 0x0($v1)
endlabel func_0020C738
