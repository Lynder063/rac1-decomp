.align 3
nonmatching func_00216F28, 0x1C

glabel func_00216F28
    /* 117EA8 00216F28 1500023C */  lui        $v0, %hi(D_001517D0)
    /* 117EAC 00216F2C 04000324 */  addiu      $v1, $zero, 0x4
    /* 117EB0 00216F30 D0174224 */  addiu      $v0, $v0, %lo(D_001517D0)
    /* 117EB4 00216F34 5C0043A4 */  sh         $v1, 0x5C($v0)
    /* 117EB8 00216F38 400043A4 */  sh         $v1, 0x40($v0)
    /* 117EBC 00216F3C 0800E003 */  jr         $ra
    /* 117EC0 00216F40 780043A4 */   sh        $v1, 0x78($v0)
endlabel func_00216F28
    /* 117EC4 00216F44 00000000 */  nop
