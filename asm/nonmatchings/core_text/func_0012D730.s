.align 3
nonmatching func_0012D730, 0x30

glabel func_0012D730
    /* 2E6B0 0012D730 2D288000 */  daddu      $5, $4, $0
    /* 2E6B4 0012D734 18000224 */  addiu      $2, $0, 0x18
    /* 2E6B8 0012D738 0300A390 */  lbu        $3, 0x3($5)
    /* 2E6BC 0012D73C 01006324 */  addiu      $3, $3, 0x1
    /* 2E6C0 0012D740 FF006430 */  andi       $4, $3, 0xFF
    /* 2E6C4 0012D744 04008214 */  bne        $4, $2, .L0012D758
    /* 2E6C8 0012D748 0300A3A0 */   sb        $3, 0x3($5)
    /* 2E6CC 0012D74C 2D20A000 */  daddu      $4, $5, $0
    /* 2E6D0 0012D750 74B50408 */  j          func_0012D5D0
    /* 2E6D4 0012D754 0300A0A0 */   sb        $0, 0x3($5)
.align 2
  .L0012D758:
    /* 2E6D8 0012D758 0800E003 */  jr         $31
    /* 2E6DC 0012D75C 00000000 */   nop
endlabel func_0012D730
