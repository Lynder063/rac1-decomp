.align 3
nonmatching func_00129180, 0x48

glabel func_00129180
    /* 2A100 00129180 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2A104 00129184 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2A108 00129188 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2A10C 0012918C 04000010 */  b          .L001291A0
    /* 2A110 00129190 2D808000 */   daddu     $s0, $a0, $zero
    /* 2A114 00129194 00000000 */  nop
.align 2
  .L00129198:
    /* 2A118 00129198 5AA2040C */  jal        func_00128968
    /* 2A11C 0012919C 00000000 */   nop
.align 2
  .L001291A0:
    /* 2A120 001291A0 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A124 001291A4 96A2040C */  jal        func_00128A58
    /* 2A128 001291A8 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A12C 001291AC 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A130 001291B0 F9FF4014 */  bnez       $v0, .L00129198
    /* 2A134 001291B4 08000524 */   addiu     $a1, $zero, 0x8
    /* 2A138 001291B8 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2A13C 001291BC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2A140 001291C0 0800E003 */  jr         $ra
    /* 2A144 001291C4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00129180
