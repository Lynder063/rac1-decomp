.align 3
nonmatching func_001F3D78, 0x878

glabel func_001F3D78
    /* F4CF8 001F3D78 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* F4CFC 001F3D7C 1600023C */  lui        $v0, %hi(D_0016055C)
    /* F4D00 001F3D80 5C05428C */  lw         $v0, %lo(D_0016055C)($v0)
    /* F4D04 001F3D84 2000B27F */  sq         $s2, 0x20($sp)
    /* F4D08 001F3D88 3000BF7F */  sq         $ra, 0x30($sp)
    /* F4D0C 001F3D8C 1900123C */  lui        $s2, %hi(D_0018A3B0)
    /* F4D10 001F3D90 1000B17F */  sq         $s1, 0x10($sp)
    /* F4D14 001F3D94 0E004010 */  beqz       $v0, .L001F3DD0
    /* F4D18 001F3D98 0000B07F */   sq        $s0, 0x0($sp)
    /* F4D1C 001F3D9C 04004284 */  lh         $v0, 0x4($v0)
    /* F4D20 001F3DA0 0B004014 */  bnez       $v0, .L001F3DD0
    /* F4D24 001F3DA4 3488828F */   lw        $v0, -0x77CC($gp)
    /* F4D28 001F3DA8 01004238 */  xori       $v0, $v0, 0x1
    /* F4D2C 001F3DAC 01004230 */  andi       $v0, $v0, 0x1
    /* F4D30 001F3DB0 07004014 */  bnez       $v0, .L001F3DD0
    /* F4D34 001F3DB4 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F4D38 001F3DB8 0800438C */  lw         $v1, 0x8($v0)
    /* F4D3C 001F3DBC 04006010 */  beqz       $v1, .L001F3DD0
    /* F4D40 001F3DC0 1900023C */   lui       $v0, %hi(D_0018C44C)
    /* F4D44 001F3DC4 4CC4438C */  lw         $v1, %lo(D_0018C44C)($v0)
    /* F4D48 001F3DC8 03006010 */  beqz       $v1, .L001F3DD8
    /* F4D4C 001F3DCC 00000000 */   nop
.align 2
  .L001F3DD0:
    /* F4D50 001F3DD0 4CED070C */  jal        func_001FB530
    /* F4D54 001F3DD4 00000000 */   nop
.align 2
  .L001F3DD8:
    /* F4D58 001F3DD8 82C9070C */  jal        func_001F2608
    /* F4D5C 001F3DDC 1600103C */   lui       $s0, %hi(D_0015F480)
    /* F4D60 001F3DE0 AC36080C */  jal        func_0020DAB0
    /* F4D64 001F3DE4 80F41026 */   addiu     $s0, $s0, %lo(D_0015F480)
    /* F4D68 001F3DE8 EECB070C */  jal        func_001F2FB8
    /* F4D6C 001F3DEC 00000000 */   nop
    /* F4D70 001F3DF0 04CF070C */  jal        func_001F3C10
    /* F4D74 001F3DF4 00000000 */   nop
    /* F4D78 001F3DF8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* F4D7C 001F3DFC 1600013C */  lui        $at, %hi(D_0015F704)
    /* F4D80 001F3E00 04F722AC */  sw         $v0, %lo(D_0015F704)($at)
    /* F4D84 001F3E04 2D200002 */  daddu      $a0, $s0, $zero
    /* F4D88 001F3E08 56C9070C */  jal        func_001F2558
    /* F4D8C 001F3E0C 0F000524 */   addiu     $a1, $zero, 0xF
    /* F4D90 001F3E10 2D200002 */  daddu      $a0, $s0, $zero
    /* F4D94 001F3E14 58C9070C */  jal        func_001F2560
    /* F4D98 001F3E18 0F000524 */   addiu     $a1, $zero, 0xF
    /* F4D9C 001F3E1C 1600023C */  lui        $v0, %hi(D_0016055C)
    /* F4DA0 001F3E20 5C05428C */  lw         $v0, %lo(D_0016055C)($v0)
    /* F4DA4 001F3E24 10004010 */  beqz       $v0, .L001F3E68
    /* F4DA8 001F3E28 3488828F */   lw        $v0, -0x77CC($gp)
    /* F4DAC 001F3E2C 01004230 */  andi       $v0, $v0, 0x1
    /* F4DB0 001F3E30 0D004010 */  beqz       $v0, .L001F3E68
    /* F4DB4 001F3E34 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F4DB8 001F3E38 0800438C */  lw         $v1, 0x8($v0)
    /* F4DBC 001F3E3C 03006010 */  beqz       $v1, .L001F3E4C
    /* F4DC0 001F3E40 1600103C */   lui       $s0, %hi(D_0015F490)
    /* F4DC4 001F3E44 9CA7070C */  jal        func_001E9E70
    /* F4DC8 001F3E48 00000000 */   nop
.align 2
  .L001F3E4C:
    /* F4DCC 001F3E4C 0E000524 */  addiu      $a1, $zero, 0xE
    /* F4DD0 001F3E50 90F41026 */  addiu      $s0, $s0, %lo(D_0015F490)
    /* F4DD4 001F3E54 58C9070C */  jal        func_001F2560
    /* F4DD8 001F3E58 2D200002 */   daddu     $a0, $s0, $zero
    /* F4DDC 001F3E5C 2D200002 */  daddu      $a0, $s0, $zero
    /* F4DE0 001F3E60 56C9070C */  jal        func_001F2558
    /* F4DE4 001F3E64 0E000524 */   addiu     $a1, $zero, 0xE
.align 2
  .L001F3E68:
    /* F4DE8 001F3E68 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F4DEC 001F3E6C 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F4DF0 001F3E70 02004230 */  andi       $v0, $v0, 0x2
    /* F4DF4 001F3E74 03004010 */  beqz       $v0, .L001F3E84
    /* F4DF8 001F3E78 00000000 */   nop
    /* F4DFC 001F3E7C B0D1080C */  jal        func_002346C0
    /* F4E00 001F3E80 00000000 */   nop
.align 2
  .L001F3E84:
    /* F4E04 001F3E84 A4D4080C */  jal        func_00235290
    /* F4E08 001F3E88 0102043C */   lui       $a0, (0x2010000 >> 16)
    /* F4E0C 001F3E8C 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F4E10 001F3E90 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F4E14 001F3E94 04004230 */  andi       $v0, $v0, 0x4
    /* F4E18 001F3E98 09004010 */  beqz       $v0, .L001F3EC0
    /* F4E1C 001F3E9C 8081828F */   lw        $v0, -0x7E80($gp)
    /* F4E20 001F3EA0 05004010 */  beqz       $v0, .L001F3EB8
    /* F4E24 001F3EA4 00000000 */   nop
    /* F4E28 001F3EA8 2ADB080C */  jal        func_00236CA8
    /* F4E2C 001F3EAC 00000000 */   nop
    /* F4E30 001F3EB0 03000010 */  b          .L001F3EC0
    /* F4E34 001F3EB4 00000000 */   nop
.align 2
  .L001F3EB8:
    /* F4E38 001F3EB8 F8DA080C */  jal        func_00236BE0
    /* F4E3C 001F3EBC 00000000 */   nop
.align 2
  .L001F3EC0:
    /* F4E40 001F3EC0 A4D4080C */  jal        func_00235290
    /* F4E44 001F3EC4 0202043C */   lui       $a0, (0x2020000 >> 16)
    /* F4E48 001F3EC8 B0A34226 */  addiu      $v0, $s2, %lo(D_0018A3B0)
    /* F4E4C 001F3ECC 3400438C */  lw         $v1, 0x34($v0)
    /* F4E50 001F3ED0 0D006010 */  beqz       $v1, .L001F3F08
    /* F4E54 001F3ED4 6C88828F */   lw        $v0, -0x7794($gp)
    /* F4E58 001F3ED8 0C004010 */  beqz       $v0, .L001F3F0C
    /* F4E5C 001F3EDC 1600103C */   lui       $s0, %hi(D_0015F4A0)
    /* F4E60 001F3EE0 D0D3080C */  jal        func_00234F40
    /* F4E64 001F3EE4 00000000 */   nop
    /* F4E68 001F3EE8 8CD1070C */  jal        func_001F4630
    /* F4E6C 001F3EEC 01000424 */   addiu     $a0, $zero, 0x1
    /* F4E70 001F3EF0 9ED2070C */  jal        func_001F4A78
    /* F4E74 001F3EF4 00000000 */   nop
    /* F4E78 001F3EF8 D2D1070C */  jal        func_001F4748
    /* F4E7C 001F3EFC 00000000 */   nop
    /* F4E80 001F3F00 B8D3080C */  jal        func_00234EE0
    /* F4E84 001F3F04 00000000 */   nop
.align 2
  .L001F3F08:
    /* F4E88 001F3F08 1600103C */  lui        $s0, %hi(D_0015F4A0)
.align 2
  .L001F3F0C:
    /* F4E8C 001F3F0C 06000524 */  addiu      $a1, $zero, 0x6
    /* F4E90 001F3F10 A0F41026 */  addiu      $s0, $s0, %lo(D_0015F4A0)
    /* F4E94 001F3F14 56C9070C */  jal        func_001F2558
    /* F4E98 001F3F18 2D200002 */   daddu     $a0, $s0, $zero
    /* F4E9C 001F3F1C 2D200002 */  daddu      $a0, $s0, $zero
    /* F4EA0 001F3F20 58C9070C */  jal        func_001F2560
    /* F4EA4 001F3F24 06000524 */   addiu     $a1, $zero, 0x6
    /* F4EA8 001F3F28 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F4EAC 001F3F2C 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F4EB0 001F3F30 08004230 */  andi       $v0, $v0, 0x8
    /* F4EB4 001F3F34 03004010 */  beqz       $v0, .L001F3F44
    /* F4EB8 001F3F38 00000000 */   nop
    /* F4EBC 001F3F3C 94A7080C */  jal        func_00229E50
    /* F4EC0 001F3F40 00000000 */   nop
.align 2
  .L001F3F44:
    /* F4EC4 001F3F44 A4D4080C */  jal        func_00235290
    /* F4EC8 001F3F48 0402043C */   lui       $a0, (0x2040000 >> 16)
    /* F4ECC 001F3F4C B0A34226 */  addiu      $v0, $s2, %lo(D_0018A3B0)
    /* F4ED0 001F3F50 4400438C */  lw         $v1, 0x44($v0)
    /* F4ED4 001F3F54 06006010 */  beqz       $v1, .L001F3F70
    /* F4ED8 001F3F58 7087828F */   lw        $v0, -0x7890($gp)
    /* F4EDC 001F3F5C 06004010 */  beqz       $v0, .L001F3F78
    /* F4EE0 001F3F60 3488828F */   lw        $v0, -0x77CC($gp)
    /* F4EE4 001F3F64 70878427 */  addiu      $a0, $gp, -0x7890
    /* F4EE8 001F3F68 3AD5070C */  jal        func_001F54E8
    /* F4EEC 001F3F6C 00000000 */   nop
.align 2
  .L001F3F70:
    /* F4EF0 001F3F70 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F4EF4 001F3F74 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
.align 2
  .L001F3F78:
    /* F4EF8 001F3F78 20004230 */  andi       $v0, $v0, 0x20
    /* F4EFC 001F3F7C 08004010 */  beqz       $v0, .L001F3FA0
    /* F4F00 001F3F80 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F4F04 001F3F84 8CD1070C */  jal        func_001F4630
    /* F4F08 001F3F88 01000424 */   addiu     $a0, $zero, 0x1
    /* F4F0C 001F3F8C DCDE070C */  jal        func_001F7B70
    /* F4F10 001F3F90 00000000 */   nop
    /* F4F14 001F3F94 D2D1070C */  jal        func_001F4748
    /* F4F18 001F3F98 00000000 */   nop
    /* F4F1C 001F3F9C B0A34226 */  addiu      $v0, $s2, %lo(D_0018A3B0)
.align 2
  .L001F3FA0:
    /* F4F20 001F3FA0 3400438C */  lw         $v1, 0x34($v0)
    /* F4F24 001F3FA4 0D006010 */  beqz       $v1, .L001F3FDC
    /* F4F28 001F3FA8 7088828F */   lw        $v0, -0x7790($gp)
    /* F4F2C 001F3FAC 0D004010 */  beqz       $v0, .L001F3FE4
    /* F4F30 001F3FB0 3488828F */   lw        $v0, -0x77CC($gp)
    /* F4F34 001F3FB4 D0D3080C */  jal        func_00234F40
    /* F4F38 001F3FB8 00000000 */   nop
    /* F4F3C 001F3FBC 8CD1070C */  jal        func_001F4630
    /* F4F40 001F3FC0 01000424 */   addiu     $a0, $zero, 0x1
    /* F4F44 001F3FC4 BCD2070C */  jal        func_001F4AF0
    /* F4F48 001F3FC8 00000000 */   nop
    /* F4F4C 001F3FCC D2D1070C */  jal        func_001F4748
    /* F4F50 001F3FD0 00000000 */   nop
    /* F4F54 001F3FD4 B8D3080C */  jal        func_00234EE0
    /* F4F58 001F3FD8 00000000 */   nop
.align 2
  .L001F3FDC:
    /* F4F5C 001F3FDC 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F4F60 001F3FE0 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
.align 2
  .L001F3FE4:
    /* F4F64 001F3FE4 10004230 */  andi       $v0, $v0, 0x10
    /* F4F68 001F3FE8 03004010 */  beqz       $v0, .L001F3FF8
    /* F4F6C 001F3FEC 00000000 */   nop
    /* F4F70 001F3FF0 AC38080C */  jal        func_0020E2B0
    /* F4F74 001F3FF4 00000000 */   nop
.align 2
  .L001F3FF8:
    /* F4F78 001F3FF8 A4D4080C */  jal        func_00235290
    /* F4F7C 001F3FFC 0802043C */   lui       $a0, (0x2080000 >> 16)
    /* F4F80 001F4000 8CD1070C */  jal        func_001F4630
    /* F4F84 001F4004 2D200000 */   daddu     $a0, $zero, $zero
    /* F4F88 001F4008 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F4F8C 001F400C 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F4F90 001F4010 20004230 */  andi       $v0, $v0, 0x20
    /* F4F94 001F4014 0D004010 */  beqz       $v0, .L001F404C
    /* F4F98 001F4018 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F4F9C 001F401C 3000438C */  lw         $v1, 0x30($v0)
    /* F4FA0 001F4020 0A006010 */  beqz       $v1, .L001F404C
    /* F4FA4 001F4024 048A828F */   lw        $v0, -0x75FC($gp)
    /* F4FA8 001F4028 06001024 */  addiu      $s0, $zero, 0x6
    /* F4FAC 001F402C 07005010 */  beq        $v0, $s0, .L001F404C
    /* F4FB0 001F4030 1100023C */   lui       $v0, %hi(D_0010FA90)
    /* F4FB4 001F4034 1100043C */  lui        $a0, %hi(D_0010FAA0)
    /* F4FB8 001F4038 90FA4594 */  lhu        $a1, %lo(D_0010FA90)($v0)
    /* F4FBC 001F403C D2D2080C */  jal        func_00234B48
    /* F4FC0 001F4040 A0FA8424 */   addiu     $a0, $a0, %lo(D_0010FAA0)
    /* F4FC4 001F4044 1600013C */  lui        $at, %hi(D_0015F704)
    /* F4FC8 001F4048 04F730AC */  sw         $s0, %lo(D_0015F704)($at)
.align 2
  .L001F404C:
    /* F4FCC 001F404C 1600103C */  lui        $s0, %hi(D_0015F4B0)
    /* F4FD0 001F4050 04000524 */  addiu      $a1, $zero, 0x4
    /* F4FD4 001F4054 B0F41026 */  addiu      $s0, $s0, %lo(D_0015F4B0)
    /* F4FD8 001F4058 58C9070C */  jal        func_001F2560
    /* F4FDC 001F405C 2D200002 */   daddu     $a0, $s0, $zero
    /* F4FE0 001F4060 2D200002 */  daddu      $a0, $s0, $zero
    /* F4FE4 001F4064 56C9070C */  jal        func_001F2558
    /* F4FE8 001F4068 04000524 */   addiu     $a1, $zero, 0x4
    /* F4FEC 001F406C 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F4FF0 001F4070 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F4FF4 001F4074 20004230 */  andi       $v0, $v0, 0x20
    /* F4FF8 001F4078 54004050 */  beql       $v0, $zero, .L001F41CC
    /* F4FFC 001F407C B0A35026 */   addiu     $s0, $s2, %lo(D_0018A3B0)
    /* F5000 001F4080 D0D3080C */  jal        func_00234F40
    /* F5004 001F4084 00000000 */   nop
    /* F5008 001F4088 B0A34226 */  addiu      $v0, $s2, %lo(D_0018A3B0)
    /* F500C 001F408C 3400438C */  lw         $v1, 0x34($v0)
    /* F5010 001F4090 10006010 */  beqz       $v1, .L001F40D4
    /* F5014 001F4094 6488828F */   lw        $v0, -0x779C($gp)
    /* F5018 001F4098 03004010 */  beqz       $v0, .L001F40A8
    /* F501C 001F409C 00000000 */   nop
    /* F5020 001F40A0 80D2070C */  jal        func_001F4A00
    /* F5024 001F40A4 00000000 */   nop
.align 2
  .L001F40A8:
    /* F5028 001F40A8 00800534 */  ori        $a1, $zero, 0x8000
    /* F502C 001F40AC 382E0500 */  dsll       $a1, $a1, 24
    /* F5030 001F40B0 4800A534 */  ori        $a1, $a1, 0x48
    /* F5034 001F40B4 26D3080C */  jal        func_00234C98
    /* F5038 001F40B8 42000424 */   addiu     $a0, $zero, 0x42
    /* F503C 001F40BC FEB7070C */  jal        func_001EDFF8
    /* F5040 001F40C0 00000000 */   nop
    /* F5044 001F40C4 D0D3080C */  jal        func_00234F40
    /* F5048 001F40C8 00000000 */   nop
    /* F504C 001F40CC 0CD3070C */  jal        func_001F4C30
    /* F5050 001F40D0 00000000 */   nop
.align 2
  .L001F40D4:
    /* F5054 001F40D4 1600103C */  lui        $s0, %hi(D_0015F4C0)
    /* F5058 001F40D8 06000524 */  addiu      $a1, $zero, 0x6
    /* F505C 001F40DC C0F41026 */  addiu      $s0, $s0, %lo(D_0015F4C0)
    /* F5060 001F40E0 B0A35126 */  addiu      $s1, $s2, %lo(D_0018A3B0)
    /* F5064 001F40E4 56C9070C */  jal        func_001F2558
    /* F5068 001F40E8 2D200002 */   daddu     $a0, $s0, $zero
    /* F506C 001F40EC 2D200002 */  daddu      $a0, $s0, $zero
    /* F5070 001F40F0 58C9070C */  jal        func_001F2560
    /* F5074 001F40F4 06000524 */   addiu     $a1, $zero, 0x6
    /* F5078 001F40F8 3800228E */  lw         $v0, 0x38($s1)
    /* F507C 001F40FC 0D004010 */  beqz       $v0, .L001F4134
    /* F5080 001F4100 1600103C */   lui       $s0, %hi(D_0015F4D0)
    /* F5084 001F4104 05000524 */  addiu      $a1, $zero, 0x5
    /* F5088 001F4108 26D3080C */  jal        func_00234C98
    /* F508C 001F410C 08000424 */   addiu     $a0, $zero, 0x8
    /* F5090 001F4110 D0D3080C */  jal        func_00234F40
    /* F5094 001F4114 1600103C */   lui       $s0, %hi(D_0015F4D0)
    /* F5098 001F4118 6063040C */  jal        func_00118D80
    /* F509C 001F411C 2D200000 */   daddu     $a0, $zero, $zero
    /* F50A0 001F4120 C462080C */  jal        func_00218B10
    /* F50A4 001F4124 00000000 */   nop
    /* F50A8 001F4128 08000224 */  addiu      $v0, $zero, 0x8
    /* F50AC 001F412C 1600013C */  lui        $at, %hi(D_0015F704)
    /* F50B0 001F4130 04F722AC */  sw         $v0, %lo(D_0015F704)($at)
.align 2
  .L001F4134:
    /* F50B4 001F4134 08000524 */  addiu      $a1, $zero, 0x8
    /* F50B8 001F4138 D0F41026 */  addiu      $s0, $s0, %lo(D_0015F4D0)
    /* F50BC 001F413C 56C9070C */  jal        func_001F2558
    /* F50C0 001F4140 2D200002 */   daddu     $a0, $s0, $zero
    /* F50C4 001F4144 2D200002 */  daddu      $a0, $s0, $zero
    /* F50C8 001F4148 58C9070C */  jal        func_001F2560
    /* F50CC 001F414C 08000524 */   addiu     $a1, $zero, 0x8
    /* F50D0 001F4150 3C00228E */  lw         $v0, 0x3C($s1)
    /* F50D4 001F4154 14004010 */  beqz       $v0, .L001F41A8
    /* F50D8 001F4158 6888828F */   lw        $v0, -0x7798($gp)
    /* F50DC 001F415C 07004010 */  beqz       $v0, .L001F417C
    /* F50E0 001F4160 E889828F */   lw        $v0, -0x7618($gp)
    /* F50E4 001F4164 D0D3080C */  jal        func_00234F40
    /* F50E8 001F4168 00000000 */   nop
    /* F50EC 001F416C EED2070C */  jal        func_001F4BB8
    /* F50F0 001F4170 00000000 */   nop
    /* F50F4 001F4174 1600023C */  lui        $v0, %hi(D_0015F6E8)
    /* F50F8 001F4178 E8F6428C */  lw         $v0, %lo(D_0015F6E8)($v0)
.align 2
  .L001F417C:
    /* F50FC 001F417C 03004014 */  bnez       $v0, .L001F418C
    /* F5100 001F4180 00000000 */   nop
    /* F5104 001F4184 1EE5070C */  jal        func_001F9478
    /* F5108 001F4188 00000000 */   nop
.align 2
  .L001F418C:
    /* F510C 001F418C 00800534 */  ori        $a1, $zero, 0x8000
    /* F5110 001F4190 382E0500 */  dsll       $a1, $a1, 24
    /* F5114 001F4194 4400A534 */  ori        $a1, $a1, 0x44
    /* F5118 001F4198 26D3080C */  jal        func_00234C98
    /* F511C 001F419C 42000424 */   addiu     $a0, $zero, 0x42
    /* F5120 001F41A0 B8B9070C */  jal        func_001EE6E0
    /* F5124 001F41A4 00000000 */   nop
.align 2
  .L001F41A8:
    /* F5128 001F41A8 1600103C */  lui        $s0, %hi(D_0015F4E0)
    /* F512C 001F41AC 06000524 */  addiu      $a1, $zero, 0x6
    /* F5130 001F41B0 E0F41026 */  addiu      $s0, $s0, %lo(D_0015F4E0)
    /* F5134 001F41B4 56C9070C */  jal        func_001F2558
    /* F5138 001F41B8 2D200002 */   daddu     $a0, $s0, $zero
    /* F513C 001F41BC 2D200002 */  daddu      $a0, $s0, $zero
    /* F5140 001F41C0 58C9070C */  jal        func_001F2560
    /* F5144 001F41C4 06000524 */   addiu     $a1, $zero, 0x6
    /* F5148 001F41C8 B0A35026 */  addiu      $s0, $s2, %lo(D_0018A3B0)
.align 2
  .L001F41CC:
    /* F514C 001F41CC 4800028E */  lw         $v0, 0x48($s0)
    /* F5150 001F41D0 04004050 */  beql       $v0, $zero, .L001F41E4
    /* F5154 001F41D4 1600043C */   lui       $a0, %hi(D_0015F4F0)
    /* F5158 001F41D8 12EE070C */  jal        func_001FB848
    /* F515C 001F41DC 00000000 */   nop
    /* F5160 001F41E0 1600043C */  lui        $a0, %hi(D_0015F4F0)
.align 2
  .L001F41E4:
    /* F5164 001F41E4 0F000524 */  addiu      $a1, $zero, 0xF
    /* F5168 001F41E8 58C9070C */  jal        func_001F2560
    /* F516C 001F41EC F0F48424 */   addiu     $a0, $a0, %lo(D_0015F4F0)
    /* F5170 001F41F0 D0D3080C */  jal        func_00234F40
    /* F5174 001F41F4 00000000 */   nop
    /* F5178 001F41F8 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F517C 001F41FC 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F5180 001F4200 0100033C */  lui        $v1, (0x10000 >> 16)
    /* F5184 001F4204 24104300 */  and        $v0, $v0, $v1
    /* F5188 001F4208 05004010 */  beqz       $v0, .L001F4220
    /* F518C 001F420C 3488828F */   lw        $v0, -0x77CC($gp)
    /* F5190 001F4210 62E3080C */  jal        func_00238D88
    /* F5194 001F4214 00000000 */   nop
    /* F5198 001F4218 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F519C 001F421C 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
.align 2
  .L001F4220:
    /* F51A0 001F4220 80004230 */  andi       $v0, $v0, 0x80
    /* F51A4 001F4224 0C004010 */  beqz       $v0, .L001F4258
    /* F51A8 001F4228 E889838F */   lw        $v1, -0x7618($gp)
    /* F51AC 001F422C 4000028E */  lw         $v0, 0x40($s0)
    /* F51B0 001F4230 0A004010 */  beqz       $v0, .L001F425C
    /* F51B4 001F4234 02000224 */   addiu     $v0, $zero, 0x2
    /* F51B8 001F4238 EEFF070C */  jal        func_001FFFB8
    /* F51BC 001F423C 00000000 */   nop
    /* F51C0 001F4240 6CFC070C */  jal        func_001FF1B0
    /* F51C4 001F4244 00000000 */   nop
    /* F51C8 001F4248 52D4070C */  jal        func_001F5148
    /* F51CC 001F424C 00000000 */   nop
    /* F51D0 001F4250 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* F51D4 001F4254 E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
.align 2
  .L001F4258:
    /* F51D8 001F4258 02000224 */  addiu      $v0, $zero, 0x2
.align 2
  .L001F425C:
    /* F51DC 001F425C 07006214 */  bne        $v1, $v0, .L001F427C
    /* F51E0 001F4260 1600103C */   lui       $s0, %hi(D_0015F4F8)
    /* F51E4 001F4264 1600023C */  lui        $v0, %hi(D_0015EF40)
    /* F51E8 001F4268 40EF4290 */  lbu        $v0, %lo(D_0015EF40)($v0)
    /* F51EC 001F426C 04004050 */  beql       $v0, $zero, .L001F4280
    /* F51F0 001F4270 0E000524 */   addiu     $a1, $zero, 0xE
    /* F51F4 001F4274 E4D3070C */  jal        func_001F4F90
    /* F51F8 001F4278 00000000 */   nop
.align 2
  .L001F427C:
    /* F51FC 001F427C 0E000524 */  addiu      $a1, $zero, 0xE
.align 2
  .L001F4280:
    /* F5200 001F4280 F8F41026 */  addiu      $s0, $s0, %lo(D_0015F4F8)
    /* F5204 001F4284 58C9070C */  jal        func_001F2560
    /* F5208 001F4288 2D200002 */   daddu     $a0, $s0, $zero
    /* F520C 001F428C 2D200002 */  daddu      $a0, $s0, $zero
    /* F5210 001F4290 56C9070C */  jal        func_001F2558
    /* F5214 001F4294 0E000524 */   addiu     $a1, $zero, 0xE
    /* F5218 001F4298 D2D1070C */  jal        func_001F4748
    /* F521C 001F429C 00000000 */   nop
    /* F5220 001F42A0 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F5224 001F42A4 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F5228 001F42A8 40004230 */  andi       $v0, $v0, 0x40
    /* F522C 001F42AC 52004010 */  beqz       $v0, .L001F43F8
    /* F5230 001F42B0 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F5234 001F42B4 4400438C */  lw         $v1, 0x44($v0)
    /* F5238 001F42B8 4C006010 */  beqz       $v1, .L001F43EC
    /* F523C 001F42BC 1600043C */   lui       $a0, %hi(D_0015F500)
    /* F5240 001F42C0 00800534 */  ori        $a1, $zero, 0x8000
    /* F5244 001F42C4 382E0500 */  dsll       $a1, $a1, 24
    /* F5248 001F42C8 4400A534 */  ori        $a1, $a1, 0x44
    /* F524C 001F42CC 26D3080C */  jal        func_00234C98
    /* F5250 001F42D0 42000424 */   addiu     $a0, $zero, 0x42
    /* F5254 001F42D4 1800023C */  lui        $v0, %hi(D_001873D4)
    /* F5258 001F42D8 D473438C */  lw         $v1, %lo(D_001873D4)($v0)
    /* F525C 001F42DC 07006010 */  beqz       $v1, .L001F42FC
    /* F5260 001F42E0 C0A48493 */   lbu       $a0, -0x5B40($gp)
    /* F5264 001F42E4 1600053C */  lui        $a1, %hi(D_001611C1)
    /* F5268 001F42E8 C111A590 */  lbu        $a1, %lo(D_001611C1)($a1)
    /* F526C 001F42EC 1600063C */  lui        $a2, %hi(D_001611C2)
    /* F5270 001F42F0 C211C690 */  lbu        $a2, %lo(D_001611C2)($a2)
    /* F5274 001F42F4 70D5070C */  jal        func_001F55C0
    /* F5278 001F42F8 C3A48793 */   lbu       $a3, -0x5B3D($gp)
.align 2
  .L001F42FC:
    /* F527C 001F42FC 1600013C */  lui        $at, %hi(D_0015F53C)
    /* F5280 001F4300 3CF521C4 */  lwc1       $f1, %lo(D_0015F53C)($at)
    /* F5284 001F4304 00008044 */  mtc1       $zero, $f0
    /* F5288 001F4308 00000000 */  nop
    /* F528C 001F430C 34000146 */  c.lt.s     $f0, $f1
    /* F5290 001F4310 00000000 */  nop
    /* F5294 001F4314 16000245 */  bc1fl      .L001F4370
    /* F5298 001F4318 408881C7 */   lwc1      $f1, -0x77C0($gp)
    /* F529C 001F431C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* F52A0 001F4320 00008144 */  mtc1       $at, $f0
    /* F52A4 001F4324 00000000 */  nop
    /* F52A8 001F4328 34000146 */  c.lt.s     $f0, $f1
    /* F52AC 001F432C 00000000 */  nop
    /* F52B0 001F4330 01000345 */  bc1tl      .L001F4338
    /* F52B4 001F4334 3C8880E7 */   swc1      $f0, -0x77C4($gp)
.align 2
  .L001F4338:
    /* F52B8 001F4338 1600013C */  lui        $at, %hi(D_0015F53C)
    /* F52BC 001F433C 3CF520C4 */  lwc1       $f0, %lo(D_0015F53C)($at)
    /* F52C0 001F4340 0043013C */  lui        $at, (0x43000000 >> 16)
    /* F52C4 001F4344 00608144 */  mtc1       $at, $f12
    /* F52C8 001F4348 26EA070C */  jal        func_001FA898
    /* F52CC 001F434C 02030C46 */   mul.s     $f12, $f0, $f12
    /* F52D0 001F4350 2D384000 */  daddu      $a3, $v0, $zero
    /* F52D4 001F4354 2D200000 */  daddu      $a0, $zero, $zero
    /* F52D8 001F4358 2D280000 */  daddu      $a1, $zero, $zero
    /* F52DC 001F435C 70D5070C */  jal        func_001F55C0
    /* F52E0 001F4360 2D300000 */   daddu     $a2, $zero, $zero
    /* F52E4 001F4364 1600013C */  lui        $at, %hi(D_0015F540)
    /* F52E8 001F4368 40F521C4 */  lwc1       $f1, %lo(D_0015F540)($at)
    /* F52EC 001F436C 00008044 */  mtc1       $zero, $f0
.align 2
  .L001F4370:
    /* F52F0 001F4370 00000000 */  nop
    /* F52F4 001F4374 34000146 */  c.lt.s     $f0, $f1
    /* F52F8 001F4378 00000000 */  nop
    /* F52FC 001F437C 14000045 */  bc1f       .L001F43D0
    /* F5300 001F4380 4C87828F */   lw        $v0, -0x78B4($gp)
    /* F5304 001F4384 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* F5308 001F4388 00008144 */  mtc1       $at, $f0
    /* F530C 001F438C 00000000 */  nop
    /* F5310 001F4390 34000146 */  c.lt.s     $f0, $f1
    /* F5314 001F4394 00000000 */  nop
    /* F5318 001F4398 01000345 */  bc1tl      .L001F43A0
    /* F531C 001F439C 408880E7 */   swc1      $f0, -0x77C0($gp)
.align 2
  .L001F43A0:
    /* F5320 001F43A0 1600013C */  lui        $at, %hi(D_0015F540)
    /* F5324 001F43A4 40F520C4 */  lwc1       $f0, %lo(D_0015F540)($at)
    /* F5328 001F43A8 0043013C */  lui        $at, (0x43000000 >> 16)
    /* F532C 001F43AC 00608144 */  mtc1       $at, $f12
    /* F5330 001F43B0 26EA070C */  jal        func_001FA898
    /* F5334 001F43B4 02030C46 */   mul.s     $f12, $f0, $f12
    /* F5338 001F43B8 2D384000 */  daddu      $a3, $v0, $zero
    /* F533C 001F43BC FF000424 */  addiu      $a0, $zero, 0xFF
    /* F5340 001F43C0 FF000524 */  addiu      $a1, $zero, 0xFF
    /* F5344 001F43C4 70D5070C */  jal        func_001F55C0
    /* F5348 001F43C8 FF000624 */   addiu     $a2, $zero, 0xFF
    /* F534C 001F43CC 4C87828F */  lw         $v0, -0x78B4($gp)
.align 2
  .L001F43D0:
    /* F5350 001F43D0 05004010 */  beqz       $v0, .L001F43E8
    /* F5354 001F43D4 5087828F */   lw        $v0, -0x78B0($gp)
    /* F5358 001F43D8 04004050 */  beql       $v0, $zero, .L001F43EC
    /* F535C 001F43DC 1600043C */   lui       $a0, %hi(D_0015F500)
    /* F5360 001F43E0 DAD4070C */  jal        func_001F5368
    /* F5364 001F43E4 00000000 */   nop
.align 2
  .L001F43E8:
    /* F5368 001F43E8 1600043C */  lui        $a0, %hi(D_0015F500)
.align 2
  .L001F43EC:
    /* F536C 001F43EC 0A000524 */  addiu      $a1, $zero, 0xA
    /* F5370 001F43F0 58C9070C */  jal        func_001F2560
    /* F5374 001F43F4 00F58424 */   addiu     $a0, $a0, %lo(D_0015F500)
.align 2
  .L001F43F8:
    /* F5378 001F43F8 1000043C */  lui        $a0, %hi(D_00100AE0)
    /* F537C 001F43FC FCD1080C */  jal        func_002347F0
    /* F5380 001F4400 E00A8424 */   addiu     $a0, $a0, %lo(D_00100AE0)
    /* F5384 001F4404 6063040C */  jal        func_00118D80
    /* F5388 001F4408 2D200000 */   daddu     $a0, $zero, $zero
    /* F538C 001F440C 0010023C */  lui        $v0, (0x10000800 >> 16)
    /* F5390 001F4410 00084234 */  ori        $v0, $v0, (0x10000800 & 0xFFFF)
    /* F5394 001F4414 0000448C */  lw         $a0, 0x0($v0)
    /* F5398 001F4418 22EA070C */  jal        func_001FA888
    /* F539C 001F441C 00000000 */   nop
    /* F53A0 001F4420 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* F53A4 001F4424 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* F53A8 001F4428 46000046 */  mov.s      $f1, $f0
    /* F53AC 001F442C 1646013C */  lui        $at, (0x46160000 >> 16)
    /* F53B0 001F4430 00008144 */  mtc1       $at, $f0
    /* F53B4 001F4434 05004050 */  beql       $v0, $zero, .L001F444C
    /* F53B8 001F4438 03080046 */   div.s     $f0, $f1, $f0
    /* F53BC 001F443C 3446013C */  lui        $at, (0x46340000 >> 16)
    /* F53C0 001F4440 00008144 */  mtc1       $at, $f0
    /* F53C4 001F4444 00000000 */  nop
    /* F53C8 001F4448 03080046 */  div.s      $f0, $f1, $f0
.align 2
  .L001F444C:
    /* F53CC 001F444C 02000424 */  addiu      $a0, $zero, 0x2
    /* F53D0 001F4450 B2D2080C */  jal        func_00234AC8
    /* F53D4 001F4454 F88980E7 */   swc1      $f0, -0x7608($gp)
    /* F53D8 001F4458 1600043C */  lui        $a0, %hi(D_0015F510)
    /* F53DC 001F445C 11000524 */  addiu      $a1, $zero, 0x11
    /* F53E0 001F4460 2D808000 */  daddu      $s0, $a0, $zero
    /* F53E4 001F4464 56C9070C */  jal        func_001F2558
    /* F53E8 001F4468 10F58424 */   addiu     $a0, $a0, %lo(D_0015F510)
    /* F53EC 001F446C 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F53F0 001F4470 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F53F4 001F4474 02004230 */  andi       $v0, $v0, 0x2
    /* F53F8 001F4478 0D004010 */  beqz       $v0, .L001F44B0
    /* F53FC 001F447C B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F5400 001F4480 1000438C */  lw         $v1, 0x10($v0)
    /* F5404 001F4484 07006050 */  beql       $v1, $zero, .L001F44A4
    /* F5408 001F4488 1E00043C */   lui       $a0, %hi(D_001E7BA0)
    /* F540C 001F448C 1E00043C */  lui        $a0, %hi(D_001E1600)
    /* F5410 001F4490 ACD8080C */  jal        func_002362B0
    /* F5414 001F4494 00168424 */   addiu     $a0, $a0, %lo(D_001E1600)
    /* F5418 001F4498 88D1080C */  jal        func_00234620
    /* F541C 001F449C 00000000 */   nop
    /* F5420 001F44A0 1E00043C */  lui        $a0, %hi(D_001E7BA0)
.align 2
  .L001F44A4:
    /* F5424 001F44A4 02000524 */  addiu      $a1, $zero, 0x2
    /* F5428 001F44A8 56C9070C */  jal        func_001F2558
    /* F542C 001F44AC A07B8424 */   addiu     $a0, $a0, %lo(D_001E7BA0)
.align 2
  .L001F44B0:
    /* F5430 001F44B0 B2D2080C */  jal        func_00234AC8
    /* F5434 001F44B4 04000424 */   addiu     $a0, $zero, 0x4
    /* F5438 001F44B8 10F50426 */  addiu      $a0, $s0, %lo(D_0015F510)
    /* F543C 001F44BC 56C9070C */  jal        func_001F2558
    /* F5440 001F44C0 11000524 */   addiu     $a1, $zero, 0x11
    /* F5444 001F44C4 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F5448 001F44C8 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F544C 001F44CC 04004230 */  andi       $v0, $v0, 0x4
    /* F5450 001F44D0 14004010 */  beqz       $v0, .L001F4524
    /* F5454 001F44D4 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F5458 001F44D8 1800438C */  lw         $v1, 0x18($v0)
    /* F545C 001F44DC 0D006010 */  beqz       $v1, .L001F4514
    /* F5460 001F44E0 8081828F */   lw        $v0, -0x7E80($gp)
    /* F5464 001F44E4 07004050 */  beql       $v0, $zero, .L001F4504
    /* F5468 001F44E8 1E00043C */   lui       $a0, %hi(D_001E3500)
    /* F546C 001F44EC ECDA080C */  jal        func_00236BB0
    /* F5470 001F44F0 00000000 */   nop
    /* F5474 001F44F4 D6DA080C */  jal        func_00236B58
    /* F5478 001F44F8 00000000 */   nop
    /* F547C 001F44FC 06000010 */  b          .L001F4518
    /* F5480 001F4500 1600043C */   lui       $a0, %hi(D_0015F518)
.align 2
  .L001F4504:
    /* F5484 001F4504 A2E1080C */  jal        func_00238688
    /* F5488 001F4508 00358424 */   addiu     $a0, $a0, %lo(D_001E3500)
    /* F548C 001F450C A6DA080C */  jal        func_00236A98
    /* F5490 001F4510 00000000 */   nop
.align 2
  .L001F4514:
    /* F5494 001F4514 1600043C */  lui        $a0, %hi(D_0015F518)
.align 2
  .L001F4518:
    /* F5498 001F4518 05000524 */  addiu      $a1, $zero, 0x5
    /* F549C 001F451C 56C9070C */  jal        func_001F2558
    /* F54A0 001F4520 18F58424 */   addiu     $a0, $a0, %lo(D_0015F518)
.align 2
  .L001F4524:
    /* F54A4 001F4524 B2D2080C */  jal        func_00234AC8
    /* F54A8 001F4528 08000424 */   addiu     $a0, $zero, 0x8
    /* F54AC 001F452C 10F50426 */  addiu      $a0, $s0, %lo(D_0015F510)
    /* F54B0 001F4530 56C9070C */  jal        func_001F2558
    /* F54B4 001F4534 11000524 */   addiu     $a1, $zero, 0x11
    /* F54B8 001F4538 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F54BC 001F453C 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F54C0 001F4540 08004230 */  andi       $v0, $v0, 0x8
    /* F54C4 001F4544 0D004010 */  beqz       $v0, .L001F457C
    /* F54C8 001F4548 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F54CC 001F454C 2000438C */  lw         $v1, 0x20($v0)
    /* F54D0 001F4550 07006050 */  beql       $v1, $zero, .L001F4570
    /* F54D4 001F4554 1E00043C */   lui       $a0, %hi(D_001E7BB8)
    /* F54D8 001F4558 1E00043C */  lui        $a0, %hi(D_001D9240)
    /* F54DC 001F455C 3EAE080C */  jal        func_0022B8F8
    /* F54E0 001F4560 40928424 */   addiu     $a0, $a0, %lo(D_001D9240)
    /* F54E4 001F4564 52A7080C */  jal        func_00229D48
    /* F54E8 001F4568 00000000 */   nop
    /* F54EC 001F456C 1E00043C */  lui        $a0, %hi(D_001E7BB8)
.align 2
  .L001F4570:
    /* F54F0 001F4570 07000524 */  addiu      $a1, $zero, 0x7
    /* F54F4 001F4574 56C9070C */  jal        func_001F2558
    /* F54F8 001F4578 B87B8424 */   addiu     $a0, $a0, %lo(D_001E7BB8)
.align 2
  .L001F457C:
    /* F54FC 001F457C B2D2080C */  jal        func_00234AC8
    /* F5500 001F4580 10000424 */   addiu     $a0, $zero, 0x10
    /* F5504 001F4584 10F50426 */  addiu      $a0, $s0, %lo(D_0015F510)
    /* F5508 001F4588 56C9070C */  jal        func_001F2558
    /* F550C 001F458C 11000524 */   addiu     $a1, $zero, 0x11
    /* F5510 001F4590 1600023C */  lui        $v0, %hi(D_0015F534)
    /* F5514 001F4594 34F5428C */  lw         $v0, %lo(D_0015F534)($v0)
    /* F5518 001F4598 10004230 */  andi       $v0, $v0, 0x10
    /* F551C 001F459C 0A004010 */  beqz       $v0, .L001F45C8
    /* F5520 001F45A0 B0A34226 */   addiu     $v0, $s2, %lo(D_0018A3B0)
    /* F5524 001F45A4 2800438C */  lw         $v1, 0x28($v0)
    /* F5528 001F45A8 04006050 */  beql       $v1, $zero, .L001F45BC
    /* F552C 001F45AC 1600043C */   lui       $a0, %hi(D_0015F528)
    /* F5530 001F45B0 5237080C */  jal        func_0020DD48
    /* F5534 001F45B4 00000000 */   nop
    /* F5538 001F45B8 1600043C */  lui        $a0, %hi(D_0015F528)
.align 2
  .L001F45BC:
    /* F553C 001F45BC 03000524 */  addiu      $a1, $zero, 0x3
    /* F5540 001F45C0 56C9070C */  jal        func_001F2558
    /* F5544 001F45C4 28F58424 */   addiu     $a0, $a0, %lo(D_0015F528)
.align 2
  .L001F45C8:
    /* F5548 001F45C8 4CCA070C */  jal        func_001F2930
    /* F554C 001F45CC 00000000 */   nop
    /* F5550 001F45D0 3000BF7B */  lq         $ra, 0x30($sp)
    /* F5554 001F45D4 2000B27B */  lq         $s2, 0x20($sp)
    /* F5558 001F45D8 1000B17B */  lq         $s1, 0x10($sp)
    /* F555C 001F45DC 0000B07B */  lq         $s0, 0x0($sp)
    /* F5560 001F45E0 1600013C */  lui        $at, %hi(D_0015F728)
    /* F5564 001F45E4 28F720AC */  sw         $zero, %lo(D_0015F728)($at)
    /* F5568 001F45E8 0800E003 */  jr         $ra
    /* F556C 001F45EC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001F3D78
