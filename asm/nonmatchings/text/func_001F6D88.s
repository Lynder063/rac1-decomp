.align 3
nonmatching func_001F6D88, 0x8C

glabel func_001F6D88
    /* F7D08 001F6D88 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F7D0C 001F6D8C 3000B37F */  sq         $s3, 0x30($sp)
    /* F7D10 001F6D90 2000B27F */  sq         $s2, 0x20($sp)
    /* F7D14 001F6D94 2D98A000 */  daddu      $s3, $a1, $zero
    /* F7D18 001F6D98 1000B17F */  sq         $s1, 0x10($sp)
    /* F7D1C 001F6D9C 2D900001 */  daddu      $s2, $t0, $zero
    /* F7D20 001F6DA0 0000B07F */  sq         $s0, 0x0($sp)
    /* F7D24 001F6DA4 2D88E000 */  daddu      $s1, $a3, $zero
    /* F7D28 001F6DA8 4000B47F */  sq         $s4, 0x40($sp)
    /* F7D2C 001F6DAC 2D808000 */  daddu      $s0, $a0, $zero
    /* F7D30 001F6DB0 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7D34 001F6DB4 2DA0C000 */  daddu      $s4, $a2, $zero
    /* F7D38 001F6DB8 2D284002 */  daddu      $a1, $s2, $zero
    /* F7D3C 001F6DBC 88D9070C */  jal        func_001F6620
    /* F7D40 001F6DC0 2D202002 */   daddu     $a0, $s1, $zero
    /* F7D44 001F6DC4 23800202 */  subu       $s0, $s0, $v0
    /* F7D48 001F6DC8 1AD2070C */  jal        func_001F4868
    /* F7D4C 001F6DCC 02000424 */   addiu     $a0, $zero, 0x2
    /* F7D50 001F6DD0 1E000A3C */  lui        $t2, %hi(D_001DF770)
    /* F7D54 001F6DD4 2D200002 */  daddu      $a0, $s0, $zero
    /* F7D58 001F6DD8 2D286002 */  daddu      $a1, $s3, $zero
    /* F7D5C 001F6DDC 2D308002 */  daddu      $a2, $s4, $zero
    /* F7D60 001F6DE0 2D382002 */  daddu      $a3, $s1, $zero
    /* F7D64 001F6DE4 2D404002 */  daddu      $t0, $s2, $zero
    /* F7D68 001F6DE8 2D484000 */  daddu      $t1, $v0, $zero
    /* F7D6C 001F6DEC 9AD9070C */  jal        func_001F6668
    /* F7D70 001F6DF0 70F74A25 */   addiu     $t2, $t2, %lo(D_001DF770)
    /* F7D74 001F6DF4 5000BF7B */  lq         $ra, 0x50($sp)
    /* F7D78 001F6DF8 4000B47B */  lq         $s4, 0x40($sp)
    /* F7D7C 001F6DFC 3000B37B */  lq         $s3, 0x30($sp)
    /* F7D80 001F6E00 2000B27B */  lq         $s2, 0x20($sp)
    /* F7D84 001F6E04 1000B17B */  lq         $s1, 0x10($sp)
    /* F7D88 001F6E08 0000B07B */  lq         $s0, 0x0($sp)
    /* F7D8C 001F6E0C 0800E003 */  jr         $ra
    /* F7D90 001F6E10 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F6D88
    /* F7D94 001F6E14 00000000 */  nop
