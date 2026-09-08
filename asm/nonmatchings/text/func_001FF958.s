.align 3
nonmatching func_001FF958, 0x138

glabel func_001FF958
    /* 1008D8 001FF958 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 1008DC 001FF95C 1A00023C */  lui        $v0, %hi(D_0019A4E8)
    /* 1008E0 001FF960 1000B17F */  sq         $s1, 0x10($sp)
    /* 1008E4 001FF964 8000BE7F */  sq         $fp, 0x80($sp)
    /* 1008E8 001FF968 2D884000 */  daddu      $s1, $v0, $zero
    /* 1008EC 001FF96C 0000B07F */  sq         $s0, 0x0($sp)
    /* 1008F0 001FF970 E8A44224 */  addiu      $v0, $v0, %lo(D_0019A4E8)
    /* 1008F4 001FF974 9000BF7F */  sq         $ra, 0x90($sp)
    /* 1008F8 001FF978 2D808000 */  daddu      $s0, $a0, $zero
    /* 1008FC 001FF97C 7000B77F */  sq         $s7, 0x70($sp)
    /* 100900 001FF980 80201000 */  sll        $a0, $s0, 2
    /* 100904 001FF984 6000B67F */  sq         $s6, 0x60($sp)
    /* 100908 001FF988 5000B57F */  sq         $s5, 0x50($sp)
    /* 10090C 001FF98C 4000B47F */  sq         $s4, 0x40($sp)
    /* 100910 001FF990 3000B37F */  sq         $s3, 0x30($sp)
    /* 100914 001FF994 2000B27F */  sq         $s2, 0x20($sp)
    /* 100918 001FF998 1800438C */  lw         $v1, 0x18($v0)
    /* 10091C 001FF99C 21186400 */  addu       $v1, $v1, $a0
    /* 100920 001FF9A0 7400628C */  lw         $v0, 0x74($v1)
    /* 100924 001FF9A4 03004014 */  bnez       $v0, .L001FF9B4
    /* 100928 001FF9A8 2DF0C000 */   daddu     $fp, $a2, $zero
    /* 10092C 001FF9AC FCFD070C */  jal        func_001FF7F0
    /* 100930 001FF9B0 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L001FF9B4:
    /* 100934 001FF9B4 1600143C */  lui        $s4, %hi(D_0015EF88)
    /* 100938 001FF9B8 88EF948E */  lw         $s4, %lo(D_0015EF88)($s4)
    /* 10093C 001FF9BC E8A42226 */  addiu      $v0, $s1, %lo(D_0019A4E8)
    /* 100940 001FF9C0 80281000 */  sll        $a1, $s0, 2
    /* 100944 001FF9C4 06000012 */  beqz       $s0, .L001FF9E0
    /* 100948 001FF9C8 1800438C */   lw        $v1, 0x18($v0)
    /* 10094C 001FF9CC FFFF0226 */  addiu      $v0, $s0, -0x1
    /* 100950 001FF9D0 80100200 */  sll        $v0, $v0, 2
    /* 100954 001FF9D4 21106200 */  addu       $v0, $v1, $v0
    /* 100958 001FF9D8 02000010 */  b          .L001FF9E4
    /* 10095C 001FF9DC 3400428C */   lw        $v0, 0x34($v0)
.align 2
  .L001FF9E0:
    /* 100960 001FF9E0 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L001FF9E4:
    /* 100964 001FF9E4 2D984000 */  daddu      $s3, $v0, $zero
    /* 100968 001FF9E8 E8A42426 */  addiu      $a0, $s1, %lo(D_0019A4E8)
    /* 10096C 001FF9EC 1800828C */  lw         $v0, 0x18($a0)
    /* 100970 001FF9F0 21104500 */  addu       $v0, $v0, $a1
    /* 100974 001FF9F4 3400558C */  lw         $s5, 0x34($v0)
    /* 100978 001FF9F8 2A187502 */  slt        $v1, $s3, $s5
    /* 10097C 001FF9FC 18006010 */  beqz       $v1, .L001FFA60
    /* 100980 001FFA00 2DB08000 */   daddu     $s6, $a0, $zero
    /* 100984 001FFA04 01001724 */  addiu      $s7, $zero, 0x1
.align 2
  .L001FFA08:
    /* 100988 001FFA08 2400C28E */  lw         $v0, 0x24($s6)
    /* 10098C 001FFA0C C0881300 */  sll        $s1, $s3, 3
    /* 100990 001FFA10 03921400 */  sra        $s2, $s4, 8
    /* 100994 001FFA14 1B000624 */  addiu      $a2, $zero, 0x1B
    /* 100998 001FFA18 21102202 */  addu       $v0, $s1, $v0
    /* 10099C 001FFA1C 2D284002 */  daddu      $a1, $s2, $zero
    /* 1009A0 001FFA20 06005090 */  lbu        $s0, 0x6($v0)
    /* 1009A4 001FFA24 2D48C003 */  daddu      $t1, $fp, $zero
    /* 1009A8 001FFA28 07004890 */  lbu        $t0, 0x7($v0)
    /* 1009AC 001FFA2C 01007326 */  addiu      $s3, $s3, 0x1
    /* 1009B0 001FFA30 2D380002 */  daddu      $a3, $s0, $zero
    /* 1009B4 001FFA34 0000448C */  lw         $a0, 0x0($v0)
    /* 1009B8 001FFA38 21800802 */  addu       $s0, $s0, $t0
    /* 1009BC 001FFA3C D204080C */  jal        func_00201348
    /* 1009C0 001FFA40 04801702 */   sllv      $s0, $s7, $s0
    /* 1009C4 001FFA44 2400C38E */  lw         $v1, 0x24($s6)
    /* 1009C8 001FFA48 80801000 */  sll        $s0, $s0, 2
    /* 1009CC 001FFA4C 21A09002 */  addu       $s4, $s4, $s0
    /* 1009D0 001FFA50 2A107502 */  slt        $v0, $s3, $s5
    /* 1009D4 001FFA54 21882302 */  addu       $s1, $s1, $v1
    /* 1009D8 001FFA58 EBFF4014 */  bnez       $v0, .L001FFA08
    /* 1009DC 001FFA5C 040032A6 */   sh        $s2, 0x4($s1)
.align 2
  .L001FFA60:
    /* 1009E0 001FFA60 9000BF7B */  lq         $ra, 0x90($sp)
    /* 1009E4 001FFA64 8000BE7B */  lq         $fp, 0x80($sp)
    /* 1009E8 001FFA68 7000B77B */  lq         $s7, 0x70($sp)
    /* 1009EC 001FFA6C 6000B67B */  lq         $s6, 0x60($sp)
    /* 1009F0 001FFA70 5000B57B */  lq         $s5, 0x50($sp)
    /* 1009F4 001FFA74 4000B47B */  lq         $s4, 0x40($sp)
    /* 1009F8 001FFA78 3000B37B */  lq         $s3, 0x30($sp)
    /* 1009FC 001FFA7C 2000B27B */  lq         $s2, 0x20($sp)
    /* 100A00 001FFA80 1000B17B */  lq         $s1, 0x10($sp)
    /* 100A04 001FFA84 0000B07B */  lq         $s0, 0x0($sp)
    /* 100A08 001FFA88 0800E003 */  jr         $ra
    /* 100A0C 001FFA8C A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_001FF958
