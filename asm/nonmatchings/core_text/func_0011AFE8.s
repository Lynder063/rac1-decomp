.align 3
nonmatching func_0011AFE8, 0xA8

glabel func_0011AFE8
    /* 1BF68 0011AFE8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1BF6C 0011AFEC 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1BF70 0011AFF0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1BF74 0011AFF4 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1BF78 0011AFF8 5876040C */  jal        func_0011D960
    /* 1BF7C 0011AFFC 2D888000 */   daddu     $s1, $a0, $zero
    /* 1BF80 0011B000 0800248E */  lw         $a0, 0x8($s1)
    /* 1BF84 0011B004 2D180000 */  daddu      $v1, $zero, $zero
    /* 1BF88 0011B008 19008018 */  blez       $a0, .L0011B070
    /* 1BF8C 0011B00C 0400308E */   lw        $s0, 0x4($s1)
    /* 1BF90 0011B010 01000524 */  addiu      $a1, $zero, 0x1
    /* 1BF94 0011B014 00000000 */  nop
.align 2
  .L0011B018:
    /* 1BF98 0011B018 1000028E */  lw         $v0, 0x10($s0)
    /* 1BF9C 0011B01C 01004230 */  andi       $v0, $v0, 0x1
    /* 1BFA0 0011B020 10004054 */  bnel       $v0, $zero, .L0011B064
    /* 1BFA4 0011B024 01006324 */   addiu     $v1, $v1, 0x1
    /* 1BFA8 0011B028 00140300 */  sll        $v0, $v1, 16
    /* 1BFAC 0011B02C 05004234 */  ori        $v0, $v0, 0x5
    /* 1BFB0 0011B030 100002AE */  sw         $v0, 0x10($s0)
    /* 1BFB4 0011B034 0000228E */  lw         $v0, 0x0($s1)
    /* 1BFB8 0011B038 01004324 */  addiu      $v1, $v0, 0x1
    /* 1BFBC 0011B03C 04006514 */  bne        $v1, $a1, .L0011B050
    /* 1BFC0 0011B040 000023AE */   sw        $v1, 0x0($s1)
    /* 1BFC4 0011B044 02004224 */  addiu      $v0, $v0, 0x2
    /* 1BFC8 0011B048 01000324 */  addiu      $v1, $zero, 0x1
    /* 1BFCC 0011B04C 000022AE */  sw         $v0, 0x0($s1)
.align 2
  .L0011B050:
    /* 1BFD0 0011B050 140010AE */  sw         $s0, 0x14($s0)
    /* 1BFD4 0011B054 6A76040C */  jal        func_0011D9A8
    /* 1BFD8 0011B058 180003AE */   sw        $v1, 0x18($s0)
    /* 1BFDC 0011B05C 07000010 */  b          .L0011B07C
    /* 1BFE0 0011B060 2D100002 */   daddu     $v0, $s0, $zero
.align 2
  .L0011B064:
    /* 1BFE4 0011B064 2A106400 */  slt        $v0, $v1, $a0
    /* 1BFE8 0011B068 EBFF4014 */  bnez       $v0, .L0011B018
    /* 1BFEC 0011B06C 40001026 */   addiu     $s0, $s0, 0x40
.align 2
  .L0011B070:
    /* 1BFF0 0011B070 6A76040C */  jal        func_0011D9A8
    /* 1BFF4 0011B074 00000000 */   nop
    /* 1BFF8 0011B078 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0011B07C:
    /* 1BFFC 0011B07C 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1C000 0011B080 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1C004 0011B084 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1C008 0011B088 0800E003 */  jr         $ra
    /* 1C00C 0011B08C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0011AFE8
