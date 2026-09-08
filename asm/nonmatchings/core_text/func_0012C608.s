.align 3
nonmatching func_0012C608, 0x2A8

glabel func_0012C608
    /* 2D588 0012C608 10FFBD27 */  addiu      $sp, $sp, -0xF0
    /* 2D58C 0012C60C 2D288000 */  daddu      $a1, $a0, $zero
    /* 2D590 0012C610 E000BFFF */  sd         $ra, 0xE0($sp)
    /* 2D594 0012C614 C000B7FF */  sd         $s7, 0xC0($sp)
    /* 2D598 0012C618 B000B6FF */  sd         $s6, 0xB0($sp)
    /* 2D59C 0012C61C A000B5FF */  sd         $s5, 0xA0($sp)
    /* 2D5A0 0012C620 9000B4FF */  sd         $s4, 0x90($sp)
    /* 2D5A4 0012C624 8000B3FF */  sd         $s3, 0x80($sp)
    /* 2D5A8 0012C628 7000B2FF */  sd         $s2, 0x70($sp)
    /* 2D5AC 0012C62C 6000B1FF */  sd         $s1, 0x60($sp)
    /* 2D5B0 0012C630 5000B0FF */  sd         $s0, 0x50($sp)
    /* 2D5B4 0012C634 D000BEFF */  sd         $fp, 0xD0($sp)
    /* 2D5B8 0012C638 4000BE8C */  lw         $fp, 0x40($a1)
    /* 2D5BC 0012C63C 4808C68F */  lw         $a2, 0x848($fp)
    /* 2D5C0 0012C640 0B00C054 */  bnel       $a2, $zero, .L0012C670
    /* 2D5C4 0012C644 2401C28F */   lw        $v0, 0x124($fp)
    /* 2D5C8 0012C648 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D5CC 0012C64C 03000324 */  addiu      $v1, $zero, 0x3
    /* 2D5D0 0012C650 05000424 */  addiu      $a0, $zero, 0x5
    /* 2D5D4 0012C654 7401C3AF */  sw         $v1, 0x174($fp)
    /* 2D5D8 0012C658 7C01C2AF */  sw         $v0, 0x17C($fp)
    /* 2D5DC 0012C65C 4401C4AF */  sw         $a0, 0x144($fp)
    /* 2D5E0 0012C660 3C01C2AF */  sw         $v0, 0x13C($fp)
    /* 2D5E4 0012C664 4001C2AF */  sw         $v0, 0x140($fp)
    /* 2D5E8 0012C668 8801C2AF */  sw         $v0, 0x188($fp)
    /* 2D5EC 0012C66C 2401C28F */  lw         $v0, 0x124($fp)
.align 2
  .L0012C670:
    /* 2D5F0 0012C670 0F004224 */  addiu      $v0, $v0, 0xF
    /* 2D5F4 0012C674 03110200 */  sra        $v0, $v0, 4
    /* 2D5F8 0012C678 0800C010 */  beqz       $a2, .L0012C69C
    /* 2D5FC 0012C67C 2C01C2AF */   sw        $v0, 0x12C($fp)
    /* 2D600 0012C680 3C01C28F */  lw         $v0, 0x13C($fp)
    /* 2D604 0012C684 06004014 */  bnez       $v0, .L0012C6A0
    /* 2D608 0012C688 2801C28F */   lw        $v0, 0x128($fp)
    /* 2D60C 0012C68C 1F004224 */  addiu      $v0, $v0, 0x1F
    /* 2D610 0012C690 43110200 */  sra        $v0, $v0, 5
    /* 2D614 0012C694 04000010 */  b          .L0012C6A8
    /* 2D618 0012C698 40100200 */   sll       $v0, $v0, 1
.align 2
  .L0012C69C:
    /* 2D61C 0012C69C 2801C28F */  lw         $v0, 0x128($fp)
.align 2
  .L0012C6A0:
    /* 2D620 0012C6A0 0F004224 */  addiu      $v0, $v0, 0xF
    /* 2D624 0012C6A4 03110200 */  sra        $v0, $v0, 4
.align 2
  .L0012C6A8:
    /* 2D628 0012C6A8 3001C2AF */  sw         $v0, 0x130($fp)
    /* 2D62C 0012C6AC 00B10200 */  sll        $s6, $v0, 4
    /* 2D630 0012C6B0 2C01C28F */  lw         $v0, 0x12C($fp)
    /* 2D634 0012C6B4 0000A38C */  lw         $v1, 0x0($a1)
    /* 2D638 0012C6B8 00B90200 */  sll        $s7, $v0, 4
    /* 2D63C 0012C6BC 0400E316 */  bne        $s7, $v1, .L0012C6D0
    /* 2D640 0012C6C0 2805C227 */   addiu     $v0, $fp, 0x528
    /* 2D644 0012C6C4 0400A28C */  lw         $v0, 0x4($a1)
    /* 2D648 0012C6C8 6D00C212 */  beq        $s6, $v0, .L0012C880
    /* 2D64C 0012C6CC 2805C227 */   addiu     $v0, $fp, 0x528
.align 2
  .L0012C6D0:
    /* 2D650 0012C6D0 0400B6AC */  sw         $s6, 0x4($a1)
    /* 2D654 0012C6D4 80011024 */  addiu      $s0, $zero, 0x180
    /* 2D658 0012C6D8 0000B7AC */  sw         $s7, 0x0($a1)
    /* 2D65C 0012C6DC 1880D002 */  mult       $s0, $s6, $s0
    /* 2D660 0012C6E0 4400A2AF */  sw         $v0, 0x44($sp)
    /* 2D664 0012C6E4 0801D127 */  addiu      $s1, $fp, 0x108
    /* 2D668 0012C6E8 2003C227 */  addiu      $v0, $fp, 0x320
    /* 2D66C 0012C6EC 2D202002 */  daddu      $a0, $s1, $zero
    /* 2D670 0012C6F0 3000A2AF */  sw         $v0, 0x30($sp)
    /* 2D674 0012C6F4 E801D327 */  addiu      $s3, $fp, 0x1E8
    /* 2D678 0012C6F8 8803C227 */  addiu      $v0, $fp, 0x388
    /* 2D67C 0012C6FC 1880F002 */  mult       $s0, $s7, $s0
    /* 2D680 0012C700 3400A2AF */  sw         $v0, 0x34($sp)
    /* 2D684 0012C704 5002D427 */  addiu      $s4, $fp, 0x250
    /* 2D688 0012C708 F003C227 */  addiu      $v0, $fp, 0x3F0
    /* 2D68C 0012C70C B802D527 */  addiu      $s5, $fp, 0x2B8
    /* 2D690 0012C710 3800A2AF */  sw         $v0, 0x38($sp)
    /* 2D694 0012C714 43901600 */  sra        $s2, $s6, 1
    /* 2D698 0012C718 5804C227 */  addiu      $v0, $fp, 0x458
    /* 2D69C 0012C71C 02821000 */  srl        $s0, $s0, 8
    /* 2D6A0 0012C720 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 2D6A4 0012C724 C004C227 */  addiu      $v0, $fp, 0x4C0
    /* 2D6A8 0012C728 54AF040C */  jal        func_0012BD50
    /* 2D6AC 0012C72C 4000A2AF */   sw        $v0, 0x40($sp)
    /* 2D6B0 0012C730 2D20C003 */  daddu      $a0, $fp, $zero
    /* 2D6B4 0012C734 2D282002 */  daddu      $a1, $s1, $zero
    /* 2D6B8 0012C738 2D300002 */  daddu      $a2, $s0, $zero
    /* 2D6BC 0012C73C 58AF040C */  jal        func_0012BD60
    /* 2D6C0 0012C740 40000724 */   addiu     $a3, $zero, 0x40
    /* 2D6C4 0012C744 FC00C2AF */  sw         $v0, 0xFC($fp)
    /* 2D6C8 0012C748 2D20C003 */  daddu      $a0, $fp, $zero
    /* 2D6CC 0012C74C 2D282002 */  daddu      $a1, $s1, $zero
    /* 2D6D0 0012C750 2D300002 */  daddu      $a2, $s0, $zero
    /* 2D6D4 0012C754 58AF040C */  jal        func_0012BD60
    /* 2D6D8 0012C758 40000724 */   addiu     $a3, $zero, 0x40
    /* 2D6DC 0012C75C 0001C2AF */  sw         $v0, 0x100($fp)
    /* 2D6E0 0012C760 2D282002 */  daddu      $a1, $s1, $zero
    /* 2D6E4 0012C764 2D300002 */  daddu      $a2, $s0, $zero
    /* 2D6E8 0012C768 2D20C003 */  daddu      $a0, $fp, $zero
    /* 2D6EC 0012C76C 58AF040C */  jal        func_0012BD60
    /* 2D6F0 0012C770 40000724 */   addiu     $a3, $zero, 0x40
    /* 2D6F4 0012C774 3400A88F */  lw         $t0, 0x34($sp)
    /* 2D6F8 0012C778 2D206002 */  daddu      $a0, $s3, $zero
    /* 2D6FC 0012C77C 3800A98F */  lw         $t1, 0x38($sp)
    /* 2D700 0012C780 2D288002 */  daddu      $a1, $s4, $zero
    /* 2D704 0012C784 3C00AA8F */  lw         $t2, 0x3C($sp)
    /* 2D708 0012C788 2D30A002 */  daddu      $a2, $s5, $zero
    /* 2D70C 0012C78C 4000AB8F */  lw         $t3, 0x40($sp)
    /* 2D710 0012C790 0401C2AF */  sw         $v0, 0x104($fp)
    /* 2D714 0012C794 4400A28F */  lw         $v0, 0x44($sp)
    /* 2D718 0012C798 3000A78F */  lw         $a3, 0x30($sp)
    /* 2D71C 0012C79C 0000A2AF */  sw         $v0, 0x0($sp)
    /* 2D720 0012C7A0 FC00C28F */  lw         $v0, 0xFC($fp)
    /* 2D724 0012C7A4 0800A2AF */  sw         $v0, 0x8($sp)
    /* 2D728 0012C7A8 0001C38F */  lw         $v1, 0x100($fp)
    /* 2D72C 0012C7AC 1000A3AF */  sw         $v1, 0x10($sp)
    /* 2D730 0012C7B0 0401C28F */  lw         $v0, 0x104($fp)
    /* 2D734 0012C7B4 2000B7AF */  sw         $s7, 0x20($sp)
    /* 2D738 0012C7B8 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2D73C 0012C7BC 2CB2040C */  jal        func_0012C8B0
    /* 2D740 0012C7C0 1800A2AF */   sw        $v0, 0x18($sp)
    /* 2D744 0012C7C4 2D206002 */  daddu      $a0, $s3, $zero
    /* 2D748 0012C7C8 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D74C 0012C7CC 30B1040C */  jal        func_0012C4C0
    /* 2D750 0012C7D0 2D30C002 */   daddu     $a2, $s6, $zero
    /* 2D754 0012C7D4 2D208002 */  daddu      $a0, $s4, $zero
    /* 2D758 0012C7D8 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D75C 0012C7DC 30B1040C */  jal        func_0012C4C0
    /* 2D760 0012C7E0 2D30C002 */   daddu     $a2, $s6, $zero
    /* 2D764 0012C7E4 2D20A002 */  daddu      $a0, $s5, $zero
    /* 2D768 0012C7E8 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D76C 0012C7EC 30B1040C */  jal        func_0012C4C0
    /* 2D770 0012C7F0 2D30C002 */   daddu     $a2, $s6, $zero
    /* 2D774 0012C7F4 3000A48F */  lw         $a0, 0x30($sp)
    /* 2D778 0012C7F8 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D77C 0012C7FC 30B1040C */  jal        func_0012C4C0
    /* 2D780 0012C800 2D304002 */   daddu     $a2, $s2, $zero
    /* 2D784 0012C804 3400A48F */  lw         $a0, 0x34($sp)
    /* 2D788 0012C808 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D78C 0012C80C 30B1040C */  jal        func_0012C4C0
    /* 2D790 0012C810 2D304002 */   daddu     $a2, $s2, $zero
    /* 2D794 0012C814 3800A48F */  lw         $a0, 0x38($sp)
    /* 2D798 0012C818 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D79C 0012C81C 30B1040C */  jal        func_0012C4C0
    /* 2D7A0 0012C820 2D304002 */   daddu     $a2, $s2, $zero
    /* 2D7A4 0012C824 3C00A48F */  lw         $a0, 0x3C($sp)
    /* 2D7A8 0012C828 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D7AC 0012C82C 30B1040C */  jal        func_0012C4C0
    /* 2D7B0 0012C830 2D304002 */   daddu     $a2, $s2, $zero
    /* 2D7B4 0012C834 4000A48F */  lw         $a0, 0x40($sp)
    /* 2D7B8 0012C838 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D7BC 0012C83C 30B1040C */  jal        func_0012C4C0
    /* 2D7C0 0012C840 2D304002 */   daddu     $a2, $s2, $zero
    /* 2D7C4 0012C844 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2D7C8 0012C848 2D304002 */  daddu      $a2, $s2, $zero
    /* 2D7CC 0012C84C 4400A48F */  lw         $a0, 0x44($sp)
    /* 2D7D0 0012C850 E000BFDF */  ld         $ra, 0xE0($sp)
    /* 2D7D4 0012C854 D000BEDF */  ld         $fp, 0xD0($sp)
    /* 2D7D8 0012C858 C000B7DF */  ld         $s7, 0xC0($sp)
    /* 2D7DC 0012C85C B000B6DF */  ld         $s6, 0xB0($sp)
    /* 2D7E0 0012C860 A000B5DF */  ld         $s5, 0xA0($sp)
    /* 2D7E4 0012C864 9000B4DF */  ld         $s4, 0x90($sp)
    /* 2D7E8 0012C868 8000B3DF */  ld         $s3, 0x80($sp)
    /* 2D7EC 0012C86C 7000B2DF */  ld         $s2, 0x70($sp)
    /* 2D7F0 0012C870 6000B1DF */  ld         $s1, 0x60($sp)
    /* 2D7F4 0012C874 5000B0DF */  ld         $s0, 0x50($sp)
    /* 2D7F8 0012C878 30B10408 */  j          func_0012C4C0
    /* 2D7FC 0012C87C F000BD27 */   addiu     $sp, $sp, 0xF0
.align 2
  .L0012C880:
    /* 2D800 0012C880 E000BFDF */  ld         $ra, 0xE0($sp)
    /* 2D804 0012C884 D000BEDF */  ld         $fp, 0xD0($sp)
    /* 2D808 0012C888 C000B7DF */  ld         $s7, 0xC0($sp)
    /* 2D80C 0012C88C B000B6DF */  ld         $s6, 0xB0($sp)
    /* 2D810 0012C890 A000B5DF */  ld         $s5, 0xA0($sp)
    /* 2D814 0012C894 9000B4DF */  ld         $s4, 0x90($sp)
    /* 2D818 0012C898 8000B3DF */  ld         $s3, 0x80($sp)
    /* 2D81C 0012C89C 7000B2DF */  ld         $s2, 0x70($sp)
    /* 2D820 0012C8A0 6000B1DF */  ld         $s1, 0x60($sp)
    /* 2D824 0012C8A4 5000B0DF */  ld         $s0, 0x50($sp)
    /* 2D828 0012C8A8 0800E003 */  jr         $ra
    /* 2D82C 0012C8AC F000BD27 */   addiu     $sp, $sp, 0xF0
endlabel func_0012C608
