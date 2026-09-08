.align 3
nonmatching func_001F6E18, 0x8C

glabel func_001F6E18
    /* F7D98 001F6E18 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F7D9C 001F6E1C 3000B37F */  sq         $s3, 0x30($sp)
    /* F7DA0 001F6E20 2000B27F */  sq         $s2, 0x20($sp)
    /* F7DA4 001F6E24 2D98A000 */  daddu      $s3, $a1, $zero
    /* F7DA8 001F6E28 1000B17F */  sq         $s1, 0x10($sp)
    /* F7DAC 001F6E2C 2D900001 */  daddu      $s2, $t0, $zero
    /* F7DB0 001F6E30 0000B07F */  sq         $s0, 0x0($sp)
    /* F7DB4 001F6E34 2D88E000 */  daddu      $s1, $a3, $zero
    /* F7DB8 001F6E38 4000B47F */  sq         $s4, 0x40($sp)
    /* F7DBC 001F6E3C 2D808000 */  daddu      $s0, $a0, $zero
    /* F7DC0 001F6E40 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7DC4 001F6E44 2DA0C000 */  daddu      $s4, $a2, $zero
    /* F7DC8 001F6E48 2D284002 */  daddu      $a1, $s2, $zero
    /* F7DCC 001F6E4C 90D9070C */  jal        func_001F6640
    /* F7DD0 001F6E50 2D202002 */   daddu     $a0, $s1, $zero
    /* F7DD4 001F6E54 23800202 */  subu       $s0, $s0, $v0
    /* F7DD8 001F6E58 1AD2070C */  jal        func_001F4868
    /* F7DDC 001F6E5C 03000424 */   addiu     $a0, $zero, 0x3
    /* F7DE0 001F6E60 1E000A3C */  lui        $t2, %hi(D_001DFB10)
    /* F7DE4 001F6E64 2D200002 */  daddu      $a0, $s0, $zero
    /* F7DE8 001F6E68 2D286002 */  daddu      $a1, $s3, $zero
    /* F7DEC 001F6E6C 2D308002 */  daddu      $a2, $s4, $zero
    /* F7DF0 001F6E70 2D382002 */  daddu      $a3, $s1, $zero
    /* F7DF4 001F6E74 2D404002 */  daddu      $t0, $s2, $zero
    /* F7DF8 001F6E78 2D484000 */  daddu      $t1, $v0, $zero
    /* F7DFC 001F6E7C 9AD9070C */  jal        func_001F6668
    /* F7E00 001F6E80 10FB4A25 */   addiu     $t2, $t2, %lo(D_001DFB10)
    /* F7E04 001F6E84 5000BF7B */  lq         $ra, 0x50($sp)
    /* F7E08 001F6E88 4000B47B */  lq         $s4, 0x40($sp)
    /* F7E0C 001F6E8C 3000B37B */  lq         $s3, 0x30($sp)
    /* F7E10 001F6E90 2000B27B */  lq         $s2, 0x20($sp)
    /* F7E14 001F6E94 1000B17B */  lq         $s1, 0x10($sp)
    /* F7E18 001F6E98 0000B07B */  lq         $s0, 0x0($sp)
    /* F7E1C 001F6E9C 0800E003 */  jr         $ra
    /* F7E20 001F6EA0 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F6E18
    /* F7E24 001F6EA4 00000000 */  nop
