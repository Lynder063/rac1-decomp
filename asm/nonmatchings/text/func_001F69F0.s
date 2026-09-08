.align 3
nonmatching func_001F69F0, 0x2EC

glabel func_001F69F0
    /* F7970 001F69F0 30FFBD27 */  addiu      $sp, $sp, -0xD0
    /* F7974 001F69F4 1600023C */  lui        $v0, %hi(D_0015F5A0)
    /* F7978 001F69F8 A0F5428C */  lw         $v0, %lo(D_0015F5A0)($v0)
    /* F797C 001F69FC 6000B67F */  sq         $s6, 0x60($sp)
    /* F7980 001F6A00 4000B47F */  sq         $s4, 0x40($sp)
    /* F7984 001F6A04 2DB0C000 */  daddu      $s6, $a2, $zero
    /* F7988 001F6A08 3000B37F */  sq         $s3, 0x30($sp)
    /* F798C 001F6A0C 2DA0E000 */  daddu      $s4, $a3, $zero
    /* F7990 001F6A10 2000B27F */  sq         $s2, 0x20($sp)
    /* F7994 001F6A14 2D980001 */  daddu      $s3, $t0, $zero
    /* F7998 001F6A18 C800B9E7 */  swc1       $f25, 0xC8($sp)
    /* F799C 001F6A1C 2D908000 */  daddu      $s2, $a0, $zero
    /* F79A0 001F6A20 B000B6E7 */  swc1       $f22, 0xB0($sp)
    /* F79A4 001F6A24 466E0046 */  mov.s      $f25, $f13
    /* F79A8 001F6A28 A800B5E7 */  swc1       $f21, 0xA8($sp)
    /* F79AC 001F6A2C 86650046 */  mov.s      $f22, $f12
    /* F79B0 001F6A30 9000BF7F */  sq         $ra, 0x90($sp)
    /* F79B4 001F6A34 46750046 */  mov.s      $f21, $f14
    /* F79B8 001F6A38 8000BE7F */  sq         $fp, 0x80($sp)
    /* F79BC 001F6A3C 7000B77F */  sq         $s7, 0x70($sp)
    /* F79C0 001F6A40 5000B57F */  sq         $s5, 0x50($sp)
    /* F79C4 001F6A44 1000B17F */  sq         $s1, 0x10($sp)
    /* F79C8 001F6A48 0000B07F */  sq         $s0, 0x0($sp)
    /* F79CC 001F6A4C C000B8E7 */  swc1       $f24, 0xC0($sp)
    /* F79D0 001F6A50 B800B7E7 */  swc1       $f23, 0xB8($sp)
    /* F79D4 001F6A54 05004014 */  bnez       $v0, .L001F6A6C
    /* F79D8 001F6A58 A000B4E7 */   swc1      $f20, 0xA0($sp)
    /* F79DC 001F6A5C 1900033C */  lui        $v1, %hi(D_0018CBF8)
    /* F79E0 001F6A60 3C101200 */  dsll32     $v0, $s2, 0
    /* F79E4 001F6A64 3F100200 */  dsra32     $v0, $v0, 0
    /* F79E8 001F6A68 F8CB62AC */  sw         $v0, %lo(D_0018CBF8)($v1)
.align 2
  .L001F6A6C:
    /* F79EC 001F6A6C 8041013C */  lui        $at, (0x41800000 >> 16)
    /* F79F0 001F6A70 00008144 */  mtc1       $at, $f0
    /* F79F4 001F6A74 2DB80000 */  daddu      $s7, $zero, $zero
    /* F79F8 001F6A78 8600C012 */  beqz       $s6, .L001F6C94
    /* F79FC 001F6A7C 02AE0046 */   mul.s     $f24, $f21, $f0
    /* F7A00 001F6A80 0000A290 */  lbu        $v0, 0x0($a1)
    /* F7A04 001F6A84 83004010 */  beqz       $v0, .L001F6C94
    /* F7A08 001F6A88 2D88A000 */   daddu     $s1, $a1, $zero
    /* F7A0C 001F6A8C 00FF1E34 */  ori        $fp, $zero, 0xFF00
    /* F7A10 001F6A90 38F41E00 */  dsll       $fp, $fp, 16
    /* F7A14 001F6A94 03001524 */  addiu      $s5, $zero, 0x3
    /* F7A18 001F6A98 00002292 */  lbu        $v0, 0x0($s1)
    /* F7A1C 001F6A9C 00000000 */  nop
.align 2
  .L001F6AA0:
    /* F7A20 001F6AA0 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* F7A24 001F6AA4 0800422C */  sltiu      $v0, $v0, 0x8
    /* F7A28 001F6AA8 0F004010 */  beqz       $v0, .L001F6AE8
    /* F7A2C 001F6AAC 9C88828F */   lw        $v0, -0x7764($gp)
    /* F7A30 001F6AB0 72004010 */  beqz       $v0, .L001F6C7C
    /* F7A34 001F6AB4 1900033C */   lui       $v1, %hi(D_0018CBF8)
    /* F7A38 001F6AB8 00002292 */  lbu        $v0, 0x0($s1)
    /* F7A3C 001F6ABC F8CB6324 */  addiu      $v1, $v1, %lo(D_0018CBF8)
    /* F7A40 001F6AC0 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* F7A44 001F6AC4 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* F7A48 001F6AC8 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* F7A4C 001F6ACC 80100200 */  sll        $v0, $v0, 2
    /* F7A50 001F6AD0 24905E02 */  and        $s2, $s2, $fp
    /* F7A54 001F6AD4 21104300 */  addu       $v0, $v0, $v1
    /* F7A58 001F6AD8 0000438C */  lw         $v1, 0x0($v0)
    /* F7A5C 001F6ADC 24186400 */  and        $v1, $v1, $a0
    /* F7A60 001F6AE0 66000010 */  b          .L001F6C7C
    /* F7A64 001F6AE4 25904302 */   or        $s2, $s2, $v1
.align 2
  .L001F6AE8:
    /* F7A68 001F6AE8 00002292 */  lbu        $v0, 0x0($s1)
    /* F7A6C 001F6AEC 80100200 */  sll        $v0, $v0, 2
    /* F7A70 001F6AF0 21105300 */  addu       $v0, $v0, $s3
    /* F7A74 001F6AF4 03004380 */  lb         $v1, 0x3($v0)
    /* F7A78 001F6AF8 61006050 */  beql       $v1, $zero, .L001F6C80
    /* F7A7C 001F6AFC 0100F726 */   addiu     $s7, $s7, 0x1
    /* F7A80 001F6B00 22EA070C */  jal        func_001FA888
    /* F7A84 001F6B04 02004480 */   lb        $a0, 0x2($v0)
    /* F7A88 001F6B08 00002292 */  lbu        $v0, 0x0($s1)
    /* F7A8C 001F6B0C 80004224 */  addiu      $v0, $v0, 0x80
    /* F7A90 001F6B10 FF004230 */  andi       $v0, $v0, 0xFF
    /* F7A94 001F6B14 2800422C */  sltiu      $v0, $v0, 0x28
    /* F7A98 001F6B18 16004010 */  beqz       $v0, .L001F6B74
    /* F7A9C 001F6B1C C2051546 */   mul.s     $f23, $f0, $f21
    /* F7AA0 001F6B20 00003092 */  lbu        $s0, 0x0($s1)
    /* F7AA4 001F6B24 40001026 */  addiu      $s0, $s0, 0x40
    /* F7AA8 001F6B28 80801000 */  sll        $s0, $s0, 2
    /* F7AAC 001F6B2C 21801302 */  addu       $s0, $s0, $s3
    /* F7AB0 001F6B30 22EA070C */  jal        func_001FA888
    /* F7AB4 001F6B34 03000482 */   lb        $a0, 0x3($s0)
    /* F7AB8 001F6B38 02000482 */  lb         $a0, 0x2($s0)
    /* F7ABC 001F6B3C 22EA070C */  jal        func_001FA888
    /* F7AC0 001F6B40 02051546 */   mul.s     $f20, $f0, $f21
    /* F7AC4 001F6B44 02001546 */  mul.s      $f0, $f0, $f21
    /* F7AC8 001F6B48 01000592 */  lbu        $a1, 0x1($s0)
    /* F7ACC 001F6B4C 00B31446 */  add.s      $f12, $f22, $f20
    /* F7AD0 001F6B50 00000492 */  lbu        $a0, 0x0($s0)
    /* F7AD4 001F6B54 86C30046 */  mov.s      $f14, $f24
    /* F7AD8 001F6B58 C6C30046 */  mov.s      $f15, $f24
    /* F7ADC 001F6B5C 40CB0046 */  add.s      $f13, $f25, $f0
    /* F7AE0 001F6B60 10000624 */  addiu      $a2, $zero, 0x10
    /* F7AE4 001F6B64 10000724 */  addiu      $a3, $zero, 0x10
    /* F7AE8 001F6B68 2D404002 */  daddu      $t0, $s2, $zero
    /* F7AEC 001F6B6C EED6070C */  jal        func_001F5BB8
    /* F7AF0 001F6B70 2D488002 */   daddu     $t1, $s4, $zero
.align 2
  .L001F6B74:
    /* F7AF4 001F6B74 00002392 */  lbu        $v1, 0x0($s1)
    /* F7AF8 001F6B78 2000622C */  sltiu      $v0, $v1, 0x20
    /* F7AFC 001F6B7C 28004010 */  beqz       $v0, .L001F6C20
    /* F7B00 001F6B80 FF004832 */   andi      $t0, $s2, 0xFF
    /* F7B04 001F6B84 3A1A1200 */  dsrl       $v1, $s2, 8
    /* F7B08 001F6B88 FF006330 */  andi       $v1, $v1, 0xFF
    /* F7B0C 001F6B8C 3A141200 */  dsrl       $v0, $s2, 16
    /* F7B10 001F6B90 2D400301 */  daddu      $t0, $t0, $v1
    /* F7B14 001F6B94 FF004230 */  andi       $v0, $v0, 0xFF
    /* F7B18 001F6B98 2D400201 */  daddu      $t0, $t0, $v0
    /* F7B1C 001F6B9C 0100A052 */  beql       $s5, $zero, .L001F6BA4
    /* F7B20 001F6BA0 CD010000 */   break     0, 7
.align 2
  .L001F6BA4:
    /* F7B24 001F6BA4 3C400800 */  dsll32     $t0, $t0, 0
    /* F7B28 001F6BA8 3F400800 */  dsra32     $t0, $t0, 0
    /* F7B2C 001F6BAC 00002292 */  lbu        $v0, 0x0($s1)
    /* F7B30 001F6BB0 1A001501 */  div        $zero, $t0, $s5
    /* F7B34 001F6BB4 24505E02 */  and        $t2, $s2, $fp
    /* F7B38 001F6BB8 80100200 */  sll        $v0, $v0, 2
    /* F7B3C 001F6BBC C041013C */  lui        $at, (0x41C00000 >> 16)
    /* F7B40 001F6BC0 00708144 */  mtc1       $at, $f14
    /* F7B44 001F6BC4 21105300 */  addu       $v0, $v0, $s3
    /* F7B48 001F6BC8 8041013C */  lui        $at, (0x41800000 >> 16)
    /* F7B4C 001F6BCC 00788144 */  mtc1       $at, $f15
    /* F7B50 001F6BD0 01004590 */  lbu        $a1, 0x1($v0)
    /* F7B54 001F6BD4 3C500A00 */  dsll32     $t2, $t2, 0
    /* F7B58 001F6BD8 3F500A00 */  dsra32     $t2, $t2, 0
    /* F7B5C 001F6BDC 00004490 */  lbu        $a0, 0x0($v0)
    /* F7B60 001F6BE0 40CB1746 */  add.s      $f13, $f25, $f23
    /* F7B64 001F6BE4 82AB0E46 */  mul.s      $f14, $f21, $f14
    /* F7B68 001F6BE8 06B30046 */  mov.s      $f12, $f22
    /* F7B6C 001F6BEC C2AB0F46 */  mul.s      $f15, $f21, $f15
    /* F7B70 001F6BF0 18000624 */  addiu      $a2, $zero, 0x18
    /* F7B74 001F6BF4 10000724 */  addiu      $a3, $zero, 0x10
    /* F7B78 001F6BF8 2D488002 */  daddu      $t1, $s4, $zero
    /* F7B7C 001F6BFC 12400000 */  mflo       $t0
    /* F7B80 001F6C00 00140800 */  sll        $v0, $t0, 16
    /* F7B84 001F6C04 001A0800 */  sll        $v1, $t0, 8
    /* F7B88 001F6C08 21504201 */  addu       $t2, $t2, $v0
    /* F7B8C 001F6C0C 21504301 */  addu       $t2, $t2, $v1
    /* F7B90 001F6C10 EED6070C */  jal        func_001F5BB8
    /* F7B94 001F6C14 21400A01 */   addu      $t0, $t0, $t2
    /* F7B98 001F6C18 12000010 */  b          .L001F6C64
    /* F7B9C 001F6C1C 00002292 */   lbu       $v0, 0x0($s1)
.align 2
  .L001F6C20:
    /* F7BA0 001F6C20 2100622C */  sltiu      $v0, $v1, 0x21
    /* F7BA4 001F6C24 0F004014 */  bnez       $v0, .L001F6C64
    /* F7BA8 001F6C28 00002292 */   lbu       $v0, 0x0($s1)
    /* F7BAC 001F6C2C 40CB1746 */  add.s      $f13, $f25, $f23
    /* F7BB0 001F6C30 06B30046 */  mov.s      $f12, $f22
    /* F7BB4 001F6C34 86C30046 */  mov.s      $f14, $f24
    /* F7BB8 001F6C38 80100200 */  sll        $v0, $v0, 2
    /* F7BBC 001F6C3C C6C30046 */  mov.s      $f15, $f24
    /* F7BC0 001F6C40 21105300 */  addu       $v0, $v0, $s3
    /* F7BC4 001F6C44 10000624 */  addiu      $a2, $zero, 0x10
    /* F7BC8 001F6C48 01004590 */  lbu        $a1, 0x1($v0)
    /* F7BCC 001F6C4C 10000724 */  addiu      $a3, $zero, 0x10
    /* F7BD0 001F6C50 00004490 */  lbu        $a0, 0x0($v0)
    /* F7BD4 001F6C54 2D404002 */  daddu      $t0, $s2, $zero
    /* F7BD8 001F6C58 EED6070C */  jal        func_001F5BB8
    /* F7BDC 001F6C5C 2D488002 */   daddu     $t1, $s4, $zero
    /* F7BE0 001F6C60 00002292 */  lbu        $v0, 0x0($s1)
.align 2
  .L001F6C64:
    /* F7BE4 001F6C64 80100200 */  sll        $v0, $v0, 2
    /* F7BE8 001F6C68 21105300 */  addu       $v0, $v0, $s3
    /* F7BEC 001F6C6C 22EA070C */  jal        func_001FA888
    /* F7BF0 001F6C70 03004480 */   lb        $a0, 0x3($v0)
    /* F7BF4 001F6C74 02001546 */  mul.s      $f0, $f0, $f21
    /* F7BF8 001F6C78 80B50046 */  add.s      $f22, $f22, $f0
.align 2
  .L001F6C7C:
    /* F7BFC 001F6C7C 0100F726 */  addiu      $s7, $s7, 0x1
.align 2
  .L001F6C80:
    /* F7C00 001F6C80 0400F612 */  beq        $s7, $s6, .L001F6C94
    /* F7C04 001F6C84 01003126 */   addiu     $s1, $s1, 0x1
    /* F7C08 001F6C88 00002292 */  lbu        $v0, 0x0($s1)
    /* F7C0C 001F6C8C 84FF4054 */  bnel       $v0, $zero, .L001F6AA0
    /* F7C10 001F6C90 00002292 */   lbu       $v0, 0x0($s1)
.align 2
  .L001F6C94:
    /* F7C14 001F6C94 9000BF7B */  lq         $ra, 0x90($sp)
    /* F7C18 001F6C98 8000BE7B */  lq         $fp, 0x80($sp)
    /* F7C1C 001F6C9C 7000B77B */  lq         $s7, 0x70($sp)
    /* F7C20 001F6CA0 6000B67B */  lq         $s6, 0x60($sp)
    /* F7C24 001F6CA4 5000B57B */  lq         $s5, 0x50($sp)
    /* F7C28 001F6CA8 4000B47B */  lq         $s4, 0x40($sp)
    /* F7C2C 001F6CAC 3000B37B */  lq         $s3, 0x30($sp)
    /* F7C30 001F6CB0 2000B27B */  lq         $s2, 0x20($sp)
    /* F7C34 001F6CB4 1000B17B */  lq         $s1, 0x10($sp)
    /* F7C38 001F6CB8 0000B07B */  lq         $s0, 0x0($sp)
    /* F7C3C 001F6CBC C800B9C7 */  lwc1       $f25, 0xC8($sp)
    /* F7C40 001F6CC0 C000B8C7 */  lwc1       $f24, 0xC0($sp)
    /* F7C44 001F6CC4 B800B7C7 */  lwc1       $f23, 0xB8($sp)
    /* F7C48 001F6CC8 B000B6C7 */  lwc1       $f22, 0xB0($sp)
    /* F7C4C 001F6CCC A800B5C7 */  lwc1       $f21, 0xA8($sp)
    /* F7C50 001F6CD0 A000B4C7 */  lwc1       $f20, 0xA0($sp)
    /* F7C54 001F6CD4 0800E003 */  jr         $ra
    /* F7C58 001F6CD8 D000BD27 */   addiu     $sp, $sp, 0xD0
endlabel func_001F69F0
    /* F7C5C 001F6CDC 00000000 */  nop
