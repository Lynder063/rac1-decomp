.align 3
nonmatching func_0023C2E8, 0xA8

glabel func_0023C2E8
    /* 13D268 0023C2E8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 13D26C 0023C2EC 1000B07F */  sq         $s0, 0x10($sp)
    /* 13D270 0023C2F0 4000B37F */  sq         $s3, 0x40($sp)
    /* 13D274 0023C2F4 2D808000 */  daddu      $s0, $a0, $zero
    /* 13D278 0023C2F8 3000B27F */  sq         $s2, 0x30($sp)
    /* 13D27C 0023C2FC 2D98E000 */  daddu      $s3, $a3, $zero
    /* 13D280 0023C300 2000B17F */  sq         $s1, 0x20($sp)
    /* 13D284 0023C304 2D90C000 */  daddu      $s2, $a2, $zero
    /* 13D288 0023C308 2D88A000 */  daddu      $s1, $a1, $zero
    /* 13D28C 0023C30C 5000BF7F */  sq         $ra, 0x50($sp)
    /* 13D290 0023C310 6063040C */  jal        func_00118D80
    /* 13D294 0023C314 2D200000 */   daddu     $a0, $zero, $zero
    /* 13D298 0023C318 4800028E */  lw         $v0, 0x48($s0)
    /* 13D29C 0023C31C 0000B1AF */  sw         $s1, 0x0($sp)
    /* 13D2A0 0023C320 0400A2AF */  sw         $v0, 0x4($sp)
    /* 13D2A4 0023C324 0800B2AF */  sw         $s2, 0x8($sp)
    /* 13D2A8 0023C328 0C00A0AF */  sw         $zero, 0xC($sp)
    /* 13D2AC 0023C32C 2D20A003 */  daddu      $a0, $sp, $zero
.align 2
  .L0023C330:
    /* 13D2B0 0023C330 8863040C */  jal        func_00118E20
    /* 13D2B4 0023C334 01000524 */   addiu     $a1, $zero, 0x1
    /* 13D2B8 0023C338 2D804000 */  daddu      $s0, $v0, $zero
    /* 13D2BC 0023C33C 00000000 */  nop
    /* 13D2C0 0023C340 00000000 */  nop
    /* 13D2C4 0023C344 FAFF0012 */  beqz       $s0, .L0023C330
    /* 13D2C8 0023C348 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13D2CC 0023C34C 00000000 */  nop
.align 2
  .L0023C350:
    /* 13D2D0 0023C350 8463040C */  jal        func_00118E10
    /* 13D2D4 0023C354 2D200002 */   daddu     $a0, $s0, $zero
    /* 13D2D8 0023C358 00000000 */  nop
    /* 13D2DC 0023C35C 00000000 */  nop
    /* 13D2E0 0023C360 00000000 */  nop
    /* 13D2E4 0023C364 FAFF4104 */  bgez       $v0, .L0023C350
    /* 13D2E8 0023C368 2D204002 */   daddu     $a0, $s2, $zero
    /* 13D2EC 0023C36C A2BC040C */  jal        func_0012F288
    /* 13D2F0 0023C370 2D286002 */   daddu     $a1, $s3, $zero
    /* 13D2F4 0023C374 5000BF7B */  lq         $ra, 0x50($sp)
    /* 13D2F8 0023C378 4000B37B */  lq         $s3, 0x40($sp)
    /* 13D2FC 0023C37C 3000B27B */  lq         $s2, 0x30($sp)
    /* 13D300 0023C380 2000B17B */  lq         $s1, 0x20($sp)
    /* 13D304 0023C384 1000B07B */  lq         $s0, 0x10($sp)
    /* 13D308 0023C388 0800E003 */  jr         $ra
    /* 13D30C 0023C38C 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0023C2E8
