.align 3
nonmatching func_001F4BB8, 0x78

glabel func_001F4BB8
    /* F5B38 001F4BB8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* F5B3C 001F4BBC 1600023C */  lui        $v0, %hi(D_0015F568)
    /* F5B40 001F4BC0 68F5428C */  lw         $v0, %lo(D_0015F568)($v0)
    /* F5B44 001F4BC4 0000B07F */  sq         $s0, 0x0($sp)
    /* F5B48 001F4BC8 3000BF7F */  sq         $ra, 0x30($sp)
    /* F5B4C 001F4BCC 2D800000 */  daddu      $s0, $zero, $zero
    /* F5B50 001F4BD0 2000B27F */  sq         $s2, 0x20($sp)
    /* F5B54 001F4BD4 10004018 */  blez       $v0, .L001F4C18
    /* F5B58 001F4BD8 1000B17F */   sq        $s1, 0x10($sp)
    /* F5B5C 001F4BDC 1900033C */  lui        $v1, %hi(D_0018DE40)
    /* F5B60 001F4BE0 1900023C */  lui        $v0, %hi(D_0018DF40)
    /* F5B64 001F4BE4 40DF5224 */  addiu      $s2, $v0, %lo(D_0018DF40)
    /* F5B68 001F4BE8 40DE7124 */  addiu      $s1, $v1, %lo(D_0018DE40)
    /* F5B6C 001F4BEC 0000238E */  lw         $v1, 0x0($s1)
.align 2
  .L001F4BF0:
    /* F5B70 001F4BF0 01001026 */  addiu      $s0, $s0, 0x1
    /* F5B74 001F4BF4 0000448E */  lw         $a0, 0x0($s2)
    /* F5B78 001F4BF8 04003126 */  addiu      $s1, $s1, 0x4
    /* F5B7C 001F4BFC 09F86000 */  jalr       $v1
    /* F5B80 001F4C00 04005226 */   addiu     $s2, $s2, 0x4
    /* F5B84 001F4C04 1600023C */  lui        $v0, %hi(D_0015F568)
    /* F5B88 001F4C08 68F5428C */  lw         $v0, %lo(D_0015F568)($v0)
    /* F5B8C 001F4C0C 2A100202 */  slt        $v0, $s0, $v0
    /* F5B90 001F4C10 F7FF4054 */  bnel       $v0, $zero, .L001F4BF0
    /* F5B94 001F4C14 0000238E */   lw        $v1, 0x0($s1)
.align 2
  .L001F4C18:
    /* F5B98 001F4C18 3000BF7B */  lq         $ra, 0x30($sp)
    /* F5B9C 001F4C1C 2000B27B */  lq         $s2, 0x20($sp)
    /* F5BA0 001F4C20 1000B17B */  lq         $s1, 0x10($sp)
    /* F5BA4 001F4C24 0000B07B */  lq         $s0, 0x0($sp)
    /* F5BA8 001F4C28 0800E003 */  jr         $ra
    /* F5BAC 001F4C2C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001F4BB8
