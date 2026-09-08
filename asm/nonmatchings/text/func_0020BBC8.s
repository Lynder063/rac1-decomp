.align 3
nonmatching func_0020BBC8, 0xE8

glabel func_0020BBC8
    /* 10CB48 0020BBC8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 10CB4C 0020BBCC 5000B57F */  sq         $s5, 0x50($sp)
    /* 10CB50 0020BBD0 3000B37F */  sq         $s3, 0x30($sp)
    /* 10CB54 0020BBD4 2DA8A000 */  daddu      $s5, $a1, $zero
    /* 10CB58 0020BBD8 2000B27F */  sq         $s2, 0x20($sp)
    /* 10CB5C 0020BBDC 2D988000 */  daddu      $s3, $a0, $zero
    /* 10CB60 0020BBE0 1000B17F */  sq         $s1, 0x10($sp)
    /* 10CB64 0020BBE4 2D900000 */  daddu      $s2, $zero, $zero
    /* 10CB68 0020BBE8 6000BF7F */  sq         $ra, 0x60($sp)
    /* 10CB6C 0020BBEC 4000B47F */  sq         $s4, 0x40($sp)
    /* 10CB70 0020BBF0 0000B07F */  sq         $s0, 0x0($sp)
    /* 10CB74 0020BBF4 0000C28C */  lw         $v0, 0x0($a2)
    /* 10CB78 0020BBF8 1A004010 */  beqz       $v0, .L0020BC64
    /* 10CB7C 0020BBFC 08007126 */   addiu     $s1, $s3, 0x8
    /* 10CB80 0020BC00 2D80C000 */  daddu      $s0, $a2, $zero
    /* 10CB84 0020BC04 FCFF1424 */  addiu      $s4, $zero, -0x4
.align 2
  .L0020BC08:
    /* 10CB88 0020BC08 0800028E */  lw         $v0, 0x8($s0)
    /* 10CB8C 0020BC0C 08005226 */  addiu      $s2, $s2, 0x8
    /* 10CB90 0020BC10 0000038E */  lw         $v1, 0x0($s0)
    /* 10CB94 0020BC14 0400058E */  lw         $a1, 0x4($s0)
    /* 10CB98 0020BC18 000022AE */  sw         $v0, 0x0($s1)
    /* 10CB9C 0020BC1C 1828A502 */  mult       $a1, $s5, $a1
    /* 10CBA0 0020BC20 0400028E */  lw         $v0, 0x4($s0)
    /* 10CBA4 0020BC24 040022AE */  sw         $v0, 0x4($s1)
    /* 10CBA8 0020BC28 08003126 */  addiu      $s1, $s1, 0x8
    /* 10CBAC 0020BC2C 21286500 */  addu       $a1, $v1, $a1
    /* 10CBB0 0020BC30 0400068E */  lw         $a2, 0x4($s0)
    /* 10CBB4 0020BC34 80E6070C */  jal        func_001F9A00
    /* 10CBB8 0020BC38 2D202002 */   daddu     $a0, $s1, $zero
    /* 10CBBC 0020BC3C 0400028E */  lw         $v0, 0x4($s0)
    /* 10CBC0 0020BC40 10001026 */  addiu      $s0, $s0, 0x10
    /* 10CBC4 0020BC44 21882202 */  addu       $s1, $s1, $v0
    /* 10CBC8 0020BC48 21904202 */  addu       $s2, $s2, $v0
    /* 10CBCC 0020BC4C 03002326 */  addiu      $v1, $s1, 0x3
    /* 10CBD0 0020BC50 03004226 */  addiu      $v0, $s2, 0x3
    /* 10CBD4 0020BC54 0000048E */  lw         $a0, 0x0($s0)
    /* 10CBD8 0020BC58 24887400 */  and        $s1, $v1, $s4
    /* 10CBDC 0020BC5C EAFF8014 */  bnez       $a0, .L0020BC08
    /* 10CBE0 0020BC60 24905400 */   and       $s2, $v0, $s4
.align 2
  .L0020BC64:
    /* 10CBE4 0020BC64 08005226 */  addiu      $s2, $s2, 0x8
    /* 10CBE8 0020BC68 040020AE */  sw         $zero, 0x4($s1)
    /* 10CBEC 0020BC6C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 10CBF0 0020BC70 08006426 */  addiu      $a0, $s3, 0x8
    /* 10CBF4 0020BC74 2D284002 */  daddu      $a1, $s2, $zero
    /* 10CBF8 0020BC78 C42E080C */  jal        func_0020BB10
    /* 10CBFC 0020BC7C 000022AE */   sw        $v0, 0x0($s1)
    /* 10CC00 0020BC80 040062AE */  sw         $v0, 0x4($s3)
    /* 10CC04 0020BC84 000072AE */  sw         $s2, 0x0($s3)
    /* 10CC08 0020BC88 08004226 */  addiu      $v0, $s2, 0x8
    /* 10CC0C 0020BC8C 6000BF7B */  lq         $ra, 0x60($sp)
    /* 10CC10 0020BC90 5000B57B */  lq         $s5, 0x50($sp)
    /* 10CC14 0020BC94 4000B47B */  lq         $s4, 0x40($sp)
    /* 10CC18 0020BC98 3000B37B */  lq         $s3, 0x30($sp)
    /* 10CC1C 0020BC9C 2000B27B */  lq         $s2, 0x20($sp)
    /* 10CC20 0020BCA0 1000B17B */  lq         $s1, 0x10($sp)
    /* 10CC24 0020BCA4 0000B07B */  lq         $s0, 0x0($sp)
    /* 10CC28 0020BCA8 0800E003 */  jr         $ra
    /* 10CC2C 0020BCAC 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0020BBC8
