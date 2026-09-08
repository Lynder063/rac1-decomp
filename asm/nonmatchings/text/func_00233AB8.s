.align 3
nonmatching func_00233AB8, 0x540

glabel func_00233AB8
    /* 134A38 00233AB8 30FEBD27 */  addiu      $sp, $sp, -0x1D0
    /* 134A3C 00233ABC 70998627 */  addiu      $a2, $gp, -0x6690
    /* 134A40 00233AC0 3001B27F */  sq         $s2, 0x130($sp)
    /* 134A44 00233AC4 60998527 */  addiu      $a1, $gp, -0x66A0
    /* 134A48 00233AC8 1001B07F */  sq         $s0, 0x110($sp)
    /* 134A4C 00233ACC 2D908000 */  daddu      $s2, $a0, $zero
    /* 134A50 00233AD0 A001BF7F */  sq         $ra, 0x1A0($sp)
    /* 134A54 00233AD4 50998327 */  addiu      $v1, $gp, -0x66B0
    /* 134A58 00233AD8 9001BE7F */  sq         $fp, 0x190($sp)
    /* 134A5C 00233ADC 30998427 */  addiu      $a0, $gp, -0x66D0
    /* 134A60 00233AE0 8001B77F */  sq         $s7, 0x180($sp)
    /* 134A64 00233AE4 40998727 */  addiu      $a3, $gp, -0x66C0
    /* 134A68 00233AE8 7001B67F */  sq         $s6, 0x170($sp)
    /* 134A6C 00233AEC 6001B57F */  sq         $s5, 0x160($sp)
    /* 134A70 00233AF0 5001B47F */  sq         $s4, 0x150($sp)
    /* 134A74 00233AF4 4001B37F */  sq         $s3, 0x140($sp)
    /* 134A78 00233AF8 2001B17F */  sq         $s1, 0x120($sp)
    /* 134A7C 00233AFC C001B6E7 */  swc1       $f22, 0x1C0($sp)
    /* 134A80 00233B00 B801B5E7 */  swc1       $f21, 0x1B8($sp)
    /* 134A84 00233B04 B001B4E7 */  swc1       $f20, 0x1B0($sp)
    /* 134A88 00233B08 1600083C */  lui        $t0, %hi(D_0015F6E8)
    /* 134A8C 00233B0C E8F6088D */  lw         $t0, %lo(D_0015F6E8)($t0)
    /* 134A90 00233B10 A6004286 */  lh         $v0, 0xA6($s2)
    /* 134A94 00233B14 EEFD5024 */  addiu      $s0, $v0, -0x212
    /* 134A98 00233B18 80101000 */  sll        $v0, $s0, 2
    /* 134A9C 00233B1C 21304600 */  addu       $a2, $v0, $a2
    /* 134AA0 00233B20 21284500 */  addu       $a1, $v0, $a1
    /* 134AA4 00233B24 0000C68C */  lw         $a2, 0x0($a2)
    /* 134AA8 00233B28 21184300 */  addu       $v1, $v0, $v1
    /* 134AAC 00233B2C 0000B38C */  lw         $s3, 0x0($a1)
    /* 134AB0 00233B30 21204400 */  addu       $a0, $v0, $a0
    /* 134AB4 00233B34 0000768C */  lw         $s6, 0x0($v1)
    /* 134AB8 00233B38 21104700 */  addu       $v0, $v0, $a3
    /* 134ABC 00233B3C 0001A6AF */  sw         $a2, 0x100($sp)
    /* 134AC0 00233B40 06000524 */  addiu      $a1, $zero, 0x6
    /* 134AC4 00233B44 0000428C */  lw         $v0, 0x0($v0)
    /* 134AC8 00233B48 0401A2AF */  sw         $v0, 0x104($sp)
    /* 134ACC 00233B4C 0000848C */  lw         $a0, 0x0($a0)
    /* 134AD0 00233B50 08000515 */  bne        $t0, $a1, .L00233B74
    /* 134AD4 00233B54 0801A4AF */   sw        $a0, 0x108($sp)
    /* 134AD8 00233B58 1400023C */  lui        $v0, %hi(D_0013E150)
    /* 134ADC 00233B5C 04000424 */  addiu      $a0, $zero, 0x4
    /* 134AE0 00233B60 50E1438C */  lw         $v1, %lo(D_0013E150)($v0)
    /* 134AE4 00233B64 04006414 */  bne        $v1, $a0, .L00233B78
    /* 134AE8 00233B68 15000424 */   addiu     $a0, $zero, 0x15
    /* 134AEC 00233B6C 02000010 */  b          .L00233B78
    /* 134AF0 00233B70 01000424 */   addiu     $a0, $zero, 0x1
.align 2
  .L00233B74:
    /* 134AF4 00233B74 15000424 */  addiu      $a0, $zero, 0x15
.align 2
  .L00233B78:
    /* 134AF8 00233B78 1AD2070C */  jal        func_001F4868
    /* 134AFC 00233B7C 2D880000 */   daddu     $s1, $zero, $zero
    /* 134B00 00233B80 7800A2FF */  sd         $v0, 0x78($sp)
    /* 134B04 00233B84 20998327 */  addiu      $v1, $gp, -0x66E0
    /* 134B08 00233B88 80101000 */  sll        $v0, $s0, 2
    /* 134B0C 00233B8C 21104300 */  addu       $v0, $v0, $v1
    /* 134B10 00233B90 00800534 */  ori        $a1, $zero, 0x8000
    /* 134B14 00233B94 382E0500 */  dsll       $a1, $a1, 24
    /* 134B18 00233B98 4400A534 */  ori        $a1, $a1, 0x44
    /* 134B1C 00233B9C 0000438C */  lw         $v1, 0x0($v0)
    /* 134B20 00233BA0 9000A627 */  addiu      $a2, $sp, 0x90
    /* 134B24 00233BA4 90FF0234 */  ori        $v0, $zero, 0xFF90
    /* 134B28 00233BA8 3C100200 */  dsll32     $v0, $v0, 0
    /* 134B2C 00233BAC 60024234 */  ori        $v0, $v0, 0x260
    /* 134B30 00233BB0 8800A5FF */  sd         $a1, 0x88($sp)
    /* 134B34 00233BB4 8000A2FF */  sd         $v0, 0x80($sp)
    /* 134B38 00233BB8 2DA8C000 */  daddu      $s5, $a2, $zero
    /* 134B3C 00233BBC 2D204002 */  daddu      $a0, $s2, $zero
    /* 134B40 00233BC0 2D280000 */  daddu      $a1, $zero, $zero
    /* 134B44 00233BC4 4000A3AF */  sw         $v1, 0x40($sp)
    /* 134B48 00233BC8 7000A0FF */  sd         $zero, 0x70($sp)
    /* 134B4C 00233BCC 4C00A3AF */  sw         $v1, 0x4C($sp)
    /* 134B50 00233BD0 4800A3AF */  sw         $v1, 0x48($sp)
    /* 134B54 00233BD4 BE36080C */  jal        func_0020DAF8
    /* 134B58 00233BD8 4400A3AF */   sw        $v1, 0x44($sp)
    /* 134B5C 00233BDC 1600023C */  lui        $v0, %hi(D_0015F6E8)
    /* 134B60 00233BE0 E8F6428C */  lw         $v0, %lo(D_0015F6E8)($v0)
    /* 134B64 00233BE4 16004054 */  bnel       $v0, $zero, .L00233C40
    /* 134B68 00233BE8 01001124 */   addiu     $s1, $zero, 0x1
    /* 134B6C 00233BEC 1800023C */  lui        $v0, %hi(D_00187040)
    /* 134B70 00233BF0 100040C6 */  lwc1       $f0, 0x10($s2)
    /* 134B74 00233BF4 40705024 */  addiu      $s0, $v0, %lo(D_00187040)
    /* 134B78 00233BF8 8041013C */  lui        $at, (0x41800000 >> 16)
    /* 134B7C 00233BFC 00A08144 */  mtc1       $at, $f20
    /* 134B80 00233C00 40010CC6 */  lwc1       $f12, 0x140($s0)
    /* 134B84 00233C04 E2E6070C */  jal        func_001F9B88
    /* 134B88 00233C08 01630046 */   sub.s     $f12, $f12, $f0
    /* 134B8C 00233C0C 34001446 */  c.lt.s     $f0, $f20
    /* 134B90 00233C10 00000000 */  nop
    /* 134B94 00233C14 0C000045 */  bc1f       .L00233C48
    /* 134B98 00233C18 E889838F */   lw        $v1, -0x7618($gp)
    /* 134B9C 00233C1C 440100C6 */  lwc1       $f0, 0x144($s0)
    /* 134BA0 00233C20 14004CC6 */  lwc1       $f12, 0x14($s2)
    /* 134BA4 00233C24 E2E6070C */  jal        func_001F9B88
    /* 134BA8 00233C28 01030C46 */   sub.s     $f12, $f0, $f12
    /* 134BAC 00233C2C 34001446 */  c.lt.s     $f0, $f20
    /* 134BB0 00233C30 00000000 */  nop
    /* 134BB4 00233C34 04000045 */  bc1f       .L00233C48
    /* 134BB8 00233C38 E889838F */   lw        $v1, -0x7618($gp)
    /* 134BBC 00233C3C 01001124 */  addiu      $s1, $zero, 0x1
.align 2
  .L00233C40:
    /* 134BC0 00233C40 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* 134BC4 00233C44 E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
.align 2
  .L00233C48:
    /* 134BC8 00233C48 06000224 */  addiu      $v0, $zero, 0x6
    /* 134BCC 00233C4C 04006214 */  bne        $v1, $v0, .L00233C60
    /* 134BD0 00233C50 1400033C */   lui       $v1, %hi(D_0013E150)
    /* 134BD4 00233C54 50E1628C */  lw         $v0, %lo(D_0013E150)($v1)
    /* 134BD8 00233C58 04004238 */  xori       $v0, $v0, 0x4
    /* 134BDC 00233C5C 0A880200 */  movz       $s1, $zero, $v0
.align 2
  .L00233C60:
    /* 134BE0 00233C60 06002016 */  bnez       $s1, .L00233C7C
    /* 134BE4 00233C64 01000224 */   addiu     $v0, $zero, 0x1
    /* 134BE8 00233C68 A498828F */  lw         $v0, -0x675C($gp)
    /* 134BEC 00233C6C 01000324 */  addiu      $v1, $zero, 0x1
    /* 134BF0 00233C70 76004314 */  bne        $v0, $v1, .L00233E4C
    /* 134BF4 00233C74 A898828F */   lw        $v0, -0x6758($gp)
    /* 134BF8 00233C78 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L00233C7C:
    /* 134BFC 00233C7C AC988427 */  addiu      $a0, $gp, -0x6754
    /* 134C00 00233C80 42E6070C */  jal        func_001F9908
    /* 134C04 00233C84 A89882AF */   sw        $v0, -0x6758($gp)
    /* 134C08 00233C88 22EA070C */  jal        func_001FA888
    /* 134C0C 00233C8C AC98848F */   lw        $a0, -0x6754($gp)
    /* 134C10 00233C90 06050046 */  mov.s      $f20, $f0
    /* 134C14 00233C94 30E6070C */  jal        func_001F98C0
    /* 134C18 00233C98 3C000424 */   addiu     $a0, $zero, 0x3C
    /* 134C1C 00233C9C 22EA070C */  jal        func_001FA888
    /* 134C20 00233CA0 2D204000 */   daddu     $a0, $v0, $zero
    /* 134C24 00233CA4 0801A28F */  lw         $v0, 0x108($sp)
    /* 134C28 00233CA8 61004018 */  blez       $v0, .L00233E30
    /* 134C2C 00233CAC 43A50046 */   div.s     $f21, $f20, $f0
    /* 134C30 00233CB0 0C01B5AF */  sw         $s5, 0x10C($sp)
    /* 134C34 00233CB4 1E00023C */  lui        $v0, %hi(D_001DC870)
    /* 134C38 00233CB8 1E00033C */  lui        $v1, %hi(D_001DCED0)
    /* 134C3C 00233CBC 1E00043C */  lui        $a0, %hi(D_001DD200)
    /* 134C40 00233CC0 2DA86002 */  daddu      $s5, $s3, $zero
    /* 134C44 00233CC4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 134C48 00233CC8 00B08144 */  mtc1       $at, $f22
    /* 134C4C 00233CCC 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 134C50 00233CD0 00A08144 */  mtc1       $at, $f20
    /* 134C54 00233CD4 D0CE7424 */  addiu      $s4, $v1, %lo(D_001DCED0)
    /* 134C58 00233CD8 0801B18F */  lw         $s1, 0x108($sp)
    /* 134C5C 00233CDC 00D29E24 */  addiu      $fp, $a0, %lo(D_001DD200)
    /* 134C60 00233CE0 70C85724 */  addiu      $s7, $v0, %lo(D_001DC870)
    /* 134C64 00233CE4 F000B327 */  addiu      $s3, $sp, 0xF0
    /* 134C68 00233CE8 D000B227 */  addiu      $s2, $sp, 0xD0
    /* 134C6C 00233CEC E000B027 */  addiu      $s0, $sp, 0xE0
.align 2
  .L00233CF0:
    /* 134C70 00233CF0 0C01A68F */  lw         $a2, 0x10C($sp)
    /* 134C74 00233CF4 2D20E002 */  daddu      $a0, $s7, $zero
    /* 134C78 00233CF8 BAE7070C */  jal        func_001F9EE8
    /* 134C7C 00233CFC 2D28A002 */   daddu     $a1, $s5, $zero
    /* 134C80 00233D00 1800033C */  lui        $v1, %hi(D_00187180)
    /* 134C84 00233D04 2D206002 */  daddu      $a0, $s3, $zero
    /* 134C88 00233D08 80716624 */  addiu      $a2, $v1, %lo(D_00187180)
    /* 134C8C 00233D0C FCE6070C */  jal        func_001F9BF0
    /* 134C90 00233D10 2D28E002 */   daddu     $a1, $s7, $zero
    /* 134C94 00233D14 06B30046 */  mov.s      $f12, $f22
    /* 134C98 00233D18 2D206002 */  daddu      $a0, $s3, $zero
    /* 134C9C 00233D1C 70E7070C */  jal        func_001F9DC0
    /* 134CA0 00233D20 2D286002 */   daddu     $a1, $s3, $zero
    /* 134CA4 00233D24 0C01A68F */  lw         $a2, 0x10C($sp)
    /* 134CA8 00233D28 2D204002 */  daddu      $a0, $s2, $zero
    /* 134CAC 00233D2C BAE7070C */  jal        func_001F9EE8
    /* 134CB0 00233D30 2D28C002 */   daddu     $a1, $s6, $zero
    /* 134CB4 00233D34 CC3D013C */  lui        $at, (0x3DCCCCCD >> 16)
    /* 134CB8 00233D38 CDCC2134 */  ori        $at, $at, (0x3DCCCCCD & 0xFFFF)
    /* 134CBC 00233D3C 00608144 */  mtc1       $at, $f12
    /* 134CC0 00233D40 2D204002 */  daddu      $a0, $s2, $zero
    /* 134CC4 00233D44 70E7070C */  jal        func_001F9DC0
    /* 134CC8 00233D48 2D284002 */   daddu     $a1, $s2, $zero
    /* 134CCC 00233D4C 2D204002 */  daddu      $a0, $s2, $zero
    /* 134CD0 00233D50 1EE7070C */  jal        func_001F9C78
    /* 134CD4 00233D54 2D286002 */   daddu     $a1, $s3, $zero
    /* 134CD8 00233D58 00030046 */  add.s      $f12, $f0, $f0
    /* 134CDC 00233D5C 2D200002 */  daddu      $a0, $s0, $zero
    /* 134CE0 00233D60 0CE7070C */  jal        func_001F9C30
    /* 134CE4 00233D64 2D284002 */   daddu     $a1, $s2, $zero
    /* 134CE8 00233D68 2D300002 */  daddu      $a2, $s0, $zero
    /* 134CEC 00233D6C 2D200002 */  daddu      $a0, $s0, $zero
    /* 134CF0 00233D70 FCE6070C */  jal        func_001F9BF0
    /* 134CF4 00233D74 2D286002 */   daddu     $a1, $s3, $zero
    /* 134CF8 00233D78 2D200002 */  daddu      $a0, $s0, $zero
    /* 134CFC 00233D7C 2D280002 */  daddu      $a1, $s0, $zero
    /* 134D00 00233D80 70E7070C */  jal        func_001F9DC0
    /* 134D04 00233D84 06B30046 */   mov.s     $f12, $f22
    /* 134D08 00233D88 E800A0C7 */  lwc1       $f0, 0xE8($sp)
    /* 134D0C 00233D8C 00001646 */  add.s      $f0, $f0, $f22
    /* 134D10 00233D90 00030046 */  add.s      $f12, $f0, $f0
    /* 134D14 00233D94 D4E6070C */  jal        func_001F9B50
    /* 134D18 00233D98 E800A0E7 */   swc1      $f0, 0xE8($sp)
    /* 134D1C 00233D9C A498838F */  lw         $v1, -0x675C($gp)
    /* 134D20 00233DA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 134D24 00233DA4 04006210 */  beq        $v1, $v0, .L00233DB8
    /* 134D28 00233DA8 00010046 */   add.s     $f4, $f0, $f0
    /* 134D2C 00233DAC AC98828F */  lw         $v0, -0x6754($gp)
    /* 134D30 00233DB0 09004014 */  bnez       $v0, .L00233DD8
    /* 134D34 00233DB4 E000A2C7 */   lwc1      $f2, 0xE0($sp)
.align 2
  .L00233DB8:
    /* 134D38 00233DB8 E000A0C7 */  lwc1       $f0, 0xE0($sp)
    /* 134D3C 00233DBC E400A1C7 */  lwc1       $f1, 0xE4($sp)
    /* 134D40 00233DC0 03000446 */  div.s      $f0, $f0, $f4
    /* 134D44 00233DC4 43080446 */  div.s      $f1, $f1, $f4
    /* 134D48 00233DC8 00001446 */  add.s      $f0, $f0, $f20
    /* 134D4C 00233DCC 40081446 */  add.s      $f1, $f1, $f20
    /* 134D50 00233DD0 0F000010 */  b          .L00233E10
    /* 134D54 00233DD4 000080E6 */   swc1      $f0, 0x0($s4)
.align 2
  .L00233DD8:
    /* 134D58 00233DD8 0000C0C7 */  lwc1       $f0, 0x0($fp)
    /* 134D5C 00233DDC 83100446 */  div.s      $f2, $f2, $f4
    /* 134D60 00233DE0 E400A3C7 */  lwc1       $f3, 0xE4($sp)
    /* 134D64 00233DE4 0400C1C7 */  lwc1       $f1, 0x4($fp)
    /* 134D68 00233DE8 C3180446 */  div.s      $f3, $f3, $f4
    /* 134D6C 00233DEC 80101446 */  add.s      $f2, $f2, $f20
    /* 134D70 00233DF0 01000246 */  sub.s      $f0, $f0, $f2
    /* 134D74 00233DF4 02001546 */  mul.s      $f0, $f0, $f21
    /* 134D78 00233DF8 00100046 */  add.s      $f0, $f2, $f0
    /* 134D7C 00233DFC 80181446 */  add.s      $f2, $f3, $f20
    /* 134D80 00233E00 000080E6 */  swc1       $f0, 0x0($s4)
    /* 134D84 00233E04 41080246 */  sub.s      $f1, $f1, $f2
    /* 134D88 00233E08 42081546 */  mul.s      $f1, $f1, $f21
    /* 134D8C 00233E0C 40100146 */  add.s      $f1, $f2, $f1
.align 2
  .L00233E10:
    /* 134D90 00233E10 040081E6 */  swc1       $f1, 0x4($s4)
    /* 134D94 00233E14 08009426 */  addiu      $s4, $s4, 0x8
    /* 134D98 00233E18 0800DE27 */  addiu      $fp, $fp, 0x8
    /* 134D9C 00233E1C 1000D626 */  addiu      $s6, $s6, 0x10
    /* 134DA0 00233E20 1000B526 */  addiu      $s5, $s5, 0x10
    /* 134DA4 00233E24 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 134DA8 00233E28 B1FF2016 */  bnez       $s1, .L00233CF0
    /* 134DAC 00233E2C 1000F726 */   addiu     $s7, $s7, 0x10
.align 2
  .L00233E30:
    /* 134DB0 00233E30 A498838F */  lw         $v1, -0x675C($gp)
    /* 134DB4 00233E34 01000224 */  addiu      $v0, $zero, 0x1
    /* 134DB8 00233E38 33006214 */  bne        $v1, $v0, .L00233F08
    /* 134DBC 00233E3C 0401A28F */   lw        $v0, 0x104($sp)
    /* 134DC0 00233E40 02000224 */  addiu      $v0, $zero, 0x2
    /* 134DC4 00233E44 2F000010 */  b          .L00233F04
    /* 134DC8 00233E48 A49882AF */   sw        $v0, -0x675C($gp)
.align 2
  .L00233E4C:
    /* 134DCC 00233E4C 1C004314 */  bne        $v0, $v1, .L00233EC0
    /* 134DD0 00233E50 0801A38F */   lw        $v1, 0x108($sp)
    /* 134DD4 00233E54 0801A28F */  lw         $v0, 0x108($sp)
    /* 134DD8 00233E58 27004018 */  blez       $v0, .L00233EF8
    /* 134DDC 00233E5C A89880AF */   sw        $zero, -0x6758($gp)
    /* 134DE0 00233E60 1E00023C */  lui        $v0, %hi(D_001DD200)
    /* 134DE4 00233E64 1E00043C */  lui        $a0, %hi(D_001DCED0)
    /* 134DE8 00233E68 1E00033C */  lui        $v1, %hi(D_001DC870)
    /* 134DEC 00233E6C 0801B18F */  lw         $s1, 0x108($sp)
    /* 134DF0 00233E70 70C87424 */  addiu      $s4, $v1, %lo(D_001DC870)
    /* 134DF4 00233E74 00D25224 */  addiu      $s2, $v0, %lo(D_001DD200)
    /* 134DF8 00233E78 D0CE9024 */  addiu      $s0, $a0, %lo(D_001DCED0)
    /* 134DFC 00233E7C 00000000 */  nop
.align 2
  .L00233E80:
    /* 134E00 00233E80 000000C6 */  lwc1       $f0, 0x0($s0)
    /* 134E04 00233E84 2D208002 */  daddu      $a0, $s4, $zero
    /* 134E08 00233E88 040001C6 */  lwc1       $f1, 0x4($s0)
    /* 134E0C 00233E8C 2D286002 */  daddu      $a1, $s3, $zero
    /* 134E10 00233E90 000040E6 */  swc1       $f0, 0x0($s2)
    /* 134E14 00233E94 2D30A002 */  daddu      $a2, $s5, $zero
    /* 134E18 00233E98 040041E6 */  swc1       $f1, 0x4($s2)
    /* 134E1C 00233E9C BAE7070C */  jal        func_001F9EE8
    /* 134E20 00233EA0 10007326 */   addiu     $s3, $s3, 0x10
    /* 134E24 00233EA4 10009426 */  addiu      $s4, $s4, 0x10
    /* 134E28 00233EA8 08005226 */  addiu      $s2, $s2, 0x8
    /* 134E2C 00233EAC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 134E30 00233EB0 F3FF2016 */  bnez       $s1, .L00233E80
    /* 134E34 00233EB4 08001026 */   addiu     $s0, $s0, 0x8
    /* 134E38 00233EB8 0F000010 */  b          .L00233EF8
    /* 134E3C 00233EBC 00000000 */   nop
.align 2
  .L00233EC0:
    /* 134E40 00233EC0 0D006018 */  blez       $v1, .L00233EF8
    /* 134E44 00233EC4 1E00023C */   lui       $v0, %hi(D_001DC870)
    /* 134E48 00233EC8 2D806002 */  daddu      $s0, $s3, $zero
    /* 134E4C 00233ECC 70C85224 */  addiu      $s2, $v0, %lo(D_001DC870)
    /* 134E50 00233ED0 2D886000 */  daddu      $s1, $v1, $zero
    /* 134E54 00233ED4 00000000 */  nop
.align 2
  .L00233ED8:
    /* 134E58 00233ED8 2D204002 */  daddu      $a0, $s2, $zero
    /* 134E5C 00233EDC 2D280002 */  daddu      $a1, $s0, $zero
    /* 134E60 00233EE0 2D30A002 */  daddu      $a2, $s5, $zero
    /* 134E64 00233EE4 BAE7070C */  jal        func_001F9EE8
    /* 134E68 00233EE8 10001026 */   addiu     $s0, $s0, 0x10
    /* 134E6C 00233EEC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 134E70 00233EF0 F9FF2016 */  bnez       $s1, .L00233ED8
    /* 134E74 00233EF4 10005226 */   addiu     $s2, $s2, 0x10
.align 2
  .L00233EF8:
    /* 134E78 00233EF8 30E6070C */  jal        func_001F98C0
    /* 134E7C 00233EFC 3C000424 */   addiu     $a0, $zero, 0x3C
    /* 134E80 00233F00 AC9882AF */  sw         $v0, -0x6754($gp)
.align 2
  .L00233F04:
    /* 134E84 00233F04 0401A28F */  lw         $v0, 0x104($sp)
.align 2
  .L00233F08:
    /* 134E88 00233F08 2C004018 */  blez       $v0, .L00233FBC
    /* 134E8C 00233F0C 2D880000 */   daddu     $s1, $zero, $zero
    /* 134E90 00233F10 1E00023C */  lui        $v0, %hi(D_001DCED0)
    /* 134E94 00233F14 1E00033C */  lui        $v1, %hi(D_001DC870)
    /* 134E98 00233F18 D0CE5224 */  addiu      $s2, $v0, %lo(D_001DCED0)
    /* 134E9C 00233F1C 70C87424 */  addiu      $s4, $v1, %lo(D_001DC870)
    /* 134EA0 00233F20 04005326 */  addiu      $s3, $s2, 0x4
    /* 134EA4 00233F24 5000B627 */  addiu      $s6, $sp, 0x50
    /* 134EA8 00233F28 5400B527 */  addiu      $s5, $sp, 0x54
    /* 134EAC 00233F2C 0001A38F */  lw         $v1, 0x100($sp)
.align 2
  .L00233F30:
    /* 134EB0 00233F30 00111100 */  sll        $v0, $s1, 4
    /* 134EB4 00233F34 01003026 */  addiu      $s0, $s1, 0x1
    /* 134EB8 00233F38 2D38A002 */  daddu      $a3, $s5, $zero
    /* 134EBC 00233F3C 21404300 */  addu       $t0, $v0, $v1
    /* 134EC0 00233F40 2D30C002 */  daddu      $a2, $s6, $zero
    /* 134EC4 00233F44 2D28A003 */  daddu      $a1, $sp, $zero
    /* 134EC8 00233F48 03000924 */  addiu      $t1, $zero, 0x3
    /* 134ECC 00233F4C 00000000 */  nop
.align 2
  .L00233F50:
    /* 134ED0 00233F50 00000485 */  lh         $a0, 0x0($t0)
    /* 134ED4 00233F54 00190400 */  sll        $v1, $a0, 4
    /* 134ED8 00233F58 21187400 */  addu       $v1, $v1, $s4
    /* 134EDC 00233F5C 00006278 */  lq         $v0, 0x0($v1)
    /* 134EE0 00233F60 0000A27C */  sq         $v0, 0x0($a1)
    /* 134EE4 00233F64 C0200400 */  sll        $a0, $a0, 3
    /* 134EE8 00233F68 1000A524 */  addiu      $a1, $a1, 0x10
    /* 134EEC 00233F6C 21109200 */  addu       $v0, $a0, $s2
    /* 134EF0 00233F70 04000825 */  addiu      $t0, $t0, 0x4
    /* 134EF4 00233F74 000041C4 */  lwc1       $f1, 0x0($v0)
    /* 134EF8 00233F78 21209300 */  addu       $a0, $a0, $s3
    /* 134EFC 00233F7C 000080C4 */  lwc1       $f0, 0x0($a0)
    /* 134F00 00233F80 FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 134F04 00233F84 0000C1E4 */  swc1       $f1, 0x0($a2)
    /* 134F08 00233F88 0000E0E4 */  swc1       $f0, 0x0($a3)
    /* 134F0C 00233F8C 0800C624 */  addiu      $a2, $a2, 0x8
    /* 134F10 00233F90 EFFF2105 */  bgez       $t1, .L00233F50
    /* 134F14 00233F94 0800E724 */   addiu     $a3, $a3, 0x8
    /* 134F18 00233F98 2D20A003 */  daddu      $a0, $sp, $zero
    /* 134F1C 00233F9C 2D280000 */  daddu      $a1, $zero, $zero
    /* 134F20 00233FA0 2D300000 */  daddu      $a2, $zero, $zero
    /* 134F24 00233FA4 BEDF070C */  jal        func_001F7EF8
    /* 134F28 00233FA8 2D880002 */   daddu     $s1, $s0, $zero
    /* 134F2C 00233FAC 0401A38F */  lw         $v1, 0x104($sp)
    /* 134F30 00233FB0 2A102302 */  slt        $v0, $s1, $v1
    /* 134F34 00233FB4 DEFF4014 */  bnez       $v0, .L00233F30
    /* 134F38 00233FB8 0001A38F */   lw        $v1, 0x100($sp)
.align 2
  .L00233FBC:
    /* 134F3C 00233FBC A001BF7B */  lq         $ra, 0x1A0($sp)
    /* 134F40 00233FC0 9001BE7B */  lq         $fp, 0x190($sp)
    /* 134F44 00233FC4 8001B77B */  lq         $s7, 0x180($sp)
    /* 134F48 00233FC8 7001B67B */  lq         $s6, 0x170($sp)
    /* 134F4C 00233FCC 6001B57B */  lq         $s5, 0x160($sp)
    /* 134F50 00233FD0 5001B47B */  lq         $s4, 0x150($sp)
    /* 134F54 00233FD4 4001B37B */  lq         $s3, 0x140($sp)
    /* 134F58 00233FD8 3001B27B */  lq         $s2, 0x130($sp)
    /* 134F5C 00233FDC 2001B17B */  lq         $s1, 0x120($sp)
    /* 134F60 00233FE0 1001B07B */  lq         $s0, 0x110($sp)
    /* 134F64 00233FE4 C001B6C7 */  lwc1       $f22, 0x1C0($sp)
    /* 134F68 00233FE8 B801B5C7 */  lwc1       $f21, 0x1B8($sp)
    /* 134F6C 00233FEC B001B4C7 */  lwc1       $f20, 0x1B0($sp)
    /* 134F70 00233FF0 0800E003 */  jr         $ra
    /* 134F74 00233FF4 D001BD27 */   addiu     $sp, $sp, 0x1D0
endlabel func_00233AB8
