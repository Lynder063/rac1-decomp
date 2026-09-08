.align 3
nonmatching func_00205AA8, 0x160

glabel func_00205AA8
    /* 106A28 00205AA8 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 106A2C 00205AAC 1A00023C */  lui        $v0, %hi(D_001A01F0)
    /* 106A30 00205AB0 7000B77F */  sq         $s7, 0x70($sp)
    /* 106A34 00205AB4 5000B57F */  sq         $s5, 0x50($sp)
    /* 106A38 00205AB8 2DB84000 */  daddu      $s7, $v0, $zero
    /* 106A3C 00205ABC 3000B37F */  sq         $s3, 0x30($sp)
    /* 106A40 00205AC0 F0014224 */  addiu      $v0, $v0, %lo(D_001A01F0)
    /* 106A44 00205AC4 8000BF7F */  sq         $ra, 0x80($sp)
    /* 106A48 00205AC8 2DA80000 */  daddu      $s5, $zero, $zero
    /* 106A4C 00205ACC 6000B67F */  sq         $s6, 0x60($sp)
    /* 106A50 00205AD0 4000B47F */  sq         $s4, 0x40($sp)
    /* 106A54 00205AD4 2000B27F */  sq         $s2, 0x20($sp)
    /* 106A58 00205AD8 1000B17F */  sq         $s1, 0x10($sp)
    /* 106A5C 00205ADC 0000B07F */  sq         $s0, 0x0($sp)
    /* 106A60 00205AE0 2402438C */  lw         $v1, 0x224($v0)
    /* 106A64 00205AE4 12006014 */  bnez       $v1, .L00205B30
    /* 106A68 00205AE8 FFFF1324 */   addiu     $s3, $zero, -0x1
    /* 106A6C 00205AEC 2D284000 */  daddu      $a1, $v0, $zero
    /* 106A70 00205AF0 04000424 */  addiu      $a0, $zero, 0x4
    /* 106A74 00205AF4 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 106A78 00205AF8 9C02A324 */  addiu      $v1, $a1, 0x29C
    /* 106A7C 00205AFC 00000000 */  nop
.align 2
  .L00205B00:
    /* 106A80 00205B00 ECFF628C */  lw         $v0, -0x14($v1)
    /* 106A84 00205B04 08004050 */  beql       $v0, $zero, .L00205B28
    /* 106A88 00205B08 FFFF8424 */   addiu     $a0, $a0, -0x1
    /* 106A8C 00205B0C A002A28C */  lw         $v0, 0x2A0($a1)
    /* 106A90 00205B10 05008250 */  beql       $a0, $v0, .L00205B28
    /* 106A94 00205B14 FFFF8424 */   addiu     $a0, $a0, -0x1
    /* 106A98 00205B18 0000628C */  lw         $v0, 0x0($v1)
    /* 106A9C 00205B1C 2F004610 */  beq        $v0, $a2, .L00205BDC
    /* 106AA0 00205B20 2D108000 */   daddu     $v0, $a0, $zero
    /* 106AA4 00205B24 FFFF8424 */  addiu      $a0, $a0, -0x1
.align 2
  .L00205B28:
    /* 106AA8 00205B28 F5FF8104 */  bgez       $a0, .L00205B00
    /* 106AAC 00205B2C FCFF6324 */   addiu     $v1, $v1, -0x4
.align 2
  .L00205B30:
    /* 106AB0 00205B30 F001F026 */  addiu      $s0, $s7, %lo(D_001A01F0)
    /* 106AB4 00205B34 9416080C */  jal        func_00205A50
    /* 106AB8 00205B38 2402048E */   lw        $a0, 0x224($s0)
    /* 106ABC 00205B3C 2D904000 */  daddu      $s2, $v0, $zero
    /* 106AC0 00205B40 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 106AC4 00205B44 03004216 */  bne        $s2, $v0, .L00205B54
    /* 106AC8 00205B48 2DA00002 */   daddu     $s4, $s0, $zero
    /* 106ACC 00205B4C 23000010 */  b          .L00205BDC
    /* 106AD0 00205B50 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00205B54:
    /* 106AD4 00205B54 FFFF1624 */  addiu      $s6, $zero, -0x1
    /* 106AD8 00205B58 2D800000 */  daddu      $s0, $zero, $zero
    /* 106ADC 00205B5C 8C029126 */  addiu      $s1, $s4, 0x28C
.align 2
  .L00205B60:
    /* 106AE0 00205B60 ECFF228E */  lw         $v0, -0x14($s1)
    /* 106AE4 00205B64 12004050 */  beql       $v0, $zero, .L00205BB0
    /* 106AE8 00205B68 01001026 */   addiu     $s0, $s0, 0x1
    /* 106AEC 00205B6C A002828E */  lw         $v0, 0x2A0($s4)
    /* 106AF0 00205B70 0F000252 */  beql       $s0, $v0, .L00205BB0
    /* 106AF4 00205B74 01001026 */   addiu     $s0, $s0, 0x1
    /* 106AF8 00205B78 0000248E */  lw         $a0, 0x0($s1)
    /* 106AFC 00205B7C 17009610 */  beq        $a0, $s6, .L00205BDC
    /* 106B00 00205B80 2D100002 */   daddu     $v0, $s0, $zero
    /* 106B04 00205B84 9416080C */  jal        func_00205A50
    /* 106B08 00205B88 FF008430 */   andi      $a0, $a0, 0xFF
    /* 106B0C 00205B8C DCE6070C */  jal        func_001F9B70
    /* 106B10 00205B90 23205200 */   subu      $a0, $v0, $s2
    /* 106B14 00205B94 2D184000 */  daddu      $v1, $v0, $zero
    /* 106B18 00205B98 2A10A302 */  slt        $v0, $s5, $v1
    /* 106B1C 00205B9C 04004050 */  beql       $v0, $zero, .L00205BB0
    /* 106B20 00205BA0 01001026 */   addiu     $s0, $s0, 0x1
    /* 106B24 00205BA4 2DA86000 */  daddu      $s5, $v1, $zero
    /* 106B28 00205BA8 2D980002 */  daddu      $s3, $s0, $zero
    /* 106B2C 00205BAC 01001026 */  addiu      $s0, $s0, 0x1
.align 2
  .L00205BB0:
    /* 106B30 00205BB0 0500022A */  slti       $v0, $s0, 0x5
    /* 106B34 00205BB4 EAFF4014 */  bnez       $v0, .L00205B60
    /* 106B38 00205BB8 04003126 */   addiu     $s1, $s1, 0x4
    /* 106B3C 00205BBC 27101300 */  nor        $v0, $zero, $s3
    /* 106B40 00205BC0 F001E326 */  addiu      $v1, $s7, %lo(D_001A01F0)
    /* 106B44 00205BC4 0A980200 */  movz       $s3, $zero, $v0
    /* 106B48 00205BC8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 106B4C 00205BCC 80201300 */  sll        $a0, $s3, 2
    /* 106B50 00205BD0 2D106002 */  daddu      $v0, $s3, $zero
    /* 106B54 00205BD4 21186400 */  addu       $v1, $v1, $a0
    /* 106B58 00205BD8 8C0265AC */  sw         $a1, 0x28C($v1)
.align 2
  .L00205BDC:
    /* 106B5C 00205BDC 8000BF7B */  lq         $ra, 0x80($sp)
    /* 106B60 00205BE0 7000B77B */  lq         $s7, 0x70($sp)
    /* 106B64 00205BE4 6000B67B */  lq         $s6, 0x60($sp)
    /* 106B68 00205BE8 5000B57B */  lq         $s5, 0x50($sp)
    /* 106B6C 00205BEC 4000B47B */  lq         $s4, 0x40($sp)
    /* 106B70 00205BF0 3000B37B */  lq         $s3, 0x30($sp)
    /* 106B74 00205BF4 2000B27B */  lq         $s2, 0x20($sp)
    /* 106B78 00205BF8 1000B17B */  lq         $s1, 0x10($sp)
    /* 106B7C 00205BFC 0000B07B */  lq         $s0, 0x0($sp)
    /* 106B80 00205C00 0800E003 */  jr         $ra
    /* 106B84 00205C04 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_00205AA8
