.align 3
nonmatching func_0012BBA8, 0x50

glabel func_0012BBA8
    /* 2CB28 0012BBA8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2CB2C 0012BBAC 2D108000 */  daddu      $v0, $a0, $zero
    /* 2CB30 0012BBB0 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2CB34 0012BBB4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 2CB38 0012BBB8 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2CB3C 0012BBBC 4000508C */  lw         $s0, 0x40($v0)
    /* 2CB40 0012BBC0 000000AE */  sw         $zero, 0x0($s0)
    /* 2CB44 0012BBC4 2D200002 */  daddu      $a0, $s0, $zero
    /* 2CB48 0012BBC8 040000AE */  sw         $zero, 0x4($s0)
    /* 2CB4C 0012BBCC 080000AE */  sw         $zero, 0x8($s0)
    /* 2CB50 0012BBD0 080040AC */  sw         $zero, 0x8($v0)
    /* 2CB54 0012BBD4 AC0000AE */  sw         $zero, 0xAC($s0)
    /* 2CB58 0012BBD8 D6B0040C */  jal        func_0012C358
    /* 2CB5C 0012BBDC 800003AE */   sw        $v1, 0x80($s0)
    /* 2CB60 0012BBE0 180100AE */  sw         $zero, 0x118($s0)
    /* 2CB64 0012BBE4 2D200002 */  daddu      $a0, $s0, $zero
    /* 2CB68 0012BBE8 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2CB6C 0012BBEC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2CB70 0012BBF0 9AB00408 */  j          func_0012C268
    /* 2CB74 0012BBF4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012BBA8
