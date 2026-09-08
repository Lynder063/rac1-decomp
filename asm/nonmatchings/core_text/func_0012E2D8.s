.align 3
nonmatching func_0012E2D8, 0x3C

glabel func_0012E2D8
    /* 2F258 0012E2D8 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 2F25C 0012E2DC 00000000 */  nop
    /* 2F260 0012E2E0 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 2F264 0012E2E4 00000000 */  nop
.align 2
  alabel func_0012E2E8
    /* 2F268 0012E2E8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2F26C 0012E2EC 08000424 */  addiu      $a0, $zero, 0x8
    /* 2F270 0012E2F0 0000BF7F */  sq         $ra, 0x0($sp)
    /* 2F274 0012E2F4 2D280000 */  daddu      $a1, $zero, $zero
    /* 2F278 0012E2F8 2D300000 */  daddu      $a2, $zero, $zero
    /* 2F27C 0012E2FC 2D380000 */  daddu      $a3, $zero, $zero
    /* 2F280 0012E300 08BA040C */  jal        func_0012E820
    /* 2F284 0012E304 2D400000 */   daddu     $t0, $zero, $zero
    /* 2F288 0012E308 0000BF7B */  lq         $ra, 0x0($sp)
    /* 2F28C 0012E30C 0800E003 */  jr         $ra
    /* 2F290 0012E310 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012E2D8
    /* 2F294 0012E314 00000000 */  nop
