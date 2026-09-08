.align 3
nonmatching func_00232B90, 0x35C

glabel func_00232B90
    /* 133B10 00232B90 D0FEBD27 */  addiu      $sp, $sp, -0x130
    /* 133B14 00232B94 1300023C */  lui        $v0, %hi(D_00137C80)
    /* 133B18 00232B98 9000B07F */  sq         $s0, 0x90($sp)
    /* 133B1C 00232B9C 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* 133B20 00232BA0 1001BE7F */  sq         $fp, 0x110($sp)
    /* 133B24 00232BA4 C0200400 */  sll        $a0, $a0, 3
    /* 133B28 00232BA8 0001B77F */  sq         $s7, 0x100($sp)
    /* 133B2C 00232BAC 1900103C */  lui        $s0, %hi(D_001941C0)
    /* 133B30 00232BB0 F000B67F */  sq         $s6, 0xF0($sp)
    /* 133B34 00232BB4 21184400 */  addu       $v1, $v0, $a0
    /* 133B38 00232BB8 E000B57F */  sq         $s5, 0xE0($sp)
    /* 133B3C 00232BBC C0411026 */  addiu      $s0, $s0, %lo(D_001941C0)
    /* 133B40 00232BC0 D000B47F */  sq         $s4, 0xD0($sp)
    /* 133B44 00232BC4 2D106000 */  daddu      $v0, $v1, $zero
    /* 133B48 00232BC8 C000B37F */  sq         $s3, 0xC0($sp)
    /* 133B4C 00232BCC 2DF0E000 */  daddu      $fp, $a3, $zero
    /* 133B50 00232BD0 B000B27F */  sq         $s2, 0xB0($sp)
    /* 133B54 00232BD4 1000133C */  lui        $s3, (0x100000 >> 16)
    /* 133B58 00232BD8 A000B17F */  sq         $s1, 0xA0($sp)
    /* 133B5C 00232BDC 2D90C000 */  daddu      $s2, $a2, $zero
    /* 133B60 00232BE0 2001BF7F */  sq         $ra, 0x120($sp)
    /* 133B64 00232BE4 2D88A000 */  daddu      $s1, $a1, $zero
    /* 133B68 00232BE8 2DA80000 */  daddu      $s5, $zero, $zero
    /* 133B6C 00232BEC 14000A8E */  lw         $t2, 0x14($s0)
    /* 133B70 00232BF0 8C13668C */  lw         $a2, 0x138C($v1)
    /* 133B74 00232BF4 8813458C */  lw         $a1, 0x1388($v0)
    /* 133B78 00232BF8 21205301 */  addu       $a0, $t2, $s3
    /* 133B7C 00232BFC 8000A8AF */  sw         $t0, 0x80($sp)
    /* 133B80 00232C00 725D080C */  jal        func_002175C8
    /* 133B84 00232C04 8400A9AF */   sw        $t1, 0x84($sp)
    /* 133B88 00232C08 CC83040C */  jal        func_00120F30
    /* 133B8C 00232C0C 2D200000 */   daddu     $a0, $zero, $zero
    /* 133B90 00232C10 6063040C */  jal        func_00118D80
    /* 133B94 00232C14 2D200000 */   daddu     $a0, $zero, $zero
    /* 133B98 00232C18 1400058E */  lw         $a1, 0x14($s0)
    /* 133B9C 00232C1C 1A31080C */  jal        func_0020C468
    /* 133BA0 00232C20 2120B300 */   addu      $a0, $a1, $s3
    /* 133BA4 00232C24 6063040C */  jal        func_00118D80
    /* 133BA8 00232C28 2D200000 */   daddu     $a0, $zero, $zero
    /* 133BAC 00232C2C 1400138E */  lw         $s3, 0x14($s0)
    /* 133BB0 00232C30 80901200 */  sll        $s2, $s2, 2
    /* 133BB4 00232C34 1600023C */  lui        $v0, %hi(D_0015EF8C)
    /* 133BB8 00232C38 8CEF428C */  lw         $v0, %lo(D_0015EF8C)($v0)
    /* 133BBC 00232C3C 80881100 */  sll        $s1, $s1, 2
    /* 133BC0 00232C40 21B05302 */  addu       $s6, $s2, $s3
    /* 133BC4 00232C44 2000B427 */  addiu      $s4, $sp, 0x20
    /* 133BC8 00232C48 1600013C */  lui        $at, %hi(D_0015EF78)
    /* 133BCC 00232C4C 78EF22AC */  sw         $v0, %lo(D_0015EF78)($at)
    /* 133BD0 00232C50 21B83302 */  addu       $s7, $s1, $s3
    /* 133BD4 00232C54 1600013C */  lui        $at, %hi(D_0015EF74)
    /* 133BD8 00232C58 74EF22AC */  sw         $v0, %lo(D_0015EF74)($at)
    /* 133BDC 00232C5C 2D90A003 */  daddu      $s2, $sp, $zero
.align 2
  .L00232C60:
    /* 133BE0 00232C60 1000A016 */  bnez       $s5, .L00232CA4
    /* 133BE4 00232C64 01000224 */   addiu     $v0, $zero, 0x1
    /* 133BE8 00232C68 1600053C */  lui        $a1, %hi(D_0015EF74)
    /* 133BEC 00232C6C 74EFA58C */  lw         $a1, %lo(D_0015EF74)($a1)
    /* 133BF0 00232C70 2D208002 */  daddu      $a0, $s4, $zero
    /* 133BF4 00232C74 01000624 */  addiu      $a2, $zero, 0x1
    /* 133BF8 00232C78 2D380000 */  daddu      $a3, $zero, $zero
    /* 133BFC 00232C7C 002A0500 */  sll        $a1, $a1, 8
    /* 133C00 00232C80 2D400000 */  daddu      $t0, $zero, $zero
    /* 133C04 00232C84 032C0500 */  sra        $a1, $a1, 16
    /* 133C08 00232C88 2D480000 */  daddu      $t1, $zero, $zero
    /* 133C0C 00232C8C 10000A24 */  addiu      $t2, $zero, 0x10
    /* 133C10 00232C90 8C89040C */  jal        func_00122630
    /* 133C14 00232C94 10000B24 */   addiu     $t3, $zero, 0x10
    /* 133C18 00232C98 00041124 */  addiu      $s1, $zero, 0x400
    /* 133C1C 00232C9C 42000010 */  b          .L00232DA8
    /* 133C20 00232CA0 0400628E */   lw        $v0, 0x4($s3)
.align 2
  .L00232CA4:
    /* 133C24 00232CA4 1000A216 */  bne        $s5, $v0, .L00232CE8
    /* 133C28 00232CA8 02000224 */   addiu     $v0, $zero, 0x2
    /* 133C2C 00232CAC 1600053C */  lui        $a1, %hi(D_0015EF74)
    /* 133C30 00232CB0 74EFA58C */  lw         $a1, %lo(D_0015EF74)($a1)
    /* 133C34 00232CB4 2D208002 */  daddu      $a0, $s4, $zero
    /* 133C38 00232CB8 01000624 */  addiu      $a2, $zero, 0x1
    /* 133C3C 00232CBC 13000724 */  addiu      $a3, $zero, 0x13
    /* 133C40 00232CC0 002A0500 */  sll        $a1, $a1, 8
    /* 133C44 00232CC4 2D400000 */  daddu      $t0, $zero, $zero
    /* 133C48 00232CC8 032C0500 */  sra        $a1, $a1, 16
    /* 133C4C 00232CCC 2D480000 */  daddu      $t1, $zero, $zero
    /* 133C50 00232CD0 40000A24 */  addiu      $t2, $zero, 0x40
    /* 133C54 00232CD4 8C89040C */  jal        func_00122630
    /* 133C58 00232CD8 40000B24 */   addiu     $t3, $zero, 0x40
    /* 133C5C 00232CDC 00101124 */  addiu      $s1, $zero, 0x1000
    /* 133C60 00232CE0 40000010 */  b          .L00232DE4
    /* 133C64 00232CE4 0400628E */   lw        $v0, 0x4($s3)
.align 2
  .L00232CE8:
    /* 133C68 00232CE8 1000A216 */  bne        $s5, $v0, .L00232D2C
    /* 133C6C 00232CEC 03000224 */   addiu     $v0, $zero, 0x3
    /* 133C70 00232CF0 1600053C */  lui        $a1, %hi(D_0015EF74)
    /* 133C74 00232CF4 74EFA58C */  lw         $a1, %lo(D_0015EF74)($a1)
    /* 133C78 00232CF8 2D208002 */  daddu      $a0, $s4, $zero
    /* 133C7C 00232CFC 01000624 */  addiu      $a2, $zero, 0x1
    /* 133C80 00232D00 2D380000 */  daddu      $a3, $zero, $zero
    /* 133C84 00232D04 002A0500 */  sll        $a1, $a1, 8
    /* 133C88 00232D08 2D400000 */  daddu      $t0, $zero, $zero
    /* 133C8C 00232D0C 032C0500 */  sra        $a1, $a1, 16
    /* 133C90 00232D10 2D480000 */  daddu      $t1, $zero, $zero
    /* 133C94 00232D14 10000A24 */  addiu      $t2, $zero, 0x10
    /* 133C98 00232D18 8C89040C */  jal        func_00122630
    /* 133C9C 00232D1C 10000B24 */   addiu     $t3, $zero, 0x10
    /* 133CA0 00232D20 00041124 */  addiu      $s1, $zero, 0x400
    /* 133CA4 00232D24 20000010 */  b          .L00232DA8
    /* 133CA8 00232D28 0800E28E */   lw        $v0, 0x8($s7)
.align 2
  .L00232D2C:
    /* 133CAC 00232D2C 1000A216 */  bne        $s5, $v0, .L00232D70
    /* 133CB0 00232D30 04000224 */   addiu     $v0, $zero, 0x4
    /* 133CB4 00232D34 1600053C */  lui        $a1, %hi(D_0015EF74)
    /* 133CB8 00232D38 74EFA58C */  lw         $a1, %lo(D_0015EF74)($a1)
    /* 133CBC 00232D3C 2D208002 */  daddu      $a0, $s4, $zero
    /* 133CC0 00232D40 08000624 */  addiu      $a2, $zero, 0x8
    /* 133CC4 00232D44 13000724 */  addiu      $a3, $zero, 0x13
    /* 133CC8 00232D48 002A0500 */  sll        $a1, $a1, 8
    /* 133CCC 00232D4C 2D400000 */  daddu      $t0, $zero, $zero
    /* 133CD0 00232D50 032C0500 */  sra        $a1, $a1, 16
    /* 133CD4 00232D54 2D480000 */  daddu      $t1, $zero, $zero
    /* 133CD8 00232D58 00020A24 */  addiu      $t2, $zero, 0x200
    /* 133CDC 00232D5C 8C89040C */  jal        func_00122630
    /* 133CE0 00232D60 40000B24 */   addiu     $t3, $zero, 0x40
    /* 133CE4 00232D64 00801134 */  ori        $s1, $zero, 0x8000
    /* 133CE8 00232D68 1E000010 */  b          .L00232DE4
    /* 133CEC 00232D6C 0800E28E */   lw        $v0, 0x8($s7)
.align 2
  .L00232D70:
    /* 133CF0 00232D70 1000A216 */  bne        $s5, $v0, .L00232DB4
    /* 133CF4 00232D74 7482858F */   lw        $a1, -0x7D8C($gp)
    /* 133CF8 00232D78 2D208002 */  daddu      $a0, $s4, $zero
    /* 133CFC 00232D7C 01000624 */  addiu      $a2, $zero, 0x1
    /* 133D00 00232D80 2D380000 */  daddu      $a3, $zero, $zero
    /* 133D04 00232D84 002A0500 */  sll        $a1, $a1, 8
    /* 133D08 00232D88 2D400000 */  daddu      $t0, $zero, $zero
    /* 133D0C 00232D8C 032C0500 */  sra        $a1, $a1, 16
    /* 133D10 00232D90 2D480000 */  daddu      $t1, $zero, $zero
    /* 133D14 00232D94 10000A24 */  addiu      $t2, $zero, 0x10
    /* 133D18 00232D98 8C89040C */  jal        func_00122630
    /* 133D1C 00232D9C 10000B24 */   addiu     $t3, $zero, 0x10
    /* 133D20 00232DA0 00041124 */  addiu      $s1, $zero, 0x400
    /* 133D24 00232DA4 0800C28E */  lw         $v0, 0x8($s6)
.align 2
  .L00232DA8:
    /* 133D28 00232DA8 21106202 */  addu       $v0, $s3, $v0
    /* 133D2C 00232DAC 0F000010 */  b          .L00232DEC
    /* 133D30 00232DB0 20005024 */   addiu     $s0, $v0, 0x20
.align 2
  .L00232DB4:
    /* 133D34 00232DB4 2D208002 */  daddu      $a0, $s4, $zero
    /* 133D38 00232DB8 08000624 */  addiu      $a2, $zero, 0x8
    /* 133D3C 00232DBC 13000724 */  addiu      $a3, $zero, 0x13
    /* 133D40 00232DC0 002A0500 */  sll        $a1, $a1, 8
    /* 133D44 00232DC4 2D400000 */  daddu      $t0, $zero, $zero
    /* 133D48 00232DC8 032C0500 */  sra        $a1, $a1, 16
    /* 133D4C 00232DCC 2D480000 */  daddu      $t1, $zero, $zero
    /* 133D50 00232DD0 00020A24 */  addiu      $t2, $zero, 0x200
    /* 133D54 00232DD4 8C89040C */  jal        func_00122630
    /* 133D58 00232DD8 40000B24 */   addiu     $t3, $zero, 0x40
    /* 133D5C 00232DDC 00801134 */  ori        $s1, $zero, 0x8000
    /* 133D60 00232DE0 0800C28E */  lw         $v0, 0x8($s6)
.align 2
  .L00232DE4:
    /* 133D64 00232DE4 21106202 */  addu       $v0, $s3, $v0
    /* 133D68 00232DE8 20045024 */  addiu      $s0, $v0, 0x420
.align 2
  .L00232DEC:
    /* 133D6C 00232DEC 2D200000 */  daddu      $a0, $zero, $zero
    /* 133D70 00232DF0 6063040C */  jal        func_00118D80
    /* 133D74 00232DF4 0100B526 */   addiu     $s5, $s5, 0x1
    /* 133D78 00232DF8 2D280002 */  daddu      $a1, $s0, $zero
    /* 133D7C 00232DFC 568A040C */  jal        func_00122958
    /* 133D80 00232E00 2D208002 */   daddu     $a0, $s4, $zero
    /* 133D84 00232E04 2D200000 */  daddu      $a0, $zero, $zero
    /* 133D88 00232E08 1682040C */  jal        func_00120858
    /* 133D8C 00232E0C 2D280000 */   daddu     $a1, $zero, $zero
    /* 133D90 00232E10 1600033C */  lui        $v1, %hi(D_0015EF74)
    /* 133D94 00232E14 74EF638C */  lw         $v1, %lo(D_0015EF74)($v1)
    /* 133D98 00232E18 0600A42A */  slti       $a0, $s5, 0x6
    /* 133D9C 00232E1C 03120300 */  sra        $v0, $v1, 8
    /* 133DA0 00232E20 000042AE */  sw         $v0, 0x0($s2)
    /* 133DA4 00232E24 21187100 */  addu       $v1, $v1, $s1
    /* 133DA8 00232E28 1600013C */  lui        $at, %hi(D_0015EF74)
    /* 133DAC 00232E2C 74EF23AC */  sw         $v1, %lo(D_0015EF74)($at)
    /* 133DB0 00232E30 8BFF8014 */  bnez       $a0, .L00232C60
    /* 133DB4 00232E34 04005226 */   addiu     $s2, $s2, 0x4
    /* 133DB8 00232E38 0000A58F */  lw         $a1, 0x0($sp)
    /* 133DBC 00232E3C 3019023C */  lui        $v0, (0x19304000 >> 16)
    /* 133DC0 00232E40 0400A48F */  lw         $a0, 0x4($sp)
    /* 133DC4 00232E44 00B00834 */  ori        $t0, $zero, 0xB000
    /* 133DC8 00232E48 F8440800 */  dsll       $t0, $t0, 19
    /* 133DCC 00232E4C 00404234 */  ori        $v0, $v0, (0x19304000 & 0xFFFF)
    /* 133DD0 00232E50 7C290500 */  dsll32     $a1, $a1, 5
    /* 133DD4 00232E54 2528A800 */  or         $a1, $a1, $t0
    /* 133DD8 00232E58 25208200 */  or         $a0, $a0, $v0
    /* 133DDC 00232E5C 0800A68F */  lw         $a2, 0x8($sp)
    /* 133DE0 00232E60 25208500 */  or         $a0, $a0, $a1
    /* 133DE4 00232E64 0C00A38F */  lw         $v1, 0xC($sp)
    /* 133DE8 00232E68 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 133DEC 00232E6C FC2F0500 */  dsll32     $a1, $a1, 31
    /* 133DF0 00232E70 1000A78F */  lw         $a3, 0x10($sp)
    /* 133DF4 00232E74 3225093C */  lui        $t1, (0x25320000 >> 16)
    /* 133DF8 00232E78 1400A28F */  lw         $v0, 0x14($sp)
    /* 133DFC 00232E7C 25208500 */  or         $a0, $a0, $a1
    /* 133E00 00232E80 7C310600 */  dsll32     $a2, $a2, 5
    /* 133E04 00232E84 0000C4FF */  sd         $a0, 0x0($fp)
    /* 133E08 00232E88 25186900 */  or         $v1, $v1, $t1
    /* 133E0C 00232E8C 2530C800 */  or         $a2, $a2, $t0
    /* 133E10 00232E90 8000A48F */  lw         $a0, 0x80($sp)
    /* 133E14 00232E94 25186600 */  or         $v1, $v1, $a2
    /* 133E18 00232E98 25186500 */  or         $v1, $v1, $a1
    /* 133E1C 00232E9C 7C390700 */  dsll32     $a3, $a3, 5
    /* 133E20 00232EA0 000083FC */  sd         $v1, 0x0($a0)
    /* 133E24 00232EA4 25104900 */  or         $v0, $v0, $t1
    /* 133E28 00232EA8 2538E800 */  or         $a3, $a3, $t0
    /* 133E2C 00232EAC 8400A38F */  lw         $v1, 0x84($sp)
    /* 133E30 00232EB0 25104700 */  or         $v0, $v0, $a3
    /* 133E34 00232EB4 2001BF7B */  lq         $ra, 0x120($sp)
    /* 133E38 00232EB8 25104500 */  or         $v0, $v0, $a1
    /* 133E3C 00232EBC 1001BE7B */  lq         $fp, 0x110($sp)
    /* 133E40 00232EC0 0001B77B */  lq         $s7, 0x100($sp)
    /* 133E44 00232EC4 F000B67B */  lq         $s6, 0xF0($sp)
    /* 133E48 00232EC8 E000B57B */  lq         $s5, 0xE0($sp)
    /* 133E4C 00232ECC D000B47B */  lq         $s4, 0xD0($sp)
    /* 133E50 00232ED0 C000B37B */  lq         $s3, 0xC0($sp)
    /* 133E54 00232ED4 B000B27B */  lq         $s2, 0xB0($sp)
    /* 133E58 00232ED8 A000B17B */  lq         $s1, 0xA0($sp)
    /* 133E5C 00232EDC 9000B07B */  lq         $s0, 0x90($sp)
    /* 133E60 00232EE0 000062FC */  sd         $v0, 0x0($v1)
    /* 133E64 00232EE4 0800E003 */  jr         $ra
    /* 133E68 00232EE8 3001BD27 */   addiu     $sp, $sp, 0x130
endlabel func_00232B90
    /* 133E6C 00232EEC 00000000 */  nop
