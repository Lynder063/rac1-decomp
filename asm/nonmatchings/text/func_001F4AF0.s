.align 3
nonmatching func_001F4AF0, 0x78

glabel func_001F4AF0
    /* F5A70 001F4AF0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* F5A74 001F4AF4 1600023C */  lui        $v0, %hi(D_0015F570)
    /* F5A78 001F4AF8 70F5428C */  lw         $v0, %lo(D_0015F570)($v0)
    /* F5A7C 001F4AFC 0000B07F */  sq         $s0, 0x0($sp)
    /* F5A80 001F4B00 3000BF7F */  sq         $ra, 0x30($sp)
    /* F5A84 001F4B04 2D800000 */  daddu      $s0, $zero, $zero
    /* F5A88 001F4B08 2000B27F */  sq         $s2, 0x20($sp)
    /* F5A8C 001F4B0C 10004018 */  blez       $v0, .L001F4B50
    /* F5A90 001F4B10 1000B17F */   sq        $s1, 0x10($sp)
    /* F5A94 001F4B14 1900033C */  lui        $v1, %hi(D_0018E240)
    /* F5A98 001F4B18 1900023C */  lui        $v0, %hi(D_0018E340)
    /* F5A9C 001F4B1C 40E35224 */  addiu      $s2, $v0, %lo(D_0018E340)
    /* F5AA0 001F4B20 40E27124 */  addiu      $s1, $v1, %lo(D_0018E240)
    /* F5AA4 001F4B24 0000238E */  lw         $v1, 0x0($s1)
.align 2
  .L001F4B28:
    /* F5AA8 001F4B28 01001026 */  addiu      $s0, $s0, 0x1
    /* F5AAC 001F4B2C 0000448E */  lw         $a0, 0x0($s2)
    /* F5AB0 001F4B30 04003126 */  addiu      $s1, $s1, 0x4
    /* F5AB4 001F4B34 09F86000 */  jalr       $v1
    /* F5AB8 001F4B38 04005226 */   addiu     $s2, $s2, 0x4
    /* F5ABC 001F4B3C 1600023C */  lui        $v0, %hi(D_0015F570)
    /* F5AC0 001F4B40 70F5428C */  lw         $v0, %lo(D_0015F570)($v0)
    /* F5AC4 001F4B44 2A100202 */  slt        $v0, $s0, $v0
    /* F5AC8 001F4B48 F7FF4054 */  bnel       $v0, $zero, .L001F4B28
    /* F5ACC 001F4B4C 0000238E */   lw        $v1, 0x0($s1)
.align 2
  .L001F4B50:
    /* F5AD0 001F4B50 3000BF7B */  lq         $ra, 0x30($sp)
    /* F5AD4 001F4B54 2000B27B */  lq         $s2, 0x20($sp)
    /* F5AD8 001F4B58 1000B17B */  lq         $s1, 0x10($sp)
    /* F5ADC 001F4B5C 0000B07B */  lq         $s0, 0x0($sp)
    /* F5AE0 001F4B60 0800E003 */  jr         $ra
    /* F5AE4 001F4B64 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001F4AF0
