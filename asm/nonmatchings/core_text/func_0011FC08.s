.align 3
nonmatching func_0011FC08, 0x240

glabel func_0011FC08
    /* 20B88 0011FC08 2D408000 */  daddu      $t0, $a0, $zero
    /* 20B8C 0011FC0C 0000048D */  lw         $a0, 0x0($t0)
    /* 20B90 0011FC10 0200822C */  sltiu      $v0, $a0, 0x2
    /* 20B94 0011FC14 03004050 */  beql       $v0, $zero, .L0011FC24
    /* 20B98 0011FC18 0000A38C */   lw        $v1, 0x0($a1)
.align 2
  .L0011FC1C:
    /* 20B9C 0011FC1C 0800E003 */  jr         $ra
    /* 20BA0 0011FC20 2D100001 */   daddu     $v0, $t0, $zero
.align 2
  .L0011FC24:
    /* 20BA4 0011FC24 0200622C */  sltiu      $v0, $v1, 0x2
    /* 20BA8 0011FC28 03004010 */  beqz       $v0, .L0011FC38
    /* 20BAC 0011FC2C 04008238 */   xori      $v0, $a0, 0x4
.align 2
  .L0011FC30:
    /* 20BB0 0011FC30 0800E003 */  jr         $ra
    /* 20BB4 0011FC34 2D10A000 */   daddu     $v0, $a1, $zero
.align 2
  .L0011FC38:
    /* 20BB8 0011FC38 09004014 */  bnez       $v0, .L0011FC60
    /* 20BBC 0011FC3C 04006238 */   xori      $v0, $v1, 0x4
    /* 20BC0 0011FC40 F6FF4014 */  bnez       $v0, .L0011FC1C
    /* 20BC4 0011FC44 00000000 */   nop
    /* 20BC8 0011FC48 0400A38C */  lw         $v1, 0x4($a1)
    /* 20BCC 0011FC4C 0400028D */  lw         $v0, 0x4($t0)
    /* 20BD0 0011FC50 F2FF4310 */  beq        $v0, $v1, .L0011FC1C
    /* 20BD4 0011FC54 1600023C */   lui       $v0, %hi(D_001597F0)
    /* 20BD8 0011FC58 0800E003 */  jr         $ra
    /* 20BDC 0011FC5C F0974224 */   addiu     $v0, $v0, %lo(D_001597F0)
.align 2
  .L0011FC60:
    /* 20BE0 0011FC60 F3FF4010 */  beqz       $v0, .L0011FC30
    /* 20BE4 0011FC64 02006238 */   xori      $v0, $v1, 0x2
    /* 20BE8 0011FC68 0E004014 */  bnez       $v0, .L0011FCA4
    /* 20BEC 0011FC6C 02008238 */   xori      $v0, $a0, 0x2
    /* 20BF0 0011FC70 EAFF4014 */  bnez       $v0, .L0011FC1C
    /* 20BF4 0011FC74 2D10C000 */   daddu     $v0, $a2, $zero
    /* 20BF8 0011FC78 000004DD */  ld         $a0, 0x0($t0)
    /* 20BFC 0011FC7C 0000C4FC */  sd         $a0, 0x0($a2)
    /* 20C00 0011FC80 080003DD */  ld         $v1, 0x8($t0)
    /* 20C04 0011FC84 0800C3FC */  sd         $v1, 0x8($a2)
    /* 20C08 0011FC88 100004DD */  ld         $a0, 0x10($t0)
    /* 20C0C 0011FC8C 1000C4FC */  sd         $a0, 0x10($a2)
    /* 20C10 0011FC90 0400038D */  lw         $v1, 0x4($t0)
    /* 20C14 0011FC94 0400A48C */  lw         $a0, 0x4($a1)
    /* 20C18 0011FC98 24186400 */  and        $v1, $v1, $a0
    /* 20C1C 0011FC9C 0800E003 */  jr         $ra
    /* 20C20 0011FCA0 0400C3AC */   sw        $v1, 0x4($a2)
.align 2
  .L0011FCA4:
    /* 20C24 0011FCA4 E2FF4010 */  beqz       $v0, .L0011FC30
    /* 20C28 0011FCA8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 20C2C 0011FCAC 0800078D */  lw         $a3, 0x8($t0)
    /* 20C30 0011FCB0 0800A98C */  lw         $t1, 0x8($a1)
    /* 20C34 0011FCB4 10000BDD */  ld         $t3, 0x10($t0)
    /* 20C38 0011FCB8 2318E900 */  subu       $v1, $a3, $t1
    /* 20C3C 0011FCBC 2A104300 */  slt        $v0, $v0, $v1
    /* 20C40 0011FCC0 23200300 */  negu       $a0, $v1
    /* 20C44 0011FCC4 0A188200 */  movz       $v1, $a0, $v0
    /* 20C48 0011FCC8 40006328 */  slti       $v1, $v1, 0x40
    /* 20C4C 0011FCCC 1D006010 */  beqz       $v1, .L0011FD44
    /* 20C50 0011FCD0 1000AADC */   ld        $t2, 0x10($a1)
    /* 20C54 0011FCD4 2A102701 */  slt        $v0, $t1, $a3
    /* 20C58 0011FCD8 0C004010 */  beqz       $v0, .L0011FD0C
    /* 20C5C 0011FCDC 0400088D */   lw        $t0, 0x4($t0)
    /* 20C60 0011FCE0 0400A58C */  lw         $a1, 0x4($a1)
    /* 20C64 0011FCE4 00000000 */  nop
.align 2
  .L0011FCE8:
    /* 20C68 0011FCE8 7A100A00 */  dsrl       $v0, $t2, 1
    /* 20C6C 0011FCEC 01002925 */  addiu      $t1, $t1, 0x1
    /* 20C70 0011FCF0 01004331 */  andi       $v1, $t2, 0x1
    /* 20C74 0011FCF4 2A202701 */  slt        $a0, $t1, $a3
    /* 20C78 0011FCF8 25506200 */  or         $t2, $v1, $v0
    /* 20C7C 0011FCFC FAFF8014 */  bnez       $a0, .L0011FCE8
    /* 20C80 0011FD00 00000000 */   nop
    /* 20C84 0011FD04 03000010 */  b          .L0011FD14
    /* 20C88 0011FD08 2A10E900 */   slt       $v0, $a3, $t1
.align 2
  .L0011FD0C:
    /* 20C8C 0011FD0C 0400A58C */  lw         $a1, 0x4($a1)
    /* 20C90 0011FD10 2A10E900 */  slt        $v0, $a3, $t1
.align 2
  .L0011FD14:
    /* 20C94 0011FD14 14004010 */  beqz       $v0, .L0011FD68
    /* 20C98 0011FD18 00000000 */   nop
    /* 20C9C 0011FD1C 23382701 */  subu       $a3, $t1, $a3
.align 2
  .L0011FD20:
    /* 20CA0 0011FD20 7A180B00 */  dsrl       $v1, $t3, 1
    /* 20CA4 0011FD24 01006231 */  andi       $v0, $t3, 0x1
    /* 20CA8 0011FD28 25584300 */  or         $t3, $v0, $v1
    /* 20CAC 0011FD2C FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 20CB0 0011FD30 00000000 */  nop
    /* 20CB4 0011FD34 FAFFE014 */  bnez       $a3, .L0011FD20
    /* 20CB8 0011FD38 00000000 */   nop
    /* 20CBC 0011FD3C 0A000010 */  b          .L0011FD68
    /* 20CC0 0011FD40 2D382001 */   daddu     $a3, $t1, $zero
.align 2
  .L0011FD44:
    /* 20CC4 0011FD44 2A102701 */  slt        $v0, $t1, $a3
    /* 20CC8 0011FD48 04004010 */  beqz       $v0, .L0011FD5C
    /* 20CCC 0011FD4C 0400088D */   lw        $t0, 0x4($t0)
    /* 20CD0 0011FD50 2D500000 */  daddu      $t2, $zero, $zero
    /* 20CD4 0011FD54 04000010 */  b          .L0011FD68
    /* 20CD8 0011FD58 0400A58C */   lw        $a1, 0x4($a1)
.align 2
  .L0011FD5C:
    /* 20CDC 0011FD5C 2D382001 */  daddu      $a3, $t1, $zero
    /* 20CE0 0011FD60 0400A58C */  lw         $a1, 0x4($a1)
    /* 20CE4 0011FD64 2D580000 */  daddu      $t3, $zero, $zero
.align 2
  .L0011FD68:
    /* 20CE8 0011FD68 24000511 */  beq        $t0, $a1, .L0011FDFC
    /* 20CEC 0011FD6C 2D106A01 */   daddu     $v0, $t3, $t2
    /* 20CF0 0011FD70 02000015 */  bnez       $t0, .L0011FD7C
    /* 20CF4 0011FD74 2F104B01 */   dsubu     $v0, $t2, $t3
    /* 20CF8 0011FD78 2F106A01 */  dsubu      $v0, $t3, $t2
.align 2
  .L0011FD7C:
    /* 20CFC 0011FD7C 05004004 */  bltz       $v0, .L0011FD94
    /* 20D00 0011FD80 2F180200 */   dsubu     $v1, $zero, $v0
    /* 20D04 0011FD84 0800C7AC */  sw         $a3, 0x8($a2)
    /* 20D08 0011FD88 1000C2FC */  sd         $v0, 0x10($a2)
    /* 20D0C 0011FD8C 05000010 */  b          .L0011FDA4
    /* 20D10 0011FD90 0400C0AC */   sw        $zero, 0x4($a2)
.align 2
  .L0011FD94:
    /* 20D14 0011FD94 0800C7AC */  sw         $a3, 0x8($a2)
    /* 20D18 0011FD98 01000224 */  addiu      $v0, $zero, 0x1
    /* 20D1C 0011FD9C 1000C3FC */  sd         $v1, 0x10($a2)
    /* 20D20 0011FDA0 0400C2AC */  sw         $v0, 0x4($a2)
.align 2
  .L0011FDA4:
    /* 20D24 0011FDA4 1000C5DC */  ld         $a1, 0x10($a2)
    /* 20D28 0011FDA8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 20D2C 0011FDAC 78110200 */  dsll       $v0, $v0, 5
    /* 20D30 0011FDB0 3A110200 */  dsrl       $v0, $v0, 4
    /* 20D34 0011FDB4 FFFFA364 */  daddiu     $v1, $a1, -0x1
    /* 20D38 0011FDB8 2B104300 */  sltu       $v0, $v0, $v1
    /* 20D3C 0011FDBC 13004014 */  bnez       $v0, .L0011FE0C
    /* 20D40 0011FDC0 2D38A000 */   daddu     $a3, $a1, $zero
    /* 20D44 0011FDC4 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 20D48 0011FDC8 78290500 */  dsll       $a1, $a1, 5
    /* 20D4C 0011FDCC 3A290500 */  dsrl       $a1, $a1, 4
.align 2
  .L0011FDD0:
    /* 20D50 0011FDD0 0800C28C */  lw         $v0, 0x8($a2)
    /* 20D54 0011FDD4 78200700 */  dsll       $a0, $a3, 1
    /* 20D58 0011FDD8 FFFF8364 */  daddiu     $v1, $a0, -0x1
    /* 20D5C 0011FDDC 1000C4FC */  sd         $a0, 0x10($a2)
    /* 20D60 0011FDE0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 20D64 0011FDE4 2B18A300 */  sltu       $v1, $a1, $v1
    /* 20D68 0011FDE8 0800C2AC */  sw         $v0, 0x8($a2)
    /* 20D6C 0011FDEC F8FF6010 */  beqz       $v1, .L0011FDD0
    /* 20D70 0011FDF0 2D388000 */   daddu     $a3, $a0, $zero
    /* 20D74 0011FDF4 05000010 */  b          .L0011FE0C
    /* 20D78 0011FDF8 2D288000 */   daddu     $a1, $a0, $zero
.align 2
  .L0011FDFC:
    /* 20D7C 0011FDFC 0400C8AC */  sw         $t0, 0x4($a2)
    /* 20D80 0011FE00 0800C7AC */  sw         $a3, 0x8($a2)
    /* 20D84 0011FE04 2D284000 */  daddu      $a1, $v0, $zero
    /* 20D88 0011FE08 1000C2FC */  sd         $v0, 0x10($a2)
.align 2
  .L0011FE0C:
    /* 20D8C 0011FE0C 03000324 */  addiu      $v1, $zero, 0x3
    /* 20D90 0011FE10 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 20D94 0011FE14 FA100200 */  dsrl       $v0, $v0, 3
    /* 20D98 0011FE18 2B104500 */  sltu       $v0, $v0, $a1
    /* 20D9C 0011FE1C 08004010 */  beqz       $v0, .L0011FE40
    /* 20DA0 0011FE20 0000C3AC */   sw        $v1, 0x0($a2)
    /* 20DA4 0011FE24 0800C28C */  lw         $v0, 0x8($a2)
    /* 20DA8 0011FE28 7A200500 */  dsrl       $a0, $a1, 1
    /* 20DAC 0011FE2C 0100A330 */  andi       $v1, $a1, 0x1
    /* 20DB0 0011FE30 25186400 */  or         $v1, $v1, $a0
    /* 20DB4 0011FE34 01004224 */  addiu      $v0, $v0, 0x1
    /* 20DB8 0011FE38 1000C3FC */  sd         $v1, 0x10($a2)
    /* 20DBC 0011FE3C 0800C2AC */  sw         $v0, 0x8($a2)
.align 2
  .L0011FE40:
    /* 20DC0 0011FE40 0800E003 */  jr         $ra
    /* 20DC4 0011FE44 2D10C000 */   daddu     $v0, $a2, $zero
endlabel func_0011FC08
