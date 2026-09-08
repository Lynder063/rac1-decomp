.align 3
nonmatching func_001239D8, 0x34

glabel func_001239D8
    /* 24958 001239D8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2495C 001239DC 0000BFFF */  sd         $ra, 0x0($sp)
    /* 24960 001239E0 2C8E040C */  jal        func_001238B0
    /* 24964 001239E4 40000724 */   addiu     $a3, $zero, 0x40
    /* 24968 001239E8 2D204000 */  daddu      $a0, $v0, $zero
    /* 2496C 001239EC 04008014 */  bnez       $a0, .L00123A00
    /* 24970 001239F0 0000BFDF */   ld        $ra, 0x0($sp)
    /* 24974 001239F4 1300033C */  lui        $v1, %hi(D_00132EA8)
    /* 24978 001239F8 0B000224 */  addiu      $v0, $zero, 0xB
    /* 2497C 001239FC A82E62AC */  sw         $v0, %lo(D_00132EA8)($v1)
.align 2
  .L00123A00:
    /* 24980 00123A00 2D108000 */  daddu      $v0, $a0, $zero
    /* 24984 00123A04 0800E003 */  jr         $ra
    /* 24988 00123A08 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001239D8
    /* 2498C 00123A0C 00000000 */  nop
