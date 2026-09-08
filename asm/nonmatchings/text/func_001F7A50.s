.align 3
nonmatching func_001F7A50, 0xEC

glabel func_001F7A50
    /* F89D0 001F7A50 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* F89D4 001F7A54 2000B27F */  sq         $s2, 0x20($sp)
    /* F89D8 001F7A58 1000B17F */  sq         $s1, 0x10($sp)
    /* F89DC 001F7A5C 2D90C000 */  daddu      $s2, $a2, $zero
    /* F89E0 001F7A60 0000B07F */  sq         $s0, 0x0($sp)
    /* F89E4 001F7A64 2D888000 */  daddu      $s1, $a0, $zero
    /* F89E8 001F7A68 4000B4E7 */  swc1       $f20, 0x40($sp)
    /* F89EC 001F7A6C 2D80A000 */  daddu      $s0, $a1, $zero
    /* F89F0 001F7A70 3000BF7F */  sq         $ra, 0x30($sp)
    /* F89F4 001F7A74 04004012 */  beqz       $s2, .L001F7A88
    /* F89F8 001F7A78 06650046 */   mov.s     $f20, $f12
    /* F89FC 001F7A7C 1500023C */  lui        $v0, %hi(D_001519EE)
    /* F8A00 001F7A80 0B000010 */  b          .L001F7AB0
    /* F8A04 001F7A84 EE194384 */   lh        $v1, %lo(D_001519EE)($v0)
.align 2
  .L001F7A88:
    /* F8A08 001F7A88 21183002 */  addu       $v1, $s1, $s0
    /* F8A0C 001F7A8C 10000624 */  addiu      $a2, $zero, 0x10
    /* F8A10 001F7A90 11006428 */  slti       $a0, $v1, 0x11
    /* F8A14 001F7A94 04000224 */  addiu      $v0, $zero, 0x4
    /* F8A18 001F7A98 0A18C400 */  movz       $v1, $a2, $a0
    /* F8A1C 001F7A9C 1600053C */  lui        $a1, %hi(D_0015EF8C)
    /* F8A20 001F7AA0 8CEFA58C */  lw         $a1, %lo(D_0015EF8C)($a1)
    /* F8A24 001F7AA4 04106200 */  sllv       $v0, $v0, $v1
    /* F8A28 001F7AA8 2330A200 */  subu       $a2, $a1, $v0
    /* F8A2C 001F7AAC 431B0600 */  sra        $v1, $a2, 13
.align 2
  .L001F7AB0:
    /* F8A30 001F7AB0 40330300 */  sll        $a2, $v1, 13
    /* F8A34 001F7AB4 2D202002 */  daddu      $a0, $s1, $zero
    /* F8A38 001F7AB8 82ED070C */  jal        func_001FB608
    /* F8A3C 001F7ABC 2D280002 */   daddu     $a1, $s0, $zero
    /* F8A40 001F7AC0 01000424 */  addiu      $a0, $zero, 0x1
    /* F8A44 001F7AC4 00688044 */  mtc1       $zero, $f13
    /* F8A48 001F7AC8 04280402 */  sllv       $a1, $a0, $s0
    /* F8A4C 001F7ACC 0049013C */  lui        $at, (0x49000000 >> 16)
    /* F8A50 001F7AD0 00708144 */  mtc1       $at, $f14
    /* F8A54 001F7AD4 7F43013C */  lui        $at, (0x437F0000 >> 16)
    /* F8A58 001F7AD8 00788144 */  mtc1       $at, $f15
    /* F8A5C 001F7ADC 04202402 */  sllv       $a0, $a0, $s1
    /* F8A60 001F7AE0 06A30046 */  mov.s      $f12, $f20
    /* F8A64 001F7AE4 D8CD070C */  jal        func_001F3760
    /* F8A68 001F7AE8 066C0046 */   mov.s     $f16, $f13
    /* F8A6C 001F7AEC 05004012 */  beqz       $s2, .L001F7B04
    /* F8A70 001F7AF0 47000424 */   addiu     $a0, $zero, 0x47
    /* F8A74 001F7AF4 26D3080C */  jal        func_00234C98
    /* F8A78 001F7AF8 2D280000 */   daddu     $a1, $zero, $zero
    /* F8A7C 001F7AFC 03000010 */  b          .L001F7B0C
    /* F8A80 001F7B00 00000000 */   nop
.align 2
  .L001F7B04:
    /* F8A84 001F7B04 26D3080C */  jal        func_00234C98
    /* F8A88 001F7B08 0300053C */   lui       $a1, (0x30000 >> 16)
.align 2
  .L001F7B0C:
    /* F8A8C 001F7B0C 00800534 */  ori        $a1, $zero, 0x8000
    /* F8A90 001F7B10 382E0500 */  dsll       $a1, $a1, 24
    /* F8A94 001F7B14 4400A534 */  ori        $a1, $a1, 0x44
    /* F8A98 001F7B18 26D3080C */  jal        func_00234C98
    /* F8A9C 001F7B1C 42000424 */   addiu     $a0, $zero, 0x42
    /* F8AA0 001F7B20 3000BF7B */  lq         $ra, 0x30($sp)
    /* F8AA4 001F7B24 2000B27B */  lq         $s2, 0x20($sp)
    /* F8AA8 001F7B28 1000B17B */  lq         $s1, 0x10($sp)
    /* F8AAC 001F7B2C 0000B07B */  lq         $s0, 0x0($sp)
    /* F8AB0 001F7B30 4000B4C7 */  lwc1       $f20, 0x40($sp)
    /* F8AB4 001F7B34 0800E003 */  jr         $ra
    /* F8AB8 001F7B38 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_001F7A50
    /* F8ABC 001F7B3C 00000000 */  nop
