.align 3
nonmatching func_001F2FB8, 0x50

glabel func_001F2FB8
    /* F3F38 001F2FB8 1900023C */  lui        $v0, %hi(D_0018C434)
    /* F3F3C 001F2FBC F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F3F40 001F2FC0 34C4438C */  lw         $v1, %lo(D_0018C434)($v0)
    /* F3F44 001F2FC4 08006014 */  bnez       $v1, .L001F2FE8
    /* F3F48 001F2FC8 0000BF7F */   sq        $ra, 0x0($sp)
    /* F3F4C 001F2FCC 1900043C */  lui        $a0, %hi(D_001940C0)
    /* F3F50 001F2FD0 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* F3F54 001F2FD4 C0408424 */  addiu      $a0, $a0, %lo(D_001940C0)
    /* F3F58 001F2FD8 6CE6070C */  jal        func_001F99B0
    /* F3F5C 001F2FDC 80000624 */   addiu     $a2, $zero, 0x80
    /* F3F60 001F2FE0 07000010 */  b          .L001F3000
    /* F3F64 001F2FE4 0000BF7B */   lq        $ra, 0x0($sp)
.align 2
  .L001F2FE8:
    /* F3F68 001F2FE8 02000224 */  addiu      $v0, $zero, 0x2
    /* F3F6C 001F2FEC 04006214 */  bne        $v1, $v0, .L001F3000
    /* F3F70 001F2FF0 0000BF7B */   lq        $ra, 0x0($sp)
    /* F3F74 001F2FF4 F2CA070C */  jal        func_001F2BC8
    /* F3F78 001F2FF8 00000000 */   nop
    /* F3F7C 001F2FFC 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L001F3000:
    /* F3F80 001F3000 0800E003 */  jr         $ra
    /* F3F84 001F3004 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F2FB8
