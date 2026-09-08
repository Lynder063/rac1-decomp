.align 3
nonmatching func_00229E50, 0xB0

glabel func_00229E50
    /* 12ADD0 00229E50 1600023C */  lui        $v0, %hi(D_00161000)
    /* 12ADD4 00229E54 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 12ADD8 00229E58 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 12ADDC 00229E5C 1600033C */  lui        $v1, %hi(D_0015EF78)
    /* 12ADE0 00229E60 78EF638C */  lw         $v1, %lo(D_0015EF78)($v1)
    /* 12ADE4 00229E64 1600043C */  lui        $a0, %hi(D_001604B0)
    /* 12ADE8 00229E68 1600013C */  lui        $at, %hi(D_001604F0)
    /* 12ADEC 00229E6C F00422AC */  sw         $v0, %lo(D_001604F0)($at)
    /* 12ADF0 00229E70 B0048424 */  addiu      $a0, $a0, %lo(D_001604B0)
    /* 12ADF4 00229E74 10004224 */  addiu      $v0, $v0, 0x10
    /* 12ADF8 00229E78 1600013C */  lui        $at, %hi(D_0015EF74)
    /* 12ADFC 00229E7C 74EF23AC */  sw         $v1, %lo(D_0015EF74)($at)
    /* 12AE00 00229E80 1600013C */  lui        $at, %hi(D_00161000)
    /* 12AE04 00229E84 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* 12AE08 00229E88 01000524 */  addiu      $a1, $zero, 0x1
    /* 12AE0C 00229E8C 1000BF7F */  sq         $ra, 0x10($sp)
    /* 12AE10 00229E90 58C9070C */  jal        func_001F2560
    /* 12AE14 00229E94 0000B07F */   sq        $s0, 0x0($sp)
    /* 12AE18 00229E98 1900023C */  lui        $v0, %hi(D_0018A3D0)
    /* 12AE1C 00229E9C D0A3438C */  lw         $v1, %lo(D_0018A3D0)($v0)
    /* 12AE20 00229EA0 0A006010 */  beqz       $v1, .L00229ECC
    /* 12AE24 00229EA4 1600103C */   lui       $s0, %hi(D_001604C0)
    /* 12AE28 00229EA8 6063040C */  jal        func_00118D80
    /* 12AE2C 00229EAC 2D200000 */   daddu     $a0, $zero, $zero
    /* 12AE30 00229EB0 C0A7080C */  jal        func_00229F00
    /* 12AE34 00229EB4 1600103C */   lui       $s0, %hi(D_001604C0)
    /* 12AE38 00229EB8 1E00043C */  lui        $a0, %hi(D_001D9240)
    /* 12AE3C 00229EBC 00320524 */  addiu      $a1, $zero, 0x3200
    /* 12AE40 00229EC0 40928424 */  addiu      $a0, $a0, %lo(D_001D9240)
    /* 12AE44 00229EC4 BCE6070C */  jal        func_001F9AF0
    /* 12AE48 00229EC8 40000624 */   addiu     $a2, $zero, 0x40
.align 2
  .L00229ECC:
    /* 12AE4C 00229ECC 07000524 */  addiu      $a1, $zero, 0x7
    /* 12AE50 00229ED0 C0041026 */  addiu      $s0, $s0, %lo(D_001604C0)
    /* 12AE54 00229ED4 58C9070C */  jal        func_001F2560
    /* 12AE58 00229ED8 2D200002 */   daddu     $a0, $s0, $zero
    /* 12AE5C 00229EDC 02A7080C */  jal        func_00229C08
    /* 12AE60 00229EE0 00000000 */   nop
    /* 12AE64 00229EE4 2D200002 */  daddu      $a0, $s0, $zero
    /* 12AE68 00229EE8 56C9070C */  jal        func_001F2558
    /* 12AE6C 00229EEC 07000524 */   addiu     $a1, $zero, 0x7
    /* 12AE70 00229EF0 1000BF7B */  lq         $ra, 0x10($sp)
    /* 12AE74 00229EF4 0000B07B */  lq         $s0, 0x0($sp)
    /* 12AE78 00229EF8 0800E003 */  jr         $ra
    /* 12AE7C 00229EFC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00229E50
