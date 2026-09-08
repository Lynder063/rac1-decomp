.align 3
nonmatching func_0012E058, 0x15C

glabel func_0012E058
    /* 2EFD8 0012E058 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2EFDC 0012E05C 00000000 */  nop
.align 2
  alabel func_0012E060
    /* 2EFE0 0012E060 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2EFE4 0012E064 C880828F */  lw         $v0, -0x7F38($gp)
    /* 2EFE8 0012E068 2000B17F */  sq         $s1, 0x20($sp)
    /* 2EFEC 0012E06C 1000B07F */  sq         $s0, 0x10($sp)
    /* 2EFF0 0012E070 2D888000 */  daddu      $s1, $a0, $zero
    /* 2EFF4 0012E074 4000BF7F */  sq         $ra, 0x40($sp)
    /* 2EFF8 0012E078 2D80A000 */  daddu      $s0, $a1, $zero
    /* 2EFFC 0012E07C 3000B27F */  sq         $s2, 0x30($sp)
    /* 2F000 0012E080 04004010 */  beqz       $v0, .L0012E094
    /* 2F004 0012E084 888080AF */   sw        $zero, -0x7F78($gp)
    /* 2F008 0012E088 1500043C */  lui        $a0, %hi(D_00153EA8)
    /* 2F00C 0012E08C 08000010 */  b          .L0012E0B0
    /* 2F010 0012E090 A83E8424 */   addiu     $a0, $a0, %lo(D_00153EA8)
.align 2
  .L0012E094:
    /* 2F014 0012E094 D2BB040C */  jal        func_0012EF48
    /* 2F018 0012E098 01000424 */   addiu     $a0, $zero, 0x1
    /* 2F01C 0012E09C 01000324 */  addiu      $v1, $zero, 0x1
    /* 2F020 0012E0A0 07004314 */  bne        $v0, $v1, .L0012E0C0
    /* 2F024 0012E0A4 1300023C */   lui       $v0, %hi(D_00137C40)
    /* 2F028 0012E0A8 1500043C */  lui        $a0, %hi(D_00153ED8)
    /* 2F02C 0012E0AC D83E8424 */  addiu      $a0, $a0, %lo(D_00153ED8)
.align 2
  .L0012E0B0:
    /* 2F030 0012E0B0 1E58040C */  jal        func_00116078
    /* 2F034 0012E0B4 00000000 */   nop
    /* 2F038 0012E0B8 38000010 */  b          .L0012E19C
    /* 2F03C 0012E0BC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0012E0C0:
    /* 2F040 0012E0C0 FFFF033C */  lui        $v1, (0xFFFFFFFF >> 16)
    /* 2F044 0012E0C4 407C4424 */  addiu      $a0, $v0, %lo(D_00137C40)
    /* 2F048 0012E0C8 FFFF6334 */  ori        $v1, $v1, (0xFFFFFFFF & 0xFFFF)
    /* 2F04C 0012E0CC 040090AC */  sw         $s0, 0x4($a0)
    /* 2F050 0012E0D0 1600013C */  lui        $at, %hi(D_0015EE00)
    /* 2F054 0012E0D4 00EE23AC */  sw         $v1, %lo(D_0015EE00)($at)
    /* 2F058 0012E0D8 407C51AC */  sw         $s1, %lo(D_00137C40)($v0)
    /* 2F05C 0012E0DC 2D904000 */  daddu      $s2, $v0, $zero
    /* 2F060 0012E0E0 07000010 */  b          .L0012E100
    /* 2F064 0012E0E4 1600113C */   lui       $s1, %hi(D_0015ECE8)
.align 2
  .L0012E0E8:
    /* 2F068 0012E0E8 1E58040C */  jal        func_00116078
    /* 2F06C 0012E0EC 203E8424 */   addiu     $a0, $a0, %lo(D_00153E20)
    /* 2F070 0012E0F0 70B7040C */  jal        func_0012DDC0
    /* 2F074 0012E0F4 00000000 */   nop
    /* 2F078 0012E0F8 6063040C */  jal        func_00118D80
    /* 2F07C 0012E0FC 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012E100:
    /* 2F080 0012E100 E8EC3026 */  addiu      $s0, $s1, %lo(D_0015ECE8)
    /* 2F084 0012E104 AE6D040C */  jal        func_0011B6B8
    /* 2F088 0012E108 2D200002 */   daddu     $a0, $s0, $zero
    /* 2F08C 0012E10C F6FF4014 */  bnez       $v0, .L0012E0E8
    /* 2F090 0012E110 1500043C */   lui       $a0, %hi(D_00153E20)
    /* 2F094 0012E114 2D200002 */  daddu      $a0, $s0, $zero
    /* 2F098 0012E118 407C4726 */  addiu      $a3, $s2, %lo(D_00137C40)
    /* 2F09C 0012E11C 0000A0AF */  sw         $zero, 0x0($sp)
    /* 2F0A0 0012E120 03000524 */  addiu      $a1, $zero, 0x3
    /* 2F0A4 0012E124 01000624 */  addiu      $a2, $zero, 0x1
    /* 2F0A8 0012E128 08000824 */  addiu      $t0, $zero, 0x8
    /* 2F0AC 0012E12C 1600093C */  lui        $t1, %hi(D_0015EE00)
    /* 2F0B0 0012E130 00EE2925 */  addiu      $t1, $t1, %lo(D_0015EE00)
    /* 2F0B4 0012E134 04000A24 */  addiu      $t2, $zero, 0x4
    /* 2F0B8 0012E138 326D040C */  jal        func_0011B4C8
    /* 2F0BC 0012E13C 2D580000 */   daddu     $t3, $zero, $zero
    /* 2F0C0 0012E140 08004104 */  bgez       $v0, .L0012E164
    /* 2F0C4 0012E144 0081838F */   lw        $v1, -0x7F00($gp)
    /* 2F0C8 0012E148 1500043C */  lui        $a0, %hi(D_00153EF8)
    /* 2F0CC 0012E14C 1E58040C */  jal        func_00116078
    /* 2F0D0 0012E150 F83E8424 */   addiu     $a0, $a0, %lo(D_00153EF8)
    /* 2F0D4 0012E154 06010324 */  addiu      $v1, $zero, 0x106
    /* 2F0D8 0012E158 2D100000 */  daddu      $v0, $zero, $zero
    /* 2F0DC 0012E15C 0F000010 */  b          .L0012E19C
    /* 2F0E0 0012E160 888083AF */   sw        $v1, -0x7F78($gp)
.align 2
  .L0012E164:
    /* 2F0E4 0012E164 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 2F0E8 0012E168 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 2F0EC 0012E16C 0B006214 */  bne        $v1, $v0, .L0012E19C
    /* 2F0F0 0012E170 0081828F */   lw        $v0, -0x7F00($gp)
    /* 2F0F4 0012E174 FFFF103C */  lui        $s0, (0xFFFFFFFF >> 16)
    /* 2F0F8 0012E178 FFFF1036 */  ori        $s0, $s0, (0xFFFFFFFF & 0xFFFF)
    /* 2F0FC 0012E17C 00000000 */  nop
.align 2
  .L0012E180:
    /* 2F100 0012E180 6063040C */  jal        func_00118D80
    /* 2F104 0012E184 2D200000 */   daddu     $a0, $zero, $zero
    /* 2F108 0012E188 1600023C */  lui        $v0, %hi(D_0015EE00)
    /* 2F10C 0012E18C 00EE428C */  lw         $v0, %lo(D_0015EE00)($v0)
    /* 2F110 0012E190 00000000 */  nop
    /* 2F114 0012E194 FAFF5010 */  beq        $v0, $s0, .L0012E180
    /* 2F118 0012E198 00000000 */   nop
.align 2
  .L0012E19C:
    /* 2F11C 0012E19C 4000BF7B */  lq         $ra, 0x40($sp)
    /* 2F120 0012E1A0 3000B27B */  lq         $s2, 0x30($sp)
    /* 2F124 0012E1A4 2000B17B */  lq         $s1, 0x20($sp)
    /* 2F128 0012E1A8 1000B07B */  lq         $s0, 0x10($sp)
    /* 2F12C 0012E1AC 0800E003 */  jr         $ra
    /* 2F130 0012E1B0 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012E058
    /* 2F134 0012E1B4 00000000 */  nop
