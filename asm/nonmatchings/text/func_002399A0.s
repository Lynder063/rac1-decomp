.align 3
nonmatching func_002399A0, 0x60

glabel func_002399A0
    /* 13A920 002399A0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13A924 002399A4 2D30A000 */  daddu      $a2, $a1, $zero
    /* 13A928 002399A8 E803C228 */  slti       $v0, $a2, 0x3E8
    /* 13A92C 002399AC 0E004014 */  bnez       $v0, .L002399E8
    /* 13A930 002399B0 0000BF7F */   sq        $ra, 0x0($sp)
    /* 13A934 002399B4 E8030224 */  addiu      $v0, $zero, 0x3E8
    /* 13A938 002399B8 1600053C */  lui        $a1, %hi(D_00161178)
    /* 13A93C 002399BC 1A00C200 */  div        $zero, $a2, $v0
    /* 13A940 002399C0 01004050 */  beql       $v0, $zero, .L002399C8
    /* 13A944 002399C4 CD010000 */   break     0, 7
.align 2
  .L002399C8:
    /* 13A948 002399C8 E8030324 */  addiu      $v1, $zero, 0x3E8
    /* 13A94C 002399CC 7811A524 */  addiu      $a1, $a1, %lo(D_00161178)
    /* 13A950 002399D0 12300000 */  mflo       $a2
    /* 13A954 002399D4 10380000 */  mfhi       $a3
    /* 13A958 002399D8 9258040C */  jal        func_00116248
    /* 13A95C 002399DC 00000000 */   nop
    /* 13A960 002399E0 05000010 */  b          .L002399F8
    /* 13A964 002399E4 0000BF7B */   lq        $ra, 0x0($sp)
.align 2
  .L002399E8:
    /* 13A968 002399E8 1600053C */  lui        $a1, %hi(D_00161180)
    /* 13A96C 002399EC 9258040C */  jal        func_00116248
    /* 13A970 002399F0 8011A524 */   addiu     $a1, $a1, %lo(D_00161180)
    /* 13A974 002399F4 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L002399F8:
    /* 13A978 002399F8 0800E003 */  jr         $ra
    /* 13A97C 002399FC 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_002399A0
