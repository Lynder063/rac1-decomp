.align 3
nonmatching func_001F6CF8, 0x8C

glabel func_001F6CF8
    /* F7C78 001F6CF8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F7C7C 001F6CFC 3000B37F */  sq         $s3, 0x30($sp)
    /* F7C80 001F6D00 2000B27F */  sq         $s2, 0x20($sp)
    /* F7C84 001F6D04 2D98A000 */  daddu      $s3, $a1, $zero
    /* F7C88 001F6D08 1000B17F */  sq         $s1, 0x10($sp)
    /* F7C8C 001F6D0C 2D900001 */  daddu      $s2, $t0, $zero
    /* F7C90 001F6D10 0000B07F */  sq         $s0, 0x0($sp)
    /* F7C94 001F6D14 2D88E000 */  daddu      $s1, $a3, $zero
    /* F7C98 001F6D18 4000B47F */  sq         $s4, 0x40($sp)
    /* F7C9C 001F6D1C 2D808000 */  daddu      $s0, $a0, $zero
    /* F7CA0 001F6D20 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7CA4 001F6D24 2DA0C000 */  daddu      $s4, $a2, $zero
    /* F7CA8 001F6D28 2D284002 */  daddu      $a1, $s2, $zero
    /* F7CAC 001F6D2C 80D9070C */  jal        func_001F6600
    /* F7CB0 001F6D30 2D202002 */   daddu     $a0, $s1, $zero
    /* F7CB4 001F6D34 23800202 */  subu       $s0, $s0, $v0
    /* F7CB8 001F6D38 1AD2070C */  jal        func_001F4868
    /* F7CBC 001F6D3C 01000424 */   addiu     $a0, $zero, 0x1
    /* F7CC0 001F6D40 1E000A3C */  lui        $t2, %hi(D_001DF3D0)
    /* F7CC4 001F6D44 2D200002 */  daddu      $a0, $s0, $zero
    /* F7CC8 001F6D48 2D286002 */  daddu      $a1, $s3, $zero
    /* F7CCC 001F6D4C 2D308002 */  daddu      $a2, $s4, $zero
    /* F7CD0 001F6D50 2D382002 */  daddu      $a3, $s1, $zero
    /* F7CD4 001F6D54 2D404002 */  daddu      $t0, $s2, $zero
    /* F7CD8 001F6D58 2D484000 */  daddu      $t1, $v0, $zero
    /* F7CDC 001F6D5C 9AD9070C */  jal        func_001F6668
    /* F7CE0 001F6D60 D0F34A25 */   addiu     $t2, $t2, %lo(D_001DF3D0)
    /* F7CE4 001F6D64 5000BF7B */  lq         $ra, 0x50($sp)
    /* F7CE8 001F6D68 4000B47B */  lq         $s4, 0x40($sp)
    /* F7CEC 001F6D6C 3000B37B */  lq         $s3, 0x30($sp)
    /* F7CF0 001F6D70 2000B27B */  lq         $s2, 0x20($sp)
    /* F7CF4 001F6D74 1000B17B */  lq         $s1, 0x10($sp)
    /* F7CF8 001F6D78 0000B07B */  lq         $s0, 0x0($sp)
    /* F7CFC 001F6D7C 0800E003 */  jr         $ra
    /* F7D00 001F6D80 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F6CF8
    /* F7D04 001F6D84 00000000 */  nop
