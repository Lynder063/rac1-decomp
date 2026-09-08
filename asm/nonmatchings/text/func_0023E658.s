.align 3
nonmatching func_0023E658, 0x40

glabel func_0023E658
    /* 13F5D8 0023E658 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13F5DC 0023E65C 0000B07F */  sq         $s0, 0x0($sp)
    /* 13F5E0 0023E660 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13F5E4 0023E664 72F9080C */  jal        func_0023E5C8
    /* 13F5E8 0023E668 2D808000 */   daddu     $s0, $a0, $zero
    /* 13F5EC 0023E66C 06004054 */  bnel       $v0, $zero, .L0023E688
    /* 13F5F0 0023E670 2D100000 */   daddu     $v0, $zero, $zero
    /* 13F5F4 0023E674 0800028E */  lw         $v0, 0x8($s0)
    /* 13F5F8 0023E678 0D00033C */  lui        $v1, (0xD0000 >> 16)
    /* 13F5FC 0023E67C 0000048E */  lw         $a0, 0x0($s0)
    /* 13F600 0023E680 18104300 */  mult       $v0, $v0, $v1
    /* 13F604 0023E684 21108200 */  addu       $v0, $a0, $v0
.align 2
  .L0023E688:
    /* 13F608 0023E688 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13F60C 0023E68C 0000B07B */  lq         $s0, 0x0($sp)
    /* 13F610 0023E690 0800E003 */  jr         $ra
    /* 13F614 0023E694 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023E658
