.align 3
nonmatching func_0022D970, 0x9C

glabel func_0022D970
    /* 12E8F0 0022D970 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 12E8F4 0022D974 1000B07F */  sq         $s0, 0x10($sp)
    /* 12E8F8 0022D978 3000B27F */  sq         $s2, 0x30($sp)
    /* 12E8FC 0022D97C 1800103C */  lui        $s0, %hi(D_00187180)
    /* 12E900 0022D980 2000B17F */  sq         $s1, 0x20($sp)
    /* 12E904 0022D984 80711026 */  addiu      $s0, $s0, %lo(D_00187180)
    /* 12E908 0022D988 2D888000 */  daddu      $s1, $a0, $zero
    /* 12E90C 0022D98C 2D90A000 */  daddu      $s2, $a1, $zero
    /* 12E910 0022D990 4000BF7F */  sq         $ra, 0x40($sp)
    /* 12E914 0022D994 2D20A003 */  daddu      $a0, $sp, $zero
    /* 12E918 0022D998 2D300002 */  daddu      $a2, $s0, $zero
    /* 12E91C 0022D99C FCE6070C */  jal        func_001F9BF0
    /* 12E920 0022D9A0 20002526 */   addiu     $a1, $s1, 0x20
    /* 12E924 0022D9A4 403F013C */  lui        $at, (0x3F400000 >> 16)
    /* 12E928 0022D9A8 00608144 */  mtc1       $at, $f12
    /* 12E92C 0022D9AC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 12E930 0022D9B0 0CE7070C */  jal        func_001F9C30
    /* 12E934 0022D9B4 2D28A003 */   daddu     $a1, $sp, $zero
    /* 12E938 0022D9B8 8042013C */  lui        $at, (0x42800000 >> 16)
    /* 12E93C 0022D9BC 00608144 */  mtc1       $at, $f12
    /* 12E940 0022D9C0 2D20A003 */  daddu      $a0, $sp, $zero
    /* 12E944 0022D9C4 96E7070C */  jal        func_001F9E58
    /* 12E948 0022D9C8 2D28A003 */   daddu     $a1, $sp, $zero
    /* 12E94C 0022D9CC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 12E950 0022D9D0 2D28A003 */  daddu      $a1, $sp, $zero
    /* 12E954 0022D9D4 F6E6070C */  jal        func_001F9BD8
    /* 12E958 0022D9D8 2D300002 */   daddu     $a2, $s0, $zero
    /* 12E95C 0022D9DC 1800278E */  lw         $a3, 0x18($s1)
    /* 12E960 0022D9E0 2D204002 */  daddu      $a0, $s2, $zero
    /* 12E964 0022D9E4 2D28A003 */  daddu      $a1, $sp, $zero
    /* 12E968 0022D9E8 82000624 */  addiu      $a2, $zero, 0x82
    /* 12E96C 0022D9EC 84BF070C */  jal        func_001EFE10
    /* 12E970 0022D9F0 2D400000 */   daddu     $t0, $zero, $zero
    /* 12E974 0022D9F4 4000BF7B */  lq         $ra, 0x40($sp)
    /* 12E978 0022D9F8 3000B27B */  lq         $s2, 0x30($sp)
    /* 12E97C 0022D9FC 2000B17B */  lq         $s1, 0x20($sp)
    /* 12E980 0022DA00 1000B07B */  lq         $s0, 0x10($sp)
    /* 12E984 0022DA04 0800E003 */  jr         $ra
    /* 12E988 0022DA08 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0022D970
    /* 12E98C 0022DA0C 00000000 */  nop
