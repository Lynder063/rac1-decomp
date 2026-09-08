.align 3
nonmatching func_00226EA8, 0xBC

glabel func_00226EA8
    /* 127E28 00226EA8 1D00023C */  lui        $v0, %hi(D_001D6448)
    /* 127E2C 00226EAC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 127E30 00226EB0 48644224 */  addiu      $v0, $v0, %lo(D_001D6448)
    /* 127E34 00226EB4 0000B07F */  sq         $s0, 0x0($sp)
    /* 127E38 00226EB8 04004824 */  addiu      $t0, $v0, 0x4
    /* 127E3C 00226EBC 1000BF7F */  sq         $ra, 0x10($sp)
    /* 127E40 00226EC0 2D300000 */  daddu      $a2, $zero, $zero
    /* 127E44 00226EC4 2D804000 */  daddu      $s0, $v0, $zero
    /* 127E48 00226EC8 2D380001 */  daddu      $a3, $t0, $zero
    /* 127E4C 00226ECC 00000000 */  nop
.align 2
  .L00226ED0:
    /* 127E50 00226ED0 04008010 */  beqz       $a0, .L00226EE4
    /* 127E54 00226ED4 C0180600 */   sll       $v1, $a2, 3
    /* 127E58 00226ED8 0000E28C */  lw         $v0, 0x0($a3)
    /* 127E5C 00226EDC 02000010 */  b          .L00226EE8
    /* 127E60 00226EE0 01004238 */   xori      $v0, $v0, 0x1
.align 2
  .L00226EE4:
    /* 127E64 00226EE4 0000E28C */  lw         $v0, 0x0($a3)
.align 2
  .L00226EE8:
    /* 127E68 00226EE8 01004230 */  andi       $v0, $v0, 0x1
    /* 127E6C 00226EEC 14004054 */  bnel       $v0, $zero, .L00226F40
    /* 127E70 00226EF0 0100C624 */   addiu     $a2, $a2, 0x1
    /* 127E74 00226EF4 0000028E */  lw         $v0, 0x0($s0)
    /* 127E78 00226EF8 10004010 */  beqz       $v0, .L00226F3C
    /* 127E7C 00226EFC 21286800 */   addu      $a1, $v1, $t0
    /* 127E80 00226F00 0000A38C */  lw         $v1, 0x0($a1)
    /* 127E84 00226F04 02006230 */  andi       $v0, $v1, 0x2
    /* 127E88 00226F08 0D004014 */  bnez       $v0, .L00226F40
    /* 127E8C 00226F0C 0100C624 */   addiu     $a2, $a2, 0x1
    /* 127E90 00226F10 02006234 */  ori        $v0, $v1, 0x2
    /* 127E94 00226F14 0000A2AC */  sw         $v0, 0x0($a1)
    /* 127E98 00226F18 069C080C */  jal        func_00227018
    /* 127E9C 00226F1C 0000048E */   lw        $a0, 0x0($s0)
    /* 127EA0 00226F20 0000048E */  lw         $a0, 0x0($s0)
    /* 127EA4 00226F24 ADDE053C */  lui        $a1, (0xDEADBEEF >> 16)
    /* 127EA8 00226F28 2D304000 */  daddu      $a2, $v0, $zero
    /* 127EAC 00226F2C 6CE6070C */  jal        func_001F99B0
    /* 127EB0 00226F30 EFBEA534 */   ori       $a1, $a1, (0xDEADBEEF & 0xFFFF)
    /* 127EB4 00226F34 07000010 */  b          .L00226F54
    /* 127EB8 00226F38 0000028E */   lw        $v0, 0x0($s0)
.align 2
  .L00226F3C:
    /* 127EBC 00226F3C 0100C624 */  addiu      $a2, $a2, 0x1
.align 2
  .L00226F40:
    /* 127EC0 00226F40 08001026 */  addiu      $s0, $s0, 0x8
    /* 127EC4 00226F44 0500C228 */  slti       $v0, $a2, 0x5
    /* 127EC8 00226F48 E1FF4014 */  bnez       $v0, .L00226ED0
    /* 127ECC 00226F4C 0800E724 */   addiu     $a3, $a3, 0x8
    /* 127ED0 00226F50 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00226F54:
    /* 127ED4 00226F54 1000BF7B */  lq         $ra, 0x10($sp)
    /* 127ED8 00226F58 0000B07B */  lq         $s0, 0x0($sp)
    /* 127EDC 00226F5C 0800E003 */  jr         $ra
    /* 127EE0 00226F60 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00226EA8
    /* 127EE4 00226F64 00000000 */  nop
