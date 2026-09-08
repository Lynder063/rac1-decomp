.align 3
nonmatching func_0020D678, 0x58

glabel func_0020D678
    /* 10E5F8 0020D678 1600023C */  lui        $v0, %hi(D_0016001C)
    /* 10E5FC 0020D67C 1C00428C */  lw         $v0, %lo(D_0016001C)($v0)
    /* 10E600 0020D680 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 10E604 0020D684 2D188000 */  daddu      $v1, $a0, $zero
    /* 10E608 0020D688 2B106200 */  sltu       $v0, $v1, $v0
    /* 10E60C 0020D68C 03004010 */  beqz       $v0, .L0020D69C
    /* 10E610 0020D690 0000BF7F */   sq        $ra, 0x0($sp)
    /* 10E614 0020D694 02000010 */  b          .L0020D6A0
    /* 10E618 0020D698 FD000224 */   addiu     $v0, $zero, 0xFD
.align 2
  .L0020D69C:
    /* 10E61C 0020D69C FE000224 */  addiu      $v0, $zero, 0xFE
.align 2
  .L0020D6A0:
    /* 10E620 0020D6A0 200062A0 */  sb         $v0, 0x20($v1)
    /* 10E624 0020D6A4 1600023C */  lui        $v0, %hi(D_0015F6F0)
    /* 10E628 0020D6A8 F0F6428C */  lw         $v0, %lo(D_0015F6F0)($v0)
    /* 10E62C 0020D6AC 8080053C */  lui        $a1, (0x80807F7F >> 16)
    /* 10E630 0020D6B0 2D206000 */  daddu      $a0, $v1, $zero
    /* 10E634 0020D6B4 7F7FA534 */  ori        $a1, $a1, (0x80807F7F & 0xFFFF)
    /* 10E638 0020D6B8 02004224 */  addiu      $v0, $v0, 0x2
    /* 10E63C 0020D6BC 9C3A080C */  jal        func_0020EA70
    /* 10E640 0020D6C0 380062FC */   sd        $v0, 0x38($v1)
    /* 10E644 0020D6C4 0000BF7B */  lq         $ra, 0x0($sp)
    /* 10E648 0020D6C8 0800E003 */  jr         $ra
    /* 10E64C 0020D6CC 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0020D678
