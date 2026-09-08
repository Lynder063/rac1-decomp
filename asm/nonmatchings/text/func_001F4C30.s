.align 3
nonmatching func_001F4C30, 0x1D8

glabel func_001F4C30
    /* F5BB0 001F4C30 F0FEBD27 */  addiu      $sp, $sp, -0x110
    /* F5BB4 001F4C34 2D200000 */  daddu      $a0, $zero, $zero
    /* F5BB8 001F4C38 0001BF7F */  sq         $ra, 0x100($sp)
    /* F5BBC 001F4C3C F000B57F */  sq         $s5, 0xF0($sp)
    /* F5BC0 001F4C40 E000B47F */  sq         $s4, 0xE0($sp)
    /* F5BC4 001F4C44 D000B37F */  sq         $s3, 0xD0($sp)
    /* F5BC8 001F4C48 C000B27F */  sq         $s2, 0xC0($sp)
    /* F5BCC 001F4C4C B000B17F */  sq         $s1, 0xB0($sp)
    /* F5BD0 001F4C50 1AD2070C */  jal        func_001F4868
    /* F5BD4 001F4C54 A000B07F */   sq        $s0, 0xA0($sp)
    /* F5BD8 001F4C58 90FF0334 */  ori        $v1, $zero, 0xFF90
    /* F5BDC 001F4C5C 3C180300 */  dsll32     $v1, $v1, 0
    /* F5BE0 001F4C60 60026334 */  ori        $v1, $v1, 0x260
    /* F5BE4 001F4C64 05000424 */  addiu      $a0, $zero, 0x5
    /* F5BE8 001F4C68 00800534 */  ori        $a1, $zero, 0x8000
    /* F5BEC 001F4C6C 382E0500 */  dsll       $a1, $a1, 24
    /* F5BF0 001F4C70 4400A534 */  ori        $a1, $a1, 0x44
    /* F5BF4 001F4C74 7800A2FF */  sd         $v0, 0x78($sp)
    /* F5BF8 001F4C78 8000A3FF */  sd         $v1, 0x80($sp)
    /* F5BFC 001F4C7C 1900023C */  lui        $v0, %hi(D_0018CBA0)
    /* F5C00 001F4C80 7000A4FF */  sd         $a0, 0x70($sp)
    /* F5C04 001F4C84 8040073C */  lui        $a3, (0x40808080 >> 16)
    /* F5C08 001F4C88 8800A5FF */  sd         $a1, 0x88($sp)
    /* F5C0C 001F4C8C A0CB4224 */  addiu      $v0, $v0, %lo(D_0018CBA0)
    /* F5C10 001F4C90 8080E734 */  ori        $a3, $a3, (0x40808080 & 0xFFFF)
    /* F5C14 001F4C94 4000A527 */  addiu      $a1, $sp, 0x40
    /* F5C18 001F4C98 5400A427 */  addiu      $a0, $sp, 0x54
    /* F5C1C 001F4C9C 5000A327 */  addiu      $v1, $sp, 0x50
    /* F5C20 001F4CA0 03000624 */  addiu      $a2, $zero, 0x3
    /* F5C24 001F4CA4 00000000 */  nop
.align 2
  .L001F4CA8:
    /* F5C28 001F4CA8 080040C4 */  lwc1       $f0, 0x8($v0)
    /* F5C2C 001F4CAC FFFFC624 */  addiu      $a2, $a2, -0x1
    /* F5C30 001F4CB0 0C0041C4 */  lwc1       $f1, 0xC($v0)
    /* F5C34 001F4CB4 000060E4 */  swc1       $f0, 0x0($v1)
    /* F5C38 001F4CB8 10004224 */  addiu      $v0, $v0, 0x10
    /* F5C3C 001F4CBC 000081E4 */  swc1       $f1, 0x0($a0)
    /* F5C40 001F4CC0 08006324 */  addiu      $v1, $v1, 0x8
    /* F5C44 001F4CC4 0000A7AC */  sw         $a3, 0x0($a1)
    /* F5C48 001F4CC8 08008424 */  addiu      $a0, $a0, 0x8
    /* F5C4C 001F4CCC F6FFC104 */  bgez       $a2, .L001F4CA8
    /* F5C50 001F4CD0 0400A524 */   addiu     $a1, $a1, 0x4
    /* F5C54 001F4CD4 1600023C */  lui        $v0, %hi(D_0015F574)
    /* F5C58 001F4CD8 74F5428C */  lw         $v0, %lo(D_0015F574)($v0)
    /* F5C5C 001F4CDC 41004018 */  blez       $v0, .L001F4DE4
    /* F5C60 001F4CE0 2D880000 */   daddu     $s1, $zero, $zero
    /* F5C64 001F4CE4 1900023C */  lui        $v0, %hi(D_0018E450)
    /* F5C68 001F4CE8 1900033C */  lui        $v1, %hi(D_0018CBA0)
    /* F5C6C 001F4CEC 50E45324 */  addiu      $s3, $v0, %lo(D_0018E450)
    /* F5C70 001F4CF0 A0CB7524 */  addiu      $s5, $v1, %lo(D_0018CBA0)
    /* F5C74 001F4CF4 F0FF7426 */  addiu      $s4, $s3, -0x10
    /* F5C78 001F4CF8 9000B227 */  addiu      $s2, $sp, 0x90
    /* F5C7C 001F4CFC 40811100 */  sll        $s0, $s1, 5
.align 2
  .L001F4D00:
    /* F5C80 001F4D00 21181302 */  addu       $v1, $s0, $s3
    /* F5C84 001F4D04 00006278 */  lq         $v0, 0x0($v1)
    /* F5C88 001F4D08 0000427E */  sq         $v0, 0x0($s2)
    /* F5C8C 001F4D0C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* F5C90 001F4D10 00608144 */  mtc1       $at, $f12
    /* F5C94 001F4D14 2D204002 */  daddu      $a0, $s2, $zero
    /* F5C98 001F4D18 2D284002 */  daddu      $a1, $s2, $zero
    /* F5C9C 001F4D1C 70E7070C */  jal        func_001F9DC0
    /* F5CA0 001F4D20 01003126 */   addiu     $s1, $s1, 0x1
    /* F5CA4 001F4D24 21801402 */  addu       $s0, $s0, $s4
    /* F5CA8 001F4D28 2D18A003 */  daddu      $v1, $sp, $zero
    /* F5CAC 001F4D2C 0C0008C6 */  lwc1       $f8, 0xC($s0)
    /* F5CB0 001F4D30 2D300002 */  daddu      $a2, $s0, $zero
    /* F5CB4 001F4D34 2D20A002 */  daddu      $a0, $s5, $zero
    /* F5CB8 001F4D38 03000524 */  addiu      $a1, $zero, 0x3
    /* F5CBC 001F4D3C 00000000 */  nop
.align 2
  .L001F4D40:
    /* F5CC0 001F4D40 000081C4 */  lwc1       $f1, 0x0($a0)
    /* F5CC4 001F4D44 9000A4C7 */  lwc1       $f4, 0x90($sp)
    /* F5CC8 001F4D48 040082C4 */  lwc1       $f2, 0x4($a0)
    /* F5CCC 001F4D4C 9400A0C7 */  lwc1       $f0, 0x94($sp)
    /* F5CD0 001F4D50 42090446 */  mul.s      $f5, $f1, $f4
    /* F5CD4 001F4D54 02100046 */  mul.s      $f0, $f2, $f0
    /* F5CD8 001F4D58 40290046 */  add.s      $f5, $f5, $f0
    /* F5CDC 001F4D5C 0000C278 */  lq         $v0, 0x0($a2)
    /* F5CE0 001F4D60 0000627C */  sq         $v0, 0x0($v1)
    /* F5CE4 001F4D64 000063C4 */  lwc1       $f3, 0x0($v1)
    /* F5CE8 001F4D68 10008424 */  addiu      $a0, $a0, 0x10
    /* F5CEC 001F4D6C 02210546 */  mul.s      $f4, $f4, $f5
    /* F5CF0 001F4D70 040066C4 */  lwc1       $f6, 0x4($v1)
    /* F5CF4 001F4D74 080067C4 */  lwc1       $f7, 0x8($v1)
    /* F5CF8 001F4D78 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* F5CFC 001F4D7C 41080446 */  sub.s      $f1, $f1, $f4
    /* F5D00 001F4D80 42080846 */  mul.s      $f1, $f1, $f8
    /* F5D04 001F4D84 C0180146 */  add.s      $f3, $f3, $f1
    /* F5D08 001F4D88 000063E4 */  swc1       $f3, 0x0($v1)
    /* F5D0C 001F4D8C 9400A0C7 */  lwc1       $f0, 0x94($sp)
    /* F5D10 001F4D90 02000546 */  mul.s      $f0, $f0, $f5
    /* F5D14 001F4D94 81100046 */  sub.s      $f2, $f2, $f0
    /* F5D18 001F4D98 82100846 */  mul.s      $f2, $f2, $f8
    /* F5D1C 001F4D9C 80310246 */  add.s      $f6, $f6, $f2
    /* F5D20 001F4DA0 040066E4 */  swc1       $f6, 0x4($v1)
    /* F5D24 001F4DA4 9800A0C7 */  lwc1       $f0, 0x98($sp)
    /* F5D28 001F4DA8 02000546 */  mul.s      $f0, $f0, $f5
    /* F5D2C 001F4DAC 02000846 */  mul.s      $f0, $f0, $f8
    /* F5D30 001F4DB0 C1390046 */  sub.s      $f7, $f7, $f0
    /* F5D34 001F4DB4 080067E4 */  swc1       $f7, 0x8($v1)
    /* F5D38 001F4DB8 E1FFA104 */  bgez       $a1, .L001F4D40
    /* F5D3C 001F4DBC 10006324 */   addiu     $v1, $v1, 0x10
    /* F5D40 001F4DC0 2D20A003 */  daddu      $a0, $sp, $zero
    /* F5D44 001F4DC4 2D280000 */  daddu      $a1, $zero, $zero
    /* F5D48 001F4DC8 BEDF070C */  jal        func_001F7EF8
    /* F5D4C 001F4DCC 2D300000 */   daddu     $a2, $zero, $zero
    /* F5D50 001F4DD0 1600023C */  lui        $v0, %hi(D_0015F574)
    /* F5D54 001F4DD4 74F5428C */  lw         $v0, %lo(D_0015F574)($v0)
    /* F5D58 001F4DD8 2A102202 */  slt        $v0, $s1, $v0
    /* F5D5C 001F4DDC C8FF4014 */  bnez       $v0, .L001F4D00
    /* F5D60 001F4DE0 40811100 */   sll       $s0, $s1, 5
.align 2
  .L001F4DE4:
    /* F5D64 001F4DE4 0001BF7B */  lq         $ra, 0x100($sp)
    /* F5D68 001F4DE8 F000B57B */  lq         $s5, 0xF0($sp)
    /* F5D6C 001F4DEC E000B47B */  lq         $s4, 0xE0($sp)
    /* F5D70 001F4DF0 D000B37B */  lq         $s3, 0xD0($sp)
    /* F5D74 001F4DF4 C000B27B */  lq         $s2, 0xC0($sp)
    /* F5D78 001F4DF8 B000B17B */  lq         $s1, 0xB0($sp)
    /* F5D7C 001F4DFC A000B07B */  lq         $s0, 0xA0($sp)
    /* F5D80 001F4E00 0800E003 */  jr         $ra
    /* F5D84 001F4E04 1001BD27 */   addiu     $sp, $sp, 0x110
endlabel func_001F4C30
