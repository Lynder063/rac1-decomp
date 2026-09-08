.align 3
nonmatching func_00121D18, 0xA0

glabel func_00121D18
    /* 22C98 00121D18 C0FEBD27 */  addiu      $sp, $sp, -0x140
    /* 22C9C 00121D1C 1500043C */  lui        $a0, %hi(D_00153130)
    /* 22CA0 00121D20 2001B2FF */  sd         $s2, 0x120($sp)
    /* 22CA4 00121D24 01000524 */  addiu      $a1, $zero, 0x1
    /* 22CA8 00121D28 3001BFFF */  sd         $ra, 0x130($sp)
    /* 22CAC 00121D2C 30318424 */  addiu      $a0, $a0, %lo(D_00153130)
    /* 22CB0 00121D30 1001B1FF */  sd         $s1, 0x110($sp)
    /* 22CB4 00121D34 E06F040C */  jal        func_0011BF80
    /* 22CB8 00121D38 0001B0FF */   sd        $s0, 0x100($sp)
    /* 22CBC 00121D3C 2D904000 */  daddu      $s2, $v0, $zero
    /* 22CC0 00121D40 03004106 */  bgez       $s2, .L00121D50
    /* 22CC4 00121D44 2D880000 */   daddu     $s1, $zero, $zero
    /* 22CC8 00121D48 15000010 */  b          .L00121DA0
    /* 22CCC 00121D4C FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00121D50:
    /* 22CD0 00121D50 02000010 */  b          .L00121D5C
    /* 22CD4 00121D54 2D80A003 */   daddu     $s0, $sp, $zero
.align 2
  .L00121D58:
    /* 22CD8 00121D58 01003126 */  addiu      $s1, $s1, 0x1
.align 2
  .L00121D5C:
    /* 22CDC 00121D5C 0001222E */  sltiu      $v0, $s1, 0x100
    /* 22CE0 00121D60 07004010 */  beqz       $v0, .L00121D80
    /* 22CE4 00121D64 2D280002 */   daddu     $a1, $s0, $zero
    /* 22CE8 00121D68 2D204002 */  daddu      $a0, $s2, $zero
    /* 22CEC 00121D6C 7071040C */  jal        func_0011C5C0
    /* 22CF0 00121D70 01000624 */   addiu     $a2, $zero, 0x1
    /* 22CF4 00121D74 00000382 */  lb         $v1, 0x0($s0)
    /* 22CF8 00121D78 F7FF6014 */  bnez       $v1, .L00121D58
    /* 22CFC 00121D7C 01001026 */   addiu     $s0, $s0, 0x1
.align 2
  .L00121D80:
    /* 22D00 00121D80 8270040C */  jal        func_0011C208
    /* 22D04 00121D84 2D204002 */   daddu     $a0, $s2, $zero
    /* 22D08 00121D88 F7FF2426 */  addiu      $a0, $s1, -0x9
    /* 22D0C 00121D8C E048040C */  jal        func_00112380
    /* 22D10 00121D90 2120A403 */   addu      $a0, $sp, $a0
    /* 22D14 00121D94 3101033C */  lui        $v1, (0x1315670 >> 16)
    /* 22D18 00121D98 70566334 */  ori        $v1, $v1, (0x1315670 & 0xFFFF)
    /* 22D1C 00121D9C 2A106200 */  slt        $v0, $v1, $v0
.align 2
  .L00121DA0:
    /* 22D20 00121DA0 3001BFDF */  ld         $ra, 0x130($sp)
    /* 22D24 00121DA4 2001B2DF */  ld         $s2, 0x120($sp)
    /* 22D28 00121DA8 1001B1DF */  ld         $s1, 0x110($sp)
    /* 22D2C 00121DAC 0001B0DF */  ld         $s0, 0x100($sp)
    /* 22D30 00121DB0 0800E003 */  jr         $ra
    /* 22D34 00121DB4 4001BD27 */   addiu     $sp, $sp, 0x140
endlabel func_00121D18
