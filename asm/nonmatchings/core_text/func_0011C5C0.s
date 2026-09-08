.align 3
nonmatching func_0011C5C0, 0x260

glabel func_0011C5C0
    /* 1D540 0011C5C0 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* 1D544 0011C5C4 B000B7FF */  sd         $s7, 0xB0($sp)
    /* 1D548 0011C5C8 A000B6FF */  sd         $s6, 0xA0($sp)
    /* 1D54C 0011C5CC 2DB8C000 */  daddu      $s7, $a2, $zero
    /* 1D550 0011C5D0 8000B4FF */  sd         $s4, 0x80($sp)
    /* 1D554 0011C5D4 2DB0A000 */  daddu      $s6, $a1, $zero
    /* 1D558 0011C5D8 5000B1FF */  sd         $s1, 0x50($sp)
    /* 1D55C 0011C5DC 1500143C */  lui        $s4, %hi(D_00156980)
    /* 1D560 0011C5E0 4000B0FF */  sd         $s0, 0x40($sp)
    /* 1D564 0011C5E4 80699126 */  addiu      $s1, $s4, %lo(D_00156980)
    /* 1D568 0011C5E8 D000BFFF */  sd         $ra, 0xD0($sp)
    /* 1D56C 0011C5EC C000BEFF */  sd         $fp, 0xC0($sp)
    /* 1D570 0011C5F0 9000B5FF */  sd         $s5, 0x90($sp)
    /* 1D574 0011C5F4 7000B3FF */  sd         $s3, 0x70($sp)
    /* 1D578 0011C5F8 FE6D040C */  jal        func_0011B7F8
    /* 1D57C 0011C5FC 6000B2FF */   sd        $s2, 0x60($sp)
    /* 1D580 0011C600 2D804000 */  daddu      $s0, $v0, $zero
    /* 1D584 0011C604 106F040C */  jal        func_0011BC40
    /* 1D588 0011C608 02000424 */   addiu     $a0, $zero, 0x2
    /* 1D58C 0011C60C 1300033C */  lui        $v1, %hi(D_0012FD94)
    /* 1D590 0011C610 94FD628C */  lw         $v0, %lo(D_0012FD94)($v1)
    /* 1D594 0011C614 05004014 */  bnez       $v0, .L0011C62C
    /* 1D598 0011C618 00000000 */   nop
    /* 1D59C 0011C61C 1C6F040C */  jal        func_0011BC70
    /* 1D5A0 0011C620 00000000 */   nop
    /* 1D5A4 0011C624 72000010 */  b          .L0011C7F0
    /* 1D5A8 0011C628 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0011C62C:
    /* 1D5AC 0011C62C 04000012 */  beqz       $s0, .L0011C640
    /* 1D5B0 0011C630 00000000 */   nop
    /* 1D5B4 0011C634 0400138E */  lw         $s3, 0x4($s0)
    /* 1D5B8 0011C638 05006056 */  bnel       $s3, $zero, .L0011C650
    /* 1D5BC 0011C63C 0000038E */   lw        $v1, 0x0($s0)
.align 2
  .L0011C640:
    /* 1D5C0 0011C640 1C6F040C */  jal        func_0011BC70
    /* 1D5C4 0011C644 00000000 */   nop
    /* 1D5C8 0011C648 69000010 */  b          .L0011C7F0
    /* 1D5CC 0011C64C F7FF0224 */   addiu     $v0, $zero, -0x9
.align 2
  .L0011C650:
    /* 1D5D0 0011C650 1500023C */  lui        $v0, %hi(D_00157E80)
    /* 1D5D4 0011C654 807E4224 */  addiu      $v0, $v0, %lo(D_00157E80)
    /* 1D5D8 0011C658 01000424 */  addiu      $a0, $zero, 0x1
    /* 1D5DC 0011C65C 0C0023AE */  sw         $v1, 0xC($s1)
    /* 1D5E0 0011C660 23100202 */  subu       $v0, $s0, $v0
    /* 1D5E4 0011C664 1400A4AF */  sw         $a0, 0x14($sp)
    /* 1D5E8 0011C668 03110200 */  sra        $v0, $v0, 4
    /* 1D5EC 0011C66C 1C0022AE */  sw         $v0, 0x1C($s1)
    /* 1D5F0 0011C670 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1D5F4 0011C674 100036AE */  sw         $s6, 0x10($s1)
    /* 1D5F8 0011C678 140037AE */  sw         $s7, 0x14($s1)
    /* 1D5FC 0011C67C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1D600 0011C680 1C63040C */  jal        func_00118C70
    /* 1D604 0011C684 2400A0AF */   sw        $zero, 0x24($sp)
    /* 1D608 0011C688 2D904000 */  daddu      $s2, $v0, $zero
    /* 1D60C 0011C68C 04000324 */  addiu      $v1, $zero, 0x4
    /* 1D610 0011C690 3000A227 */  addiu      $v0, $sp, 0x30
    /* 1D614 0011C694 080023AE */  sw         $v1, 0x8($s1)
    /* 1D618 0011C698 040022AE */  sw         $v0, 0x4($s1)
    /* 1D61C 0011C69C 00806232 */  andi       $v0, $s3, 0x8000
    /* 1D620 0011C6A0 21004010 */  beqz       $v0, .L0011C728
    /* 1D624 0011C6A4 806992AE */   sw        $s2, %lo(D_00156980)($s4)
    /* 1D628 0011C6A8 1300103C */  lui        $s0, %hi(D_0012FDA4)
    /* 1D62C 0011C6AC 2C63040C */  jal        func_00118CB0
    /* 1D630 0011C6B0 A4FD048E */   lw        $a0, %lo(D_0012FDA4)($s0)
    /* 1D634 0011C6B4 1300073C */  lui        $a3, %hi(D_0012FD10)
    /* 1D638 0011C6B8 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D63C 0011C6BC 10FDE38C */  lw         $v1, %lo(D_0012FD10)($a3)
    /* 1D640 0011C6C0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1D644 0011C6C4 06006214 */  bne        $v1, $v0, .L0011C6E0
    /* 1D648 0011C6C8 15001E3C */   lui       $fp, %hi(D_001575C0)
    /* 1D64C 0011C6CC 8069838E */  lw         $v1, %lo(D_00156980)($s4)
    /* 1D650 0011C6D0 23100300 */  negu       $v0, $v1
    /* 1D654 0011C6D4 10FDE3AC */  sw         $v1, %lo(D_0012FD10)($a3)
    /* 1D658 0011C6D8 0F000010 */  b          .L0011C718
    /* 1D65C 0011C6DC 806982AE */   sw        $v0, %lo(D_00156980)($s4)
.align 2
  .L0011C6E0:
    /* 1D660 0011C6E0 0100C624 */  addiu      $a2, $a2, 0x1
.align 2
  .L0011C6E4:
    /* 1D664 0011C6E4 2000C228 */  slti       $v0, $a2, 0x20
    /* 1D668 0011C6E8 0B004010 */  beqz       $v0, .L0011C718
    /* 1D66C 0011C6EC 80100600 */   sll       $v0, $a2, 2
    /* 1D670 0011C6F0 10FDE324 */  addiu      $v1, $a3, %lo(D_0012FD10)
    /* 1D674 0011C6F4 21284300 */  addu       $a1, $v0, $v1
    /* 1D678 0011C6F8 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1D67C 0011C6FC 0000A28C */  lw         $v0, 0x0($a1)
    /* 1D680 0011C700 F8FF4414 */  bne        $v0, $a0, .L0011C6E4
    /* 1D684 0011C704 0100C624 */   addiu     $a2, $a2, 0x1
    /* 1D688 0011C708 0000228E */  lw         $v0, 0x0($s1)
    /* 1D68C 0011C70C 23180200 */  negu       $v1, $v0
    /* 1D690 0011C710 0000A2AC */  sw         $v0, 0x0($a1)
    /* 1D694 0011C714 000023AE */  sw         $v1, 0x0($s1)
.align 2
  .L0011C718:
    /* 1D698 0011C718 2463040C */  jal        func_00118C90
    /* 1D69C 0011C71C A4FD048E */   lw        $a0, %lo(D_0012FDA4)($s0)
    /* 1D6A0 0011C720 03000010 */  b          .L0011C730
    /* 1D6A4 0011C724 0020153C */   lui       $s5, (0x20000000 >> 16)
.align 2
  .L0011C728:
    /* 1D6A8 0011C728 15001E3C */  lui        $fp, %hi(D_001575C0)
    /* 1D6AC 0011C72C 0020153C */  lui        $s5, (0x20000000 >> 16)
.align 2
  .L0011C730:
    /* 1D6B0 0011C730 24107502 */  and        $v0, $s3, $s5
    /* 1D6B4 0011C734 05004014 */  bnez       $v0, .L0011C74C
    /* 1D6B8 0011C738 2D202002 */   daddu     $a0, $s1, $zero
    /* 1D6BC 0011C73C 2D20C002 */  daddu      $a0, $s6, $zero
    /* 1D6C0 0011C740 5C6B040C */  jal        func_0011AD70
    /* 1D6C4 0011C744 2D28E002 */   daddu     $a1, $s7, $zero
    /* 1D6C8 0011C748 2D202002 */  daddu      $a0, $s1, $zero
.align 2
  .L0011C74C:
    /* 1D6CC 0011C74C 5C6B040C */  jal        func_0011AD70
    /* 1D6D0 0011C750 20000524 */   addiu     $a1, $zero, 0x20
    /* 1D6D4 0011C754 C075D027 */  addiu      $s0, $fp, %lo(D_001575C0)
    /* 1D6D8 0011C758 1600023C */  lui        $v0, %hi(D_00158080)
    /* 1D6DC 0011C75C 80698726 */  addiu      $a3, $s4, %lo(D_00156980)
    /* 1D6E0 0011C760 80804424 */  addiu      $a0, $v0, %lo(D_00158080)
    /* 1D6E4 0011C764 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1D6E8 0011C768 02000524 */  addiu      $a1, $zero, 0x2
    /* 1D6EC 0011C76C 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D6F0 0011C770 20000824 */  addiu      $t0, $zero, 0x20
    /* 1D6F4 0011C774 2D480002 */  daddu      $t1, $s0, $zero
    /* 1D6F8 0011C778 04000A24 */  addiu      $t2, $zero, 0x4
    /* 1D6FC 0011C77C 326D040C */  jal        func_0011B4C8
    /* 1D700 0011C780 2D580000 */   daddu     $t3, $zero, $zero
    /* 1D704 0011C784 07004104 */  bgez       $v0, .L0011C7A4
    /* 1D708 0011C788 2510B002 */   or        $v0, $s5, $s0
    /* 1D70C 0011C78C 2063040C */  jal        func_00118C80
    /* 1D710 0011C790 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D714 0011C794 1C6F040C */  jal        func_0011BC70
    /* 1D718 0011C798 00000000 */   nop
    /* 1D71C 0011C79C 14000010 */  b          .L0011C7F0
    /* 1D720 0011C7A0 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C7A4:
    /* 1D724 0011C7A4 1C6F040C */  jal        func_0011BC70
    /* 1D728 0011C7A8 0000508C */   lw        $s0, 0x0($v0)
    /* 1D72C 0011C7AC 05000016 */  bnez       $s0, .L0011C7C4
    /* 1D730 0011C7B0 00806232 */   andi      $v0, $s3, 0x8000
    /* 1D734 0011C7B4 2063040C */  jal        func_00118C80
    /* 1D738 0011C7B8 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D73C 0011C7BC 0C000010 */  b          .L0011C7F0
    /* 1D740 0011C7C0 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C7C4:
    /* 1D744 0011C7C4 05004010 */  beqz       $v0, .L0011C7DC
    /* 1D748 0011C7C8 00000000 */   nop
    /* 1D74C 0011C7CC 2063040C */  jal        func_00118C80
    /* 1D750 0011C7D0 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D754 0011C7D4 06000010 */  b          .L0011C7F0
    /* 1D758 0011C7D8 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011C7DC:
    /* 1D75C 0011C7DC 2C63040C */  jal        func_00118CB0
    /* 1D760 0011C7E0 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D764 0011C7E4 2063040C */  jal        func_00118C80
    /* 1D768 0011C7E8 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D76C 0011C7EC 3000A28F */  lw         $v0, 0x30($sp)
.align 2
  .L0011C7F0:
    /* 1D770 0011C7F0 D000BFDF */  ld         $ra, 0xD0($sp)
    /* 1D774 0011C7F4 C000BEDF */  ld         $fp, 0xC0($sp)
    /* 1D778 0011C7F8 B000B7DF */  ld         $s7, 0xB0($sp)
    /* 1D77C 0011C7FC A000B6DF */  ld         $s6, 0xA0($sp)
    /* 1D780 0011C800 9000B5DF */  ld         $s5, 0x90($sp)
    /* 1D784 0011C804 8000B4DF */  ld         $s4, 0x80($sp)
    /* 1D788 0011C808 7000B3DF */  ld         $s3, 0x70($sp)
    /* 1D78C 0011C80C 6000B2DF */  ld         $s2, 0x60($sp)
    /* 1D790 0011C810 5000B1DF */  ld         $s1, 0x50($sp)
    /* 1D794 0011C814 4000B0DF */  ld         $s0, 0x40($sp)
    /* 1D798 0011C818 0800E003 */  jr         $ra
    /* 1D79C 0011C81C E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_0011C5C0
