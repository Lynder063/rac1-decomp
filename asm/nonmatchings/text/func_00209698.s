.align 3
nonmatching func_00209698, 0x40

glabel func_00209698
    /* 10A618 00209698 1400023C */  lui        $v0, %hi(D_0013D390)
    /* 10A61C 0020969C 02000424 */  addiu      $a0, $zero, 0x2
    /* 10A620 002096A0 90D34524 */  addiu      $a1, $v0, %lo(D_0013D390)
    /* 10A624 002096A4 DC00A38C */  lw         $v1, 0xDC($a1)
    /* 10A628 002096A8 09006414 */  bne        $v1, $a0, .L002096D0
    /* 10A62C 002096AC 00000000 */   nop
    /* 10A630 002096B0 E400A28C */  lw         $v0, 0xE4($a1)
    /* 10A634 002096B4 06004104 */  bgez       $v0, .L002096D0
    /* 10A638 002096B8 09000224 */   addiu     $v0, $zero, 0x9
    /* 10A63C 002096BC 0F000324 */  addiu      $v1, $zero, 0xF
    /* 10A640 002096C0 E400A2AC */  sw         $v0, 0xE4($a1)
    /* 10A644 002096C4 E800A0AC */  sw         $zero, 0xE8($a1)
    /* 10A648 002096C8 1600013C */  lui        $at, %hi(D_0015EFB0)
    /* 10A64C 002096CC B0EF23AC */  sw         $v1, %lo(D_0015EFB0)($at)
.align 2
  .L002096D0:
    /* 10A650 002096D0 0800E003 */  jr         $ra
    /* 10A654 002096D4 00000000 */   nop
endlabel func_00209698
