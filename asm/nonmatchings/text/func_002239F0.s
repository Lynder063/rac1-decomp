.align 3
nonmatching func_002239F0, 0x150

glabel func_002239F0
    /* 124970 002239F0 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 124974 002239F4 18000624 */  addiu      $a2, $zero, 0x18
    /* 124978 002239F8 4000B07F */  sq         $s0, 0x40($sp)
    /* 12497C 002239FC 2D280000 */  daddu      $a1, $zero, $zero
    /* 124980 00223A00 2D808000 */  daddu      $s0, $a0, $zero
    /* 124984 00223A04 6000BF7F */  sq         $ra, 0x60($sp)
    /* 124988 00223A08 5000B17F */  sq         $s1, 0x50($sp)
    /* 12498C 00223A0C FF54040C */  jal        func_001153FC
    /* 124990 00223A10 2000A427 */   addiu     $a0, $sp, 0x20
    /* 124994 00223A14 04001124 */  addiu      $s1, $zero, 0x4
    /* 124998 00223A18 24000396 */  lhu        $v1, 0x24($s0)
    /* 12499C 00223A1C 10000524 */  addiu      $a1, $zero, 0x10
    /* 1249A0 00223A20 20000296 */  lhu        $v0, 0x20($s0)
    /* 1249A4 00223A24 2D200000 */  daddu      $a0, $zero, $zero
    /* 1249A8 00223A28 3000A5A7 */  sh         $a1, 0x30($sp)
    /* 1249AC 00223A2C 2600A2A7 */  sh         $v0, 0x26($sp)
    /* 1249B0 00223A30 2200A3A7 */  sh         $v1, 0x22($sp)
    /* 1249B4 00223A34 2700A26B */  ldl        $v0, 0x27($sp)
    /* 1249B8 00223A38 2000A26F */  ldr        $v0, 0x20($sp)
    /* 1249BC 00223A3C 2F00A36B */  ldl        $v1, 0x2F($sp)
    /* 1249C0 00223A40 2800A36F */  ldr        $v1, 0x28($sp)
    /* 1249C4 00223A44 3700A56B */  ldl        $a1, 0x37($sp)
    /* 1249C8 00223A48 3000A56F */  ldr        $a1, 0x30($sp)
    /* 1249CC 00223A4C 0700A2B3 */  sdl        $v0, 0x7($sp)
    /* 1249D0 00223A50 0000A2B7 */  sdr        $v0, 0x0($sp)
    /* 1249D4 00223A54 0F00A3B3 */  sdl        $v1, 0xF($sp)
    /* 1249D8 00223A58 0800A3B7 */  sdr        $v1, 0x8($sp)
    /* 1249DC 00223A5C 1700A5B3 */  sdl        $a1, 0x17($sp)
    /* 1249E0 00223A60 1000A5B7 */  sdr        $a1, 0x10($sp)
    /* 1249E4 00223A64 8CD1070C */  jal        func_001F4630
    /* 1249E8 00223A68 18001024 */   addiu     $s0, $zero, 0x18
    /* 1249EC 00223A6C 9AE90434 */  ori        $a0, $zero, 0xE99A
    /* 1249F0 00223A70 6600080C */  jal        func_00200198
    /* 1249F4 00223A74 06000524 */   addiu     $a1, $zero, 0x6
    /* 1249F8 00223A78 10000824 */  addiu      $t0, $zero, 0x10
    /* 1249FC 00223A7C 80000924 */  addiu      $t1, $zero, 0x80
    /* 124A00 00223A80 2D204000 */  daddu      $a0, $v0, $zero
    /* 124A04 00223A84 04000524 */  addiu      $a1, $zero, 0x4
    /* 124A08 00223A88 0C000624 */  addiu      $a2, $zero, 0xC
    /* 124A0C 00223A8C 1A01080C */  jal        func_00200468
    /* 124A10 00223A90 10000724 */   addiu     $a3, $zero, 0x10
    /* 124A14 00223A94 0A00B1A7 */  sh         $s1, 0xA($sp)
    /* 124A18 00223A98 87510424 */  addiu      $a0, $zero, 0x5187
    /* 124A1C 00223A9C 50F9070C */  jal        func_001FE540
    /* 124A20 00223AA0 0800B0A7 */   sh        $s0, 0x8($sp)
    /* 124A24 00223AA4 2D20A003 */  daddu      $a0, $sp, $zero
    /* 124A28 00223AA8 2D304000 */  daddu      $a2, $v0, $zero
    /* 124A2C 00223AAC FF800534 */  ori        $a1, $zero, 0x80FF
    /* 124A30 00223AB0 382C0500 */  dsll       $a1, $a1, 16
    /* 124A34 00223AB4 88A8A534 */  ori        $a1, $a1, 0xA888
    /* 124A38 00223AB8 58DD070C */  jal        func_001F7560
    /* 124A3C 00223ABC FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 124A40 00223AC0 0E00B097 */  lhu        $s0, 0xE($sp)
    /* 124A44 00223AC4 9AE90434 */  ori        $a0, $zero, 0xE99A
    /* 124A48 00223AC8 06000524 */  addiu      $a1, $zero, 0x6
    /* 124A4C 00223ACC 00841000 */  sll        $s0, $s0, 16
    /* 124A50 00223AD0 03841000 */  sra        $s0, $s0, 16
    /* 124A54 00223AD4 10001126 */  addiu      $s1, $s0, 0x10
    /* 124A58 00223AD8 6600080C */  jal        func_00200198
    /* 124A5C 00223ADC 0A00B1A7 */   sh        $s1, 0xA($sp)
    /* 124A60 00223AE0 10000824 */  addiu      $t0, $zero, 0x10
    /* 124A64 00223AE4 80000924 */  addiu      $t1, $zero, 0x80
    /* 124A68 00223AE8 18000626 */  addiu      $a2, $s0, 0x18
    /* 124A6C 00223AEC 2D204000 */  daddu      $a0, $v0, $zero
    /* 124A70 00223AF0 04000524 */  addiu      $a1, $zero, 0x4
    /* 124A74 00223AF4 1A01080C */  jal        func_00200468
    /* 124A78 00223AF8 10000724 */   addiu     $a3, $zero, 0x10
    /* 124A7C 00223AFC 50F9070C */  jal        func_001FE540
    /* 124A80 00223B00 88510424 */   addiu     $a0, $zero, 0x5188
    /* 124A84 00223B04 2D304000 */  daddu      $a2, $v0, $zero
    /* 124A88 00223B08 2D20A003 */  daddu      $a0, $sp, $zero
    /* 124A8C 00223B0C FF800534 */  ori        $a1, $zero, 0x80FF
    /* 124A90 00223B10 382C0500 */  dsll       $a1, $a1, 16
    /* 124A94 00223B14 88A8A534 */  ori        $a1, $a1, 0xA888
    /* 124A98 00223B18 58DD070C */  jal        func_001F7560
    /* 124A9C 00223B1C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 124AA0 00223B20 D2D1070C */  jal        func_001F4748
    /* 124AA4 00223B24 00000000 */   nop
    /* 124AA8 00223B28 6000BF7B */  lq         $ra, 0x60($sp)
    /* 124AAC 00223B2C 02000224 */  addiu      $v0, $zero, 0x2
    /* 124AB0 00223B30 5000B17B */  lq         $s1, 0x50($sp)
    /* 124AB4 00223B34 4000B07B */  lq         $s0, 0x40($sp)
    /* 124AB8 00223B38 0800E003 */  jr         $ra
    /* 124ABC 00223B3C 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_002239F0
