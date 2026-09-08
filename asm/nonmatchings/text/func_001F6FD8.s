.align 3
nonmatching func_001F6FD8, 0x94

glabel func_001F6FD8
    /* F7F58 001F6FD8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F7F5C 001F6FDC 3000B37F */  sq         $s3, 0x30($sp)
    /* F7F60 001F6FE0 2000B27F */  sq         $s2, 0x20($sp)
    /* F7F64 001F6FE4 2D98A000 */  daddu      $s3, $a1, $zero
    /* F7F68 001F6FE8 1000B17F */  sq         $s1, 0x10($sp)
    /* F7F6C 001F6FEC 2D900001 */  daddu      $s2, $t0, $zero
    /* F7F70 001F6FF0 0000B07F */  sq         $s0, 0x0($sp)
    /* F7F74 001F6FF4 2D88E000 */  daddu      $s1, $a3, $zero
    /* F7F78 001F6FF8 4000B47F */  sq         $s4, 0x40($sp)
    /* F7F7C 001F6FFC 2D808000 */  daddu      $s0, $a0, $zero
    /* F7F80 001F7000 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7F84 001F7004 2DA0C000 */  daddu      $s4, $a2, $zero
    /* F7F88 001F7008 2D284002 */  daddu      $a1, $s2, $zero
    /* F7F8C 001F700C 90D9070C */  jal        func_001F6640
    /* F7F90 001F7010 2D202002 */   daddu     $a0, $s1, $zero
    /* F7F94 001F7014 43100200 */  sra        $v0, $v0, 1
    /* F7F98 001F7018 03000424 */  addiu      $a0, $zero, 0x3
    /* F7F9C 001F701C 1AD2070C */  jal        func_001F4868
    /* F7FA0 001F7020 23800202 */   subu      $s0, $s0, $v0
    /* F7FA4 001F7024 1E000A3C */  lui        $t2, %hi(D_001DFB10)
    /* F7FA8 001F7028 2D484000 */  daddu      $t1, $v0, $zero
    /* F7FAC 001F702C 2D286002 */  daddu      $a1, $s3, $zero
    /* F7FB0 001F7030 2D308002 */  daddu      $a2, $s4, $zero
    /* F7FB4 001F7034 2D382002 */  daddu      $a3, $s1, $zero
    /* F7FB8 001F7038 2D404002 */  daddu      $t0, $s2, $zero
    /* F7FBC 001F703C 2D200002 */  daddu      $a0, $s0, $zero
    /* F7FC0 001F7040 9AD9070C */  jal        func_001F6668
    /* F7FC4 001F7044 10FB4A25 */   addiu     $t2, $t2, %lo(D_001DFB10)
    /* F7FC8 001F7048 2D100002 */  daddu      $v0, $s0, $zero
    /* F7FCC 001F704C 5000BF7B */  lq         $ra, 0x50($sp)
    /* F7FD0 001F7050 4000B47B */  lq         $s4, 0x40($sp)
    /* F7FD4 001F7054 3000B37B */  lq         $s3, 0x30($sp)
    /* F7FD8 001F7058 2000B27B */  lq         $s2, 0x20($sp)
    /* F7FDC 001F705C 1000B17B */  lq         $s1, 0x10($sp)
    /* F7FE0 001F7060 0000B07B */  lq         $s0, 0x0($sp)
    /* F7FE4 001F7064 0800E003 */  jr         $ra
    /* F7FE8 001F7068 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F6FD8
    /* F7FEC 001F706C 00000000 */  nop
