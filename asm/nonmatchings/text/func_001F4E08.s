.align 3
nonmatching func_001F4E08, 0x188

glabel func_001F4E08
    /* F5D88 001F4E08 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* F5D8C 001F4E0C 2D108000 */  daddu      $v0, $a0, $zero
    /* F5D90 001F4E10 0000B07F */  sq         $s0, 0x0($sp)
    /* F5D94 001F4E14 01000424 */  addiu      $a0, $zero, 0x1
    /* F5D98 001F4E18 FFFF5024 */  addiu      $s0, $v0, -0x1
    /* F5D9C 001F4E1C 5000BF7F */  sq         $ra, 0x50($sp)
    /* F5DA0 001F4E20 4000B47F */  sq         $s4, 0x40($sp)
    /* F5DA4 001F4E24 3000B37F */  sq         $s3, 0x30($sp)
    /* F5DA8 001F4E28 2000B27F */  sq         $s2, 0x20($sp)
    /* F5DAC 001F4E2C B2D2080C */  jal        func_00234AC8
    /* F5DB0 001F4E30 1000B17F */   sq        $s1, 0x10($sp)
    /* F5DB4 001F4E34 6689040C */  jal        func_00122598
    /* F5DB8 001F4E38 2D200000 */   daddu     $a0, $zero, $zero
    /* F5DBC 001F4E3C 1600033C */  lui        $v1, %hi(D_0015F538)
    /* F5DC0 001F4E40 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* F5DC4 001F4E44 01006324 */  addiu      $v1, $v1, 0x1
    /* F5DC8 001F4E48 3AD2080C */  jal        func_002348E8
    /* F5DCC 001F4E4C 388883AF */   sw        $v1, -0x77C8($gp)
    /* F5DD0 001F4E50 3A000006 */  bltz       $s0, .L001F4F3C
    /* F5DD4 001F4E54 0030123C */   lui       $s2, (0x30000014 >> 16)
    /* F5DD8 001F4E58 1400023C */  lui        $v0, %hi(D_0013CED0)
    /* F5DDC 001F4E5C 0050113C */  lui        $s1, (0x50000014 >> 16)
    /* F5DE0 001F4E60 D0CE5424 */  addiu      $s4, $v0, %lo(D_0013CED0)
    /* F5DE4 001F4E64 80001324 */  addiu      $s3, $zero, 0x80
    /* F5DE8 001F4E68 14005236 */  ori        $s2, $s2, (0x30000014 & 0xFFFF)
    /* F5DEC 001F4E6C 14003136 */  ori        $s1, $s1, (0x50000014 & 0xFFFF)
.align 2
  .L001F4E70:
    /* F5DF0 001F4E70 26ED070C */  jal        func_001FB498
    /* F5DF4 001F4E74 00000000 */   nop
    /* F5DF8 001F4E78 4CED070C */  jal        func_001FB530
    /* F5DFC 001F4E7C 00000000 */   nop
    /* F5E00 001F4E80 2D300000 */  daddu      $a2, $zero, $zero
    /* F5E04 001F4E84 80000724 */  addiu      $a3, $zero, 0x80
    /* F5E08 001F4E88 2D280000 */  daddu      $a1, $zero, $zero
    /* F5E0C 001F4E8C 70D5070C */  jal        func_001F55C0
    /* F5E10 001F4E90 2D200000 */   daddu     $a0, $zero, $zero
    /* F5E14 001F4E94 66ED070C */  jal        func_001FB598
    /* F5E18 001F4E98 00000000 */   nop
    /* F5E1C 001F4E9C 01000226 */  addiu      $v0, $s0, 0x1
    /* F5E20 001F4EA0 C0291000 */  sll        $a1, $s0, 7
    /* F5E24 001F4EA4 1A00A200 */  div        $zero, $a1, $v0
    /* F5E28 001F4EA8 01004050 */  beql       $v0, $zero, .L001F4EB0
    /* F5E2C 001F4EAC CD010000 */   break     0, 7
.align 2
  .L001F4EB0:
    /* F5E30 001F4EB0 01000424 */  addiu      $a0, $zero, 0x1
    /* F5E34 001F4EB4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* F5E38 001F4EB8 12280000 */  mflo       $a1
    /* F5E3C 001F4EBC 23286502 */  subu       $a1, $s3, $a1
    /* F5E40 001F4EC0 26D3080C */  jal        func_00234C98
    /* F5E44 001F4EC4 382E0500 */   dsll      $a1, $a1, 24
    /* F5E48 001F4EC8 1600033C */  lui        $v1, %hi(D_00161000)
    /* F5E4C 001F4ECC 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F5E50 001F4ED0 01000424 */  addiu      $a0, $zero, 0x1
    /* F5E54 001F4ED4 000072AC */  sw         $s2, 0x0($v1)
    /* F5E58 001F4ED8 1600023C */  lui        $v0, %hi(D_00161000)
    /* F5E5C 001F4EDC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F5E60 001F4EE0 040054AC */  sw         $s4, 0x4($v0)
    /* F5E64 001F4EE4 1600033C */  lui        $v1, %hi(D_00161000)
    /* F5E68 001F4EE8 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F5E6C 001F4EEC 080060AC */  sw         $zero, 0x8($v1)
    /* F5E70 001F4EF0 1600053C */  lui        $a1, %hi(D_00161000)
    /* F5E74 001F4EF4 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* F5E78 001F4EF8 0C00B1AC */  sw         $s1, 0xC($a1)
    /* F5E7C 001F4EFC 1600023C */  lui        $v0, %hi(D_00161000)
    /* F5E80 001F4F00 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F5E84 001F4F04 10004224 */  addiu      $v0, $v0, 0x10
    /* F5E88 001F4F08 B2D2080C */  jal        func_00234AC8
    /* F5E8C 001F4F0C 00A382AF */   sw        $v0, -0x5D00($gp)
    /* F5E90 001F4F10 6689040C */  jal        func_00122598
    /* F5E94 001F4F14 2D200000 */   daddu     $a0, $zero, $zero
    /* F5E98 001F4F18 1600033C */  lui        $v1, %hi(D_0015F538)
    /* F5E9C 001F4F1C 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* F5EA0 001F4F20 01006324 */  addiu      $v1, $v1, 0x1
    /* F5EA4 001F4F24 6ED2080C */  jal        func_002349B8
    /* F5EA8 001F4F28 388883AF */   sw        $v1, -0x77C8($gp)
    /* F5EAC 001F4F2C 52D2080C */  jal        func_00234948
    /* F5EB0 001F4F30 00000000 */   nop
    /* F5EB4 001F4F34 CEFF0106 */  bgez       $s0, .L001F4E70
    /* F5EB8 001F4F38 00000000 */   nop
.align 2
  .L001F4F3C:
    /* F5EBC 001F4F3C B2D2080C */  jal        func_00234AC8
    /* F5EC0 001F4F40 01000424 */   addiu     $a0, $zero, 0x1
    /* F5EC4 001F4F44 6689040C */  jal        func_00122598
    /* F5EC8 001F4F48 2D200000 */   daddu     $a0, $zero, $zero
    /* F5ECC 001F4F4C 1600033C */  lui        $v1, %hi(D_0015F538)
    /* F5ED0 001F4F50 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* F5ED4 001F4F54 01006324 */  addiu      $v1, $v1, 0x1
    /* F5ED8 001F4F58 3AD2080C */  jal        func_002348E8
    /* F5EDC 001F4F5C 388883AF */   sw        $v1, -0x77C8($gp)
    /* F5EE0 001F4F60 26ED070C */  jal        func_001FB498
    /* F5EE4 001F4F64 00000000 */   nop
    /* F5EE8 001F4F68 4CED070C */  jal        func_001FB530
    /* F5EEC 001F4F6C 00000000 */   nop
    /* F5EF0 001F4F70 5000BF7B */  lq         $ra, 0x50($sp)
    /* F5EF4 001F4F74 4000B47B */  lq         $s4, 0x40($sp)
    /* F5EF8 001F4F78 3000B37B */  lq         $s3, 0x30($sp)
    /* F5EFC 001F4F7C 2000B27B */  lq         $s2, 0x20($sp)
    /* F5F00 001F4F80 1000B17B */  lq         $s1, 0x10($sp)
    /* F5F04 001F4F84 0000B07B */  lq         $s0, 0x0($sp)
    /* F5F08 001F4F88 0800E003 */  jr         $ra
    /* F5F0C 001F4F8C 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001F4E08
