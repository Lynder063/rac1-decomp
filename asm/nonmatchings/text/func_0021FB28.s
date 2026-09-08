.align 3
nonmatching func_0021FB28, 0x454

glabel func_0021FB28
    /* 120AA8 0021FB28 F0FEBD27 */  addiu      $sp, $sp, -0x110
    /* 120AAC 0021FB2C D000B17F */  sq         $s1, 0xD0($sp)
    /* 120AB0 0021FB30 0001BF7F */  sq         $ra, 0x100($sp)
    /* 120AB4 0021FB34 2D888000 */  daddu      $s1, $a0, $zero
    /* 120AB8 0021FB38 F000B37F */  sq         $s3, 0xF0($sp)
    /* 120ABC 0021FB3C E000B27F */  sq         $s2, 0xE0($sp)
    /* 120AC0 0021FB40 C000B07F */  sq         $s0, 0xC0($sp)
    /* 120AC4 0021FB44 4400248E */  lw         $a0, 0x44($s1)
    /* 120AC8 0021FB48 04008050 */  beql       $a0, $zero, .L0021FB5C
    /* 120ACC 0021FB4C 2D200000 */   daddu     $a0, $zero, $zero
    /* 120AD0 0021FB50 6038080C */  jal        func_0020E180
    /* 120AD4 0021FB54 01000524 */   addiu     $a1, $zero, 0x1
    /* 120AD8 0021FB58 2D200000 */  daddu      $a0, $zero, $zero
.align 2
  .L0021FB5C:
    /* 120ADC 0021FB5C 8CD1070C */  jal        func_001F4630
    /* 120AE0 0021FB60 03001024 */   addiu     $s0, $zero, 0x3
    /* 120AE4 0021FB64 1400133C */  lui        $s3, %hi(D_0013E600)
    /* 120AE8 0021FB68 A000A427 */  addiu      $a0, $sp, 0xA0
    /* 120AEC 0021FB6C 2D280000 */  daddu      $a1, $zero, $zero
    /* 120AF0 0021FB70 18000624 */  addiu      $a2, $zero, 0x18
    /* 120AF4 0021FB74 FF54040C */  jal        func_001153FC
    /* 120AF8 0021FB78 1600123C */   lui       $s2, %hi(D_001603A0)
    /* 120AFC 0021FB7C 2000238E */  lw         $v1, 0x20($s1)
    /* 120B00 0021FB80 08000224 */  addiu      $v0, $zero, 0x8
    /* 120B04 0021FB84 24002496 */  lhu        $a0, 0x24($s1)
    /* 120B08 0021FB88 10000524 */  addiu      $a1, $zero, 0x10
    /* 120B0C 0021FB8C 1A007000 */  div        $zero, $v1, $s0
    /* 120B10 0021FB90 A400A2A7 */  sh         $v0, 0xA4($sp)
    /* 120B14 0021FB94 A200A4A7 */  sh         $a0, 0xA2($sp)
    /* 120B18 0021FB98 05000224 */  addiu      $v0, $zero, 0x5
    /* 120B1C 0021FB9C 01000052 */  beql       $s0, $zero, .L0021FBA4
    /* 120B20 0021FBA0 CD010000 */   break     0, 7
.align 2
  .L0021FBA4:
    /* 120B24 0021FBA4 4E4F0424 */  addiu      $a0, $zero, 0x4F4E
    /* 120B28 0021FBA8 B000A5A7 */  sh         $a1, 0xB0($sp)
    /* 120B2C 0021FBAC B200A2A7 */  sh         $v0, 0xB2($sp)
    /* 120B30 0021FBB0 12180000 */  mflo       $v1
    /* 120B34 0021FBB4 A600A3A7 */  sh         $v1, 0xA6($sp)
    /* 120B38 0021FBB8 A700A26B */  ldl        $v0, 0xA7($sp)
    /* 120B3C 0021FBBC A000A26F */  ldr        $v0, 0xA0($sp)
    /* 120B40 0021FBC0 AF00A36B */  ldl        $v1, 0xAF($sp)
    /* 120B44 0021FBC4 A800A36F */  ldr        $v1, 0xA8($sp)
    /* 120B48 0021FBC8 B700A56B */  ldl        $a1, 0xB7($sp)
    /* 120B4C 0021FBCC B000A56F */  ldr        $a1, 0xB0($sp)
    /* 120B50 0021FBD0 8700A2B3 */  sdl        $v0, 0x87($sp)
    /* 120B54 0021FBD4 8000A2B7 */  sdr        $v0, 0x80($sp)
    /* 120B58 0021FBD8 8F00A3B3 */  sdl        $v1, 0x8F($sp)
    /* 120B5C 0021FBDC 8800A3B7 */  sdr        $v1, 0x88($sp)
    /* 120B60 0021FBE0 9700A5B3 */  sdl        $a1, 0x97($sp)
    /* 120B64 0021FBE4 9000A5B7 */  sdr        $a1, 0x90($sp)
    /* 120B68 0021FBE8 8600A387 */  lh         $v1, 0x86($sp)
    /* 120B6C 0021FBEC 8400A287 */  lh         $v0, 0x84($sp)
    /* 120B70 0021FBF0 21104300 */  addu       $v0, $v0, $v1
    /* 120B74 0021FBF4 43100200 */  sra        $v0, $v0, 1
    /* 120B78 0021FBF8 50F9070C */  jal        func_001FE540
    /* 120B7C 0021FBFC 8800A2A7 */   sh        $v0, 0x88($sp)
    /* 120B80 0021FC00 2D284000 */  daddu      $a1, $v0, $zero
    /* 120B84 0021FC04 BF59040C */  jal        func_001166FC
    /* 120B88 0021FC08 2D20A003 */   daddu     $a0, $sp, $zero
    /* 120B8C 0021FC0C 1600033C */  lui        $v1, %hi(D_0015EE88)
    /* 120B90 0021FC10 88EE638C */  lw         $v1, %lo(D_0015EE88)($v1)
    /* 120B94 0021FC14 1A007014 */  bne        $v1, $s0, .L0021FC80
    /* 120B98 0021FC18 8000B127 */   addiu     $s1, $sp, 0x80
    /* 120B9C 0021FC1C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 120BA0 0021FC20 0A59040C */  jal        func_00116428
    /* 120BA4 0021FC24 2D000524 */   addiu     $a1, $zero, 0x2D
    /* 120BA8 0021FC28 2D804000 */  daddu      $s0, $v0, $zero
    /* 120BAC 0021FC2C 15000012 */  beqz       $s0, .L0021FC84
    /* 120BB0 0021FC30 2D30A003 */   daddu     $a2, $sp, $zero
    /* 120BB4 0021FC34 045A040C */  jal        func_00116810
    /* 120BB8 0021FC38 2D20A003 */   daddu     $a0, $sp, $zero
    /* 120BBC 0021FC3C 2D184000 */  daddu      $v1, $v0, $zero
    /* 120BC0 0021FC40 2120A303 */  addu       $a0, $sp, $v1
    /* 120BC4 0021FC44 2B100402 */  sltu       $v0, $s0, $a0
    /* 120BC8 0021FC48 0B004050 */  beql       $v0, $zero, .L0021FC78
    /* 120BCC 0021FC4C 21187D00 */   addu      $v1, $v1, $sp
    /* 120BD0 0021FC50 2D288000 */  daddu      $a1, $a0, $zero
    /* 120BD4 0021FC54 00000000 */  nop
.align 2
  .L0021FC58:
    /* 120BD8 0021FC58 00008290 */  lbu        $v0, 0x0($a0)
    /* 120BDC 0021FC5C 0100A2A0 */  sb         $v0, 0x1($a1)
    /* 120BE0 0021FC60 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 120BE4 0021FC64 2D20A000 */  daddu      $a0, $a1, $zero
    /* 120BE8 0021FC68 2B100402 */  sltu       $v0, $s0, $a0
    /* 120BEC 0021FC6C FAFF4014 */  bnez       $v0, .L0021FC58
    /* 120BF0 0021FC70 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 120BF4 0021FC74 21187D00 */  addu       $v1, $v1, $sp
.align 2
  .L0021FC78:
    /* 120BF8 0021FC78 20000224 */  addiu      $v0, $zero, 0x20
    /* 120BFC 0021FC7C 010062A0 */  sb         $v0, 0x1($v1)
.align 2
  .L0021FC80:
    /* 120C00 0021FC80 2D30A003 */  daddu      $a2, $sp, $zero
.align 2
  .L0021FC84:
    /* 120C04 0021FC84 2D202002 */  daddu      $a0, $s1, $zero
    /* 120C08 0021FC88 00800534 */  ori        $a1, $zero, 0x8000
    /* 120C0C 0021FC8C 382C0500 */  dsll       $a1, $a1, 16
    /* 120C10 0021FC90 C0C0A534 */  ori        $a1, $a1, 0xC0C0
    /* 120C14 0021FC94 58DD070C */  jal        func_001F7560
    /* 120C18 0021FC98 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 120C1C 0021FC9C A0035226 */  addiu      $s2, $s2, %lo(D_001603A0)
    /* 120C20 0021FCA0 00E66226 */  addiu      $v0, $s3, %lo(D_0013E600)
    /* 120C24 0021FCA4 8E00A587 */  lh         $a1, 0x8E($sp)
    /* 120C28 0021FCA8 0400438C */  lw         $v1, 0x4($v0)
    /* 120C2C 0021FCAC 2D30A003 */  daddu      $a2, $sp, $zero
    /* 120C30 0021FCB0 9200A297 */  lhu        $v0, 0x92($sp)
    /* 120C34 0021FCB4 2D202002 */  daddu      $a0, $s1, $zero
    /* 120C38 0021FCB8 23186500 */  subu       $v1, $v1, $a1
    /* 120C3C 0021FCBC FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 120C40 0021FCC0 43180300 */  sra        $v1, $v1, 1
    /* 120C44 0021FCC4 04004238 */  xori       $v0, $v0, 0x4
    /* 120C48 0021FCC8 9200A2A7 */  sh         $v0, 0x92($sp)
    /* 120C4C 0021FCCC 00800534 */  ori        $a1, $zero, 0x8000
    /* 120C50 0021FCD0 382C0500 */  dsll       $a1, $a1, 16
    /* 120C54 0021FCD4 C0C0A534 */  ori        $a1, $a1, 0xC0C0
    /* 120C58 0021FCD8 58DD070C */  jal        func_001F7560
    /* 120C5C 0021FCDC 8A00A3A7 */   sh        $v1, 0x8A($sp)
    /* 120C60 0021FCE0 B895918F */  lw         $s1, -0x6A48($gp)
    /* 120C64 0021FCE4 4F4F0424 */  addiu      $a0, $zero, 0x4F4F
    /* 120C68 0021FCE8 BC95908F */  lw         $s0, -0x6A44($gp)
    /* 120C6C 0021FCEC C8003126 */  addiu      $s1, $s1, 0xC8
    /* 120C70 0021FCF0 50F9070C */  jal        func_001FE540
    /* 120C74 0021FCF4 1D001026 */   addiu     $s0, $s0, 0x1D
    /* 120C78 0021FCF8 2D280002 */  daddu      $a1, $s0, $zero
    /* 120C7C 0021FCFC 2D384000 */  daddu      $a3, $v0, $zero
    /* 120C80 0021FD00 2D202002 */  daddu      $a0, $s1, $zero
    /* 120C84 0021FD04 00800634 */  ori        $a2, $zero, 0x8000
    /* 120C88 0021FD08 38340600 */  dsll       $a2, $a2, 16
    /* 120C8C 0021FD0C 3EDB070C */  jal        func_001F6CF8
    /* 120C90 0021FD10 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 120C94 0021FD14 B895918F */  lw         $s1, -0x6A48($gp)
    /* 120C98 0021FD18 504F0424 */  addiu      $a0, $zero, 0x4F50
    /* 120C9C 0021FD1C BC95908F */  lw         $s0, -0x6A44($gp)
    /* 120CA0 0021FD20 C8003126 */  addiu      $s1, $s1, 0xC8
    /* 120CA4 0021FD24 50F9070C */  jal        func_001FE540
    /* 120CA8 0021FD28 36001026 */   addiu     $s0, $s0, 0x36
    /* 120CAC 0021FD2C 2D280002 */  daddu      $a1, $s0, $zero
    /* 120CB0 0021FD30 2D384000 */  daddu      $a3, $v0, $zero
    /* 120CB4 0021FD34 2D202002 */  daddu      $a0, $s1, $zero
    /* 120CB8 0021FD38 00800634 */  ori        $a2, $zero, 0x8000
    /* 120CBC 0021FD3C 38340600 */  dsll       $a2, $a2, 16
    /* 120CC0 0021FD40 3EDB070C */  jal        func_001F6CF8
    /* 120CC4 0021FD44 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 120CC8 0021FD48 B895918F */  lw         $s1, -0x6A48($gp)
    /* 120CCC 0021FD4C 514F0424 */  addiu      $a0, $zero, 0x4F51
    /* 120CD0 0021FD50 BC95908F */  lw         $s0, -0x6A44($gp)
    /* 120CD4 0021FD54 C8003126 */  addiu      $s1, $s1, 0xC8
    /* 120CD8 0021FD58 50F9070C */  jal        func_001FE540
    /* 120CDC 0021FD5C 54001026 */   addiu     $s0, $s0, 0x54
    /* 120CE0 0021FD60 2D280002 */  daddu      $a1, $s0, $zero
    /* 120CE4 0021FD64 2D384000 */  daddu      $a3, $v0, $zero
    /* 120CE8 0021FD68 2D202002 */  daddu      $a0, $s1, $zero
    /* 120CEC 0021FD6C 00800634 */  ori        $a2, $zero, 0x8000
    /* 120CF0 0021FD70 38340600 */  dsll       $a2, $a2, 16
    /* 120CF4 0021FD74 3EDB070C */  jal        func_001F6CF8
    /* 120CF8 0021FD78 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 120CFC 0021FD7C 50F9070C */  jal        func_001FE540
    /* 120D00 0021FD80 4F4F0424 */   addiu     $a0, $zero, 0x4F4F
    /* 120D04 0021FD84 2D384000 */  daddu      $a3, $v0, $zero
    /* 120D08 0021FD88 1D000524 */  addiu      $a1, $zero, 0x1D
    /* 120D0C 0021FD8C FF800634 */  ori        $a2, $zero, 0x80FF
    /* 120D10 0021FD90 38340600 */  dsll       $a2, $a2, 16
    /* 120D14 0021FD94 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120D18 0021FD98 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120D1C 0021FD9C 3EDB070C */  jal        func_001F6CF8
    /* 120D20 0021FDA0 C8000424 */   addiu     $a0, $zero, 0xC8
    /* 120D24 0021FDA4 50F9070C */  jal        func_001FE540
    /* 120D28 0021FDA8 504F0424 */   addiu     $a0, $zero, 0x4F50
    /* 120D2C 0021FDAC 2D384000 */  daddu      $a3, $v0, $zero
    /* 120D30 0021FDB0 36000524 */  addiu      $a1, $zero, 0x36
    /* 120D34 0021FDB4 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 120D38 0021FDB8 38340600 */  dsll       $a2, $a2, 16
    /* 120D3C 0021FDBC 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120D40 0021FDC0 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120D44 0021FDC4 3EDB070C */  jal        func_001F6CF8
    /* 120D48 0021FDC8 C8000424 */   addiu     $a0, $zero, 0xC8
    /* 120D4C 0021FDCC 50F9070C */  jal        func_001FE540
    /* 120D50 0021FDD0 514F0424 */   addiu     $a0, $zero, 0x4F51
    /* 120D54 0021FDD4 2D384000 */  daddu      $a3, $v0, $zero
    /* 120D58 0021FDD8 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120D5C 0021FDDC C8000424 */  addiu      $a0, $zero, 0xC8
    /* 120D60 0021FDE0 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 120D64 0021FDE4 38340600 */  dsll       $a2, $a2, 16
    /* 120D68 0021FDE8 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120D6C 0021FDEC 3EDB070C */  jal        func_001F6CF8
    /* 120D70 0021FDF0 54000524 */   addiu     $a1, $zero, 0x54
    /* 120D74 0021FDF4 3858080C */  jal        func_002160E0
    /* 120D78 0021FDF8 00000000 */   nop
    /* 120D7C 0021FDFC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 120D80 0021FE00 2D284002 */  daddu      $a1, $s2, $zero
    /* 120D84 0021FE04 9258040C */  jal        func_00116248
    /* 120D88 0021FE08 2D304000 */   daddu     $a2, $v0, $zero
    /* 120D8C 0021FE0C B895848F */  lw         $a0, -0x6A48($gp)
    /* 120D90 0021FE10 2D38A003 */  daddu      $a3, $sp, $zero
    /* 120D94 0021FE14 BC95858F */  lw         $a1, -0x6A44($gp)
    /* 120D98 0021FE18 00800634 */  ori        $a2, $zero, 0x8000
    /* 120D9C 0021FE1C 38340600 */  dsll       $a2, $a2, 16
    /* 120DA0 0021FE20 F0008424 */  addiu      $a0, $a0, 0xF0
    /* 120DA4 0021FE24 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120DA8 0021FE28 86DB070C */  jal        func_001F6E18
    /* 120DAC 0021FE2C 1D00A524 */   addiu     $a1, $a1, 0x1D
    /* 120DB0 0021FE30 2D38A003 */  daddu      $a3, $sp, $zero
    /* 120DB4 0021FE34 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120DB8 0021FE38 F0000424 */  addiu      $a0, $zero, 0xF0
    /* 120DBC 0021FE3C FF800634 */  ori        $a2, $zero, 0x80FF
    /* 120DC0 0021FE40 38340600 */  dsll       $a2, $a2, 16
    /* 120DC4 0021FE44 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120DC8 0021FE48 86DB070C */  jal        func_001F6E18
    /* 120DCC 0021FE4C 1D000524 */   addiu     $a1, $zero, 0x1D
    /* 120DD0 0021FE50 5458080C */  jal        func_00216150
    /* 120DD4 0021FE54 00000000 */   nop
    /* 120DD8 0021FE58 2D20A003 */  daddu      $a0, $sp, $zero
    /* 120DDC 0021FE5C 2D284002 */  daddu      $a1, $s2, $zero
    /* 120DE0 0021FE60 9258040C */  jal        func_00116248
    /* 120DE4 0021FE64 80300200 */   sll       $a2, $v0, 2
    /* 120DE8 0021FE68 B895848F */  lw         $a0, -0x6A48($gp)
    /* 120DEC 0021FE6C 2D38A003 */  daddu      $a3, $sp, $zero
    /* 120DF0 0021FE70 BC95858F */  lw         $a1, -0x6A44($gp)
    /* 120DF4 0021FE74 00800634 */  ori        $a2, $zero, 0x8000
    /* 120DF8 0021FE78 38340600 */  dsll       $a2, $a2, 16
    /* 120DFC 0021FE7C F0008424 */  addiu      $a0, $a0, 0xF0
    /* 120E00 0021FE80 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120E04 0021FE84 86DB070C */  jal        func_001F6E18
    /* 120E08 0021FE88 3600A524 */   addiu     $a1, $a1, 0x36
    /* 120E0C 0021FE8C 2D38A003 */  daddu      $a3, $sp, $zero
    /* 120E10 0021FE90 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120E14 0021FE94 F0000424 */  addiu      $a0, $zero, 0xF0
    /* 120E18 0021FE98 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 120E1C 0021FE9C 38340600 */  dsll       $a2, $a2, 16
    /* 120E20 0021FEA0 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120E24 0021FEA4 86DB070C */  jal        func_001F6E18
    /* 120E28 0021FEA8 36000524 */   addiu     $a1, $zero, 0x36
    /* 120E2C 0021FEAC 2658080C */  jal        func_00216098
    /* 120E30 0021FEB0 00000000 */   nop
    /* 120E34 0021FEB4 2D20A003 */  daddu      $a0, $sp, $zero
    /* 120E38 0021FEB8 2D284002 */  daddu      $a1, $s2, $zero
    /* 120E3C 0021FEBC 9258040C */  jal        func_00116248
    /* 120E40 0021FEC0 2D304000 */   daddu     $a2, $v0, $zero
    /* 120E44 0021FEC4 B895848F */  lw         $a0, -0x6A48($gp)
    /* 120E48 0021FEC8 2D38A003 */  daddu      $a3, $sp, $zero
    /* 120E4C 0021FECC BC95858F */  lw         $a1, -0x6A44($gp)
    /* 120E50 0021FED0 00800634 */  ori        $a2, $zero, 0x8000
    /* 120E54 0021FED4 38340600 */  dsll       $a2, $a2, 16
    /* 120E58 0021FED8 F0008424 */  addiu      $a0, $a0, 0xF0
    /* 120E5C 0021FEDC FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120E60 0021FEE0 86DB070C */  jal        func_001F6E18
    /* 120E64 0021FEE4 5400A524 */   addiu     $a1, $a1, 0x54
    /* 120E68 0021FEE8 2D38A003 */  daddu      $a3, $sp, $zero
    /* 120E6C 0021FEEC F0000424 */  addiu      $a0, $zero, 0xF0
    /* 120E70 0021FEF0 54000524 */  addiu      $a1, $zero, 0x54
    /* 120E74 0021FEF4 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 120E78 0021FEF8 38340600 */  dsll       $a2, $a2, 16
    /* 120E7C 0021FEFC 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120E80 0021FF00 86DB070C */  jal        func_001F6E18
    /* 120E84 0021FF04 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 120E88 0021FF08 B895848F */  lw         $a0, -0x6A48($gp)
    /* 120E8C 0021FF0C 00800834 */  ori        $t0, $zero, 0x8000
    /* 120E90 0021FF10 38440800 */  dsll       $t0, $t0, 16
    /* 120E94 0021FF14 BC95858F */  lw         $a1, -0x6A44($gp)
    /* 120E98 0021FF18 2D480000 */  daddu      $t1, $zero, $zero
    /* 120E9C 0021FF1C F2008624 */  addiu      $a2, $a0, 0xF2
    /* 120EA0 0021FF20 5000A724 */  addiu      $a3, $a1, 0x50
    /* 120EA4 0021FF24 D0008424 */  addiu      $a0, $a0, 0xD0
    /* 120EA8 0021FF28 9005080C */  jal        func_00201640
    /* 120EAC 0021FF2C 4D00A524 */   addiu     $a1, $a1, 0x4D
    /* 120EB0 0021FF30 D0000424 */  addiu      $a0, $zero, 0xD0
    /* 120EB4 0021FF34 4D000524 */  addiu      $a1, $zero, 0x4D
    /* 120EB8 0021FF38 F2000624 */  addiu      $a2, $zero, 0xF2
    /* 120EBC 0021FF3C 50000724 */  addiu      $a3, $zero, 0x50
    /* 120EC0 0021FF40 FF800834 */  ori        $t0, $zero, 0x80FF
    /* 120EC4 0021FF44 38440800 */  dsll       $t0, $t0, 16
    /* 120EC8 0021FF48 88A80835 */  ori        $t0, $t0, 0xA888
    /* 120ECC 0021FF4C 9005080C */  jal        func_00201640
    /* 120ED0 0021FF50 2D480000 */   daddu     $t1, $zero, $zero
    /* 120ED4 0021FF54 D2D1070C */  jal        func_001F4748
    /* 120ED8 0021FF58 00000000 */   nop
    /* 120EDC 0021FF5C 0001BF7B */  lq         $ra, 0x100($sp)
    /* 120EE0 0021FF60 08000224 */  addiu      $v0, $zero, 0x8
    /* 120EE4 0021FF64 F000B37B */  lq         $s3, 0xF0($sp)
    /* 120EE8 0021FF68 E000B27B */  lq         $s2, 0xE0($sp)
    /* 120EEC 0021FF6C D000B17B */  lq         $s1, 0xD0($sp)
    /* 120EF0 0021FF70 C000B07B */  lq         $s0, 0xC0($sp)
    /* 120EF4 0021FF74 0800E003 */  jr         $ra
    /* 120EF8 0021FF78 1001BD27 */   addiu     $sp, $sp, 0x110
endlabel func_0021FB28
    /* 120EFC 0021FF7C 00000000 */  nop
