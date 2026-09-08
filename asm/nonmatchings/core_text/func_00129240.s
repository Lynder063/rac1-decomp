.align 3
nonmatching func_00129240, 0xA0

glabel func_00129240
    /* 2A1C0 00129240 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2A1C4 00129244 01000324 */  addiu      $v1, $zero, 0x1
    /* 2A1C8 00129248 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2A1CC 0012924C 01000524 */  addiu      $a1, $zero, 0x1
    /* 2A1D0 00129250 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2A1D4 00129254 2D808000 */  daddu      $s0, $a0, $zero
    /* 2A1D8 00129258 E80000AE */  sw         $zero, 0xE8($s0)
    /* 2A1DC 0012925C 5008028E */  lw         $v0, 0x850($s0)
    /* 2A1E0 00129260 540803AE */  sw         $v1, 0x854($s0)
    /* 2A1E4 00129264 01004224 */  addiu      $v0, $v0, 0x1
    /* 2A1E8 00129268 96A2040C */  jal        func_00128A58
    /* 2A1EC 0012926C 4C0802AE */   sw        $v0, 0x84C($s0)
    /* 2A1F0 00129270 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A1F4 00129274 96A2040C */  jal        func_00128A58
    /* 2A1F8 00129278 05000524 */   addiu     $a1, $zero, 0x5
    /* 2A1FC 0012927C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A200 00129280 96A2040C */  jal        func_00128A58
    /* 2A204 00129284 06000524 */   addiu     $a1, $zero, 0x6
    /* 2A208 00129288 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A20C 0012928C 96A2040C */  jal        func_00128A58
    /* 2A210 00129290 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A214 00129294 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A218 00129298 96A2040C */  jal        func_00128A58
    /* 2A21C 0012929C 06000524 */   addiu     $a1, $zero, 0x6
    /* 2A220 001292A0 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A224 001292A4 96A2040C */  jal        func_00128A58
    /* 2A228 001292A8 06000524 */   addiu     $a1, $zero, 0x6
    /* 2A22C 001292AC 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A230 001292B0 96A2040C */  jal        func_00128A58
    /* 2A234 001292B4 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A238 001292B8 A40102AE */  sw         $v0, 0x1A4($s0)
    /* 2A23C 001292BC 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A240 001292C0 96A2040C */  jal        func_00128A58
    /* 2A244 001292C4 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A248 001292C8 A80102AE */  sw         $v0, 0x1A8($s0)
    /* 2A24C 001292CC 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A250 001292D0 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2A254 001292D4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2A258 001292D8 9AA30408 */  j          func_00128E68
    /* 2A25C 001292DC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00129240
