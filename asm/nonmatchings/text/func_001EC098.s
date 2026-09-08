.align 3
nonmatching func_001EC098, 0x6C

glabel func_001EC098
    /* ED018 001EC098 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* ED01C 001EC09C 1600023C */  lui        $v0, %hi(D_0015F08C)
    /* ED020 001EC0A0 8CF0428C */  lw         $v0, %lo(D_0015F08C)($v0)
    /* ED024 001EC0A4 0000B07F */  sq         $s0, 0x0($sp)
    /* ED028 001EC0A8 2000BF7F */  sq         $ra, 0x20($sp)
    /* ED02C 001EC0AC 2D800000 */  daddu      $s0, $zero, $zero
    /* ED030 001EC0B0 0D004018 */  blez       $v0, .L001EC0E8
    /* ED034 001EC0B4 1000B17F */   sq        $s1, 0x10($sp)
    /* ED038 001EC0B8 1900023C */  lui        $v0, %hi(D_001893B0)
    /* ED03C 001EC0BC B0935124 */  addiu      $s1, $v0, %lo(D_001893B0)
    /* ED040 001EC0C0 0000238E */  lw         $v1, 0x0($s1)
    /* ED044 001EC0C4 00000000 */  nop
.align 2
  .L001EC0C8:
    /* ED048 001EC0C8 01001026 */  addiu      $s0, $s0, 0x1
    /* ED04C 001EC0CC 09F86000 */  jalr       $v1
    /* ED050 001EC0D0 04003126 */   addiu     $s1, $s1, 0x4
    /* ED054 001EC0D4 1600023C */  lui        $v0, %hi(D_0015F08C)
    /* ED058 001EC0D8 8CF0428C */  lw         $v0, %lo(D_0015F08C)($v0)
    /* ED05C 001EC0DC 2A100202 */  slt        $v0, $s0, $v0
    /* ED060 001EC0E0 F9FF4054 */  bnel       $v0, $zero, .L001EC0C8
    /* ED064 001EC0E4 0000238E */   lw        $v1, 0x0($s1)
.align 2
  .L001EC0E8:
    /* ED068 001EC0E8 2000BF7B */  lq         $ra, 0x20($sp)
    /* ED06C 001EC0EC 1000B17B */  lq         $s1, 0x10($sp)
    /* ED070 001EC0F0 0000B07B */  lq         $s0, 0x0($sp)
    /* ED074 001EC0F4 1600013C */  lui        $at, %hi(D_0015F08C)
    /* ED078 001EC0F8 8CF020AC */  sw         $zero, %lo(D_0015F08C)($at)
    /* ED07C 001EC0FC 0800E003 */  jr         $ra
    /* ED080 001EC100 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001EC098
    /* ED084 001EC104 00000000 */  nop
