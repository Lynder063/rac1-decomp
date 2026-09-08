.align 3
nonmatching func_00227B00, 0x178

glabel func_00227B00
    /* 128A80 00227B00 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 128A84 00227B04 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 128A88 00227B08 5000B47F */  sq         $s4, 0x50($sp)
    /* 128A8C 00227B0C 705F4724 */  addiu      $a3, $v0, %lo(D_001D5F70)
    /* 128A90 00227B10 0000A5AF */  sw         $a1, 0x0($sp)
    /* 128A94 00227B14 2D308000 */  daddu      $a2, $a0, $zero
    /* 128A98 00227B18 A000BF7F */  sq         $ra, 0xA0($sp)
    /* 128A9C 00227B1C 2DA00000 */  daddu      $s4, $zero, $zero
    /* 128AA0 00227B20 9000BE7F */  sq         $fp, 0x90($sp)
    /* 128AA4 00227B24 8000B77F */  sq         $s7, 0x80($sp)
    /* 128AA8 00227B28 7000B67F */  sq         $s6, 0x70($sp)
    /* 128AAC 00227B2C 6000B57F */  sq         $s5, 0x60($sp)
    /* 128AB0 00227B30 4000B37F */  sq         $s3, 0x40($sp)
    /* 128AB4 00227B34 3000B27F */  sq         $s2, 0x30($sp)
    /* 128AB8 00227B38 2000B17F */  sq         $s1, 0x20($sp)
    /* 128ABC 00227B3C 1000B07F */  sq         $s0, 0x10($sp)
    /* 128AC0 00227B40 A800E6AC */  sw         $a2, 0xA8($a3)
    /* 128AC4 00227B44 0000A28F */  lw         $v0, 0x0($sp)
    /* 128AC8 00227B48 3F004018 */  blez       $v0, .L00227C48
    /* 128ACC 00227B4C AC00E2AC */   sw        $v0, 0xAC($a3)
    /* 128AD0 00227B50 1D00043C */  lui        $a0, %hi(D_001D5D58)
    /* 128AD4 00227B54 C0280600 */  sll        $a1, $a2, 3
    /* 128AD8 00227B58 585D8424 */  addiu      $a0, $a0, %lo(D_001D5D58)
    /* 128ADC 00227B5C 80B80600 */  sll        $s7, $a2, 2
    /* 128AE0 00227B60 21A8A400 */  addu       $s5, $a1, $a0
    /* 128AE4 00227B64 0000A28E */  lw         $v0, 0x0($s5)
.align 2
  .L00227B68:
    /* 128AE8 00227B68 1B00033C */  lui        $v1, %hi(D_001B3E40)
    /* 128AEC 00227B6C 403E6324 */  addiu      $v1, $v1, %lo(D_001B3E40)
    /* 128AF0 00227B70 2D800000 */  daddu      $s0, $zero, $zero
    /* 128AF4 00227B74 21104300 */  addu       $v0, $v0, $v1
    /* 128AF8 00227B78 00005E90 */  lbu        $fp, 0x0($v0)
    /* 128AFC 00227B7C 02000324 */  addiu      $v1, $zero, 0x2
    /* 128B00 00227B80 0000A28F */  lw         $v0, 0x0($sp)
    /* 128B04 00227B84 04004314 */  bne        $v0, $v1, .L00227B98
    /* 128B08 00227B88 0400B68E */   lw        $s6, 0x4($s5)
    /* 128B0C 00227B8C 0100823A */  xori       $v0, $s4, 0x1
    /* 128B10 00227B90 01001024 */  addiu      $s0, $zero, 0x1
    /* 128B14 00227B94 0B800200 */  movn       $s0, $zero, $v0
.align 2
  .L00227B98:
    /* 128B18 00227B98 1D00033C */  lui        $v1, %hi(D_001D60C8)
    /* 128B1C 00227B9C 0800B526 */  addiu      $s5, $s5, 0x8
    /* 128B20 00227BA0 C8606324 */  addiu      $v1, $v1, %lo(D_001D60C8)
    /* 128B24 00227BA4 2110E302 */  addu       $v0, $s7, $v1
    /* 128B28 00227BA8 0000538C */  lw         $s3, 0x0($v0)
    /* 128B2C 00227BAC 0400F726 */  addiu      $s7, $s7, 0x4
    /* 128B30 00227BB0 D4D0080C */  jal        func_00234350
    /* 128B34 00227BB4 2D206002 */   daddu     $a0, $s3, $zero
    /* 128B38 00227BB8 00910200 */  sll        $s2, $v0, 4
    /* 128B3C 00227BBC 21189002 */  addu       $v1, $s4, $s0
    /* 128B40 00227BC0 1D00023C */  lui        $v0, %hi(D_001D6020)
    /* 128B44 00227BC4 80180300 */  sll        $v1, $v1, 2
    /* 128B48 00227BC8 20604224 */  addiu      $v0, $v0, %lo(D_001D6020)
    /* 128B4C 00227BCC 01009426 */  addiu      $s4, $s4, 0x1
    /* 128B50 00227BD0 21186200 */  addu       $v1, $v1, $v0
    /* 128B54 00227BD4 0000718C */  lw         $s1, 0x0($v1)
    /* 128B58 00227BD8 069C080C */  jal        func_00227018
    /* 128B5C 00227BDC 2D202002 */   daddu     $a0, $s1, $zero
    /* 128B60 00227BE0 21802202 */  addu       $s0, $s1, $v0
    /* 128B64 00227BE4 2D300000 */  daddu      $a2, $zero, $zero
    /* 128B68 00227BE8 23801202 */  subu       $s0, $s0, $s2
    /* 128B6C 00227BEC FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 128B70 00227BF0 2D400000 */  daddu      $t0, $zero, $zero
    /* 128B74 00227BF4 2D286002 */  daddu      $a1, $s3, $zero
    /* 128B78 00227BF8 8ED0080C */  jal        func_00234238
    /* 128B7C 00227BFC 2D200002 */   daddu     $a0, $s0, $zero
    /* 128B80 00227C00 2D200002 */  daddu      $a0, $s0, $zero
    /* 128B84 00227C04 1A31080C */  jal        func_0020C468
    /* 128B88 00227C08 2D282002 */   daddu     $a1, $s1, $zero
    /* 128B8C 00227C0C 1B00023C */  lui        $v0, %hi(D_001B3580)
    /* 128B90 00227C10 80181E00 */  sll        $v1, $fp, 2
    /* 128B94 00227C14 80354224 */  addiu      $v0, $v0, %lo(D_001B3580)
    /* 128B98 00227C18 80201600 */  sll        $a0, $s6, 2
    /* 128B9C 00227C1C 21186200 */  addu       $v1, $v1, $v0
    /* 128BA0 00227C20 2D28C002 */  daddu      $a1, $s6, $zero
    /* 128BA4 00227C24 0000628C */  lw         $v0, 0x0($v1)
    /* 128BA8 00227C28 21104400 */  addu       $v0, $v0, $a0
    /* 128BAC 00227C2C 480051AC */  sw         $s1, 0x48($v0)
    /* 128BB0 00227C30 C60E080C */  jal        func_00203B18
    /* 128BB4 00227C34 0000648C */   lw        $a0, 0x0($v1)
    /* 128BB8 00227C38 0000A38F */  lw         $v1, 0x0($sp)
    /* 128BBC 00227C3C 2A108302 */  slt        $v0, $s4, $v1
    /* 128BC0 00227C40 C9FF4054 */  bnel       $v0, $zero, .L00227B68
    /* 128BC4 00227C44 0000A28E */   lw        $v0, 0x0($s5)
.align 2
  .L00227C48:
    /* 128BC8 00227C48 A000BF7B */  lq         $ra, 0xA0($sp)
    /* 128BCC 00227C4C 9000BE7B */  lq         $fp, 0x90($sp)
    /* 128BD0 00227C50 8000B77B */  lq         $s7, 0x80($sp)
    /* 128BD4 00227C54 7000B67B */  lq         $s6, 0x70($sp)
    /* 128BD8 00227C58 6000B57B */  lq         $s5, 0x60($sp)
    /* 128BDC 00227C5C 5000B47B */  lq         $s4, 0x50($sp)
    /* 128BE0 00227C60 4000B37B */  lq         $s3, 0x40($sp)
    /* 128BE4 00227C64 3000B27B */  lq         $s2, 0x30($sp)
    /* 128BE8 00227C68 2000B17B */  lq         $s1, 0x20($sp)
    /* 128BEC 00227C6C 1000B07B */  lq         $s0, 0x10($sp)
    /* 128BF0 00227C70 0800E003 */  jr         $ra
    /* 128BF4 00227C74 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_00227B00
