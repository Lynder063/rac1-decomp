.align 3
nonmatching func_001ED818, 0x37C

glabel func_001ED818
    /* EE798 001ED818 30FFBD27 */  addiu      $sp, $sp, -0xD0
    /* EE79C 001ED81C 1400023C */  lui        $v0, %hi(D_0013F6E0)
    /* EE7A0 001ED820 8000B67F */  sq         $s6, 0x80($sp)
    /* EE7A4 001ED824 2D20A003 */  daddu      $a0, $sp, $zero
    /* EE7A8 001ED828 9000B77F */  sq         $s7, 0x90($sp)
    /* EE7AC 001ED82C E0F65624 */  addiu      $s6, $v0, %lo(D_0013F6E0)
    /* EE7B0 001ED830 80BF013C */  lui        $at, (0xBF800000 >> 16)
    /* EE7B4 001ED834 00608144 */  mtc1       $at, $f12
    /* EE7B8 001ED838 1800173C */  lui        $s7, %hi(D_001871D0)
    /* EE7BC 001ED83C 7000B57F */  sq         $s5, 0x70($sp)
    /* EE7C0 001ED840 2D28C002 */  daddu      $a1, $s6, $zero
    /* EE7C4 001ED844 A000BF7F */  sq         $ra, 0xA0($sp)
    /* EE7C8 001ED848 D071F526 */  addiu      $s5, $s7, %lo(D_001871D0)
    /* EE7CC 001ED84C 6000B47F */  sq         $s4, 0x60($sp)
    /* EE7D0 001ED850 5000B37F */  sq         $s3, 0x50($sp)
    /* EE7D4 001ED854 4000B27F */  sq         $s2, 0x40($sp)
    /* EE7D8 001ED858 3000B17F */  sq         $s1, 0x30($sp)
    /* EE7DC 001ED85C 2000B07F */  sq         $s0, 0x20($sp)
    /* EE7E0 001ED860 C800B7E7 */  swc1       $f23, 0xC8($sp)
    /* EE7E4 001ED864 C000B6E7 */  swc1       $f22, 0xC0($sp)
    /* EE7E8 001ED868 B800B5E7 */  swc1       $f21, 0xB8($sp)
    /* EE7EC 001ED86C 70E7070C */  jal        func_001F9DC0
    /* EE7F0 001ED870 B000B4E7 */   swc1      $f20, 0xB0($sp)
    /* EE7F4 001ED874 4000A426 */  addiu      $a0, $s5, 0x40
    /* EE7F8 001ED878 3000A326 */  addiu      $v1, $s5, 0x30
    /* EE7FC 001ED87C 00006278 */  lq         $v0, 0x0($v1)
    /* EE800 001ED880 0000827C */  sq         $v0, 0x0($a0)
    /* EE804 001ED884 0000A27B */  lq         $v0, 0x0($sp)
    /* EE808 001ED888 0000627C */  sq         $v0, 0x0($v1)
    /* EE80C 001ED88C 2000B026 */  addiu      $s0, $s5, 0x20
    /* EE810 001ED890 2D28A003 */  daddu      $a1, $sp, $zero
    /* EE814 001ED894 1EE7070C */  jal        func_001F9C78
    /* EE818 001ED898 2D200002 */   daddu     $a0, $s0, $zero
    /* EE81C 001ED89C 7ABF013C */  lui        $at, (0xBF7AE148 >> 16)
    /* EE820 001ED8A0 48E12134 */  ori        $at, $at, (0xBF7AE148 & 0xFFFF)
    /* EE824 001ED8A4 00088144 */  mtc1       $at, $f1
    /* EE828 001ED8A8 00000000 */  nop
    /* EE82C 001ED8AC 34000146 */  c.lt.s     $f0, $f1
    /* EE830 001ED8B0 00000000 */  nop
    /* EE834 001ED8B4 0C000045 */  bc1f       .L001ED8E8
    /* EE838 001ED8B8 0000A1C7 */   lwc1      $f1, 0x0($sp)
    /* EE83C 001ED8BC 4C3E013C */  lui        $at, (0x3E4CCCCD >> 16)
    /* EE840 001ED8C0 CDCC2134 */  ori        $at, $at, (0x3E4CCCCD & 0xFFFF)
    /* EE844 001ED8C4 00008144 */  mtc1       $at, $f0
    /* EE848 001ED8C8 0400A2C7 */  lwc1       $f2, 0x4($sp)
    /* EE84C 001ED8CC 0800A3C7 */  lwc1       $f3, 0x8($sp)
    /* EE850 001ED8D0 40080046 */  add.s      $f1, $f1, $f0
    /* EE854 001ED8D4 80100046 */  add.s      $f2, $f2, $f0
    /* EE858 001ED8D8 C0180046 */  add.s      $f3, $f3, $f0
    /* EE85C 001ED8DC 0000A1E7 */  swc1       $f1, 0x0($sp)
    /* EE860 001ED8E0 0400A2E7 */  swc1       $f2, 0x4($sp)
    /* EE864 001ED8E4 0800A3E7 */  swc1       $f3, 0x8($sp)
.align 2
  .L001ED8E8:
    /* EE868 001ED8E8 753C013C */  lui        $at, (0x3C75C28F >> 16)
    /* EE86C 001ED8EC 8FC22134 */  ori        $at, $at, (0x3C75C28F & 0xFFFF)
    /* EE870 001ED8F0 00A08144 */  mtc1       $at, $f20
    /* EE874 001ED8F4 5000A426 */  addiu      $a0, $s5, 0x50
    /* EE878 001ED8F8 4C3E013C */  lui        $at, (0x3E4CCCCD >> 16)
    /* EE87C 001ED8FC CDCC2134 */  ori        $at, $at, (0x3E4CCCCD & 0xFFFF)
    /* EE880 001ED900 00A88144 */  mtc1       $at, $f21
    /* EE884 001ED904 7000B226 */  addiu      $s2, $s5, 0x70
    /* EE888 001ED908 00B88044 */  mtc1       $zero, $f23
    /* EE88C 001ED90C 86A30046 */  mov.s      $f14, $f20
    /* EE890 001ED910 0000ADC7 */  lwc1       $f13, 0x0($sp)
    /* EE894 001ED914 C6AB0046 */  mov.s      $f15, $f21
    /* EE898 001ED918 2000ACC6 */  lwc1       $f12, 0x20($s5)
    /* EE89C 001ED91C 06BC0046 */  mov.s      $f16, $f23
    /* EE8A0 001ED920 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EE8A4 001ED924 00B08144 */  mtc1       $at, $f22
    /* EE8A8 001ED928 48B0070C */  jal        func_001EC120
    /* EE8AC 001ED92C F0FDD426 */   addiu     $s4, $s6, -0x210
    /* EE8B0 001ED930 6000B326 */  addiu      $s3, $s5, 0x60
    /* EE8B4 001ED934 0400ADC7 */  lwc1       $f13, 0x4($sp)
    /* EE8B8 001ED938 5400A426 */  addiu      $a0, $s5, 0x54
    /* EE8BC 001ED93C 2400ACC6 */  lwc1       $f12, 0x24($s5)
    /* EE8C0 001ED940 86A30046 */  mov.s      $f14, $f20
    /* EE8C4 001ED944 C6AB0046 */  mov.s      $f15, $f21
    /* EE8C8 001ED948 06BC0046 */  mov.s      $f16, $f23
    /* EE8CC 001ED94C 48B0070C */  jal        func_001EC120
    /* EE8D0 001ED950 2000A0E6 */   swc1      $f0, 0x20($s5)
    /* EE8D4 001ED954 0800ADC7 */  lwc1       $f13, 0x8($sp)
    /* EE8D8 001ED958 86A30046 */  mov.s      $f14, $f20
    /* EE8DC 001ED95C 2800ACC6 */  lwc1       $f12, 0x28($s5)
    /* EE8E0 001ED960 C6AB0046 */  mov.s      $f15, $f21
    /* EE8E4 001ED964 06BC0046 */  mov.s      $f16, $f23
    /* EE8E8 001ED968 5800A426 */  addiu      $a0, $s5, 0x58
    /* EE8EC 001ED96C 48B0070C */  jal        func_001EC120
    /* EE8F0 001ED970 2400A0E6 */   swc1      $f0, 0x24($s5)
    /* EE8F4 001ED974 2D200002 */  daddu      $a0, $s0, $zero
    /* EE8F8 001ED978 06B30046 */  mov.s      $f12, $f22
    /* EE8FC 001ED97C 2800A0E6 */  swc1       $f0, 0x28($s5)
    /* EE900 001ED980 70E7070C */  jal        func_001F9DC0
    /* EE904 001ED984 2D288000 */   daddu     $a1, $a0, $zero
    /* EE908 001ED988 2D306002 */  daddu      $a2, $s3, $zero
    /* EE90C 001ED98C 2D288002 */  daddu      $a1, $s4, $zero
    /* EE910 001ED990 FCE6070C */  jal        func_001F9BF0
    /* EE914 001ED994 2D204002 */   daddu     $a0, $s2, $zero
    /* EE918 001ED998 2EE7070C */  jal        func_001F9CB8
    /* EE91C 001ED99C 2D204002 */   daddu     $a0, $s2, $zero
    /* EE920 001ED9A0 2D28A003 */  daddu      $a1, $sp, $zero
    /* EE924 001ED9A4 2D204002 */  daddu      $a0, $s2, $zero
    /* EE928 001ED9A8 1EE7070C */  jal        func_001F9C78
    /* EE92C 001ED9AC A000A0E6 */   swc1      $f0, 0xA0($s5)
    /* EE930 001ED9B0 1000B127 */  addiu      $s1, $sp, 0x10
    /* EE934 001ED9B4 06030046 */  mov.s      $f12, $f0
    /* EE938 001ED9B8 A800A0E6 */  swc1       $f0, 0xA8($s5)
    /* EE93C 001ED9BC 2D202002 */  daddu      $a0, $s1, $zero
    /* EE940 001ED9C0 70E7070C */  jal        func_001F9DC0
    /* EE944 001ED9C4 2D28A003 */   daddu     $a1, $sp, $zero
    /* EE948 001ED9C8 9000A326 */  addiu      $v1, $s5, 0x90
    /* EE94C 001ED9CC 0000227A */  lq         $v0, 0x0($s1)
    /* EE950 001ED9D0 0000627C */  sq         $v0, 0x0($v1)
    /* EE954 001ED9D4 8000B026 */  addiu      $s0, $s5, 0x80
    /* EE958 001ED9D8 2D284002 */  daddu      $a1, $s2, $zero
    /* EE95C 001ED9DC 2D302002 */  daddu      $a2, $s1, $zero
    /* EE960 001ED9E0 FCE6070C */  jal        func_001F9BF0
    /* EE964 001ED9E4 2D200002 */   daddu     $a0, $s0, $zero
    /* EE968 001ED9E8 2EE7070C */  jal        func_001F9CB8
    /* EE96C 001ED9EC 2D200002 */   daddu     $a0, $s0, $zero
    /* EE970 001ED9F0 03B30046 */  div.s      $f12, $f22, $f0
    /* EE974 001ED9F4 2D200002 */  daddu      $a0, $s0, $zero
    /* EE978 001ED9F8 A400A0E6 */  swc1       $f0, 0xA4($s5)
    /* EE97C 001ED9FC 0CE7070C */  jal        func_001F9C30
    /* EE980 001EDA00 2D288000 */   daddu     $a1, $a0, $zero
    /* EE984 001EDA04 0000827A */  lq         $v0, 0x0($s4)
    /* EE988 001EDA08 0000627E */  sq         $v0, 0x0($s3)
    /* EE98C 001EDA0C 70FDD426 */  addiu      $s4, $s6, -0x290
    /* EE990 001EDA10 50000324 */  addiu      $v1, $zero, 0x50
    /* EE994 001EDA14 8422828E */  lw         $v0, 0x2284($s4)
    /* EE998 001EDA18 06004354 */  bnel       $v0, $v1, .L001EDA34
    /* EE99C 001EDA1C 800081C6 */   lwc1      $f1, 0x80($s4)
    /* EE9A0 001EDA20 8420838E */  lw         $v1, 0x2084($s4)
    /* EE9A4 001EDA24 11000224 */  addiu      $v0, $zero, 0x11
    /* EE9A8 001EDA28 14006254 */  bnel       $v1, $v0, .L001EDA7C
    /* EE9AC 001EDA2C 840080C6 */   lwc1      $f0, 0x84($s4)
    /* EE9B0 001EDA30 800081C6 */  lwc1       $f1, 0x80($s4)
.align 2
  .L001EDA34:
    /* EE9B4 001EDA34 06BC0046 */  mov.s      $f16, $f23
    /* EE9B8 001EDA38 840080C6 */  lwc1       $f0, 0x84($s4)
    /* EE9BC 001EDA3C 1000A426 */  addiu      $a0, $s5, 0x10
    /* EE9C0 001EDA40 88008DC6 */  lwc1       $f13, 0x88($s4)
    /* EE9C4 001EDA44 0800ACC6 */  lwc1       $f12, 0x8($s5)
    /* EE9C8 001EDA48 D071E1E6 */  swc1       $f1, %lo(D_001871D0)($s7)
    /* EE9CC 001EDA4C F53B013C */  lui        $at, (0x3BF5C28F >> 16)
    /* EE9D0 001EDA50 8FC22134 */  ori        $at, $at, (0x3BF5C28F & 0xFFFF)
    /* EE9D4 001EDA54 00708144 */  mtc1       $at, $f14
    /* EE9D8 001EDA58 333E013C */  lui        $at, (0x3E333333 >> 16)
    /* EE9DC 001EDA5C 33332134 */  ori        $at, $at, (0x3E333333 & 0xFFFF)
    /* EE9E0 001EDA60 00788144 */  mtc1       $at, $f15
    /* EE9E4 001EDA64 48B0070C */  jal        func_001EC120
    /* EE9E8 001EDA68 0400A0E6 */   swc1      $f0, 0x4($s5)
    /* EE9EC 001EDA6C 880081C6 */  lwc1       $f1, 0x88($s4)
    /* EE9F0 001EDA70 0800A0E6 */  swc1       $f0, 0x8($s5)
    /* EE9F4 001EDA74 04000010 */  b          .L001EDA88
    /* EE9F8 001EDA78 0C00A1E6 */   swc1      $f1, 0xC($s5)
.align 2
  .L001EDA7C:
    /* EE9FC 001EDA7C 800081C6 */  lwc1       $f1, 0x80($s4)
    /* EEA00 001EDA80 0400A0E6 */  swc1       $f0, 0x4($s5)
    /* EEA04 001EDA84 D071E1E6 */  swc1       $f1, %lo(D_001871D0)($s7)
.align 2
  .L001EDA88:
    /* EEA08 001EDA88 AC00A626 */  addiu      $a2, $s5, 0xAC
    /* EEA0C 001EDA8C 2D280000 */  daddu      $a1, $zero, $zero
    /* EEA10 001EDA90 1400073C */  lui        $a3, %hi(D_0013F450)
    /* EEA14 001EDA94 2D20C000 */  daddu      $a0, $a2, $zero
.align 2
  .L001EDA98:
    /* EEA18 001EDA98 040080C4 */  lwc1       $f0, 0x4($a0)
    /* EEA1C 001EDA9C 0100A324 */  addiu      $v1, $a1, 0x1
    /* EEA20 001EDAA0 2D286000 */  daddu      $a1, $v1, $zero
    /* EEA24 001EDAA4 04006228 */  slti       $v0, $v1, 0x4
    /* EEA28 001EDAA8 000080E4 */  swc1       $f0, 0x0($a0)
    /* EEA2C 001EDAAC FAFF4014 */  bnez       $v0, .L001EDA98
    /* EEA30 001EDAB0 04008424 */   addiu     $a0, $a0, 0x4
    /* EEA34 001EDAB4 50F4E224 */  addiu      $v0, $a3, %lo(D_0013F450)
    /* EEA38 001EDAB8 80180300 */  sll        $v1, $v1, 2
    /* EEA3C 001EDABC 980040C4 */  lwc1       $f0, 0x98($v0)
    /* EEA40 001EDAC0 2118C300 */  addu       $v1, $a2, $v1
    /* EEA44 001EDAC4 FC02448C */  lw         $a0, 0x2FC($v0)
    /* EEA48 001EDAC8 1E008010 */  beqz       $a0, .L001EDB44
    /* EEA4C 001EDACC 000060E4 */   swc1      $f0, 0x0($v1)
    /* EEA50 001EDAD0 A6008384 */  lh         $v1, 0xA6($a0)
    /* EEA54 001EDAD4 BA040224 */  addiu      $v0, $zero, 0x4BA
    /* EEA58 001EDAD8 1A006210 */  beq        $v1, $v0, .L001EDB44
    /* EEA5C 001EDADC 36030224 */   addiu     $v0, $zero, 0x336
    /* EEA60 001EDAE0 19006250 */  beql       $v1, $v0, .L001EDB48
    /* EEA64 001EDAE4 DC00A0AE */   sw        $zero, 0xDC($s5)
    /* EEA68 001EDAE8 D400A28E */  lw         $v0, 0xD4($s5)
    /* EEA6C 001EDAEC 12008254 */  bnel       $a0, $v0, .L001EDB38
    /* EEA70 001EDAF0 D400A4AE */   sw        $a0, 0xD4($s5)
    /* EEA74 001EDAF4 180080C4 */  lwc1       $f0, 0x18($a0)
    /* EEA78 001EDAF8 D800A1C6 */  lwc1       $f1, 0xD8($s5)
    /* EEA7C 001EDAFC 01000146 */  sub.s      $f0, $f0, $f1
    /* EEA80 001EDB00 06030046 */  mov.s      $f12, $f0
    /* EEA84 001EDB04 E2E6070C */  jal        func_001F9B88
    /* EEA88 001EDB08 DC00A0E6 */   swc1      $f0, 0xDC($s5)
    /* EEA8C 001EDB0C 833A013C */  lui        $at, (0x3A83126F >> 16)
    /* EEA90 001EDB10 6F122134 */  ori        $at, $at, (0x3A83126F & 0xFFFF)
    /* EEA94 001EDB14 00088144 */  mtc1       $at, $f1
    /* EEA98 001EDB18 00000000 */  nop
    /* EEA9C 001EDB1C 34000146 */  c.lt.s     $f0, $f1
    /* EEAA0 001EDB20 00000000 */  nop
    /* EEAA4 001EDB24 01000345 */  bc1tl      .L001EDB2C
    /* EEAA8 001EDB28 DC00A0AE */   sw        $zero, 0xDC($s5)
.align 2
  .L001EDB2C:
    /* EEAAC 001EDB2C D400A28E */  lw         $v0, 0xD4($s5)
    /* EEAB0 001EDB30 08000010 */  b          .L001EDB54
    /* EEAB4 001EDB34 180040C4 */   lwc1      $f0, 0x18($v0)
.align 2
  .L001EDB38:
    /* EEAB8 001EDB38 DC00A0AE */  sw         $zero, 0xDC($s5)
    /* EEABC 001EDB3C 05000010 */  b          .L001EDB54
    /* EEAC0 001EDB40 180080C4 */   lwc1      $f0, 0x18($a0)
.align 2
  .L001EDB44:
    /* EEAC4 001EDB44 DC00A0AE */  sw         $zero, 0xDC($s5)
.align 2
  .L001EDB48:
    /* EEAC8 001EDB48 50F4E224 */  addiu      $v0, $a3, %lo(D_0013F450)
    /* EEACC 001EDB4C 880040C4 */  lwc1       $f0, 0x88($v0)
    /* EEAD0 001EDB50 D400A0AE */  sw         $zero, 0xD4($s5)
.align 2
  .L001EDB54:
    /* EEAD4 001EDB54 D800A0E6 */  swc1       $f0, 0xD8($s5)
    /* EEAD8 001EDB58 A000BF7B */  lq         $ra, 0xA0($sp)
    /* EEADC 001EDB5C 9000B77B */  lq         $s7, 0x90($sp)
    /* EEAE0 001EDB60 8000B67B */  lq         $s6, 0x80($sp)
    /* EEAE4 001EDB64 7000B57B */  lq         $s5, 0x70($sp)
    /* EEAE8 001EDB68 6000B47B */  lq         $s4, 0x60($sp)
    /* EEAEC 001EDB6C 5000B37B */  lq         $s3, 0x50($sp)
    /* EEAF0 001EDB70 4000B27B */  lq         $s2, 0x40($sp)
    /* EEAF4 001EDB74 3000B17B */  lq         $s1, 0x30($sp)
    /* EEAF8 001EDB78 2000B07B */  lq         $s0, 0x20($sp)
    /* EEAFC 001EDB7C C800B7C7 */  lwc1       $f23, 0xC8($sp)
    /* EEB00 001EDB80 C000B6C7 */  lwc1       $f22, 0xC0($sp)
    /* EEB04 001EDB84 B800B5C7 */  lwc1       $f21, 0xB8($sp)
    /* EEB08 001EDB88 B000B4C7 */  lwc1       $f20, 0xB0($sp)
    /* EEB0C 001EDB8C 0800E003 */  jr         $ra
    /* EEB10 001EDB90 D000BD27 */   addiu     $sp, $sp, 0xD0
endlabel func_001ED818
    /* EEB14 001EDB94 00000000 */  nop
