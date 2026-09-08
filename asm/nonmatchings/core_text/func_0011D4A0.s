.align 3
nonmatching func_0011D4A0, 0x40

glabel func_0011D4A0
    /* 1E420 0011D4A0 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 1E424 0011D4A4 0000BFFF */  sd         $31, 0x0($29)
    /* 1E428 0011D4A8 A863040C */  jal        func_00118EA0
    /* 1E42C 0011D4AC 00000000 */   nop
    /* 1E430 0011D4B0 0002033C */  lui        $3, (0x2000000 >> 16)
    /* 1E434 0011D4B4 05004314 */  bne        $2, $3, .L0011D4CC
    /* 1E438 0011D4B8 00000000 */   nop
    /* 1E43C 0011D4BC 3875040C */  jal        func_0011D4E0
    /* 1E440 0011D4C0 00000000 */   nop
    /* 1E444 0011D4C4 04000010 */  b          .L0011D4D8
    /* 1E448 0011D4C8 0000BFDF */   ld        $31, 0x0($29)
.align 2
  .L0011D4CC:
    /* 1E44C 0011D4CC AC63040C */  jal        func_00118EB0
    /* 1E450 0011D4D0 00000000 */   nop
    /* 1E454 0011D4D4 0000BFDF */  ld         $31, 0x0($29)
.align 2
  .L0011D4D8:
    /* 1E458 0011D4D8 0800E003 */  jr         $31
    /* 1E45C 0011D4DC 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0011D4A0
