.align 3
nonmatching func_0021DA60, 0x34

glabel func_0021DA60
    /* 11E9E0 0021DA60 1400023C */  lui        $v0, %hi(D_00141FA0)
    /* 11E9E4 0021DA64 30008424 */  addiu      $a0, $a0, 0x30
    /* 11E9E8 0021DA68 A01F4524 */  addiu      $a1, $v0, %lo(D_00141FA0)
    /* 11E9EC 0021DA6C 07000324 */  addiu      $v1, $zero, 0x7
.align 2
  .L0021DA70:
    /* 11E9F0 0021DA70 0000828C */  lw         $v0, 0x0($a0)
    /* 11E9F4 0021DA74 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 11E9F8 0021DA78 04008424 */  addiu      $a0, $a0, 0x4
    /* 11E9FC 0021DA7C 0000A2AC */  sw         $v0, 0x0($a1)
    /* 11EA00 0021DA80 00000000 */  nop
    /* 11EA04 0021DA84 FAFF6104 */  bgez       $v1, .L0021DA70
    /* 11EA08 0021DA88 0400A524 */   addiu     $a1, $a1, 0x4
    /* 11EA0C 0021DA8C 0800E003 */  jr         $ra
    /* 11EA10 0021DA90 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0021DA60
    /* 11EA14 0021DA94 00000000 */  nop
