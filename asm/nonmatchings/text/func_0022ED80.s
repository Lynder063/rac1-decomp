.align 3
nonmatching func_0022ED80, 0xA4

glabel func_0022ED80
    /* 12FD00 0022ED80 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 12FD04 0022ED84 1000B17F */  sq         $s1, 0x10($sp)
    /* 12FD08 0022ED88 0000B07F */  sq         $s0, 0x0($sp)
    /* 12FD0C 0022ED8C 2D888000 */  daddu      $s1, $a0, $zero
    /* 12FD10 0022ED90 2000BF7F */  sq         $ra, 0x20($sp)
    /* 12FD14 0022ED94 2D80C000 */  daddu      $s0, $a2, $zero
    /* 12FD18 0022ED98 1D000012 */  beqz       $s0, .L0022EE10
    /* 12FD1C 0022ED9C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 12FD20 0022EDA0 2400028E */  lw         $v0, 0x24($s0)
    /* 12FD24 0022EDA4 1A004050 */  beql       $v0, $zero, .L0022EE10
    /* 12FD28 0022EDA8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 12FD2C 0022EDAC 2800438C */  lw         $v1, 0x28($v0)
    /* 12FD30 0022EDB0 03006054 */  bnel       $v1, $zero, .L0022EDC0
    /* 12FD34 0022EDB4 0D004290 */   lbu       $v0, 0xD($v0)
.align 2
  .L0022EDB8:
    /* 12FD38 0022EDB8 15000010 */  b          .L0022EE10
    /* 12FD3C 0022EDBC FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0022EDC0:
    /* 12FD40 0022EDC0 2A102202 */  slt        $v0, $s1, $v0
    /* 12FD44 0022EDC4 00000000 */  nop
    /* 12FD48 0022EDC8 00000000 */  nop
    /* 12FD4C 0022EDCC FAFF4010 */  beqz       $v0, .L0022EDB8
    /* 12FD50 0022EDD0 40211100 */   sll       $a0, $s1, 5
    /* 12FD54 0022EDD4 2D300002 */  daddu      $a2, $s0, $zero
    /* 12FD58 0022EDD8 21206400 */  addu       $a0, $v1, $a0
    /* 12FD5C 0022EDDC 2D380000 */  daddu      $a3, $zero, $zero
    /* 12FD60 0022EDE0 C2BA080C */  jal        func_0022EB08
    /* 12FD64 0022EDE4 00040824 */   addiu     $t0, $zero, 0x400
    /* 12FD68 0022EDE8 2D204000 */  daddu      $a0, $v0, $zero
    /* 12FD6C 0022EDEC 07008004 */  bltz       $a0, .L0022EE0C
    /* 12FD70 0022EDF0 70000324 */   addiu     $v1, $zero, 0x70
    /* 12FD74 0022EDF4 1400023C */  lui        $v0, %hi(D_0013E650)
    /* 12FD78 0022EDF8 18188300 */  mult       $v1, $a0, $v1
    /* 12FD7C 0022EDFC 50E64224 */  addiu      $v0, $v0, %lo(D_0013E650)
    /* 12FD80 0022EE00 21186200 */  addu       $v1, $v1, $v0
    /* 12FD84 0022EE04 7E0071A4 */  sh         $s1, 0x7E($v1)
    /* 12FD88 0022EE08 880070AC */  sw         $s0, 0x88($v1)
.align 2
  .L0022EE0C:
    /* 12FD8C 0022EE0C 2D108000 */  daddu      $v0, $a0, $zero
.align 2
  .L0022EE10:
    /* 12FD90 0022EE10 2000BF7B */  lq         $ra, 0x20($sp)
    /* 12FD94 0022EE14 1000B17B */  lq         $s1, 0x10($sp)
    /* 12FD98 0022EE18 0000B07B */  lq         $s0, 0x0($sp)
    /* 12FD9C 0022EE1C 0800E003 */  jr         $ra
    /* 12FDA0 0022EE20 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0022ED80
    /* 12FDA4 0022EE24 00000000 */  nop
