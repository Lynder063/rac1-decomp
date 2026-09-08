.align 3
nonmatching func_00116FE8, 0xB4

glabel func_00116FE8
    /* 17F68 00116FE8 70FBBD27 */  addiu      $sp, $sp, -0x490
    /* 17F6C 00116FEC 00040A24 */  addiu      $t2, $zero, 0x400
    /* 17F70 00116FF0 7004B1FF */  sd         $s1, 0x470($sp)
    /* 17F74 00116FF4 6000AB27 */  addiu      $t3, $sp, 0x60
    /* 17F78 00116FF8 6004B0FF */  sd         $s0, 0x460($sp)
    /* 17F7C 00116FFC 2D888000 */  daddu      $s1, $a0, $zero
    /* 17F80 00117000 8004BFFF */  sd         $ra, 0x480($sp)
    /* 17F84 00117004 2D20A003 */  daddu      $a0, $sp, $zero
    /* 17F88 00117008 0C002296 */  lhu        $v0, 0xC($s1)
    /* 17F8C 0011700C 5400288E */  lw         $t0, 0x54($s1)
    /* 17F90 00117010 0E002996 */  lhu        $t1, 0xE($s1)
    /* 17F94 00117014 FDFF4230 */  andi       $v0, $v0, 0xFFFD
    /* 17F98 00117018 1C00278E */  lw         $a3, 0x1C($s1)
    /* 17F9C 0011701C 2400238E */  lw         $v1, 0x24($s1)
    /* 17FA0 00117020 5400A8AF */  sw         $t0, 0x54($sp)
    /* 17FA4 00117024 0C00A2A7 */  sh         $v0, 0xC($sp)
    /* 17FA8 00117028 0E00A9A7 */  sh         $t1, 0xE($sp)
    /* 17FAC 0011702C 1C00A7AF */  sw         $a3, 0x1C($sp)
    /* 17FB0 00117030 2400A3AF */  sw         $v1, 0x24($sp)
    /* 17FB4 00117034 1000ABAF */  sw         $t3, 0x10($sp)
    /* 17FB8 00117038 1400AAAF */  sw         $t2, 0x14($sp)
    /* 17FBC 0011703C 0000ABAF */  sw         $t3, 0x0($sp)
    /* 17FC0 00117040 0800AAAF */  sw         $t2, 0x8($sp)
    /* 17FC4 00117044 285C040C */  jal        func_001170A0
    /* 17FC8 00117048 1800A0AF */   sw        $zero, 0x18($sp)
    /* 17FCC 0011704C 2D804000 */  daddu      $s0, $v0, $zero
    /* 17FD0 00117050 06000006 */  bltz       $s0, .L0011706C
    /* 17FD4 00117054 0C00A297 */   lhu       $v0, 0xC($sp)
    /* 17FD8 00117058 5A4E040C */  jal        func_00113968
    /* 17FDC 0011705C 2D20A003 */   daddu     $a0, $sp, $zero
    /* 17FE0 00117060 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 17FE4 00117064 0B806200 */  movn       $s0, $v1, $v0
    /* 17FE8 00117068 0C00A297 */  lhu        $v0, 0xC($sp)
.align 2
  .L0011706C:
    /* 17FEC 0011706C 40004230 */  andi       $v0, $v0, 0x40
    /* 17FF0 00117070 05004010 */  beqz       $v0, .L00117088
    /* 17FF4 00117074 2D100002 */   daddu     $v0, $s0, $zero
    /* 17FF8 00117078 0C002296 */  lhu        $v0, 0xC($s1)
    /* 17FFC 0011707C 40004234 */  ori        $v0, $v0, 0x40
    /* 18000 00117080 0C0022A6 */  sh         $v0, 0xC($s1)
    /* 18004 00117084 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00117088:
    /* 18008 00117088 8004BFDF */  ld         $ra, 0x480($sp)
    /* 1800C 0011708C 7004B1DF */  ld         $s1, 0x470($sp)
    /* 18010 00117090 6004B0DF */  ld         $s0, 0x460($sp)
    /* 18014 00117094 0800E003 */  jr         $ra
    /* 18018 00117098 9004BD27 */   addiu     $sp, $sp, 0x490
endlabel func_00116FE8
    /* 1801C 0011709C 00000000 */  nop
