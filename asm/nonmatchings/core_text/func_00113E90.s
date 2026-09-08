.align 3
nonmatching func_00113E90, 0x16C

glabel func_00113E90
    /* 14E10 00113E90 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 14E14 00113E94 2000B2FF */  sd         $s2, 0x20($sp)
    /* 14E18 00113E98 0000B0FF */  sd         $s0, 0x0($sp)
    /* 14E1C 00113E9C 2D908000 */  daddu      $s2, $a0, $zero
    /* 14E20 00113EA0 4000B4FF */  sd         $s4, 0x40($sp)
    /* 14E24 00113EA4 2D80A000 */  daddu      $s0, $a1, $zero
    /* 14E28 00113EA8 1000B1FF */  sd         $s1, 0x10($sp)
    /* 14E2C 00113EAC 5000BFFF */  sd         $ra, 0x50($sp)
    /* 14E30 00113EB0 3055040C */  jal        func_001154C0
    /* 14E34 00113EB4 3000B3FF */   sd        $s3, 0x30($sp)
    /* 14E38 00113EB8 1300023C */  lui        $v0, %hi(D_0012F888)
    /* 14E3C 00113EBC FFFF033C */  lui        $v1, (0xFFFFFFFC >> 16)
    /* 14E40 00113EC0 88F85424 */  addiu      $s4, $v0, %lo(D_0012F888)
    /* 14E44 00113EC4 FCFF6334 */  ori        $v1, $v1, (0xFFFFFFFC & 0xFFFF)
    /* 14E48 00113EC8 0800848E */  lw         $a0, 0x8($s4)
    /* 14E4C 00113ECC 3C801000 */  dsll32     $s0, $s0, 0
    /* 14E50 00113ED0 3E801000 */  dsrl32     $s0, $s0, 0
    /* 14E54 00113ED4 00100524 */  addiu      $a1, $zero, 0x1000
    /* 14E58 00113ED8 0400828C */  lw         $v0, 0x4($a0)
    /* 14E5C 00113EDC 24104300 */  and        $v0, $v0, $v1
    /* 14E60 00113EE0 3C100200 */  dsll32     $v0, $v0, 0
    /* 14E64 00113EE4 3E880200 */  dsrl32     $s1, $v0, 0
    /* 14E68 00113EE8 2F803002 */  dsubu      $s0, $s1, $s0
    /* 14E6C 00113EEC CA7B040C */  jal        func_0011EF28
    /* 14E70 00113EF0 EF0F0466 */   daddiu    $a0, $s0, 0xFEF
    /* 14E74 00113EF4 FFFF4464 */  daddiu     $a0, $v0, -0x1
    /* 14E78 00113EF8 B27B040C */  jal        func_0011EEC8
    /* 14E7C 00113EFC 00100524 */   addiu     $a1, $zero, 0x1000
    /* 14E80 00113F00 2D804000 */  daddu      $s0, $v0, $zero
    /* 14E84 00113F04 0010022A */  slti       $v0, $s0, 0x1000
    /* 14E88 00113F08 23004014 */  bnez       $v0, .L00113F98
    /* 14E8C 00113F0C 2D204002 */   daddu     $a0, $s2, $zero
    /* 14E90 00113F10 7A58040C */  jal        func_001161E8
    /* 14E94 00113F14 2D280000 */   daddu     $a1, $zero, $zero
    /* 14E98 00113F18 0800838E */  lw         $v1, 0x8($s4)
    /* 14E9C 00113F1C 3C201100 */  dsll32     $a0, $s1, 0
    /* 14EA0 00113F20 3F200400 */  dsra32     $a0, $a0, 0
    /* 14EA4 00113F24 21186400 */  addu       $v1, $v1, $a0
    /* 14EA8 00113F28 1B004314 */  bne        $v0, $v1, .L00113F98
    /* 14EAC 00113F2C 2D204002 */   daddu     $a0, $s2, $zero
    /* 14EB0 00113F30 3C981000 */  dsll32     $s3, $s0, 0
    /* 14EB4 00113F34 3F981300 */  dsra32     $s3, $s3, 0
    /* 14EB8 00113F38 7A58040C */  jal        func_001161E8
    /* 14EBC 00113F3C 23281300 */   negu      $a1, $s3
    /* 14EC0 00113F40 FFFF033C */  lui        $v1, (0xFFFFFFFF >> 16)
    /* 14EC4 00113F44 FFFF6334 */  ori        $v1, $v1, (0xFFFFFFFF & 0xFFFF)
    /* 14EC8 00113F48 17004314 */  bne        $v0, $v1, .L00113FA8
    /* 14ECC 00113F4C 01000324 */   addiu     $v1, $zero, 0x1
    /* 14ED0 00113F50 2D204002 */  daddu      $a0, $s2, $zero
    /* 14ED4 00113F54 7A58040C */  jal        func_001161E8
    /* 14ED8 00113F58 2D280000 */   daddu     $a1, $zero, $zero
    /* 14EDC 00113F5C 0800868E */  lw         $a2, 0x8($s4)
    /* 14EE0 00113F60 2D284000 */  daddu      $a1, $v0, $zero
    /* 14EE4 00113F64 2388A600 */  subu       $s1, $a1, $a2
    /* 14EE8 00113F68 1000222A */  slti       $v0, $s1, 0x10
    /* 14EEC 00113F6C 0A004014 */  bnez       $v0, .L00113F98
    /* 14EF0 00113F70 1300043C */   lui       $a0, %hi(D_0012FCA0)
    /* 14EF4 00113F74 01000224 */  addiu      $v0, $zero, 0x1
    /* 14EF8 00113F78 A0FC838C */  lw         $v1, %lo(D_0012FCA0)($a0)
    /* 14EFC 00113F7C 25102202 */  or         $v0, $s1, $v0
    /* 14F00 00113F80 1300043C */  lui        $a0, %hi(D_0012FCB8)
    /* 14F04 00113F84 3C100200 */  dsll32     $v0, $v0, 0
    /* 14F08 00113F88 3F100200 */  dsra32     $v0, $v0, 0
    /* 14F0C 00113F8C 2318A300 */  subu       $v1, $a1, $v1
    /* 14F10 00113F90 B8FC83AC */  sw         $v1, %lo(D_0012FCB8)($a0)
    /* 14F14 00113F94 0400C2AC */  sw         $v0, 0x4($a2)
.align 2
  .L00113F98:
    /* 14F18 00113F98 3255040C */  jal        func_001154C8
    /* 14F1C 00113F9C 2D204002 */   daddu     $a0, $s2, $zero
    /* 14F20 00113FA0 0E000010 */  b          .L00113FDC
    /* 14F24 00113FA4 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00113FA8:
    /* 14F28 00113FA8 2F103002 */  dsubu      $v0, $s1, $s0
    /* 14F2C 00113FAC 25104300 */  or         $v0, $v0, $v1
    /* 14F30 00113FB0 0800848E */  lw         $a0, 0x8($s4)
    /* 14F34 00113FB4 3C100200 */  dsll32     $v0, $v0, 0
    /* 14F38 00113FB8 3F100200 */  dsra32     $v0, $v0, 0
    /* 14F3C 00113FBC 1300033C */  lui        $v1, %hi(D_0012FCB8)
    /* 14F40 00113FC0 040082AC */  sw         $v0, 0x4($a0)
    /* 14F44 00113FC4 2D204002 */  daddu      $a0, $s2, $zero
    /* 14F48 00113FC8 B8FC628C */  lw         $v0, %lo(D_0012FCB8)($v1)
    /* 14F4C 00113FCC 23105300 */  subu       $v0, $v0, $s3
    /* 14F50 00113FD0 3255040C */  jal        func_001154C8
    /* 14F54 00113FD4 B8FC62AC */   sw        $v0, %lo(D_0012FCB8)($v1)
    /* 14F58 00113FD8 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L00113FDC:
    /* 14F5C 00113FDC 5000BFDF */  ld         $ra, 0x50($sp)
    /* 14F60 00113FE0 4000B4DF */  ld         $s4, 0x40($sp)
    /* 14F64 00113FE4 3000B3DF */  ld         $s3, 0x30($sp)
    /* 14F68 00113FE8 2000B2DF */  ld         $s2, 0x20($sp)
    /* 14F6C 00113FEC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 14F70 00113FF0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 14F74 00113FF4 0800E003 */  jr         $ra
    /* 14F78 00113FF8 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_00113E90
