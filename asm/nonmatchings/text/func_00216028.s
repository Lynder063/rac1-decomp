.align 3
nonmatching func_00216028, 0x70

glabel func_00216028
    /* 116FA8 00216028 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 116FAC 0021602C 1000B17F */  sq         $s1, 0x10($sp)
    /* 116FB0 00216030 0000B07F */  sq         $s0, 0x0($sp)
    /* 116FB4 00216034 2D888000 */  daddu      $s1, $a0, $zero
    /* 116FB8 00216038 2000BF7F */  sq         $ra, 0x20($sp)
    /* 116FBC 0021603C E057080C */  jal        func_00215F80
    /* 116FC0 00216040 2D80A000 */   daddu     $s0, $a1, $zero
    /* 116FC4 00216044 10004014 */  bnez       $v0, .L00216088
    /* 116FC8 00216048 2000BF7B */   lq        $ra, 0x20($sp)
    /* 116FCC 0021604C 06000012 */  beqz       $s0, .L00216068
    /* 116FD0 00216050 02000224 */   addiu     $v0, $zero, 0x2
    /* 116FD4 00216054 50F9070C */  jal        func_001FE540
    /* 116FD8 00216058 2D200002 */   daddu     $a0, $s0, $zero
    /* 116FDC 0021605C A2FF070C */  jal        func_001FFE88
    /* 116FE0 00216060 2D204000 */   daddu     $a0, $v0, $zero
    /* 116FE4 00216064 02000224 */  addiu      $v0, $zero, 0x2
.align 2
  .L00216068:
    /* 116FE8 00216068 1600013C */  lui        $at, %hi(D_0015F6B4)
    /* 116FEC 0021606C B4F631AC */  sw         $s1, %lo(D_0015F6B4)($at)
    /* 116FF0 00216070 1600013C */  lui        $at, %hi(D_0015F6B0)
    /* 116FF4 00216074 B0F622AC */  sw         $v0, %lo(D_0015F6B0)($at)
    /* 116FF8 00216078 1600013C */  lui        $at, %hi(D_00161388)
    /* 116FFC 0021607C 881330AC */  sw         $s0, %lo(D_00161388)($at)
    /* 117000 00216080 03000224 */  addiu      $v0, $zero, 0x3
    /* 117004 00216084 2000BF7B */  lq         $ra, 0x20($sp)
.align 2
  .L00216088:
    /* 117008 00216088 1000B17B */  lq         $s1, 0x10($sp)
    /* 11700C 0021608C 0000B07B */  lq         $s0, 0x0($sp)
    /* 117010 00216090 0800E003 */  jr         $ra
    /* 117014 00216094 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00216028
