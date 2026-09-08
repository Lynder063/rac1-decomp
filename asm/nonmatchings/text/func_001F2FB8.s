.align 3
nonmatching func_001F2FB8, 0x50

glabel func_001F2FB8
    /* F3F38 001F2FB8 1900023C */  lui        $2, %hi(D_0018C434)
    /* F3F3C 001F2FBC F0FFBD27 */  addiu      $29, $29, -0x10
    /* F3F40 001F2FC0 34C4438C */  lw         $3, %lo(D_0018C434)($2)
    /* F3F44 001F2FC4 08006014 */  bnez       $3, .L001F2FE8
    /* F3F48 001F2FC8 0000BF7F */   sq        $31, 0x0($29)
    /* F3F4C 001F2FCC 1900043C */  lui        $4, %hi(D_001940C0)
    /* F3F50 001F2FD0 FFFF0524 */  addiu      $5, $0, -0x1
    /* F3F54 001F2FD4 C0408424 */  addiu      $4, $4, %lo(D_001940C0)
    /* F3F58 001F2FD8 6CE6070C */  jal        func_001F99B0
    /* F3F5C 001F2FDC 80000624 */   addiu     $6, $0, 0x80
    /* F3F60 001F2FE0 07000010 */  b          .L001F3000
    /* F3F64 001F2FE4 0000BF7B */   lq        $31, 0x0($29)
.align 2
  .L001F2FE8:
    /* F3F68 001F2FE8 02000224 */  addiu      $2, $0, 0x2
    /* F3F6C 001F2FEC 04006214 */  bne        $3, $2, .L001F3000
    /* F3F70 001F2FF0 0000BF7B */   lq        $31, 0x0($29)
    /* F3F74 001F2FF4 F2CA070C */  jal        func_001F2BC8
    /* F3F78 001F2FF8 00000000 */   nop
    /* F3F7C 001F2FFC 0000BF7B */  lq         $31, 0x0($29)
.align 2
  .L001F3000:
    /* F3F80 001F3000 0800E003 */  jr         $31
    /* F3F84 001F3004 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001F2FB8
