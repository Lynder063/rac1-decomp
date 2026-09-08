.align 3
nonmatching func_00209A60, 0x154

glabel func_00209A60
    /* 10A9E0 00209A60 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 10A9E4 00209A64 2D308000 */  daddu      $a2, $a0, $zero
    /* 10A9E8 00209A68 2000BF7F */  sq         $ra, 0x20($sp)
    /* 10A9EC 00209A6C 45000224 */  addiu      $v0, $zero, 0x45
    /* 10A9F0 00209A70 1000B17F */  sq         $s1, 0x10($sp)
    /* 10A9F4 00209A74 0000B07F */  sq         $s0, 0x0($sp)
    /* 10A9F8 00209A78 1200C490 */  lbu        $a0, 0x12($a2)
    /* 10A9FC 00209A7C 06008214 */  bne        $a0, $v0, .L00209A98
    /* 10AA00 00209A80 50000224 */   addiu     $v0, $zero, 0x50
    /* 10AA04 00209A84 1400023C */  lui        $v0, %hi(D_0013D2D0)
    /* 10AA08 00209A88 D0D24324 */  addiu      $v1, $v0, %lo(D_0013D2D0)
    /* 10AA0C 00209A8C 2D884000 */  daddu      $s1, $v0, $zero
    /* 10AA10 00209A90 07000010 */  b          .L00209AB0
    /* 10AA14 00209A94 020064A0 */   sb        $a0, 0x2($v1)
.align 2
  .L00209A98:
    /* 10AA18 00209A98 04008214 */  bne        $a0, $v0, .L00209AAC
    /* 10AA1C 00209A9C 1400113C */   lui       $s1, %hi(D_0013D2D0)
    /* 10AA20 00209AA0 D0D22326 */  addiu      $v1, $s1, %lo(D_0013D2D0)
    /* 10AA24 00209AA4 49000224 */  addiu      $v0, $zero, 0x49
    /* 10AA28 00209AA8 020062A0 */  sb         $v0, 0x2($v1)
.align 2
  .L00209AAC:
    /* 10AA2C 00209AAC 1400023C */  lui        $v0, %hi(D_0013D2D0)
.align 2
  .L00209AB0:
    /* 10AA30 00209AB0 03000524 */  addiu      $a1, $zero, 0x3
    /* 10AA34 00209AB4 D0D24724 */  addiu      $a3, $v0, %lo(D_0013D2D0)
.align 2
  .L00209AB8:
    /* 10AA38 00209AB8 2110A600 */  addu       $v0, $a1, $a2
    /* 10AA3C 00209ABC 2120A700 */  addu       $a0, $a1, $a3
    /* 10AA40 00209AC0 0D004390 */  lbu        $v1, 0xD($v0)
    /* 10AA44 00209AC4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 10AA48 00209AC8 0700A228 */  slti       $v0, $a1, 0x7
    /* 10AA4C 00209ACC FAFF4014 */  bnez       $v0, .L00209AB8
    /* 10AA50 00209AD0 000083A0 */   sb        $v1, 0x0($a0)
    /* 10AA54 00209AD4 1400023C */  lui        $v0, %hi(D_0013D2D0)
    /* 10AA58 00209AD8 08000524 */  addiu      $a1, $zero, 0x8
    /* 10AA5C 00209ADC D0D24724 */  addiu      $a3, $v0, %lo(D_0013D2D0)
.align 2
  .L00209AE0:
    /* 10AA60 00209AE0 2110A600 */  addu       $v0, $a1, $a2
    /* 10AA64 00209AE4 2120A700 */  addu       $a0, $a1, $a3
    /* 10AA68 00209AE8 0D004390 */  lbu        $v1, 0xD($v0)
    /* 10AA6C 00209AEC 0100A524 */  addiu      $a1, $a1, 0x1
    /* 10AA70 00209AF0 0B00A228 */  slti       $v0, $a1, 0xB
    /* 10AA74 00209AF4 FAFF4014 */  bnez       $v0, .L00209AE0
    /* 10AA78 00209AF8 000083A0 */   sb        $v1, 0x0($a0)
    /* 10AA7C 00209AFC 1400023C */  lui        $v0, %hi(D_0013D2D0)
    /* 10AA80 00209B00 0B000524 */  addiu      $a1, $zero, 0xB
    /* 10AA84 00209B04 D0D24724 */  addiu      $a3, $v0, %lo(D_0013D2D0)
.align 2
  .L00209B08:
    /* 10AA88 00209B08 2110A600 */  addu       $v0, $a1, $a2
    /* 10AA8C 00209B0C 2120A700 */  addu       $a0, $a1, $a3
    /* 10AA90 00209B10 0E004390 */  lbu        $v1, 0xE($v0)
    /* 10AA94 00209B14 0100A524 */  addiu      $a1, $a1, 0x1
    /* 10AA98 00209B18 0D00A228 */  slti       $v0, $a1, 0xD
    /* 10AA9C 00209B1C FAFF4014 */  bnez       $v0, .L00209B08
    /* 10AAA0 00209B20 000083A0 */   sb        $v1, 0x0($a0)
    /* 10AAA4 00209B24 D0D23126 */  addiu      $s1, $s1, %lo(D_0013D2D0)
    /* 10AAA8 00209B28 1400043C */  lui        $a0, %hi(D_0013D2E8)
    /* 10AAAC 00209B2C E8D28424 */  addiu      $a0, $a0, %lo(D_0013D2E8)
    /* 10AAB0 00209B30 2D282002 */  daddu      $a1, $s1, $zero
    /* 10AAB4 00209B34 0D000624 */  addiu      $a2, $zero, 0xD
    /* 10AAB8 00209B38 C05A040C */  jal        func_00116B00
    /* 10AABC 00209B3C 1400103C */   lui       $s0, %hi(D_0013D340)
    /* 10AAC0 00209B40 40D31026 */  addiu      $s0, $s0, %lo(D_0013D340)
    /* 10AAC4 00209B44 1400043C */  lui        $a0, %hi(D_0013D300)
    /* 10AAC8 00209B48 2D282002 */  daddu      $a1, $s1, $zero
    /* 10AACC 00209B4C 00D38424 */  addiu      $a0, $a0, %lo(D_0013D300)
    /* 10AAD0 00209B50 C05A040C */  jal        func_00116B00
    /* 10AAD4 00209B54 0D000624 */   addiu     $a2, $zero, 0xD
    /* 10AAD8 00209B58 1400043C */  lui        $a0, %hi(D_0013D320)
    /* 10AADC 00209B5C 2D282002 */  daddu      $a1, $s1, $zero
    /* 10AAE0 00209B60 20D38424 */  addiu      $a0, $a0, %lo(D_0013D320)
    /* 10AAE4 00209B64 C05A040C */  jal        func_00116B00
    /* 10AAE8 00209B68 0D000624 */   addiu     $a2, $zero, 0xD
    /* 10AAEC 00209B6C 2D200002 */  daddu      $a0, $s0, $zero
    /* 10AAF0 00209B70 2D282002 */  daddu      $a1, $s1, $zero
    /* 10AAF4 00209B74 C05A040C */  jal        func_00116B00
    /* 10AAF8 00209B78 0D000624 */   addiu     $a2, $zero, 0xD
    /* 10AAFC 00209B7C 14000426 */  addiu      $a0, $s0, 0x14
    /* 10AB00 00209B80 2D282002 */  daddu      $a1, $s1, $zero
    /* 10AB04 00209B84 C05A040C */  jal        func_00116B00
    /* 10AB08 00209B88 0D000624 */   addiu     $a2, $zero, 0xD
    /* 10AB0C 00209B8C 1400043C */  lui        $a0, %hi(D_0013D370)
    /* 10AB10 00209B90 2D282002 */  daddu      $a1, $s1, $zero
    /* 10AB14 00209B94 70D38424 */  addiu      $a0, $a0, %lo(D_0013D370)
    /* 10AB18 00209B98 C05A040C */  jal        func_00116B00
    /* 10AB1C 00209B9C 0D000624 */   addiu     $a2, $zero, 0xD
    /* 10AB20 00209BA0 2000BF7B */  lq         $ra, 0x20($sp)
    /* 10AB24 00209BA4 1000B17B */  lq         $s1, 0x10($sp)
    /* 10AB28 00209BA8 0000B07B */  lq         $s0, 0x0($sp)
    /* 10AB2C 00209BAC 0800E003 */  jr         $ra
    /* 10AB30 00209BB0 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00209A60
    /* 10AB34 00209BB4 00000000 */  nop
