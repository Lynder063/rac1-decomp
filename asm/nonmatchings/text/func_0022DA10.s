.align 3
nonmatching func_0022DA10, 0xEC

glabel func_0022DA10
    /* 12E990 0022DA10 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 12E994 0022DA14 0000B07F */  sq         $s0, 0x0($sp)
    /* 12E998 0022DA18 3000B6E7 */  swc1       $f22, 0x30($sp)
    /* 12E99C 0022DA1C 2D808000 */  daddu      $s0, $a0, $zero
    /* 12E9A0 0022DA20 2800B5E7 */  swc1       $f21, 0x28($sp)
    /* 12E9A4 0022DA24 866D0046 */  mov.s      $f22, $f13
    /* 12E9A8 0022DA28 2000B4E7 */  swc1       $f20, 0x20($sp)
    /* 12E9AC 0022DA2C 46650046 */  mov.s      $f21, $f12
    /* 12E9B0 0022DA30 1000BF7F */  sq         $ra, 0x10($sp)
    /* 12E9B4 0022DA34 19000292 */  lbu        $v0, 0x19($s0)
    /* 12E9B8 0022DA38 01004230 */  andi       $v0, $v0, 0x1
    /* 12E9BC 0022DA3C 12004010 */  beqz       $v0, .L0022DA88
    /* 12E9C0 0022DA40 06750046 */   mov.s     $f20, $f14
    /* 12E9C4 0022DA44 36A81646 */  c.le.s     $f21, $f22
    /* 12E9C8 0022DA48 00000000 */  nop
    /* 12E9CC 0022DA4C 24000345 */  bc1tl      .L0022DAE0
    /* 12E9D0 0022DA50 0C00028E */   lw        $v0, 0xC($s0)
    /* 12E9D4 0022DA54 36A01546 */  c.le.s     $f20, $f21
    /* 12E9D8 0022DA58 00000000 */  nop
    /* 12E9DC 0022DA5C 20000345 */  bc1tl      .L0022DAE0
    /* 12E9E0 0022DA60 0800028E */   lw        $v0, 0x8($s0)
    /* 12E9E4 0022DA64 0C00028E */  lw         $v0, 0xC($s0)
    /* 12E9E8 0022DA68 0800048E */  lw         $a0, 0x8($s0)
    /* 12E9EC 0022DA6C 22EA070C */  jal        func_001FA888
    /* 12E9F0 0022DA70 23204400 */   subu      $a0, $v0, $a0
    /* 12E9F4 0022DA74 01A31546 */  sub.s      $f12, $f20, $f21
    /* 12E9F8 0022DA78 41A01646 */  sub.s      $f1, $f20, $f22
    /* 12E9FC 0022DA7C 02630C46 */  mul.s      $f12, $f12, $f12
    /* 12EA00 0022DA80 12000010 */  b          .L0022DACC
    /* 12EA04 0022DA84 42080146 */   mul.s     $f1, $f1, $f1
.align 2
  .L0022DA88:
    /* 12EA08 0022DA88 36A81646 */  c.le.s     $f21, $f22
    /* 12EA0C 0022DA8C 00000000 */  nop
    /* 12EA10 0022DA90 03000045 */  bc1f       .L0022DAA0
    /* 12EA14 0022DA94 00000000 */   nop
    /* 12EA18 0022DA98 11000010 */  b          .L0022DAE0
    /* 12EA1C 0022DA9C 0C00028E */   lw        $v0, 0xC($s0)
.align 2
  .L0022DAA0:
    /* 12EA20 0022DAA0 36A01546 */  c.le.s     $f20, $f21
    /* 12EA24 0022DAA4 00000000 */  nop
    /* 12EA28 0022DAA8 03000245 */  bc1fl      .L0022DAB8
    /* 12EA2C 0022DAAC 0C00028E */   lw        $v0, 0xC($s0)
    /* 12EA30 0022DAB0 0B000010 */  b          .L0022DAE0
    /* 12EA34 0022DAB4 0800028E */   lw        $v0, 0x8($s0)
.align 2
  .L0022DAB8:
    /* 12EA38 0022DAB8 0800048E */  lw         $a0, 0x8($s0)
    /* 12EA3C 0022DABC 22EA070C */  jal        func_001FA888
    /* 12EA40 0022DAC0 23204400 */   subu      $a0, $v0, $a0
    /* 12EA44 0022DAC4 01A31546 */  sub.s      $f12, $f20, $f21
    /* 12EA48 0022DAC8 41A01646 */  sub.s      $f1, $f20, $f22
.align 2
  .L0022DACC:
    /* 12EA4C 0022DACC 02630046 */  mul.s      $f12, $f12, $f0
    /* 12EA50 0022DAD0 26EA070C */  jal        func_001FA898
    /* 12EA54 0022DAD4 03630146 */   div.s     $f12, $f12, $f1
    /* 12EA58 0022DAD8 0800038E */  lw         $v1, 0x8($s0)
    /* 12EA5C 0022DADC 21106200 */  addu       $v0, $v1, $v0
.align 2
  .L0022DAE0:
    /* 12EA60 0022DAE0 1000BF7B */  lq         $ra, 0x10($sp)
    /* 12EA64 0022DAE4 0000B07B */  lq         $s0, 0x0($sp)
    /* 12EA68 0022DAE8 3000B6C7 */  lwc1       $f22, 0x30($sp)
    /* 12EA6C 0022DAEC 2800B5C7 */  lwc1       $f21, 0x28($sp)
    /* 12EA70 0022DAF0 2000B4C7 */  lwc1       $f20, 0x20($sp)
    /* 12EA74 0022DAF4 0800E003 */  jr         $ra
    /* 12EA78 0022DAF8 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0022DA10
    /* 12EA7C 0022DAFC 00000000 */  nop
