.align 3
nonmatching func_0011DFC8, 0x20

glabel func_0011DFC8
    /* 1EF48 0011DFC8 1600033C */  lui        $3, %hi(D_001597EC)
    /* 1EF4C 0011DFCC EC97628C */  lw         $2, %lo(D_001597EC)($3)
    /* 1EF50 0011DFD0 03004014 */  bnez       $2, .L0011DFE0
    /* 1EF54 0011DFD4 01000224 */   addiu     $2, $0, 0x1
    /* 1EF58 0011DFD8 C6770408 */  j          func_0011DF18
    /* 1EF5C 0011DFDC EC9762AC */   sw        $2, %lo(D_001597EC)($3)
.align 2
  .L0011DFE0:
    /* 1EF60 0011DFE0 0800E003 */  jr         $31
    /* 1EF64 0011DFE4 00000000 */   nop
endlabel func_0011DFC8
