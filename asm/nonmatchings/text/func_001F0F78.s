.align 3
nonmatching func_001F0F78, 0x74

glabel func_001F0F78
    /* F1EF8 001F0F78 04848A8F */  lw         $t2, -0x7BFC($gp)
    /* F1EFC 001F0F7C 1900023C */  lui        $v0, %hi(D_0018AC00)
    /* F1F00 001F0F80 00AC4224 */  addiu      $v0, $v0, %lo(D_0018AC00)
    /* F1F04 001F0F84 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F1F08 001F0F88 00190A00 */  sll        $v1, $t2, 4
    /* F1F0C 001F0F8C 0000BF7F */  sq         $ra, 0x0($sp)
    /* F1F10 001F0F90 00848B8F */  lw         $t3, -0x7C00($gp)
    /* F1F14 001F0F94 21406200 */  addu       $t0, $v1, $v0
    /* F1F18 001F0F98 000004AD */  sw         $a0, 0x0($t0)
    /* F1F1C 001F0F9C 21484300 */  addu       $t1, $v0, $v1
    /* F1F20 001F0FA0 040025AD */  sw         $a1, 0x4($t1)
    /* F1F24 001F0FA4 2D202001 */  daddu      $a0, $t1, $zero
    /* F1F28 001F0FA8 080086AC */  sw         $a2, 0x8($a0)
    /* F1F2C 001F0FAC 2D108000 */  daddu      $v0, $a0, $zero
    /* F1F30 001F0FB0 01004A25 */  addiu      $t2, $t2, 0x1
    /* F1F34 001F0FB4 0C004BAC */  sw         $t3, 0xC($v0)
    /* F1F38 001F0FB8 1600053C */  lui        $a1, %hi(D_0015F108)
    /* F1F3C 001F0FBC 2D206001 */  daddu      $a0, $t3, $zero
    /* F1F40 001F0FC0 04848AAF */  sw         $t2, -0x7BFC($gp)
    /* F1F44 001F0FC4 08F1A524 */  addiu      $a1, $a1, %lo(D_0015F108)
    /* F1F48 001F0FC8 9258040C */  jal        func_00116248
    /* F1F4C 001F0FCC 2D30E000 */   daddu     $a2, $a3, $zero
    /* F1F50 001F0FD0 0084838F */  lw         $v1, -0x7C00($gp)
    /* F1F54 001F0FD4 01004224 */  addiu      $v0, $v0, 0x1
    /* F1F58 001F0FD8 0000BF7B */  lq         $ra, 0x0($sp)
    /* F1F5C 001F0FDC 21186200 */  addu       $v1, $v1, $v0
    /* F1F60 001F0FE0 008483AF */  sw         $v1, -0x7C00($gp)
    /* F1F64 001F0FE4 0800E003 */  jr         $ra
    /* F1F68 001F0FE8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F0F78
    /* F1F6C 001F0FEC 00000000 */  nop
