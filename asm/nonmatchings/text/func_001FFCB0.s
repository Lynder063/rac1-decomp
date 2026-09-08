.align 3
nonmatching func_001FFCB0, 0x80

glabel func_001FFCB0
    /* 100C30 001FFCB0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 100C34 001FFCB4 1A00023C */  lui        $v0, %hi(D_00199C60)
    /* 100C38 001FFCB8 0000BF7F */  sq         $ra, 0x0($sp)
    /* 100C3C 001FFCBC 609C4324 */  addiu      $v1, $v0, %lo(D_00199C60)
    /* 100C40 001FFCC0 2D288000 */  daddu      $a1, $a0, $zero
    /* 100C44 001FFCC4 6400628C */  lw         $v0, 0x64($v1)
    /* 100C48 001FFCC8 0A004510 */  beq        $v0, $a1, .L001FFCF4
    /* 100C4C 001FFCCC 2D200000 */   daddu     $a0, $zero, $zero
    /* 100C50 001FFCD0 64006324 */  addiu      $v1, $v1, 0x64
    /* 100C54 001FFCD4 01008424 */  addiu      $a0, $a0, 0x1
.align 2
  .L001FFCD8:
    /* 100C58 001FFCD8 0D008228 */  slti       $v0, $a0, 0xD
    /* 100C5C 001FFCDC 08004010 */  beqz       $v0, .L001FFD00
    /* 100C60 001FFCE0 90006324 */   addiu     $v1, $v1, 0x90
    /* 100C64 001FFCE4 0000628C */  lw         $v0, 0x0($v1)
    /* 100C68 001FFCE8 00000000 */  nop
    /* 100C6C 001FFCEC FAFF4554 */  bnel       $v0, $a1, .L001FFCD8
    /* 100C70 001FFCF0 01008424 */   addiu     $a0, $a0, 0x1
.align 2
  .L001FFCF4:
    /* 100C74 001FFCF4 0D008228 */  slti       $v0, $a0, 0xD
    /* 100C78 001FFCF8 03004014 */  bnez       $v0, .L001FFD08
    /* 100C7C 001FFCFC FFFF0534 */   ori       $a1, $zero, 0xFFFF
.align 2
  .L001FFD00:
    /* 100C80 001FFD00 08000010 */  b          .L001FFD24
    /* 100C84 001FFD04 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L001FFD08:
    /* 100C88 001FFD08 2D300000 */  daddu      $a2, $zero, $zero
    /* 100C8C 001FFD0C 2D380000 */  daddu      $a3, $zero, $zero
    /* 100C90 001FFD10 2D400000 */  daddu      $t0, $zero, $zero
    /* 100C94 001FFD14 2D480000 */  daddu      $t1, $zero, $zero
    /* 100C98 001FFD18 CEFE070C */  jal        func_001FFB38
    /* 100C9C 001FFD1C 2D500000 */   daddu     $t2, $zero, $zero
    /* 100CA0 001FFD20 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L001FFD24:
    /* 100CA4 001FFD24 0000BF7B */  lq         $ra, 0x0($sp)
    /* 100CA8 001FFD28 0800E003 */  jr         $ra
    /* 100CAC 001FFD2C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001FFCB0
