.align 3
nonmatching func_0012DB18, 0x2A8

glabel func_0012DB18
    /* 2EA98 0012DB18 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2EA9C 0012DB1C 0000B07F */  sq         $s0, 0x0($sp)
    /* 2EAA0 0012DB20 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2EAA4 0012DB24 F277040C */  jal        func_0011DFC8
    /* 2EAA8 0012DB28 00000000 */   nop
    /* 2EAAC 0012DB2C 1F00023C */  lui        $v0, %hi(func_001E99D8)
    /* 2EAB0 0012DB30 D8995024 */  addiu      $s0, $v0, %lo(func_001E99D8)
    /* 2EAB4 0012DB34 00000000 */  nop
.align 2
  .L0012DB38:
    /* 2EAB8 0012DB38 09F80002 */  jalr       $s0
    /* 2EABC 0012DB3C 00000000 */   nop
    /* 2EAC0 0012DB40 8EB6040C */  jal        func_0012DA38
    /* 2EAC4 0012DB44 00000000 */   nop
    /* 2EAC8 0012DB48 2D200000 */  daddu      $a0, $zero, $zero
    /* 2EACC 0012DB4C 6063040C */  jal        func_00118D80
    /* 2EAD0 0012DB50 2D804000 */   daddu     $s0, $v0, $zero
    /* 2EAD4 0012DB54 6063040C */  jal        func_00118D80
    /* 2EAD8 0012DB58 02000424 */   addiu     $a0, $zero, 0x2
    /* 2EADC 0012DB5C F6FF0010 */  b          .L0012DB38
    /* 2EAE0 0012DB60 00000000 */   nop
    /* 2EAE4 0012DB64 00000000 */  nop
.align 2
  alabel func_0012DB68
    /* 2EAE8 0012DB68 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 2EAEC 0012DB6C 1300023C */  lui        $v0, %hi(D_00133380)
    /* 2EAF0 0012DB70 9000BE7F */  sq         $fp, 0x90($sp)
    /* 2EAF4 0012DB74 1300033C */  lui        $v1, %hi(D_00134380)
    /* 2EAF8 0012DB78 2DF04000 */  daddu      $fp, $v0, $zero
    /* 2EAFC 0012DB7C 1300053C */  lui        $a1, %hi(D_00137380)
    /* 2EB00 0012DB80 1300063C */  lui        $a2, %hi(D_001377C0)
    /* 2EB04 0012DB84 1300073C */  lui        $a3, %hi(D_00135380)
    /* 2EB08 0012DB88 1300083C */  lui        $t0, %hi(D_00136380)
    /* 2EB0C 0012DB8C 1000B07F */  sq         $s0, 0x10($sp)
    /* 2EB10 0012DB90 8073A524 */  addiu      $a1, $a1, %lo(D_00137380)
    /* 2EB14 0012DB94 C077C624 */  addiu      $a2, $a2, %lo(D_001377C0)
    /* 2EB18 0012DB98 8053E724 */  addiu      $a3, $a3, %lo(D_00135380)
    /* 2EB1C 0012DB9C 80630825 */  addiu      $t0, $t0, %lo(D_00136380)
    /* 2EB20 0012DBA0 80334224 */  addiu      $v0, $v0, %lo(D_00133380)
    /* 2EB24 0012DBA4 80436324 */  addiu      $v1, $v1, %lo(D_00134380)
    /* 2EB28 0012DBA8 8000B77F */  sq         $s7, 0x80($sp)
    /* 2EB2C 0012DBAC 2D200000 */  daddu      $a0, $zero, $zero
    /* 2EB30 0012DBB0 7000B67F */  sq         $s6, 0x70($sp)
    /* 2EB34 0012DBB4 1600103C */  lui        $s0, %hi(D_0015ECC0)
    /* 2EB38 0012DBB8 6000B57F */  sq         $s5, 0x60($sp)
    /* 2EB3C 0012DBBC 5000B47F */  sq         $s4, 0x50($sp)
    /* 2EB40 0012DBC0 C0EC1526 */  addiu      $s5, $s0, %lo(D_0015ECC0)
    /* 2EB44 0012DBC4 4000B37F */  sq         $s3, 0x40($sp)
    /* 2EB48 0012DBC8 1600173C */  lui        $s7, %hi(D_0015ECE8)
    /* 2EB4C 0012DBCC 3000B27F */  sq         $s2, 0x30($sp)
    /* 2EB50 0012DBD0 1300163C */  lui        $s6, %hi(D_00137C00)
    /* 2EB54 0012DBD4 2000B17F */  sq         $s1, 0x20($sp)
    /* 2EB58 0012DBD8 1500133C */  lui        $s3, %hi(D_00153D50)
    /* 2EB5C 0012DBDC A000BF7F */  sq         $ra, 0xA0($sp)
    /* 2EB60 0012DBE0 1500143C */  lui        $s4, %hi(D_00153D78)
    /* 2EB64 0012DBE4 A08082AF */  sw         $v0, -0x7F60($gp)
    /* 2EB68 0012DBE8 10271224 */  addiu      $s2, $zero, 0x2710
    /* 2EB6C 0012DBEC 1600013C */  lui        $at, %hi(D_0015EDA4)
    /* 2EB70 0012DBF0 A4ED23AC */  sw         $v1, %lo(D_0015EDA4)($at)
    /* 2EB74 0012DBF4 B88085AF */  sw         $a1, -0x7F48($gp)
    /* 2EB78 0012DBF8 1600013C */  lui        $at, %hi(D_0015EDBC)
    /* 2EB7C 0012DBFC BCED26AC */  sw         $a2, %lo(D_0015EDBC)($at)
    /* 2EB80 0012DC00 B08087AF */  sw         $a3, -0x7F50($gp)
    /* 2EB84 0012DC04 1600013C */  lui        $at, %hi(D_0015EDB4)
    /* 2EB88 0012DC08 B4ED28AC */  sw         $t0, %lo(D_0015EDB4)($at)
    /* 2EB8C 0012DC0C 886B040C */  jal        func_0011AE20
    /* 2EB90 0012DC10 FFFF1124 */   addiu     $s1, $zero, -0x1
    /* 2EB94 0012DC14 1200053C */  lui        $a1, (0x123456 >> 16)
.align 2
  .L0012DC18:
    /* 2EB98 0012DC18 C0EC0426 */  addiu      $a0, $s0, %lo(D_0015ECC0)
    /* 2EB9C 0012DC1C 5634A534 */  ori        $a1, $a1, (0x123456 & 0xFFFF)
    /* 2EBA0 0012DC20 BE6C040C */  jal        func_0011B2F8
    /* 2EBA4 0012DC24 2D300000 */   daddu     $a2, $zero, $zero
    /* 2EBA8 0012DC28 0C004104 */  bgez       $v0, .L0012DC5C
    /* 2EBAC 0012DC2C FFFF4226 */   addiu     $v0, $s2, -0x1
    /* 2EBB0 0012DC30 503D6426 */  addiu      $a0, $s3, %lo(D_00153D50)
    /* 2EBB4 0012DC34 783D8526 */  addiu      $a1, $s4, %lo(D_00153D78)
    /* 2EBB8 0012DC38 1E58040C */  jal        func_00116078
    /* 2EBBC 0012DC3C 73000624 */   addiu     $a2, $zero, 0x73
.align 2
  .L0012DC40:
    /* 2EBC0 0012DC40 00000000 */  nop
    /* 2EBC4 0012DC44 00000000 */  nop
    /* 2EBC8 0012DC48 00000000 */  nop
    /* 2EBCC 0012DC4C 00000000 */  nop
    /* 2EBD0 0012DC50 00000000 */  nop
    /* 2EBD4 0012DC54 FAFF0010 */  b          .L0012DC40
    /* 2EBD8 0012DC58 00000000 */   nop
.align 2
  .L0012DC5C:
    /* 2EBDC 0012DC5C 0C005110 */  beq        $v0, $s1, .L0012DC90
    /* 2EBE0 0012DC60 0000A2AF */   sw        $v0, 0x0($sp)
    /* 2EBE4 0012DC64 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 2EBE8 0012DC68 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2EBEC 0012DC6C 00000000 */  nop
.align 2
  .L0012DC70:
    /* 2EBF0 0012DC70 00000000 */  nop
    /* 2EBF4 0012DC74 00000000 */  nop
    /* 2EBF8 0012DC78 00000000 */  nop
    /* 2EBFC 0012DC7C 00000000 */  nop
    /* 2EC00 0012DC80 00000000 */  nop
    /* 2EC04 0012DC84 FAFF4354 */  bnel       $v0, $v1, .L0012DC70
    /* 2EC08 0012DC88 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2EC0C 0012DC8C 0000A2AF */  sw         $v0, 0x0($sp)
.align 2
  .L0012DC90:
    /* 2EC10 0012DC90 2400A28E */  lw         $v0, 0x24($s5)
    /* 2EC14 0012DC94 E0FF4010 */  beqz       $v0, .L0012DC18
    /* 2EC18 0012DC98 1200053C */   lui       $a1, (0x123457 >> 16)
    /* 2EC1C 0012DC9C 1600023C */  lui        $v0, %hi(D_0015ECE8)
    /* 2EC20 0012DCA0 C88080AF */  sw         $zero, -0x7F38($gp)
    /* 2EC24 0012DCA4 D08080AF */  sw         $zero, -0x7F30($gp)
    /* 2EC28 0012DCA8 E8EC5424 */  addiu      $s4, $v0, %lo(D_0015ECE8)
    /* 2EC2C 0012DCAC 1600013C */  lui        $at, %hi(D_0015EDD8)
    /* 2EC30 0012DCB0 D8ED20FC */  sd         $zero, %lo(D_0015EDD8)($at)
    /* 2EC34 0012DCB4 1500133C */  lui        $s3, %hi(D_00153D50)
    /* 2EC38 0012DCB8 1600013C */  lui        $at, %hi(D_0015EE00)
    /* 2EC3C 0012DCBC 00EE20AC */  sw         $zero, %lo(D_0015EE00)($at)
    /* 2EC40 0012DCC0 1500123C */  lui        $s2, %hi(D_00153D78)
    /* 2EC44 0012DCC4 10271124 */  addiu      $s1, $zero, 0x2710
    /* 2EC48 0012DCC8 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 2EC4C 0012DCCC 00000000 */  nop
.align 2
  .L0012DCD0:
    /* 2EC50 0012DCD0 E8ECE426 */  addiu      $a0, $s7, %lo(D_0015ECE8)
    /* 2EC54 0012DCD4 5734A534 */  ori        $a1, $a1, (0x123457 & 0xFFFF)
    /* 2EC58 0012DCD8 BE6C040C */  jal        func_0011B2F8
    /* 2EC5C 0012DCDC 2D300000 */   daddu     $a2, $zero, $zero
    /* 2EC60 0012DCE0 0C004104 */  bgez       $v0, .L0012DD14
    /* 2EC64 0012DCE4 FFFF2226 */   addiu     $v0, $s1, -0x1
    /* 2EC68 0012DCE8 503D6426 */  addiu      $a0, $s3, %lo(D_00153D50)
    /* 2EC6C 0012DCEC 783D4526 */  addiu      $a1, $s2, %lo(D_00153D78)
    /* 2EC70 0012DCF0 1E58040C */  jal        func_00116078
    /* 2EC74 0012DCF4 88000624 */   addiu     $a2, $zero, 0x88
.align 2
  .L0012DCF8:
    /* 2EC78 0012DCF8 00000000 */  nop
    /* 2EC7C 0012DCFC 00000000 */  nop
    /* 2EC80 0012DD00 00000000 */  nop
    /* 2EC84 0012DD04 00000000 */  nop
    /* 2EC88 0012DD08 00000000 */  nop
    /* 2EC8C 0012DD0C FAFF0010 */  b          .L0012DCF8
    /* 2EC90 0012DD10 00000000 */   nop
.align 2
  .L0012DD14:
    /* 2EC94 0012DD14 0C005010 */  beq        $v0, $s0, .L0012DD48
    /* 2EC98 0012DD18 0000A2AF */   sw        $v0, 0x0($sp)
    /* 2EC9C 0012DD1C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 2ECA0 0012DD20 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2ECA4 0012DD24 00000000 */  nop
.align 2
  .L0012DD28:
    /* 2ECA8 0012DD28 00000000 */  nop
    /* 2ECAC 0012DD2C 00000000 */  nop
    /* 2ECB0 0012DD30 00000000 */  nop
    /* 2ECB4 0012DD34 00000000 */  nop
    /* 2ECB8 0012DD38 00000000 */  nop
    /* 2ECBC 0012DD3C FAFF4354 */  bnel       $v0, $v1, .L0012DD28
    /* 2ECC0 0012DD40 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2ECC4 0012DD44 0000A2AF */  sw         $v0, 0x0($sp)
.align 2
  .L0012DD48:
    /* 2ECC8 0012DD48 2400828E */  lw         $v0, 0x24($s4)
    /* 2ECCC 0012DD4C E0FF4010 */  beqz       $v0, .L0012DCD0
    /* 2ECD0 0012DD50 1200053C */   lui       $a1, (0x123457 >> 16)
    /* 2ECD4 0012DD54 007CC226 */  addiu      $v0, $s6, %lo(D_00137C00)
    /* 2ECD8 0012DD58 FC0F0324 */  addiu      $v1, $zero, 0xFFC
    /* 2ECDC 0012DD5C 8033C0AF */  sw         $zero, %lo(D_00133380)($fp)
    /* 2ECE0 0012DD60 1300043C */  lui        $a0, %hi(D_00134380)
    /* 2ECE4 0012DD64 007CC0AE */  sw         $zero, %lo(D_00137C00)($s6)
    /* 2ECE8 0012DD68 04000524 */  addiu      $a1, $zero, 0x4
    /* 2ECEC 0012DD6C 804380AC */  sw         $zero, %lo(D_00134380)($a0)
    /* 2ECF0 0012DD70 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2ECF4 0012DD74 1600013C */  lui        $at, %hi(D_0015EDAC)
    /* 2ECF8 0012DD78 ACED23AC */  sw         $v1, %lo(D_0015EDAC)($at)
    /* 2ECFC 0012DD7C 2D200000 */  daddu      $a0, $zero, $zero
    /* 2ED00 0012DD80 0000A2AF */  sw         $v0, 0x0($sp)
    /* 2ED04 0012DD84 100040AC */  sw         $zero, 0x10($v0)
    /* 2ED08 0012DD88 A2B9040C */  jal        func_0012E688
    /* 2ED0C 0012DD8C A88083AF */   sw        $v1, -0x7F58($gp)
    /* 2ED10 0012DD90 A000BF7B */  lq         $ra, 0xA0($sp)
    /* 2ED14 0012DD94 9000BE7B */  lq         $fp, 0x90($sp)
    /* 2ED18 0012DD98 8000B77B */  lq         $s7, 0x80($sp)
    /* 2ED1C 0012DD9C 7000B67B */  lq         $s6, 0x70($sp)
    /* 2ED20 0012DDA0 6000B57B */  lq         $s5, 0x60($sp)
    /* 2ED24 0012DDA4 5000B47B */  lq         $s4, 0x50($sp)
    /* 2ED28 0012DDA8 4000B37B */  lq         $s3, 0x40($sp)
    /* 2ED2C 0012DDAC 3000B27B */  lq         $s2, 0x30($sp)
    /* 2ED30 0012DDB0 2000B17B */  lq         $s1, 0x20($sp)
    /* 2ED34 0012DDB4 1000B07B */  lq         $s0, 0x10($sp)
    /* 2ED38 0012DDB8 0800E003 */  jr         $ra
    /* 2ED3C 0012DDBC B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_0012DB18
