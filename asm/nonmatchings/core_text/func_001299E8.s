.align 3
nonmatching func_001299E8, 0x290

glabel func_001299E8
    /* 2A968 001299E8 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 2A96C 001299EC FF0F023C */  lui        $v0, (0xFFFFFFF >> 16)
    /* 2A970 001299F0 7000B6FF */  sd         $s6, 0x70($sp)
    /* 2A974 001299F4 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* 2A978 001299F8 3000B2FF */  sd         $s2, 0x30($sp)
    /* 2A97C 001299FC 2DB0A000 */  daddu      $s6, $a1, $zero
    /* 2A980 00129A00 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2A984 00129A04 A000BFFF */  sd         $ra, 0xA0($sp)
    /* 2A988 00129A08 9000BEFF */  sd         $fp, 0x90($sp)
    /* 2A98C 00129A0C 8000B7FF */  sd         $s7, 0x80($sp)
    /* 2A990 00129A10 6000B5FF */  sd         $s5, 0x60($sp)
    /* 2A994 00129A14 5000B4FF */  sd         $s4, 0x50($sp)
    /* 2A998 00129A18 4000B3FF */  sd         $s3, 0x40($sp)
    /* 2A99C 00129A1C 2000B1FF */  sd         $s1, 0x20($sp)
    /* 2A9A0 00129A20 1000B0FF */  sd         $s0, 0x10($sp)
    /* 2A9A4 00129A24 0000A68F */  lw         $a2, 0x0($sp)
    /* 2A9A8 00129A28 0000C38E */  lw         $v1, 0x0($s6)
    /* 2A9AC 00129A2C D800848C */  lw         $a0, 0xD8($a0)
    /* 2A9B0 00129A30 7401C58C */  lw         $a1, 0x174($a2)
    /* 2A9B4 00129A34 24906200 */  and        $s2, $v1, $v0
    /* 2A9B8 00129A38 24208200 */  and        $a0, $a0, $v0
    /* 2A9BC 00129A3C 03000324 */  addiu      $v1, $zero, 0x3
    /* 2A9C0 00129A40 0600A310 */  beq        $a1, $v1, .L00129A5C
    /* 2A9C4 00129A44 0800A4AF */   sw        $a0, 0x8($sp)
    /* 2A9C8 00129A48 E000C48C */  lw         $a0, 0xE0($a2)
    /* 2A9CC 00129A4C 11008014 */  bnez       $a0, .L00129A94
    /* 2A9D0 00129A50 2D188000 */   daddu     $v1, $a0, $zero
    /* 2A9D4 00129A54 04000010 */  b          .L00129A68
    /* 2A9D8 00129A58 1000C28E */   lw        $v0, 0x10($s6)
.align 2
  .L00129A5C:
    /* 2A9DC 00129A5C 0000A78F */  lw         $a3, 0x0($sp)
    /* 2A9E0 00129A60 E000E38C */  lw         $v1, 0xE0($a3)
    /* 2A9E4 00129A64 1000C28E */  lw         $v0, 0x10($s6)
.align 2
  .L00129A68:
    /* 2A9E8 00129A68 80010424 */  addiu      $a0, $zero, 0x180
    /* 2A9EC 00129A6C 18A84400 */  mult       $s5, $v0, $a0
    /* 2A9F0 00129A70 04006010 */  beqz       $v1, .L00129A84
    /* 2A9F4 00129A74 03A11500 */   sra       $s4, $s5, 4
    /* 2A9F8 00129A78 03110300 */  sra        $v0, $v1, 4
    /* 2A9FC 00129A7C 02000010 */  b          .L00129A88
    /* 2AA00 00129A80 18F04400 */   mult      $fp, $v0, $a0
.align 2
  .L00129A84:
    /* 2AA04 00129A84 2DF0A002 */  daddu      $fp, $s5, $zero
.align 2
  .L00129A88:
    /* 2AA08 00129A88 01000224 */  addiu      $v0, $zero, 0x1
    /* 2AA0C 00129A8C 0B000010 */  b          .L00129ABC
    /* 2AA10 00129A90 0400A2AF */   sw        $v0, 0x4($sp)
.align 2
  .L00129A94:
    /* 2AA14 00129A94 1000C28E */  lw         $v0, 0x10($s6)
    /* 2AA18 00129A98 80010524 */  addiu      $a1, $zero, 0x180
    /* 2AA1C 00129A9C C0000324 */  addiu      $v1, $zero, 0xC0
    /* 2AA20 00129AA0 03210400 */  sra        $a0, $a0, 4
    /* 2AA24 00129AA4 43100200 */  sra        $v0, $v0, 1
    /* 2AA28 00129AA8 18F08300 */  mult       $fp, $a0, $v1
    /* 2AA2C 00129AAC 18A84570 */  mult1      $s5, $v0, $a1
    /* 2AA30 00129AB0 02000324 */  addiu      $v1, $zero, 0x2
    /* 2AA34 00129AB4 0400A3AF */  sw         $v1, 0x4($sp)
    /* 2AA38 00129AB8 03A11500 */  sra        $s4, $s5, 4
.align 2
  .L00129ABC:
    /* 2AA3C 00129ABC 0400A68F */  lw         $a2, 0x4($sp)
    /* 2AA40 00129AC0 6100C010 */  beqz       $a2, .L00129C48
    /* 2AA44 00129AC4 2D280000 */   daddu     $a1, $zero, $zero
    /* 2AA48 00129AC8 0C00C68E */  lw         $a2, 0xC($s6)
    /* 2AA4C 00129ACC 00000000 */  nop
.align 2
  .L00129AD0:
    /* 2AA50 00129AD0 0800B18F */  lw         $s1, 0x8($sp)
    /* 2AA54 00129AD4 4F00C018 */  blez       $a2, .L00129C14
    /* 2AA58 00129AD8 2D800000 */   daddu     $s0, $zero, $zero
    /* 2AA5C 00129ADC 0100B724 */  addiu      $s7, $a1, 0x1
.align 2
  .L00129AE0:
    /* 2AA60 00129AE0 5876040C */  jal        func_0011D960
    /* 2AA64 00129AE4 00000000 */   nop
    /* 2AA68 00129AE8 0010033C */  lui        $v1, (0x1000D480 >> 16)
    /* 2AA6C 00129AEC 0010053C */  lui        $a1, (0x1000D410 >> 16)
    /* 2AA70 00129AF0 80D46334 */  ori        $v1, $v1, (0x1000D480 & 0xFFFF)
    /* 2AA74 00129AF4 10D4A534 */  ori        $a1, $a1, (0x1000D410 & 0xFFFF)
    /* 2AA78 00129AF8 000060AC */  sw         $zero, 0x0($v1)
    /* 2AA7C 00129AFC 0010043C */  lui        $a0, (0x1000D420 >> 16)
    /* 2AA80 00129B00 0000B2AC */  sw         $s2, 0x0($a1)
    /* 2AA84 00129B04 20D48434 */  ori        $a0, $a0, (0x1000D420 & 0xFFFF)
    /* 2AA88 00129B08 0010053C */  lui        $a1, (0x1000D400 >> 16)
    /* 2AA8C 00129B0C 000094AC */  sw         $s4, 0x0($a0)
    /* 2AA90 00129B10 00D4A534 */  ori        $a1, $a1, (0x1000D400 & 0xFFFF)
    /* 2AA94 00129B14 01010324 */  addiu      $v1, $zero, 0x101
    /* 2AA98 00129B18 0000A3AC */  sw         $v1, 0x0($a1)
    /* 2AA9C 00129B1C 04004010 */  beqz       $v0, .L00129B30
    /* 2AAA0 00129B20 0010033C */   lui       $v1, (0x1000D400 >> 16)
    /* 2AAA4 00129B24 6A76040C */  jal        func_0011D9A8
    /* 2AAA8 00129B28 00000000 */   nop
    /* 2AAAC 00129B2C 0010033C */  lui        $v1, (0x1000D400 >> 16)
.align 2
  .L00129B30:
    /* 2AAB0 00129B30 21985502 */  addu       $s3, $s2, $s5
    /* 2AAB4 00129B34 01001026 */  addiu      $s0, $s0, 0x1
    /* 2AAB8 00129B38 21903E02 */  addu       $s2, $s1, $fp
    /* 2AABC 00129B3C 00D46334 */  ori        $v1, $v1, (0x1000D400 & 0xFFFF)
.align 2
  .L00129B40:
    /* 2AAC0 00129B40 0000628C */  lw         $v0, 0x0($v1)
    /* 2AAC4 00129B44 00014230 */  andi       $v0, $v0, 0x100
    /* 2AAC8 00129B48 00000000 */  nop
    /* 2AACC 00129B4C 00000000 */  nop
    /* 2AAD0 00129B50 00000000 */  nop
    /* 2AAD4 00129B54 FAFF4014 */  bnez       $v0, .L00129B40
    /* 2AAD8 00129B58 00000000 */   nop
    /* 2AADC 00129B5C 5876040C */  jal        func_0011D960
    /* 2AAE0 00129B60 00000000 */   nop
    /* 2AAE4 00129B64 0010033C */  lui        $v1, (0x1000D080 >> 16)
    /* 2AAE8 00129B68 0010053C */  lui        $a1, (0x1000D010 >> 16)
    /* 2AAEC 00129B6C 80D06334 */  ori        $v1, $v1, (0x1000D080 & 0xFFFF)
    /* 2AAF0 00129B70 10D0A534 */  ori        $a1, $a1, (0x1000D010 & 0xFFFF)
    /* 2AAF4 00129B74 000060AC */  sw         $zero, 0x0($v1)
    /* 2AAF8 00129B78 0010043C */  lui        $a0, (0x1000D020 >> 16)
    /* 2AAFC 00129B7C 0000B1AC */  sw         $s1, 0x0($a1)
    /* 2AB00 00129B80 20D08434 */  ori        $a0, $a0, (0x1000D020 & 0xFFFF)
    /* 2AB04 00129B84 0010053C */  lui        $a1, (0x1000D000 >> 16)
    /* 2AB08 00129B88 000094AC */  sw         $s4, 0x0($a0)
    /* 2AB0C 00129B8C 00D0A534 */  ori        $a1, $a1, (0x1000D000 & 0xFFFF)
    /* 2AB10 00129B90 00010324 */  addiu      $v1, $zero, 0x100
    /* 2AB14 00129B94 0000A3AC */  sw         $v1, 0x0($a1)
    /* 2AB18 00129B98 04004010 */  beqz       $v0, .L00129BAC
    /* 2AB1C 00129B9C 0010033C */   lui       $v1, (0x1000D000 >> 16)
    /* 2AB20 00129BA0 6A76040C */  jal        func_0011D9A8
    /* 2AB24 00129BA4 00000000 */   nop
    /* 2AB28 00129BA8 0010033C */  lui        $v1, (0x1000D000 >> 16)
.align 2
  .L00129BAC:
    /* 2AB2C 00129BAC 0C00C68E */  lw         $a2, 0xC($s6)
    /* 2AB30 00129BB0 00D06334 */  ori        $v1, $v1, (0x1000D000 & 0xFFFF)
    /* 2AB34 00129BB4 00000000 */  nop
.align 2
  .L00129BB8:
    /* 2AB38 00129BB8 0000628C */  lw         $v0, 0x0($v1)
    /* 2AB3C 00129BBC 00014230 */  andi       $v0, $v0, 0x100
    /* 2AB40 00129BC0 00000000 */  nop
    /* 2AB44 00129BC4 00000000 */  nop
    /* 2AB48 00129BC8 00000000 */  nop
    /* 2AB4C 00129BCC FAFF4014 */  bnez       $v0, .L00129BB8
    /* 2AB50 00129BD0 00000000 */   nop
    /* 2AB54 00129BD4 0010033C */  lui        $v1, (0x1000D020 >> 16)
    /* 2AB58 00129BD8 20D06334 */  ori        $v1, $v1, (0x1000D020 & 0xFFFF)
    /* 2AB5C 00129BDC 00000000 */  nop
.align 2
  .L00129BE0:
    /* 2AB60 00129BE0 0000628C */  lw         $v0, 0x0($v1)
    /* 2AB64 00129BE4 00000000 */  nop
    /* 2AB68 00129BE8 00000000 */  nop
    /* 2AB6C 00129BEC 00000000 */  nop
    /* 2AB70 00129BF0 00000000 */  nop
    /* 2AB74 00129BF4 FAFF4014 */  bnez       $v0, .L00129BE0
    /* 2AB78 00129BF8 00000000 */   nop
    /* 2AB7C 00129BFC 2D884002 */  daddu      $s1, $s2, $zero
    /* 2AB80 00129C00 2A100602 */  slt        $v0, $s0, $a2
    /* 2AB84 00129C04 B6FF4014 */  bnez       $v0, .L00129AE0
    /* 2AB88 00129C08 2D906002 */   daddu     $s2, $s3, $zero
    /* 2AB8C 00129C0C 03000010 */  b          .L00129C1C
    /* 2AB90 00129C10 0000A78F */   lw        $a3, 0x0($sp)
.align 2
  .L00129C14:
    /* 2AB94 00129C14 0100B724 */  addiu      $s7, $a1, 0x1
    /* 2AB98 00129C18 0000A78F */  lw         $a3, 0x0($sp)
.align 2
  .L00129C1C:
    /* 2AB9C 00129C1C 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2ABA0 00129C20 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 2ABA4 00129C24 E400E28C */  lw         $v0, 0xE4($a3)
    /* 2ABA8 00129C28 0400A78F */  lw         $a3, 0x4($sp)
    /* 2ABAC 00129C2C 2A20A700 */  slt        $a0, $a1, $a3
    /* 2ABB0 00129C30 0800A78F */  lw         $a3, 0x8($sp)
    /* 2ABB4 00129C34 1300E000 */  mtlo       $a3
    /* 2ABB8 00129C38 00004370 */  madd       $zero, $v0, $v1
    /* 2ABBC 00129C3C 12380000 */  mflo       $a3
    /* 2ABC0 00129C40 A3FF8014 */  bnez       $a0, .L00129AD0
    /* 2ABC4 00129C44 0800A7AF */   sw        $a3, 0x8($sp)
.align 2
  .L00129C48:
    /* 2ABC8 00129C48 A000BFDF */  ld         $ra, 0xA0($sp)
    /* 2ABCC 00129C4C 9000BEDF */  ld         $fp, 0x90($sp)
    /* 2ABD0 00129C50 8000B7DF */  ld         $s7, 0x80($sp)
    /* 2ABD4 00129C54 7000B6DF */  ld         $s6, 0x70($sp)
    /* 2ABD8 00129C58 6000B5DF */  ld         $s5, 0x60($sp)
    /* 2ABDC 00129C5C 5000B4DF */  ld         $s4, 0x50($sp)
    /* 2ABE0 00129C60 4000B3DF */  ld         $s3, 0x40($sp)
    /* 2ABE4 00129C64 3000B2DF */  ld         $s2, 0x30($sp)
    /* 2ABE8 00129C68 2000B1DF */  ld         $s1, 0x20($sp)
    /* 2ABEC 00129C6C 1000B0DF */  ld         $s0, 0x10($sp)
    /* 2ABF0 00129C70 0800E003 */  jr         $ra
    /* 2ABF4 00129C74 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_001299E8
