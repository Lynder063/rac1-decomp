.align 3
nonmatching func_00227D20, 0x90

glabel func_00227D20
    /* 128CA0 00227D20 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 128CA4 00227D24 1000B17F */  sq         $s1, 0x10($sp)
    /* 128CA8 00227D28 0000B07F */  sq         $s0, 0x0($sp)
    /* 128CAC 00227D2C 2D888000 */  daddu      $s1, $a0, $zero
    /* 128CB0 00227D30 2000BF7F */  sq         $ra, 0x20($sp)
    /* 128CB4 00227D34 7027080C */  jal        func_00209DC0
    /* 128CB8 00227D38 2D80A000 */   daddu     $s0, $a1, $zero
    /* 128CBC 00227D3C 1600043C */  lui        $a0, %hi(D_0015EF98)
    /* 128CC0 00227D40 98EF8424 */  addiu      $a0, $a0, %lo(D_0015EF98)
    /* 128CC4 00227D44 A086040C */  jal        func_00121A80
    /* 128CC8 00227D48 00000000 */   nop
    /* 128CCC 00227D4C 1600043C */  lui        $a0, %hi(D_0015EF98)
    /* 128CD0 00227D50 98EF8424 */  addiu      $a0, $a0, %lo(D_0015EF98)
    /* 128CD4 00227D54 06B6040C */  jal        func_0012D818
    /* 128CD8 00227D58 00000000 */   nop
    /* 128CDC 00227D5C 802E080C */  jal        func_0020BA00
    /* 128CE0 00227D60 2D202002 */   daddu     $a0, $s1, $zero
    /* 128CE4 00227D64 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 128CE8 00227D68 1400033C */  lui        $v1, %hi(D_0013D390)
    /* 128CEC 00227D6C 18200202 */  mult       $a0, $s0, $v0
    /* 128CF0 00227D70 90D36324 */  addiu      $v1, $v1, %lo(D_0013D390)
    /* 128CF4 00227D74 C80060AC */  sw         $zero, 0xC8($v1)
    /* 128CF8 00227D78 140070AC */  sw         $s0, 0x14($v1)
    /* 128CFC 00227D7C 21108300 */  addu       $v0, $a0, $v1
    /* 128D00 00227D80 200040AC */  sw         $zero, 0x20($v0)
    /* 128D04 00227D84 F40071AC */  sw         $s1, 0xF4($v1)
    /* 128D08 00227D88 E400628C */  lw         $v0, 0xE4($v1)
    /* 128D0C 00227D8C 04004104 */  bgez       $v0, .L00227DA0
    /* 128D10 00227D90 2000BF7B */   lq        $ra, 0x20($sp)
    /* 128D14 00227D94 13000224 */  addiu      $v0, $zero, 0x13
    /* 128D18 00227D98 E80060AC */  sw         $zero, 0xE8($v1)
    /* 128D1C 00227D9C E40062AC */  sw         $v0, 0xE4($v1)
.align 2
  .L00227DA0:
    /* 128D20 00227DA0 1000B17B */  lq         $s1, 0x10($sp)
    /* 128D24 00227DA4 0000B07B */  lq         $s0, 0x0($sp)
    /* 128D28 00227DA8 0800E003 */  jr         $ra
    /* 128D2C 00227DAC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00227D20
