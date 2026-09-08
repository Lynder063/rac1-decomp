.align 3
nonmatching func_0020D9D8, 0x90

glabel func_0020D9D8
    /* 10E958 0020D9D8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 10E95C 0020D9DC 2D188000 */  daddu      $v1, $a0, $zero
    /* 10E960 0020D9E0 2D20A000 */  daddu      $a0, $a1, $zero
    /* 10E964 0020D9E4 1D008010 */  beqz       $a0, .L0020DA5C
    /* 10E968 0020D9E8 0000BF7F */   sq        $ra, 0x0($sp)
    /* 10E96C 0020D9EC 6400628C */  lw         $v0, 0x64($v1)
    /* 10E970 0020D9F0 04004454 */  bnel       $v0, $a0, .L0020DA04
    /* 10E974 0020D9F4 2D184000 */   daddu     $v1, $v0, $zero
    /* 10E978 0020D9F8 0800828C */  lw         $v0, 0x8($a0)
    /* 10E97C 0020D9FC 14000010 */  b          .L0020DA50
    /* 10E980 0020DA00 640062AC */   sw        $v0, 0x64($v1)
.align 2
  .L0020DA04:
    /* 10E984 0020DA04 0800628C */  lw         $v0, 0x8($v1)
    /* 10E988 0020DA08 0D004010 */  beqz       $v0, .L0020DA40
    /* 10E98C 0020DA0C 00000000 */   nop
    /* 10E990 0020DA10 0E004450 */  beql       $v0, $a0, .L0020DA4C
    /* 10E994 0020DA14 0800828C */   lw        $v0, 0x8($a0)
    /* 10E998 0020DA18 0800638C */  lw         $v1, 0x8($v1)
    /* 10E99C 0020DA1C 00000000 */  nop
.align 2
  .L0020DA20:
    /* 10E9A0 0020DA20 0800628C */  lw         $v0, 0x8($v1)
    /* 10E9A4 0020DA24 06004010 */  beqz       $v0, .L0020DA40
    /* 10E9A8 0020DA28 00000000 */   nop
    /* 10E9AC 0020DA2C 00000000 */  nop
    /* 10E9B0 0020DA30 00000000 */  nop
    /* 10E9B4 0020DA34 FAFF4454 */  bnel       $v0, $a0, .L0020DA20
    /* 10E9B8 0020DA38 0800638C */   lw        $v1, 0x8($v1)
    /* 10E9BC 0020DA3C 0800628C */  lw         $v0, 0x8($v1)
.align 2
  .L0020DA40:
    /* 10E9C0 0020DA40 04004414 */  bne        $v0, $a0, .L0020DA54
    /* 10E9C4 0020DA44 2D280000 */   daddu     $a1, $zero, $zero
    /* 10E9C8 0020DA48 0800828C */  lw         $v0, 0x8($a0)
.align 2
  .L0020DA4C:
    /* 10E9CC 0020DA4C 080062AC */  sw         $v0, 0x8($v1)
.align 2
  .L0020DA50:
    /* 10E9D0 0020DA50 2D280000 */  daddu      $a1, $zero, $zero
.align 2
  .L0020DA54:
    /* 10E9D4 0020DA54 6CE6070C */  jal        func_001F99B0
    /* 10E9D8 0020DA58 40000624 */   addiu     $a2, $zero, 0x40
.align 2
  .L0020DA5C:
    /* 10E9DC 0020DA5C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 10E9E0 0020DA60 0800E003 */  jr         $ra
    /* 10E9E4 0020DA64 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0020D9D8
