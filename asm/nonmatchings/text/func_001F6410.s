.align 3
nonmatching func_001F6410, 0x184

glabel func_001F6410
    /* F7390 001F6410 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* F7394 001F6414 2000B17F */  sq         $s1, 0x20($sp)
    /* F7398 001F6418 2D880001 */  daddu      $s1, $t0, $zero
    /* F739C 001F641C 7000B67F */  sq         $s6, 0x70($sp)
    /* F73A0 001F6420 00FF083C */  lui        $t0, (0xFF000000 >> 16)
    /* F73A4 001F6424 6000B57F */  sq         $s5, 0x60($sp)
    /* F73A8 001F6428 3000B27F */  sq         $s2, 0x30($sp)
    /* F73AC 001F642C 24402802 */  and        $t0, $s1, $t0
    /* F73B0 001F6430 1000B07F */  sq         $s0, 0x10($sp)
    /* F73B4 001F6434 2DA8A000 */  daddu      $s5, $a1, $zero
    /* F73B8 001F6438 2D90C000 */  daddu      $s2, $a2, $zero
    /* F73BC 001F643C 2DB0E000 */  daddu      $s6, $a3, $zero
    /* F73C0 001F6440 2D808000 */  daddu      $s0, $a0, $zero
    /* F73C4 001F6444 04000835 */  ori        $t0, $t0, 0x4
    /* F73C8 001F6448 A000BF7F */  sq         $ra, 0xA0($sp)
    /* F73CC 001F644C 9000BE7F */  sq         $fp, 0x90($sp)
    /* F73D0 001F6450 8000B77F */  sq         $s7, 0x80($sp)
    /* F73D4 001F6454 5000B47F */  sq         $s4, 0x50($sp)
    /* F73D8 001F6458 4000B37F */  sq         $s3, 0x40($sp)
    /* F73DC 001F645C 94D5070C */  jal        func_001F5650
    /* F73E0 001F6460 2D400001 */   daddu     $t0, $t0, $zero
    /* F73E4 001F6464 01000226 */  addiu      $v0, $s0, 0x1
    /* F73E8 001F6468 FFFF0426 */  addiu      $a0, $s0, -0x1
    /* F73EC 001F646C 0000A2AF */  sw         $v0, 0x0($sp)
    /* F73F0 001F6470 2D402002 */  daddu      $t0, $s1, $zero
    /* F73F4 001F6474 03004226 */  addiu      $v0, $s2, 0x3
    /* F73F8 001F6478 FBFF1426 */  addiu      $s4, $s0, -0x5
    /* F73FC 001F647C 0400A2AF */  sw         $v0, 0x4($sp)
    /* F7400 001F6480 FFFF5326 */  addiu      $s3, $s2, -0x1
    /* F7404 001F6484 0000A58F */  lw         $a1, 0x0($sp)
    /* F7408 001F6488 0500C226 */  addiu      $v0, $s6, 0x5
    /* F740C 001F648C 0400A68F */  lw         $a2, 0x4($sp)
    /* F7410 001F6490 2D384000 */  daddu      $a3, $v0, $zero
    /* F7414 001F6494 0800A2AF */  sw         $v0, 0x8($sp)
    /* F7418 001F6498 94D5070C */  jal        func_001F5650
    /* F741C 001F649C FDFFDE26 */   addiu     $fp, $s6, -0x3
    /* F7420 001F64A0 0300B726 */  addiu      $s7, $s5, 0x3
    /* F7424 001F64A4 FDFF0426 */  addiu      $a0, $s0, -0x3
    /* F7428 001F64A8 2D288002 */  daddu      $a1, $s4, $zero
    /* F742C 001F64AC 2D306002 */  daddu      $a2, $s3, $zero
    /* F7430 001F64B0 2D38C003 */  daddu      $a3, $fp, $zero
    /* F7434 001F64B4 2D402002 */  daddu      $t0, $s1, $zero
    /* F7438 001F64B8 94D5070C */  jal        func_001F5650
    /* F743C 001F64BC 03001026 */   addiu     $s0, $s0, 0x3
    /* F7440 001F64C0 FDFFA226 */  addiu      $v0, $s5, -0x3
    /* F7444 001F64C4 2D208002 */  daddu      $a0, $s4, $zero
    /* F7448 001F64C8 2D284000 */  daddu      $a1, $v0, $zero
    /* F744C 001F64CC 0C00A2AF */  sw         $v0, 0xC($sp)
    /* F7450 001F64D0 2D306002 */  daddu      $a2, $s3, $zero
    /* F7454 001F64D4 01004726 */  addiu      $a3, $s2, 0x1
    /* F7458 001F64D8 2D402002 */  daddu      $t0, $s1, $zero
    /* F745C 001F64DC 94D5070C */  jal        func_001F5650
    /* F7460 001F64E0 0100B326 */   addiu     $s3, $s5, 0x1
    /* F7464 001F64E4 FDFF5426 */  addiu      $s4, $s2, -0x3
    /* F7468 001F64E8 FBFF4726 */  addiu      $a3, $s2, -0x5
    /* F746C 001F64EC 2D200002 */  daddu      $a0, $s0, $zero
    /* F7470 001F64F0 2D286002 */  daddu      $a1, $s3, $zero
    /* F7474 001F64F4 2D308002 */  daddu      $a2, $s4, $zero
    /* F7478 001F64F8 2D402002 */  daddu      $t0, $s1, $zero
    /* F747C 001F64FC 94D5070C */  jal        func_001F5650
    /* F7480 001F6500 0100D226 */   addiu     $s2, $s6, 0x1
    /* F7484 001F6504 2D286002 */  daddu      $a1, $s3, $zero
    /* F7488 001F6508 2D308002 */  daddu      $a2, $s4, $zero
    /* F748C 001F650C 2D38C003 */  daddu      $a3, $fp, $zero
    /* F7490 001F6510 FFFFA426 */  addiu      $a0, $s5, -0x1
    /* F7494 001F6514 94D5070C */  jal        func_001F5650
    /* F7498 001F6518 2D402002 */   daddu     $t0, $s1, $zero
    /* F749C 001F651C 0400A68F */  lw         $a2, 0x4($sp)
    /* F74A0 001F6520 0500A526 */  addiu      $a1, $s5, 0x5
    /* F74A4 001F6524 2D20E002 */  daddu      $a0, $s7, $zero
    /* F74A8 001F6528 2D384002 */  daddu      $a3, $s2, $zero
    /* F74AC 001F652C 94D5070C */  jal        func_001F5650
    /* F74B0 001F6530 2D402002 */   daddu     $t0, $s1, $zero
    /* F74B4 001F6534 2D200002 */  daddu      $a0, $s0, $zero
    /* F74B8 001F6538 2D28E002 */  daddu      $a1, $s7, $zero
    /* F74BC 001F653C 2D384002 */  daddu      $a3, $s2, $zero
    /* F74C0 001F6540 FFFFC626 */  addiu      $a2, $s6, -0x1
    /* F74C4 001F6544 94D5070C */  jal        func_001F5650
    /* F74C8 001F6548 2D402002 */   daddu     $t0, $s1, $zero
    /* F74CC 001F654C 0000A48F */  lw         $a0, 0x0($sp)
    /* F74D0 001F6550 0300C626 */  addiu      $a2, $s6, 0x3
    /* F74D4 001F6554 0C00A58F */  lw         $a1, 0xC($sp)
    /* F74D8 001F6558 2D402002 */  daddu      $t0, $s1, $zero
    /* F74DC 001F655C 94D5070C */  jal        func_001F5650
    /* F74E0 001F6560 0800A78F */   lw        $a3, 0x8($sp)
    /* F74E4 001F6564 A000BF7B */  lq         $ra, 0xA0($sp)
    /* F74E8 001F6568 9000BE7B */  lq         $fp, 0x90($sp)
    /* F74EC 001F656C 8000B77B */  lq         $s7, 0x80($sp)
    /* F74F0 001F6570 7000B67B */  lq         $s6, 0x70($sp)
    /* F74F4 001F6574 6000B57B */  lq         $s5, 0x60($sp)
    /* F74F8 001F6578 5000B47B */  lq         $s4, 0x50($sp)
    /* F74FC 001F657C 4000B37B */  lq         $s3, 0x40($sp)
    /* F7500 001F6580 3000B27B */  lq         $s2, 0x30($sp)
    /* F7504 001F6584 2000B17B */  lq         $s1, 0x20($sp)
    /* F7508 001F6588 1000B07B */  lq         $s0, 0x10($sp)
    /* F750C 001F658C 0800E003 */  jr         $ra
    /* F7510 001F6590 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_001F6410
    /* F7514 001F6594 00000000 */  nop
