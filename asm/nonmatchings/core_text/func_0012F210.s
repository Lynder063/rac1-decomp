.align 3
nonmatching func_0012F210, 0x34

glabel func_0012F210
    /* 30190 0012F210 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 30194 0012F214 00000000 */  nop
    /* 30198 0012F218 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3019C 0012F21C 00000000 */  nop
.align 2
  alabel func_0012F220
    /* 301A0 0012F220 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 301A4 0012F224 3C000424 */  addiu      $a0, $zero, 0x3C
    /* 301A8 0012F228 0000BF7F */  sq         $ra, 0x0($sp)
    /* 301AC 0012F22C 2D280000 */  daddu      $a1, $zero, $zero
    /* 301B0 0012F230 A2B9040C */  jal        func_0012E688
    /* 301B4 0012F234 2D300000 */   daddu     $a2, $zero, $zero
    /* 301B8 0012F238 0000BF7B */  lq         $ra, 0x0($sp)
    /* 301BC 0012F23C 0800E003 */  jr         $ra
    /* 301C0 0012F240 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012F210
    /* 301C4 0012F244 00000000 */  nop
