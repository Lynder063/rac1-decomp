.align 3
nonmatching func_0012C8B0, 0xE0

glabel func_0012C8B0
    /* 2D830 0012C8B0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2D834 0012C8B4 FF0F0E3C */  lui        $t6, (0xFFFFFFF >> 16)
    /* 2D838 0012C8B8 7800A28F */  lw         $v0, 0x78($sp)
    /* 2D83C 0012C8BC FFFFCE35 */  ori        $t6, $t6, (0xFFFFFFF & 0xFFFF)
    /* 2D840 0012C8C0 7000A38F */  lw         $v1, 0x70($sp)
    /* 2D844 0012C8C4 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2D848 0012C8C8 18186200 */  mult       $v1, $v1, $v0
    /* 2D84C 0012C8CC FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 2D850 0012C8D0 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2D854 0012C8D4 80011224 */  addiu      $s2, $zero, 0x180
    /* 2D858 0012C8D8 5800AC8F */  lw         $t4, 0x58($sp)
    /* 2D85C 0012C8DC 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2D860 0012C8E0 2A800302 */  slt        $s0, $s0, $v1
    /* 2D864 0012C8E4 FF016224 */  addiu      $v0, $v1, 0x1FF
    /* 2D868 0012C8E8 0B107000 */  movn       $v0, $v1, $s0
    /* 2D86C 0012C8EC 24888E01 */  and        $s1, $t4, $t6
    /* 2D870 0012C8F0 43120200 */  sra        $v0, $v0, 9
    /* 2D874 0012C8F4 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2D878 0012C8F8 18185200 */  mult       $v1, $v0, $s2
    /* 2D87C 0012C8FC 6000AD8F */  lw         $t5, 0x60($sp)
    /* 2D880 0012C900 0020133C */  lui        $s3, (0x20000000 >> 16)
    /* 2D884 0012C904 4000B4FF */  sd         $s4, 0x40($sp)
    /* 2D888 0012C908 6800B48F */  lw         $s4, 0x68($sp)
    /* 2D88C 0012C90C 25883302 */  or         $s1, $s1, $s3
    /* 2D890 0012C910 2478AE01 */  and        $t7, $t5, $t6
    /* 2D894 0012C914 000091AC */  sw         $s1, 0x0($a0)
    /* 2D898 0012C918 21606C00 */  addu       $t4, $v1, $t4
    /* 2D89C 0012C91C 2578F301 */  or         $t7, $t7, $s3
    /* 2D8A0 0012C920 18185200 */  mult       $v1, $v0, $s2
    /* 2D8A4 0012C924 18205200 */  mult       $a0, $v0, $s2
    /* 2D8A8 0012C928 0000AFAC */  sw         $t7, 0x0($a1)
    /* 2D8AC 0012C92C 24608E01 */  and        $t4, $t4, $t6
    /* 2D8B0 0012C930 25609301 */  or         $t4, $t4, $s3
    /* 2D8B4 0012C934 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2D8B8 0012C938 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2D8BC 0012C93C 21686D00 */  addu       $t5, $v1, $t5
    /* 2D8C0 0012C940 21109400 */  addu       $v0, $a0, $s4
    /* 2D8C4 0012C944 24188E02 */  and        $v1, $s4, $t6
    /* 2D8C8 0012C948 2468AE01 */  and        $t5, $t5, $t6
    /* 2D8CC 0012C94C 25187300 */  or         $v1, $v1, $s3
    /* 2D8D0 0012C950 24104E00 */  and        $v0, $v0, $t6
    /* 2D8D4 0012C954 0000C3AC */  sw         $v1, 0x0($a2)
    /* 2D8D8 0012C958 2568B301 */  or         $t5, $t5, $s3
    /* 2D8DC 0012C95C 0000F1AC */  sw         $s1, 0x0($a3)
    /* 2D8E0 0012C960 25105300 */  or         $v0, $v0, $s3
    /* 2D8E4 0012C964 00000FAD */  sw         $t7, 0x0($t0)
    /* 2D8E8 0012C968 000023AD */  sw         $v1, 0x0($t1)
    /* 2D8EC 0012C96C 00004CAD */  sw         $t4, 0x0($t2)
    /* 2D8F0 0012C970 5000A38F */  lw         $v1, 0x50($sp)
    /* 2D8F4 0012C974 00006DAD */  sw         $t5, 0x0($t3)
    /* 2D8F8 0012C978 4000B4DF */  ld         $s4, 0x40($sp)
    /* 2D8FC 0012C97C 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2D900 0012C980 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2D904 0012C984 000062AC */  sw         $v0, 0x0($v1)
    /* 2D908 0012C988 0800E003 */  jr         $ra
    /* 2D90C 0012C98C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012C8B0
