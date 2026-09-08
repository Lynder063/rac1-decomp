.align 3
nonmatching func_00207CB0, 0x2C

glabel func_00207CB0
    /* 108C30 00207CB0 0101A528 */  slti       $a1, $a1, 0x101
    /* 108C34 00207CB4 0500A010 */  beqz       $a1, .L00207CCC
    /* 108C38 00207CB8 1400033C */   lui       $v1, %hi(D_001414DC)
    /* 108C3C 00207CBC 1400033C */  lui        $v1, %hi(D_0013D4C5)
    /* 108C40 00207CC0 C5D46290 */  lbu        $v0, %lo(D_0013D4C5)($v1)
    /* 108C44 00207CC4 0800E003 */  jr         $ra
    /* 108C48 00207CC8 2B100200 */   sltu      $v0, $zero, $v0
.align 2
  .L00207CCC:
    /* 108C4C 00207CCC DC14628C */  lw         $v0, %lo(D_001414DC)($v1)
    /* 108C50 00207CD0 0F004238 */  xori       $v0, $v0, 0xF
    /* 108C54 00207CD4 0800E003 */  jr         $ra
    /* 108C58 00207CD8 0100422C */   sltiu     $v0, $v0, 0x1
endlabel func_00207CB0
    /* 108C5C 00207CDC 00000000 */  nop
