.align 3
nonmatching func_001F6EA8, 0x94

glabel func_001F6EA8
    /* F7E28 001F6EA8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F7E2C 001F6EAC 3000B37F */  sq         $s3, 0x30($sp)
    /* F7E30 001F6EB0 2000B27F */  sq         $s2, 0x20($sp)
    /* F7E34 001F6EB4 2D98A000 */  daddu      $s3, $a1, $zero
    /* F7E38 001F6EB8 1000B17F */  sq         $s1, 0x10($sp)
    /* F7E3C 001F6EBC 2D900001 */  daddu      $s2, $t0, $zero
    /* F7E40 001F6EC0 0000B07F */  sq         $s0, 0x0($sp)
    /* F7E44 001F6EC4 2D88E000 */  daddu      $s1, $a3, $zero
    /* F7E48 001F6EC8 4000B47F */  sq         $s4, 0x40($sp)
    /* F7E4C 001F6ECC 2D808000 */  daddu      $s0, $a0, $zero
    /* F7E50 001F6ED0 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7E54 001F6ED4 2DA0C000 */  daddu      $s4, $a2, $zero
    /* F7E58 001F6ED8 2D284002 */  daddu      $a1, $s2, $zero
    /* F7E5C 001F6EDC 80D9070C */  jal        func_001F6600
    /* F7E60 001F6EE0 2D202002 */   daddu     $a0, $s1, $zero
    /* F7E64 001F6EE4 43100200 */  sra        $v0, $v0, 1
    /* F7E68 001F6EE8 01000424 */  addiu      $a0, $zero, 0x1
    /* F7E6C 001F6EEC 1AD2070C */  jal        func_001F4868
    /* F7E70 001F6EF0 23800202 */   subu      $s0, $s0, $v0
    /* F7E74 001F6EF4 1E000A3C */  lui        $t2, %hi(D_001DF3D0)
    /* F7E78 001F6EF8 2D484000 */  daddu      $t1, $v0, $zero
    /* F7E7C 001F6EFC 2D286002 */  daddu      $a1, $s3, $zero
    /* F7E80 001F6F00 2D308002 */  daddu      $a2, $s4, $zero
    /* F7E84 001F6F04 2D382002 */  daddu      $a3, $s1, $zero
    /* F7E88 001F6F08 2D404002 */  daddu      $t0, $s2, $zero
    /* F7E8C 001F6F0C 2D200002 */  daddu      $a0, $s0, $zero
    /* F7E90 001F6F10 9AD9070C */  jal        func_001F6668
    /* F7E94 001F6F14 D0F34A25 */   addiu     $t2, $t2, %lo(D_001DF3D0)
    /* F7E98 001F6F18 2D100002 */  daddu      $v0, $s0, $zero
    /* F7E9C 001F6F1C 5000BF7B */  lq         $ra, 0x50($sp)
    /* F7EA0 001F6F20 4000B47B */  lq         $s4, 0x40($sp)
    /* F7EA4 001F6F24 3000B37B */  lq         $s3, 0x30($sp)
    /* F7EA8 001F6F28 2000B27B */  lq         $s2, 0x20($sp)
    /* F7EAC 001F6F2C 1000B17B */  lq         $s1, 0x10($sp)
    /* F7EB0 001F6F30 0000B07B */  lq         $s0, 0x0($sp)
    /* F7EB4 001F6F34 0800E003 */  jr         $ra
    /* F7EB8 001F6F38 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F6EA8
    /* F7EBC 001F6F3C 00000000 */  nop
