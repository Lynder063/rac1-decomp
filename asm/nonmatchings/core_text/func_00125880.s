.align 3
nonmatching func_00125880, 0x704

glabel func_00125880
    /* 26800 00125880 10FFBD27 */  addiu      $sp, $sp, -0xF0
    /* 26804 00125884 40010324 */  addiu      $v1, $zero, 0x140
    /* 26808 00125888 D000BEFF */  sd         $fp, 0xD0($sp)
    /* 2680C 0012588C B000B6FF */  sd         $s6, 0xB0($sp)
    /* 26810 00125890 2DF04001 */  daddu      $fp, $t2, $zero
    /* 26814 00125894 A000B5FF */  sd         $s5, 0xA0($sp)
    /* 26818 00125898 2DB0C000 */  daddu      $s6, $a2, $zero
    /* 2681C 0012589C 9000B4FF */  sd         $s4, 0x90($sp)
    /* 26820 001258A0 2DA8A000 */  daddu      $s5, $a1, $zero
    /* 26824 001258A4 8000B3FF */  sd         $s3, 0x80($sp)
    /* 26828 001258A8 2DA00001 */  daddu      $s4, $t0, $zero
    /* 2682C 001258AC 7000B2FF */  sd         $s2, 0x70($sp)
    /* 26830 001258B0 01001324 */  addiu      $s3, $zero, 0x1
    /* 26834 001258B4 6000B1FF */  sd         $s1, 0x60($sp)
    /* 26838 001258B8 2D902001 */  daddu      $s2, $t1, $zero
    /* 2683C 001258BC 5000B0FF */  sd         $s0, 0x50($sp)
    /* 26840 001258C0 2D888000 */  daddu      $s1, $a0, $zero
    /* 26844 001258C4 E000BFFF */  sd         $ra, 0xE0($sp)
    /* 26848 001258C8 2D800000 */  daddu      $s0, $zero, $zero
    /* 2684C 001258CC C000B7FF */  sd         $s7, 0xC0($sp)
    /* 26850 001258D0 1008228E */  lw         $v0, 0x810($s1)
    /* 26854 001258D4 4000A7AF */  sw         $a3, 0x40($sp)
    /* 26858 001258D8 18204300 */  mult       $a0, $v0, $v1
    /* 2685C 001258DC 0800EC30 */  andi       $t4, $a3, 0x8
    /* 26860 001258E0 21109100 */  addu       $v0, $a0, $s1
    /* 26864 001258E4 05008015 */  bnez       $t4, .L001258FC
    /* 26868 001258E8 BC0640AC */   sw        $zero, 0x6BC($v0)
    /* 2686C 001258EC 5001238E */  lw         $v1, 0x150($s1)
    /* 26870 001258F0 02000224 */  addiu      $v0, $zero, 0x2
    /* 26874 001258F4 1C016214 */  bne        $v1, $v0, .L00125D68
    /* 26878 001258F8 4000A48F */   lw        $a0, 0x40($sp)
.align 2
  .L001258FC:
    /* 2687C 001258FC 7401238E */  lw         $v1, 0x174($s1)
    /* 26880 00125900 03000224 */  addiu      $v0, $zero, 0x3
    /* 26884 00125904 83006214 */  bne        $v1, $v0, .L00125B14
    /* 26888 00125908 02006238 */   xori      $v0, $v1, 0x2
    /* 2688C 0012590C 02000224 */  addiu      $v0, $zero, 0x2
    /* 26890 00125910 04008252 */  beql       $s4, $v0, .L00125924
    /* 26894 00125914 0000428E */   lw        $v0, 0x0($s2)
    /* 26898 00125918 0F008015 */  bnez       $t4, .L00125958
    /* 2689C 0012591C 00000000 */   nop
    /* 268A0 00125920 0000428E */  lw         $v0, 0x0($s2)
.align 2
  .L00125924:
    /* 268A4 00125924 2D202002 */  daddu      $a0, $s1, $zero
    /* 268A8 00125928 0400438E */  lw         $v1, 0x4($s2)
    /* 268AC 0012592C 2D300000 */  daddu      $a2, $zero, $zero
    /* 268B0 00125930 B801258E */  lw         $a1, 0x1B8($s1)
    /* 268B4 00125934 2D380000 */  daddu      $a3, $zero, $zero
    /* 268B8 00125938 0000A2AF */  sw         $v0, 0x0($sp)
    /* 268BC 0012593C 2D400000 */  daddu      $t0, $zero, $zero
    /* 268C0 00125940 0800A3AF */  sw         $v1, 0x8($sp)
    /* 268C4 00125944 10000924 */  addiu      $t1, $zero, 0x10
    /* 268C8 00125948 1000A0AF */  sw         $zero, 0x10($sp)
    /* 268CC 0012594C 2D50A002 */  daddu      $t2, $s5, $zero
    /* 268D0 00125950 FB000010 */  b          .L00125D40
    /* 268D4 00125954 1800A0AF */   sw        $zero, 0x18($sp)
.align 2
  .L00125958:
    /* 268D8 00125958 22009316 */  bne        $s4, $s3, .L001259E4
    /* 268DC 0012595C 2D202002 */   daddu     $a0, $s1, $zero
    /* 268E0 00125960 0400428E */  lw         $v0, 0x4($s2)
    /* 268E4 00125964 0000438E */  lw         $v1, 0x0($s2)
    /* 268E8 00125968 2D380000 */  daddu      $a3, $zero, $zero
    /* 268EC 0012596C B801258E */  lw         $a1, 0x1B8($s1)
    /* 268F0 00125970 43100200 */  sra        $v0, $v0, 1
    /* 268F4 00125974 0000C68F */  lw         $a2, 0x0($fp)
    /* 268F8 00125978 2D400000 */  daddu      $t0, $zero, $zero
    /* 268FC 0012597C 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26900 00125980 08000924 */  addiu      $t1, $zero, 0x8
    /* 26904 00125984 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26908 00125988 2D50A002 */  daddu      $t2, $s5, $zero
    /* 2690C 0012598C 1000B4AF */  sw         $s4, 0x10($sp)
    /* 26910 00125990 2D58C002 */  daddu      $t3, $s6, $zero
    /* 26914 00125994 E297040C */  jal        func_00125F88
    /* 26918 00125998 1800A0AF */   sw        $zero, 0x18($sp)
    /* 2691C 0012599C 1400428E */  lw         $v0, 0x14($s2)
    /* 26920 001259A0 2D202002 */  daddu      $a0, $s1, $zero
    /* 26924 001259A4 1000438E */  lw         $v1, 0x10($s2)
    /* 26928 001259A8 01000724 */  addiu      $a3, $zero, 0x1
    /* 2692C 001259AC B801258E */  lw         $a1, 0x1B8($s1)
    /* 26930 001259B0 43100200 */  sra        $v0, $v0, 1
    /* 26934 001259B4 0800C68F */  lw         $a2, 0x8($fp)
    /* 26938 001259B8 2D400000 */  daddu      $t0, $zero, $zero
    /* 2693C 001259BC 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26940 001259C0 08000924 */  addiu      $t1, $zero, 0x8
    /* 26944 001259C4 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26948 001259C8 2D50A002 */  daddu      $t2, $s5, $zero
    /* 2694C 001259CC 1000B4AF */  sw         $s4, 0x10($sp)
    /* 26950 001259D0 2D58C002 */  daddu      $t3, $s6, $zero
    /* 26954 001259D4 E297040C */  jal        func_00125F88
    /* 26958 001259D8 1800A0AF */   sw        $zero, 0x18($sp)
    /* 2695C 001259DC E1000010 */  b          .L00125D64
    /* 26960 001259E0 01001024 */   addiu     $s0, $zero, 0x1
.align 2
  .L001259E4:
    /* 26964 001259E4 45008316 */  bne        $s4, $v1, .L00125AFC
    /* 26968 001259E8 1500053C */   lui       $a1, %hi(D_00153810)
    /* 2696C 001259EC 0400488E */  lw         $t0, 0x4($s2)
    /* 26970 001259F0 2D306001 */  daddu      $a2, $t3, $zero
    /* 26974 001259F4 0000478E */  lw         $a3, 0x0($s2)
    /* 26978 001259F8 2D202002 */  daddu      $a0, $s1, $zero
    /* 2697C 001259FC 43400800 */  sra        $t0, $t0, 1
    /* 26980 00125A00 709D040C */  jal        func_001275C0
    /* 26984 00125A04 2000A527 */   addiu     $a1, $sp, 0x20
    /* 26988 00125A08 0400428E */  lw         $v0, 0x4($s2)
    /* 2698C 00125A0C 2D202002 */  daddu      $a0, $s1, $zero
    /* 26990 00125A10 0000438E */  lw         $v1, 0x0($s2)
    /* 26994 00125A14 2D300000 */  daddu      $a2, $zero, $zero
    /* 26998 00125A18 B801258E */  lw         $a1, 0x1B8($s1)
    /* 2699C 00125A1C 43100200 */  sra        $v0, $v0, 1
    /* 269A0 00125A20 0000A3AF */  sw         $v1, 0x0($sp)
    /* 269A4 00125A24 2D380000 */  daddu      $a3, $zero, $zero
    /* 269A8 00125A28 0800A2AF */  sw         $v0, 0x8($sp)
    /* 269AC 00125A2C 2D400000 */  daddu      $t0, $zero, $zero
    /* 269B0 00125A30 1000B3AF */  sw         $s3, 0x10($sp)
    /* 269B4 00125A34 08000924 */  addiu      $t1, $zero, 0x8
    /* 269B8 00125A38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 269BC 00125A3C 2D50A002 */  daddu      $t2, $s5, $zero
    /* 269C0 00125A40 E297040C */  jal        func_00125F88
    /* 269C4 00125A44 2D58C002 */   daddu     $t3, $s6, $zero
    /* 269C8 00125A48 2000A28F */  lw         $v0, 0x20($sp)
    /* 269CC 00125A4C 2D202002 */  daddu      $a0, $s1, $zero
    /* 269D0 00125A50 2400A38F */  lw         $v1, 0x24($sp)
    /* 269D4 00125A54 01000624 */  addiu      $a2, $zero, 0x1
    /* 269D8 00125A58 B801258E */  lw         $a1, 0x1B8($s1)
    /* 269DC 00125A5C 2D380000 */  daddu      $a3, $zero, $zero
    /* 269E0 00125A60 0000A2AF */  sw         $v0, 0x0($sp)
    /* 269E4 00125A64 2D400000 */  daddu      $t0, $zero, $zero
    /* 269E8 00125A68 0800A3AF */  sw         $v1, 0x8($sp)
    /* 269EC 00125A6C 08000924 */  addiu      $t1, $zero, 0x8
    /* 269F0 00125A70 1000B3AF */  sw         $s3, 0x10($sp)
    /* 269F4 00125A74 2D50A002 */  daddu      $t2, $s5, $zero
    /* 269F8 00125A78 1800B3AF */  sw         $s3, 0x18($sp)
    /* 269FC 00125A7C E297040C */  jal        func_00125F88
    /* 26A00 00125A80 2D58C002 */   daddu     $t3, $s6, $zero
    /* 26A04 00125A84 0400428E */  lw         $v0, 0x4($s2)
    /* 26A08 00125A88 2D202002 */  daddu      $a0, $s1, $zero
    /* 26A0C 00125A8C 0000438E */  lw         $v1, 0x0($s2)
    /* 26A10 00125A90 01000624 */  addiu      $a2, $zero, 0x1
    /* 26A14 00125A94 B801258E */  lw         $a1, 0x1B8($s1)
    /* 26A18 00125A98 43100200 */  sra        $v0, $v0, 1
    /* 26A1C 00125A9C 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26A20 00125AA0 01000724 */  addiu      $a3, $zero, 0x1
    /* 26A24 00125AA4 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26A28 00125AA8 2D400000 */  daddu      $t0, $zero, $zero
    /* 26A2C 00125AAC 1000B3AF */  sw         $s3, 0x10($sp)
    /* 26A30 00125AB0 08000924 */  addiu      $t1, $zero, 0x8
    /* 26A34 00125AB4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26A38 00125AB8 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26A3C 00125ABC E297040C */  jal        func_00125F88
    /* 26A40 00125AC0 2D58C002 */   daddu     $t3, $s6, $zero
    /* 26A44 00125AC4 2800A28F */  lw         $v0, 0x28($sp)
    /* 26A48 00125AC8 2D202002 */  daddu      $a0, $s1, $zero
    /* 26A4C 00125ACC 2C00A38F */  lw         $v1, 0x2C($sp)
    /* 26A50 00125AD0 2D300000 */  daddu      $a2, $zero, $zero
    /* 26A54 00125AD4 B801258E */  lw         $a1, 0x1B8($s1)
    /* 26A58 00125AD8 01000724 */  addiu      $a3, $zero, 0x1
    /* 26A5C 00125ADC 0000A2AF */  sw         $v0, 0x0($sp)
    /* 26A60 00125AE0 2D400000 */  daddu      $t0, $zero, $zero
    /* 26A64 00125AE4 0800A3AF */  sw         $v1, 0x8($sp)
    /* 26A68 00125AE8 08000924 */  addiu      $t1, $zero, 0x8
    /* 26A6C 00125AEC 1800B3AF */  sw         $s3, 0x18($sp)
    /* 26A70 00125AF0 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26A74 00125AF4 92000010 */  b          .L00125D40
    /* 26A78 00125AF8 1000B3AF */   sw        $s3, 0x10($sp)
.align 2
  .L00125AFC:
    /* 26A7C 00125AFC 2D202002 */  daddu      $a0, $s1, $zero
    /* 26A80 00125B00 1038A524 */  addiu      $a1, $a1, %lo(D_00153810)
    /* 26A84 00125B04 0CB1040C */  jal        func_0012C430
    /* 26A88 00125B08 2D308002 */   daddu     $a2, $s4, $zero
    /* 26A8C 00125B0C 95000010 */  b          .L00125D64
    /* 26A90 00125B10 01001024 */   addiu     $s0, $zero, 0x1
.align 2
  .L00125B14:
    /* 26A94 00125B14 C801278E */  lw         $a3, 0x1C8($s1)
    /* 26A98 00125B18 D801258E */  lw         $a1, 0x1D8($s1)
    /* 26A9C 00125B1C 0100572C */  sltiu      $s7, $v0, 0x1
    /* 26AA0 00125B20 CC01248E */  lw         $a0, 0x1CC($s1)
    /* 26AA4 00125B24 02000624 */  addiu      $a2, $zero, 0x2
    /* 26AA8 00125B28 DC01238E */  lw         $v1, 0x1DC($s1)
    /* 26AAC 00125B2C 2D980000 */  daddu      $s3, $zero, $zero
    /* 26AB0 00125B30 5001228E */  lw         $v0, 0x150($s1)
    /* 26AB4 00125B34 3000A7AF */  sw         $a3, 0x30($sp)
    /* 26AB8 00125B38 3400A5AF */  sw         $a1, 0x34($sp)
    /* 26ABC 00125B3C 3800A4AF */  sw         $a0, 0x38($sp)
    /* 26AC0 00125B40 07004614 */  bne        $v0, $a2, .L00125B60
    /* 26AC4 00125B44 3C00A3AF */   sw        $v1, 0x3C($sp)
    /* 26AC8 00125B48 2001228E */  lw         $v0, 0x120($s1)
    /* 26ACC 00125B4C 05004010 */  beqz       $v0, .L00125B64
    /* 26AD0 00125B50 01000224 */   addiu     $v0, $zero, 0x1
    /* 26AD4 00125B54 0000C28F */  lw         $v0, 0x0($fp)
    /* 26AD8 00125B58 2610E202 */  xor        $v0, $s7, $v0
    /* 26ADC 00125B5C 2B980200 */  sltu       $s3, $zero, $v0
.align 2
  .L00125B60:
    /* 26AE0 00125B60 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L00125B64:
    /* 26AE4 00125B64 04008252 */  beql       $s4, $v0, .L00125B78
    /* 26AE8 00125B68 0000C28F */   lw        $v0, 0x0($fp)
    /* 26AEC 00125B6C 11008015 */  bnez       $t4, .L00125BB4
    /* 26AF0 00125B70 02000224 */   addiu     $v0, $zero, 0x2
    /* 26AF4 00125B74 0000C28F */  lw         $v0, 0x0($fp)
.align 2
  .L00125B78:
    /* 26AF8 00125B78 C0181300 */  sll        $v1, $s3, 3
    /* 26AFC 00125B7C 0000468E */  lw         $a2, 0x0($s2)
    /* 26B00 00125B80 2D202002 */  daddu      $a0, $s1, $zero
    /* 26B04 00125B84 0400458E */  lw         $a1, 0x4($s2)
    /* 26B08 00125B88 80100200 */  sll        $v0, $v0, 2
    /* 26B0C 00125B8C 0000A6AF */  sw         $a2, 0x0($sp)
    /* 26B10 00125B90 21104300 */  addu       $v0, $v0, $v1
    /* 26B14 00125B94 2118A203 */  addu       $v1, $sp, $v0
    /* 26B18 00125B98 0800A5AF */  sw         $a1, 0x8($sp)
    /* 26B1C 00125B9C 3000658C */  lw         $a1, 0x30($v1)
    /* 26B20 00125BA0 2D300000 */  daddu      $a2, $zero, $zero
    /* 26B24 00125BA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26B28 00125BA8 2D380000 */  daddu      $a3, $zero, $zero
    /* 26B2C 00125BAC 61000010 */  b          .L00125D34
    /* 26B30 00125BB0 1800A0AF */   sw        $zero, 0x18($sp)
.align 2
  .L00125BB4:
    /* 26B34 00125BB4 33008216 */  bne        $s4, $v0, .L00125C84
    /* 26B38 00125BB8 03000224 */   addiu     $v0, $zero, 0x3
    /* 26B3C 00125BBC 0000C28F */  lw         $v0, 0x0($fp)
    /* 26B40 00125BC0 C0281300 */  sll        $a1, $s3, 3
    /* 26B44 00125BC4 0400448E */  lw         $a0, 0x4($s2)
    /* 26B48 00125BC8 3000B027 */  addiu      $s0, $sp, 0x30
    /* 26B4C 00125BCC 0000438E */  lw         $v1, 0x0($s2)
    /* 26B50 00125BD0 80100200 */  sll        $v0, $v0, 2
    /* 26B54 00125BD4 21104500 */  addu       $v0, $v0, $a1
    /* 26B58 00125BD8 0800A4AF */  sw         $a0, 0x8($sp)
    /* 26B5C 00125BDC 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26B60 00125BE0 21100202 */  addu       $v0, $s0, $v0
    /* 26B64 00125BE4 2D202002 */  daddu      $a0, $s1, $zero
    /* 26B68 00125BE8 2D300000 */  daddu      $a2, $zero, $zero
    /* 26B6C 00125BEC 0000458C */  lw         $a1, 0x0($v0)
    /* 26B70 00125BF0 2D380000 */  daddu      $a3, $zero, $zero
    /* 26B74 00125BF4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26B78 00125BF8 2D400000 */  daddu      $t0, $zero, $zero
    /* 26B7C 00125BFC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26B80 00125C00 08000924 */  addiu      $t1, $zero, 0x8
    /* 26B84 00125C04 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26B88 00125C08 E297040C */  jal        func_00125F88
    /* 26B8C 00125C0C 2D58C002 */   daddu     $t3, $s6, $zero
    /* 26B90 00125C10 5001228E */  lw         $v0, 0x150($s1)
    /* 26B94 00125C14 08005414 */  bne        $v0, $s4, .L00125C38
    /* 26B98 00125C18 2D980000 */   daddu     $s3, $zero, $zero
    /* 26B9C 00125C1C 2001228E */  lw         $v0, 0x120($s1)
    /* 26BA0 00125C20 06004010 */  beqz       $v0, .L00125C3C
    /* 26BA4 00125C24 0800C38F */   lw        $v1, 0x8($fp)
    /* 26BA8 00125C28 01001324 */  addiu      $s3, $zero, 0x1
    /* 26BAC 00125C2C 2610E302 */  xor        $v0, $s7, $v1
    /* 26BB0 00125C30 02000010 */  b          .L00125C3C
    /* 26BB4 00125C34 0A980200 */   movz      $s3, $zero, $v0
.align 2
  .L00125C38:
    /* 26BB8 00125C38 0800C38F */  lw         $v1, 0x8($fp)
.align 2
  .L00125C3C:
    /* 26BBC 00125C3C 80100300 */  sll        $v0, $v1, 2
    /* 26BC0 00125C40 1000468E */  lw         $a2, 0x10($s2)
    /* 26BC4 00125C44 C0181300 */  sll        $v1, $s3, 3
    /* 26BC8 00125C48 2D202002 */  daddu      $a0, $s1, $zero
    /* 26BCC 00125C4C 21104300 */  addu       $v0, $v0, $v1
    /* 26BD0 00125C50 2D380000 */  daddu      $a3, $zero, $zero
    /* 26BD4 00125C54 21100202 */  addu       $v0, $s0, $v0
    /* 26BD8 00125C58 1400438E */  lw         $v1, 0x14($s2)
    /* 26BDC 00125C5C 0000458C */  lw         $a1, 0x0($v0)
    /* 26BE0 00125C60 08000824 */  addiu      $t0, $zero, 0x8
    /* 26BE4 00125C64 0000A6AF */  sw         $a2, 0x0($sp)
    /* 26BE8 00125C68 08000924 */  addiu      $t1, $zero, 0x8
    /* 26BEC 00125C6C 2D300000 */  daddu      $a2, $zero, $zero
    /* 26BF0 00125C70 0800A3AF */  sw         $v1, 0x8($sp)
    /* 26BF4 00125C74 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26BF8 00125C78 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26BFC 00125C7C 30000010 */  b          .L00125D40
    /* 26C00 00125C80 1800A0AF */   sw        $zero, 0x18($sp)
.align 2
  .L00125C84:
    /* 26C04 00125C84 32008216 */  bne        $s4, $v0, .L00125D50
    /* 26C08 00125C88 1500053C */   lui       $a1, %hi(D_00153830)
    /* 26C0C 00125C8C 2001228E */  lw         $v0, 0x120($s1)
    /* 26C10 00125C90 01001324 */  addiu      $s3, $zero, 0x1
    /* 26C14 00125C94 0000478E */  lw         $a3, 0x0($s2)
    /* 26C18 00125C98 2D306001 */  daddu      $a2, $t3, $zero
    /* 26C1C 00125C9C 0400488E */  lw         $t0, 0x4($s2)
    /* 26C20 00125CA0 0A980200 */  movz       $s3, $zero, $v0
    /* 26C24 00125CA4 2D202002 */  daddu      $a0, $s1, $zero
    /* 26C28 00125CA8 709D040C */  jal        func_001275C0
    /* 26C2C 00125CAC 2000A527 */   addiu     $a1, $sp, 0x20
    /* 26C30 00125CB0 3000B027 */  addiu      $s0, $sp, 0x30
    /* 26C34 00125CB4 80101700 */  sll        $v0, $s7, 2
    /* 26C38 00125CB8 0400488E */  lw         $t0, 0x4($s2)
    /* 26C3C 00125CBC 21100202 */  addu       $v0, $s0, $v0
    /* 26C40 00125CC0 0000438E */  lw         $v1, 0x0($s2)
    /* 26C44 00125CC4 2D202002 */  daddu      $a0, $s1, $zero
    /* 26C48 00125CC8 0000458C */  lw         $a1, 0x0($v0)
    /* 26C4C 00125CCC 2D300000 */  daddu      $a2, $zero, $zero
    /* 26C50 00125CD0 0800A8AF */  sw         $t0, 0x8($sp)
    /* 26C54 00125CD4 2D380000 */  daddu      $a3, $zero, $zero
    /* 26C58 00125CD8 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26C5C 00125CDC 2D400000 */  daddu      $t0, $zero, $zero
    /* 26C60 00125CE0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26C64 00125CE4 10000924 */  addiu      $t1, $zero, 0x10
    /* 26C68 00125CE8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 26C6C 00125CEC 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26C70 00125CF0 E297040C */  jal        func_00125F88
    /* 26C74 00125CF4 2D58C002 */   daddu     $t3, $s6, $zero
    /* 26C78 00125CF8 C0181300 */  sll        $v1, $s3, 3
    /* 26C7C 00125CFC 2000A48F */  lw         $a0, 0x20($sp)
    /* 26C80 00125D00 04006224 */  addiu      $v0, $v1, 0x4
    /* 26C84 00125D04 2400A58F */  lw         $a1, 0x24($sp)
    /* 26C88 00125D08 0B107700 */  movn       $v0, $v1, $s7
    /* 26C8C 00125D0C 0000A4AF */  sw         $a0, 0x0($sp)
    /* 26C90 00125D10 21800202 */  addu       $s0, $s0, $v0
    /* 26C94 00125D14 0800A5AF */  sw         $a1, 0x8($sp)
    /* 26C98 00125D18 0000058E */  lw         $a1, 0x0($s0)
    /* 26C9C 00125D1C 01000324 */  addiu      $v1, $zero, 0x1
    /* 26CA0 00125D20 2D202002 */  daddu      $a0, $s1, $zero
    /* 26CA4 00125D24 1800A3AF */  sw         $v1, 0x18($sp)
    /* 26CA8 00125D28 2D300000 */  daddu      $a2, $zero, $zero
    /* 26CAC 00125D2C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26CB0 00125D30 2D380000 */  daddu      $a3, $zero, $zero
.align 2
  .L00125D34:
    /* 26CB4 00125D34 2D400000 */  daddu      $t0, $zero, $zero
    /* 26CB8 00125D38 10000924 */  addiu      $t1, $zero, 0x10
    /* 26CBC 00125D3C 2D50A002 */  daddu      $t2, $s5, $zero
.align 2
  .L00125D40:
    /* 26CC0 00125D40 E297040C */  jal        func_00125F88
    /* 26CC4 00125D44 2D58C002 */   daddu     $t3, $s6, $zero
    /* 26CC8 00125D48 06000010 */  b          .L00125D64
    /* 26CCC 00125D4C 01001024 */   addiu     $s0, $zero, 0x1
.align 2
  .L00125D50:
    /* 26CD0 00125D50 2D202002 */  daddu      $a0, $s1, $zero
    /* 26CD4 00125D54 3038A524 */  addiu      $a1, $a1, %lo(D_00153830)
    /* 26CD8 00125D58 0CB1040C */  jal        func_0012C430
    /* 26CDC 00125D5C 2D308002 */   daddu     $a2, $s4, $zero
    /* 26CE0 00125D60 01001024 */  addiu      $s0, $zero, 0x1
.align 2
  .L00125D64:
    /* 26CE4 00125D64 4000A48F */  lw         $a0, 0x40($sp)
.align 2
  .L00125D68:
    /* 26CE8 00125D68 04008230 */  andi       $v0, $a0, 0x4
    /* 26CEC 00125D6C 79004010 */  beqz       $v0, .L00125F54
    /* 26CF0 00125D70 03000224 */   addiu     $v0, $zero, 0x3
    /* 26CF4 00125D74 7401238E */  lw         $v1, 0x174($s1)
    /* 26CF8 00125D78 34006214 */  bne        $v1, $v0, .L00125E4C
    /* 26CFC 00125D7C 01000224 */   addiu     $v0, $zero, 0x1
    /* 26D00 00125D80 02000224 */  addiu      $v0, $zero, 0x2
    /* 26D04 00125D84 0F008216 */  bne        $s4, $v0, .L00125DC4
    /* 26D08 00125D88 01001324 */   addiu     $s3, $zero, 0x1
    /* 26D0C 00125D8C 0C00428E */  lw         $v0, 0xC($s2)
    /* 26D10 00125D90 2D202002 */  daddu      $a0, $s1, $zero
    /* 26D14 00125D94 0800438E */  lw         $v1, 0x8($s2)
    /* 26D18 00125D98 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26D1C 00125D9C 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26D20 00125DA0 2D58C002 */  daddu      $t3, $s6, $zero
    /* 26D24 00125DA4 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26D28 00125DA8 2D300000 */  daddu      $a2, $zero, $zero
    /* 26D2C 00125DAC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 26D30 00125DB0 2D380000 */  daddu      $a3, $zero, $zero
    /* 26D34 00125DB4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26D38 00125DB8 2D400000 */  daddu      $t0, $zero, $zero
    /* 26D3C 00125DBC 1F000010 */  b          .L00125E3C
    /* 26D40 00125DC0 10000924 */   addiu     $t1, $zero, 0x10
.align 2
  .L00125DC4:
    /* 26D44 00125DC4 0C00428E */  lw         $v0, 0xC($s2)
    /* 26D48 00125DC8 2D202002 */  daddu      $a0, $s1, $zero
    /* 26D4C 00125DCC 0800438E */  lw         $v1, 0x8($s2)
    /* 26D50 00125DD0 2D380000 */  daddu      $a3, $zero, $zero
    /* 26D54 00125DD4 BC01258E */  lw         $a1, 0x1BC($s1)
    /* 26D58 00125DD8 43100200 */  sra        $v0, $v0, 1
    /* 26D5C 00125DDC 0400C68F */  lw         $a2, 0x4($fp)
    /* 26D60 00125DE0 2D400000 */  daddu      $t0, $zero, $zero
    /* 26D64 00125DE4 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26D68 00125DE8 08000924 */  addiu      $t1, $zero, 0x8
    /* 26D6C 00125DEC 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26D70 00125DF0 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26D74 00125DF4 1000B3AF */  sw         $s3, 0x10($sp)
    /* 26D78 00125DF8 2D58C002 */  daddu      $t3, $s6, $zero
    /* 26D7C 00125DFC E297040C */  jal        func_00125F88
    /* 26D80 00125E00 1800B0AF */   sw        $s0, 0x18($sp)
    /* 26D84 00125E04 1C00428E */  lw         $v0, 0x1C($s2)
    /* 26D88 00125E08 2D202002 */  daddu      $a0, $s1, $zero
    /* 26D8C 00125E0C 1800438E */  lw         $v1, 0x18($s2)
    /* 26D90 00125E10 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26D94 00125E14 43100200 */  sra        $v0, $v0, 1
    /* 26D98 00125E18 1000B3AF */  sw         $s3, 0x10($sp)
    /* 26D9C 00125E1C 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26DA0 00125E20 2D58C002 */  daddu      $t3, $s6, $zero
    /* 26DA4 00125E24 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26DA8 00125E28 01000724 */  addiu      $a3, $zero, 0x1
    /* 26DAC 00125E2C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 26DB0 00125E30 2D400000 */  daddu      $t0, $zero, $zero
    /* 26DB4 00125E34 08000924 */  addiu      $t1, $zero, 0x8
    /* 26DB8 00125E38 0C00C68F */  lw         $a2, 0xC($fp)
.align 2
  .L00125E3C:
    /* 26DBC 00125E3C E297040C */  jal        func_00125F88
    /* 26DC0 00125E40 BC01858C */   lw        $a1, 0x1BC($a0)
    /* 26DC4 00125E44 44000010 */  b          .L00125F58
    /* 26DC8 00125E48 E000BFDF */   ld        $ra, 0xE0($sp)
.align 2
  .L00125E4C:
    /* 26DCC 00125E4C 15008216 */  bne        $s4, $v0, .L00125EA4
    /* 26DD0 00125E50 02000224 */   addiu     $v0, $zero, 0x2
    /* 26DD4 00125E54 0400C28F */  lw         $v0, 0x4($fp)
    /* 26DD8 00125E58 02004050 */  beql       $v0, $zero, .L00125E64
    /* 26DDC 00125E5C CC01258E */   lw        $a1, 0x1CC($s1)
    /* 26DE0 00125E60 DC01258E */  lw         $a1, 0x1DC($s1)
.align 2
  .L00125E64:
    /* 26DE4 00125E64 0C00428E */  lw         $v0, 0xC($s2)
    /* 26DE8 00125E68 2D202002 */  daddu      $a0, $s1, $zero
    /* 26DEC 00125E6C 0800438E */  lw         $v1, 0x8($s2)
    /* 26DF0 00125E70 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26DF4 00125E74 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26DF8 00125E78 2D58C002 */  daddu      $t3, $s6, $zero
    /* 26DFC 00125E7C 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26E00 00125E80 2D300000 */  daddu      $a2, $zero, $zero
    /* 26E04 00125E84 1800B0AF */  sw         $s0, 0x18($sp)
    /* 26E08 00125E88 2D380000 */  daddu      $a3, $zero, $zero
    /* 26E0C 00125E8C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26E10 00125E90 2D400000 */  daddu      $t0, $zero, $zero
    /* 26E14 00125E94 E297040C */  jal        func_00125F88
    /* 26E18 00125E98 10000924 */   addiu     $t1, $zero, 0x10
    /* 26E1C 00125E9C 2E000010 */  b          .L00125F58
    /* 26E20 00125EA0 E000BFDF */   ld        $ra, 0xE0($sp)
.align 2
  .L00125EA4:
    /* 26E24 00125EA4 27008216 */  bne        $s4, $v0, .L00125F44
    /* 26E28 00125EA8 1500053C */   lui       $a1, %hi(D_00153850)
    /* 26E2C 00125EAC 0400C28F */  lw         $v0, 0x4($fp)
    /* 26E30 00125EB0 02004050 */  beql       $v0, $zero, .L00125EBC
    /* 26E34 00125EB4 CC01258E */   lw        $a1, 0x1CC($s1)
    /* 26E38 00125EB8 DC01258E */  lw         $a1, 0x1DC($s1)
.align 2
  .L00125EBC:
    /* 26E3C 00125EBC 0800428E */  lw         $v0, 0x8($s2)
    /* 26E40 00125EC0 2D202002 */  daddu      $a0, $s1, $zero
    /* 26E44 00125EC4 0C00438E */  lw         $v1, 0xC($s2)
    /* 26E48 00125EC8 2D300000 */  daddu      $a2, $zero, $zero
    /* 26E4C 00125ECC 0000A2AF */  sw         $v0, 0x0($sp)
    /* 26E50 00125ED0 2D380000 */  daddu      $a3, $zero, $zero
    /* 26E54 00125ED4 0800A3AF */  sw         $v1, 0x8($sp)
    /* 26E58 00125ED8 2D400000 */  daddu      $t0, $zero, $zero
    /* 26E5C 00125EDC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26E60 00125EE0 08000924 */  addiu      $t1, $zero, 0x8
    /* 26E64 00125EE4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 26E68 00125EE8 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26E6C 00125EEC E297040C */  jal        func_00125F88
    /* 26E70 00125EF0 2D58C002 */   daddu     $t3, $s6, $zero
    /* 26E74 00125EF4 0C00C28F */  lw         $v0, 0xC($fp)
    /* 26E78 00125EF8 02004050 */  beql       $v0, $zero, .L00125F04
    /* 26E7C 00125EFC CC01258E */   lw        $a1, 0x1CC($s1)
    /* 26E80 00125F00 DC01258E */  lw         $a1, 0x1DC($s1)
.align 2
  .L00125F04:
    /* 26E84 00125F04 1C00428E */  lw         $v0, 0x1C($s2)
    /* 26E88 00125F08 2D202002 */  daddu      $a0, $s1, $zero
    /* 26E8C 00125F0C 1800438E */  lw         $v1, 0x18($s2)
    /* 26E90 00125F10 2D50A002 */  daddu      $t2, $s5, $zero
    /* 26E94 00125F14 0800A2AF */  sw         $v0, 0x8($sp)
    /* 26E98 00125F18 2D58C002 */  daddu      $t3, $s6, $zero
    /* 26E9C 00125F1C 0000A3AF */  sw         $v1, 0x0($sp)
    /* 26EA0 00125F20 2D300000 */  daddu      $a2, $zero, $zero
    /* 26EA4 00125F24 1800B0AF */  sw         $s0, 0x18($sp)
    /* 26EA8 00125F28 2D380000 */  daddu      $a3, $zero, $zero
    /* 26EAC 00125F2C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 26EB0 00125F30 08000824 */  addiu      $t0, $zero, 0x8
    /* 26EB4 00125F34 E297040C */  jal        func_00125F88
    /* 26EB8 00125F38 08000924 */   addiu     $t1, $zero, 0x8
    /* 26EBC 00125F3C 06000010 */  b          .L00125F58
    /* 26EC0 00125F40 E000BFDF */   ld        $ra, 0xE0($sp)
.align 2
  .L00125F44:
    /* 26EC4 00125F44 2D202002 */  daddu      $a0, $s1, $zero
    /* 26EC8 00125F48 5038A524 */  addiu      $a1, $a1, %lo(D_00153850)
    /* 26ECC 00125F4C 0CB1040C */  jal        func_0012C430
    /* 26ED0 00125F50 2D308002 */   daddu     $a2, $s4, $zero
.align 2
  .L00125F54:
    /* 26ED4 00125F54 E000BFDF */  ld         $ra, 0xE0($sp)
.align 2
  .L00125F58:
    /* 26ED8 00125F58 D000BEDF */  ld         $fp, 0xD0($sp)
    /* 26EDC 00125F5C C000B7DF */  ld         $s7, 0xC0($sp)
    /* 26EE0 00125F60 B000B6DF */  ld         $s6, 0xB0($sp)
    /* 26EE4 00125F64 A000B5DF */  ld         $s5, 0xA0($sp)
    /* 26EE8 00125F68 9000B4DF */  ld         $s4, 0x90($sp)
    /* 26EEC 00125F6C 8000B3DF */  ld         $s3, 0x80($sp)
    /* 26EF0 00125F70 7000B2DF */  ld         $s2, 0x70($sp)
    /* 26EF4 00125F74 6000B1DF */  ld         $s1, 0x60($sp)
    /* 26EF8 00125F78 5000B0DF */  ld         $s0, 0x50($sp)
    /* 26EFC 00125F7C 0800E003 */  jr         $ra
    /* 26F00 00125F80 F000BD27 */   addiu     $sp, $sp, 0xF0
endlabel func_00125880
    /* 26F04 00125F84 00000000 */  nop
