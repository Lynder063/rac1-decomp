.align 3
nonmatching func_00207B30, 0xB4

glabel func_00207B30
    /* 108AB0 00207B30 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 108AB4 00207B34 1400023C */  lui        $v0, %hi(D_0013F450)
    /* 108AB8 00207B38 0000B07F */  sq         $s0, 0x0($sp)
    /* 108ABC 00207B3C 50F44324 */  addiu      $v1, $v0, %lo(D_0013F450)
    /* 108AC0 00207B40 1000BF7F */  sq         $ra, 0x10($sp)
    /* 108AC4 00207B44 8C20628C */  lw         $v0, 0x208C($v1)
    /* 108AC8 00207B48 EFFF4224 */  addiu      $v0, $v0, -0x11
    /* 108ACC 00207B4C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 108AD0 00207B50 05004014 */  bnez       $v0, .L00207B68
    /* 108AD4 00207B54 2D800000 */   daddu     $s0, $zero, $zero
    /* 108AD8 00207B58 E4126390 */  lbu        $v1, 0x12E4($v1)
    /* 108ADC 00207B5C 01000224 */  addiu      $v0, $zero, 0x1
    /* 108AE0 00207B60 03006214 */  bne        $v1, $v0, .L00207B70
    /* 108AE4 00207B64 0501A228 */   slti      $v0, $a1, 0x105
.align 2
  .L00207B68:
    /* 108AE8 00207B68 01001024 */  addiu      $s0, $zero, 0x1
    /* 108AEC 00207B6C 0501A228 */  slti       $v0, $a1, 0x105
.align 2
  .L00207B70:
    /* 108AF0 00207B70 0F004014 */  bnez       $v0, .L00207BB0
    /* 108AF4 00207B74 C100A228 */   slti      $v0, $a1, 0xC1
    /* 108AF8 00207B78 1A00023C */  lui        $v0, %hi(D_001A04AC)
    /* 108AFC 00207B7C AC04438C */  lw         $v1, %lo(D_001A04AC)($v0)
    /* 108B00 00207B80 14006010 */  beqz       $v1, .L00207BD4
    /* 108B04 00207B84 2D100000 */   daddu     $v0, $zero, $zero
    /* 108B08 00207B88 3E42013C */  lui        $at, (0x423ECCCD >> 16)
    /* 108B0C 00207B8C CDCC2134 */  ori        $at, $at, (0x423ECCCD & 0xFFFF)
    /* 108B10 00207B90 00008144 */  mtc1       $at, $f0
    /* 108B14 00207B94 00000000 */  nop
    /* 108B18 00207B98 36000E46 */  c.le.s     $f0, $f14
    /* 108B1C 00207B9C 00000000 */  nop
    /* 108B20 00207BA0 0C000145 */  bc1t       .L00207BD4
    /* 108B24 00207BA4 01000224 */   addiu     $v0, $zero, 0x1
    /* 108B28 00207BA8 0A000010 */  b          .L00207BD4
    /* 108B2C 00207BAC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00207BB0:
    /* 108B30 00207BB0 08004014 */  bnez       $v0, .L00207BD4
    /* 108B34 00207BB4 2D100002 */   daddu     $v0, $s0, $zero
    /* 108B38 00207BB8 D9000624 */  addiu      $a2, $zero, 0xD9
    /* 108B3C 00207BBC B8000724 */  addiu      $a3, $zero, 0xB8
    /* 108B40 00207BC0 56010824 */  addiu      $t0, $zero, 0x156
    /* 108B44 00207BC4 1224080C */  jal        func_00209048
    /* 108B48 00207BC8 D2000924 */   addiu     $t1, $zero, 0xD2
    /* 108B4C 00207BCC 0B800200 */  movn       $s0, $zero, $v0
    /* 108B50 00207BD0 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00207BD4:
    /* 108B54 00207BD4 1000BF7B */  lq         $ra, 0x10($sp)
    /* 108B58 00207BD8 0000B07B */  lq         $s0, 0x0($sp)
    /* 108B5C 00207BDC 0800E003 */  jr         $ra
    /* 108B60 00207BE0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00207B30
    /* 108B64 00207BE4 00000000 */  nop
