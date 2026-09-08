.align 3
nonmatching func_0023D988, 0x58

glabel func_0023D988
    /* 13E908 0023D988 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13E90C 0023D98C 0000B07F */  sq         $s0, 0x0($sp)
    /* 13E910 0023D990 2D808000 */  daddu      $s0, $a0, $zero
    /* 13E914 0023D994 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13E918 0023D998 E0F3080C */  jal        func_0023CF80
    /* 13E91C 0023D99C 05000424 */   addiu     $a0, $zero, 0x5
    /* 13E920 0023D9A0 0010033C */  lui        $v1, (0x1000B420 >> 16)
    /* 13E924 0023D9A4 0010043C */  lui        $a0, (0x1000B410 >> 16)
    /* 13E928 0023D9A8 20B46334 */  ori        $v1, $v1, (0x1000B420 & 0xFFFF)
    /* 13E92C 0023D9AC 10B48434 */  ori        $a0, $a0, (0x1000B410 & 0xFFFF)
    /* 13E930 0023D9B0 000060AC */  sw         $zero, 0x0($v1)
    /* 13E934 0023D9B4 0010023C */  lui        $v0, (0x1000B430 >> 16)
    /* 13E938 0023D9B8 000080AC */  sw         $zero, 0x0($a0)
    /* 13E93C 0023D9BC 30B44234 */  ori        $v0, $v0, (0x1000B430 & 0xFFFF)
    /* 13E940 0023D9C0 000040AC */  sw         $zero, 0x0($v0)
    /* 13E944 0023D9C4 2063040C */  jal        func_00118C80
    /* 13E948 0023D9C8 4000048E */   lw        $a0, 0x40($s0)
    /* 13E94C 0023D9CC 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13E950 0023D9D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 13E954 0023D9D4 0000B07B */  lq         $s0, 0x0($sp)
    /* 13E958 0023D9D8 0800E003 */  jr         $ra
    /* 13E95C 0023D9DC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023D988
