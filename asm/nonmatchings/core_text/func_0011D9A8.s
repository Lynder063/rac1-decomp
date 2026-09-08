.align 3
/* Handwritten function */
nonmatching func_0011D9A8, 0x18

glabel func_0011D9A8
    /* 1E928 0011D9A8 00600240 */  mfc0       $2, $12 /* handwritten instruction */
    /* 1E92C 0011D9AC 0100033C */  lui        $3, (0x10000 >> 16)
    /* 1E930 0011D9B0 24104300 */  and        $2, $2, $3
    /* 1E934 0011D9B4 38000042 */  ei /* handwritten instruction */
    /* 1E938 0011D9B8 0800E003 */  jr         $31
    /* 1E93C 0011D9BC 2B100200 */   sltu      $2, $0, $2
endlabel func_0011D9A8
