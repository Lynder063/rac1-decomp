.align 3
nonmatching func_001F5E60, 0x45C

glabel func_001F5E60
    /* F6DE0 001F5E60 90FEBD27 */  addiu      $sp, $sp, -0x170
    /* F6DE4 001F5E64 FF002931 */  andi       $t1, $t1, 0xFF
    /* F6DE8 001F5E68 D000B47F */  sq         $s4, 0xD0($sp)
    /* F6DEC 001F5E6C FF004A31 */  andi       $t2, $t2, 0xFF
    /* F6DF0 001F5E70 6801BBE7 */  swc1       $f27, 0x168($sp)
    /* F6DF4 001F5E74 2DA0E000 */  daddu      $s4, $a3, $zero
    /* F6DF8 001F5E78 6001BAE7 */  swc1       $f26, 0x160($sp)
    /* F6DFC 001F5E7C C6760046 */  mov.s      $f27, $f14
    /* F6E00 001F5E80 5801B9E7 */  swc1       $f25, 0x158($sp)
    /* F6E04 001F5E84 868E0046 */  mov.s      $f26, $f17
    /* F6E08 001F5E88 5001B8E7 */  swc1       $f24, 0x150($sp)
    /* F6E0C 001F5E8C 467E0046 */  mov.s      $f25, $f15
    /* F6E10 001F5E90 4801B7E7 */  swc1       $f23, 0x148($sp)
    /* F6E14 001F5E94 06960046 */  mov.s      $f24, $f18
    /* F6E18 001F5E98 2001BF7F */  sq         $ra, 0x120($sp)
    /* F6E1C 001F5E9C C6850046 */  mov.s      $f23, $f16
    /* F6E20 001F5EA0 1001BE7F */  sq         $fp, 0x110($sp)
    /* F6E24 001F5EA4 0001B77F */  sq         $s7, 0x100($sp)
    /* F6E28 001F5EA8 F000B67F */  sq         $s6, 0xF0($sp)
    /* F6E2C 001F5EAC E000B57F */  sq         $s5, 0xE0($sp)
    /* F6E30 001F5EB0 C000B37F */  sq         $s3, 0xC0($sp)
    /* F6E34 001F5EB4 B000B27F */  sq         $s2, 0xB0($sp)
    /* F6E38 001F5EB8 A000B17F */  sq         $s1, 0xA0($sp)
    /* F6E3C 001F5EBC 9000B07F */  sq         $s0, 0x90($sp)
    /* F6E40 001F5EC0 4001B6E7 */  swc1       $f22, 0x140($sp)
    /* F6E44 001F5EC4 3801B5E7 */  swc1       $f21, 0x138($sp)
    /* F6E48 001F5EC8 3001B4E7 */  swc1       $f20, 0x130($sp)
    /* F6E4C 001F5ECC 8000A6FF */  sd         $a2, 0x80($sp)
    /* F6E50 001F5ED0 04002011 */  beqz       $t1, .L001F5EE4
    /* F6E54 001F5ED4 8800A8AF */   sw        $t0, 0x88($sp)
    /* F6E58 001F5ED8 00B10400 */  sll        $s6, $a0, 4
    /* F6E5C 001F5EDC 03000010 */  b          .L001F5EEC
    /* F6E60 001F5EE0 10001E24 */   addiu     $fp, $zero, 0x10
.align 2
  .L001F5EE4:
    /* F6E64 001F5EE4 00F10400 */  sll        $fp, $a0, 4
    /* F6E68 001F5EE8 10001624 */  addiu      $s6, $zero, 0x10
.align 2
  .L001F5EEC:
    /* F6E6C 001F5EEC 03004011 */  beqz       $t2, .L001F5EFC
    /* F6E70 001F5EF0 00AD0500 */   sll       $s5, $a1, 20
    /* F6E74 001F5EF4 03000010 */  b          .L001F5F04
    /* F6E78 001F5EF8 1000173C */   lui       $s7, (0x100000 >> 16)
.align 2
  .L001F5EFC:
    /* F6E7C 001F5EFC 00BD0500 */  sll        $s7, $a1, 20
    /* F6E80 001F5F00 1000153C */  lui        $s5, (0x100000 >> 16)
.align 2
  .L001F5F04:
    /* F6E84 001F5F04 2000ACE7 */  swc1       $f12, 0x20($sp)
    /* F6E88 001F5F08 3CA01400 */  dsll32     $s4, $s4, 0
    /* F6E8C 001F5F0C 2400ADE7 */  swc1       $f13, 0x24($sp)
    /* F6E90 001F5F10 EAE7070C */  jal        func_001F9FA8
    /* F6E94 001F5F14 06BB0046 */   mov.s     $f12, $f23
    /* F6E98 001F5F18 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* F6E9C 001F5F1C 00A08144 */  mtc1       $at, $f20
    /* F6EA0 001F5F20 02C80046 */  mul.s      $f0, $f25, $f0
    /* F6EA4 001F5F24 06BB0046 */  mov.s      $f12, $f23
    /* F6EA8 001F5F28 81A51846 */  sub.s      $f22, $f20, $f24
    /* F6EAC 001F5F2C 8041013C */  lui        $at, (0x41800000 >> 16)
    /* F6EB0 001F5F30 00A88144 */  mtc1       $at, $f21
    /* F6EB4 001F5F34 01A51A46 */  sub.s      $f20, $f20, $f26
    /* F6EB8 001F5F38 E4E7070C */  jal        func_001F9F90
    /* F6EBC 001F5F3C 0000A0E7 */   swc1      $f0, 0x0($sp)
    /* F6EC0 001F5F40 02C80046 */  mul.s      $f0, $f25, $f0
    /* F6EC4 001F5F44 06BB0046 */  mov.s      $f12, $f23
    /* F6EC8 001F5F48 E4E7070C */  jal        func_001F9F90
    /* F6ECC 001F5F4C 0400A0E7 */   swc1      $f0, 0x4($sp)
    /* F6ED0 001F5F50 02D80046 */  mul.s      $f0, $f27, $f0
    /* F6ED4 001F5F54 06BB0046 */  mov.s      $f12, $f23
    /* F6ED8 001F5F58 EAE7070C */  jal        func_001F9FA8
    /* F6EDC 001F5F5C 1000A0E7 */   swc1      $f0, 0x10($sp)
    /* F6EE0 001F5F60 47D80046 */  neg.s      $f1, $f27
    /* F6EE4 001F5F64 3000B027 */  addiu      $s0, $sp, 0x30
    /* F6EE8 001F5F68 2D28A003 */  daddu      $a1, $sp, $zero
    /* F6EEC 001F5F6C 06B30046 */  mov.s      $f12, $f22
    /* F6EF0 001F5F70 2D200002 */  daddu      $a0, $s0, $zero
    /* F6EF4 001F5F74 42080046 */  mul.s      $f1, $f1, $f0
    /* F6EF8 001F5F78 0CE7070C */  jal        func_001F9C30
    /* F6EFC 001F5F7C 1400A1E7 */   swc1      $f1, 0x14($sp)
    /* F6F00 001F5F80 2000B327 */  addiu      $s3, $sp, 0x20
    /* F6F04 001F5F84 4000B127 */  addiu      $s1, $sp, 0x40
    /* F6F08 001F5F88 2D300002 */  daddu      $a2, $s0, $zero
    /* F6F0C 001F5F8C 2D202002 */  daddu      $a0, $s1, $zero
    /* F6F10 001F5F90 F6E6070C */  jal        func_001F9BD8
    /* F6F14 001F5F94 2D286002 */   daddu     $a1, $s3, $zero
    /* F6F18 001F5F98 1000B227 */  addiu      $s2, $sp, 0x10
    /* F6F1C 001F5F9C 06A30046 */  mov.s      $f12, $f20
    /* F6F20 001F5FA0 2D200002 */  daddu      $a0, $s0, $zero
    /* F6F24 001F5FA4 0CE7070C */  jal        func_001F9C30
    /* F6F28 001F5FA8 2D284002 */   daddu     $a1, $s2, $zero
    /* F6F2C 001F5FAC 2D202002 */  daddu      $a0, $s1, $zero
    /* F6F30 001F5FB0 2D300002 */  daddu      $a2, $s0, $zero
    /* F6F34 001F5FB4 FCE6070C */  jal        func_001F9BF0
    /* F6F38 001F5FB8 2D288000 */   daddu     $a1, $a0, $zero
    /* F6F3C 001F5FBC 2D28A003 */  daddu      $a1, $sp, $zero
    /* F6F40 001F5FC0 06B30046 */  mov.s      $f12, $f22
    /* F6F44 001F5FC4 0CE7070C */  jal        func_001F9C30
    /* F6F48 001F5FC8 2D200002 */   daddu     $a0, $s0, $zero
    /* F6F4C 001F5FCC 5000B127 */  addiu      $s1, $sp, 0x50
    /* F6F50 001F5FD0 2D300002 */  daddu      $a2, $s0, $zero
    /* F6F54 001F5FD4 2D202002 */  daddu      $a0, $s1, $zero
    /* F6F58 001F5FD8 F6E6070C */  jal        func_001F9BD8
    /* F6F5C 001F5FDC 2D286002 */   daddu     $a1, $s3, $zero
    /* F6F60 001F5FE0 06D30046 */  mov.s      $f12, $f26
    /* F6F64 001F5FE4 2D200002 */  daddu      $a0, $s0, $zero
    /* F6F68 001F5FE8 0CE7070C */  jal        func_001F9C30
    /* F6F6C 001F5FEC 2D284002 */   daddu     $a1, $s2, $zero
    /* F6F70 001F5FF0 2D202002 */  daddu      $a0, $s1, $zero
    /* F6F74 001F5FF4 2D300002 */  daddu      $a2, $s0, $zero
    /* F6F78 001F5FF8 F6E6070C */  jal        func_001F9BD8
    /* F6F7C 001F5FFC 2D288000 */   daddu     $a1, $a0, $zero
    /* F6F80 001F6000 2D28A003 */  daddu      $a1, $sp, $zero
    /* F6F84 001F6004 06C30046 */  mov.s      $f12, $f24
    /* F6F88 001F6008 0CE7070C */  jal        func_001F9C30
    /* F6F8C 001F600C 2D200002 */   daddu     $a0, $s0, $zero
    /* F6F90 001F6010 6000B127 */  addiu      $s1, $sp, 0x60
    /* F6F94 001F6014 2D300002 */  daddu      $a2, $s0, $zero
    /* F6F98 001F6018 2D202002 */  daddu      $a0, $s1, $zero
    /* F6F9C 001F601C FCE6070C */  jal        func_001F9BF0
    /* F6FA0 001F6020 2D286002 */   daddu     $a1, $s3, $zero
    /* F6FA4 001F6024 06A30046 */  mov.s      $f12, $f20
    /* F6FA8 001F6028 2D200002 */  daddu      $a0, $s0, $zero
    /* F6FAC 001F602C 0CE7070C */  jal        func_001F9C30
    /* F6FB0 001F6030 2D284002 */   daddu     $a1, $s2, $zero
    /* F6FB4 001F6034 2D202002 */  daddu      $a0, $s1, $zero
    /* F6FB8 001F6038 2D300002 */  daddu      $a2, $s0, $zero
    /* F6FBC 001F603C FCE6070C */  jal        func_001F9BF0
    /* F6FC0 001F6040 2D288000 */   daddu     $a1, $a0, $zero
    /* F6FC4 001F6044 2D28A003 */  daddu      $a1, $sp, $zero
    /* F6FC8 001F6048 06C30046 */  mov.s      $f12, $f24
    /* F6FCC 001F604C 0CE7070C */  jal        func_001F9C30
    /* F6FD0 001F6050 2D200002 */   daddu     $a0, $s0, $zero
    /* F6FD4 001F6054 7000B127 */  addiu      $s1, $sp, 0x70
    /* F6FD8 001F6058 2D300002 */  daddu      $a2, $s0, $zero
    /* F6FDC 001F605C 2D286002 */  daddu      $a1, $s3, $zero
    /* F6FE0 001F6060 FCE6070C */  jal        func_001F9BF0
    /* F6FE4 001F6064 2D202002 */   daddu     $a0, $s1, $zero
    /* F6FE8 001F6068 06D30046 */  mov.s      $f12, $f26
    /* F6FEC 001F606C 2D284002 */  daddu      $a1, $s2, $zero
    /* F6FF0 001F6070 0CE7070C */  jal        func_001F9C30
    /* F6FF4 001F6074 2D200002 */   daddu     $a0, $s0, $zero
    /* F6FF8 001F6078 2D202002 */  daddu      $a0, $s1, $zero
    /* F6FFC 001F607C 2D300002 */  daddu      $a2, $s0, $zero
    /* F7000 001F6080 F6E6070C */  jal        func_001F9BD8
    /* F7004 001F6084 2D288000 */   daddu     $a1, $a0, $zero
    /* F7008 001F6088 1600033C */  lui        $v1, %hi(D_00161000)
    /* F700C 001F608C 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F7010 001F6090 0010023C */  lui        $v0, (0x10000007 >> 16)
    /* F7014 001F6094 07004234 */  ori        $v0, $v0, (0x10000007 & 0xFFFF)
    /* F7018 001F6098 0050043C */  lui        $a0, (0x50000007 >> 16)
    /* F701C 001F609C 000062AC */  sw         $v0, 0x0($v1)
    /* F7020 001F60A0 07008434 */  ori        $a0, $a0, (0x50000007 & 0xFFFF)
    /* F7024 001F60A4 00B40534 */  ori        $a1, $zero, 0xB400
    /* F7028 001F60A8 3C2C0500 */  dsll32     $a1, $a1, 16
    /* F702C 001F60AC 0180A534 */  ori        $a1, $a1, 0x8001
    /* F7030 001F60B0 A6A60634 */  ori        $a2, $zero, 0xA6A6
    /* F7034 001F60B4 38340600 */  dsll       $a2, $a2, 16
    /* F7038 001F60B8 A6A6C634 */  ori        $a2, $a2, 0xA6A6
    /* F703C 001F60BC F8320600 */  dsll       $a2, $a2, 11
    /* F7040 001F60C0 0601C634 */  ori        $a2, $a2, 0x106
    /* F7044 001F60C4 1600033C */  lui        $v1, %hi(D_00161000)
    /* F7048 001F60C8 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F704C 001F60CC 54010724 */  addiu      $a3, $zero, 0x154
    /* F7050 001F60D0 2540D502 */  or         $t0, $s6, $s5
    /* F7054 001F60D4 040060AC */  sw         $zero, 0x4($v1)
    /* F7058 001F60D8 1600023C */  lui        $v0, %hi(D_00161000)
    /* F705C 001F60DC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F7060 001F60E0 080040AC */  sw         $zero, 0x8($v0)
    /* F7064 001F60E4 1600033C */  lui        $v1, %hi(D_00161000)
    /* F7068 001F60E8 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F706C 001F60EC 0C0064AC */  sw         $a0, 0xC($v1)
    /* F7070 001F60F0 1600023C */  lui        $v0, %hi(D_00161000)
    /* F7074 001F60F4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F7078 001F60F8 10005224 */  addiu      $s2, $v0, 0x10
    /* F707C 001F60FC 1600013C */  lui        $at, %hi(D_00161000)
    /* F7080 001F6100 001032AC */  sw         $s2, %lo(D_00161000)($at)
    /* F7084 001F6104 100045FC */  sd         $a1, 0x10($v0)
    /* F7088 001F6108 080046FE */  sd         $a2, 0x8($s2)
    /* F708C 001F610C 8000A2DF */  ld         $v0, 0x80($sp)
    /* F7090 001F6110 180047FE */  sd         $a3, 0x18($s2)
    /* F7094 001F6114 100042FE */  sd         $v0, 0x10($s2)
    /* F7098 001F6118 8800A28F */  lw         $v0, 0x88($sp)
    /* F709C 001F611C 280048FE */  sd         $t0, 0x28($s2)
    /* F70A0 001F6120 200042FE */  sd         $v0, 0x20($s2)
    /* F70A4 001F6124 4000ACC7 */  lwc1       $f12, 0x40($sp)
    /* F70A8 001F6128 26EA070C */  jal        func_001FA898
    /* F70AC 001F612C 02631546 */   mul.s     $f12, $f12, $f21
    /* F70B0 001F6130 4400ACC7 */  lwc1       $f12, 0x44($sp)
    /* F70B4 001F6134 2D804000 */  daddu      $s0, $v0, $zero
    /* F70B8 001F6138 26EA070C */  jal        func_001FA898
    /* F70BC 001F613C 02631546 */   mul.s     $f12, $f12, $f21
    /* F70C0 001F6140 1400113C */  lui        $s1, %hi(D_0013E600)
    /* F70C4 001F6144 2528D503 */  or         $a1, $fp, $s5
    /* F70C8 001F6148 00E63126 */  addiu      $s1, $s1, %lo(D_0013E600)
    /* F70CC 001F614C 1400238E */  lw         $v1, 0x14($s1)
    /* F70D0 001F6150 1000248E */  lw         $a0, 0x10($s1)
    /* F70D4 001F6154 21104300 */  addu       $v0, $v0, $v1
    /* F70D8 001F6158 380045FE */  sd         $a1, 0x38($s2)
    /* F70DC 001F615C 21800402 */  addu       $s0, $s0, $a0
    /* F70E0 001F6160 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* F70E4 001F6164 F8FF1026 */  addiu      $s0, $s0, -0x8
    /* F70E8 001F6168 38140200 */  dsll       $v0, $v0, 16
    /* F70EC 001F616C 25800202 */  or         $s0, $s0, $v0
    /* F70F0 001F6170 25801402 */  or         $s0, $s0, $s4
    /* F70F4 001F6174 300050FE */  sd         $s0, 0x30($s2)
    /* F70F8 001F6178 5000ACC7 */  lwc1       $f12, 0x50($sp)
    /* F70FC 001F617C 26EA070C */  jal        func_001FA898
    /* F7100 001F6180 02631546 */   mul.s     $f12, $f12, $f21
    /* F7104 001F6184 5400ACC7 */  lwc1       $f12, 0x54($sp)
    /* F7108 001F6188 2D804000 */  daddu      $s0, $v0, $zero
    /* F710C 001F618C 26EA070C */  jal        func_001FA898
    /* F7110 001F6190 02631546 */   mul.s     $f12, $f12, $f21
    /* F7114 001F6194 1400238E */  lw         $v1, 0x14($s1)
    /* F7118 001F6198 2520D702 */  or         $a0, $s6, $s7
    /* F711C 001F619C 1000258E */  lw         $a1, 0x10($s1)
    /* F7120 001F61A0 21104300 */  addu       $v0, $v0, $v1
    /* F7124 001F61A4 480044FE */  sd         $a0, 0x48($s2)
    /* F7128 001F61A8 21800502 */  addu       $s0, $s0, $a1
    /* F712C 001F61AC F8FF4224 */  addiu      $v0, $v0, -0x8
    /* F7130 001F61B0 F8FF1026 */  addiu      $s0, $s0, -0x8
    /* F7134 001F61B4 38140200 */  dsll       $v0, $v0, 16
    /* F7138 001F61B8 25800202 */  or         $s0, $s0, $v0
    /* F713C 001F61BC 25801402 */  or         $s0, $s0, $s4
    /* F7140 001F61C0 400050FE */  sd         $s0, 0x40($s2)
    /* F7144 001F61C4 6000ACC7 */  lwc1       $f12, 0x60($sp)
    /* F7148 001F61C8 26EA070C */  jal        func_001FA898
    /* F714C 001F61CC 02631546 */   mul.s     $f12, $f12, $f21
    /* F7150 001F61D0 6400ACC7 */  lwc1       $f12, 0x64($sp)
    /* F7154 001F61D4 2D804000 */  daddu      $s0, $v0, $zero
    /* F7158 001F61D8 26EA070C */  jal        func_001FA898
    /* F715C 001F61DC 02631546 */   mul.s     $f12, $f12, $f21
    /* F7160 001F61E0 1400238E */  lw         $v1, 0x14($s1)
    /* F7164 001F61E4 2520D703 */  or         $a0, $fp, $s7
    /* F7168 001F61E8 1000258E */  lw         $a1, 0x10($s1)
    /* F716C 001F61EC 21104300 */  addu       $v0, $v0, $v1
    /* F7170 001F61F0 580044FE */  sd         $a0, 0x58($s2)
    /* F7174 001F61F4 21800502 */  addu       $s0, $s0, $a1
    /* F7178 001F61F8 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* F717C 001F61FC F8FF1026 */  addiu      $s0, $s0, -0x8
    /* F7180 001F6200 38140200 */  dsll       $v0, $v0, 16
    /* F7184 001F6204 25800202 */  or         $s0, $s0, $v0
    /* F7188 001F6208 25801402 */  or         $s0, $s0, $s4
    /* F718C 001F620C 500050FE */  sd         $s0, 0x50($s2)
    /* F7190 001F6210 7000ACC7 */  lwc1       $f12, 0x70($sp)
    /* F7194 001F6214 26EA070C */  jal        func_001FA898
    /* F7198 001F6218 02631546 */   mul.s     $f12, $f12, $f21
    /* F719C 001F621C 7400ACC7 */  lwc1       $f12, 0x74($sp)
    /* F71A0 001F6220 2D804000 */  daddu      $s0, $v0, $zero
    /* F71A4 001F6224 26EA070C */  jal        func_001FA898
    /* F71A8 001F6228 02631546 */   mul.s     $f12, $f12, $f21
    /* F71AC 001F622C 1400238E */  lw         $v1, 0x14($s1)
    /* F71B0 001F6230 1000248E */  lw         $a0, 0x10($s1)
    /* F71B4 001F6234 21104300 */  addu       $v0, $v0, $v1
    /* F71B8 001F6238 680040FE */  sd         $zero, 0x68($s2)
    /* F71BC 001F623C 21800402 */  addu       $s0, $s0, $a0
    /* F71C0 001F6240 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* F71C4 001F6244 38140200 */  dsll       $v0, $v0, 16
    /* F71C8 001F6248 F8FF1026 */  addiu      $s0, $s0, -0x8
    /* F71CC 001F624C 25800202 */  or         $s0, $s0, $v0
    /* F71D0 001F6250 2001BF7B */  lq         $ra, 0x120($sp)
    /* F71D4 001F6254 25801402 */  or         $s0, $s0, $s4
    /* F71D8 001F6258 1001BE7B */  lq         $fp, 0x110($sp)
    /* F71DC 001F625C 600050FE */  sd         $s0, 0x60($s2)
    /* F71E0 001F6260 0001B77B */  lq         $s7, 0x100($sp)
    /* F71E4 001F6264 1600023C */  lui        $v0, %hi(D_00161000)
    /* F71E8 001F6268 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F71EC 001F626C F000B67B */  lq         $s6, 0xF0($sp)
    /* F71F0 001F6270 70004224 */  addiu      $v0, $v0, 0x70
    /* F71F4 001F6274 E000B57B */  lq         $s5, 0xE0($sp)
    /* F71F8 001F6278 D000B47B */  lq         $s4, 0xD0($sp)
    /* F71FC 001F627C C000B37B */  lq         $s3, 0xC0($sp)
    /* F7200 001F6280 B000B27B */  lq         $s2, 0xB0($sp)
    /* F7204 001F6284 A000B17B */  lq         $s1, 0xA0($sp)
    /* F7208 001F6288 9000B07B */  lq         $s0, 0x90($sp)
    /* F720C 001F628C 6801BBC7 */  lwc1       $f27, 0x168($sp)
    /* F7210 001F6290 6001BAC7 */  lwc1       $f26, 0x160($sp)
    /* F7214 001F6294 5801B9C7 */  lwc1       $f25, 0x158($sp)
    /* F7218 001F6298 5001B8C7 */  lwc1       $f24, 0x150($sp)
    /* F721C 001F629C 4801B7C7 */  lwc1       $f23, 0x148($sp)
    /* F7220 001F62A0 4001B6C7 */  lwc1       $f22, 0x140($sp)
    /* F7224 001F62A4 3801B5C7 */  lwc1       $f21, 0x138($sp)
    /* F7228 001F62A8 3001B4C7 */  lwc1       $f20, 0x130($sp)
    /* F722C 001F62AC 1600013C */  lui        $at, %hi(D_00161000)
    /* F7230 001F62B0 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* F7234 001F62B4 0800E003 */  jr         $ra
    /* F7238 001F62B8 7001BD27 */   addiu     $sp, $sp, 0x170
endlabel func_001F5E60
    /* F723C 001F62BC 00000000 */  nop
