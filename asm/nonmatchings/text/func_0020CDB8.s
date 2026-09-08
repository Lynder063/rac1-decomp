.align 3
nonmatching func_0020CDB8, 0x28

glabel func_0020CDB8
    /* 10DD38 0020CDB8 1400023C */  lui        $v0, %hi(D_0013D5C8)
    /* 10DD3C 0020CDBC C8D54224 */  addiu      $v0, $v0, %lo(D_0013D5C8)
    /* 10DD40 0020CDC0 1F004390 */  lbu        $v1, 0x1F($v0)
    /* 10DD44 0020CDC4 04006014 */  bnez       $v1, .L0020CDD8
    /* 10DD48 0020CDC8 00000000 */   nop
    /* 10DD4C 0020CDCC 21004290 */  lbu        $v0, 0x21($v0)
    /* 10DD50 0020CDD0 0800E003 */  jr         $ra
    /* 10DD54 0020CDD4 2B100200 */   sltu      $v0, $zero, $v0
.align 2
  .L0020CDD8:
    /* 10DD58 0020CDD8 0800E003 */  jr         $ra
    /* 10DD5C 0020CDDC 02000224 */   addiu     $v0, $zero, 0x2
endlabel func_0020CDB8
