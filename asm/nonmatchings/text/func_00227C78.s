.align 3
nonmatching func_00227C78, 0xA4

glabel func_00227C78
    /* 128BF8 00227C78 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 128BFC 00227C7C 1400023C */  lui        $v0, %hi(D_0013D390)
    /* 128C00 00227C80 0000B07F */  sq         $s0, 0x0($sp)
    /* 128C04 00227C84 2000B27F */  sq         $s2, 0x20($sp)
    /* 128C08 00227C88 2D808000 */  daddu      $s0, $a0, $zero
    /* 128C0C 00227C8C 1000B17F */  sq         $s1, 0x10($sp)
    /* 128C10 00227C90 90D35224 */  addiu      $s2, $v0, %lo(D_0013D390)
    /* 128C14 00227C94 3000BF7F */  sq         $ra, 0x30($sp)
    /* 128C18 00227C98 1600043C */  lui        $a0, %hi(D_0015EF98)
    /* 128C1C 00227C9C 98EF8424 */  addiu      $a0, $a0, %lo(D_0015EF98)
    /* 128C20 00227CA0 A086040C */  jal        func_00121A80
    /* 128C24 00227CA4 2D88A000 */   daddu     $s1, $a1, $zero
    /* 128C28 00227CA8 1600043C */  lui        $a0, %hi(D_0015EF98)
    /* 128C2C 00227CAC 98EF8424 */  addiu      $a0, $a0, %lo(D_0015EF98)
    /* 128C30 00227CB0 06B6040C */  jal        func_0012D818
    /* 128C34 00227CB4 00000000 */   nop
    /* 128C38 00227CB8 E823080C */  jal        func_00208FA0
    /* 128C3C 00227CBC 00000000 */   nop
    /* 128C40 00227CC0 1600023C */  lui        $v0, %hi(D_0015EE84)
    /* 128C44 00227CC4 84EE428C */  lw         $v0, %lo(D_0015EE84)($v0)
    /* 128C48 00227CC8 1400043C */  lui        $a0, %hi(D_00141FC0)
    /* 128C4C 00227CCC C01F8424 */  addiu      $a0, $a0, %lo(D_00141FC0)
    /* 128C50 00227CD0 C0120200 */  sll        $v0, $v0, 11
    /* 128C54 00227CD4 CE20080C */  jal        func_00208338
    /* 128C58 00227CD8 21204400 */   addu      $a0, $v0, $a0
    /* 128C5C 00227CDC 802E080C */  jal        func_0020BA00
    /* 128C60 00227CE0 2D200002 */   daddu     $a0, $s0, $zero
    /* 128C64 00227CE4 E400428E */  lw         $v0, 0xE4($s2)
    /* 128C68 00227CE8 F40050AE */  sw         $s0, 0xF4($s2)
    /* 128C6C 00227CEC 140051AE */  sw         $s1, 0x14($s2)
    /* 128C70 00227CF0 04004104 */  bgez       $v0, .L00227D04
    /* 128C74 00227CF4 C80040AE */   sw        $zero, 0xC8($s2)
    /* 128C78 00227CF8 13000224 */  addiu      $v0, $zero, 0x13
    /* 128C7C 00227CFC E80040AE */  sw         $zero, 0xE8($s2)
    /* 128C80 00227D00 E40042AE */  sw         $v0, 0xE4($s2)
.align 2
  .L00227D04:
    /* 128C84 00227D04 3000BF7B */  lq         $ra, 0x30($sp)
    /* 128C88 00227D08 2000B27B */  lq         $s2, 0x20($sp)
    /* 128C8C 00227D0C 1000B17B */  lq         $s1, 0x10($sp)
    /* 128C90 00227D10 0000B07B */  lq         $s0, 0x0($sp)
    /* 128C94 00227D14 0800E003 */  jr         $ra
    /* 128C98 00227D18 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00227C78
    /* 128C9C 00227D1C 00000000 */  nop
