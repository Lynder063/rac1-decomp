.align 3
nonmatching func_001FDF10, 0x64

glabel func_001FDF10
    /* FEE90 001FDF10 2D388000 */  daddu      $a3, $a0, $zero
    /* FEE94 001FDF14 0200023C */  lui        $v0, (0x20000 >> 16)
    /* FEE98 001FDF18 2B104700 */  sltu       $v0, $v0, $a3
    /* FEE9C 001FDF1C 11004014 */  bnez       $v0, .L001FDF64
    /* FEEA0 001FDF20 2D40A000 */   daddu     $t0, $a1, $zero
    /* FEEA4 001FDF24 1900053C */  lui        $a1, %hi(D_001941C0)
    /* FEEA8 001FDF28 1600043C */  lui        $a0, %hi(D_0016100C)
    /* FEEAC 001FDF2C 0C10848C */  lw         $a0, %lo(D_0016100C)($a0)
    /* FEEB0 001FDF30 C041A524 */  addiu      $a1, $a1, %lo(D_001941C0)
    /* FEEB4 001FDF34 2D100000 */  daddu      $v0, $zero, $zero
    /* FEEB8 001FDF38 0400A38C */  lw         $v1, 0x4($a1)
    /* FEEBC 001FDF3C 21186400 */  addu       $v1, $v1, $a0
    /* FEEC0 001FDF40 23186700 */  subu       $v1, $v1, $a3
    /* FEEC4 001FDF44 000003AD */  sw         $v1, 0x0($t0)
    /* FEEC8 001FDF48 0800A48C */  lw         $a0, 0x8($a1)
    /* FEECC 001FDF4C 1600033C */  lui        $v1, %hi(D_0016100C)
    /* FEED0 001FDF50 0C10638C */  lw         $v1, %lo(D_0016100C)($v1)
    /* FEED4 001FDF54 21208300 */  addu       $a0, $a0, $v1
    /* FEED8 001FDF58 23208700 */  subu       $a0, $a0, $a3
    /* FEEDC 001FDF5C 0800E003 */  jr         $ra
    /* FEEE0 001FDF60 0000C4AC */   sw        $a0, 0x0($a2)
.align 2
  .L001FDF64:
    /* FEEE4 001FDF64 000000AD */  sw         $zero, 0x0($t0)
    /* FEEE8 001FDF68 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* FEEEC 001FDF6C 0800E003 */  jr         $ra
    /* FEEF0 001FDF70 0000C0AC */   sw        $zero, 0x0($a2)
endlabel func_001FDF10
    /* FEEF4 001FDF74 00000000 */  nop
