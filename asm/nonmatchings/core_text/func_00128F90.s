.align 3
nonmatching func_00128F90, 0x1F0

glabel func_00128F90
    /* 29F10 00128F90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29F14 00128F94 04000524 */  addiu      $a1, $zero, 0x4
    /* 29F18 00128F98 0000B0FF */  sd         $s0, 0x0($sp)
    /* 29F1C 00128F9C 1000BFFF */  sd         $ra, 0x10($sp)
    /* 29F20 00128FA0 96A2040C */  jal        func_00128A58
    /* 29F24 00128FA4 2D808000 */   daddu     $s0, $a0, $zero
    /* 29F28 00128FA8 640102AE */  sw         $v0, 0x164($s0)
    /* 29F2C 00128FAC 2D200002 */  daddu      $a0, $s0, $zero
    /* 29F30 00128FB0 96A2040C */  jal        func_00128A58
    /* 29F34 00128FB4 04000524 */   addiu     $a1, $zero, 0x4
    /* 29F38 00128FB8 680102AE */  sw         $v0, 0x168($s0)
    /* 29F3C 00128FBC 2D200002 */  daddu      $a0, $s0, $zero
    /* 29F40 00128FC0 96A2040C */  jal        func_00128A58
    /* 29F44 00128FC4 04000524 */   addiu     $a1, $zero, 0x4
    /* 29F48 00128FC8 6C0102AE */  sw         $v0, 0x16C($s0)
    /* 29F4C 00128FCC 2D200002 */  daddu      $a0, $s0, $zero
    /* 29F50 00128FD0 96A2040C */  jal        func_00128A58
    /* 29F54 00128FD4 04000524 */   addiu     $a1, $zero, 0x4
    /* 29F58 00128FD8 700102AE */  sw         $v0, 0x170($s0)
    /* 29F5C 00128FDC 2D200002 */  daddu      $a0, $s0, $zero
    /* 29F60 00128FE0 96A2040C */  jal        func_00128A58
    /* 29F64 00128FE4 02000524 */   addiu     $a1, $zero, 0x2
    /* 29F68 00128FE8 0010073C */  lui        $a3, (0x10002010 >> 16)
    /* 29F6C 00128FEC FCFF063C */  lui        $a2, (0xFFFCFFFF >> 16)
    /* 29F70 00128FF0 1020E734 */  ori        $a3, $a3, (0x10002010 & 0xFFFF)
    /* 29F74 00128FF4 FFFFC634 */  ori        $a2, $a2, (0xFFFCFFFF & 0xFFFF)
    /* 29F78 00128FF8 0000E38C */  lw         $v1, 0x0($a3)
    /* 29F7C 00128FFC 00140200 */  sll        $v0, $v0, 16
    /* 29F80 00129000 2D200002 */  daddu      $a0, $s0, $zero
    /* 29F84 00129004 02000524 */  addiu      $a1, $zero, 0x2
    /* 29F88 00129008 24186600 */  and        $v1, $v1, $a2
    /* 29F8C 0012900C 25186200 */  or         $v1, $v1, $v0
    /* 29F90 00129010 96A2040C */  jal        func_00128A58
    /* 29F94 00129014 0000E3AC */   sw        $v1, 0x0($a3)
    /* 29F98 00129018 2D184000 */  daddu      $v1, $v0, $zero
    /* 29F9C 0012901C D400028E */  lw         $v0, 0xD4($s0)
    /* 29FA0 00129020 02004014 */  bnez       $v0, .L0012902C
    /* 29FA4 00129024 740103AE */   sw        $v1, 0x174($s0)
    /* 29FA8 00129028 D40003AE */  sw         $v1, 0xD4($s0)
.align 2
  .L0012902C:
    /* 29FAC 0012902C 2D200002 */  daddu      $a0, $s0, $zero
    /* 29FB0 00129030 96A2040C */  jal        func_00128A58
    /* 29FB4 00129034 01000524 */   addiu     $a1, $zero, 0x1
    /* 29FB8 00129038 780102AE */  sw         $v0, 0x178($s0)
    /* 29FBC 0012903C 2D200002 */  daddu      $a0, $s0, $zero
    /* 29FC0 00129040 96A2040C */  jal        func_00128A58
    /* 29FC4 00129044 01000524 */   addiu     $a1, $zero, 0x1
    /* 29FC8 00129048 7C0102AE */  sw         $v0, 0x17C($s0)
    /* 29FCC 0012904C 2D200002 */  daddu      $a0, $s0, $zero
    /* 29FD0 00129050 96A2040C */  jal        func_00128A58
    /* 29FD4 00129054 01000524 */   addiu     $a1, $zero, 0x1
    /* 29FD8 00129058 800102AE */  sw         $v0, 0x180($s0)
    /* 29FDC 0012905C 2D200002 */  daddu      $a0, $s0, $zero
    /* 29FE0 00129060 96A2040C */  jal        func_00128A58
    /* 29FE4 00129064 01000524 */   addiu     $a1, $zero, 0x1
    /* 29FE8 00129068 0010063C */  lui        $a2, (0x10002010 >> 16)
    /* 29FEC 0012906C 1020C68C */  lw         $a2, (0x10002010 & 0xFFFF)($a2)
    /* 29FF0 00129070 BFFF033C */  lui        $v1, (0xFFBFFFFF >> 16)
    /* 29FF4 00129074 FFFF6334 */  ori        $v1, $v1, (0xFFBFFFFF & 0xFFFF)
    /* 29FF8 00129078 80150200 */  sll        $v0, $v0, 22
    /* 29FFC 0012907C 2430C300 */  and        $a2, $a2, $v1
    /* 2A000 00129080 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A004 00129084 2530C200 */  or         $a2, $a2, $v0
    /* 2A008 00129088 01000524 */  addiu      $a1, $zero, 0x1
    /* 2A00C 0012908C 0010013C */  lui        $at, (0x10002010 >> 16)
    /* 2A010 00129090 96A2040C */  jal        func_00128A58
    /* 2A014 00129094 102026AC */   sw        $a2, (0x10002010 & 0xFFFF)($at)
    /* 2A018 00129098 0010063C */  lui        $a2, (0x10002010 >> 16)
    /* 2A01C 0012909C 1020C68C */  lw         $a2, (0x10002010 & 0xFFFF)($a2)
    /* 2A020 001290A0 DFFF033C */  lui        $v1, (0xFFDFFFFF >> 16)
    /* 2A024 001290A4 FFFF6334 */  ori        $v1, $v1, (0xFFDFFFFF & 0xFFFF)
    /* 2A028 001290A8 40150200 */  sll        $v0, $v0, 21
    /* 2A02C 001290AC 2430C300 */  and        $a2, $a2, $v1
    /* 2A030 001290B0 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A034 001290B4 2530C200 */  or         $a2, $a2, $v0
    /* 2A038 001290B8 01000524 */  addiu      $a1, $zero, 0x1
    /* 2A03C 001290BC 0010013C */  lui        $at, (0x10002010 >> 16)
    /* 2A040 001290C0 96A2040C */  jal        func_00128A58
    /* 2A044 001290C4 102026AC */   sw        $a2, (0x10002010 & 0xFFFF)($at)
    /* 2A048 001290C8 0010063C */  lui        $a2, (0x10002010 >> 16)
    /* 2A04C 001290CC 1020C68C */  lw         $a2, (0x10002010 & 0xFFFF)($a2)
    /* 2A050 001290D0 EFFF033C */  lui        $v1, (0xFFEFFFFF >> 16)
    /* 2A054 001290D4 FFFF6334 */  ori        $v1, $v1, (0xFFEFFFFF & 0xFFFF)
    /* 2A058 001290D8 00150200 */  sll        $v0, $v0, 20
    /* 2A05C 001290DC 2430C300 */  and        $a2, $a2, $v1
    /* 2A060 001290E0 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A064 001290E4 2530C200 */  or         $a2, $a2, $v0
    /* 2A068 001290E8 01000524 */  addiu      $a1, $zero, 0x1
    /* 2A06C 001290EC 0010013C */  lui        $at, (0x10002010 >> 16)
    /* 2A070 001290F0 96A2040C */  jal        func_00128A58
    /* 2A074 001290F4 102026AC */   sw        $a2, (0x10002010 & 0xFFFF)($at)
    /* 2A078 001290F8 840102AE */  sw         $v0, 0x184($s0)
    /* 2A07C 001290FC 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A080 00129100 96A2040C */  jal        func_00128A58
    /* 2A084 00129104 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A088 00129108 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A08C 0012910C 96A2040C */  jal        func_00128A58
    /* 2A090 00129110 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A094 00129114 880102AE */  sw         $v0, 0x188($s0)
    /* 2A098 00129118 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A09C 0012911C 96A2040C */  jal        func_00128A58
    /* 2A0A0 00129120 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A0A4 00129124 13004010 */  beqz       $v0, .L00129174
    /* 2A0A8 00129128 1000BFDF */   ld        $ra, 0x10($sp)
    /* 2A0AC 0012912C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A0B0 00129130 96A2040C */  jal        func_00128A58
    /* 2A0B4 00129134 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A0B8 00129138 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A0BC 0012913C 96A2040C */  jal        func_00128A58
    /* 2A0C0 00129140 03000524 */   addiu     $a1, $zero, 0x3
    /* 2A0C4 00129144 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A0C8 00129148 96A2040C */  jal        func_00128A58
    /* 2A0CC 0012914C 01000524 */   addiu     $a1, $zero, 0x1
    /* 2A0D0 00129150 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A0D4 00129154 96A2040C */  jal        func_00128A58
    /* 2A0D8 00129158 07000524 */   addiu     $a1, $zero, 0x7
    /* 2A0DC 0012915C 2D200002 */  daddu      $a0, $s0, $zero
    /* 2A0E0 00129160 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2A0E4 00129164 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2A0E8 00129168 08000524 */  addiu      $a1, $zero, 0x8
    /* 2A0EC 0012916C 96A20408 */  j          func_00128A58
    /* 2A0F0 00129170 2000BD27 */   addiu     $sp, $sp, 0x20
.align 2
  .L00129174:
    /* 2A0F4 00129174 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2A0F8 00129178 0800E003 */  jr         $ra
    /* 2A0FC 0012917C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00128F90
