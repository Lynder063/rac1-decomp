.align 3
nonmatching func_0011B198, 0x60

glabel func_0011B198
    /* 1C118 0011B198 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C11C 0011B19C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1C120 0011B1A0 2D808000 */  daddu      $s0, $a0, $zero
    /* 1C124 0011B1A4 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1C128 0011B1A8 2C6C040C */  jal        func_0011B0B0
    /* 1C12C 0011B1AC 2D20A000 */   daddu     $a0, $a1, $zero
    /* 1C130 0011B1B0 1400058E */  lw         $a1, 0x14($s0)
    /* 1C134 0011B1B4 0080033C */  lui        $v1, (0x8000000C >> 16)
    /* 1C138 0011B1B8 1C00048E */  lw         $a0, 0x1C($s0)
    /* 1C13C 0011B1BC 0C006334 */  ori        $v1, $v1, (0x8000000C & 0xFFFF)
    /* 1C140 0011B1C0 140045AC */  sw         $a1, 0x14($v0)
    /* 1C144 0011B1C4 40000624 */  addiu      $a2, $zero, 0x40
    /* 1C148 0011B1C8 1C0044AC */  sw         $a0, 0x1C($v0)
    /* 1C14C 0011B1CC 2D284000 */  daddu      $a1, $v0, $zero
    /* 1C150 0011B1D0 200043AC */  sw         $v1, 0x20($v0)
    /* 1C154 0011B1D4 0080043C */  lui        $a0, (0x80000008 >> 16)
    /* 1C158 0011B1D8 1000BFDF */  ld         $ra, 0x10($sp)
    /* 1C15C 0011B1DC 08008434 */  ori        $a0, $a0, (0x80000008 & 0xFFFF)
    /* 1C160 0011B1E0 2800098E */  lw         $t1, 0x28($s0)
    /* 1C164 0011B1E4 2000078E */  lw         $a3, 0x20($s0)
    /* 1C168 0011B1E8 2400088E */  lw         $t0, 0x24($s0)
    /* 1C16C 0011B1EC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1C170 0011B1F0 026B0408 */  j          func_0011AC08
    /* 1C174 0011B1F4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0011B198
