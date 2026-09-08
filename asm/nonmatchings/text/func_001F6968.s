.align 3
nonmatching func_001F6968, 0x7C

glabel func_001F6968
    /* F78E8 001F6968 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F78EC 001F696C 0000B07F */  sq         $s0, 0x0($sp)
    /* F78F0 001F6970 4000B47F */  sq         $s4, 0x40($sp)
    /* F78F4 001F6974 2D808000 */  daddu      $s0, $a0, $zero
    /* F78F8 001F6978 3000B37F */  sq         $s3, 0x30($sp)
    /* F78FC 001F697C 2DA00001 */  daddu      $s4, $t0, $zero
    /* F7900 001F6980 2000B27F */  sq         $s2, 0x20($sp)
    /* F7904 001F6984 2D98E000 */  daddu      $s3, $a3, $zero
    /* F7908 001F6988 1000B17F */  sq         $s1, 0x10($sp)
    /* F790C 001F698C 2D90C000 */  daddu      $s2, $a2, $zero
    /* F7910 001F6990 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7914 001F6994 2D88A000 */  daddu      $s1, $a1, $zero
    /* F7918 001F6998 1AD2070C */  jal        func_001F4868
    /* F791C 001F699C 02000424 */   addiu     $a0, $zero, 0x2
    /* F7920 001F69A0 1E000A3C */  lui        $t2, %hi(D_001DF770)
    /* F7924 001F69A4 2D200002 */  daddu      $a0, $s0, $zero
    /* F7928 001F69A8 2D282002 */  daddu      $a1, $s1, $zero
    /* F792C 001F69AC 2D304002 */  daddu      $a2, $s2, $zero
    /* F7930 001F69B0 2D386002 */  daddu      $a3, $s3, $zero
    /* F7934 001F69B4 2D408002 */  daddu      $t0, $s4, $zero
    /* F7938 001F69B8 2D484000 */  daddu      $t1, $v0, $zero
    /* F793C 001F69BC 9AD9070C */  jal        func_001F6668
    /* F7940 001F69C0 70F74A25 */   addiu     $t2, $t2, %lo(D_001DF770)
    /* F7944 001F69C4 5000BF7B */  lq         $ra, 0x50($sp)
    /* F7948 001F69C8 4000B47B */  lq         $s4, 0x40($sp)
    /* F794C 001F69CC 3000B37B */  lq         $s3, 0x30($sp)
    /* F7950 001F69D0 2000B27B */  lq         $s2, 0x20($sp)
    /* F7954 001F69D4 1000B17B */  lq         $s1, 0x10($sp)
    /* F7958 001F69D8 0000B07B */  lq         $s0, 0x0($sp)
    /* F795C 001F69DC 0800E003 */  jr         $ra
    /* F7960 001F69E0 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F6968
    /* F7964 001F69E4 00000000 */  nop
