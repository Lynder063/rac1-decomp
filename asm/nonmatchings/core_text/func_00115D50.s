.align 3
nonmatching func_00115D50, 0x190

glabel func_00115D50
    /* 16CD0 00115D50 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 16CD4 00115D54 3000B3FF */  sd         $s3, 0x30($sp)
    /* 16CD8 00115D58 2000B2FF */  sd         $s2, 0x20($sp)
    /* 16CDC 00115D5C 2D988000 */  daddu      $s3, $a0, $zero
    /* 16CE0 00115D60 1000B1FF */  sd         $s1, 0x10($sp)
    /* 16CE4 00115D64 2D90C000 */  daddu      $s2, $a2, $zero
    /* 16CE8 00115D68 2D88A000 */  daddu      $s1, $a1, $zero
    /* 16CEC 00115D6C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 16CF0 00115D70 4000BFFF */  sd         $ra, 0x40($sp)
    /* 16CF4 00115D74 2D284002 */  daddu      $a1, $s2, $zero
    /* 16CF8 00115D78 3A57040C */  jal        func_00115CE8
    /* 16CFC 00115D7C 2D202002 */   daddu     $a0, $s1, $zero
    /* 16D00 00115D80 2D804000 */  daddu      $s0, $v0, $zero
    /* 16D04 00115D84 08000016 */  bnez       $s0, .L00115DA8
    /* 16D08 00115D88 2D206002 */   daddu     $a0, $s3, $zero
    /* 16D0C 00115D8C 3455040C */  jal        func_001154D0
    /* 16D10 00115D90 2D280000 */   daddu     $a1, $zero, $zero
    /* 16D14 00115D94 2D584000 */  daddu      $t3, $v0, $zero
    /* 16D18 00115D98 01000224 */  addiu      $v0, $zero, 0x1
    /* 16D1C 00115D9C 140060AD */  sw         $zero, 0x14($t3)
    /* 16D20 00115DA0 47000010 */  b          .L00115EC0
    /* 16D24 00115DA4 100062AD */   sw        $v0, 0x10($t3)
.align 2
  .L00115DA8:
    /* 16D28 00115DA8 05000106 */  bgez       $s0, .L00115DC0
    /* 16D2C 00115DAC 2D800000 */   daddu     $s0, $zero, $zero
    /* 16D30 00115DB0 2D582002 */  daddu      $t3, $s1, $zero
    /* 16D34 00115DB4 01001024 */  addiu      $s0, $zero, 0x1
    /* 16D38 00115DB8 2D884002 */  daddu      $s1, $s2, $zero
    /* 16D3C 00115DBC 2D906001 */  daddu      $s2, $t3, $zero
.align 2
  .L00115DC0:
    /* 16D40 00115DC0 0400258E */  lw         $a1, 0x4($s1)
    /* 16D44 00115DC4 3455040C */  jal        func_001154D0
    /* 16D48 00115DC8 2D206002 */   daddu     $a0, $s3, $zero
    /* 16D4C 00115DCC 2D584000 */  daddu      $t3, $v0, $zero
    /* 16D50 00115DD0 14002826 */  addiu      $t0, $s1, 0x14
    /* 16D54 00115DD4 0C0070AD */  sw         $s0, 0xC($t3)
    /* 16D58 00115DD8 14004926 */  addiu      $t1, $s2, 0x14
    /* 16D5C 00115DDC 14006725 */  addiu      $a3, $t3, 0x14
    /* 16D60 00115DE0 2D500000 */  daddu      $t2, $zero, $zero
    /* 16D64 00115DE4 10002C8E */  lw         $t4, 0x10($s1)
    /* 16D68 00115DE8 1000428E */  lw         $v0, 0x10($s2)
    /* 16D6C 00115DEC 80180C00 */  sll        $v1, $t4, 2
    /* 16D70 00115DF0 80100200 */  sll        $v0, $v0, 2
    /* 16D74 00115DF4 21680301 */  addu       $t5, $t0, $v1
    /* 16D78 00115DF8 21302201 */  addu       $a2, $t1, $v0
    /* 16D7C 00115DFC 00000000 */  nop
.align 2
  .L00115E00:
    /* 16D80 00115E00 0000058D */  lw         $a1, 0x0($t0)
    /* 16D84 00115E04 0000228D */  lw         $v0, 0x0($t1)
    /* 16D88 00115E08 04000825 */  addiu      $t0, $t0, 0x4
    /* 16D8C 00115E0C FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 16D90 00115E10 04002925 */  addiu      $t1, $t1, 0x4
    /* 16D94 00115E14 FFFF4430 */  andi       $a0, $v0, 0xFFFF
    /* 16D98 00115E18 022C0500 */  srl        $a1, $a1, 16
    /* 16D9C 00115E1C 23186400 */  subu       $v1, $v1, $a0
    /* 16DA0 00115E20 02140200 */  srl        $v0, $v0, 16
    /* 16DA4 00115E24 21186A00 */  addu       $v1, $v1, $t2
    /* 16DA8 00115E28 2328A200 */  subu       $a1, $a1, $v0
    /* 16DAC 00115E2C 03540300 */  sra        $t2, $v1, 16
    /* 16DB0 00115E30 0000E3A4 */  sh         $v1, 0x0($a3)
    /* 16DB4 00115E34 2128AA00 */  addu       $a1, $a1, $t2
    /* 16DB8 00115E38 2B102601 */  sltu       $v0, $t1, $a2
    /* 16DBC 00115E3C 0200E5A4 */  sh         $a1, 0x2($a3)
    /* 16DC0 00115E40 03540500 */  sra        $t2, $a1, 16
    /* 16DC4 00115E44 EEFF4014 */  bnez       $v0, .L00115E00
    /* 16DC8 00115E48 0400E724 */   addiu     $a3, $a3, 0x4
    /* 16DCC 00115E4C 2B100D01 */  sltu       $v0, $t0, $t5
    /* 16DD0 00115E50 0F004050 */  beql       $v0, $zero, .L00115E90
    /* 16DD4 00115E54 FCFFE724 */   addiu     $a3, $a3, -0x4
.align 2
  .L00115E58:
    /* 16DD8 00115E58 0000028D */  lw         $v0, 0x0($t0)
    /* 16DDC 00115E5C 04000825 */  addiu      $t0, $t0, 0x4
    /* 16DE0 00115E60 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 16DE4 00115E64 2B200D01 */  sltu       $a0, $t0, $t5
    /* 16DE8 00115E68 21186A00 */  addu       $v1, $v1, $t2
    /* 16DEC 00115E6C 02140200 */  srl        $v0, $v0, 16
    /* 16DF0 00115E70 03540300 */  sra        $t2, $v1, 16
    /* 16DF4 00115E74 0000E3A4 */  sh         $v1, 0x0($a3)
    /* 16DF8 00115E78 21284A00 */  addu       $a1, $v0, $t2
    /* 16DFC 00115E7C 0200E5A4 */  sh         $a1, 0x2($a3)
    /* 16E00 00115E80 03540500 */  sra        $t2, $a1, 16
    /* 16E04 00115E84 F4FF8014 */  bnez       $a0, .L00115E58
    /* 16E08 00115E88 0400E724 */   addiu     $a3, $a3, 0x4
    /* 16E0C 00115E8C FCFFE724 */  addiu      $a3, $a3, -0x4
.align 2
  .L00115E90:
    /* 16E10 00115E90 0000E28C */  lw         $v0, 0x0($a3)
    /* 16E14 00115E94 0A004054 */  bnel       $v0, $zero, .L00115EC0
    /* 16E18 00115E98 10006CAD */   sw        $t4, 0x10($t3)
    /* 16E1C 00115E9C 00000000 */  nop
.align 2
  .L00115EA0:
    /* 16E20 00115EA0 FCFFE724 */  addiu      $a3, $a3, -0x4
    /* 16E24 00115EA4 FFFF8C25 */  addiu      $t4, $t4, -0x1
    /* 16E28 00115EA8 0000E28C */  lw         $v0, 0x0($a3)
    /* 16E2C 00115EAC 00000000 */  nop
    /* 16E30 00115EB0 00000000 */  nop
    /* 16E34 00115EB4 FAFF4010 */  beqz       $v0, .L00115EA0
    /* 16E38 00115EB8 00000000 */   nop
    /* 16E3C 00115EBC 10006CAD */  sw         $t4, 0x10($t3)
.align 2
  .L00115EC0:
    /* 16E40 00115EC0 2D106001 */  daddu      $v0, $t3, $zero
    /* 16E44 00115EC4 4000BFDF */  ld         $ra, 0x40($sp)
    /* 16E48 00115EC8 3000B3DF */  ld         $s3, 0x30($sp)
    /* 16E4C 00115ECC 2000B2DF */  ld         $s2, 0x20($sp)
    /* 16E50 00115ED0 1000B1DF */  ld         $s1, 0x10($sp)
    /* 16E54 00115ED4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 16E58 00115ED8 0800E003 */  jr         $ra
    /* 16E5C 00115EDC 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00115D50
