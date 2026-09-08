.align 3
nonmatching func_0011B6B8, 0x3C

glabel func_0011B6B8
    /* 1C638 0011B6B8 0000858C */  lw         $a1, 0x0($a0)
    /* 1C63C 0011B6BC 0900A010 */  beqz       $a1, .L0011B6E4
    /* 1C640 0011B6C0 00000000 */   nop
    /* 1C644 0011B6C4 0400838C */  lw         $v1, 0x4($a0)
    /* 1C648 0011B6C8 1800A28C */  lw         $v0, 0x18($a1)
    /* 1C64C 0011B6CC 05006214 */  bne        $v1, $v0, .L0011B6E4
    /* 1C650 0011B6D0 00000000 */   nop
    /* 1C654 0011B6D4 1000A28C */  lw         $v0, 0x10($a1)
    /* 1C658 0011B6D8 01004230 */  andi       $v0, $v0, 0x1
    /* 1C65C 0011B6DC 03004014 */  bnez       $v0, .L0011B6EC
    /* 1C660 0011B6E0 00000000 */   nop
.align 2
  .L0011B6E4:
    /* 1C664 0011B6E4 0800E003 */  jr         $ra
    /* 1C668 0011B6E8 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011B6EC:
    /* 1C66C 0011B6EC 0800E003 */  jr         $ra
    /* 1C670 0011B6F0 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_0011B6B8
    /* 1C674 0011B6F4 00000000 */  nop
