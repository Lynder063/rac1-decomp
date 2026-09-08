.align 3
nonmatching func_0012D340, 0x40

glabel func_0012D340
    /* 2E2C0 0012D340 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E2C4 0012D344 1300033C */  lui        $v1, %hi(D_001331D8)
    /* 2E2C8 0012D348 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2E2CC 0012D34C D8316280 */  lb         $v0, %lo(D_001331D8)($v1)
    /* 2E2D0 0012D350 D8317024 */  addiu      $s0, $v1, %lo(D_001331D8)
    /* 2E2D4 0012D354 03004014 */  bnez       $v0, .L0012D364
    /* 2E2D8 0012D358 1000BFFF */   sd        $ra, 0x10($sp)
    /* 2E2DC 0012D35C A8B4040C */  jal        func_0012D2A0
    /* 2E2E0 0012D360 00000000 */   nop
.align 2
  .L0012D364:
    /* 2E2E4 0012D364 04000282 */  lb         $v0, 0x4($s0)
    /* 2E2E8 0012D368 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2E2EC 0012D36C 54004238 */  xori       $v0, $v0, 0x54
    /* 2E2F0 0012D370 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2E2F4 0012D374 0100422C */  sltiu      $v0, $v0, 0x1
    /* 2E2F8 0012D378 0800E003 */  jr         $ra
    /* 2E2FC 0012D37C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012D340
