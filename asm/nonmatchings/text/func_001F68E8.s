.align 3
nonmatching func_001F68E8, 0x7C

glabel func_001F68E8
    /* F7868 001F68E8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F786C 001F68EC 0000B07F */  sq         $s0, 0x0($sp)
    /* F7870 001F68F0 4000B47F */  sq         $s4, 0x40($sp)
    /* F7874 001F68F4 2D808000 */  daddu      $s0, $a0, $zero
    /* F7878 001F68F8 3000B37F */  sq         $s3, 0x30($sp)
    /* F787C 001F68FC 2DA00001 */  daddu      $s4, $t0, $zero
    /* F7880 001F6900 2000B27F */  sq         $s2, 0x20($sp)
    /* F7884 001F6904 2D98E000 */  daddu      $s3, $a3, $zero
    /* F7888 001F6908 1000B17F */  sq         $s1, 0x10($sp)
    /* F788C 001F690C 2D90C000 */  daddu      $s2, $a2, $zero
    /* F7890 001F6910 5000BF7F */  sq         $ra, 0x50($sp)
    /* F7894 001F6914 2D88A000 */  daddu      $s1, $a1, $zero
    /* F7898 001F6918 1AD2070C */  jal        func_001F4868
    /* F789C 001F691C 01000424 */   addiu     $a0, $zero, 0x1
    /* F78A0 001F6920 1E000A3C */  lui        $t2, %hi(D_001DF3D0)
    /* F78A4 001F6924 2D200002 */  daddu      $a0, $s0, $zero
    /* F78A8 001F6928 2D282002 */  daddu      $a1, $s1, $zero
    /* F78AC 001F692C 2D304002 */  daddu      $a2, $s2, $zero
    /* F78B0 001F6930 2D386002 */  daddu      $a3, $s3, $zero
    /* F78B4 001F6934 2D408002 */  daddu      $t0, $s4, $zero
    /* F78B8 001F6938 2D484000 */  daddu      $t1, $v0, $zero
    /* F78BC 001F693C 9AD9070C */  jal        func_001F6668
    /* F78C0 001F6940 D0F34A25 */   addiu     $t2, $t2, %lo(D_001DF3D0)
    /* F78C4 001F6944 5000BF7B */  lq         $ra, 0x50($sp)
    /* F78C8 001F6948 4000B47B */  lq         $s4, 0x40($sp)
    /* F78CC 001F694C 3000B37B */  lq         $s3, 0x30($sp)
    /* F78D0 001F6950 2000B27B */  lq         $s2, 0x20($sp)
    /* F78D4 001F6954 1000B17B */  lq         $s1, 0x10($sp)
    /* F78D8 001F6958 0000B07B */  lq         $s0, 0x0($sp)
    /* F78DC 001F695C 0800E003 */  jr         $ra
    /* F78E0 001F6960 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F68E8
    /* F78E4 001F6964 00000000 */  nop
