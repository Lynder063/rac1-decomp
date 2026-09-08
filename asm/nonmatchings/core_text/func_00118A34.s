/* Handwritten function */
nonmatching func_00118A34, 0x1C

glabel func_00118A34
    /* 199B4 00118A34 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 199B8 00118A38 CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 199BC 00118A3C CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 199C0 00118A40 00000324 */  addiu      $3, $0, 0x0
    /* 199C4 00118A44 0C000000 */  syscall    0 /* handwritten instruction */
    /* 199C8 00118A48 0800E003 */  jr         $31
    /* 199CC 00118A4C 00000000 */   nop
endlabel func_00118A34
