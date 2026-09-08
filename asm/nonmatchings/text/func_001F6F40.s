.align 3
nonmatching func_001F6F40, 0x94

glabel func_001F6F40
    /* F7EC0 001F6F40 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F7EC4 001F6F44 3000B37F */  sq         $s3, 0x30($sp)
    /* F7EC8 001F6F48 2000B27F */  sq         $s2, 0x20($sp)
    /* F7ECC 001F6F4C 2D98A000 */  daddu      $s3, $a1, $zero
    /* F7ED0 001F6F50 1000B17F */  sq         $s1, 0x10($sp)
    /* F7ED4 001F6F54 2D900001 */  daddu      $s2, $t0, $zero
    /* F7ED8 001F6F58 0000B07F */  sq         $s0, 0x0($sp)
    /* F7EDC 001F6F5C 2D88E000 */  daddu      $s1, $a3, $zero
    /* F7EE0 001F6F60 4000B47F */  sq         $s4, 0x40($sp)
    /* F7EE4 001F6F64 2D808000 */  daddu      $s0, $a0, $zero
    /* F7EE8 001F6F68 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7EEC 001F6F6C 2DA0C000 */  daddu      $s4, $a2, $zero
    /* F7EF0 001F6F70 2D284002 */  daddu      $a1, $s2, $zero
    /* F7EF4 001F6F74 88D9070C */  jal        func_001F6620
    /* F7EF8 001F6F78 2D202002 */   daddu     $a0, $s1, $zero
    /* F7EFC 001F6F7C 43100200 */  sra        $v0, $v0, 1
    /* F7F00 001F6F80 02000424 */  addiu      $a0, $zero, 0x2
    /* F7F04 001F6F84 1AD2070C */  jal        func_001F4868
    /* F7F08 001F6F88 23800202 */   subu      $s0, $s0, $v0
    /* F7F0C 001F6F8C 1E000A3C */  lui        $t2, %hi(D_001DF770)
    /* F7F10 001F6F90 2D484000 */  daddu      $t1, $v0, $zero
    /* F7F14 001F6F94 2D286002 */  daddu      $a1, $s3, $zero
    /* F7F18 001F6F98 2D308002 */  daddu      $a2, $s4, $zero
    /* F7F1C 001F6F9C 2D382002 */  daddu      $a3, $s1, $zero
    /* F7F20 001F6FA0 2D404002 */  daddu      $t0, $s2, $zero
    /* F7F24 001F6FA4 2D200002 */  daddu      $a0, $s0, $zero
    /* F7F28 001F6FA8 9AD9070C */  jal        func_001F6668
    /* F7F2C 001F6FAC 70F74A25 */   addiu     $t2, $t2, %lo(D_001DF770)
    /* F7F30 001F6FB0 2D100002 */  daddu      $v0, $s0, $zero
    /* F7F34 001F6FB4 5000BF7B */  lq         $ra, 0x50($sp)
    /* F7F38 001F6FB8 4000B47B */  lq         $s4, 0x40($sp)
    /* F7F3C 001F6FBC 3000B37B */  lq         $s3, 0x30($sp)
    /* F7F40 001F6FC0 2000B27B */  lq         $s2, 0x20($sp)
    /* F7F44 001F6FC4 1000B17B */  lq         $s1, 0x10($sp)
    /* F7F48 001F6FC8 0000B07B */  lq         $s0, 0x0($sp)
    /* F7F4C 001F6FCC 0800E003 */  jr         $ra
    /* F7F50 001F6FD0 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F6F40
    /* F7F54 001F6FD4 00000000 */  nop
