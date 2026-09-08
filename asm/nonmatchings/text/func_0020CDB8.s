.align 3
nonmatching func_0020CDB8, 0x28

glabel func_0020CDB8
    /* 10DD38 0020CDB8 1400023C */  lui        $2, %hi(D_0013D5C8)
    /* 10DD3C 0020CDBC C8D54224 */  addiu      $2, $2, %lo(D_0013D5C8)
    /* 10DD40 0020CDC0 1F004390 */  lbu        $3, 0x1F($2)
    /* 10DD44 0020CDC4 04006014 */  bnez       $3, .L0020CDD8
    /* 10DD48 0020CDC8 00000000 */   nop
    /* 10DD4C 0020CDCC 21004290 */  lbu        $2, 0x21($2)
    /* 10DD50 0020CDD0 0800E003 */  jr         $31
    /* 10DD54 0020CDD4 2B100200 */   sltu      $2, $0, $2
.align 2
  .L0020CDD8:
    /* 10DD58 0020CDD8 0800E003 */  jr         $31
    /* 10DD5C 0020CDDC 02000224 */   addiu     $2, $0, 0x2
endlabel func_0020CDB8
