.align 3
nonmatching func_0012AC80, 0x88

glabel func_0012AC80
    /* 2BC00 0012AC80 2D38A000 */  daddu      $a3, $a1, $zero
    /* 2BC04 0012AC84 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2BC08 0012AC88 2D180000 */  daddu      $v1, $zero, $zero
    /* 2BC0C 0012AC8C 0A00822C */  sltiu      $v0, $a0, 0xA
    /* 2BC10 0012AC90 1A004010 */  beqz       $v0, .L0012ACFC
    /* 2BC14 0012AC94 2D280000 */   daddu     $a1, $zero, $zero
    /* 2BC18 0012AC98 1300083C */  lui        $t0, %hi(D_00132FD8)
    /* 2BC1C 0012AC9C 00310400 */  sll        $a2, $a0, 4
    /* 2BC20 0012ACA0 D82F0225 */  addiu      $v0, $t0, %lo(D_00132FD8)
    /* 2BC24 0012ACA4 FFFF0434 */  ori        $a0, $zero, 0xFFFF
    /* 2BC28 0012ACA8 38260400 */  dsll       $a0, $a0, 24
    /* 2BC2C 0012ACAC 21104600 */  addu       $v0, $v0, $a2
    /* 2BC30 0012ACB0 080043DC */  ld         $v1, 0x8($v0)
    /* 2BC34 0012ACB4 09006410 */  beq        $v1, $a0, .L0012ACDC
    /* 2BC38 0012ACB8 2B108300 */   sltu      $v0, $a0, $v1
    /* 2BC3C 0012ACBC 0A004054 */  bnel       $v0, $zero, .L0012ACE8
    /* 2BC40 0012ACC0 2D280000 */   daddu     $a1, $zero, $zero
    /* 2BC44 0012ACC4 00FF0234 */  ori        $v0, $zero, 0xFF00
    /* 2BC48 0012ACC8 38160200 */  dsll       $v0, $v0, 24
    /* 2BC4C 0012ACCC 05006210 */  beq        $v1, $v0, .L0012ACE4
    /* 2BC50 0012ACD0 D82F0225 */   addiu     $v0, $t0, %lo(D_00132FD8)
    /* 2BC54 0012ACD4 06000010 */  b          .L0012ACF0
    /* 2BC58 0012ACD8 1420A700 */   dsllv     $a0, $a3, $a1
.align 2
  .L0012ACDC:
    /* 2BC5C 0012ACDC 02000010 */  b          .L0012ACE8
    /* 2BC60 0012ACE0 18000524 */   addiu     $a1, $zero, 0x18
.align 2
  .L0012ACE4:
    /* 2BC64 0012ACE4 20000524 */  addiu      $a1, $zero, 0x20
.align 2
  .L0012ACE8:
    /* 2BC68 0012ACE8 D82F0225 */  addiu      $v0, $t0, %lo(D_00132FD8)
    /* 2BC6C 0012ACEC 1420A700 */  dsllv      $a0, $a3, $a1
.align 2
  .L0012ACF0:
    /* 2BC70 0012ACF0 2110C200 */  addu       $v0, $a2, $v0
    /* 2BC74 0012ACF4 000043DC */  ld         $v1, 0x0($v0)
    /* 2BC78 0012ACF8 25186400 */  or         $v1, $v1, $a0
.align 2
  .L0012ACFC:
    /* 2BC7C 0012ACFC 2D106000 */  daddu      $v0, $v1, $zero
    /* 2BC80 0012AD00 0800E003 */  jr         $ra
    /* 2BC84 0012AD04 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012AC80
