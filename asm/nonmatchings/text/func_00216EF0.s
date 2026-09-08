.align 3
nonmatching func_00216EF0, 0x34

glabel func_00216EF0
    /* 117E70 00216EF0 05008010 */  beqz       $a0, .L00216F08
    /* 117E74 00216EF4 1500053C */   lui       $a1, %hi(D_001517D0)
    /* 117E78 00216EF8 D017A324 */  addiu      $v1, $a1, %lo(D_001517D0)
    /* 117E7C 00216EFC 00800224 */  addiu      $v0, $zero, -0x8000
    /* 117E80 00216F00 5C0062A4 */  sh         $v0, 0x5C($v1)
    /* 117E84 00216F04 5E0060A4 */  sh         $zero, 0x5E($v1)
.align 2
  .L00216F08:
    /* 117E88 00216F08 D017A224 */  addiu      $v0, $a1, %lo(D_001517D0)
    /* 117E8C 00216F0C 00800324 */  addiu      $v1, $zero, -0x8000
    /* 117E90 00216F10 780043A4 */  sh         $v1, 0x78($v0)
    /* 117E94 00216F14 7A0040A4 */  sh         $zero, 0x7A($v0)
    /* 117E98 00216F18 400043A4 */  sh         $v1, 0x40($v0)
    /* 117E9C 00216F1C 0800E003 */  jr         $ra
    /* 117EA0 00216F20 420040A4 */   sh        $zero, 0x42($v0)
endlabel func_00216EF0
    /* 117EA4 00216F24 00000000 */  nop
