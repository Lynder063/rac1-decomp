.align 3
nonmatching func_00114000, 0x5C

glabel func_00114000
    /* 14F80 00114000 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 14F84 00114004 0000B0FF */  sd         $s0, 0x0($sp)
    /* 14F88 00114008 1000B1FF */  sd         $s1, 0x10($sp)
    /* 14F8C 0011400C 2D808000 */  daddu      $s0, $a0, $zero
    /* 14F90 00114010 2D20A000 */  daddu      $a0, $a1, $zero
    /* 14F94 00114014 1600113C */  lui        $s1, %hi(D_0015ED10)
    /* 14F98 00114018 2000BFFF */  sd         $ra, 0x20($sp)
    /* 14F9C 0011401C 2D28C000 */  daddu      $a1, $a2, $zero
    /* 14FA0 00114020 7264040C */  jal        func_001191C8
    /* 14FA4 00114024 10ED20AE */   sw        $zero, %lo(D_0015ED10)($s1)
    /* 14FA8 00114028 2D184000 */  daddu      $v1, $v0, $zero
    /* 14FAC 0011402C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 14FB0 00114030 05006214 */  bne        $v1, $v0, .L00114048
    /* 14FB4 00114034 2000BFDF */   ld        $ra, 0x20($sp)
    /* 14FB8 00114038 10ED228E */  lw         $v0, %lo(D_0015ED10)($s1)
    /* 14FBC 0011403C 02004054 */  bnel       $v0, $zero, .L00114048
    /* 14FC0 00114040 000002AE */   sw        $v0, 0x0($s0)
    /* 14FC4 00114044 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L00114048:
    /* 14FC8 00114048 2D106000 */  daddu      $v0, $v1, $zero
    /* 14FCC 0011404C 1000B1DF */  ld         $s1, 0x10($sp)
    /* 14FD0 00114050 0000B0DF */  ld         $s0, 0x0($sp)
    /* 14FD4 00114054 0800E003 */  jr         $ra
    /* 14FD8 00114058 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00114000
