.align 3
nonmatching func_00124EE0, 0x13C

glabel func_00124EE0
    /* 25E60 00124EE0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 25E64 00124EE4 30030324 */  addiu      $v1, $zero, 0x330
    /* 25E68 00124EE8 2000B1FF */  sd         $s1, 0x20($sp)
    /* 25E6C 00124EEC 2D888000 */  daddu      $s1, $a0, $zero
    /* 25E70 00124EF0 3000B2FF */  sd         $s2, 0x30($sp)
    /* 25E74 00124EF4 18182302 */  mult       $v1, $s1, $v1
    /* 25E78 00124EF8 1600123C */  lui        $s2, %hi(D_0015B640)
    /* 25E7C 00124EFC 4000BFFF */  sd         $ra, 0x40($sp)
    /* 25E80 00124F00 40B64226 */  addiu      $v0, $s2, %lo(D_0015B640)
    /* 25E84 00124F04 1000B0FF */  sd         $s0, 0x10($sp)
    /* 25E88 00124F08 21104300 */  addu       $v0, $v0, $v1
    /* 25E8C 00124F0C 0400448C */  lw         $a0, 0x4($v0)
    /* 25E90 00124F10 05008014 */  bnez       $a0, .L00124F28
    /* 25E94 00124F14 00000000 */   nop
    /* 25E98 00124F18 0894040C */  jal        func_00125020
    /* 25E9C 00124F1C 2D202002 */   daddu     $a0, $s1, $zero
    /* 25EA0 00124F20 38004004 */  bltz       $v0, .L00125004
    /* 25EA4 00124F24 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00124F28:
    /* 25EA8 00124F28 3894040C */  jal        func_001250E0
    /* 25EAC 00124F2C 2D202002 */   daddu     $a0, $s1, $zero
    /* 25EB0 00124F30 14004010 */  beqz       $v0, .L00124F84
    /* 25EB4 00124F34 00C00224 */   addiu     $v0, $zero, -0x4000
    /* 25EB8 00124F38 1E94040C */  jal        func_00125078
    /* 25EBC 00124F3C 2D202002 */   daddu     $a0, $s1, $zero
    /* 25EC0 00124F40 2D804000 */  daddu      $s0, $v0, $zero
    /* 25EC4 00124F44 0400028E */  lw         $v0, 0x4($s0)
    /* 25EC8 00124F48 0C004054 */  bnel       $v0, $zero, .L00124F7C
    /* 25ECC 00124F4C 00000292 */   lbu       $v0, 0x0($s0)
    /* 25ED0 00124F50 0894040C */  jal        func_00125020
    /* 25ED4 00124F54 2D202002 */   daddu     $a0, $s1, $zero
    /* 25ED8 00124F58 08004304 */  bgezl      $v0, .L00124F7C
    /* 25EDC 00124F5C 00000292 */   lbu       $v0, 0x0($s0)
    /* 25EE0 00124F60 30030324 */  addiu      $v1, $zero, 0x330
    /* 25EE4 00124F64 40B64426 */  addiu      $a0, $s2, %lo(D_0015B640)
    /* 25EE8 00124F68 18182302 */  mult       $v1, $s1, $v1
    /* 25EEC 00124F6C 2D100000 */  daddu      $v0, $zero, $zero
    /* 25EF0 00124F70 21208300 */  addu       $a0, $a0, $v1
    /* 25EF4 00124F74 23000010 */  b          .L00125004
    /* 25EF8 00124F78 040080AC */   sw        $zero, 0x4($a0)
.align 2
  .L00124F7C:
    /* 25EFC 00124F7C 20000010 */  b          .L00125000
    /* 25F00 00124F80 0000A2A3 */   sb        $v0, 0x0($sp)
.align 2
  .L00124F84:
    /* 25F04 00124F84 0C000324 */  addiu      $v1, $zero, 0xC
    /* 25F08 00124F88 24800202 */  and        $s0, $s0, $v0
    /* 25F0C 00124F8C FFFF043C */  lui        $a0, (0xFFFF3FFF >> 16)
    /* 25F10 00124F90 FF3F8434 */  ori        $a0, $a0, (0xFFFF3FFF & 0xFFFF)
    /* 25F14 00124F94 25800302 */  or         $s0, $s0, $v1
    /* 25F18 00124F98 00800234 */  ori        $v0, $zero, 0x8000
    /* 25F1C 00124F9C 24800402 */  and        $s0, $s0, $a0
    /* 25F20 00124FA0 00FF033C */  lui        $v1, (0xFF00FFFF >> 16)
    /* 25F24 00124FA4 FFFF6334 */  ori        $v1, $v1, (0xFF00FFFF & 0xFFFF)
    /* 25F28 00124FA8 25800202 */  or         $s0, $s0, $v0
    /* 25F2C 00124FAC 0100043C */  lui        $a0, (0x10000 >> 16)
    /* 25F30 00124FB0 24800302 */  and        $s0, $s0, $v1
    /* 25F34 00124FB4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 25F38 00124FB8 38140200 */  dsll       $v0, $v0, 16
    /* 25F3C 00124FBC FF004234 */  ori        $v0, $v0, 0xFF
    /* 25F40 00124FC0 38140200 */  dsll       $v0, $v0, 16
    /* 25F44 00124FC4 FFFF4234 */  ori        $v0, $v0, 0xFFFF
    /* 25F48 00124FC8 25800402 */  or         $s0, $s0, $a0
    /* 25F4C 00124FCC 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* 25F50 00124FD0 24800202 */  and        $s0, $s0, $v0
    /* 25F54 00124FD4 2D202002 */  daddu      $a0, $s1, $zero
    /* 25F58 00124FD8 25800302 */  or         $s0, $s0, $v1
    /* 25F5C 00124FDC 0400A637 */  ori        $a2, $sp, 0x4
    /* 25F60 00124FE0 3C281000 */  dsll32     $a1, $s0, 0
    /* 25F64 00124FE4 3F280500 */  dsra32     $a1, $a1, 0
    /* 25F68 00124FE8 9C92040C */  jal        func_00124A70
    /* 25F6C 00124FEC 2D38A003 */   daddu     $a3, $sp, $zero
    /* 25F70 00124FF0 04004104 */  bgez       $v0, .L00125004
    /* 25F74 00124FF4 0000A293 */   lbu       $v0, 0x0($sp)
    /* 25F78 00124FF8 02000010 */  b          .L00125004
    /* 25F7C 00124FFC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00125000:
    /* 25F80 00125000 0000A293 */  lbu        $v0, 0x0($sp)
.align 2
  .L00125004:
    /* 25F84 00125004 4000BFDF */  ld         $ra, 0x40($sp)
    /* 25F88 00125008 3000B2DF */  ld         $s2, 0x30($sp)
    /* 25F8C 0012500C 2000B1DF */  ld         $s1, 0x20($sp)
    /* 25F90 00125010 1000B0DF */  ld         $s0, 0x10($sp)
    /* 25F94 00125014 0800E003 */  jr         $ra
    /* 25F98 00125018 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00124EE0
    /* 25F9C 0012501C 00000000 */  nop
