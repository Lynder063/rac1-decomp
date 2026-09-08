.align 3
nonmatching func_00222D70, 0x3C

glabel func_00222D70
    /* 123CF0 00222D70 1600053C */  lui        $a1, %hi(D_0015EE84)
    /* 123CF4 00222D74 84EEA58C */  lw         $a1, %lo(D_0015EE84)($a1)
    /* 123CF8 00222D78 13000224 */  addiu      $v0, $zero, 0x13
    /* 123CFC 00222D7C 1D00063C */  lui        $a2, %hi(D_001D48A8)
    /* 123D00 00222D80 01004050 */  beql       $v0, $zero, .L00222D88
    /* 123D04 00222D84 CD010000 */   break     0, 7
.align 2
  .L00222D88:
    /* 123D08 00222D88 1B00A200 */  divu       $zero, $a1, $v0
    /* 123D0C 00222D8C A848C624 */  addiu      $a2, $a2, %lo(D_001D48A8)
    /* 123D10 00222D90 2D100000 */  daddu      $v0, $zero, $zero
    /* 123D14 00222D94 10180000 */  mfhi       $v1
    /* 123D18 00222D98 80180300 */  sll        $v1, $v1, 2
    /* 123D1C 00222D9C 21186600 */  addu       $v1, $v1, $a2
    /* 123D20 00222DA0 0000658C */  lw         $a1, 0x0($v1)
    /* 123D24 00222DA4 0800E003 */  jr         $ra
    /* 123D28 00222DA8 340085AC */   sw        $a1, 0x34($a0)
endlabel func_00222D70
    /* 123D2C 00222DAC 00000000 */  nop
