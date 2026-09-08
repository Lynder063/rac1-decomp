.align 3
nonmatching func_0021B108, 0x2C

glabel func_0021B108
    /* 11C088 0021B108 1600023C */  lui        $v0, %hi(D_0015EF90)
    /* 11C08C 0021B10C 90EF428C */  lw         $v0, %lo(D_0015EF90)($v0)
    /* 11C090 0021B110 04004050 */  beql       $v0, $zero, .L0021B124
    /* 11C094 0021B114 1D00023C */   lui       $v0, %hi(D_001D4BC0)
    /* 11C098 0021B118 1D00023C */  lui        $v0, %hi(D_001D4B90)
    /* 11C09C 0021B11C 02000010 */  b          .L0021B128
    /* 11C0A0 0021B120 904B4224 */   addiu     $v0, $v0, %lo(D_001D4B90)
.align 2
  .L0021B124:
    /* 11C0A4 0021B124 C04B4224 */  addiu      $v0, $v0, %lo(D_001D4BC0)
.align 2
  .L0021B128:
    /* 11C0A8 0021B128 340082AC */  sw         $v0, 0x34($a0)
    /* 11C0AC 0021B12C 0800E003 */  jr         $ra
    /* 11C0B0 0021B130 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0021B108
    /* 11C0B4 0021B134 00000000 */  nop
