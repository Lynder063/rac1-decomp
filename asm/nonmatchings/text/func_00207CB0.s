.align 3
nonmatching func_00207CB0, 0x2C

glabel func_00207CB0
    /* 108C30 00207CB0 0101A528 */  slti       $5, $5, 0x101
    /* 108C34 00207CB4 0500A010 */  beqz       $5, .L00207CCC
    /* 108C38 00207CB8 1400033C */   lui       $3, %hi(D_001414DC)
    /* 108C3C 00207CBC 1400033C */  lui        $3, %hi(D_0013D4C5)
    /* 108C40 00207CC0 C5D46290 */  lbu        $2, %lo(D_0013D4C5)($3)
    /* 108C44 00207CC4 0800E003 */  jr         $31
    /* 108C48 00207CC8 2B100200 */   sltu      $2, $0, $2
.align 2
  .L00207CCC:
    /* 108C4C 00207CCC DC14628C */  lw         $2, %lo(D_001414DC)($3)
    /* 108C50 00207CD0 0F004238 */  xori       $2, $2, 0xF
    /* 108C54 00207CD4 0800E003 */  jr         $31
    /* 108C58 00207CD8 0100422C */   sltiu     $2, $2, 0x1
endlabel func_00207CB0
    /* 108C5C 00207CDC 00000000 */  nop
