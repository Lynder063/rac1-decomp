.align 3
nonmatching func_0023A948, 0xBC

glabel func_0023A948
    /* 13B8C8 0023A948 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13B8CC 0023A94C 04000324 */  addiu      $v1, $zero, 0x4
    /* 13B8D0 0023A950 1000B17F */  sq         $s1, 0x10($sp)
    /* 13B8D4 0023A954 3F00063C */  lui        $a2, (0x3FF000 >> 16)
    /* 13B8D8 0023A958 0000B07F */  sq         $s0, 0x0($sp)
    /* 13B8DC 0023A95C 2D888000 */  daddu      $s1, $a0, $zero
    /* 13B8E0 0023A960 2D80A000 */  daddu      $s0, $a1, $zero
    /* 13B8E4 0023A964 00F0C634 */  ori        $a2, $a2, (0x3FF000 & 0xFFFF)
    /* 13B8E8 0023A968 21103002 */  addu       $v0, $s1, $s0
    /* 13B8EC 0023A96C 10000524 */  addiu      $a1, $zero, 0x10
    /* 13B8F0 0023A970 11004428 */  slti       $a0, $v0, 0x11
    /* 13B8F4 0023A974 3000B4E7 */  swc1       $f20, 0x30($sp)
    /* 13B8F8 0023A978 0A10A400 */  movz       $v0, $a1, $a0
    /* 13B8FC 0023A97C 2000BF7F */  sq         $ra, 0x20($sp)
    /* 13B900 0023A980 04184300 */  sllv       $v1, $v1, $v0
    /* 13B904 0023A984 2D202002 */  daddu      $a0, $s1, $zero
    /* 13B908 0023A988 2330C300 */  subu       $a2, $a2, $v1
    /* 13B90C 0023A98C 06650046 */  mov.s      $f20, $f12
    /* 13B910 0023A990 43330600 */  sra        $a2, $a2, 13
    /* 13B914 0023A994 2D280002 */  daddu      $a1, $s0, $zero
    /* 13B918 0023A998 82ED070C */  jal        func_001FB608
    /* 13B91C 0023A99C 40330600 */   sll       $a2, $a2, 13
    /* 13B920 0023A9A0 00688044 */  mtc1       $zero, $f13
    /* 13B924 0023A9A4 01000424 */  addiu      $a0, $zero, 0x1
    /* 13B928 0023A9A8 04280402 */  sllv       $a1, $a0, $s0
    /* 13B92C 0023A9AC 0049013C */  lui        $at, (0x49000000 >> 16)
    /* 13B930 0023A9B0 00708144 */  mtc1       $at, $f14
    /* 13B934 0023A9B4 7F43013C */  lui        $at, (0x437F0000 >> 16)
    /* 13B938 0023A9B8 00788144 */  mtc1       $at, $f15
    /* 13B93C 0023A9BC 06A30046 */  mov.s      $f12, $f20
    /* 13B940 0023A9C0 04202402 */  sllv       $a0, $a0, $s1
    /* 13B944 0023A9C4 D8CD070C */  jal        func_001F3760
    /* 13B948 0023A9C8 066C0046 */   mov.s     $f16, $f13
    /* 13B94C 0023A9CC 47000424 */  addiu      $a0, $zero, 0x47
    /* 13B950 0023A9D0 26D3080C */  jal        func_00234C98
    /* 13B954 0023A9D4 0300053C */   lui       $a1, (0x30000 >> 16)
    /* 13B958 0023A9D8 00800534 */  ori        $a1, $zero, 0x8000
    /* 13B95C 0023A9DC 382E0500 */  dsll       $a1, $a1, 24
    /* 13B960 0023A9E0 4400A534 */  ori        $a1, $a1, 0x44
    /* 13B964 0023A9E4 26D3080C */  jal        func_00234C98
    /* 13B968 0023A9E8 42000424 */   addiu     $a0, $zero, 0x42
    /* 13B96C 0023A9EC 2000BF7B */  lq         $ra, 0x20($sp)
    /* 13B970 0023A9F0 1000B17B */  lq         $s1, 0x10($sp)
    /* 13B974 0023A9F4 0000B07B */  lq         $s0, 0x0($sp)
    /* 13B978 0023A9F8 3000B4C7 */  lwc1       $f20, 0x30($sp)
    /* 13B97C 0023A9FC 0800E003 */  jr         $ra
    /* 13B980 0023AA00 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023A948
    /* 13B984 0023AA04 00000000 */  nop
