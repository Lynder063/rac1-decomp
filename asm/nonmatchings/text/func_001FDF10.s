.align 3
nonmatching func_001FDF10, 0x64

glabel func_001FDF10
    /* FEE90 001FDF10 2D388000 */  daddu      $7, $4, $0
    /* FEE94 001FDF14 0200023C */  lui        $2, (0x20000 >> 16)
    /* FEE98 001FDF18 2B104700 */  sltu       $2, $2, $7
    /* FEE9C 001FDF1C 11004014 */  bnez       $2, .L001FDF64
    /* FEEA0 001FDF20 2D40A000 */   daddu     $8, $5, $0
    /* FEEA4 001FDF24 1900053C */  lui        $5, %hi(D_001941C0)
    /* FEEA8 001FDF28 1600043C */  lui        $4, %hi(D_0016100C)
    /* FEEAC 001FDF2C 0C10848C */  lw         $4, %lo(D_0016100C)($4)
    /* FEEB0 001FDF30 C041A524 */  addiu      $5, $5, %lo(D_001941C0)
    /* FEEB4 001FDF34 2D100000 */  daddu      $2, $0, $0
    /* FEEB8 001FDF38 0400A38C */  lw         $3, 0x4($5)
    /* FEEBC 001FDF3C 21186400 */  addu       $3, $3, $4
    /* FEEC0 001FDF40 23186700 */  subu       $3, $3, $7
    /* FEEC4 001FDF44 000003AD */  sw         $3, 0x0($8)
    /* FEEC8 001FDF48 0800A48C */  lw         $4, 0x8($5)
    /* FEECC 001FDF4C 1600033C */  lui        $3, %hi(D_0016100C)
    /* FEED0 001FDF50 0C10638C */  lw         $3, %lo(D_0016100C)($3)
    /* FEED4 001FDF54 21208300 */  addu       $4, $4, $3
    /* FEED8 001FDF58 23208700 */  subu       $4, $4, $7
    /* FEEDC 001FDF5C 0800E003 */  jr         $31
    /* FEEE0 001FDF60 0000C4AC */   sw        $4, 0x0($6)
.align 2
  .L001FDF64:
    /* FEEE4 001FDF64 000000AD */  sw         $0, 0x0($8)
    /* FEEE8 001FDF68 FFFF0224 */  addiu      $2, $0, -0x1
    /* FEEEC 001FDF6C 0800E003 */  jr         $31
    /* FEEF0 001FDF70 0000C0AC */   sw        $0, 0x0($6)
endlabel func_001FDF10
    /* FEEF4 001FDF74 00000000 */  nop
