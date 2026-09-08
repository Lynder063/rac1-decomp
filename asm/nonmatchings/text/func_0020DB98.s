.align 3
nonmatching func_0020DB98, 0xA0

glabel func_0020DB98
    /* 10EB18 0020DB98 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 10EB1C 0020DB9C 803A013C */  lui        $at, (0x3A800000 >> 16)
    /* 10EB20 0020DBA0 00088144 */  mtc1       $at, $f1
    /* 10EB24 0020DBA4 2000B27F */  sq         $s2, 0x20($sp)
    /* 10EB28 0020DBA8 1000B17F */  sq         $s1, 0x10($sp)
    /* 10EB2C 0020DBAC 2D908000 */  daddu      $s2, $a0, $zero
    /* 10EB30 0020DBB0 0000B07F */  sq         $s0, 0x0($sp)
    /* 10EB34 0020DBB4 2D88A000 */  daddu      $s1, $a1, $zero
    /* 10EB38 0020DBB8 4000B4E7 */  swc1       $f20, 0x40($sp)
    /* 10EB3C 0020DBBC 2D80E000 */  daddu      $s0, $a3, $zero
    /* 10EB40 0020DBC0 3000BF7F */  sq         $ra, 0x30($sp)
    /* 10EB44 0020DBC4 2C0040C6 */  lwc1       $f0, 0x2C($s2)
    /* 10EB48 0020DBC8 5245080C */  jal        func_00211548
    /* 10EB4C 0020DBCC 02050146 */   mul.s     $f20, $f0, $f1
    /* 10EB50 0020DBD0 1300201A */  blez       $s1, .L0020DC20
    /* 10EB54 0020DBD4 3000BF7B */   lq        $ra, 0x30($sp)
    /* 10EB58 0020DBD8 2D200002 */  daddu      $a0, $s0, $zero
    /* 10EB5C 0020DBDC 00000000 */  nop
.align 2
  .L0020DBE0:
    /* 10EB60 0020DBE0 2D280002 */  daddu      $a1, $s0, $zero
    /* 10EB64 0020DBE4 06A30046 */  mov.s      $f12, $f20
    /* 10EB68 0020DBE8 0CE7070C */  jal        func_001F9C30
    /* 10EB6C 0020DBEC FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 10EB70 0020DBF0 2D200002 */  daddu      $a0, $s0, $zero
    /* 10EB74 0020DBF4 2D280002 */  daddu      $a1, $s0, $zero
    /* 10EB78 0020DBF8 B0E7070C */  jal        func_001F9EC0
    /* 10EB7C 0020DBFC C0004626 */   addiu     $a2, $s2, 0xC0
    /* 10EB80 0020DC00 2D200002 */  daddu      $a0, $s0, $zero
    /* 10EB84 0020DC04 2D280002 */  daddu      $a1, $s0, $zero
    /* 10EB88 0020DC08 10004626 */  addiu      $a2, $s2, 0x10
    /* 10EB8C 0020DC0C F6E6070C */  jal        func_001F9BD8
    /* 10EB90 0020DC10 10001026 */   addiu     $s0, $s0, 0x10
    /* 10EB94 0020DC14 F2FF2016 */  bnez       $s1, .L0020DBE0
    /* 10EB98 0020DC18 2D200002 */   daddu     $a0, $s0, $zero
    /* 10EB9C 0020DC1C 3000BF7B */  lq         $ra, 0x30($sp)
.align 2
  .L0020DC20:
    /* 10EBA0 0020DC20 2000B27B */  lq         $s2, 0x20($sp)
    /* 10EBA4 0020DC24 1000B17B */  lq         $s1, 0x10($sp)
    /* 10EBA8 0020DC28 0000B07B */  lq         $s0, 0x0($sp)
    /* 10EBAC 0020DC2C 4000B4C7 */  lwc1       $f20, 0x40($sp)
    /* 10EBB0 0020DC30 0800E003 */  jr         $ra
    /* 10EBB4 0020DC34 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0020DB98
