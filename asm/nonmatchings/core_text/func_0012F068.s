.align 3
nonmatching func_0012F068, 0x30

glabel func_0012F068
    /* 2FFE8 0012F068 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2FFEC 0012F06C 8C80828F */  lw         $v0, -0x7F74($gp)
    /* 2FFF0 0012F070 04004010 */  beqz       $v0, .L0012F084
    /* 2FFF4 0012F074 0000BF7F */   sq        $ra, 0x0($sp)
    /* 2FFF8 0012F078 9080828F */  lw         $v0, -0x7F70($gp)
    /* 2FFFC 0012F07C 03000010 */  b          .L0012F08C
    /* 30000 0012F080 908084AF */   sw        $a0, -0x7F70($gp)
.align 2
  .L0012F084:
    /* 30004 0012F084 5E82040C */  jal        func_00120978
    /* 30008 0012F088 00000000 */   nop
.align 2
  .L0012F08C:
    /* 3000C 0012F08C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 30010 0012F090 0800E003 */  jr         $ra
    /* 30014 0012F094 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012F068
