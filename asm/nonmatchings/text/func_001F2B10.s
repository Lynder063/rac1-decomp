.align 3
nonmatching func_001F2B10, 0xB8

glabel func_001F2B10
    /* F3A90 001F2B10 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* F3A94 001F2B14 00008144 */  mtc1       $at, $f0
    /* F3A98 001F2B18 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* F3A9C 001F2B1C 5000B57F */  sq         $s5, 0x50($sp)
    /* F3AA0 001F2B20 34600046 */  c.lt.s     $f12, $f0
    /* F3AA4 001F2B24 4000B47F */  sq         $s4, 0x40($sp)
    /* F3AA8 001F2B28 3000B37F */  sq         $s3, 0x30($sp)
    /* F3AAC 001F2B2C 2DA0A000 */  daddu      $s4, $a1, $zero
    /* F3AB0 001F2B30 2000B27F */  sq         $s2, 0x20($sp)
    /* F3AB4 001F2B34 2D988000 */  daddu      $s3, $a0, $zero
    /* F3AB8 001F2B38 1000B17F */  sq         $s1, 0x10($sp)
    /* F3ABC 001F2B3C 2DA8C000 */  daddu      $s5, $a2, $zero
    /* F3AC0 001F2B40 0000B07F */  sq         $s0, 0x0($sp)
    /* F3AC4 001F2B44 2D880001 */  daddu      $s1, $t0, $zero
    /* F3AC8 001F2B48 6000BF7F */  sq         $ra, 0x60($sp)
    /* F3ACC 001F2B4C 2D80E000 */  daddu      $s0, $a3, $zero
    /* F3AD0 001F2B50 09000045 */  bc1f       .L001F2B78
    /* F3AD4 001F2B54 2D902001 */   daddu     $s2, $t1, $zero
    /* F3AD8 001F2B58 8ECA070C */  jal        func_001F2A38
    /* F3ADC 001F2B5C 00000000 */   nop
    /* F3AE0 001F2B60 11004014 */  bnez       $v0, .L001F2BA8
    /* F3AE4 001F2B64 6000BF7B */   lq        $ra, 0x60($sp)
    /* F3AE8 001F2B68 2D200002 */  daddu      $a0, $s0, $zero
    /* F3AEC 001F2B6C 2D282002 */  daddu      $a1, $s1, $zero
    /* F3AF0 001F2B70 0A000010 */  b          .L001F2B9C
    /* F3AF4 001F2B74 2D304002 */   daddu     $a2, $s2, $zero
.align 2
  .L001F2B78:
    /* F3AF8 001F2B78 2D200002 */  daddu      $a0, $s0, $zero
    /* F3AFC 001F2B7C 2D282002 */  daddu      $a1, $s1, $zero
    /* F3B00 001F2B80 8ECA070C */  jal        func_001F2A38
    /* F3B04 001F2B84 2D304002 */   daddu     $a2, $s2, $zero
    /* F3B08 001F2B88 07004014 */  bnez       $v0, .L001F2BA8
    /* F3B0C 001F2B8C 6000BF7B */   lq        $ra, 0x60($sp)
    /* F3B10 001F2B90 2D206002 */  daddu      $a0, $s3, $zero
    /* F3B14 001F2B94 2D288002 */  daddu      $a1, $s4, $zero
    /* F3B18 001F2B98 2D30A002 */  daddu      $a2, $s5, $zero
.align 2
  .L001F2B9C:
    /* F3B1C 001F2B9C 8ECA070C */  jal        func_001F2A38
    /* F3B20 001F2BA0 00000000 */   nop
    /* F3B24 001F2BA4 6000BF7B */  lq         $ra, 0x60($sp)
.align 2
  .L001F2BA8:
    /* F3B28 001F2BA8 5000B57B */  lq         $s5, 0x50($sp)
    /* F3B2C 001F2BAC 4000B47B */  lq         $s4, 0x40($sp)
    /* F3B30 001F2BB0 3000B37B */  lq         $s3, 0x30($sp)
    /* F3B34 001F2BB4 2000B27B */  lq         $s2, 0x20($sp)
    /* F3B38 001F2BB8 1000B17B */  lq         $s1, 0x10($sp)
    /* F3B3C 001F2BBC 0000B07B */  lq         $s0, 0x0($sp)
    /* F3B40 001F2BC0 0800E003 */  jr         $ra
    /* F3B44 001F2BC4 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_001F2B10
