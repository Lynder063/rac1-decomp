.align 3
nonmatching func_0021DA98, 0x2C

glabel func_0021DA98
    /* 11EA18 0021DA98 1400033C */  lui        $3, %hi(D_0013D5CA)
    /* 11EA1C 0021DA9C CAD56290 */  lbu        $2, %lo(D_0013D5CA)($3)
    /* 11EA20 0021DAA0 04004050 */  beql       $2, $0, .L0021DAB4
    /* 11EA24 0021DAA4 1D00023C */   lui       $2, %hi(D_001D0A88)
    /* 11EA28 0021DAA8 1D00023C */  lui        $2, %hi(D_001D0A50)
    /* 11EA2C 0021DAAC 02000010 */  b          .L0021DAB8
    /* 11EA30 0021DAB0 500A4224 */   addiu     $2, $2, %lo(D_001D0A50)
.align 2
  .L0021DAB4:
    /* 11EA34 0021DAB4 880A4224 */  addiu      $2, $2, %lo(D_001D0A88)
.align 2
  .L0021DAB8:
    /* 11EA38 0021DAB8 340082AC */  sw         $2, 0x34($4)
    /* 11EA3C 0021DABC 0800E003 */  jr         $31
    /* 11EA40 0021DAC0 2D100000 */   daddu     $2, $0, $0
endlabel func_0021DA98
    /* 11EA44 0021DAC4 00000000 */  nop
