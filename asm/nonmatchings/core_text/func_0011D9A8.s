.align 3
/* Handwritten function */
nonmatching func_0011D9A8, 0x18

glabel func_0011D9A8
    /* 1E928 0011D9A8 00600240 */  mfc0       $v0, $12 /* handwritten instruction */
    /* 1E92C 0011D9AC 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 1E930 0011D9B0 24104300 */  and        $v0, $v0, $v1
    /* 1E934 0011D9B4 38000042 */  ei /* handwritten instruction */
    /* 1E938 0011D9B8 0800E003 */  jr         $ra
    /* 1E93C 0011D9BC 2B100200 */   sltu      $v0, $zero, $v0
endlabel func_0011D9A8
