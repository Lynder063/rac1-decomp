.align 3
nonmatching func_00124DF0, 0xF0

glabel func_00124DF0
    /* 25D70 00124DF0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 25D74 00124DF4 1600023C */  lui        $v0, %hi(D_0015B640)
    /* 25D78 00124DF8 2000B1FF */  sd         $s1, 0x20($sp)
    /* 25D7C 00124DFC 40B64224 */  addiu      $v0, $v0, %lo(D_0015B640)
    /* 25D80 00124E00 2D888000 */  daddu      $s1, $a0, $zero
    /* 25D84 00124E04 3000B2FF */  sd         $s2, 0x30($sp)
    /* 25D88 00124E08 30030424 */  addiu      $a0, $zero, 0x330
    /* 25D8C 00124E0C 4000BFFF */  sd         $ra, 0x40($sp)
    /* 25D90 00124E10 18202402 */  mult       $a0, $s1, $a0
    /* 25D94 00124E14 1000B0FF */  sd         $s0, 0x10($sp)
    /* 25D98 00124E18 21104400 */  addu       $v0, $v0, $a0
    /* 25D9C 00124E1C 0400438C */  lw         $v1, 0x4($v0)
    /* 25DA0 00124E20 07006014 */  bnez       $v1, .L00124E40
    /* 25DA4 00124E24 2D90A000 */   daddu     $s2, $a1, $zero
    /* 25DA8 00124E28 0894040C */  jal        func_00125020
    /* 25DAC 00124E2C 2D202002 */   daddu     $a0, $s1, $zero
    /* 25DB0 00124E30 04004104 */  bgez       $v0, .L00124E44
    /* 25DB4 00124E34 00C00224 */   addiu     $v0, $zero, -0x4000
    /* 25DB8 00124E38 23000010 */  b          .L00124EC8
    /* 25DBC 00124E3C FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00124E40:
    /* 25DC0 00124E40 00C00224 */  addiu      $v0, $zero, -0x4000
.align 2
  .L00124E44:
    /* 25DC4 00124E44 02000324 */  addiu      $v1, $zero, 0x2
    /* 25DC8 00124E48 24800202 */  and        $s0, $s0, $v0
    /* 25DCC 00124E4C 00C00434 */  ori        $a0, $zero, 0xC000
    /* 25DD0 00124E50 25800302 */  or         $s0, $s0, $v1
    /* 25DD4 00124E54 00FF023C */  lui        $v0, (0xFF00FFFF >> 16)
    /* 25DD8 00124E58 FFFF4234 */  ori        $v0, $v0, (0xFF00FFFF & 0xFFFF)
    /* 25DDC 00124E5C 25800402 */  or         $s0, $s0, $a0
    /* 25DE0 00124E60 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 25DE4 00124E64 24800202 */  and        $s0, $s0, $v0
    /* 25DE8 00124E68 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 25DEC 00124E6C 38240400 */  dsll       $a0, $a0, 16
    /* 25DF0 00124E70 FF008434 */  ori        $a0, $a0, 0xFF
    /* 25DF4 00124E74 38240400 */  dsll       $a0, $a0, 16
    /* 25DF8 00124E78 FFFF8434 */  ori        $a0, $a0, 0xFFFF
    /* 25DFC 00124E7C 25800302 */  or         $s0, $s0, $v1
    /* 25E00 00124E80 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 25E04 00124E84 24800402 */  and        $s0, $s0, $a0
    /* 25E08 00124E88 2D30A003 */  daddu      $a2, $sp, $zero
    /* 25E0C 00124E8C 25800202 */  or         $s0, $s0, $v0
    /* 25E10 00124E90 2D202002 */  daddu      $a0, $s1, $zero
    /* 25E14 00124E94 3C281000 */  dsll32     $a1, $s0, 0
    /* 25E18 00124E98 3F280500 */  dsra32     $a1, $a1, 0
    /* 25E1C 00124E9C 9C92040C */  jal        func_00124A70
    /* 25E20 00124EA0 2D384002 */   daddu     $a3, $s2, $zero
    /* 25E24 00124EA4 08004004 */  bltz       $v0, .L00124EC8
    /* 25E28 00124EA8 2D204002 */   daddu     $a0, $s2, $zero
    /* 25E2C 00124EAC 30030224 */  addiu      $v0, $zero, 0x330
    /* 25E30 00124EB0 1600053C */  lui        $a1, %hi(D_0015B650)
    /* 25E34 00124EB4 18102202 */  mult       $v0, $s1, $v0
    /* 25E38 00124EB8 50B6A524 */  addiu      $a1, $a1, %lo(D_0015B650)
    /* 25E3C 00124EBC 5894040C */  jal        func_00125160
    /* 25E40 00124EC0 21284500 */   addu      $a1, $v0, $a1
    /* 25E44 00124EC4 0000A28F */  lw         $v0, 0x0($sp)
.align 2
  .L00124EC8:
    /* 25E48 00124EC8 4000BFDF */  ld         $ra, 0x40($sp)
    /* 25E4C 00124ECC 3000B2DF */  ld         $s2, 0x30($sp)
    /* 25E50 00124ED0 2000B1DF */  ld         $s1, 0x20($sp)
    /* 25E54 00124ED4 1000B0DF */  ld         $s0, 0x10($sp)
    /* 25E58 00124ED8 0800E003 */  jr         $ra
    /* 25E5C 00124EDC 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00124DF0
