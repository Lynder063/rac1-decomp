.align 3
nonmatching func_00128E68, 0x128

glabel func_00128E68
    /* 29DE8 00128E68 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 29DEC 00128E6C 1500023C */  lui        $v0, %hi(D_001539B8)
    /* 29DF0 00128E70 3000B0FF */  sd         $s0, 0x30($sp)
    /* 29DF4 00128E74 6000B3FF */  sd         $s3, 0x60($sp)
    /* 29DF8 00128E78 2D808000 */  daddu      $s0, $a0, $zero
    /* 29DFC 00128E7C 5000B2FF */  sd         $s2, 0x50($sp)
    /* 29E00 00128E80 4000B1FF */  sd         $s1, 0x40($sp)
    /* 29E04 00128E84 B2011324 */  addiu      $s3, $zero, 0x1B2
    /* 29E08 00128E88 7000BFFF */  sd         $ra, 0x70($sp)
    /* 29E0C 00128E8C B5011124 */  addiu      $s1, $zero, 0x1B5
    /* 29E10 00128E90 B8394724 */  addiu      $a3, $v0, %lo(D_001539B8)
    /* 29E14 00128E94 0700E368 */  ldl        $v1, 0x7($a3)
    /* 29E18 00128E98 0000E36C */  ldr        $v1, 0x0($a3)
    /* 29E1C 00128E9C 0F00E568 */  ldl        $a1, 0xF($a3)
    /* 29E20 00128EA0 0800E56C */  ldr        $a1, 0x8($a3)
    /* 29E24 00128EA4 1700E668 */  ldl        $a2, 0x17($a3)
    /* 29E28 00128EA8 1000E66C */  ldr        $a2, 0x10($a3)
    /* 29E2C 00128EAC 0700A3B3 */  sdl        $v1, 0x7($sp)
    /* 29E30 00128EB0 0000A3B7 */  sdr        $v1, 0x0($sp)
    /* 29E34 00128EB4 0F00A5B3 */  sdl        $a1, 0xF($sp)
    /* 29E38 00128EB8 0800A5B7 */  sdr        $a1, 0x8($sp)
    /* 29E3C 00128EBC 1700A6B3 */  sdl        $a2, 0x17($sp)
    /* 29E40 00128EC0 1000A6B7 */  sdr        $a2, 0x10($sp)
    /* 29E44 00128EC4 1F00E368 */  ldl        $v1, 0x1F($a3)
    /* 29E48 00128EC8 1800E36C */  ldr        $v1, 0x18($a3)
    /* 29E4C 00128ECC 2700E568 */  ldl        $a1, 0x27($a3)
    /* 29E50 00128ED0 2000E56C */  ldr        $a1, 0x20($a3)
    /* 29E54 00128ED4 2800E68C */  lw         $a2, 0x28($a3)
    /* 29E58 00128ED8 1F00A3B3 */  sdl        $v1, 0x1F($sp)
    /* 29E5C 00128EDC 1800A3B7 */  sdr        $v1, 0x18($sp)
    /* 29E60 00128EE0 2700A5B3 */  sdl        $a1, 0x27($sp)
    /* 29E64 00128EE4 2000A5B7 */  sdr        $a1, 0x20($sp)
    /* 29E68 00128EE8 2800A6AF */  sw         $a2, 0x28($sp)
    /* 29E6C 00128EEC EAA2040C */  jal        func_00128BA8
    /* 29E70 00128EF0 0A001224 */   addiu     $s2, $zero, 0xA
    /* 29E74 00128EF4 19000010 */  b          .L00128F5C
    /* 29E78 00128EF8 2D200002 */   daddu     $a0, $s0, $zero
    /* 29E7C 00128EFC 00000000 */  nop
.align 2
  .L00128F00:
    /* 29E80 00128F00 11005154 */  bnel       $v0, $s1, .L00128F48
    /* 29E84 00128F04 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L00128F08:
    /* 29E88 00128F08 5AA2040C */  jal        func_00128968
    /* 29E8C 00128F0C 00000000 */   nop
    /* 29E90 00128F10 2D200002 */  daddu      $a0, $s0, $zero
    /* 29E94 00128F14 96A2040C */  jal        func_00128A58
    /* 29E98 00128F18 04000524 */   addiu     $a1, $zero, 0x4
    /* 29E9C 00128F1C 2B184202 */  sltu       $v1, $s2, $v0
    /* 29EA0 00128F20 0B100300 */  movn       $v0, $zero, $v1
    /* 29EA4 00128F24 80100200 */  sll        $v0, $v0, 2
    /* 29EA8 00128F28 2118A203 */  addu       $v1, $sp, $v0
    /* 29EAC 00128F2C 0000628C */  lw         $v0, 0x0($v1)
    /* 29EB0 00128F30 09F84000 */  jalr       $v0
    /* 29EB4 00128F34 2D200002 */   daddu     $a0, $s0, $zero
    /* 29EB8 00128F38 EAA2040C */  jal        func_00128BA8
    /* 29EBC 00128F3C 2D200002 */   daddu     $a0, $s0, $zero
    /* 29EC0 00128F40 06000010 */  b          .L00128F5C
    /* 29EC4 00128F44 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L00128F48:
    /* 29EC8 00128F48 5AA2040C */  jal        func_00128968
    /* 29ECC 00128F4C 20000524 */   addiu     $a1, $zero, 0x20
    /* 29ED0 00128F50 EAA2040C */  jal        func_00128BA8
    /* 29ED4 00128F54 2D200002 */   daddu     $a0, $s0, $zero
    /* 29ED8 00128F58 2D200002 */  daddu      $a0, $s0, $zero
.align 2
  .L00128F5C:
    /* 29EDC 00128F5C 18A2040C */  jal        func_00128860
    /* 29EE0 00128F60 20000524 */   addiu     $a1, $zero, 0x20
    /* 29EE4 00128F64 2D200002 */  daddu      $a0, $s0, $zero
    /* 29EE8 00128F68 E7FF5110 */  beq        $v0, $s1, .L00128F08
    /* 29EEC 00128F6C 20000524 */   addiu     $a1, $zero, 0x20
    /* 29EF0 00128F70 E3FF5310 */  beq        $v0, $s3, .L00128F00
    /* 29EF4 00128F74 7000BFDF */   ld        $ra, 0x70($sp)
    /* 29EF8 00128F78 6000B3DF */  ld         $s3, 0x60($sp)
    /* 29EFC 00128F7C 5000B2DF */  ld         $s2, 0x50($sp)
    /* 29F00 00128F80 4000B1DF */  ld         $s1, 0x40($sp)
    /* 29F04 00128F84 3000B0DF */  ld         $s0, 0x30($sp)
    /* 29F08 00128F88 0800E003 */  jr         $ra
    /* 29F0C 00128F8C 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_00128E68
