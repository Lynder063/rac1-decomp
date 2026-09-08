.align 3
nonmatching func_0011BEB8, 0x8C

glabel func_0011BEB8
    /* 1CE38 0011BEB8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 1CE3C 0011BEBC 1300023C */  lui        $v0, %hi(D_0012FCEC)
    /* 1CE40 0011BEC0 3000B3FF */  sd         $s3, 0x30($sp)
    /* 1CE44 0011BEC4 1600033C */  lui        $v1, %hi(D_001580A8)
    /* 1CE48 0011BEC8 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1CE4C 0011BECC ECFC5324 */  addiu      $s3, $v0, %lo(D_0012FCEC)
    /* 1CE50 0011BED0 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1CE54 0011BED4 A8807124 */  addiu      $s1, $v1, %lo(D_001580A8)
    /* 1CE58 0011BED8 4000BFFF */  sd         $ra, 0x40($sp)
    /* 1CE5C 0011BEDC 2D900000 */  daddu      $s2, $zero, $zero
    /* 1CE60 0011BEE0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1CE64 0011BEE4 2D202002 */  daddu      $a0, $s1, $zero
    /* 1CE68 0011BEE8 2D286002 */  daddu      $a1, $s3, $zero
    /* 1CE6C 0011BEEC 6D54040C */  jal        func_001151B4
    /* 1CE70 0011BEF0 04000624 */   addiu     $a2, $zero, 0x4
    /* 1CE74 0011BEF4 0B004010 */  beqz       $v0, .L0011BF24
    /* 1CE78 0011BEF8 1300103C */   lui       $s0, %hi(D_0012FDA8)
    /* 1CE7C 0011BEFC 2D202002 */  daddu      $a0, $s1, $zero
    /* 1CE80 0011BF00 A8FD058E */  lw         $a1, %lo(D_0012FDA8)($s0)
    /* 1CE84 0011BF04 6D54040C */  jal        func_001151B4
    /* 1CE88 0011BF08 04000624 */   addiu     $a2, $zero, 0x4
    /* 1CE8C 0011BF0C 05004010 */  beqz       $v0, .L0011BF24
    /* 1CE90 0011BF10 A8FD058E */   lw        $a1, %lo(D_0012FDA8)($s0)
    /* 1CE94 0011BF14 2D206002 */  daddu      $a0, $s3, $zero
    /* 1CE98 0011BF18 6D54040C */  jal        func_001151B4
    /* 1CE9C 0011BF1C 04000624 */   addiu     $a2, $zero, 0x4
    /* 1CEA0 0011BF20 2B900200 */  sltu       $s2, $zero, $v0
.align 2
  .L0011BF24:
    /* 1CEA4 0011BF24 2D104002 */  daddu      $v0, $s2, $zero
    /* 1CEA8 0011BF28 4000BFDF */  ld         $ra, 0x40($sp)
    /* 1CEAC 0011BF2C 3000B3DF */  ld         $s3, 0x30($sp)
    /* 1CEB0 0011BF30 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1CEB4 0011BF34 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1CEB8 0011BF38 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1CEBC 0011BF3C 0800E003 */  jr         $ra
    /* 1CEC0 0011BF40 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0011BEB8
    /* 1CEC4 0011BF44 00000000 */  nop
