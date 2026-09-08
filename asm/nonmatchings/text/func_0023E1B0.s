.align 3
nonmatching func_0023E1B0, 0x48

glabel func_0023E1B0
    /* 13F130 0023E1B0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 13F134 0023E1B4 0000B07F */  sq         $s0, 0x0($sp)
    /* 13F138 0023E1B8 1000B17F */  sq         $s1, 0x10($sp)
    /* 13F13C 0023E1BC 2D808000 */  daddu      $s0, $a0, $zero
    /* 13F140 0023E1C0 2000BF7F */  sq         $ra, 0x20($sp)
    /* 13F144 0023E1C4 2CF8080C */  jal        func_0023E0B0
    /* 13F148 0023E1C8 2D880000 */   daddu     $s1, $zero, $zero
    /* 13F14C 0023E1CC 05004014 */  bnez       $v0, .L0023E1E4
    /* 13F150 0023E1D0 2D102002 */   daddu     $v0, $s1, $zero
    /* 13F154 0023E1D4 E6AE040C */  jal        func_0012BB98
    /* 13F158 0023E1D8 2D200002 */   daddu     $a0, $s0, $zero
    /* 13F15C 0023E1DC 2B880200 */  sltu       $s1, $zero, $v0
    /* 13F160 0023E1E0 2D102002 */  daddu      $v0, $s1, $zero
.align 2
  .L0023E1E4:
    /* 13F164 0023E1E4 2000BF7B */  lq         $ra, 0x20($sp)
    /* 13F168 0023E1E8 1000B17B */  lq         $s1, 0x10($sp)
    /* 13F16C 0023E1EC 0000B07B */  lq         $s0, 0x0($sp)
    /* 13F170 0023E1F0 0800E003 */  jr         $ra
    /* 13F174 0023E1F4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0023E1B0
