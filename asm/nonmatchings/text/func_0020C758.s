.align 3
/* Handwritten function */
nonmatching func_0020C758, 0x44

glabel func_0020C758
    /* 10D6D8 0020C758 0000668C */  lw         $a2, 0x0($v1)
    /* 10D6DC 0020C75C 00000000 */  nop
    /* 10D6E0 0020C760 0001C630 */  andi       $a2, $a2, 0x100
    /* 10D6E4 0020C764 00000000 */  nop
    /* 10D6E8 0020C768 0300C010 */  beqz       $a2, .L0020C778
    /* 10D6EC 0020C76C 00000000 */   nop
    /* 10D6F0 0020C770 D6310808 */  j          func_0020C758
    /* 10D6F4 0020C774 00000000 */   nop
.align 2
  .L0020C778:
    /* 10D6F8 0020C778 0800E003 */  jr         $ra
    /* 10D6FC 0020C77C 00000000 */   nop
.align 2
  .L0020C780:
    /* 10D700 0020C780 34000000 */  teq        $zero, $zero, 0 /* handwritten instruction */
    /* 10D704 0020C784 00000000 */  nop
    /* 10D708 0020C788 34000000 */  teq        $zero, $zero, 0 /* handwritten instruction */
    /* 10D70C 0020C78C 00000000 */  nop
    /* 10D710 0020C790 00000000 */  nop
    /* 10D714 0020C794 0800E003 */  jr         $ra
    /* 10D718 0020C798 00000000 */   nop
endlabel func_0020C758
    /* 10D71C 0020C79C 00000000 */  nop
