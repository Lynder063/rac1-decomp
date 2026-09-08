.align 3
nonmatching func_001EDE08, 0x48

glabel func_001EDE08
    /* EED88 001EDE08 1800023C */  lui        $v0, %hi(D_00187040)
    /* EED8C 001EDE0C 00108044 */  mtc1       $zero, $f2
    /* EED90 001EDE10 40704224 */  addiu      $v0, $v0, %lo(D_00187040)
    /* EED94 001EDE14 580241C4 */  lwc1       $f1, 0x258($v0)
    /* EED98 001EDE18 32080246 */  c.eq.s     $f1, $f2
    /* EED9C 001EDE1C 00000000 */  nop
    /* EEDA0 001EDE20 09000145 */  bc1t       .L001EDE48
    /* EEDA4 001EDE24 3C8880C7 */   lwc1      $f0, -0x77C4($gp)
    /* EEDA8 001EDE28 01000146 */  sub.s      $f0, $f0, $f1
    /* EEDAC 001EDE2C 36000246 */  c.le.s     $f0, $f2
    /* EEDB0 001EDE30 00000000 */  nop
    /* EEDB4 001EDE34 04000045 */  bc1f       .L001EDE48
    /* EEDB8 001EDE38 3C8880E7 */   swc1      $f0, -0x77C4($gp)
    /* EEDBC 001EDE3C 580242E4 */  swc1       $f2, 0x258($v0)
    /* EEDC0 001EDE40 1600013C */  lui        $at, %hi(D_0015F53C)
    /* EEDC4 001EDE44 3CF522E4 */  swc1       $f2, %lo(D_0015F53C)($at)
.align 2
  .L001EDE48:
    /* EEDC8 001EDE48 0800E003 */  jr         $ra
    /* EEDCC 001EDE4C 00000000 */   nop
endlabel func_001EDE08
