.align 3
nonmatching func_0020CCD0, 0x54

glabel func_0020CCD0
    /* 10DC50 0020CCD0 1400033C */  lui        $3, %hi(D_0013D6B8)
    /* 10DC54 0020CCD4 2D206000 */  daddu      $4, $3, $0
    /* 10DC58 0020CCD8 B8D66324 */  addiu      $3, $3, %lo(D_0013D6B8)
    /* 10DC5C 0020CCDC 4C01628C */  lw         $2, 0x14C($3)
    /* 10DC60 0020CCE0 05004010 */  beqz       $2, .L0020CCF8
    /* 10DC64 0020CCE4 8C01628C */   lw        $2, 0x18C($3)
    /* 10DC68 0020CCE8 05004014 */  bnez       $2, .L0020CD00
    /* 10DC6C 0020CCEC 1400023C */   lui       $2, %hi(D_0013D5CA)
    /* 10DC70 0020CCF0 0800E003 */  jr         $31
    /* 10DC74 0020CCF4 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0020CCF8:
    /* 10DC78 0020CCF8 07004010 */  beqz       $2, .L0020CD18
    /* 10DC7C 0020CCFC 1400023C */   lui       $2, %hi(D_0013D5CA)
.align 2
  .L0020CD00:
    /* 10DC80 0020CD00 CAD54390 */  lbu        $3, %lo(D_0013D5CA)($2)
    /* 10DC84 0020CD04 04006010 */  beqz       $3, .L0020CD18
    /* 10DC88 0020CD08 B8D68424 */   addiu     $4, $4, %lo(D_0013D6B8)
    /* 10DC8C 0020CD0C 6C01838C */  lw         $3, 0x16C($4)
    /* 10DC90 0020CD10 02006010 */  beqz       $3, .L0020CD1C
    /* 10DC94 0020CD14 02000224 */   addiu     $2, $0, 0x2
.align 2
  .L0020CD18:
    /* 10DC98 0020CD18 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0020CD1C:
    /* 10DC9C 0020CD1C 0800E003 */  jr         $31
    /* 10DCA0 0020CD20 00000000 */   nop
endlabel func_0020CCD0
    /* 10DCA4 0020CD24 00000000 */  nop
