.align 3
nonmatching func_0022EAB0, 0x54

glabel func_0022EAB0
    /* 12FA30 0022EAB0 12008004 */  bltz       $4, .L0022EAFC
    /* 12FA34 0022EAB4 70000324 */   addiu     $3, $0, 0x70
    /* 12FA38 0022EAB8 1400023C */  lui        $2, %hi(D_0013E650)
    /* 12FA3C 0022EABC 18188300 */  mult       $3, $4, $3
    /* 12FA40 0022EAC0 50E64224 */  addiu      $2, $2, %lo(D_0013E650)
    /* 12FA44 0022EAC4 07000424 */  addiu      $4, $0, 0x7
    /* 12FA48 0022EAC8 21186200 */  addu       $3, $3, $2
    /* 12FA4C 0022EACC 74006590 */  lbu        $5, 0x74($3)
    /* 12FA50 0022EAD0 0500A414 */  bne        $5, $4, .L0022EAE8
    /* 12FA54 0022EAD4 00000000 */   nop
    /* 12FA58 0022EAD8 740060A0 */  sb         $0, 0x74($3)
    /* 12FA5C 0022EADC 880060AC */  sw         $0, 0x88($3)
    /* 12FA60 0022EAE0 0800E003 */  jr         $31
    /* 12FA64 0022EAE4 8C0060AC */   sw        $0, 0x8C($3)
.align 2
  .L0022EAE8:
    /* 12FA68 0022EAE8 0400A010 */  beqz       $5, .L0022EAFC
    /* 12FA6C 0022EAEC 06000224 */   addiu     $2, $0, 0x6
    /* 12FA70 0022EAF0 0200A210 */  beq        $5, $2, .L0022EAFC
    /* 12FA74 0022EAF4 04000224 */   addiu     $2, $0, 0x4
    /* 12FA78 0022EAF8 740062A0 */  sb         $2, 0x74($3)
.align 2
  .L0022EAFC:
    /* 12FA7C 0022EAFC 0800E003 */  jr         $31
    /* 12FA80 0022EB00 00000000 */   nop
endlabel func_0022EAB0
    /* 12FA84 0022EB04 00000000 */  nop
