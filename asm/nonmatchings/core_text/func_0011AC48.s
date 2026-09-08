.align 3
/* Handwritten function */
nonmatching func_0011AC48, 0x128

glabel func_0011AC48
    /* 1BBC8 0011AC48 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 1BBCC 0011AC4C 7000B0FF */  sd         $s0, 0x70($sp)
    /* 1BBD0 0011AC50 8000BFFF */  sd         $ra, 0x80($sp)
    /* 1BBD4 0011AC54 6A76040C */  jal        func_0011D9A8
    /* 1BBD8 0011AC58 00000000 */   nop
    /* 1BBDC 0011AC5C 1500033C */  lui        $v1, %hi(D_00154F58)
    /* 1BBE0 0011AC60 584F678C */  lw         $a3, %lo(D_00154F58)($v1)
    /* 1BBE4 0011AC64 584F7024 */  addiu      $s0, $v1, %lo(D_00154F58)
    /* 1BBE8 0011AC68 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1BBEC 0011AC6C FF004530 */  andi       $a1, $v0, 0xFF
    /* 1BBF0 0011AC70 3B00A010 */  beqz       $a1, .L0011AD60
    /* 1BBF4 0011AC74 2D100000 */   daddu     $v0, $zero, $zero
    /* 1BBF8 0011AC78 0F00A224 */  addiu      $v0, $a1, 0xF
    /* 1BBFC 0011AC7C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1BC00 0011AC80 1E00A424 */  addiu      $a0, $a1, 0x1E
    /* 1BC04 0011AC84 2A186200 */  slt        $v1, $v1, $v0
    /* 1BC08 0011AC88 0B204300 */  movn       $a0, $v0, $v1
    /* 1BC0C 0011AC8C 2D30E000 */  daddu      $a2, $a3, $zero
    /* 1BC10 0011AC90 03290400 */  sra        $a1, $a0, 4
    /* 1BC14 0011AC94 0000E0A0 */  sb         $zero, 0x0($a3)
    /* 1BC18 0011AC98 0A00A018 */  blez       $a1, .L0011ACC4
    /* 1BC1C 0011AC9C 2D20A000 */   daddu     $a0, $a1, $zero
    /* 1BC20 0011ACA0 2D18A003 */  daddu      $v1, $sp, $zero
    /* 1BC24 0011ACA4 00000000 */  nop
.align 2
  .L0011ACA8:
    /* 1BC28 0011ACA8 0000C278 */  lq         $v0, 0x0($a2)
    /* 1BC2C 0011ACAC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 1BC30 0011ACB0 1000C624 */  addiu      $a2, $a2, 0x10
    /* 1BC34 0011ACB4 0000627C */  sq         $v0, 0x0($v1)
    /* 1BC38 0011ACB8 10006324 */  addiu      $v1, $v1, 0x10
    /* 1BC3C 0011ACBC FAFF8014 */  bnez       $a0, .L0011ACA8
    /* 1BC40 0011ACC0 00000000 */   nop
.align 2
  .L0011ACC4:
    /* 1BC44 0011ACC4 9463040C */  jal        func_00118E50
    /* 1BC48 0011ACC8 00000000 */   nop
    /* 1BC4C 0011ACCC 0800A38F */  lw         $v1, 0x8($sp)
    /* 1BC50 0011ACD0 13006104 */  bgez       $v1, .L0011AD20
    /* 1BC54 0011ACD4 00000000 */   nop
    /* 1BC58 0011ACD8 0800A28F */  lw         $v0, 0x8($sp)
    /* 1BC5C 0011ACDC FF7F033C */  lui        $v1, (0x7FFFFFFF >> 16)
    /* 1BC60 0011ACE0 FFFF6334 */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
    /* 1BC64 0011ACE4 1000048E */  lw         $a0, 0x10($s0)
    /* 1BC68 0011ACE8 24284300 */  and        $a1, $v0, $v1
    /* 1BC6C 0011ACEC 2A20A400 */  slt        $a0, $a1, $a0
    /* 1BC70 0011ACF0 18008010 */  beqz       $a0, .L0011AD54
    /* 1BC74 0011ACF4 C0100500 */   sll       $v0, $a1, 3
    /* 1BC78 0011ACF8 0C00038E */  lw         $v1, 0xC($s0)
    /* 1BC7C 0011ACFC 21104300 */  addu       $v0, $v0, $v1
    /* 1BC80 0011AD00 0000468C */  lw         $a2, 0x0($v0)
    /* 1BC84 0011AD04 1300C010 */  beqz       $a2, .L0011AD54
    /* 1BC88 0011AD08 00000000 */   nop
    /* 1BC8C 0011AD0C 0400458C */  lw         $a1, 0x4($v0)
    /* 1BC90 0011AD10 09F8C000 */  jalr       $a2
    /* 1BC94 0011AD14 2D20A003 */   daddu     $a0, $sp, $zero
    /* 1BC98 0011AD18 0E000010 */  b          .L0011AD54
    /* 1BC9C 0011AD1C 00000000 */   nop
.align 2
  .L0011AD20:
    /* 1BCA0 0011AD20 0800A58F */  lw         $a1, 0x8($sp)
    /* 1BCA4 0011AD24 1800028E */  lw         $v0, 0x18($s0)
    /* 1BCA8 0011AD28 2A10A200 */  slt        $v0, $a1, $v0
    /* 1BCAC 0011AD2C 09004010 */  beqz       $v0, .L0011AD54
    /* 1BCB0 0011AD30 C0100500 */   sll       $v0, $a1, 3
    /* 1BCB4 0011AD34 1400038E */  lw         $v1, 0x14($s0)
    /* 1BCB8 0011AD38 21104300 */  addu       $v0, $v0, $v1
    /* 1BCBC 0011AD3C 0000468C */  lw         $a2, 0x0($v0)
    /* 1BCC0 0011AD40 0400C010 */  beqz       $a2, .L0011AD54
    /* 1BCC4 0011AD44 00000000 */   nop
    /* 1BCC8 0011AD48 0400458C */  lw         $a1, 0x4($v0)
    /* 1BCCC 0011AD4C 09F8C000 */  jalr       $a2
    /* 1BCD0 0011AD50 2D20A003 */   daddu     $a0, $sp, $zero
.align 2
  .L0011AD54:
    /* 1BCD4 0011AD54 0F000000 */  sync
    /* 1BCD8 0011AD58 38000042 */  ei /* handwritten instruction */
    /* 1BCDC 0011AD5C 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0011AD60:
    /* 1BCE0 0011AD60 8000BFDF */  ld         $ra, 0x80($sp)
    /* 1BCE4 0011AD64 7000B0DF */  ld         $s0, 0x70($sp)
    /* 1BCE8 0011AD68 0800E003 */  jr         $ra
    /* 1BCEC 0011AD6C 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_0011AC48
