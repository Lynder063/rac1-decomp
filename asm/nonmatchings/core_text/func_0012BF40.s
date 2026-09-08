.align 3
nonmatching func_0012BF40, 0x114

glabel func_0012BF40
    /* 2CEC0 0012BF40 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2CEC4 0012BF44 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2CEC8 0012BF48 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2CECC 0012BF4C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2CED0 0012BF50 2D980000 */  daddu      $s3, $zero, $zero
    /* 2CED4 0012BF54 4000BFFF */  sd         $ra, 0x40($sp)
    /* 2CED8 0012BF58 2D888000 */  daddu      $s1, $a0, $zero
    /* 2CEDC 0012BF5C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2CEE0 0012BF60 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2CEE4 0012BF64 0400C210 */  beq        $a2, $v0, .L0012BF78
    /* 2CEE8 0012BF68 4000308E */   lw        $s0, 0x40($s1)
    /* 2CEEC 0012BF6C 2A10A600 */  slt        $v0, $a1, $a2
    /* 2CEF0 0012BF70 10004010 */  beqz       $v0, .L0012BFB4
    /* 2CEF4 0012BF74 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L0012BF78:
    /* 2CEF8 0012BF78 0800028E */  lw         $v0, 0x8($s0)
    /* 2CEFC 0012BF7C 04004014 */  bnez       $v0, .L0012BF90
    /* 2CF00 0012BF80 2D200002 */   daddu     $a0, $s0, $zero
    /* 2CF04 0012BF84 080020AE */  sw         $zero, 0x8($s1)
    /* 2CF08 0012BF88 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CF0C 0012BF8C 080002AE */  sw         $v0, 0x8($s0)
.align 2
  .L0012BF90:
    /* 2CF10 0012BF90 A4A5040C */  jal        func_00129690
    /* 2CF14 0012BF94 2D280000 */   daddu     $a1, $zero, $zero
    /* 2CF18 0012BF98 04004010 */  beqz       $v0, .L0012BFAC
    /* 2CF1C 0012BF9C 2D180000 */   daddu     $v1, $zero, $zero
    /* 2CF20 0012BFA0 4CA5040C */  jal        func_00129530
    /* 2CF24 0012BFA4 2D200002 */   daddu     $a0, $s0, $zero
    /* 2CF28 0012BFA8 2B180200 */  sltu       $v1, $zero, $v0
.align 2
  .L0012BFAC:
    /* 2CF2C 0012BFAC 07000010 */  b          .L0012BFCC
    /* 2CF30 0012BFB0 2D906000 */   daddu     $s2, $v1, $zero
.align 2
  .L0012BFB4:
    /* 2CF34 0012BFB4 A4A5040C */  jal        func_00129690
    /* 2CF38 0012BFB8 2D280000 */   daddu     $a1, $zero, $zero
    /* 2CF3C 0012BFBC 01001324 */  addiu      $s3, $zero, 0x1
    /* 2CF40 0012BFC0 2D904000 */  daddu      $s2, $v0, $zero
    /* 2CF44 0012BFC4 32AF040C */  jal        func_0012BCC8
    /* 2CF48 0012BFC8 2D202002 */   daddu     $a0, $s1, $zero
.align 2
  .L0012BFCC:
    /* 2CF4C 0012BFCC 1801058E */  lw         $a1, 0x118($s0)
    /* 2CF50 0012BFD0 2D200002 */  daddu      $a0, $s0, $zero
    /* 2CF54 0012BFD4 80A5040C */  jal        func_00129600
    /* 2CF58 0012BFD8 0400068E */   lw        $a2, 0x4($s0)
    /* 2CF5C 0012BFDC 7401038E */  lw         $v1, 0x174($s0)
    /* 2CF60 0012BFE0 03000224 */  addiu      $v0, $zero, 0x3
    /* 2CF64 0012BFE4 07006250 */  beql       $v1, $v0, .L0012C004
    /* 2CF68 0012BFE8 AC00038E */   lw        $v1, 0xAC($s0)
    /* 2CF6C 0012BFEC 05006056 */  bnel       $s3, $zero, .L0012C004
    /* 2CF70 0012BFF0 AC00038E */   lw        $v1, 0xAC($s0)
    /* 2CF74 0012BFF4 2001028E */  lw         $v0, 0x120($s0)
    /* 2CF78 0012BFF8 0100422C */  sltiu      $v0, $v0, 0x1
    /* 2CF7C 0012BFFC 200102AE */  sw         $v0, 0x120($s0)
    /* 2CF80 0012C000 AC00038E */  lw         $v1, 0xAC($s0)
.align 2
  .L0012C004:
    /* 2CF84 0012C004 1801028E */  lw         $v0, 0x118($s0)
    /* 2CF88 0012C008 23104300 */  subu       $v0, $v0, $v1
    /* 2CF8C 0012C00C 080022AE */  sw         $v0, 0x8($s1)
    /* 2CF90 0012C010 2001038E */  lw         $v1, 0x120($s0)
    /* 2CF94 0012C014 08006014 */  bnez       $v1, .L0012C038
    /* 2CF98 0012C018 2D104002 */   daddu     $v0, $s2, $zero
    /* 2CF9C 0012C01C 1801028E */  lw         $v0, 0x118($s0)
    /* 2CFA0 0012C020 0400038E */  lw         $v1, 0x4($s0)
    /* 2CFA4 0012C024 01004224 */  addiu      $v0, $v0, 0x1
    /* 2CFA8 0012C028 01006324 */  addiu      $v1, $v1, 0x1
    /* 2CFAC 0012C02C 180102AE */  sw         $v0, 0x118($s0)
    /* 2CFB0 0012C030 040003AE */  sw         $v1, 0x4($s0)
    /* 2CFB4 0012C034 2D104002 */  daddu      $v0, $s2, $zero
.align 2
  .L0012C038:
    /* 2CFB8 0012C038 4000BFDF */  ld         $ra, 0x40($sp)
    /* 2CFBC 0012C03C 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2CFC0 0012C040 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2CFC4 0012C044 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2CFC8 0012C048 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2CFCC 0012C04C 0800E003 */  jr         $ra
    /* 2CFD0 0012C050 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012BF40
    /* 2CFD4 0012C054 00000000 */  nop
