.align 3
nonmatching func_00223E40, 0x190

glabel func_00223E40
    /* 124DC0 00223E40 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 124DC4 00223E44 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 124DC8 00223E48 3000B37F */  sq         $s3, 0x30($sp)
    /* 124DCC 00223E4C 1400033C */  lui        $v1, %hi(D_0013D390)
    /* 124DD0 00223E50 2000B27F */  sq         $s2, 0x20($sp)
    /* 124DD4 00223E54 1C000524 */  addiu      $a1, $zero, 0x1C
    /* 124DD8 00223E58 0000B07F */  sq         $s0, 0x0($sp)
    /* 124DDC 00223E5C 705F5224 */  addiu      $s2, $v0, %lo(D_001D5F70)
    /* 124DE0 00223E60 4000BF7F */  sq         $ra, 0x40($sp)
    /* 124DE4 00223E64 90D37024 */  addiu      $s0, $v1, %lo(D_0013D390)
    /* 124DE8 00223E68 1000B17F */  sq         $s1, 0x10($sp)
    /* 124DEC 00223E6C 2D988000 */  daddu      $s3, $a0, $zero
    /* 124DF0 00223E70 2D200000 */  daddu      $a0, $zero, $zero
    /* 124DF4 00223E74 0400428E */  lw         $v0, 0x4($s2)
    /* 124DF8 00223E78 4000438C */  lw         $v1, 0x40($v0)
    /* 124DFC 00223E7C 4000628C */  lw         $v0, 0x40($v1)
    /* 124E00 00223E80 18104500 */  mult       $v0, $v0, $a1
    /* 124E04 00223E84 21100202 */  addu       $v0, $s0, $v0
    /* 124E08 00223E88 8CD1070C */  jal        func_001F4630
    /* 124E0C 00223E8C 2000518C */   lw        $s1, 0x20($v0)
    /* 124E10 00223E90 DC00028E */  lw         $v0, 0xDC($s0)
    /* 124E14 00223E94 03004228 */  slti       $v0, $v0, 0x3
    /* 124E18 00223E98 43004010 */  beqz       $v0, .L00223FA8
    /* 124E1C 00223E9C 00000000 */   nop
    /* 124E20 00223EA0 E400028E */  lw         $v0, 0xE4($s0)
    /* 124E24 00223EA4 40004104 */  bgez       $v0, .L00223FA8
    /* 124E28 00223EA8 00000000 */   nop
    /* 124E2C 00223EAC 5401428E */  lw         $v0, 0x154($s2)
    /* 124E30 00223EB0 0B004228 */  slti       $v0, $v0, 0xB
    /* 124E34 00223EB4 3C004014 */  bnez       $v0, .L00223FA8
    /* 124E38 00223EB8 02000224 */   addiu     $v0, $zero, 0x2
    /* 124E3C 00223EBC 0800038E */  lw         $v1, 0x8($s0)
    /* 124E40 00223EC0 39006214 */  bne        $v1, $v0, .L00223FA8
    /* 124E44 00223EC4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 124E48 00223EC8 16002216 */  bne        $s1, $v0, .L00223F24
    /* 124E4C 00223ECC 0C001224 */   addiu     $s2, $zero, 0xC
    /* 124E50 00223ED0 2400708E */  lw         $s0, 0x24($s3)
    /* 124E54 00223ED4 1C520424 */  addiu      $a0, $zero, 0x521C
    /* 124E58 00223ED8 2000718E */  lw         $s1, 0x20($s3)
    /* 124E5C 00223EDC C2171000 */  srl        $v0, $s0, 31
    /* 124E60 00223EE0 21800202 */  addu       $s0, $s0, $v0
    /* 124E64 00223EE4 C21F1100 */  srl        $v1, $s1, 31
    /* 124E68 00223EE8 21882302 */  addu       $s1, $s1, $v1
    /* 124E6C 00223EEC 43801000 */  sra        $s0, $s0, 1
    /* 124E70 00223EF0 43881100 */  sra        $s1, $s1, 1
    /* 124E74 00223EF4 50F9070C */  jal        func_001FE540
    /* 124E78 00223EF8 F8FF1026 */   addiu     $s0, $s0, -0x8
    /* 124E7C 00223EFC 2D202002 */  daddu      $a0, $s1, $zero
    /* 124E80 00223F00 2D280002 */  daddu      $a1, $s0, $zero
    /* 124E84 00223F04 2D384000 */  daddu      $a3, $v0, $zero
    /* 124E88 00223F08 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 124E8C 00223F0C 38340600 */  dsll       $a2, $a2, 16
    /* 124E90 00223F10 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 124E94 00223F14 AADB070C */  jal        func_001F6EA8
    /* 124E98 00223F18 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 124E9C 00223F1C 22000010 */  b          .L00223FA8
    /* 124EA0 00223F20 00000000 */   nop
.align 2
  .L00223F24:
    /* 124EA4 00223F24 2000708E */  lw         $s0, 0x20($s3)
    /* 124EA8 00223F28 18903202 */  mult       $s2, $s1, $s2
    /* 124EAC 00223F2C C2171000 */  srl        $v0, $s0, 31
    /* 124EB0 00223F30 1E00113C */  lui        $s1, %hi(D_001DE0C0)
    /* 124EB4 00223F34 C0E03126 */  addiu      $s1, $s1, %lo(D_001DE0C0)
    /* 124EB8 00223F38 21800202 */  addu       $s0, $s0, $v0
    /* 124EBC 00223F3C 43801000 */  sra        $s0, $s0, 1
    /* 124EC0 00223F40 21105102 */  addu       $v0, $s2, $s1
    /* 124EC4 00223F44 50F9070C */  jal        func_001FE540
    /* 124EC8 00223F48 0000448C */   lw        $a0, 0x0($v0)
    /* 124ECC 00223F4C 2D384000 */  daddu      $a3, $v0, $zero
    /* 124ED0 00223F50 2D200002 */  daddu      $a0, $s0, $zero
    /* 124ED4 00223F54 04000524 */  addiu      $a1, $zero, 0x4
    /* 124ED8 00223F58 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 124EDC 00223F5C 38340600 */  dsll       $a2, $a2, 16
    /* 124EE0 00223F60 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 124EE4 00223F64 AADB070C */  jal        func_001F6EA8
    /* 124EE8 00223F68 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 124EEC 00223F6C 2000708E */  lw         $s0, 0x20($s3)
    /* 124EF0 00223F70 21883202 */  addu       $s1, $s1, $s2
    /* 124EF4 00223F74 0400248E */  lw         $a0, 0x4($s1)
    /* 124EF8 00223F78 C2171000 */  srl        $v0, $s0, 31
    /* 124EFC 00223F7C 21800202 */  addu       $s0, $s0, $v0
    /* 124F00 00223F80 50F9070C */  jal        func_001FE540
    /* 124F04 00223F84 43801000 */   sra       $s0, $s0, 1
    /* 124F08 00223F88 2D200002 */  daddu      $a0, $s0, $zero
    /* 124F0C 00223F8C 2D384000 */  daddu      $a3, $v0, $zero
    /* 124F10 00223F90 14000524 */  addiu      $a1, $zero, 0x14
    /* 124F14 00223F94 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 124F18 00223F98 38340600 */  dsll       $a2, $a2, 16
    /* 124F1C 00223F9C 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 124F20 00223FA0 AADB070C */  jal        func_001F6EA8
    /* 124F24 00223FA4 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L00223FA8:
    /* 124F28 00223FA8 D2D1070C */  jal        func_001F4748
    /* 124F2C 00223FAC 00000000 */   nop
    /* 124F30 00223FB0 4000BF7B */  lq         $ra, 0x40($sp)
    /* 124F34 00223FB4 02000224 */  addiu      $v0, $zero, 0x2
    /* 124F38 00223FB8 3000B37B */  lq         $s3, 0x30($sp)
    /* 124F3C 00223FBC 2000B27B */  lq         $s2, 0x20($sp)
    /* 124F40 00223FC0 1000B17B */  lq         $s1, 0x10($sp)
    /* 124F44 00223FC4 0000B07B */  lq         $s0, 0x0($sp)
    /* 124F48 00223FC8 0800E003 */  jr         $ra
    /* 124F4C 00223FCC 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00223E40
