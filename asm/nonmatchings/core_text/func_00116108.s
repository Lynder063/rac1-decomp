.align 3
nonmatching func_00116108, 0x60

glabel func_00116108
    /* 17088 00116108 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1708C 0011610C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 17090 00116110 2D808000 */  daddu      $s0, $a0, $zero
    /* 17094 00116114 1000B1FF */  sd         $s1, 0x10($sp)
    /* 17098 00116118 2D20A000 */  daddu      $a0, $a1, $zero
    /* 1709C 0011611C 1600113C */  lui        $s1, %hi(D_0015ED10)
    /* 170A0 00116120 2D28C000 */  daddu      $a1, $a2, $zero
    /* 170A4 00116124 2000BFFF */  sd         $ra, 0x20($sp)
    /* 170A8 00116128 10ED20AE */  sw         $zero, %lo(D_0015ED10)($s1)
    /* 170AC 0011612C 2264040C */  jal        func_00119088
    /* 170B0 00116130 2D30E000 */   daddu     $a2, $a3, $zero
    /* 170B4 00116134 2D184000 */  daddu      $v1, $v0, $zero
    /* 170B8 00116138 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 170BC 0011613C 05006214 */  bne        $v1, $v0, .L00116154
    /* 170C0 00116140 2000BFDF */   ld        $ra, 0x20($sp)
    /* 170C4 00116144 10ED228E */  lw         $v0, %lo(D_0015ED10)($s1)
    /* 170C8 00116148 02004054 */  bnel       $v0, $zero, .L00116154
    /* 170CC 0011614C 000002AE */   sw        $v0, 0x0($s0)
    /* 170D0 00116150 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L00116154:
    /* 170D4 00116154 2D106000 */  daddu      $v0, $v1, $zero
    /* 170D8 00116158 1000B1DF */  ld         $s1, 0x10($sp)
    /* 170DC 0011615C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 170E0 00116160 0800E003 */  jr         $ra
    /* 170E4 00116164 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00116108
