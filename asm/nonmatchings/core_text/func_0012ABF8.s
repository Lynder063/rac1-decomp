.align 3
nonmatching func_0012ABF8, 0x54

glabel func_0012ABF8
    /* 2BB78 0012ABF8 2D388000 */  daddu      $7, $4, $0
    /* 2BB7C 0012ABFC C0280500 */  sll        $5, $5, 3
    /* 2BB80 0012AC00 1800E2DC */  ld         $2, 0x18($7)
    /* 2BB84 0012AC04 0800E68C */  lw         $6, 0x8($7)
    /* 2BB88 0012AC08 2D10A200 */  daddu      $2, $5, $2
    /* 2BB8C 0012AC0C 2400E38C */  lw         $3, 0x24($7)
    /* 2BB90 0012AC10 78270200 */  dsll       $4, $2, 29
    /* 2BB94 0012AC14 3F200400 */  dsra32     $4, $4, 0
    /* 2BB98 0012AC18 0000E0FC */  sd         $0, 0x0($7)
    /* 2BB9C 0012AC1C 2130C400 */  addu       $6, $6, $4
    /* 2BBA0 0012AC20 1000E0AC */  sw         $0, 0x10($7)
    /* 2BBA4 0012AC24 2B18C300 */  sltu       $3, $6, $3
    /* 2BBA8 0012AC28 1800E2FC */  sd         $2, 0x18($7)
    /* 2BBAC 0012AC2C 04006014 */  bnez       $3, .L0012AC40
    /* 2BBB0 0012AC30 0C00E6AC */   sw        $6, 0xC($7)
    /* 2BBB4 0012AC34 2800E28C */  lw         $2, 0x28($7)
    /* 2BBB8 0012AC38 2310C200 */  subu       $2, $6, $2
    /* 2BBBC 0012AC3C 0C00E2AC */  sw         $2, 0xC($7)
.align 2
  .L0012AC40:
    /* 2BBC0 0012AC40 2D20E000 */  daddu      $4, $7, $0
    /* 2BBC4 0012AC44 B2AA0408 */  j          func_0012AAC8
    /* 2BBC8 0012AC48 2D280000 */   daddu     $5, $0, $0
endlabel func_0012ABF8
    /* 2BBCC 0012AC4C 00000000 */  nop
