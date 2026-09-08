.align 3
nonmatching func_0021FA50, 0xA8

glabel func_0021FA50
    /* 1209D0 0021FA50 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1209D4 0021FA54 0000B07F */  sq         $s0, 0x0($sp)
    /* 1209D8 0021FA58 2D808000 */  daddu      $s0, $a0, $zero
    /* 1209DC 0021FA5C 1000BF7F */  sq         $ra, 0x10($sp)
    /* 1209E0 0021FA60 C899080C */  jal        func_00226720
    /* 1209E4 0021FA64 6E040424 */   addiu     $a0, $zero, 0x46E
    /* 1209E8 0021FA68 2D284000 */  daddu      $a1, $v0, $zero
    /* 1209EC 0021FA6C 1D00A010 */  beqz       $a1, .L0021FAE4
    /* 1209F0 0021FA70 1800023C */   lui       $v0, %hi(D_00187040)
    /* 1209F4 0021FA74 440005AE */  sw         $a1, 0x44($s0)
    /* 1209F8 0021FA78 3400A0A4 */  sh         $zero, 0x34($a1)
    /* 1209FC 0021FA7C 40704224 */  addiu      $v0, $v0, %lo(D_00187040)
    /* 120A00 0021FA80 0041013C */  lui        $at, (0x41000000 >> 16)
    /* 120A04 0021FA84 00008144 */  mtc1       $at, $f0
    /* 120A08 0021FA88 2200033C */  lui        $v1, %hi(func_00220128)
    /* 120A0C 0021FA8C 400141C4 */  lwc1       $f1, 0x140($v0)
    /* 120A10 0021FA90 28016324 */  addiu      $v1, $v1, %lo(func_00220128)
    /* 120A14 0021FA94 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 120A18 0021FA98 00108144 */  mtc1       $at, $f2
    /* 120A1C 0021FA9C 40080046 */  add.s      $f1, $f1, $f0
    /* 120A20 0021FAA0 CC3D013C */  lui        $at, (0x3DCCCCCD >> 16)
    /* 120A24 0021FAA4 CDCC2134 */  ori        $at, $at, (0x3DCCCCCD & 0xFFFF)
    /* 120A28 0021FAA8 00208144 */  mtc1       $at, $f4
    /* 120A2C 0021FAAC F3BF013C */  lui        $at, (0xBFF33333 >> 16)
    /* 120A30 0021FAB0 33332134 */  ori        $at, $at, (0xBFF33333 & 0xFFFF)
    /* 120A34 0021FAB4 00188144 */  mtc1       $at, $f3
    /* 120A38 0021FAB8 7800A48C */  lw         $a0, 0x78($a1)
    /* 120A3C 0021FABC 1000A1E4 */  swc1       $f1, 0x10($a1)
    /* 120A40 0021FAC0 440140C4 */  lwc1       $f0, 0x144($v0)
    /* 120A44 0021FAC4 00000246 */  add.s      $f0, $f0, $f2
    /* 120A48 0021FAC8 1400A0E4 */  swc1       $f0, 0x14($a1)
    /* 120A4C 0021FACC 480141C4 */  lwc1       $f1, 0x148($v0)
    /* 120A50 0021FAD0 4400A3E4 */  swc1       $f3, 0x44($a1)
    /* 120A54 0021FAD4 41080446 */  sub.s      $f1, $f1, $f4
    /* 120A58 0021FAD8 7400A3AC */  sw         $v1, 0x74($a1)
    /* 120A5C 0021FADC 1800A1E4 */  swc1       $f1, 0x18($a1)
    /* 120A60 0021FAE0 000090AC */  sw         $s0, 0x0($a0)
.align 2
  .L0021FAE4:
    /* 120A64 0021FAE4 1000BF7B */  lq         $ra, 0x10($sp)
    /* 120A68 0021FAE8 2D100000 */  daddu      $v0, $zero, $zero
    /* 120A6C 0021FAEC 0000B07B */  lq         $s0, 0x0($sp)
    /* 120A70 0021FAF0 0800E003 */  jr         $ra
    /* 120A74 0021FAF4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0021FA50
