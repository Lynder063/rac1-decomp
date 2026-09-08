.align 3
nonmatching func_0023DBE0, 0x110

glabel func_0023DBE0
    /* 13EB60 0023DBE0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13EB64 0023DBE4 2000B27F */  sq         $s2, 0x20($sp)
    /* 13EB68 0023DBE8 1000B17F */  sq         $s1, 0x10($sp)
    /* 13EB6C 0023DBEC 2D900000 */  daddu      $s2, $zero, $zero
    /* 13EB70 0023DBF0 0000B07F */  sq         $s0, 0x0($sp)
    /* 13EB74 0023DBF4 2D88A000 */  daddu      $s1, $a1, $zero
    /* 13EB78 0023DBF8 3000BF7F */  sq         $ra, 0x30($sp)
    /* 13EB7C 0023DBFC 2D808000 */  daddu      $s0, $a0, $zero
    /* 13EB80 0023DC00 2C63040C */  jal        func_00118CB0
    /* 13EB84 0023DC04 4000048E */   lw        $a0, 0x40($s0)
    /* 13EB88 0023DC08 5800038E */  lw         $v1, 0x58($s0)
    /* 13EB8C 0023DC0C 5400028E */  lw         $v0, 0x54($s0)
    /* 13EB90 0023DC10 2A186200 */  slt        $v1, $v1, $v0
    /* 13EB94 0023DC14 2D006010 */  beqz       $v1, .L0023DCCC
    /* 13EB98 0023DC18 2D200002 */   daddu     $a0, $s0, $zero
    /* 13EB9C 0023DC1C A2F6080C */  jal        func_0023DA88
    /* 13EBA0 0023DC20 2D282002 */   daddu     $a1, $s1, $zero
    /* 13EBA4 0023DC24 000024DE */  ld         $a0, 0x0($s1)
    /* 13EBA8 0023DC28 05008304 */  bgezl      $a0, .L0023DC40
    /* 13EBAC 0023DC2C 5C00028E */   lw        $v0, 0x5C($s0)
    /* 13EBB0 0023DC30 080022DE */  ld         $v0, 0x8($s1)
    /* 13EBB4 0023DC34 25004004 */  bltz       $v0, .L0023DCCC
    /* 13EBB8 0023DC38 01001224 */   addiu     $s2, $zero, 0x1
    /* 13EBBC 0023DC3C 5C00028E */  lw         $v0, 0x5C($s0)
.align 2
  .L0023DC40:
    /* 13EBC0 0023DC40 18000524 */  addiu      $a1, $zero, 0x18
    /* 13EBC4 0023DC44 5000038E */  lw         $v1, 0x50($s0)
    /* 13EBC8 0023DC48 18104500 */  mult       $v0, $v0, $a1
    /* 13EBCC 0023DC4C 21104300 */  addu       $v0, $v0, $v1
    /* 13EBD0 0023DC50 000044FC */  sd         $a0, 0x0($v0)
    /* 13EBD4 0023DC54 5C00038E */  lw         $v1, 0x5C($s0)
    /* 13EBD8 0023DC58 5000028E */  lw         $v0, 0x50($s0)
    /* 13EBDC 0023DC5C 18186500 */  mult       $v1, $v1, $a1
    /* 13EBE0 0023DC60 080024DE */  ld         $a0, 0x8($s1)
    /* 13EBE4 0023DC64 21186200 */  addu       $v1, $v1, $v0
    /* 13EBE8 0023DC68 080064FC */  sd         $a0, 0x8($v1)
    /* 13EBEC 0023DC6C 5C00028E */  lw         $v0, 0x5C($s0)
    /* 13EBF0 0023DC70 5000048E */  lw         $a0, 0x50($s0)
    /* 13EBF4 0023DC74 18104500 */  mult       $v0, $v0, $a1
    /* 13EBF8 0023DC78 1000238E */  lw         $v1, 0x10($s1)
    /* 13EBFC 0023DC7C 21104400 */  addu       $v0, $v0, $a0
    /* 13EC00 0023DC80 100043AC */  sw         $v1, 0x10($v0)
    /* 13EC04 0023DC84 5C00048E */  lw         $a0, 0x5C($s0)
    /* 13EC08 0023DC88 5000038E */  lw         $v1, 0x50($s0)
    /* 13EC0C 0023DC8C 18208500 */  mult       $a0, $a0, $a1
    /* 13EC10 0023DC90 1400228E */  lw         $v0, 0x14($s1)
    /* 13EC14 0023DC94 21208300 */  addu       $a0, $a0, $v1
    /* 13EC18 0023DC98 140082AC */  sw         $v0, 0x14($a0)
    /* 13EC1C 0023DC9C 5C00038E */  lw         $v1, 0x5C($s0)
    /* 13EC20 0023DCA0 5400048E */  lw         $a0, 0x54($s0)
    /* 13EC24 0023DCA4 01006324 */  addiu      $v1, $v1, 0x1
    /* 13EC28 0023DCA8 5800028E */  lw         $v0, 0x58($s0)
    /* 13EC2C 0023DCAC 1A006400 */  div        $zero, $v1, $a0
    /* 13EC30 0023DCB0 01004224 */  addiu      $v0, $v0, 0x1
    /* 13EC34 0023DCB4 580002AE */  sw         $v0, 0x58($s0)
    /* 13EC38 0023DCB8 01008050 */  beql       $a0, $zero, .L0023DCC0
    /* 13EC3C 0023DCBC CD010000 */   break     0, 7
.align 2
  .L0023DCC0:
    /* 13EC40 0023DCC0 10280000 */  mfhi       $a1
    /* 13EC44 0023DCC4 5C0005AE */  sw         $a1, 0x5C($s0)
    /* 13EC48 0023DCC8 01001224 */  addiu      $s2, $zero, 0x1
.align 2
  .L0023DCCC:
    /* 13EC4C 0023DCCC 2463040C */  jal        func_00118C90
    /* 13EC50 0023DCD0 4000048E */   lw        $a0, 0x40($s0)
    /* 13EC54 0023DCD4 2D104002 */  daddu      $v0, $s2, $zero
    /* 13EC58 0023DCD8 3000BF7B */  lq         $ra, 0x30($sp)
    /* 13EC5C 0023DCDC 2000B27B */  lq         $s2, 0x20($sp)
    /* 13EC60 0023DCE0 1000B17B */  lq         $s1, 0x10($sp)
    /* 13EC64 0023DCE4 0000B07B */  lq         $s0, 0x0($sp)
    /* 13EC68 0023DCE8 0800E003 */  jr         $ra
    /* 13EC6C 0023DCEC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023DBE0
