.align 3
nonmatching func_0023C960, 0x4C

glabel func_0023C960
    /* 13D8E0 0023C960 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13D8E4 0023C964 0000B07F */  sq         $s0, 0x0($sp)
    /* 13D8E8 0023C968 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13D8EC 0023C96C 2D808000 */  daddu      $s0, $a0, $zero
.align 2
  .L0023C970:
    /* 13D8F0 0023C970 6689040C */  jal        func_00122598
    /* 13D8F4 0023C974 2D200000 */   daddu     $a0, $zero, $zero
    /* 13D8F8 0023C978 00000000 */  nop
    /* 13D8FC 0023C97C 00000000 */  nop
    /* 13D900 0023C980 00000000 */  nop
    /* 13D904 0023C984 FAFF5010 */  beq        $v0, $s0, .L0023C970
    /* 13D908 0023C988 01000224 */   addiu     $v0, $zero, 0x1
    /* 13D90C 0023C98C 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13D910 0023C990 1600013C */  lui        $at, %hi(D_001612E0)
    /* 13D914 0023C994 E01222AC */  sw         $v0, %lo(D_001612E0)($at)
    /* 13D918 0023C998 0000B07B */  lq         $s0, 0x0($sp)
    /* 13D91C 0023C99C 1600013C */  lui        $at, %hi(D_001612E4)
    /* 13D920 0023C9A0 E41220AC */  sw         $zero, %lo(D_001612E4)($at)
    /* 13D924 0023C9A4 0800E003 */  jr         $ra
    /* 13D928 0023C9A8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023C960
    /* 13D92C 0023C9AC 00000000 */  nop
