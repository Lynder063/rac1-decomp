.align 3
nonmatching func_00224C30, 0x484

glabel func_00224C30
    /* 125BB0 00224C30 10FFBD27 */  addiu      $sp, $sp, -0xF0
    /* 125BB4 00224C34 B000B67F */  sq         $s6, 0xB0($sp)
    /* 125BB8 00224C38 A000B57F */  sq         $s5, 0xA0($sp)
    /* 125BBC 00224C3C 2DB08000 */  daddu      $s6, $a0, $zero
    /* 125BC0 00224C40 D000BE7F */  sq         $fp, 0xD0($sp)
    /* 125BC4 00224C44 0F00153C */  lui        $s5, (0xF4240 >> 16)
    /* 125BC8 00224C48 C000B77F */  sq         $s7, 0xC0($sp)
    /* 125BCC 00224C4C 2D200000 */  daddu      $a0, $zero, $zero
    /* 125BD0 00224C50 9000B47F */  sq         $s4, 0x90($sp)
    /* 125BD4 00224C54 2DB80000 */  daddu      $s7, $zero, $zero
    /* 125BD8 00224C58 6000B17F */  sq         $s1, 0x60($sp)
    /* 125BDC 00224C5C E8031424 */  addiu      $s4, $zero, 0x3E8
    /* 125BE0 00224C60 E000BF7F */  sq         $ra, 0xE0($sp)
    /* 125BE4 00224C64 04001124 */  addiu      $s1, $zero, 0x4
    /* 125BE8 00224C68 8000B37F */  sq         $s3, 0x80($sp)
    /* 125BEC 00224C6C 4042B536 */  ori        $s5, $s5, (0xF4240 & 0xFFFF)
    /* 125BF0 00224C70 7000B27F */  sq         $s2, 0x70($sp)
    /* 125BF4 00224C74 16001E3C */  lui        $fp, %hi(D_001603A0)
    /* 125BF8 00224C78 8CD1070C */  jal        func_001F4630
    /* 125BFC 00224C7C 5000B07F */   sq        $s0, 0x50($sp)
    /* 125C00 00224C80 1400033C */  lui        $v1, %hi(D_0013D390)
    /* 125C04 00224C84 00000000 */  nop
.align 2
  .L00224C88:
    /* 125C08 00224C88 2000C68E */  lw         $a2, 0x20($s6)
    /* 125C0C 00224C8C 90D36324 */  addiu      $v1, $v1, %lo(D_0013D390)
    /* 125C10 00224C90 FCFF2526 */  addiu      $a1, $s1, -0x4
    /* 125C14 00224C94 DC00628C */  lw         $v0, 0xDC($v1)
    /* 125C18 00224C98 34002726 */  addiu      $a3, $s1, 0x34
    /* 125C1C 00224C9C FDFFD324 */  addiu      $s3, $a2, -0x3
    /* 125C20 00224CA0 FFFF3026 */  addiu      $s0, $s1, -0x1
    /* 125C24 00224CA4 03004228 */  slti       $v0, $v0, 0x3
    /* 125C28 00224CA8 1A004010 */  beqz       $v0, .L00224D14
    /* 125C2C 00224CAC 31003226 */   addiu     $s2, $s1, 0x31
    /* 125C30 00224CB0 E400628C */  lw         $v0, 0xE4($v1)
    /* 125C34 00224CB4 18004304 */  bgezl      $v0, .L00224D18
    /* 125C38 00224CB8 2D280002 */   daddu     $a1, $s0, $zero
    /* 125C3C 00224CBC 1D00033C */  lui        $v1, %hi(D_001D5F70)
    /* 125C40 00224CC0 705F6324 */  addiu      $v1, $v1, %lo(D_001D5F70)
    /* 125C44 00224CC4 5401628C */  lw         $v0, 0x154($v1)
    /* 125C48 00224CC8 0B004228 */  slti       $v0, $v0, 0xB
    /* 125C4C 00224CCC 12004054 */  bnel       $v0, $zero, .L00224D18
    /* 125C50 00224CD0 2D280002 */   daddu     $a1, $s0, $zero
    /* 125C54 00224CD4 4000C28E */  lw         $v0, 0x40($s6)
    /* 125C58 00224CD8 0F005754 */  bnel       $v0, $s7, .L00224D18
    /* 125C5C 00224CDC 2D280002 */   daddu     $a1, $s0, $zero
    /* 125C60 00224CE0 2D200000 */  daddu      $a0, $zero, $zero
    /* 125C64 00224CE4 20800834 */  ori        $t0, $zero, 0x8020
    /* 125C68 00224CE8 38440800 */  dsll       $t0, $t0, 16
    /* 125C6C 00224CEC FFFF0835 */  ori        $t0, $t0, 0xFFFF
    /* 125C70 00224CF0 9005080C */  jal        func_00201640
    /* 125C74 00224CF4 2D480000 */   daddu     $t1, $zero, $zero
    /* 125C78 00224CF8 B095888F */  lw         $t0, -0x6A50($gp)
    /* 125C7C 00224CFC 03000424 */  addiu      $a0, $zero, 0x3
    /* 125C80 00224D00 2D280002 */  daddu      $a1, $s0, $zero
    /* 125C84 00224D04 2D306002 */  daddu      $a2, $s3, $zero
    /* 125C88 00224D08 2D384002 */  daddu      $a3, $s2, $zero
    /* 125C8C 00224D0C 9005080C */  jal        func_00201640
    /* 125C90 00224D10 2D480000 */   daddu     $t1, $zero, $zero
.align 2
  .L00224D14:
    /* 125C94 00224D14 2D280002 */  daddu      $a1, $s0, $zero
.align 2
  .L00224D18:
    /* 125C98 00224D18 2D384002 */  daddu      $a3, $s2, $zero
    /* 125C9C 00224D1C 03000424 */  addiu      $a0, $zero, 0x3
    /* 125CA0 00224D20 2D306002 */  daddu      $a2, $s3, $zero
    /* 125CA4 00224D24 30800834 */  ori        $t0, $zero, 0x8030
    /* 125CA8 00224D28 38440800 */  dsll       $t0, $t0, 16
    /* 125CAC 00224D2C 30300835 */  ori        $t0, $t0, 0x3030
    /* 125CB0 00224D30 9005080C */  jal        func_00201640
    /* 125CB4 00224D34 2D480000 */   daddu     $t1, $zero, $zero
    /* 125CB8 00224D38 1400023C */  lui        $v0, %hi(D_0013D3B0)
    /* 125CBC 00224D3C 1C000324 */  addiu      $v1, $zero, 0x1C
    /* 125CC0 00224D40 B0D34424 */  addiu      $a0, $v0, %lo(D_0013D3B0)
    /* 125CC4 00224D44 1818E302 */  mult       $v1, $s7, $v1
    /* 125CC8 00224D48 E0FF8524 */  addiu      $a1, $a0, -0x20
    /* 125CCC 00224D4C DC00A28C */  lw         $v0, 0xDC($a1)
    /* 125CD0 00224D50 03004228 */  slti       $v0, $v0, 0x3
    /* 125CD4 00224D54 0E004010 */  beqz       $v0, .L00224D90
    /* 125CD8 00224D58 21906400 */   addu      $s2, $v1, $a0
    /* 125CDC 00224D5C E400A28C */  lw         $v0, 0xE4($a1)
    /* 125CE0 00224D60 BC004304 */  bgezl      $v0, .L00225054
    /* 125CE4 00224D64 30003126 */   addiu     $s1, $s1, 0x30
    /* 125CE8 00224D68 1D00033C */  lui        $v1, %hi(D_001D5F70)
    /* 125CEC 00224D6C 705F6324 */  addiu      $v1, $v1, %lo(D_001D5F70)
    /* 125CF0 00224D70 5401628C */  lw         $v0, 0x154($v1)
    /* 125CF4 00224D74 0B004228 */  slti       $v0, $v0, 0xB
    /* 125CF8 00224D78 B6004054 */  bnel       $v0, $zero, .L00225054
    /* 125CFC 00224D7C 30003126 */   addiu     $s1, $s1, 0x30
    /* 125D00 00224D80 0800A38C */  lw         $v1, 0x8($a1)
    /* 125D04 00224D84 02000224 */  addiu      $v0, $zero, 0x2
    /* 125D08 00224D88 03006250 */  beql       $v1, $v0, .L00224D98
    /* 125D0C 00224D8C 0000438E */   lw        $v1, 0x0($s2)
.align 2
  .L00224D90:
    /* 125D10 00224D90 B0000010 */  b          .L00225054
    /* 125D14 00224D94 30003126 */   addiu     $s1, $s1, 0x30
.align 2
  .L00224D98:
    /* 125D18 00224D98 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 125D1C 00224D9C 13006254 */  bnel       $v1, $v0, .L00224DEC
    /* 125D20 00224DA0 0C00448E */   lw        $a0, 0xC($s2)
    /* 125D24 00224DA4 2000D08E */  lw         $s0, 0x20($s6)
    /* 125D28 00224DA8 1C520424 */  addiu      $a0, $zero, 0x521C
    /* 125D2C 00224DAC 10003126 */  addiu      $s1, $s1, 0x10
    /* 125D30 00224DB0 C2171000 */  srl        $v0, $s0, 31
    /* 125D34 00224DB4 21800202 */  addu       $s0, $s0, $v0
    /* 125D38 00224DB8 50F9070C */  jal        func_001FE540
    /* 125D3C 00224DBC 43801000 */   sra       $s0, $s0, 1
    /* 125D40 00224DC0 2D282002 */  daddu      $a1, $s1, $zero
    /* 125D44 00224DC4 2D200002 */  daddu      $a0, $s0, $zero
    /* 125D48 00224DC8 2D384000 */  daddu      $a3, $v0, $zero
    /* 125D4C 00224DCC FF800634 */  ori        $a2, $zero, 0x80FF
    /* 125D50 00224DD0 38340600 */  dsll       $a2, $a2, 16
    /* 125D54 00224DD4 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 125D58 00224DD8 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 125D5C 00224DDC D0DB070C */  jal        func_001F6F40
    /* 125D60 00224DE0 20003126 */   addiu     $s1, $s1, 0x20
    /* 125D64 00224DE4 9D000010 */  b          .L0022505C
    /* 125D68 00224DE8 8081828F */   lw        $v0, -0x7E80($gp)
.align 2
  .L00224DEC:
    /* 125D6C 00224DEC 0300023C */  lui        $v0, (0x34BC0 >> 16)
    /* 125D70 00224DF0 C04B4234 */  ori        $v0, $v0, (0x34BC0 & 0xFFFF)
    /* 125D74 00224DF4 100E0324 */  addiu      $v1, $zero, 0xE10
    /* 125D78 00224DF8 1A008200 */  div        $zero, $a0, $v0
    /* 125D7C 00224DFC 01004050 */  beql       $v0, $zero, .L00224E04
    /* 125D80 00224E00 CD010000 */   break     0, 7
.align 2
  .L00224E04:
    /* 125D84 00224E04 3C000524 */  addiu      $a1, $zero, 0x3C
    /* 125D88 00224E08 FF80103C */  lui        $s0, (0x80FFA888 >> 16)
    /* 125D8C 00224E0C 2080023C */  lui        $v0, (0x8020FFFF >> 16)
    /* 125D90 00224E10 FFFF4234 */  ori        $v0, $v0, (0x8020FFFF & 0xFFFF)
    /* 125D94 00224E14 88A81036 */  ori        $s0, $s0, (0x80FFA888 & 0xFFFF)
    /* 125D98 00224E18 12300000 */  mflo       $a2
    /* 125D9C 00224E1C 1A008300 */  div        $zero, $a0, $v1
    /* 125DA0 00224E20 4000C38E */  lw         $v1, 0x40($s6)
    /* 125DA4 00224E24 26187700 */  xor        $v1, $v1, $s7
    /* 125DA8 00224E28 0A804300 */  movz       $s0, $v0, $v1
    /* 125DAC 00224E2C 6400C228 */  slti       $v0, $a2, 0x64
    /* 125DB0 00224E30 12200000 */  mflo       $a0
    /* 125DB4 00224E34 1828C500 */  mult       $a1, $a2, $a1
    /* 125DB8 00224E38 03004014 */  bnez       $v0, .L00224E48
    /* 125DBC 00224E3C 23388500 */   subu      $a3, $a0, $a1
    /* 125DC0 00224E40 63000624 */  addiu      $a2, $zero, 0x63
    /* 125DC4 00224E44 3B000724 */  addiu      $a3, $zero, 0x3B
.align 2
  .L00224E48:
    /* 125DC8 00224E48 1600053C */  lui        $a1, %hi(D_00160400)
    /* 125DCC 00224E4C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 125DD0 00224E50 0004A524 */  addiu      $a1, $a1, %lo(D_00160400)
    /* 125DD4 00224E54 9258040C */  jal        func_00116248
    /* 125DD8 00224E58 2D800002 */   daddu     $s0, $s0, $zero
    /* 125DDC 00224E5C 2D980002 */  daddu      $s3, $s0, $zero
    /* 125DE0 00224E60 9EE90434 */  ori        $a0, $zero, 0xE99E
    /* 125DE4 00224E64 6600080C */  jal        func_00200198
    /* 125DE8 00224E68 03000524 */   addiu     $a1, $zero, 0x3
    /* 125DEC 00224E6C 2D204000 */  daddu      $a0, $v0, $zero
    /* 125DF0 00224E70 04000524 */  addiu      $a1, $zero, 0x4
    /* 125DF4 00224E74 2D302002 */  daddu      $a2, $s1, $zero
    /* 125DF8 00224E78 10000724 */  addiu      $a3, $zero, 0x10
    /* 125DFC 00224E7C 10000824 */  addiu      $t0, $zero, 0x10
    /* 125E00 00224E80 1A01080C */  jal        func_00200468
    /* 125E04 00224E84 80000924 */   addiu     $t1, $zero, 0x80
    /* 125E08 00224E88 16000424 */  addiu      $a0, $zero, 0x16
    /* 125E0C 00224E8C 2D282002 */  daddu      $a1, $s1, $zero
    /* 125E10 00224E90 2D300002 */  daddu      $a2, $s0, $zero
    /* 125E14 00224E94 2D38A003 */  daddu      $a3, $sp, $zero
    /* 125E18 00224E98 5ADA070C */  jal        func_001F6968
    /* 125E1C 00224E9C FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 125E20 00224EA0 0800428E */  lw         $v0, 0x8($s2)
    /* 125E24 00224EA4 17004010 */  beqz       $v0, .L00224F04
    /* 125E28 00224EA8 9EE90434 */   ori       $a0, $zero, 0xE99E
    /* 125E2C 00224EAC 6600080C */  jal        func_00200198
    /* 125E30 00224EB0 04000524 */   addiu     $a1, $zero, 0x4
    /* 125E34 00224EB4 2D204000 */  daddu      $a0, $v0, $zero
    /* 125E38 00224EB8 10000724 */  addiu      $a3, $zero, 0x10
    /* 125E3C 00224EBC 10000824 */  addiu      $t0, $zero, 0x10
    /* 125E40 00224EC0 2D302002 */  daddu      $a2, $s1, $zero
    /* 125E44 00224EC4 4E000524 */  addiu      $a1, $zero, 0x4E
    /* 125E48 00224EC8 1A01080C */  jal        func_00200468
    /* 125E4C 00224ECC 80000924 */   addiu     $t1, $zero, 0x80
    /* 125E50 00224ED0 0800468E */  lw         $a2, 0x8($s2)
    /* 125E54 00224ED4 63000324 */  addiu      $v1, $zero, 0x63
    /* 125E58 00224ED8 2D20A003 */  daddu      $a0, $sp, $zero
    /* 125E5C 00224EDC A003C527 */  addiu      $a1, $fp, %lo(D_001603A0)
    /* 125E60 00224EE0 6400C228 */  slti       $v0, $a2, 0x64
    /* 125E64 00224EE4 9258040C */  jal        func_00116248
    /* 125E68 00224EE8 0A306200 */   movz      $a2, $v1, $v0
    /* 125E6C 00224EEC 60000424 */  addiu      $a0, $zero, 0x60
    /* 125E70 00224EF0 2D282002 */  daddu      $a1, $s1, $zero
    /* 125E74 00224EF4 2D306002 */  daddu      $a2, $s3, $zero
    /* 125E78 00224EF8 2D38A003 */  daddu      $a3, $sp, $zero
    /* 125E7C 00224EFC 5ADA070C */  jal        func_001F6968
    /* 125E80 00224F00 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L00224F04:
    /* 125E84 00224F04 0400478E */  lw         $a3, 0x4($s2)
    /* 125E88 00224F08 9800023C */  lui        $v0, (0x98967F >> 16)
    /* 125E8C 00224F0C 7F964234 */  ori        $v0, $v0, (0x98967F & 0xFFFF)
    /* 125E90 00224F10 2A184700 */  slt        $v1, $v0, $a3
    /* 125E94 00224F14 0B384300 */  movn       $a3, $v0, $v1
    /* 125E98 00224F18 E803E428 */  slti       $a0, $a3, 0x3E8
    /* 125E9C 00224F1C 07008010 */  beqz       $a0, .L00224F3C
    /* 125EA0 00224F20 10003126 */   addiu     $s1, $s1, 0x10
    /* 125EA4 00224F24 2D30E000 */  daddu      $a2, $a3, $zero
    /* 125EA8 00224F28 2D20A003 */  daddu      $a0, $sp, $zero
    /* 125EAC 00224F2C 9258040C */  jal        func_00116248
    /* 125EB0 00224F30 A003C527 */   addiu     $a1, $fp, %lo(D_001603A0)
    /* 125EB4 00224F34 1F000010 */  b          .L00224FB4
    /* 125EB8 00224F38 4F750424 */   addiu     $a0, $zero, 0x754F
.align 2
  .L00224F3C:
    /* 125EBC 00224F3C 0F00023C */  lui        $v0, (0xF423F >> 16)
    /* 125EC0 00224F40 3F424234 */  ori        $v0, $v0, (0xF423F & 0xFFFF)
    /* 125EC4 00224F44 2A104700 */  slt        $v0, $v0, $a3
    /* 125EC8 00224F48 0C004054 */  bnel       $v0, $zero, .L00224F7C
    /* 125ECC 00224F4C 1A00F500 */   div       $zero, $a3, $s5
    /* 125ED0 00224F50 1A00F400 */  div        $zero, $a3, $s4
    /* 125ED4 00224F54 01008052 */  beql       $s4, $zero, .L00224F5C
    /* 125ED8 00224F58 CD010000 */   break     0, 7
.align 2
  .L00224F5C:
    /* 125EDC 00224F5C 1600023C */  lui        $v0, %hi(D_001603D0)
    /* 125EE0 00224F60 2D20A003 */  daddu      $a0, $sp, $zero
    /* 125EE4 00224F64 12300000 */  mflo       $a2
    /* 125EE8 00224F68 10380000 */  mfhi       $a3
    /* 125EEC 00224F6C 9258040C */  jal        func_00116248
    /* 125EF0 00224F70 D0034524 */   addiu     $a1, $v0, %lo(D_001603D0)
    /* 125EF4 00224F74 0F000010 */  b          .L00224FB4
    /* 125EF8 00224F78 4F750424 */   addiu     $a0, $zero, 0x754F
.align 2
  .L00224F7C:
    /* 125EFC 00224F7C 0100A052 */  beql       $s5, $zero, .L00224F84
    /* 125F00 00224F80 CD010000 */   break     0, 7
.align 2
  .L00224F84:
    /* 125F04 00224F84 1600033C */  lui        $v1, %hi(D_00160410)
    /* 125F08 00224F88 2D20A003 */  daddu      $a0, $sp, $zero
    /* 125F0C 00224F8C 10046524 */  addiu      $a1, $v1, %lo(D_00160410)
    /* 125F10 00224F90 10100000 */  mfhi       $v0
    /* 125F14 00224F94 12300000 */  mflo       $a2
    /* 125F18 00224F98 1A00F400 */  div        $zero, $a3, $s4
    /* 125F1C 00224F9C 10400000 */  mfhi       $t0
    /* 125F20 00224FA0 1A005400 */  div        $zero, $v0, $s4
    /* 125F24 00224FA4 12380000 */  mflo       $a3
    /* 125F28 00224FA8 9258040C */  jal        func_00116248
    /* 125F2C 00224FAC 00000000 */   nop
    /* 125F30 00224FB0 4F750424 */  addiu      $a0, $zero, 0x754F
.align 2
  .L00224FB4:
    /* 125F34 00224FB4 6600080C */  jal        func_00200198
    /* 125F38 00224FB8 0F000524 */   addiu     $a1, $zero, 0xF
    /* 125F3C 00224FBC 2D204000 */  daddu      $a0, $v0, $zero
    /* 125F40 00224FC0 80000924 */  addiu      $t1, $zero, 0x80
    /* 125F44 00224FC4 2D302002 */  daddu      $a2, $s1, $zero
    /* 125F48 00224FC8 04000524 */  addiu      $a1, $zero, 0x4
    /* 125F4C 00224FCC 10000724 */  addiu      $a3, $zero, 0x10
    /* 125F50 00224FD0 1A01080C */  jal        func_00200468
    /* 125F54 00224FD4 10000824 */   addiu     $t0, $zero, 0x10
    /* 125F58 00224FD8 2D38A003 */  daddu      $a3, $sp, $zero
    /* 125F5C 00224FDC 2D282002 */  daddu      $a1, $s1, $zero
    /* 125F60 00224FE0 16000424 */  addiu      $a0, $zero, 0x16
    /* 125F64 00224FE4 2D306002 */  daddu      $a2, $s3, $zero
    /* 125F68 00224FE8 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 125F6C 00224FEC 5ADA070C */  jal        func_001F6968
    /* 125F70 00224FF0 10003126 */   addiu     $s1, $s1, 0x10
    /* 125F74 00224FF4 17004892 */  lbu        $t0, 0x17($s2)
    /* 125F78 00224FF8 1600023C */  lui        $v0, %hi(D_00160420)
    /* 125F7C 00224FFC 16004692 */  lbu        $a2, 0x16($s2)
    /* 125F80 00225000 2D20A003 */  daddu      $a0, $sp, $zero
    /* 125F84 00225004 15004792 */  lbu        $a3, 0x15($s2)
    /* 125F88 00225008 9258040C */  jal        func_00116248
    /* 125F8C 0022500C 20044524 */   addiu     $a1, $v0, %lo(D_00160420)
    /* 125F90 00225010 9EE90434 */  ori        $a0, $zero, 0xE99E
    /* 125F94 00225014 6600080C */  jal        func_00200198
    /* 125F98 00225018 02000524 */   addiu     $a1, $zero, 0x2
    /* 125F9C 0022501C 2D302002 */  daddu      $a2, $s1, $zero
    /* 125FA0 00225020 2D204000 */  daddu      $a0, $v0, $zero
    /* 125FA4 00225024 04000524 */  addiu      $a1, $zero, 0x4
    /* 125FA8 00225028 10000724 */  addiu      $a3, $zero, 0x10
    /* 125FAC 0022502C 10000824 */  addiu      $t0, $zero, 0x10
    /* 125FB0 00225030 1A01080C */  jal        func_00200468
    /* 125FB4 00225034 80000924 */   addiu     $t1, $zero, 0x80
    /* 125FB8 00225038 2D282002 */  daddu      $a1, $s1, $zero
    /* 125FBC 0022503C 2D306002 */  daddu      $a2, $s3, $zero
    /* 125FC0 00225040 16000424 */  addiu      $a0, $zero, 0x16
    /* 125FC4 00225044 2D38A003 */  daddu      $a3, $sp, $zero
    /* 125FC8 00225048 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 125FCC 0022504C 5ADA070C */  jal        func_001F6968
    /* 125FD0 00225050 10003126 */   addiu     $s1, $s1, 0x10
.align 2
  .L00225054:
    /* 125FD4 00225054 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* 125FD8 00225058 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
.align 2
  .L0022505C:
    /* 125FDC 0022505C 02004050 */  beql       $v0, $zero, .L00225068
    /* 125FE0 00225060 1B003126 */   addiu     $s1, $s1, 0x1B
    /* 125FE4 00225064 24003126 */  addiu      $s1, $s1, 0x24
.align 2
  .L00225068:
    /* 125FE8 00225068 0100F726 */  addiu      $s7, $s7, 0x1
    /* 125FEC 0022506C 0500E22A */  slti       $v0, $s7, 0x5
    /* 125FF0 00225070 05FF4014 */  bnez       $v0, .L00224C88
    /* 125FF4 00225074 1400033C */   lui       $v1, %hi(D_0013D390)
    /* 125FF8 00225078 D2D1070C */  jal        func_001F4748
    /* 125FFC 0022507C 00000000 */   nop
    /* 126000 00225080 E000BF7B */  lq         $ra, 0xE0($sp)
    /* 126004 00225084 02000224 */  addiu      $v0, $zero, 0x2
    /* 126008 00225088 D000BE7B */  lq         $fp, 0xD0($sp)
    /* 12600C 0022508C C000B77B */  lq         $s7, 0xC0($sp)
    /* 126010 00225090 B000B67B */  lq         $s6, 0xB0($sp)
    /* 126014 00225094 A000B57B */  lq         $s5, 0xA0($sp)
    /* 126018 00225098 9000B47B */  lq         $s4, 0x90($sp)
    /* 12601C 0022509C 8000B37B */  lq         $s3, 0x80($sp)
    /* 126020 002250A0 7000B27B */  lq         $s2, 0x70($sp)
    /* 126024 002250A4 6000B17B */  lq         $s1, 0x60($sp)
    /* 126028 002250A8 5000B07B */  lq         $s0, 0x50($sp)
    /* 12602C 002250AC 0800E003 */  jr         $ra
    /* 126030 002250B0 F000BD27 */   addiu     $sp, $sp, 0xF0
endlabel func_00224C30
    /* 126034 002250B4 00000000 */  nop
