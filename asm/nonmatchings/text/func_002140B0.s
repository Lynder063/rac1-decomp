.align 3
nonmatching func_002140B0, 0x3C

glabel func_002140B0
    /* 115030 002140B0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 115034 002140B4 0000B07F */  sq         $s0, 0x0($sp)
    /* 115038 002140B8 1000BF7F */  sq         $ra, 0x10($sp)
    /* 11503C 002140BC 3658040C */  jal        func_001160D8
    /* 115040 002140C0 2D808000 */   daddu     $s0, $a0, $zero
    /* 115044 002140C4 03140200 */  sra        $v0, $v0, 16
    /* 115048 002140C8 01000052 */  beql       $s0, $zero, .L002140D0
    /* 11504C 002140CC CD010000 */   break     0, 7
.align 2
  .L002140D0:
    /* 115050 002140D0 FF7F4230 */  andi       $v0, $v0, 0x7FFF
    /* 115054 002140D4 1000BF7B */  lq         $ra, 0x10($sp)
    /* 115058 002140D8 1A005000 */  div        $zero, $v0, $s0
    /* 11505C 002140DC 0000B07B */  lq         $s0, 0x0($sp)
    /* 115060 002140E0 10100000 */  mfhi       $v0
    /* 115064 002140E4 0800E003 */  jr         $ra
    /* 115068 002140E8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_002140B0
    /* 11506C 002140EC 00000000 */  nop
