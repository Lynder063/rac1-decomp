.align 3
nonmatching func_001F4A00, 0x78

glabel func_001F4A00
    /* F5980 001F4A00 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* F5984 001F4A04 1600023C */  lui        $v0, %hi(D_0015F564)
    /* F5988 001F4A08 64F5428C */  lw         $v0, %lo(D_0015F564)($v0)
    /* F598C 001F4A0C 0000B07F */  sq         $s0, 0x0($sp)
    /* F5990 001F4A10 3000BF7F */  sq         $ra, 0x30($sp)
    /* F5994 001F4A14 2D800000 */  daddu      $s0, $zero, $zero
    /* F5998 001F4A18 2000B27F */  sq         $s2, 0x20($sp)
    /* F599C 001F4A1C 10004018 */  blez       $v0, .L001F4A60
    /* F59A0 001F4A20 1000B17F */   sq        $s1, 0x10($sp)
    /* F59A4 001F4A24 1900033C */  lui        $v1, %hi(D_0018DC40)
    /* F59A8 001F4A28 1900023C */  lui        $v0, %hi(D_0018DD40)
    /* F59AC 001F4A2C 40DD5224 */  addiu      $s2, $v0, %lo(D_0018DD40)
    /* F59B0 001F4A30 40DC7124 */  addiu      $s1, $v1, %lo(D_0018DC40)
    /* F59B4 001F4A34 0000238E */  lw         $v1, 0x0($s1)
.align 2
  .L001F4A38:
    /* F59B8 001F4A38 01001026 */  addiu      $s0, $s0, 0x1
    /* F59BC 001F4A3C 0000448E */  lw         $a0, 0x0($s2)
    /* F59C0 001F4A40 04003126 */  addiu      $s1, $s1, 0x4
    /* F59C4 001F4A44 09F86000 */  jalr       $v1
    /* F59C8 001F4A48 04005226 */   addiu     $s2, $s2, 0x4
    /* F59CC 001F4A4C 1600023C */  lui        $v0, %hi(D_0015F564)
    /* F59D0 001F4A50 64F5428C */  lw         $v0, %lo(D_0015F564)($v0)
    /* F59D4 001F4A54 2A100202 */  slt        $v0, $s0, $v0
    /* F59D8 001F4A58 F7FF4054 */  bnel       $v0, $zero, .L001F4A38
    /* F59DC 001F4A5C 0000238E */   lw        $v1, 0x0($s1)
.align 2
  .L001F4A60:
    /* F59E0 001F4A60 3000BF7B */  lq         $ra, 0x30($sp)
    /* F59E4 001F4A64 2000B27B */  lq         $s2, 0x20($sp)
    /* F59E8 001F4A68 1000B17B */  lq         $s1, 0x10($sp)
    /* F59EC 001F4A6C 0000B07B */  lq         $s0, 0x0($sp)
    /* F59F0 001F4A70 0800E003 */  jr         $ra
    /* F59F4 001F4A74 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001F4A00
