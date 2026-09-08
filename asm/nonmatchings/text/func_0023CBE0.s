.align 3
nonmatching func_0023CBE0, 0x130

glabel func_0023CBE0
    /* 13DB60 0023CBE0 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 13DB64 0023CBE4 7000B77F */  sq         $s7, 0x70($sp)
    /* 13DB68 0023CBE8 1000B17F */  sq         $s1, 0x10($sp)
    /* 13DB6C 0023CBEC 2DB86001 */  daddu      $s7, $t3, $zero
    /* 13DB70 0023CBF0 0000B07F */  sq         $s0, 0x0($sp)
    /* 13DB74 0023CBF4 2D882001 */  daddu      $s1, $t1, $zero
    /* 13DB78 0023CBF8 2D80A000 */  daddu      $s0, $a1, $zero
    /* 13DB7C 0023CBFC 6000B67F */  sq         $s6, 0x60($sp)
    /* 13DB80 0023CC00 5000B57F */  sq         $s5, 0x50($sp)
    /* 13DB84 0023CC04 21380702 */  addu       $a3, $s0, $a3
    /* 13DB88 0023CC08 3000B37F */  sq         $s3, 0x30($sp)
    /* 13DB8C 0023CC0C 21103702 */  addu       $v0, $s1, $s7
    /* 13DB90 0023CC10 2000B27F */  sq         $s2, 0x20($sp)
    /* 13DB94 0023CC14 2D988000 */  daddu      $s3, $a0, $zero
    /* 13DB98 0023CC18 8000BF7F */  sq         $ra, 0x80($sp)
    /* 13DB9C 0023CC1C 2A38E200 */  slt        $a3, $a3, $v0
    /* 13DBA0 0023CC20 4000B47F */  sq         $s4, 0x40($sp)
    /* 13DBA4 0023CC24 2DB0C000 */  daddu      $s6, $a2, $zero
    /* 13DBA8 0023CC28 2D900001 */  daddu      $s2, $t0, $zero
    /* 13DBAC 0023CC2C 2DA84001 */  daddu      $s5, $t2, $zero
    /* 13DBB0 0023CC30 2C00E014 */  bnez       $a3, .L0023CCE4
    /* 13DBB4 0023CC34 2D100000 */   daddu     $v0, $zero, $zero
    /* 13DBB8 0023CC38 2A103002 */  slt        $v0, $s1, $s0
    /* 13DBBC 0023CC3C 10004014 */  bnez       $v0, .L0023CC80
    /* 13DBC0 0023CC40 23A01102 */   subu      $s4, $s0, $s1
    /* 13DBC4 0023CC44 2D206002 */  daddu      $a0, $s3, $zero
    /* 13DBC8 0023CC48 2D284002 */  daddu      $a1, $s2, $zero
    /* 13DBCC 0023CC4C 9254040C */  jal        func_00115248
    /* 13DBD0 0023CC50 2D300002 */   daddu     $a2, $s0, $zero
    /* 13DBD4 0023CC54 2D20C002 */  daddu      $a0, $s6, $zero
    /* 13DBD8 0023CC58 21285002 */  addu       $a1, $s2, $s0
    /* 13DBDC 0023CC5C 9254040C */  jal        func_00115248
    /* 13DBE0 0023CC60 23303002 */   subu      $a2, $s1, $s0
    /* 13DBE4 0023CC64 2120D102 */  addu       $a0, $s6, $s1
    /* 13DBE8 0023CC68 2D28A002 */  daddu      $a1, $s5, $zero
    /* 13DBEC 0023CC6C 23209000 */  subu       $a0, $a0, $s0
    /* 13DBF0 0023CC70 9254040C */  jal        func_00115248
    /* 13DBF4 0023CC74 2D30E002 */   daddu     $a2, $s7, $zero
    /* 13DBF8 0023CC78 1A000010 */  b          .L0023CCE4
    /* 13DBFC 0023CC7C 21103702 */   addu      $v0, $s1, $s7
.align 2
  .L0023CC80:
    /* 13DC00 0023CC80 2A10F402 */  slt        $v0, $s7, $s4
    /* 13DC04 0023CC84 0F004014 */  bnez       $v0, .L0023CCC4
    /* 13DC08 0023CC88 2D284002 */   daddu     $a1, $s2, $zero
    /* 13DC0C 0023CC8C 2D206002 */  daddu      $a0, $s3, $zero
    /* 13DC10 0023CC90 9254040C */  jal        func_00115248
    /* 13DC14 0023CC94 2D302002 */   daddu     $a2, $s1, $zero
    /* 13DC18 0023CC98 2D28A002 */  daddu      $a1, $s5, $zero
    /* 13DC1C 0023CC9C 21207102 */  addu       $a0, $s3, $s1
    /* 13DC20 0023CCA0 9254040C */  jal        func_00115248
    /* 13DC24 0023CCA4 2D308002 */   daddu     $a2, $s4, $zero
    /* 13DC28 0023CCA8 2128B002 */  addu       $a1, $s5, $s0
    /* 13DC2C 0023CCAC 2D20C002 */  daddu      $a0, $s6, $zero
    /* 13DC30 0023CCB0 2328B100 */  subu       $a1, $a1, $s1
    /* 13DC34 0023CCB4 9254040C */  jal        func_00115248
    /* 13DC38 0023CCB8 2330F402 */   subu      $a2, $s7, $s4
    /* 13DC3C 0023CCBC 09000010 */  b          .L0023CCE4
    /* 13DC40 0023CCC0 21103702 */   addu      $v0, $s1, $s7
.align 2
  .L0023CCC4:
    /* 13DC44 0023CCC4 2D206002 */  daddu      $a0, $s3, $zero
    /* 13DC48 0023CCC8 9254040C */  jal        func_00115248
    /* 13DC4C 0023CCCC 2D302002 */   daddu     $a2, $s1, $zero
    /* 13DC50 0023CCD0 21207102 */  addu       $a0, $s3, $s1
    /* 13DC54 0023CCD4 2D28A002 */  daddu      $a1, $s5, $zero
    /* 13DC58 0023CCD8 9254040C */  jal        func_00115248
    /* 13DC5C 0023CCDC 2D30E002 */   daddu     $a2, $s7, $zero
    /* 13DC60 0023CCE0 21103702 */  addu       $v0, $s1, $s7
.align 2
  .L0023CCE4:
    /* 13DC64 0023CCE4 8000BF7B */  lq         $ra, 0x80($sp)
    /* 13DC68 0023CCE8 7000B77B */  lq         $s7, 0x70($sp)
    /* 13DC6C 0023CCEC 6000B67B */  lq         $s6, 0x60($sp)
    /* 13DC70 0023CCF0 5000B57B */  lq         $s5, 0x50($sp)
    /* 13DC74 0023CCF4 4000B47B */  lq         $s4, 0x40($sp)
    /* 13DC78 0023CCF8 3000B37B */  lq         $s3, 0x30($sp)
    /* 13DC7C 0023CCFC 2000B27B */  lq         $s2, 0x20($sp)
    /* 13DC80 0023CD00 1000B17B */  lq         $s1, 0x10($sp)
    /* 13DC84 0023CD04 0000B07B */  lq         $s0, 0x0($sp)
    /* 13DC88 0023CD08 0800E003 */  jr         $ra
    /* 13DC8C 0023CD0C 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_0023CBE0
