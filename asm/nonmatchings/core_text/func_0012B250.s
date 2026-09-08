.align 3
nonmatching func_0012B250, 0x6C

glabel func_0012B250
    /* 2C1D0 0012B250 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2C1D4 0012B254 38000524 */  addiu      $a1, $zero, 0x38
    /* 2C1D8 0012B258 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2C1DC 0012B25C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2C1E0 0012B260 2000BFFF */  sd         $ra, 0x20($sp)
    /* 2C1E4 0012B264 D8AA040C */  jal        func_0012AB60
    /* 2C1E8 0012B268 2D808000 */   daddu     $s0, $a0, $zero
    /* 2C1EC 0012B26C 01001124 */  addiu      $s1, $zero, 0x1
    /* 2C1F0 0012B270 2D200002 */  daddu      $a0, $s0, $zero
    /* 2C1F4 0012B274 D8AA040C */  jal        func_0012AB60
    /* 2C1F8 0012B278 28000524 */   addiu     $a1, $zero, 0x28
    /* 2C1FC 0012B27C 06000010 */  b          .L0012B298
    /* 2C200 0012B280 2D200002 */   daddu     $a0, $s0, $zero
    /* 2C204 0012B284 00000000 */  nop
.align 2
  .L0012B288:
    /* 2C208 0012B288 2D200002 */  daddu      $a0, $s0, $zero
    /* 2C20C 0012B28C D8AA040C */  jal        func_0012AB60
    /* 2C210 0012B290 18000524 */   addiu     $a1, $zero, 0x18
    /* 2C214 0012B294 2D200002 */  daddu      $a0, $s0, $zero
.align 2
  .L0012B298:
    /* 2C218 0012B298 AAAA040C */  jal        func_0012AAA8
    /* 2C21C 0012B29C 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C220 0012B2A0 F9FF5110 */  beq        $v0, $s1, .L0012B288
    /* 2C224 0012B2A4 2000BFDF */   ld        $ra, 0x20($sp)
    /* 2C228 0012B2A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C22C 0012B2AC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2C230 0012B2B0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2C234 0012B2B4 0800E003 */  jr         $ra
    /* 2C238 0012B2B8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012B250
    /* 2C23C 0012B2BC 00000000 */  nop
