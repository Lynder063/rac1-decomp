.align 3
nonmatching func_0011CBC8, 0x70

glabel func_0011CBC8
    /* 1DB48 0011CBC8 1300033C */  lui        $v1, %hi(D_0012FDAC)
    /* 1DB4C 0011CBCC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1DB50 0011CBD0 ACFD628C */  lw         $v0, %lo(D_0012FDAC)($v1)
    /* 1DB54 0011CBD4 2D288000 */  daddu      $a1, $a0, $zero
    /* 1DB58 0011CBD8 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1DB5C 0011CBDC 11004004 */  bltz       $v0, .L0011CC24
    /* 1DB60 0011CBE0 1000B0FF */   sd        $s0, 0x10($sp)
    /* 1DB64 0011CBE4 1600073C */  lui        $a3, %hi(D_001581C0)
    /* 1DB68 0011CBE8 1600043C */  lui        $a0, %hi(D_00158140)
    /* 1DB6C 0011CBEC C081E5AC */  sw         $a1, %lo(D_001581C0)($a3)
    /* 1DB70 0011CBF0 1600103C */  lui        $s0, %hi(D_00158180)
    /* 1DB74 0011CBF4 40818424 */  addiu      $a0, $a0, %lo(D_00158140)
    /* 1DB78 0011CBF8 C081E724 */  addiu      $a3, $a3, %lo(D_001581C0)
    /* 1DB7C 0011CBFC 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1DB80 0011CC00 01000524 */  addiu      $a1, $zero, 0x1
    /* 1DB84 0011CC04 2D300000 */  daddu      $a2, $zero, $zero
    /* 1DB88 0011CC08 04000824 */  addiu      $t0, $zero, 0x4
    /* 1DB8C 0011CC0C 80810926 */  addiu      $t1, $s0, %lo(D_00158180)
    /* 1DB90 0011CC10 04000A24 */  addiu      $t2, $zero, 0x4
    /* 1DB94 0011CC14 326D040C */  jal        func_0011B4C8
    /* 1DB98 0011CC18 2D580000 */   daddu     $t3, $zero, $zero
    /* 1DB9C 0011CC1C 02004104 */  bgez       $v0, .L0011CC28
    /* 1DBA0 0011CC20 8081028E */   lw        $v0, %lo(D_00158180)($s0)
.align 2
  .L0011CC24:
    /* 1DBA4 0011CC24 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0011CC28:
    /* 1DBA8 0011CC28 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1DBAC 0011CC2C 1000B0DF */  ld         $s0, 0x10($sp)
    /* 1DBB0 0011CC30 0800E003 */  jr         $ra
    /* 1DBB4 0011CC34 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0011CBC8
