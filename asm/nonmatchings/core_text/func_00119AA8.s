.align 3
nonmatching func_00119AA8, 0x150

glabel func_00119AA8
    /* 1AA28 00119AA8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 1AA2C 00119AAC 5000B5FF */  sd         $s5, 0x50($sp)
    /* 1AA30 00119AB0 4000B4FF */  sd         $s4, 0x40($sp)
    /* 1AA34 00119AB4 1500153C */  lui        $s5, %hi(D_00154B50)
    /* 1AA38 00119AB8 3000B3FF */  sd         $s3, 0x30($sp)
    /* 1AA3C 00119ABC 2DA00000 */  daddu      $s4, $zero, $zero
    /* 1AA40 00119AC0 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1AA44 00119AC4 504BB326 */  addiu      $s3, $s5, %lo(D_00154B50)
    /* 1AA48 00119AC8 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1AA4C 00119ACC 2D90A000 */  daddu      $s2, $a1, $zero
    /* 1AA50 00119AD0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1AA54 00119AD4 2D880000 */  daddu      $s1, $zero, $zero
    /* 1AA58 00119AD8 6000BFFF */  sd         $ra, 0x60($sp)
    /* 1AA5C 00119ADC 2D808000 */  daddu      $s0, $a0, $zero
    /* 1AA60 00119AE0 0C00628E */  lw         $v0, 0xC($s3)
    /* 1AA64 00119AE4 3B004014 */  bnez       $v0, .L00119BD4
    /* 1AA68 00119AE8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1AA6C 00119AEC 5876040C */  jal        func_0011D960
    /* 1AA70 00119AF0 00000000 */   nop
    /* 1AA74 00119AF4 1500023C */  lui        $v0, %hi(D_00154B80)
    /* 1AA78 00119AF8 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* 1AA7C 00119AFC 804B4224 */  addiu      $v0, $v0, %lo(D_00154B80)
    /* 1AA80 00119B00 01000424 */  addiu      $a0, $zero, 0x1
    /* 1AA84 00119B04 25304300 */  or         $a2, $v0, $v1
    /* 1AA88 00119B08 0C0064AE */  sw         $a0, 0xC($s3)
    /* 1AA8C 00119B0C 100066AE */  sw         $a2, 0x10($s3)
    /* 1AA90 00119B10 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 1AA94 00119B14 0A000724 */  addiu      $a3, $zero, 0xA
    /* 1AA98 00119B18 0D000524 */  addiu      $a1, $zero, 0xD
    /* 1AA9C 00119B1C 0C00C424 */  addiu      $a0, $a2, 0xC
.align 2
  .L00119B20:
    /* 1AAA0 00119B20 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 1AAA4 00119B24 12004852 */  beql       $s2, $t0, .L00119B70
    /* 1AAA8 00119B28 504BB026 */   addiu     $s0, $s5, %lo(D_00154B50)
    /* 1AAAC 00119B2C 00000282 */  lb         $v0, 0x0($s0)
    /* 1AAB0 00119B30 07004714 */  bne        $v0, $a3, .L00119B50
    /* 1AAB4 00119B34 00000392 */   lbu       $v1, 0x0($s0)
    /* 1AAB8 00119B38 000085A0 */  sb         $a1, 0x0($a0)
    /* 1AABC 00119B3C 01003126 */  addiu      $s1, $s1, 0x1
    /* 1AAC0 00119B40 0001222A */  slti       $v0, $s1, 0x100
    /* 1AAC4 00119B44 09004010 */  beqz       $v0, .L00119B6C
    /* 1AAC8 00119B48 01008424 */   addiu     $a0, $a0, 0x1
    /* 1AACC 00119B4C 00000392 */  lbu        $v1, 0x0($s0)
.align 2
  .L00119B50:
    /* 1AAD0 00119B50 000083A0 */  sb         $v1, 0x0($a0)
    /* 1AAD4 00119B54 01003126 */  addiu      $s1, $s1, 0x1
    /* 1AAD8 00119B58 01001026 */  addiu      $s0, $s0, 0x1
    /* 1AADC 00119B5C 01008424 */  addiu      $a0, $a0, 0x1
    /* 1AAE0 00119B60 0001222A */  slti       $v0, $s1, 0x100
    /* 1AAE4 00119B64 EEFF4014 */  bnez       $v0, .L00119B20
    /* 1AAE8 00119B68 01009426 */   addiu     $s4, $s4, 0x1
.align 2
  .L00119B6C:
    /* 1AAEC 00119B6C 504BB026 */  addiu      $s0, $s5, %lo(D_00154B50)
.align 2
  .L00119B70:
    /* 1AAF0 00119B70 0C002226 */  addiu      $v0, $s1, 0xC
    /* 1AAF4 00119B74 040002AE */  sw         $v0, 0x4($s0)
    /* 1AAF8 00119B78 0400038E */  lw         $v1, 0x4($s0)
    /* 1AAFC 00119B7C 0700C580 */  lb         $a1, 0x7($a2)
    /* 1AB00 00119B80 504BA48E */  lw         $a0, %lo(D_00154B50)($s5)
    /* 1AB04 00119B84 DA65040C */  jal        func_00119768
    /* 1AB08 00119B88 0000C3A4 */   sh        $v1, 0x0($a2)
    /* 1AB0C 00119B8C 05004104 */  bgez       $v0, .L00119BA4
    /* 1AB10 00119B90 00000000 */   nop
    /* 1AB14 00119B94 6A76040C */  jal        func_0011D9A8
    /* 1AB18 00119B98 0C0000AE */   sw        $zero, 0xC($s0)
    /* 1AB1C 00119B9C 0D000010 */  b          .L00119BD4
    /* 1AB20 00119BA0 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00119BA4:
    /* 1AB24 00119BA4 0C00028E */  lw         $v0, 0xC($s0)
    /* 1AB28 00119BA8 07004010 */  beqz       $v0, .L00119BC8
    /* 1AB2C 00119BAC 2D88A002 */   daddu     $s1, $s5, $zero
.align 2
  .L00119BB0:
    /* 1AB30 00119BB0 504B248E */  lw         $a0, %lo(D_00154B50)($s1)
    /* 1AB34 00119BB4 E665040C */  jal        func_00119798
    /* 1AB38 00119BB8 00000000 */   nop
    /* 1AB3C 00119BBC 0C00028E */  lw         $v0, 0xC($s0)
    /* 1AB40 00119BC0 FBFF4014 */  bnez       $v0, .L00119BB0
    /* 1AB44 00119BC4 00000000 */   nop
.align 2
  .L00119BC8:
    /* 1AB48 00119BC8 6A76040C */  jal        func_0011D9A8
    /* 1AB4C 00119BCC 00000000 */   nop
    /* 1AB50 00119BD0 2D108002 */  daddu      $v0, $s4, $zero
.align 2
  .L00119BD4:
    /* 1AB54 00119BD4 6000BFDF */  ld         $ra, 0x60($sp)
    /* 1AB58 00119BD8 5000B5DF */  ld         $s5, 0x50($sp)
    /* 1AB5C 00119BDC 4000B4DF */  ld         $s4, 0x40($sp)
    /* 1AB60 00119BE0 3000B3DF */  ld         $s3, 0x30($sp)
    /* 1AB64 00119BE4 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1AB68 00119BE8 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1AB6C 00119BEC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1AB70 00119BF0 0800E003 */  jr         $ra
    /* 1AB74 00119BF4 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_00119AA8
