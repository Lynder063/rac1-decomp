.align 3
nonmatching func_0011DFC8, 0x20

glabel func_0011DFC8
    /* 1EF48 0011DFC8 1600033C */  lui        $v1, %hi(D_001597EC)
    /* 1EF4C 0011DFCC EC97628C */  lw         $v0, %lo(D_001597EC)($v1)
    /* 1EF50 0011DFD0 03004014 */  bnez       $v0, .L0011DFE0
    /* 1EF54 0011DFD4 01000224 */   addiu     $v0, $zero, 0x1
    /* 1EF58 0011DFD8 C6770408 */  j          func_0011DF18
    /* 1EF5C 0011DFDC EC9762AC */   sw        $v0, %lo(D_001597EC)($v1)
.align 2
  .L0011DFE0:
    /* 1EF60 0011DFE0 0800E003 */  jr         $ra
    /* 1EF64 0011DFE4 00000000 */   nop
endlabel func_0011DFC8
