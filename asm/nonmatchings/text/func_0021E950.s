.align 3
nonmatching func_0021E950, 0x484

glabel func_0021E950
    /* 11F8D0 0021E950 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* 11F8D4 0021E954 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11F8D8 0021E958 3000B27F */  sq         $s2, 0x30($sp)
    /* 11F8DC 0021E95C 705F4224 */  addiu      $v0, $v0, %lo(D_001D5F70)
    /* 11F8E0 0021E960 A000BF7F */  sq         $ra, 0xA0($sp)
    /* 11F8E4 0021E964 2D908000 */  daddu      $s2, $a0, $zero
    /* 11F8E8 0021E968 9000BE7F */  sq         $fp, 0x90($sp)
    /* 11F8EC 0021E96C 42000424 */  addiu      $a0, $zero, 0x42
    /* 11F8F0 0021E970 8000B77F */  sq         $s7, 0x80($sp)
    /* 11F8F4 0021E974 00800534 */  ori        $a1, $zero, 0x8000
    /* 11F8F8 0021E978 382E0500 */  dsll       $a1, $a1, 24
    /* 11F8FC 0021E97C 4400A534 */  ori        $a1, $a1, 0x44
    /* 11F900 0021E980 7000B67F */  sq         $s6, 0x70($sp)
    /* 11F904 0021E984 6000B57F */  sq         $s5, 0x60($sp)
    /* 11F908 0021E988 5000B47F */  sq         $s4, 0x50($sp)
    /* 11F90C 0021E98C 4000B37F */  sq         $s3, 0x40($sp)
    /* 11F910 0021E990 2000B17F */  sq         $s1, 0x20($sp)
    /* 11F914 0021E994 1000B07F */  sq         $s0, 0x10($sp)
    /* 11F918 0021E998 D800B9E7 */  swc1       $f25, 0xD8($sp)
    /* 11F91C 0021E99C D000B8E7 */  swc1       $f24, 0xD0($sp)
    /* 11F920 0021E9A0 C800B7E7 */  swc1       $f23, 0xC8($sp)
    /* 11F924 0021E9A4 C000B6E7 */  swc1       $f22, 0xC0($sp)
    /* 11F928 0021E9A8 B800B5E7 */  swc1       $f21, 0xB8($sp)
    /* 11F92C 0021E9AC B000B4E7 */  swc1       $f20, 0xB0($sp)
    /* 11F930 0021E9B0 0400468C */  lw         $a2, 0x4($v0)
    /* 11F934 0021E9B4 1400438E */  lw         $v1, 0x14($s2)
    /* 11F938 0021E9B8 4000C28C */  lw         $v0, 0x40($a2)
    /* 11F93C 0021E9BC 7800708C */  lw         $s0, 0x78($v1)
    /* 11F940 0021E9C0 26105200 */  xor        $v0, $v0, $s2
    /* 11F944 0021E9C4 4800518E */  lw         $s1, 0x48($s2)
    /* 11F948 0021E9C8 0100422C */  sltiu      $v0, $v0, 0x1
    /* 11F94C 0021E9CC 26D3080C */  jal        func_00234C98
    /* 11F950 0021E9D0 0000A2AF */   sw        $v0, 0x0($sp)
    /* 11F954 0021E9D4 47000424 */  addiu      $a0, $zero, 0x47
    /* 11F958 0021E9D8 26D3080C */  jal        func_00234C98
    /* 11F95C 0021E9DC 0B000524 */   addiu     $a1, $zero, 0xB
    /* 11F960 0021E9E0 8CD1070C */  jal        func_001F4630
    /* 11F964 0021E9E4 2D200000 */   daddu     $a0, $zero, $zero
    /* 11F968 0021E9E8 4400438E */  lw         $v1, 0x44($s2)
    /* 11F96C 0021E9EC 02006228 */  slti       $v0, $v1, 0x2
    /* 11F970 0021E9F0 13004014 */  bnez       $v0, .L0021EA40
    /* 11F974 0021E9F4 400000C6 */   lwc1      $f0, 0x40($s0)
    /* 11F978 0021E9F8 340058C6 */  lwc1       $f24, 0x34($s2)
    /* 11F97C 0021E9FC 00088344 */  mtc1       $v1, $f1
    /* 11F980 0021EA00 00000000 */  nop
    /* 11F984 0021EA04 60088046 */  cvt.s.w    $f1, $f1
    /* 11F988 0021EA08 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 11F98C 0021EA0C 00C11846 */  add.s      $f4, $f24, $f24
    /* 11F990 0021EA10 909682C7 */  lwc1       $f2, -0x6970($gp)
    /* 11F994 0021EA14 06020046 */  mov.s      $f8, $f0
    /* 11F998 0021EA18 00188244 */  mtc1       $v0, $f3
    /* 11F99C 0021EA1C 00000000 */  nop
    /* 11F9A0 0021EA20 E0188046 */  cvt.s.w    $f3, $f3
    /* 11F9A4 0021EA24 42100146 */  mul.s      $f1, $f2, $f1
    /* 11F9A8 0021EA28 46120046 */  mov.s      $f9, $f2
    /* 11F9AC 0021EA2C 01000446 */  sub.s      $f0, $f0, $f4
    /* 11F9B0 0021EA30 01000146 */  sub.s      $f0, $f0, $f1
    /* 11F9B4 0021EA34 03000346 */  div.s      $f0, $f0, $f3
    /* 11F9B8 0021EA38 09000010 */  b          .L0021EA60
    /* 11F9BC 0021EA3C 40160046 */   add.s     $f25, $f2, $f0
.align 2
  .L0021EA40:
    /* 11F9C0 0021EA40 909681C7 */  lwc1       $f1, -0x6970($gp)
    /* 11F9C4 0021EA44 06020046 */  mov.s      $f8, $f0
    /* 11F9C8 0021EA48 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 11F9CC 0021EA4C 00108144 */  mtc1       $at, $f2
    /* 11F9D0 0021EA50 01000146 */  sub.s      $f0, $f0, $f1
    /* 11F9D4 0021EA54 460A0046 */  mov.s      $f9, $f1
    /* 11F9D8 0021EA58 00C88044 */  mtc1       $zero, $f25
    /* 11F9DC 0021EA5C 02060246 */  mul.s      $f24, $f0, $f2
.align 2
  .L0021EA60:
    /* 11F9E0 0021EA60 3000428E */  lw         $v0, 0x30($s2)
    /* 11F9E4 0021EA64 02004230 */  andi       $v0, $v0, 0x2
    /* 11F9E8 0021EA68 0A004010 */  beqz       $v0, .L0021EA94
    /* 11F9EC 0021EA6C 949680C7 */   lwc1      $f0, -0x696C($gp)
    /* 11F9F0 0021EA70 193E013C */  lui        $at, (0x3E19999A >> 16)
    /* 11F9F4 0021EA74 9A992134 */  ori        $at, $at, (0x3E19999A & 0xFFFF)
    /* 11F9F8 0021EA78 00088144 */  mtc1       $at, $f1
    /* 11F9FC 0021EA7C C6010046 */  mov.s      $f7, $f0
    /* 11FA00 0021EA80 440006C6 */  lwc1       $f6, 0x44($s0)
    /* 11FA04 0021EA84 C0050146 */  add.s      $f23, $f0, $f1
    /* 11FA08 0021EA88 380045C6 */  lwc1       $f5, 0x38($s2)
    /* 11FA0C 0021EA8C 20000010 */  b          .L0021EB10
    /* 11FA10 0021EA90 4000458E */   lw        $a1, 0x40($s2)
.align 2
  .L0021EA94:
    /* 11FA14 0021EA94 4000428E */  lw         $v0, 0x40($s2)
    /* 11FA18 0021EA98 2D284000 */  daddu      $a1, $v0, $zero
    /* 11FA1C 0021EA9C 02004228 */  slti       $v0, $v0, 0x2
    /* 11FA20 0021EAA0 13004014 */  bnez       $v0, .L0021EAF0
    /* 11FA24 0021EAA4 440000C6 */   lwc1      $f0, 0x44($s0)
    /* 11FA28 0021EAA8 380045C6 */  lwc1       $f5, 0x38($s2)
    /* 11FA2C 0021EAAC 00108544 */  mtc1       $a1, $f2
    /* 11FA30 0021EAB0 00000000 */  nop
    /* 11FA34 0021EAB4 A0108046 */  cvt.s.w    $f2, $f2
    /* 11FA38 0021EAB8 FFFFA224 */  addiu      $v0, $a1, -0x1
    /* 11FA3C 0021EABC C0280546 */  add.s      $f3, $f5, $f5
    /* 11FA40 0021EAC0 949681C7 */  lwc1       $f1, -0x696C($gp)
    /* 11FA44 0021EAC4 86010046 */  mov.s      $f6, $f0
    /* 11FA48 0021EAC8 00208244 */  mtc1       $v0, $f4
    /* 11FA4C 0021EACC 00000000 */  nop
    /* 11FA50 0021EAD0 20218046 */  cvt.s.w    $f4, $f4
    /* 11FA54 0021EAD4 82080246 */  mul.s      $f2, $f1, $f2
    /* 11FA58 0021EAD8 C6090046 */  mov.s      $f7, $f1
    /* 11FA5C 0021EADC 01000346 */  sub.s      $f0, $f0, $f3
    /* 11FA60 0021EAE0 01000246 */  sub.s      $f0, $f0, $f2
    /* 11FA64 0021EAE4 03000446 */  div.s      $f0, $f0, $f4
    /* 11FA68 0021EAE8 09000010 */  b          .L0021EB10
    /* 11FA6C 0021EAEC C00D0046 */   add.s     $f23, $f1, $f0
.align 2
  .L0021EAF0:
    /* 11FA70 0021EAF0 949681C7 */  lwc1       $f1, -0x696C($gp)
    /* 11FA74 0021EAF4 86010046 */  mov.s      $f6, $f0
    /* 11FA78 0021EAF8 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 11FA7C 0021EAFC 00108144 */  mtc1       $at, $f2
    /* 11FA80 0021EB00 01000146 */  sub.s      $f0, $f0, $f1
    /* 11FA84 0021EB04 C6090046 */  mov.s      $f7, $f1
    /* 11FA88 0021EB08 00B88044 */  mtc1       $zero, $f23
    /* 11FA8C 0021EB0C 42010246 */  mul.s      $f5, $f0, $f2
.align 2
  .L0021EB10:
    /* 11FA90 0021EB10 2400428E */  lw         $v0, 0x24($s2)
    /* 11FA94 0021EB14 34300846 */  c.lt.s     $f6, $f8
    /* 11FA98 0021EB18 2000448E */  lw         $a0, 0x20($s2)
    /* 11FA9C 0021EB1C 2A184400 */  slt        $v1, $v0, $a0
    /* 11FAA0 0021EB20 0B108300 */  movn       $v0, $a0, $v1
    /* 11FAA4 0021EB24 00110200 */  sll        $v0, $v0, 4
    /* 11FAA8 0021EB28 00008244 */  mtc1       $v0, $f0
    /* 11FAAC 0021EB2C 00000000 */  nop
    /* 11FAB0 0021EB30 20008046 */  cvt.s.w    $f0, $f0
    /* 11FAB4 0021EB34 02000245 */  bc1fl      .L0021EB40
    /* 11FAB8 0021EB38 43050646 */   div.s     $f21, $f0, $f6
    /* 11FABC 0021EB3C 43050846 */  div.s      $f21, $f0, $f8
.align 2
  .L0021EB40:
    /* 11FAC0 0021EB40 42A80946 */  mul.s      $f1, $f21, $f9
    /* 11FAC4 0021EB44 C6280046 */  mov.s      $f3, $f5
    /* 11FAC8 0021EB48 02A80746 */  mul.s      $f0, $f21, $f7
    /* 11FACC 0021EB4C A4080046 */  .word      0x460008A4                    # cvt.w.s    $f2, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 11FAD0 0021EB50 00101744 */  mfc1       $s7, $f2
    /* 11FAD4 0021EB54 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 11FAD8 0021EB58 00081E44 */  mfc1       $fp, $f1
    /* 11FADC 0021EB5C 8800A018 */  blez       $a1, .L0021ED80
    /* 11FAE0 0021EB60 2D180000 */   daddu     $v1, $zero, $zero
    /* 11FAE4 0021EB64 00000000 */  nop
.align 2
  .L0021EB68:
    /* 11FAE8 0021EB68 4400428E */  lw         $v0, 0x44($s2)
    /* 11FAEC 0021EB6C 01006324 */  addiu      $v1, $v1, 0x1
    /* 11FAF0 0021EB70 0400A3AF */  sw         $v1, 0x4($sp)
    /* 11FAF4 0021EB74 06C50046 */  mov.s      $f20, $f24
    /* 11FAF8 0021EB78 2DA80000 */  daddu      $s5, $zero, $zero
    /* 11FAFC 0021EB7C 7B004018 */  blez       $v0, .L0021ED6C
    /* 11FB00 0021EB80 801D1746 */   add.s     $f22, $f3, $f23
    /* 11FB04 0021EB84 02A80346 */  mul.s      $f0, $f21, $f3
    /* 11FB08 0021EB88 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 11FB0C 0021EB8C 00081444 */  mfc1       $s4, $f1
    /* 11FB10 0021EB90 21B09E02 */  addu       $s6, $s4, $fp
    /* 11FB14 0021EB94 00000000 */  nop
.align 2
  .L0021EB98:
    /* 11FB18 0021EB98 02A81446 */  mul.s      $f0, $f21, $f20
    /* 11FB1C 0021EB9C 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 11FB20 0021EBA0 00081344 */  mfc1       $s3, $f1
    /* 11FB24 0021EBA4 0000A28F */  lw         $v0, 0x0($sp)
    /* 11FB28 0021EBA8 24004010 */  beqz       $v0, .L0021EC3C
    /* 11FB2C 0021EBAC 21807702 */   addu      $s0, $s3, $s7
    /* 11FB30 0021EBB0 4800428E */  lw         $v0, 0x48($s2)
    /* 11FB34 0021EBB4 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 11FB38 0021EBB8 CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 11FB3C 0021EBBC 3C00448E */  lw         $a0, 0x3C($s2)
    /* 11FB40 0021EBC0 23102202 */  subu       $v0, $s1, $v0
    /* 11FB44 0021EBC4 18104300 */  mult       $v0, $v0, $v1
    /* 11FB48 0021EBC8 43100200 */  sra        $v0, $v0, 1
    /* 11FB4C 0021EBCC 1C008254 */  bnel       $a0, $v0, .L0021EC40
    /* 11FB50 0021EBD0 04002286 */   lh        $v0, 0x4($s1)
    /* 11FB54 0021EBD4 1600043C */  lui        $a0, %hi(D_0015F538)
    /* 11FB58 0021EBD8 38F5848C */  lw         $a0, %lo(D_0015F538)($a0)
    /* 11FB5C 0021EBDC 3F008430 */  andi       $a0, $a0, 0x3F
    /* 11FB60 0021EBE0 DCE6070C */  jal        func_001F9B70
    /* 11FB64 0021EBE4 E0FF8424 */   addiu     $a0, $a0, -0x20
    /* 11FB68 0021EBE8 0100033C */  lui        $v1, (0x10202 >> 16)
    /* 11FB6C 0021EBEC 40004224 */  addiu      $v0, $v0, 0x40
    /* 11FB70 0021EBF0 02026334 */  ori        $v1, $v1, (0x10202 & 0xFFFF)
    /* 11FB74 0021EBF4 0080083C */  lui        $t0, (0x80000000 >> 16)
    /* 11FB78 0021EBF8 18104300 */  mult       $v0, $v0, $v1
    /* 11FB7C 0021EBFC D0FF6426 */  addiu      $a0, $s3, -0x30
    /* 11FB80 0021EC00 D0FF8526 */  addiu      $a1, $s4, -0x30
    /* 11FB84 0021EC04 30000626 */  addiu      $a2, $s0, 0x30
    /* 11FB88 0021EC08 3000C726 */  addiu      $a3, $s6, 0x30
    /* 11FB8C 0021EC0C 01000924 */  addiu      $t1, $zero, 0x1
    /* 11FB90 0021EC10 25104800 */  or         $v0, $v0, $t0
    /* 11FB94 0021EC14 3C100200 */  dsll32     $v0, $v0, 0
    /* 11FB98 0021EC18 9005080C */  jal        func_00201640
    /* 11FB9C 0021EC1C 3E400200 */   dsrl32    $t0, $v0, 0
    /* 11FBA0 0021EC20 B095888F */  lw         $t0, -0x6A50($gp)
    /* 11FBA4 0021EC24 10000626 */  addiu      $a2, $s0, 0x10
    /* 11FBA8 0021EC28 F0FF6426 */  addiu      $a0, $s3, -0x10
    /* 11FBAC 0021EC2C F0FF8526 */  addiu      $a1, $s4, -0x10
    /* 11FBB0 0021EC30 1000C726 */  addiu      $a3, $s6, 0x10
    /* 11FBB4 0021EC34 9005080C */  jal        func_00201640
    /* 11FBB8 0021EC38 01000924 */   addiu     $t1, $zero, 0x1
.align 2
  .L0021EC3C:
    /* 11FBBC 0021EC3C 04002286 */  lh         $v0, 0x4($s1)
.align 2
  .L0021EC40:
    /* 11FBC0 0021EC40 0A004014 */  bnez       $v0, .L0021EC6C
    /* 11FBC4 0021EC44 04002596 */   lhu       $a1, 0x4($s1)
    /* 11FBC8 0021EC48 06002286 */  lh         $v0, 0x6($s1)
    /* 11FBCC 0021EC4C 1400033C */  lui        $v1, %hi(D_0013D5C8)
    /* 11FBD0 0021EC50 C8D56324 */  addiu      $v1, $v1, %lo(D_0013D5C8)
    /* 11FBD4 0021EC54 21104300 */  addu       $v0, $v0, $v1
    /* 11FBD8 0021EC58 00004390 */  lbu        $v1, 0x0($v0)
    /* 11FBDC 0021EC5C 0A006014 */  bnez       $v1, .L0021EC88
    /* 11FBE0 0021EC60 06002496 */   lhu       $a0, 0x6($s1)
    /* 11FBE4 0021EC64 3C000010 */  b          .L0021ED58
    /* 11FBE8 0021EC68 4400428E */   lw        $v0, 0x44($s2)
.align 2
  .L0021EC6C:
    /* 11FBEC 0021EC6C 06002286 */  lh         $v0, 0x6($s1)
    /* 11FBF0 0021EC70 1400033C */  lui        $v1, %hi(D_0013D490)
    /* 11FBF4 0021EC74 90D46324 */  addiu      $v1, $v1, %lo(D_0013D490)
    /* 11FBF8 0021EC78 21104300 */  addu       $v0, $v0, $v1
    /* 11FBFC 0021EC7C 00004390 */  lbu        $v1, 0x0($v0)
    /* 11FC00 0021EC80 34006010 */  beqz       $v1, .L0021ED54
    /* 11FC04 0021EC84 06002496 */   lhu       $a0, 0x6($s1)
.align 2
  .L0021EC88:
    /* 11FC08 0021EC88 2700A014 */  bnez       $a1, .L0021ED28
    /* 11FC0C 0021EC8C 2D300000 */   daddu     $a2, $zero, $zero
    /* 11FC10 0021EC90 00140400 */  sll        $v0, $a0, 16
    /* 11FC14 0021EC94 4C000324 */  addiu      $v1, $zero, 0x4C
    /* 11FC18 0021EC98 03240200 */  sra        $a0, $v0, 16
    /* 11FC1C 0021EC9C 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11FC20 0021ECA0 705F4524 */  addiu      $a1, $v0, %lo(D_001D5F70)
    /* 11FC24 0021ECA4 1800023C */  lui        $v0, %hi(D_001864D8)
    /* 11FC28 0021ECA8 D8644224 */  addiu      $v0, $v0, %lo(D_001864D8)
    /* 11FC2C 0021ECAC 13004000 */  mtlo       $v0
    /* 11FC30 0021ECB0 00188370 */  madd       $v1, $a0, $v1
    /* 11FC34 0021ECB4 0000628C */  lw         $v0, 0x0($v1)
    /* 11FC38 0021ECB8 80100200 */  sll        $v0, $v0, 2
    /* 11FC3C 0021ECBC 2110A200 */  addu       $v0, $a1, $v0
    /* 11FC40 0021ECC0 3000438C */  lw         $v1, 0x30($v0)
    /* 11FC44 0021ECC4 04006414 */  bne        $v1, $a0, .L0021ECD8
    /* 11FC48 0021ECC8 00000000 */   nop
    /* 11FC4C 0021ECCC 3000428E */  lw         $v0, 0x30($s2)
    /* 11FC50 0021ECD0 20004230 */  andi       $v0, $v0, 0x20
    /* 11FC54 0021ECD4 0100462C */  sltiu      $a2, $v0, 0x1
.align 2
  .L0021ECD8:
    /* 11FC58 0021ECD8 0800C054 */  bnel       $a2, $zero, .L0021ECFC
    /* 11FC5C 0021ECDC 3401A28C */   lw        $v0, 0x134($a1)
    /* 11FC60 0021ECE0 1400023C */  lui        $v0, %hi(D_0013E620)
    /* 11FC64 0021ECE4 04000624 */  addiu      $a2, $zero, 0x4
    /* 11FC68 0021ECE8 20E64224 */  addiu      $v0, $v0, %lo(D_0013E620)
    /* 11FC6C 0021ECEC 21188200 */  addu       $v1, $a0, $v0
    /* 11FC70 0021ECF0 00006290 */  lbu        $v0, 0x0($v1)
    /* 11FC74 0021ECF4 0A300200 */  movz       $a2, $zero, $v0
    /* 11FC78 0021ECF8 3401A28C */  lw         $v0, 0x134($a1)
.align 2
  .L0021ECFC:
    /* 11FC7C 0021ECFC 04004010 */  beqz       $v0, .L0021ED10
    /* 11FC80 0021ED00 02000324 */   addiu     $v1, $zero, 0x2
    /* 11FC84 0021ED04 3000428E */  lw         $v0, 0x30($s2)
    /* 11FC88 0021ED08 08004230 */  andi       $v0, $v0, 0x8
    /* 11FC8C 0021ED0C 0B306200 */  movn       $a2, $v1, $v0
.align 2
  .L0021ED10:
    /* 11FC90 0021ED10 3801A28C */  lw         $v0, 0x138($a1)
    /* 11FC94 0021ED14 04004010 */  beqz       $v0, .L0021ED28
    /* 11FC98 0021ED18 02000324 */   addiu     $v1, $zero, 0x2
    /* 11FC9C 0021ED1C 3000428E */  lw         $v0, 0x30($s2)
    /* 11FCA0 0021ED20 04004230 */  andi       $v0, $v0, 0x4
    /* 11FCA4 0021ED24 0B306200 */  movn       $a2, $v1, $v0
.align 2
  .L0021ED28:
    /* 11FCA8 0021ED28 02002586 */  lh         $a1, 0x2($s1)
    /* 11FCAC 0021ED2C 00002496 */  lhu        $a0, 0x0($s1)
    /* 11FCB0 0021ED30 6600080C */  jal        func_00200198
    /* 11FCB4 0021ED34 2128A600 */   addu      $a1, $a1, $a2
    /* 11FCB8 0021ED38 2D204000 */  daddu      $a0, $v0, $zero
    /* 11FCBC 0021ED3C 2D286002 */  daddu      $a1, $s3, $zero
    /* 11FCC0 0021ED40 2D308002 */  daddu      $a2, $s4, $zero
    /* 11FCC4 0021ED44 2D38E002 */  daddu      $a3, $s7, $zero
    /* 11FCC8 0021ED48 2D40C003 */  daddu      $t0, $fp, $zero
    /* 11FCCC 0021ED4C 2E02080C */  jal        func_002008B8
    /* 11FCD0 0021ED50 80000924 */   addiu     $t1, $zero, 0x80
.align 2
  .L0021ED54:
    /* 11FCD4 0021ED54 4400428E */  lw         $v0, 0x44($s2)
.align 2
  .L0021ED58:
    /* 11FCD8 0021ED58 0100B526 */  addiu      $s5, $s5, 0x1
    /* 11FCDC 0021ED5C 0A003126 */  addiu      $s1, $s1, 0xA
    /* 11FCE0 0021ED60 2A10A202 */  slt        $v0, $s5, $v0
    /* 11FCE4 0021ED64 8CFF4014 */  bnez       $v0, .L0021EB98
    /* 11FCE8 0021ED68 00A51946 */   add.s     $f20, $f20, $f25
.align 2
  .L0021ED6C:
    /* 11FCEC 0021ED6C 4000428E */  lw         $v0, 0x40($s2)
    /* 11FCF0 0021ED70 0400A38F */  lw         $v1, 0x4($sp)
    /* 11FCF4 0021ED74 2A106200 */  slt        $v0, $v1, $v0
    /* 11FCF8 0021ED78 7BFF4014 */  bnez       $v0, .L0021EB68
    /* 11FCFC 0021ED7C C6B00046 */   mov.s     $f3, $f22
.align 2
  .L0021ED80:
    /* 11FD00 0021ED80 D2D1070C */  jal        func_001F4748
    /* 11FD04 0021ED84 00000000 */   nop
    /* 11FD08 0021ED88 A000BF7B */  lq         $ra, 0xA0($sp)
    /* 11FD0C 0021ED8C 02000224 */  addiu      $v0, $zero, 0x2
    /* 11FD10 0021ED90 9000BE7B */  lq         $fp, 0x90($sp)
    /* 11FD14 0021ED94 8000B77B */  lq         $s7, 0x80($sp)
    /* 11FD18 0021ED98 7000B67B */  lq         $s6, 0x70($sp)
    /* 11FD1C 0021ED9C 6000B57B */  lq         $s5, 0x60($sp)
    /* 11FD20 0021EDA0 5000B47B */  lq         $s4, 0x50($sp)
    /* 11FD24 0021EDA4 4000B37B */  lq         $s3, 0x40($sp)
    /* 11FD28 0021EDA8 3000B27B */  lq         $s2, 0x30($sp)
    /* 11FD2C 0021EDAC 2000B17B */  lq         $s1, 0x20($sp)
    /* 11FD30 0021EDB0 1000B07B */  lq         $s0, 0x10($sp)
    /* 11FD34 0021EDB4 D800B9C7 */  lwc1       $f25, 0xD8($sp)
    /* 11FD38 0021EDB8 D000B8C7 */  lwc1       $f24, 0xD0($sp)
    /* 11FD3C 0021EDBC C800B7C7 */  lwc1       $f23, 0xC8($sp)
    /* 11FD40 0021EDC0 C000B6C7 */  lwc1       $f22, 0xC0($sp)
    /* 11FD44 0021EDC4 B800B5C7 */  lwc1       $f21, 0xB8($sp)
    /* 11FD48 0021EDC8 B000B4C7 */  lwc1       $f20, 0xB0($sp)
    /* 11FD4C 0021EDCC 0800E003 */  jr         $ra
    /* 11FD50 0021EDD0 E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_0021E950
    /* 11FD54 0021EDD4 00000000 */  nop
