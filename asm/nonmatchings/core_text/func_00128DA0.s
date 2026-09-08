.align 3
nonmatching func_00128DA0, 0xC4

glabel func_00128DA0
    /* 29D20 00128DA0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 29D24 00128DA4 0A000524 */  addiu      $a1, $zero, 0xA
    /* 29D28 00128DA8 0000B0FF */  sd         $s0, 0x0($sp)
    /* 29D2C 00128DAC 1000B1FF */  sd         $s1, 0x10($sp)
    /* 29D30 00128DB0 2000BFFF */  sd         $ra, 0x20($sp)
    /* 29D34 00128DB4 96A2040C */  jal        func_00128A58
    /* 29D38 00128DB8 2D808000 */   daddu     $s0, $a0, $zero
    /* 29D3C 00128DBC 2D884000 */  daddu      $s1, $v0, $zero
    /* 29D40 00128DC0 2D200002 */  daddu      $a0, $s0, $zero
    /* 29D44 00128DC4 96A2040C */  jal        func_00128A58
    /* 29D48 00128DC8 03000524 */   addiu     $a1, $zero, 0x3
    /* 29D4C 00128DCC 500102AE */  sw         $v0, 0x150($s0)
    /* 29D50 00128DD0 2D200002 */  daddu      $a0, $s0, $zero
    /* 29D54 00128DD4 96A2040C */  jal        func_00128A58
    /* 29D58 00128DD8 10000524 */   addiu     $a1, $zero, 0x10
    /* 29D5C 00128DDC 5001038E */  lw         $v1, 0x150($s0)
    /* 29D60 00128DE0 FEFF6224 */  addiu      $v0, $v1, -0x2
    /* 29D64 00128DE4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 29D68 00128DE8 09004010 */  beqz       $v0, .L00128E10
    /* 29D6C 00128DEC 2D200002 */   daddu     $a0, $s0, $zero
    /* 29D70 00128DF0 96A2040C */  jal        func_00128A58
    /* 29D74 00128DF4 01000524 */   addiu     $a1, $zero, 0x1
    /* 29D78 00128DF8 540102AE */  sw         $v0, 0x154($s0)
    /* 29D7C 00128DFC 2D200002 */  daddu      $a0, $s0, $zero
    /* 29D80 00128E00 96A2040C */  jal        func_00128A58
    /* 29D84 00128E04 03000524 */   addiu     $a1, $zero, 0x3
    /* 29D88 00128E08 580102AE */  sw         $v0, 0x158($s0)
    /* 29D8C 00128E0C 5001038E */  lw         $v1, 0x150($s0)
.align 2
  .L00128E10:
    /* 29D90 00128E10 03000224 */  addiu      $v0, $zero, 0x3
    /* 29D94 00128E14 08006214 */  bne        $v1, $v0, .L00128E38
    /* 29D98 00128E18 2D200002 */   daddu     $a0, $s0, $zero
    /* 29D9C 00128E1C 96A2040C */  jal        func_00128A58
    /* 29DA0 00128E20 01000524 */   addiu     $a1, $zero, 0x1
    /* 29DA4 00128E24 5C0102AE */  sw         $v0, 0x15C($s0)
    /* 29DA8 00128E28 2D200002 */  daddu      $a0, $s0, $zero
    /* 29DAC 00128E2C 96A2040C */  jal        func_00128A58
    /* 29DB0 00128E30 03000524 */   addiu     $a1, $zero, 0x3
    /* 29DB4 00128E34 600102AE */  sw         $v0, 0x160($s0)
.align 2
  .L00128E38:
    /* 29DB8 00128E38 60A4040C */  jal        func_00129180
    /* 29DBC 00128E3C 2D200002 */   daddu     $a0, $s0, $zero
    /* 29DC0 00128E40 9AA3040C */  jal        func_00128E68
    /* 29DC4 00128E44 2D200002 */   daddu     $a0, $s0, $zero
    /* 29DC8 00128E48 2D200002 */  daddu      $a0, $s0, $zero
    /* 29DCC 00128E4C 2D282002 */  daddu      $a1, $s1, $zero
    /* 29DD0 00128E50 2000BFDF */  ld         $ra, 0x20($sp)
    /* 29DD4 00128E54 1000B1DF */  ld         $s1, 0x10($sp)
    /* 29DD8 00128E58 0000B0DF */  ld         $s0, 0x0($sp)
    /* 29DDC 00128E5C 72A40408 */  j          func_001291C8
    /* 29DE0 00128E60 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00128DA0
    /* 29DE4 00128E64 00000000 */  nop
