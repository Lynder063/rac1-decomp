.align 3
nonmatching func_002391A8, 0x3C

glabel func_002391A8
    /* 13A128 002391A8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13A12C 002391AC 2D308000 */  daddu      $a2, $a0, $zero
    /* 13A130 002391B0 0000B07F */  sq         $s0, 0x0($sp)
    /* 13A134 002391B4 1F00053C */  lui        $a1, %hi(D_001E8DA0)
    /* 13A138 002391B8 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13A13C 002391BC 1E00103C */  lui        $s0, %hi(D_001E66C0)
    /* 13A140 002391C0 C0661026 */  addiu      $s0, $s0, %lo(D_001E66C0)
    /* 13A144 002391C4 A08DA524 */  addiu      $a1, $a1, %lo(D_001E8DA0)
    /* 13A148 002391C8 9258040C */  jal        func_00116248
    /* 13A14C 002391CC 2C00048E */   lw        $a0, 0x2C($s0)
    /* 13A150 002391D0 440000AE */  sw         $zero, 0x44($s0)
    /* 13A154 002391D4 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13A158 002391D8 0000B07B */  lq         $s0, 0x0($sp)
    /* 13A15C 002391DC 0800E003 */  jr         $ra
    /* 13A160 002391E0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_002391A8
    /* 13A164 002391E4 00000000 */  nop
