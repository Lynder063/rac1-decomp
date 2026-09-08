.align 3
nonmatching func_00112468, 0x58

glabel func_00112468
    /* 133E8 00112468 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 133EC 0011246C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 133F0 00112470 0000B0FF */  sd         $s0, 0x0($sp)
    /* 133F4 00112474 2D888000 */  daddu      $s1, $a0, $zero
    /* 133F8 00112478 1600103C */  lui        $s0, %hi(D_0015ED10)
    /* 133FC 0011247C 2000BFFF */  sd         $ra, 0x20($sp)
    /* 13400 00112480 2D20A000 */  daddu      $a0, $a1, $zero
    /* 13404 00112484 4064040C */  jal        func_00119100
    /* 13408 00112488 10ED00AE */   sw        $zero, %lo(D_0015ED10)($s0)
    /* 1340C 0011248C 2D184000 */  daddu      $v1, $v0, $zero
    /* 13410 00112490 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 13414 00112494 05006214 */  bne        $v1, $v0, .L001124AC
    /* 13418 00112498 2000BFDF */   ld        $ra, 0x20($sp)
    /* 1341C 0011249C 10ED028E */  lw         $v0, %lo(D_0015ED10)($s0)
    /* 13420 001124A0 02004054 */  bnel       $v0, $zero, .L001124AC
    /* 13424 001124A4 000022AE */   sw        $v0, 0x0($s1)
    /* 13428 001124A8 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L001124AC:
    /* 1342C 001124AC 2D106000 */  daddu      $v0, $v1, $zero
    /* 13430 001124B0 1000B1DF */  ld         $s1, 0x10($sp)
    /* 13434 001124B4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 13438 001124B8 0800E003 */  jr         $ra
    /* 1343C 001124BC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00112468
