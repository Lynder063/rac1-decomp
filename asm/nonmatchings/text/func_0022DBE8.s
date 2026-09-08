.align 3
nonmatching func_0022DBE8, 0x17C

glabel func_0022DBE8
    /* 12EB68 0022DBE8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 12EB6C 0022DBEC 03000324 */  addiu      $v1, $zero, 0x3
    /* 12EB70 0022DBF0 0000B07F */  sq         $s0, 0x0($sp)
    /* 12EB74 0022DBF4 1400103C */  lui        $s0, %hi(D_0013E650)
    /* 12EB78 0022DBF8 1000BF7F */  sq         $ra, 0x10($sp)
    /* 12EB7C 0022DBFC 50E60226 */  addiu      $v0, $s0, %lo(D_0013E650)
.align 2
  .L0022DC00:
    /* 12EB80 0022DC00 0000407C */  sq         $zero, 0x0($v0)
    /* 12EB84 0022DC04 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 12EB88 0022DC08 00000000 */  nop
    /* 12EB8C 0022DC0C 00000000 */  nop
    /* 12EB90 0022DC10 00000000 */  nop
    /* 12EB94 0022DC14 FAFF6104 */  bgez       $v1, .L0022DC00
    /* 12EB98 0022DC18 10004224 */   addiu     $v0, $v0, 0x10
    /* 12EB9C 0022DC1C 50E60226 */  addiu      $v0, $s0, %lo(D_0013E650)
    /* 12EBA0 0022DC20 2D184000 */  daddu      $v1, $v0, $zero
    /* 12EBA4 0022DC24 400040AC */  sw         $zero, 0x40($v0)
    /* 12EBA8 0022DC28 440040AC */  sw         $zero, 0x44($v0)
    /* 12EBAC 0022DC2C 200D6424 */  addiu      $a0, $v1, 0xD20
    /* 12EBB0 0022DC30 700060AC */  sw         $zero, 0x70($v1)
    /* 12EBB4 0022DC34 00000000 */  nop
.align 2
  .L0022DC38:
    /* 12EBB8 0022DC38 740060A0 */  sb         $zero, 0x74($v1)
    /* 12EBBC 0022DC3C 70006324 */  addiu      $v1, $v1, 0x70
    /* 12EBC0 0022DC40 2A106400 */  slt        $v0, $v1, $a0
    /* 12EBC4 0022DC44 00000000 */  nop
    /* 12EBC8 0022DC48 00000000 */  nop
    /* 12EBCC 0022DC4C FAFF4054 */  bnel       $v0, $zero, .L0022DC38
    /* 12EBD0 0022DC50 700060AC */   sw        $zero, 0x70($v1)
    /* 12EBD4 0022DC54 DAB6040C */  jal        func_0012DB68
    /* 12EBD8 0022DC58 50E61026 */   addiu     $s0, $s0, %lo(D_0013E650)
    /* 12EBDC 0022DC5C 1600043C */  lui        $a0, %hi(D_0015EEE8)
    /* 12EBE0 0022DC60 E8EE848C */  lw         $a0, %lo(D_0015EEE8)($a0)
    /* 12EBE4 0022DC64 E0B8040C */  jal        func_0012E380
    /* 12EBE8 0022DC68 0100842C */   sltiu     $a0, $a0, 0x1
    /* 12EBEC 0022DC6C 2D200000 */  daddu      $a0, $zero, $zero
    /* 12EBF0 0022DC70 F0B8040C */  jal        func_0012E3C0
    /* 12EBF4 0022DC74 01000524 */   addiu     $a1, $zero, 0x1
    /* 12EBF8 0022DC78 02000424 */  addiu      $a0, $zero, 0x2
    /* 12EBFC 0022DC7C 3ABC040C */  jal        func_0012F0E8
    /* 12EC00 0022DC80 04000524 */   addiu     $a1, $zero, 0x4
    /* 12EC04 0022DC84 01000424 */  addiu      $a0, $zero, 0x1
    /* 12EC08 0022DC88 18000524 */  addiu      $a1, $zero, 0x18
    /* 12EC0C 0022DC8C FEB8040C */  jal        func_0012E3F8
    /* 12EC10 0022DC90 2F000624 */   addiu     $a2, $zero, 0x2F
    /* 12EC14 0022DC94 02000424 */  addiu      $a0, $zero, 0x2
    /* 12EC18 0022DC98 18000524 */  addiu      $a1, $zero, 0x18
    /* 12EC1C 0022DC9C FEB8040C */  jal        func_0012E3F8
    /* 12EC20 0022DCA0 2F000624 */   addiu     $a2, $zero, 0x2F
    /* 12EC24 0022DCA4 2F000624 */  addiu      $a2, $zero, 0x2F
    /* 12EC28 0022DCA8 04000424 */  addiu      $a0, $zero, 0x4
    /* 12EC2C 0022DCAC FEB8040C */  jal        func_0012E3F8
    /* 12EC30 0022DCB0 18000524 */   addiu     $a1, $zero, 0x18
    /* 12EC34 0022DCB4 1600053C */  lui        $a1, %hi(D_0015EEF0)
    /* 12EC38 0022DCB8 F0EEA58C */  lw         $a1, %lo(D_0015EEF0)($a1)
    /* 12EC3C 0022DCBC 0A000324 */  addiu      $v1, $zero, 0xA
    /* 12EC40 0022DCC0 01006050 */  beql       $v1, $zero, .L0022DCC8
    /* 12EC44 0022DCC4 CD010000 */   break     0, 7
.align 2
  .L0022DCC8:
    /* 12EC48 0022DCC8 0A000724 */  addiu      $a3, $zero, 0xA
    /* 12EC4C 0022DCCC C0100500 */  sll        $v0, $a1, 3
    /* 12EC50 0022DCD0 1600043C */  lui        $a0, %hi(D_0015EEEC)
    /* 12EC54 0022DCD4 ECEE848C */  lw         $a0, %lo(D_0015EEEC)($a0)
    /* 12EC58 0022DCD8 1A004300 */  div        $zero, $v0, $v1
    /* 12EC5C 0022DCDC 23104500 */  subu       $v0, $v0, $a1
    /* 12EC60 0022DCE0 4C0004AE */  sw         $a0, 0x4C($s0)
    /* 12EC64 0022DCE4 0A000424 */  addiu      $a0, $zero, 0xA
    /* 12EC68 0022DCE8 12300000 */  mflo       $a2
    /* 12EC6C 0022DCEC 1A004300 */  div        $zero, $v0, $v1
    /* 12EC70 0022DCF0 480006AE */  sw         $a2, 0x48($s0)
    /* 12EC74 0022DCF4 500006AE */  sw         $a2, 0x50($s0)
    /* 12EC78 0022DCF8 12100000 */  mflo       $v0
    /* 12EC7C 0022DCFC 540002AE */  sw         $v0, 0x54($s0)
    /* 12EC80 0022DD00 580002AE */  sw         $v0, 0x58($s0)
    /* 12EC84 0022DD04 7858080C */  jal        func_002161E0
    /* 12EC88 0022DD08 5C0005AE */   sw        $a1, 0x5C($s0)
    /* 12EC8C 0022DD0C 4800058E */  lw         $a1, 0x48($s0)
    /* 12EC90 0022DD10 D2B8040C */  jal        func_0012E348
    /* 12EC94 0022DD14 2D200000 */   daddu     $a0, $zero, $zero
    /* 12EC98 0022DD18 4C00058E */  lw         $a1, 0x4C($s0)
    /* 12EC9C 0022DD1C D2B8040C */  jal        func_0012E348
    /* 12ECA0 0022DD20 01000424 */   addiu     $a0, $zero, 0x1
    /* 12ECA4 0022DD24 5000058E */  lw         $a1, 0x50($s0)
    /* 12ECA8 0022DD28 D2B8040C */  jal        func_0012E348
    /* 12ECAC 0022DD2C 02000424 */   addiu     $a0, $zero, 0x2
    /* 12ECB0 0022DD30 5400058E */  lw         $a1, 0x54($s0)
    /* 12ECB4 0022DD34 D2B8040C */  jal        func_0012E348
    /* 12ECB8 0022DD38 03000424 */   addiu     $a0, $zero, 0x3
    /* 12ECBC 0022DD3C 5800058E */  lw         $a1, 0x58($s0)
    /* 12ECC0 0022DD40 D2B8040C */  jal        func_0012E348
    /* 12ECC4 0022DD44 04000424 */   addiu     $a0, $zero, 0x4
    /* 12ECC8 0022DD48 5C00058E */  lw         $a1, 0x5C($s0)
    /* 12ECCC 0022DD4C D2B8040C */  jal        func_0012E348
    /* 12ECD0 0022DD50 05000424 */   addiu     $a0, $zero, 0x5
    /* 12ECD4 0022DD54 1000BF7B */  lq         $ra, 0x10($sp)
    /* 12ECD8 0022DD58 0000B07B */  lq         $s0, 0x0($sp)
    /* 12ECDC 0022DD5C 0800E003 */  jr         $ra
    /* 12ECE0 0022DD60 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0022DBE8
    /* 12ECE4 0022DD64 00000000 */  nop
