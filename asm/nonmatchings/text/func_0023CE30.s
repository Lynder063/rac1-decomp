.align 3
nonmatching func_0023CE30, 0x98

glabel func_0023CE30
    /* 13DDB0 0023CE30 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 13DDB4 0023CE34 64000224 */  addiu      $v0, $zero, 0x64
    /* 13DDB8 0023CE38 5000B47F */  sq         $s4, 0x50($sp)
    /* 13DDBC 0023CE3C 4000B37F */  sq         $s3, 0x40($sp)
    /* 13DDC0 0023CE40 2DA00000 */  daddu      $s4, $zero, $zero
    /* 13DDC4 0023CE44 3000B27F */  sq         $s2, 0x30($sp)
    /* 13DDC8 0023CE48 2D98C000 */  daddu      $s3, $a2, $zero
    /* 13DDCC 0023CE4C 2000B17F */  sq         $s1, 0x20($sp)
    /* 13DDD0 0023CE50 C3921300 */  sra        $s2, $s3, 11
    /* 13DDD4 0023CE54 1000B07F */  sq         $s0, 0x10($sp)
    /* 13DDD8 0023CE58 2D888000 */  daddu      $s1, $a0, $zero
    /* 13DDDC 0023CE5C 6000BF7F */  sq         $ra, 0x60($sp)
    /* 13DDE0 0023CE60 2D80E000 */  daddu      $s0, $a3, $zero
    /* 13DDE4 0023CE64 2D30A000 */  daddu      $a2, $a1, $zero
    /* 13DDE8 0023CE68 2D38A003 */  daddu      $a3, $sp, $zero
    /* 13DDEC 0023CE6C 0400248E */  lw         $a0, 0x4($s1)
    /* 13DDF0 0023CE70 2D284002 */  daddu      $a1, $s2, $zero
    /* 13DDF4 0023CE74 0000A2A3 */  sb         $v0, 0x0($sp)
    /* 13DDF8 0023CE78 0100A0A3 */  sb         $zero, 0x1($sp)
    /* 13DDFC 0023CE7C D485040C */  jal        func_00121750
    /* 13DE00 0023CE80 0200A0A3 */   sb        $zero, 0x2($sp)
    /* 13DE04 0023CE84 08000016 */  bnez       $s0, .L0023CEA8
    /* 13DE08 0023CE88 2D108002 */   daddu     $v0, $s4, $zero
    /* 13DE0C 0023CE8C 0400228E */  lw         $v0, 0x4($s1)
    /* 13DE10 0023CE90 2D200000 */  daddu      $a0, $zero, $zero
    /* 13DE14 0023CE94 2DA06002 */  daddu      $s4, $s3, $zero
    /* 13DE18 0023CE98 21105200 */  addu       $v0, $v0, $s2
    /* 13DE1C 0023CE9C CC83040C */  jal        func_00120F30
    /* 13DE20 0023CEA0 040022AE */   sw        $v0, 0x4($s1)
    /* 13DE24 0023CEA4 2D108002 */  daddu      $v0, $s4, $zero
.align 2
  .L0023CEA8:
    /* 13DE28 0023CEA8 6000BF7B */  lq         $ra, 0x60($sp)
    /* 13DE2C 0023CEAC 5000B47B */  lq         $s4, 0x50($sp)
    /* 13DE30 0023CEB0 4000B37B */  lq         $s3, 0x40($sp)
    /* 13DE34 0023CEB4 3000B27B */  lq         $s2, 0x30($sp)
    /* 13DE38 0023CEB8 2000B17B */  lq         $s1, 0x20($sp)
    /* 13DE3C 0023CEBC 1000B07B */  lq         $s0, 0x10($sp)
    /* 13DE40 0023CEC0 0800E003 */  jr         $ra
    /* 13DE44 0023CEC4 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0023CE30
