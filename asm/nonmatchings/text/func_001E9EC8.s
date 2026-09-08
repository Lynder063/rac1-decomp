.align 3
nonmatching func_001E9EC8, 0xD1C

glabel func_001E9EC8
    /* EAE48 001E9EC8 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* EAE4C 001E9ECC 1900023C */  lui        $v0, %hi(D_001941D8)
    /* EAE50 001E9ED0 0000A4AF */  sw         $a0, 0x0($sp)
    /* EAE54 001E9ED4 2D280000 */  daddu      $a1, $zero, $zero
    /* EAE58 001E9ED8 D841428C */  lw         $v0, %lo(D_001941D8)($v0)
    /* EAE5C 001E9EDC 1400043C */  lui        $a0, %hi(D_0013F450)
    /* EAE60 001E9EE0 B000BF7F */  sq         $ra, 0xB0($sp)
    /* EAE64 001E9EE4 50F48424 */  addiu      $a0, $a0, %lo(D_0013F450)
    /* EAE68 001E9EE8 0400A2AF */  sw         $v0, 0x4($sp)
    /* EAE6C 001E9EEC 10230624 */  addiu      $a2, $zero, 0x2310
    /* EAE70 001E9EF0 A000BE7F */  sq         $fp, 0xA0($sp)
    /* EAE74 001E9EF4 9000B77F */  sq         $s7, 0x90($sp)
    /* EAE78 001E9EF8 8000B67F */  sq         $s6, 0x80($sp)
    /* EAE7C 001E9EFC 7000B57F */  sq         $s5, 0x70($sp)
    /* EAE80 001E9F00 6000B47F */  sq         $s4, 0x60($sp)
    /* EAE84 001E9F04 5000B37F */  sq         $s3, 0x50($sp)
    /* EAE88 001E9F08 4000B27F */  sq         $s2, 0x40($sp)
    /* EAE8C 001E9F0C 3000B17F */  sq         $s1, 0x30($sp)
    /* EAE90 001E9F10 2000B07F */  sq         $s0, 0x20($sp)
    /* EAE94 001E9F14 D000B6E7 */  swc1       $f22, 0xD0($sp)
    /* EAE98 001E9F18 C800B5E7 */  swc1       $f21, 0xC8($sp)
    /* EAE9C 001E9F1C 6CE6070C */  jal        func_001F99B0
    /* EAEA0 001E9F20 C000B4E7 */   swc1      $f20, 0xC0($sp)
    /* EAEA4 001E9F24 1800043C */  lui        $a0, %hi(D_00187040)
    /* EAEA8 001E9F28 2D280000 */  daddu      $a1, $zero, $zero
    /* EAEAC 001E9F2C 40708424 */  addiu      $a0, $a0, %lo(D_00187040)
    /* EAEB0 001E9F30 6CE6070C */  jal        func_001F99B0
    /* EAEB4 001E9F34 A0030624 */   addiu     $a2, $zero, 0x3A0
    /* EAEB8 001E9F38 1B00043C */  lui        $a0, %hi(D_001AADC0)
    /* EAEBC 001E9F3C 2D280000 */  daddu      $a1, $zero, $zero
    /* EAEC0 001E9F40 C0AD8424 */  addiu      $a0, $a0, %lo(D_001AADC0)
    /* EAEC4 001E9F44 6CE6070C */  jal        func_001F99B0
    /* EAEC8 001E9F48 80010624 */   addiu     $a2, $zero, 0x180
    /* EAECC 001E9F4C 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* EAED0 001E9F50 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* EAED4 001E9F54 0C004010 */  beqz       $v0, .L001E9F88
    /* EAED8 001E9F58 608181C7 */   lwc1      $f1, -0x7EA0($gp)
    /* EAEDC 001E9F5C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EAEE0 001E9F60 00008144 */  mtc1       $at, $f0
    /* EAEE4 001E9F64 00000000 */  nop
    /* EAEE8 001E9F68 32080046 */  c.eq.s     $f1, $f0
    /* EAEEC 001E9F6C 00000000 */  nop
    /* EAEF0 001E9F70 10000045 */  bc1f       .L001E9FB4
    /* EAEF4 001E9F74 80818593 */   lbu       $a1, -0x7E80($gp)
    /* EAEF8 001E9F78 F055080C */  jal        func_002157C0
    /* EAEFC 001E9F7C 01000424 */   addiu     $a0, $zero, 0x1
    /* EAF00 001E9F80 0C000010 */  b          .L001E9FB4
    /* EAF04 001E9F84 80818593 */   lbu       $a1, -0x7E80($gp)
.align 2
  .L001E9F88:
    /* EAF08 001E9F88 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EAF0C 001E9F8C 00008144 */  mtc1       $at, $f0
    /* EAF10 001E9F90 00000000 */  nop
    /* EAF14 001E9F94 32080046 */  c.eq.s     $f1, $f0
    /* EAF18 001E9F98 00000000 */  nop
    /* EAF1C 001E9F9C 05000145 */  bc1t       .L001E9FB4
    /* EAF20 001E9FA0 80818593 */   lbu       $a1, -0x7E80($gp)
    /* EAF24 001E9FA4 F055080C */  jal        func_002157C0
    /* EAF28 001E9FA8 2D200000 */   daddu     $a0, $zero, $zero
    /* EAF2C 001E9FAC 1600053C */  lui        $a1, %hi(D_0015EE80)
    /* EAF30 001E9FB0 80EEA590 */  lbu        $a1, %lo(D_0015EE80)($a1)
.align 2
  .L001E9FB4:
    /* EAF34 001E9FB4 1900023C */  lui        $v0, %hi(D_00194200)
    /* EAF38 001E9FB8 1900033C */  lui        $v1, %hi(D_001942C0)
    /* EAF3C 001E9FBC 1900063C */  lui        $a2, %hi(D_00194280)
    /* EAF40 001E9FC0 00424224 */  addiu      $v0, $v0, %lo(D_00194200)
    /* EAF44 001E9FC4 1600013C */  lui        $at, %hi(D_0016044C)
    /* EAF48 001E9FC8 4C0425A0 */  sb         $a1, %lo(D_0016044C)($at)
    /* EAF4C 001E9FCC 8042C624 */  addiu      $a2, $a2, %lo(D_00194280)
    /* EAF50 001E9FD0 C0426324 */  addiu      $v1, $v1, %lo(D_001942C0)
    /* EAF54 001E9FD4 1B00043C */  lui        $a0, %hi(D_001B7A60)
    /* EAF58 001E9FD8 080046AC */  sw         $a2, 0x8($v0)
    /* EAF5C 001E9FDC 040043AC */  sw         $v1, 0x4($v0)
    /* EAF60 001E9FE0 607A8424 */  addiu      $a0, $a0, %lo(D_001B7A60)
    /* EAF64 001E9FE4 140040AC */  sw         $zero, 0x14($v0)
    /* EAF68 001E9FE8 0100053C */  lui        $a1, (0x10000 >> 16)
    /* EAF6C 001E9FEC 0C0040AC */  sw         $zero, 0xC($v0)
    /* EAF70 001E9FF0 76E6070C */  jal        func_001F99D8
    /* EAF74 001E9FF4 100040AC */   sw        $zero, 0x10($v0)
    /* EAF78 001E9FF8 1C00043C */  lui        $a0, %hi(D_001C7A60)
    /* EAF7C 001E9FFC 60000524 */  addiu      $a1, $zero, 0x60
    /* EAF80 001EA000 76E6070C */  jal        func_001F99D8
    /* EAF84 001EA004 607A8424 */   addiu     $a0, $a0, %lo(D_001C7A60)
    /* EAF88 001EA008 0000A38F */  lw         $v1, 0x0($sp)
    /* EAF8C 001EA00C 1900103C */  lui        $s0, %hi(D_0018CE00)
    /* EAF90 001EA010 00CE1026 */  addiu      $s0, $s0, %lo(D_0018CE00)
    /* EAF94 001EA014 0000628C */  lw         $v0, 0x0($v1)
    /* EAF98 001EA018 21106200 */  addu       $v0, $v1, $v0
    /* EAF9C 001EA01C 0000438C */  lw         $v1, 0x0($v0)
    /* EAFA0 001EA020 04004224 */  addiu      $v0, $v0, 0x4
    /* EAFA4 001EA024 3C0203AE */  sw         $v1, 0x23C($s0)
    /* EAFA8 001EA028 0000448C */  lw         $a0, 0x0($v0)
    /* EAFAC 001EA02C 04004224 */  addiu      $v0, $v0, 0x4
    /* EAFB0 001EA030 400204AE */  sw         $a0, 0x240($s0)
    /* EAFB4 001EA034 0000438C */  lw         $v1, 0x0($v0)
    /* EAFB8 001EA038 04004224 */  addiu      $v0, $v0, 0x4
    /* EAFBC 001EA03C 440203AE */  sw         $v1, 0x244($s0)
    /* EAFC0 001EA040 00004490 */  lbu        $a0, 0x0($v0)
    /* EAFC4 001EA044 04004224 */  addiu      $v0, $v0, 0x4
    /* EAFC8 001EA048 1600013C */  lui        $at, %hi(D_0015F584)
    /* EAFCC 001EA04C 84F524A0 */  sb         $a0, %lo(D_0015F584)($at)
    /* EAFD0 001EA050 00004390 */  lbu        $v1, 0x0($v0)
    /* EAFD4 001EA054 04004224 */  addiu      $v0, $v0, 0x4
    /* EAFD8 001EA058 1600013C */  lui        $at, %hi(D_0015F585)
    /* EAFDC 001EA05C 85F523A0 */  sb         $v1, %lo(D_0015F585)($at)
    /* EAFE0 001EA060 00004490 */  lbu        $a0, 0x0($v0)
    /* EAFE4 001EA064 04004224 */  addiu      $v0, $v0, 0x4
    /* EAFE8 001EA068 1600013C */  lui        $at, %hi(D_0015F586)
    /* EAFEC 001EA06C 86F524A0 */  sb         $a0, %lo(D_0015F586)($at)
    /* EAFF0 001EA070 000040C4 */  lwc1       $f0, 0x0($v0)
    /* EAFF4 001EA074 1600013C */  lui        $at, %hi(D_0015F588)
    /* EAFF8 001EA078 88F520E4 */  swc1       $f0, %lo(D_0015F588)($at)
    /* EAFFC 001EA07C 040041C4 */  lwc1       $f1, 0x4($v0)
    /* EB000 001EA080 1600013C */  lui        $at, %hi(D_0015F58C)
    /* EB004 001EA084 8CF521E4 */  swc1       $f1, %lo(D_0015F58C)($at)
    /* EB008 001EA088 080040C4 */  lwc1       $f0, 0x8($v0)
    /* EB00C 001EA08C 1600013C */  lui        $at, %hi(D_0015F590)
    /* EB010 001EA090 90F520E4 */  swc1       $f0, %lo(D_0015F590)($at)
    /* EB014 001EA094 0C0041C4 */  lwc1       $f1, 0xC($v0)
    /* EB018 001EA098 4CCA070C */  jal        func_001F2930
    /* EB01C 001EA09C 948881E7 */   swc1      $f1, -0x776C($gp)
    /* EB020 001EA0A0 FA48013C */  lui        $at, (0x48FA0000 >> 16)
    /* EB024 001EA0A4 00108144 */  mtc1       $at, $f2
    /* EB028 001EA0A8 1F00023C */  lui        $v0, (0x1F4000 >> 16)
    /* EB02C 001EA0AC 3444013C */  lui        $at, (0x44340000 >> 16)
    /* EB030 001EA0B0 00088144 */  mtc1       $at, $f1
    /* EB034 001EA0B4 00404234 */  ori        $v0, $v0, (0x1F4000 & 0xFFFF)
    /* EB038 001EA0B8 FA43013C */  lui        $at, (0x43FA0000 >> 16)
    /* EB03C 001EA0BC 00008144 */  mtc1       $at, $f0
    /* EB040 001EA0C0 F4010324 */  addiu      $v1, $zero, 0x1F4
    /* EB044 001EA0C4 4402068E */  lw         $a2, 0x244($s0)
    /* EB048 001EA0C8 4002058E */  lw         $a1, 0x240($s0)
    /* EB04C 001EA0CC 3C02048E */  lw         $a0, 0x23C($s0)
    /* EB050 001EA0D0 1600013C */  lui        $at, %hi(D_00160FC0)
    /* EB054 001EA0D4 C00F22E4 */  swc1       $f2, %lo(D_00160FC0)($at)
    /* EB058 001EA0D8 1600013C */  lui        $at, %hi(D_00161070)
    /* EB05C 001EA0DC 701021E4 */  swc1       $f1, %lo(D_00161070)($at)
    /* EB060 001EA0E0 1600013C */  lui        $at, %hi(D_001604E4)
    /* EB064 001EA0E4 E40420E4 */  swc1       $f0, %lo(D_001604E4)($at)
    /* EB068 001EA0E8 1600013C */  lui        $at, %hi(D_00160030)
    /* EB06C 001EA0EC 300023AC */  sw         $v1, %lo(D_00160030)($at)
    /* EB070 001EA0F0 12ED070C */  jal        func_001FB448
    /* EB074 001EA0F4 BC9482AF */   sw        $v0, -0x6B44($gp)
    /* EB078 001EA0F8 1000043C */  lui        $a0, %hi(D_00100AE0)
    /* EB07C 001EA0FC FCD1080C */  jal        func_002347F0
    /* EB080 001EA100 E00A8424 */   addiu     $a0, $a0, %lo(D_00100AE0)
    /* EB084 001EA104 1A00043C */  lui        $a0, %hi(D_0019C2C0)
    /* EB088 001EA108 00010524 */  addiu      $a1, $zero, 0x100
    /* EB08C 001EA10C 76E6070C */  jal        func_001F99D8
    /* EB090 001EA110 C0C28424 */   addiu     $a0, $a0, %lo(D_0019C2C0)
    /* EB094 001EA114 1A00043C */  lui        $a0, %hi(D_0019C4C0)
    /* EB098 001EA118 80010524 */  addiu      $a1, $zero, 0x180
    /* EB09C 001EA11C 76E6070C */  jal        func_001F99D8
    /* EB0A0 001EA120 C0C48424 */   addiu     $a0, $a0, %lo(D_0019C4C0)
    /* EB0A4 001EA124 1A00023C */  lui        $v0, %hi(D_0019BEC0)
    /* EB0A8 001EA128 00040524 */  addiu      $a1, $zero, 0x400
    /* EB0AC 001EA12C C0BE5124 */  addiu      $s1, $v0, %lo(D_0019BEC0)
    /* EB0B0 001EA130 76E6070C */  jal        func_001F99D8
    /* EB0B4 001EA134 2D202002 */   daddu     $a0, $s1, $zero
    /* EB0B8 001EA138 0000A48F */  lw         $a0, 0x0($sp)
    /* EB0BC 001EA13C 0400828C */  lw         $v0, 0x4($a0)
    /* EB0C0 001EA140 21808200 */  addu       $s0, $a0, $v0
    /* EB0C4 001EA144 0000068E */  lw         $a2, 0x0($s0)
    /* EB0C8 001EA148 0C00C228 */  slti       $v0, $a2, 0xC
    /* EB0CC 001EA14C 05004014 */  bnez       $v0, .L001EA164
    /* EB0D0 001EA150 10001026 */   addiu     $s0, $s0, 0x10
    /* EB0D4 001EA154 1E00043C */  lui        $a0, %hi(D_001E79D8)
    /* EB0D8 001EA158 CCA5070C */  jal        func_001E9730
    /* EB0DC 001EA15C D8798424 */   addiu     $a0, $a0, %lo(D_001E79D8)
    /* EB0E0 001EA160 0C000624 */  addiu      $a2, $zero, 0xC
.align 2
  .L001EA164:
    /* EB0E4 001EA164 0400C010 */  beqz       $a2, .L001EA178
    /* EB0E8 001EA168 2D202002 */   daddu     $a0, $s1, $zero
    /* EB0EC 001EA16C 2D280002 */  daddu      $a1, $s0, $zero
    /* EB0F0 001EA170 80E6070C */  jal        func_001F9A00
    /* EB0F4 001EA174 80310600 */   sll       $a2, $a2, 6
.align 2
  .L001EA178:
    /* EB0F8 001EA178 1600033C */  lui        $v1, %hi(D_00160F90)
    /* EB0FC 001EA17C 900F638C */  lw         $v1, %lo(D_00160F90)($v1)
    /* EB100 001EA180 0A006018 */  blez       $v1, .L001EA1AC
    /* EB104 001EA184 8CA2828F */   lw        $v0, -0x5D74($gp)
    /* EB108 001EA188 FFFF0434 */  ori        $a0, $zero, 0xFFFF
    /* EB10C 001EA18C 36004224 */  addiu      $v0, $v0, 0x36
.align 2
  .L001EA190:
    /* EB110 001EA190 000044A4 */  sh         $a0, 0x0($v0)
    /* EB114 001EA194 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* EB118 001EA198 00000000 */  nop
    /* EB11C 001EA19C 00000000 */  nop
    /* EB120 001EA1A0 00000000 */  nop
    /* EB124 001EA1A4 FAFF6014 */  bnez       $v1, .L001EA190
    /* EB128 001EA1A8 40004224 */   addiu     $v0, $v0, 0x40
.align 2
  .L001EA1AC:
    /* EB12C 001EA1AC 1600043C */  lui        $a0, %hi(D_00160F90)
    /* EB130 001EA1B0 900F848C */  lw         $a0, %lo(D_00160F90)($a0)
    /* EB134 001EA1B4 1B008018 */  blez       $a0, .L001EA224
    /* EB138 001EA1B8 2D800000 */   daddu     $s0, $zero, $zero
    /* EB13C 001EA1BC FFFF1134 */  ori        $s1, $zero, 0xFFFF
    /* EB140 001EA1C0 0070033C */  lui        $v1, (0x70003000 >> 16)
    /* EB144 001EA1C4 2A100402 */  slt        $v0, $s0, $a0
.align 2
  .L001EA1C8:
    /* EB148 001EA1C8 00306334 */  ori        $v1, $v1, (0x70003000 & 0xFFFF)
    /* EB14C 001EA1CC 0C004010 */  beqz       $v0, .L001EA200
    /* EB150 001EA1D0 2D200000 */   daddu     $a0, $zero, $zero
    /* EB154 001EA1D4 000070A4 */  sh         $s0, 0x0($v1)
.align 2
  .L001EA1D8:
    /* EB158 001EA1D8 01008424 */  addiu      $a0, $a0, 0x1
    /* EB15C 001EA1DC 02006324 */  addiu      $v1, $v1, 0x2
    /* EB160 001EA1E0 FF038228 */  slti       $v0, $a0, 0x3FF
    /* EB164 001EA1E4 06004010 */  beqz       $v0, .L001EA200
    /* EB168 001EA1E8 01001026 */   addiu     $s0, $s0, 0x1
    /* EB16C 001EA1EC 1600023C */  lui        $v0, %hi(D_00160F90)
    /* EB170 001EA1F0 900F428C */  lw         $v0, %lo(D_00160F90)($v0)
    /* EB174 001EA1F4 2A100202 */  slt        $v0, $s0, $v0
    /* EB178 001EA1F8 F7FF4054 */  bnel       $v0, $zero, .L001EA1D8
    /* EB17C 001EA1FC 000070A4 */   sh        $s0, 0x0($v1)
.align 2
  .L001EA200:
    /* EB180 001EA200 0070043C */  lui        $a0, (0x70003000 >> 16)
    /* EB184 001EA204 000071A4 */  sh         $s1, 0x0($v1)
    /* EB188 001EA208 ACD8080C */  jal        func_002362B0
    /* EB18C 001EA20C 00308434 */   ori       $a0, $a0, (0x70003000 & 0xFFFF)
    /* EB190 001EA210 1600043C */  lui        $a0, %hi(D_00160F90)
    /* EB194 001EA214 900F848C */  lw         $a0, %lo(D_00160F90)($a0)
    /* EB198 001EA218 2A100402 */  slt        $v0, $s0, $a0
    /* EB19C 001EA21C EAFF4014 */  bnez       $v0, .L001EA1C8
    /* EB1A0 001EA220 0070033C */   lui       $v1, (0x70003000 >> 16)
.align 2
  .L001EA224:
    /* EB1A4 001EA224 0000A68F */  lw         $a2, 0x0($sp)
    /* EB1A8 001EA228 3400C28C */  lw         $v0, 0x34($a2)
    /* EB1AC 001EA22C 21A0C200 */  addu       $s4, $a2, $v0
    /* EB1B0 001EA230 0000838E */  lw         $v1, 0x0($s4)
    /* EB1B4 001EA234 0400A28F */  lw         $v0, 0x4($sp)
    /* EB1B8 001EA238 10009426 */  addiu      $s4, $s4, 0x10
    /* EB1BC 001EA23C 40310300 */  sll        $a2, $v1, 5
    /* EB1C0 001EA240 1600013C */  lui        $at, %hi(D_0016105C)
    /* EB1C4 001EA244 5C1023AC */  sw         $v1, %lo(D_0016105C)($at)
    /* EB1C8 001EA248 1600013C */  lui        $at, %hi(D_00161050)
    /* EB1CC 001EA24C 501022AC */  sw         $v0, %lo(D_00161050)($at)
    /* EB1D0 001EA250 21104600 */  addu       $v0, $v0, $a2
    /* EB1D4 001EA254 05006010 */  beqz       $v1, .L001EA26C
    /* EB1D8 001EA258 0400A2AF */   sw        $v0, 0x4($sp)
    /* EB1DC 001EA25C 1600043C */  lui        $a0, %hi(D_00161050)
    /* EB1E0 001EA260 5010848C */  lw         $a0, %lo(D_00161050)($a0)
    /* EB1E4 001EA264 6CE6070C */  jal        func_001F99B0
    /* EB1E8 001EA268 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001EA26C:
    /* EB1EC 001EA26C 0400A68F */  lw         $a2, 0x4($sp)
    /* EB1F0 001EA270 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* EB1F4 001EA274 1600053C */  lui        $a1, %hi(D_0016105C)
    /* EB1F8 001EA278 5C10A58C */  lw         $a1, %lo(D_0016105C)($a1)
    /* EB1FC 001EA27C FFFF023C */  lui        $v0, (0xFFFFFFC0 >> 16)
    /* EB200 001EA280 3F00C424 */  addiu      $a0, $a2, 0x3F
    /* EB204 001EA284 C0FF4234 */  ori        $v0, $v0, (0xFFFFFFC0 & 0xFFFF)
    /* EB208 001EA288 1830A300 */  mult       $a2, $a1, $v1
    /* EB20C 001EA28C 24208200 */  and        $a0, $a0, $v0
    /* EB210 001EA290 1600013C */  lui        $at, %hi(D_00161058)
    /* EB214 001EA294 581024AC */  sw         $a0, %lo(D_00161058)($at)
    /* EB218 001EA298 21208600 */  addu       $a0, $a0, $a2
    /* EB21C 001EA29C 0500A010 */  beqz       $a1, .L001EA2B4
    /* EB220 001EA2A0 0400A4AF */   sw        $a0, 0x4($sp)
    /* EB224 001EA2A4 1600043C */  lui        $a0, %hi(D_00161058)
    /* EB228 001EA2A8 5810848C */  lw         $a0, %lo(D_00161058)($a0)
    /* EB22C 001EA2AC 6CE6070C */  jal        func_001F99B0
    /* EB230 001EA2B0 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001EA2B4:
    /* EB234 001EA2B4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* EB238 001EA2B8 1600023C */  lui        $v0, %hi(D_0016105C)
    /* EB23C 001EA2BC 5C10428C */  lw         $v0, %lo(D_0016105C)($v0)
    /* EB240 001EA2C0 0800A3AF */  sw         $v1, 0x8($sp)
    /* EB244 001EA2C4 2DB80000 */  daddu      $s7, $zero, $zero
    /* EB248 001EA2C8 1600033C */  lui        $v1, %hi(D_00161050)
    /* EB24C 001EA2CC 5010638C */  lw         $v1, %lo(D_00161050)($v1)
    /* EB250 001EA2D0 40210200 */  sll        $a0, $v0, 5
    /* EB254 001EA2D4 21186400 */  addu       $v1, $v1, $a0
    /* EB258 001EA2D8 92004018 */  blez       $v0, .L001EA524
    /* EB25C 001EA2DC 54A383AF */   sw        $v1, -0x5CAC($gp)
    /* EB260 001EA2E0 1E00033C */  lui        $v1, %hi(D_001E1A00)
    /* EB264 001EA2E4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EB268 001EA2E8 00A88144 */  mtc1       $at, $f21
    /* EB26C 001EA2EC 001A7E24 */  addiu      $fp, $v1, %lo(D_001E1A00)
.align 2
  .L001EA2F0:
    /* EB270 001EA2F0 0000848E */  lw         $a0, 0x0($s4)
    /* EB274 001EA2F4 1E00063C */  lui        $a2, %hi(D_001E1D00)
    /* EB278 001EA2F8 1600033C */  lui        $v1, %hi(D_00161050)
    /* EB27C 001EA2FC 5010638C */  lw         $v1, %lo(D_00161050)($v1)
    /* EB280 001EA300 C0010224 */  addiu      $v0, $zero, 0x1C0
    /* EB284 001EA304 001DC624 */  addiu      $a2, $a2, %lo(D_001E1D00)
    /* EB288 001EA308 18B0E202 */  mult       $s6, $s7, $v0
    /* EB28C 001EA30C 40291700 */  sll        $a1, $s7, 5
    /* EB290 001EA310 21208600 */  addu       $a0, $a0, $a2
    /* EB294 001EA314 21986500 */  addu       $s3, $v1, $a1
    /* EB298 001EA318 00008290 */  lbu        $v0, 0x0($a0)
    /* EB29C 001EA31C 1600033C */  lui        $v1, %hi(D_00161058)
    /* EB2A0 001EA320 5810638C */  lw         $v1, %lo(D_00161058)($v1)
    /* EB2A4 001EA324 1A0062A2 */  sb         $v0, 0x1A($s3)
    /* EB2A8 001EA328 21A87600 */  addu       $s5, $v1, $s6
    /* EB2AC 001EA32C 0800A38F */  lw         $v1, 0x8($sp)
    /* EB2B0 001EA330 FF004230 */  andi       $v0, $v0, 0xFF
    /* EB2B4 001EA334 0B004310 */  beq        $v0, $v1, .L001EA364
    /* EB2B8 001EA338 80100200 */   sll       $v0, $v0, 2
    /* EB2BC 001EA33C 21105E00 */  addu       $v0, $v0, $fp
    /* EB2C0 001EA340 0000438C */  lw         $v1, 0x0($v0)
    /* EB2C4 001EA344 280073AC */  sw         $s3, 0x28($v1)
    /* EB2C8 001EA348 1A006292 */  lbu        $v0, 0x1A($s3)
    /* EB2CC 001EA34C 80100200 */  sll        $v0, $v0, 2
    /* EB2D0 001EA350 21105E00 */  addu       $v0, $v0, $fp
    /* EB2D4 001EA354 0000438C */  lw         $v1, 0x0($v0)
    /* EB2D8 001EA358 260060A4 */  sh         $zero, 0x26($v1)
    /* EB2DC 001EA35C 1A006492 */  lbu        $a0, 0x1A($s3)
    /* EB2E0 001EA360 0800A4AF */  sw         $a0, 0x8($sp)
.align 2
  .L001EA364:
    /* EB2E4 001EA364 1A006392 */  lbu        $v1, 0x1A($s3)
    /* EB2E8 001EA368 FFFF0534 */  ori        $a1, $zero, 0xFFFF
    /* EB2EC 001EA36C 10008626 */  addiu      $a2, $s4, 0x10
    /* EB2F0 001EA370 80180300 */  sll        $v1, $v1, 2
    /* EB2F4 001EA374 21187E00 */  addu       $v1, $v1, $fp
    /* EB2F8 001EA378 0000648C */  lw         $a0, 0x0($v1)
    /* EB2FC 001EA37C 26008294 */  lhu        $v0, 0x26($a0)
    /* EB300 001EA380 01004224 */  addiu      $v0, $v0, 0x1
    /* EB304 001EA384 260082A4 */  sh         $v0, 0x26($a0)
    /* EB308 001EA388 100075AE */  sw         $s5, 0x10($s3)
    /* EB30C 001EA38C 040080C6 */  lwc1       $f0, 0x4($s4)
    /* EB310 001EA390 20008046 */  cvt.s.w    $f0, $f0
    /* EB314 001EA394 1E0065A6 */  sh         $a1, 0x1E($s3)
    /* EB318 001EA398 1B0060A2 */  sb         $zero, 0x1B($s3)
    /* EB31C 001EA39C 140060E6 */  swc1       $f0, 0x14($s3)
    /* EB320 001EA3A0 1C0060A6 */  sh         $zero, 0x1C($s3)
    /* EB324 001EA3A4 0C00848E */  lw         $a0, 0xC($s4)
    /* EB328 001EA3A8 0000C278 */  lq         $v0, 0x0($a2)
    /* EB32C 001EA3AC 0000A27E */  sq         $v0, 0x0($s5)
    /* EB330 001EA3B0 1000B026 */  addiu      $s0, $s5, 0x10
    /* EB334 001EA3B4 20008326 */  addiu      $v1, $s4, 0x20
    /* EB338 001EA3B8 00006278 */  lq         $v0, 0x0($v1)
    /* EB33C 001EA3BC 0000027E */  sq         $v0, 0x0($s0)
    /* EB340 001EA3C0 2000B126 */  addiu      $s1, $s5, 0x20
    /* EB344 001EA3C4 30008326 */  addiu      $v1, $s4, 0x30
    /* EB348 001EA3C8 00006278 */  lq         $v0, 0x0($v1)
    /* EB34C 001EA3CC 0000227E */  sq         $v0, 0x0($s1)
    /* EB350 001EA3D0 3000B226 */  addiu      $s2, $s5, 0x30
    /* EB354 001EA3D4 40008326 */  addiu      $v1, $s4, 0x40
    /* EB358 001EA3D8 00006278 */  lq         $v0, 0x0($v1)
    /* EB35C 001EA3DC 0000427E */  sq         $v0, 0x0($s2)
    /* EB360 001EA3E0 1A006592 */  lbu        $a1, 0x1A($s3)
    /* EB364 001EA3E4 2D30A002 */  daddu      $a2, $s5, $zero
    /* EB368 001EA3E8 180064A6 */  sh         $a0, 0x18($s3)
    /* EB36C 001EA3EC 50009426 */  addiu      $s4, $s4, 0x50
    /* EB370 001EA3F0 80280500 */  sll        $a1, $a1, 2
    /* EB374 001EA3F4 2D206002 */  daddu      $a0, $s3, $zero
    /* EB378 001EA3F8 2128BE00 */  addu       $a1, $a1, $fp
    /* EB37C 001EA3FC 0100F726 */  addiu      $s7, $s7, 0x1
    /* EB380 001EA400 0000A28C */  lw         $v0, 0x0($a1)
    /* EB384 001EA404 400040C4 */  lwc1       $f0, 0x40($v0)
    /* EB388 001EA408 3C00A0E6 */  swc1       $f0, 0x3C($s5)
    /* EB38C 001EA40C 1A006292 */  lbu        $v0, 0x1A($s3)
    /* EB390 001EA410 80100200 */  sll        $v0, $v0, 2
    /* EB394 001EA414 21105E00 */  addu       $v0, $v0, $fp
    /* EB398 001EA418 0000458C */  lw         $a1, 0x0($v0)
    /* EB39C 001EA41C B0E7070C */  jal        func_001F9EC0
    /* EB3A0 001EA420 3000A524 */   addiu     $a1, $a1, 0x30
    /* EB3A4 001EA424 2EE7070C */  jal        func_001F9CB8
    /* EB3A8 001EA428 2D20A002 */   daddu     $a0, $s5, $zero
    /* EB3AC 001EA42C 06050046 */  mov.s      $f20, $f0
    /* EB3B0 001EA430 2EE7070C */  jal        func_001F9CB8
    /* EB3B4 001EA434 2D200002 */   daddu     $a0, $s0, $zero
    /* EB3B8 001EA438 06A30046 */  mov.s      $f12, $f20
    /* EB3BC 001EA43C E4E6070C */  jal        func_001F9B90
    /* EB3C0 001EA440 46030046 */   mov.s     $f13, $f0
    /* EB3C4 001EA444 2D202002 */  daddu      $a0, $s1, $zero
    /* EB3C8 001EA448 2EE7070C */  jal        func_001F9CB8
    /* EB3CC 001EA44C 06050046 */   mov.s     $f20, $f0
    /* EB3D0 001EA450 46030046 */  mov.s      $f13, $f0
    /* EB3D4 001EA454 E4E6070C */  jal        func_001F9B90
    /* EB3D8 001EA458 06A30046 */   mov.s     $f12, $f20
    /* EB3DC 001EA45C 1A006392 */  lbu        $v1, 0x1A($s3)
    /* EB3E0 001EA460 2D206002 */  daddu      $a0, $s3, $zero
    /* EB3E4 001EA464 2D286002 */  daddu      $a1, $s3, $zero
    /* EB3E8 001EA468 80180300 */  sll        $v1, $v1, 2
    /* EB3EC 001EA46C 21187E00 */  addu       $v1, $v1, $fp
    /* EB3F0 001EA470 0000628C */  lw         $v0, 0x0($v1)
    /* EB3F4 001EA474 3C0041C4 */  lwc1       $f1, 0x3C($v0)
    /* EB3F8 001EA478 42080046 */  mul.s      $f1, $f1, $f0
    /* EB3FC 001EA47C 0C0061E6 */  swc1       $f1, 0xC($s3)
    /* EB400 001EA480 12E7070C */  jal        func_001F9C48
    /* EB404 001EA484 3C00ACC6 */   lwc1      $f12, 0x3C($s5)
    /* EB408 001EA488 2D304002 */  daddu      $a2, $s2, $zero
    /* EB40C 001EA48C 2D286002 */  daddu      $a1, $s3, $zero
    /* EB410 001EA490 F6E6070C */  jal        func_001F9BD8
    /* EB414 001EA494 2D206002 */   daddu     $a0, $s3, $zero
    /* EB418 001EA498 1600043C */  lui        $a0, %hi(D_00161058)
    /* EB41C 001EA49C 5810848C */  lw         $a0, %lo(D_00161058)($a0)
    /* EB420 001EA4A0 2EE7070C */  jal        func_001F9CB8
    /* EB424 001EA4A4 21209600 */   addu      $a0, $a0, $s6
    /* EB428 001EA4A8 03A80046 */  div.s      $f0, $f21, $f0
    /* EB42C 001EA4AC 1600023C */  lui        $v0, %hi(D_00161058)
    /* EB430 001EA4B0 5810428C */  lw         $v0, %lo(D_00161058)($v0)
    /* EB434 001EA4B4 2110C202 */  addu       $v0, $s6, $v0
    /* EB438 001EA4B8 10004424 */  addiu      $a0, $v0, 0x10
    /* EB43C 001EA4BC 2EE7070C */  jal        func_001F9CB8
    /* EB440 001EA4C0 0C0040E4 */   swc1      $f0, 0xC($v0)
    /* EB444 001EA4C4 03A80046 */  div.s      $f0, $f21, $f0
    /* EB448 001EA4C8 1600023C */  lui        $v0, %hi(D_00161058)
    /* EB44C 001EA4CC 5810428C */  lw         $v0, %lo(D_00161058)($v0)
    /* EB450 001EA4D0 2110C202 */  addu       $v0, $s6, $v0
    /* EB454 001EA4D4 20004424 */  addiu      $a0, $v0, 0x20
    /* EB458 001EA4D8 2EE7070C */  jal        func_001F9CB8
    /* EB45C 001EA4DC 1C0040E4 */   swc1      $f0, 0x1C($v0)
    /* EB460 001EA4E0 03A80046 */  div.s      $f0, $f21, $f0
    /* EB464 001EA4E4 1600023C */  lui        $v0, %hi(D_00161058)
    /* EB468 001EA4E8 5810428C */  lw         $v0, %lo(D_00161058)($v0)
    /* EB46C 001EA4EC 2D288002 */  daddu      $a1, $s4, $zero
    /* EB470 001EA4F0 4001A426 */  addiu      $a0, $s5, 0x140
    /* EB474 001EA4F4 2110C202 */  addu       $v0, $s6, $v0
    /* EB478 001EA4F8 80000624 */  addiu      $a2, $zero, 0x80
    /* EB47C 001EA4FC 80009426 */  addiu      $s4, $s4, 0x80
    /* EB480 001EA500 80E6070C */  jal        func_001F9A00
    /* EB484 001EA504 2C0040E4 */   swc1      $f0, 0x2C($v0)
    /* EB488 001EA508 00008396 */  lhu        $v1, 0x0($s4)
    /* EB48C 001EA50C 1600023C */  lui        $v0, %hi(D_0016105C)
    /* EB490 001EA510 5C10428C */  lw         $v0, %lo(D_0016105C)($v0)
    /* EB494 001EA514 10009426 */  addiu      $s4, $s4, 0x10
    /* EB498 001EA518 2A10E202 */  slt        $v0, $s7, $v0
    /* EB49C 001EA51C 74FF4014 */  bnez       $v0, .L001EA2F0
    /* EB4A0 001EA520 1C0063A6 */   sh        $v1, 0x1C($s3)
.align 2
  .L001EA524:
    /* EB4A4 001EA524 1600023C */  lui        $v0, %hi(D_0016105C)
    /* EB4A8 001EA528 5C10428C */  lw         $v0, %lo(D_0016105C)($v0)
    /* EB4AC 001EA52C 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* EB4B0 001EA530 08004018 */  blez       $v0, .L001EA554
    /* EB4B4 001EA534 2D180000 */   daddu     $v1, $zero, $zero
.align 2
  .L001EA538:
    /* EB4B8 001EA538 0000A3A4 */  sh         $v1, (0x70000000 & 0xFFFF)($a1)
    /* EB4BC 001EA53C 01006324 */  addiu      $v1, $v1, 0x1
    /* EB4C0 001EA540 1600023C */  lui        $v0, %hi(D_0016105C)
    /* EB4C4 001EA544 5C10428C */  lw         $v0, %lo(D_0016105C)($v0)
    /* EB4C8 001EA548 2A106200 */  slt        $v0, $v1, $v0
    /* EB4CC 001EA54C FAFF4014 */  bnez       $v0, .L001EA538
    /* EB4D0 001EA550 0200A524 */   addiu     $a1, $a1, %lo(D_70000002)
.align 2
  .L001EA554:
    /* EB4D4 001EA554 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* EB4D8 001EA558 0070043C */  lui        $a0, (0x70000000 >> 16)
    /* EB4DC 001EA55C A2E1080C */  jal        func_00238688
    /* EB4E0 001EA560 0000A2A4 */   sh        $v0, (0x70000000 & 0xFFFF)($a1)
    /* EB4E4 001EA564 0000A68F */  lw         $a2, 0x0($sp)
    /* EB4E8 001EA568 3C00C28C */  lw         $v0, 0x3C($a2)
    /* EB4EC 001EA56C 21B0C200 */  addu       $s6, $a2, $v0
    /* EB4F0 001EA570 0000C38E */  lw         $v1, 0x0($s6)
    /* EB4F4 001EA574 0400A28F */  lw         $v0, 0x4($sp)
    /* EB4F8 001EA578 1000D626 */  addiu      $s6, $s6, 0x10
    /* EB4FC 001EA57C 40310300 */  sll        $a2, $v1, 5
    /* EB500 001EA580 1600013C */  lui        $at, %hi(D_001604D0)
    /* EB504 001EA584 D00423AC */  sw         $v1, %lo(D_001604D0)($at)
    /* EB508 001EA588 1600013C */  lui        $at, %hi(D_001604D4)
    /* EB50C 001EA58C D40422AC */  sw         $v0, %lo(D_001604D4)($at)
    /* EB510 001EA590 21104600 */  addu       $v0, $v0, $a2
    /* EB514 001EA594 05006010 */  beqz       $v1, .L001EA5AC
    /* EB518 001EA598 0400A2AF */   sw        $v0, 0x4($sp)
    /* EB51C 001EA59C 1600043C */  lui        $a0, %hi(D_001604D4)
    /* EB520 001EA5A0 D404848C */  lw         $a0, %lo(D_001604D4)($a0)
    /* EB524 001EA5A4 6CE6070C */  jal        func_001F99B0
    /* EB528 001EA5A8 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001EA5AC:
    /* EB52C 001EA5AC 0400A38F */  lw         $v1, 0x4($sp)
    /* EB530 001EA5B0 FFFF103C */  lui        $s0, (0xFFFFFFC0 >> 16)
    /* EB534 001EA5B4 C0FF1036 */  ori        $s0, $s0, (0xFFFFFFC0 & 0xFFFF)
    /* EB538 001EA5B8 3F006224 */  addiu      $v0, $v1, 0x3F
    /* EB53C 001EA5BC 1600033C */  lui        $v1, %hi(D_001604D0)
    /* EB540 001EA5C0 D004638C */  lw         $v1, %lo(D_001604D0)($v1)
    /* EB544 001EA5C4 24105000 */  and        $v0, $v0, $s0
    /* EB548 001EA5C8 1600013C */  lui        $at, %hi(D_001604DC)
    /* EB54C 001EA5CC DC0422AC */  sw         $v0, %lo(D_001604DC)($at)
    /* EB550 001EA5D0 80310300 */  sll        $a2, $v1, 6
    /* EB554 001EA5D4 21104600 */  addu       $v0, $v0, $a2
    /* EB558 001EA5D8 05006010 */  beqz       $v1, .L001EA5F0
    /* EB55C 001EA5DC 0400A2AF */   sw        $v0, 0x4($sp)
    /* EB560 001EA5E0 1600043C */  lui        $a0, %hi(D_001604DC)
    /* EB564 001EA5E4 DC04848C */  lw         $a0, %lo(D_001604DC)($a0)
    /* EB568 001EA5E8 6CE6070C */  jal        func_001F99B0
    /* EB56C 001EA5EC 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001EA5F0:
    /* EB570 001EA5F0 1600033C */  lui        $v1, %hi(D_001604D0)
    /* EB574 001EA5F4 D004638C */  lw         $v1, %lo(D_001604D0)($v1)
    /* EB578 001EA5F8 60000224 */  addiu      $v0, $zero, 0x60
    /* EB57C 001EA5FC 0400A48F */  lw         $a0, 0x4($sp)
    /* EB580 001EA600 18306200 */  mult       $a2, $v1, $v0
    /* EB584 001EA604 1600013C */  lui        $at, %hi(D_001604E0)
    /* EB588 001EA608 E00424AC */  sw         $a0, %lo(D_001604E0)($at)
    /* EB58C 001EA60C 21208600 */  addu       $a0, $a0, $a2
    /* EB590 001EA610 3F008224 */  addiu      $v0, $a0, 0x3F
    /* EB594 001EA614 24105000 */  and        $v0, $v0, $s0
    /* EB598 001EA618 05006010 */  beqz       $v1, .L001EA630
    /* EB59C 001EA61C 0400A2AF */   sw        $v0, 0x4($sp)
    /* EB5A0 001EA620 1600043C */  lui        $a0, %hi(D_001604E0)
    /* EB5A4 001EA624 E004848C */  lw         $a0, %lo(D_001604E0)($a0)
    /* EB5A8 001EA628 6CE6070C */  jal        func_001F99B0
    /* EB5AC 001EA62C 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L001EA630:
    /* EB5B0 001EA630 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* EB5B4 001EA634 1600033C */  lui        $v1, %hi(D_00160BB0)
    /* EB5B8 001EA638 1600053C */  lui        $a1, %hi(D_001604E0)
    /* EB5BC 001EA63C E004A58C */  lw         $a1, %lo(D_001604E0)($a1)
    /* EB5C0 001EA640 B00B6324 */  addiu      $v1, $v1, %lo(D_00160BB0)
    /* EB5C4 001EA644 1600063C */  lui        $a2, %hi(D_001604D0)
    /* EB5C8 001EA648 D004C68C */  lw         $a2, %lo(D_001604D0)($a2)
    /* EB5CC 001EA64C 2DF00000 */  daddu      $fp, $zero, $zero
    /* EB5D0 001EA650 1600043C */  lui        $a0, %hi(D_001604D4)
    /* EB5D4 001EA654 D404848C */  lw         $a0, %lo(D_001604D4)($a0)
    /* EB5D8 001EA658 0C00A2AF */  sw         $v0, 0xC($sp)
    /* EB5DC 001EA65C 040065AC */  sw         $a1, 0x4($v1)
    /* EB5E0 001EA660 40110600 */  sll        $v0, $a2, 5
    /* EB5E4 001EA664 0400A38F */  lw         $v1, 0x4($sp)
    /* EB5E8 001EA668 21208200 */  addu       $a0, $a0, $v0
    /* EB5EC 001EA66C 1600013C */  lui        $at, %hi(D_001604D8)
    /* EB5F0 001EA670 D80424AC */  sw         $a0, %lo(D_001604D8)($at)
    /* EB5F4 001EA674 00406324 */  addiu      $v1, $v1, 0x4000
    /* EB5F8 001EA678 A600C018 */  blez       $a2, .L001EA914
    /* EB5FC 001EA67C 1000A3AF */   sw        $v1, 0x10($sp)
    /* EB600 001EA680 8045013C */  lui        $at, (0x45800000 >> 16)
    /* EB604 001EA684 00B08144 */  mtc1       $at, $f22
    /* EB608 001EA688 1600043C */  lui        $a0, %hi(D_001604D4)
    /* EB60C 001EA68C D404848C */  lw         $a0, %lo(D_001604D4)($a0)
.align 2
  .L001EA690:
    /* EB610 001EA690 1E00033C */  lui        $v1, %hi(D_001D8440)
    /* EB614 001EA694 0000C28E */  lw         $v0, 0x0($s6)
    /* EB618 001EA698 40291E00 */  sll        $a1, $fp, 5
    /* EB61C 001EA69C 40846324 */  addiu      $v1, $v1, %lo(D_001D8440)
    /* EB620 001EA6A0 21A88500 */  addu       $s5, $a0, $a1
    /* EB624 001EA6A4 21104300 */  addu       $v0, $v0, $v1
    /* EB628 001EA6A8 80311E00 */  sll        $a2, $fp, 6
    /* EB62C 001EA6AC 00004590 */  lbu        $a1, 0x0($v0)
    /* EB630 001EA6B0 1600033C */  lui        $v1, %hi(D_001604DC)
    /* EB634 001EA6B4 DC04638C */  lw         $v1, %lo(D_001604DC)($v1)
    /* EB638 001EA6B8 1A00A5A2 */  sb         $a1, 0x1A($s5)
    /* EB63C 001EA6BC 0C00A48F */  lw         $a0, 0xC($sp)
    /* EB640 001EA6C0 0A00A410 */  beq        $a1, $a0, .L001EA6EC
    /* EB644 001EA6C4 21B86600 */   addu      $s7, $v1, $a2
    /* EB648 001EA6C8 1E00063C */  lui        $a2, %hi(D_001D82C0)
    /* EB64C 001EA6CC 0C00A5AF */  sw         $a1, 0xC($sp)
    /* EB650 001EA6D0 80100500 */  sll        $v0, $a1, 2
    /* EB654 001EA6D4 C082C624 */  addiu      $a2, $a2, %lo(D_001D82C0)
    /* EB658 001EA6D8 21104600 */  addu       $v0, $v0, $a2
    /* EB65C 001EA6DC 0000438C */  lw         $v1, 0x0($v0)
    /* EB660 001EA6E0 180075AC */  sw         $s5, 0x18($v1)
    /* EB664 001EA6E4 0000448C */  lw         $a0, 0x0($v0)
    /* EB668 001EA6E8 160080A4 */  sh         $zero, 0x16($a0)
.align 2
  .L001EA6EC:
    /* EB66C 001EA6EC 1E00033C */  lui        $v1, %hi(D_001D82C0)
    /* EB670 001EA6F0 80100500 */  sll        $v0, $a1, 2
    /* EB674 001EA6F4 C0826324 */  addiu      $v1, $v1, %lo(D_001D82C0)
    /* EB678 001EA6F8 2D984000 */  daddu      $s3, $v0, $zero
    /* EB67C 001EA6FC 21204300 */  addu       $a0, $v0, $v1
    /* EB680 001EA700 8041013C */  lui        $at, (0x41800000 >> 16)
    /* EB684 001EA704 00088144 */  mtc1       $at, $f1
    /* EB688 001EA708 0000838C */  lw         $v1, 0x0($a0)
    /* EB68C 001EA70C 16006294 */  lhu        $v0, 0x16($v1)
    /* EB690 001EA710 01004224 */  addiu      $v0, $v0, 0x1
    /* EB694 001EA714 160062A4 */  sh         $v0, 0x16($v1)
    /* EB698 001EA718 1800BEA6 */  sh         $fp, 0x18($s5)
    /* EB69C 001EA71C 0400C0C6 */  lwc1       $f0, 0x4($s6)
    /* EB6A0 001EA720 34000146 */  c.lt.s     $f0, $f1
    /* EB6A4 001EA724 00000000 */  nop
    /* EB6A8 001EA728 02000045 */  bc1f       .L001EA734
    /* EB6AC 001EA72C 1000A0E6 */   swc1      $f0, 0x10($s5)
    /* EB6B0 001EA730 1000A1E6 */  swc1       $f1, 0x10($s5)
.align 2
  .L001EA734:
    /* EB6B4 001EA734 FFFF0334 */  ori        $v1, $zero, 0xFFFF
    /* EB6B8 001EA738 1B00A0A2 */  sb         $zero, 0x1B($s5)
    /* EB6BC 001EA73C 1E00A3A6 */  sh         $v1, 0x1E($s5)
    /* EB6C0 001EA740 0000828C */  lw         $v0, 0x0($a0)
    /* EB6C4 001EA744 1C00428C */  lw         $v0, 0x1C($v0)
    /* EB6C8 001EA748 0F004010 */  beqz       $v0, .L001EA788
    /* EB6CC 001EA74C 1000C326 */   addiu     $v1, $s6, 0x10
    /* EB6D0 001EA750 26EA070C */  jal        func_001FA898
    /* EB6D4 001EA754 00004CC4 */   lwc1      $f12, 0x0($v0)
    /* EB6D8 001EA758 1700A2A2 */  sb         $v0, 0x17($s5)
    /* EB6DC 001EA75C 22EA070C */  jal        func_001FA888
    /* EB6E0 001EA760 FF004430 */   andi      $a0, $v0, 0xFF
    /* EB6E4 001EA764 C041013C */  lui        $at, (0x41C00000 >> 16)
    /* EB6E8 001EA768 00088144 */  mtc1       $at, $f1
    /* EB6EC 001EA76C 1000A2C6 */  lwc1       $f2, 0x10($s5)
    /* EB6F0 001EA770 00000146 */  add.s      $f0, $f0, $f1
    /* EB6F4 001EA774 34100046 */  c.lt.s     $f2, $f0
    /* EB6F8 001EA778 00000000 */  nop
    /* EB6FC 001EA77C 01000345 */  bc1tl      .L001EA784
    /* EB700 001EA780 1000A0E6 */   swc1      $f0, 0x10($s5)
.align 2
  .L001EA784:
    /* EB704 001EA784 1000C326 */  addiu      $v1, $s6, 0x10
.align 2
  .L001EA788:
    /* EB708 001EA788 00006278 */  lq         $v0, 0x0($v1)
    /* EB70C 001EA78C 0000E27E */  sq         $v0, 0x0($s7)
    /* EB710 001EA790 1000F126 */  addiu      $s1, $s7, 0x10
    /* EB714 001EA794 2000C326 */  addiu      $v1, $s6, 0x20
    /* EB718 001EA798 00006278 */  lq         $v0, 0x0($v1)
    /* EB71C 001EA79C 0000227E */  sq         $v0, 0x0($s1)
    /* EB720 001EA7A0 2000F226 */  addiu      $s2, $s7, 0x20
    /* EB724 001EA7A4 3000C326 */  addiu      $v1, $s6, 0x30
    /* EB728 001EA7A8 00006278 */  lq         $v0, 0x0($v1)
    /* EB72C 001EA7AC 0000427E */  sq         $v0, 0x0($s2)
    /* EB730 001EA7B0 3000F426 */  addiu      $s4, $s7, 0x30
    /* EB734 001EA7B4 4000C326 */  addiu      $v1, $s6, 0x40
    /* EB738 001EA7B8 00006278 */  lq         $v0, 0x0($v1)
    /* EB73C 001EA7BC 0000827E */  sq         $v0, 0x0($s4)
    /* EB740 001EA7C0 1E00043C */  lui        $a0, %hi(D_001D82C0)
    /* EB744 001EA7C4 5000D626 */  addiu      $s6, $s6, 0x50
    /* EB748 001EA7C8 C0828424 */  addiu      $a0, $a0, %lo(D_001D82C0)
    /* EB74C 001EA7CC 0100DE27 */  addiu      $fp, $fp, 0x1
    /* EB750 001EA7D0 21986402 */  addu       $s3, $s3, $a0
    /* EB754 001EA7D4 0000628E */  lw         $v0, 0x0($s3)
    /* EB758 001EA7D8 2D20E002 */  daddu      $a0, $s7, $zero
    /* EB75C 001EA7DC 200040C4 */  lwc1       $f0, 0x20($v0)
    /* EB760 001EA7E0 2EE7070C */  jal        func_001F9CB8
    /* EB764 001EA7E4 3C00E0E6 */   swc1      $f0, 0x3C($s7)
    /* EB768 001EA7E8 06050046 */  mov.s      $f20, $f0
    /* EB76C 001EA7EC 2EE7070C */  jal        func_001F9CB8
    /* EB770 001EA7F0 2D202002 */   daddu     $a0, $s1, $zero
    /* EB774 001EA7F4 00A50046 */  add.s      $f20, $f20, $f0
    /* EB778 001EA7F8 2D204002 */  daddu      $a0, $s2, $zero
    /* EB77C 001EA7FC 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* EB780 001EA800 00008144 */  mtc1       $at, $f0
    /* EB784 001EA804 2EE7070C */  jal        func_001F9CB8
    /* EB788 001EA808 02A50046 */   mul.s     $f20, $f20, $f0
    /* EB78C 001EA80C 46050046 */  mov.s      $f21, $f0
    /* EB790 001EA810 26EA070C */  jal        func_001FA898
    /* EB794 001EA814 02A31646 */   mul.s     $f12, $f20, $f22
    /* EB798 001EA818 02AB1646 */  mul.s      $f12, $f21, $f22
    /* EB79C 001EA81C 26EA070C */  jal        func_001FA898
    /* EB7A0 001EA820 2D804000 */   daddu     $s0, $v0, $zero
    /* EB7A4 001EA824 0100063C */  lui        $a2, (0x10000 >> 16)
    /* EB7A8 001EA828 0100033C */  lui        $v1, (0x10000 >> 16)
    /* EB7AC 001EA82C 2A20C200 */  slt        $a0, $a2, $v0
    /* EB7B0 001EA830 0080053C */  lui        $a1, (0x80000000 >> 16)
    /* EB7B4 001EA834 0A184400 */  movz       $v1, $v0, $a0
    /* EB7B8 001EA838 2A10D000 */  slt        $v0, $a2, $s0
    /* EB7BC 001EA83C 001C0300 */  sll        $v1, $v1, 16
    /* EB7C0 001EA840 0B80C200 */  movn       $s0, $a2, $v0
    /* EB7C4 001EA844 2D20A002 */  daddu      $a0, $s5, $zero
    /* EB7C8 001EA848 25800302 */  or         $s0, $s0, $v1
    /* EB7CC 001EA84C 2D30E002 */  daddu      $a2, $s7, $zero
    /* EB7D0 001EA850 2C00F0AE */  sw         $s0, 0x2C($s7)
    /* EB7D4 001EA854 0000C78E */  lw         $a3, 0x0($s6)
    /* EB7D8 001EA858 0400D626 */  addiu      $s6, $s6, 0x4
    /* EB7DC 001EA85C 0000C38E */  lw         $v1, 0x0($s6)
    /* EB7E0 001EA860 0400D626 */  addiu      $s6, $s6, 0x4
    /* EB7E4 001EA864 0000C28E */  lw         $v0, 0x0($s6)
    /* EB7E8 001EA868 001A0300 */  sll        $v1, $v1, 8
    /* EB7EC 001EA86C 25186500 */  or         $v1, $v1, $a1
    /* EB7F0 001EA870 0800D626 */  addiu      $s6, $s6, 0x8
    /* EB7F4 001EA874 00140200 */  sll        $v0, $v0, 16
    /* EB7F8 001EA878 25104300 */  or         $v0, $v0, $v1
    /* EB7FC 001EA87C 25104700 */  or         $v0, $v0, $a3
    /* EB800 001EA880 0C00E2AE */  sw         $v0, 0xC($s7)
    /* EB804 001EA884 0000C396 */  lhu        $v1, 0x0($s6)
    /* EB808 001EA888 1000D626 */  addiu      $s6, $s6, 0x10
    /* EB80C 001EA88C 1C00A3A6 */  sh         $v1, 0x1C($s5)
    /* EB810 001EA890 B0E7070C */  jal        func_001F9EC0
    /* EB814 001EA894 0000658E */   lw        $a1, 0x0($s3)
    /* EB818 001EA898 2EE7070C */  jal        func_001F9CB8
    /* EB81C 001EA89C 2D20E002 */   daddu     $a0, $s7, $zero
    /* EB820 001EA8A0 06050046 */  mov.s      $f20, $f0
    /* EB824 001EA8A4 2EE7070C */  jal        func_001F9CB8
    /* EB828 001EA8A8 2D202002 */   daddu     $a0, $s1, $zero
    /* EB82C 001EA8AC 06A30046 */  mov.s      $f12, $f20
    /* EB830 001EA8B0 E4E6070C */  jal        func_001F9B90
    /* EB834 001EA8B4 46030046 */   mov.s     $f13, $f0
    /* EB838 001EA8B8 2D204002 */  daddu      $a0, $s2, $zero
    /* EB83C 001EA8BC 2EE7070C */  jal        func_001F9CB8
    /* EB840 001EA8C0 06050046 */   mov.s     $f20, $f0
    /* EB844 001EA8C4 46030046 */  mov.s      $f13, $f0
    /* EB848 001EA8C8 E4E6070C */  jal        func_001F9B90
    /* EB84C 001EA8CC 06A30046 */   mov.s     $f12, $f20
    /* EB850 001EA8D0 0000628E */  lw         $v0, 0x0($s3)
    /* EB854 001EA8D4 2D20A002 */  daddu      $a0, $s5, $zero
    /* EB858 001EA8D8 2D28A002 */  daddu      $a1, $s5, $zero
    /* EB85C 001EA8DC 0C0041C4 */  lwc1       $f1, 0xC($v0)
    /* EB860 001EA8E0 42080046 */  mul.s      $f1, $f1, $f0
    /* EB864 001EA8E4 0C00A1E6 */  swc1       $f1, 0xC($s5)
    /* EB868 001EA8E8 12E7070C */  jal        func_001F9C48
    /* EB86C 001EA8EC 3C00ECC6 */   lwc1      $f12, 0x3C($s7)
    /* EB870 001EA8F0 2D20A002 */  daddu      $a0, $s5, $zero
    /* EB874 001EA8F4 2D308002 */  daddu      $a2, $s4, $zero
    /* EB878 001EA8F8 F6E6070C */  jal        func_001F9BD8
    /* EB87C 001EA8FC 2D288000 */   daddu     $a1, $a0, $zero
    /* EB880 001EA900 1600023C */  lui        $v0, %hi(D_001604D0)
    /* EB884 001EA904 D004428C */  lw         $v0, %lo(D_001604D0)($v0)
    /* EB888 001EA908 2A10C203 */  slt        $v0, $fp, $v0
    /* EB88C 001EA90C 60FF4014 */  bnez       $v0, .L001EA690
    /* EB890 001EA910 D497848F */   lw        $a0, -0x682C($gp)
.align 2
  .L001EA914:
    /* EB894 001EA914 1600023C */  lui        $v0, %hi(D_001604D0)
    /* EB898 001EA918 D004428C */  lw         $v0, %lo(D_001604D0)($v0)
    /* EB89C 001EA91C 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* EB8A0 001EA920 08004018 */  blez       $v0, .L001EA944
    /* EB8A4 001EA924 2D180000 */   daddu     $v1, $zero, $zero
.align 2
  .L001EA928:
    /* EB8A8 001EA928 0000A3A4 */  sh         $v1, (0x70000000 & 0xFFFF)($a1)
    /* EB8AC 001EA92C 01006324 */  addiu      $v1, $v1, 0x1
    /* EB8B0 001EA930 1600023C */  lui        $v0, %hi(D_001604D0)
    /* EB8B4 001EA934 D004428C */  lw         $v0, %lo(D_001604D0)($v0)
    /* EB8B8 001EA938 2A106200 */  slt        $v0, $v1, $v0
    /* EB8BC 001EA93C FAFF4014 */  bnez       $v0, .L001EA928
    /* EB8C0 001EA940 0200A524 */   addiu     $a1, $a1, %lo(D_70000002)
.align 2
  .L001EA944:
    /* EB8C4 001EA944 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* EB8C8 001EA948 0070043C */  lui        $a0, (0x70000000 >> 16)
    /* EB8CC 001EA94C 3EAE080C */  jal        func_0022B8F8
    /* EB8D0 001EA950 0000A2A4 */   sh        $v0, (0x70000000 & 0xFFFF)($a1)
    /* EB8D4 001EA954 1600023C */  lui        $v0, %hi(D_001604D0)
    /* EB8D8 001EA958 D004428C */  lw         $v0, %lo(D_001604D0)($v0)
    /* EB8DC 001EA95C 33004018 */  blez       $v0, .L001EAA2C
    /* EB8E0 001EA960 2D300000 */   daddu     $a2, $zero, $zero
    /* EB8E4 001EA964 60000F24 */  addiu      $t7, $zero, 0x60
    /* EB8E8 001EA968 18000A24 */  addiu      $t2, $zero, 0x18
    /* EB8EC 001EA96C 2D700000 */  daddu      $t6, $zero, $zero
    /* EB8F0 001EA970 1818CF00 */  mult       $v1, $a2, $t7
    /* EB8F4 001EA974 00000000 */  nop
.align 2
  .L001EA978:
    /* EB8F8 001EA978 1600023C */  lui        $v0, %hi(D_001604E0)
    /* EB8FC 001EA97C E004428C */  lw         $v0, %lo(D_001604E0)($v0)
    /* EB900 001EA980 0100CD24 */  addiu      $t5, $a2, 0x1
    /* EB904 001EA984 80290600 */  sll        $a1, $a2, 6
    /* EB908 001EA988 16000C3C */  lui        $t4, %hi(D_001604DC)
    /* EB90C 001EA98C DC048C8D */  lw         $t4, %lo(D_001604DC)($t4)
    /* EB910 001EA990 2D580000 */  daddu      $t3, $zero, $zero
    /* EB914 001EA994 2D400000 */  daddu      $t0, $zero, $zero
    /* EB918 001EA998 2D480000 */  daddu      $t1, $zero, $zero
    /* EB91C 001EA99C 21304300 */  addu       $a2, $v0, $v1
    /* EB920 001EA9A0 17000724 */  addiu      $a3, $zero, 0x17
    /* EB924 001EA9A4 00000000 */  nop
.align 2
  .L001EA9A8:
    /* EB928 001EA9A8 0000C290 */  lbu        $v0, 0x0($a2)
    /* EB92C 001EA9AC FFFFE724 */  addiu      $a3, $a3, -0x1
    /* EB930 001EA9B0 0100C390 */  lbu        $v1, 0x1($a2)
    /* EB934 001EA9B4 0200C490 */  lbu        $a0, 0x2($a2)
    /* EB938 001EA9B8 21586201 */  addu       $t3, $t3, $v0
    /* EB93C 001EA9BC 21400301 */  addu       $t0, $t0, $v1
    /* EB940 001EA9C0 0400C624 */  addiu      $a2, $a2, 0x4
    /* EB944 001EA9C4 F8FFE104 */  bgez       $a3, .L001EA9A8
    /* EB948 001EA9C8 21482401 */   addu      $t1, $t1, $a0
    /* EB94C 001EA9CC 1A000A01 */  div        $zero, $t0, $t2
    /* EB950 001EA9D0 01004E51 */  beql       $t2, $t6, .L001EA9D8
    /* EB954 001EA9D4 CD010000 */   break     0, 7
.align 2
  .L001EA9D8:
    /* EB958 001EA9D8 01004E51 */  beql       $t2, $t6, .L001EA9E0
    /* EB95C 001EA9DC CD010000 */   break     0, 7
.align 2
  .L001EA9E0:
    /* EB960 001EA9E0 2128AC00 */  addu       $a1, $a1, $t4
    /* EB964 001EA9E4 01004E51 */  beql       $t2, $t6, .L001EA9EC
    /* EB968 001EA9E8 CD010000 */   break     0, 7
.align 2
  .L001EA9EC:
    /* EB96C 001EA9EC 2D30A001 */  daddu      $a2, $t5, $zero
    /* EB970 001EA9F0 12100000 */  mflo       $v0
    /* EB974 001EA9F4 1A002A01 */  div        $zero, $t1, $t2
    /* EB978 001EA9F8 00120200 */  sll        $v0, $v0, 8
    /* EB97C 001EA9FC 12180000 */  mflo       $v1
    /* EB980 001EAA00 1A006A01 */  div        $zero, $t3, $t2
    /* EB984 001EAA04 001C0300 */  sll        $v1, $v1, 16
    /* EB988 001EAA08 25186200 */  or         $v1, $v1, $v0
    /* EB98C 001EAA0C 12200000 */  mflo       $a0
    /* EB990 001EAA10 25186400 */  or         $v1, $v1, $a0
    /* EB994 001EAA14 1C00A3AC */  sw         $v1, 0x1C($a1)
    /* EB998 001EAA18 1600023C */  lui        $v0, %hi(D_001604D0)
    /* EB99C 001EAA1C D004428C */  lw         $v0, %lo(D_001604D0)($v0)
    /* EB9A0 001EAA20 2A10C200 */  slt        $v0, $a2, $v0
    /* EB9A4 001EAA24 D4FF4014 */  bnez       $v0, .L001EA978
    /* EB9A8 001EAA28 1818CF00 */   mult      $v1, $a2, $t7
.align 2
  .L001EAA2C:
    /* EB9AC 001EAA2C 0400A48F */  lw         $a0, 0x4($sp)
    /* EB9B0 001EAA30 00400624 */  addiu      $a2, $zero, 0x4000
    /* EB9B4 001EAA34 2D280000 */  daddu      $a1, $zero, $zero
    /* EB9B8 001EAA38 6CE6070C */  jal        func_001F99B0
    /* EB9BC 001EAA3C 189384AF */   sw        $a0, -0x6CE8($gp)
    /* EB9C0 001EAA40 1000A28F */  lw         $v0, 0x10($sp)
    /* EB9C4 001EAA44 FF000324 */  addiu      $v1, $zero, 0xFF
    /* EB9C8 001EAA48 0200063C */  lui        $a2, (0x20000 >> 16)
    /* EB9CC 001EAA4C FFFF0724 */  addiu      $a3, $zero, -0x1
    /* EB9D0 001EAA50 0400A2AF */  sw         $v0, 0x4($sp)
    /* EB9D4 001EAA54 1D00043C */  lui        $a0, %hi(D_001CDB00)
    /* EB9D8 001EAA58 1600023C */  lui        $v0, %hi(D_00160018)
    /* EB9DC 001EAA5C 1800428C */  lw         $v0, %lo(D_00160018)($v0)
    /* EB9E0 001EAA60 00DB8424 */  addiu      $a0, $a0, %lo(D_001CDB00)
    /* EB9E4 001EAA64 00020524 */  addiu      $a1, $zero, 0x200
    /* EB9E8 001EAA68 1600013C */  lui        $at, %hi(D_0016001C)
    /* EB9EC 001EAA6C 1C0022AC */  sw         $v0, %lo(D_0016001C)($at)
    /* EB9F0 001EAA70 200043A0 */  sb         $v1, 0x20($v0)
    /* EB9F4 001EAA74 0400A38F */  lw         $v1, 0x4($sp)
    /* EB9F8 001EAA78 1600023C */  lui        $v0, %hi(D_00160018)
    /* EB9FC 001EAA7C 1800428C */  lw         $v0, %lo(D_00160018)($v0)
    /* EBA00 001EAA80 1600013C */  lui        $at, %hi(D_00160028)
    /* EBA04 001EAA84 280023AC */  sw         $v1, %lo(D_00160028)($at)
    /* EBA08 001EAA88 00206324 */  addiu      $v1, $v1, 0x2000
    /* EBA0C 001EAA8C 003F4224 */  addiu      $v0, $v0, 0x3F00
    /* EBA10 001EAA90 1600013C */  lui        $at, %hi(D_001601AC)
    /* EBA14 001EAA94 AC0123AC */  sw         $v1, %lo(D_001601AC)($at)
    /* EBA18 001EAA98 21186600 */  addu       $v1, $v1, $a2
    /* EBA1C 001EAA9C 1600013C */  lui        $at, %hi(D_00160020)
    /* EBA20 001EAAA0 200022AC */  sw         $v0, %lo(D_00160020)($at)
    /* EBA24 001EAAA4 0400A3AF */  sw         $v1, 0x4($sp)
    /* EBA28 001EAAA8 1600013C */  lui        $at, %hi(D_001601B4)
    /* EBA2C 001EAAAC B40127AC */  sw         $a3, %lo(D_001601B4)($at)
    /* EBA30 001EAAB0 1600013C */  lui        $at, %hi(D_001601B0)
    /* EBA34 001EAAB4 B00120AC */  sw         $zero, %lo(D_001601B0)($at)
    /* EBA38 001EAAB8 76E6070C */  jal        func_001F99D8
    /* EBA3C 001EAABC B89480AF */   sw        $zero, -0x6B48($gp)
    /* EBA40 001EAAC0 1600033C */  lui        $v1, %hi(D_00160020)
    /* EBA44 001EAAC4 2000638C */  lw         $v1, %lo(D_00160020)($v1)
    /* EBA48 001EAAC8 1600023C */  lui        $v0, %hi(D_00160018)
    /* EBA4C 001EAACC 1800428C */  lw         $v0, %lo(D_00160018)($v0)
    /* EBA50 001EAAD0 0C004350 */  beql       $v0, $v1, .L001EAB04
    /* EBA54 001EAAD4 50A3828F */   lw        $v0, -0x5CB0($gp)
    /* EBA58 001EAAD8 807F0424 */  addiu      $a0, $zero, 0x7F80
    /* EBA5C 001EAADC 360044A4 */  sh         $a0, 0x36($v0)
.align 2
  .L001EAAE0:
    /* EBA60 001EAAE0 00014224 */  addiu      $v0, $v0, 0x100
    /* EBA64 001EAAE4 00000000 */  nop
    /* EBA68 001EAAE8 00000000 */  nop
    /* EBA6C 001EAAEC 00000000 */  nop
    /* EBA70 001EAAF0 00000000 */  nop
    /* EBA74 001EAAF4 FAFF4354 */  bnel       $v0, $v1, .L001EAAE0
    /* EBA78 001EAAF8 360044A4 */   sh        $a0, 0x36($v0)
    /* EBA7C 001EAAFC 1600023C */  lui        $v0, %hi(D_00161050)
    /* EBA80 001EAB00 5010428C */  lw         $v0, %lo(D_00161050)($v0)
.align 2
  .L001EAB04:
    /* EBA84 001EAB04 1600033C */  lui        $v1, %hi(D_00161054)
    /* EBA88 001EAB08 5410638C */  lw         $v1, %lo(D_00161054)($v1)
    /* EBA8C 001EAB0C 09004310 */  beq        $v0, $v1, .L001EAB34
    /* EBA90 001EAB10 807F0424 */   addiu     $a0, $zero, 0x7F80
    /* EBA94 001EAB14 180044A4 */  sh         $a0, 0x18($v0)
.align 2
  .L001EAB18:
    /* EBA98 001EAB18 20004224 */  addiu      $v0, $v0, 0x20
    /* EBA9C 001EAB1C 00000000 */  nop
    /* EBAA0 001EAB20 00000000 */  nop
    /* EBAA4 001EAB24 00000000 */  nop
    /* EBAA8 001EAB28 00000000 */  nop
    /* EBAAC 001EAB2C FAFF4354 */  bnel       $v0, $v1, .L001EAB18
    /* EBAB0 001EAB30 180044A4 */   sh        $a0, 0x18($v0)
.align 2
  .L001EAB34:
    /* EBAB4 001EAB34 1600033C */  lui        $v1, %hi(D_00160F90)
    /* EBAB8 001EAB38 900F638C */  lw         $v1, %lo(D_00160F90)($v1)
    /* EBABC 001EAB3C 0B006018 */  blez       $v1, .L001EAB6C
    /* EBAC0 001EAB40 8CA2828F */   lw        $v0, -0x5D74($gp)
    /* EBAC4 001EAB44 807F0424 */  addiu      $a0, $zero, 0x7F80
    /* EBAC8 001EAB48 3A004224 */  addiu      $v0, $v0, 0x3A
    /* EBACC 001EAB4C 00000000 */  nop
.align 2
  .L001EAB50:
    /* EBAD0 001EAB50 000044A4 */  sh         $a0, 0x0($v0)
    /* EBAD4 001EAB54 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* EBAD8 001EAB58 00000000 */  nop
    /* EBADC 001EAB5C 00000000 */  nop
    /* EBAE0 001EAB60 00000000 */  nop
    /* EBAE4 001EAB64 FAFF6014 */  bnez       $v1, .L001EAB50
    /* EBAE8 001EAB68 40004224 */   addiu     $v0, $v0, 0x40
.align 2
  .L001EAB6C:
    /* EBAEC 001EAB6C 1900023C */  lui        $v0, %hi(D_0018C418)
    /* EBAF0 001EAB70 18C44224 */  addiu      $v0, $v0, %lo(D_0018C418)
    /* EBAF4 001EAB74 E4CE070C */  jal        func_001F3B90
    /* EBAF8 001EAB78 1C0040AC */   sw        $zero, 0x1C($v0)
    /* EBAFC 001EAB7C B05F080C */  jal        func_00217EC0
    /* EBB00 001EAB80 00000000 */   nop
    /* EBB04 001EAB84 66D9070C */  jal        func_001F6598
    /* EBB08 001EAB88 00000000 */   nop
    /* EBB0C 001EAB8C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EBB10 001EAB90 00008144 */  mtc1       $at, $f0
    /* EBB14 001EAB94 0400A28F */  lw         $v0, 0x4($sp)
    /* EBB18 001EAB98 B000BF7B */  lq         $ra, 0xB0($sp)
    /* EBB1C 001EAB9C A000BE7B */  lq         $fp, 0xA0($sp)
    /* EBB20 001EABA0 9000B77B */  lq         $s7, 0x90($sp)
    /* EBB24 001EABA4 8000B67B */  lq         $s6, 0x80($sp)
    /* EBB28 001EABA8 7000B57B */  lq         $s5, 0x70($sp)
    /* EBB2C 001EABAC 6000B47B */  lq         $s4, 0x60($sp)
    /* EBB30 001EABB0 5000B37B */  lq         $s3, 0x50($sp)
    /* EBB34 001EABB4 4000B27B */  lq         $s2, 0x40($sp)
    /* EBB38 001EABB8 3000B17B */  lq         $s1, 0x30($sp)
    /* EBB3C 001EABBC 2000B07B */  lq         $s0, 0x20($sp)
    /* EBB40 001EABC0 D000B6C7 */  lwc1       $f22, 0xD0($sp)
    /* EBB44 001EABC4 C800B5C7 */  lwc1       $f21, 0xC8($sp)
    /* EBB48 001EABC8 C000B4C7 */  lwc1       $f20, 0xC0($sp)
    /* EBB4C 001EABCC 1600013C */  lui        $at, %hi(D_0015F6F0)
    /* EBB50 001EABD0 F0F620AC */  sw         $zero, %lo(D_0015F6F0)($at)
    /* EBB54 001EABD4 1600013C */  lui        $at, %hi(D_0015F53C)
    /* EBB58 001EABD8 3CF520E4 */  swc1       $f0, %lo(D_0015F53C)($at)
    /* EBB5C 001EABDC 0800E003 */  jr         $ra
    /* EBB60 001EABE0 E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_001E9EC8
    /* EBB64 001EABE4 00000000 */  nop
