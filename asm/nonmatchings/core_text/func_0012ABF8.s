.align 3
nonmatching func_0012ABF8, 0x54

glabel func_0012ABF8
    /* 2BB78 0012ABF8 2D388000 */  daddu      $a3, $a0, $zero
    /* 2BB7C 0012ABFC C0280500 */  sll        $a1, $a1, 3
    /* 2BB80 0012AC00 1800E2DC */  ld         $v0, 0x18($a3)
    /* 2BB84 0012AC04 0800E68C */  lw         $a2, 0x8($a3)
    /* 2BB88 0012AC08 2D10A200 */  daddu      $v0, $a1, $v0
    /* 2BB8C 0012AC0C 2400E38C */  lw         $v1, 0x24($a3)
    /* 2BB90 0012AC10 78270200 */  dsll       $a0, $v0, 29
    /* 2BB94 0012AC14 3F200400 */  dsra32     $a0, $a0, 0
    /* 2BB98 0012AC18 0000E0FC */  sd         $zero, 0x0($a3)
    /* 2BB9C 0012AC1C 2130C400 */  addu       $a2, $a2, $a0
    /* 2BBA0 0012AC20 1000E0AC */  sw         $zero, 0x10($a3)
    /* 2BBA4 0012AC24 2B18C300 */  sltu       $v1, $a2, $v1
    /* 2BBA8 0012AC28 1800E2FC */  sd         $v0, 0x18($a3)
    /* 2BBAC 0012AC2C 04006014 */  bnez       $v1, .L0012AC40
    /* 2BBB0 0012AC30 0C00E6AC */   sw        $a2, 0xC($a3)
    /* 2BBB4 0012AC34 2800E28C */  lw         $v0, 0x28($a3)
    /* 2BBB8 0012AC38 2310C200 */  subu       $v0, $a2, $v0
    /* 2BBBC 0012AC3C 0C00E2AC */  sw         $v0, 0xC($a3)
.align 2
  .L0012AC40:
    /* 2BBC0 0012AC40 2D20E000 */  daddu      $a0, $a3, $zero
    /* 2BBC4 0012AC44 B2AA0408 */  j          func_0012AAC8
    /* 2BBC8 0012AC48 2D280000 */   daddu     $a1, $zero, $zero
endlabel func_0012ABF8
    /* 2BBCC 0012AC4C 00000000 */  nop
