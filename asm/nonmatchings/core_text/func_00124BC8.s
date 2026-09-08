.align 3
nonmatching func_00124BC8, 0x148

glabel func_00124BC8
    /* 25B48 00124BC8 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 25B4C 00124BCC 2D308000 */  daddu      $a2, $a0, $zero
    /* 25B50 00124BD0 6000B3FF */  sd         $s3, 0x60($sp)
    /* 25B54 00124BD4 2D98A000 */  daddu      $s3, $a1, $zero
    /* 25B58 00124BD8 8000BFFF */  sd         $ra, 0x80($sp)
    /* 25B5C 00124BDC 7000B4FF */  sd         $s4, 0x70($sp)
    /* 25B60 00124BE0 3F006232 */  andi       $v0, $s3, 0x3F
    /* 25B64 00124BE4 5000B2FF */  sd         $s2, 0x50($sp)
    /* 25B68 00124BE8 4000B1FF */  sd         $s1, 0x40($sp)
    /* 25B6C 00124BEC 03004010 */  beqz       $v0, .L00124BFC
    /* 25B70 00124BF0 3000B0FF */   sd        $s0, 0x30($sp)
    /* 25B74 00124BF4 3E000010 */  b          .L00124CF0
    /* 25B78 00124BF8 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L00124BFC:
    /* 25B7C 00124BFC 1300C050 */  beql       $a2, $zero, .L00124C4C
    /* 25B80 00124C00 0000A0AF */   sw        $zero, 0x0($sp)
    /* 25B84 00124C04 0000C28C */  lw         $v0, 0x0($a2)
    /* 25B88 00124C08 0400C38C */  lw         $v1, 0x4($a2)
    /* 25B8C 00124C0C 0800C48C */  lw         $a0, 0x8($a2)
    /* 25B90 00124C10 0C00C58C */  lw         $a1, 0xC($a2)
    /* 25B94 00124C14 0000A2AF */  sw         $v0, 0x0($sp)
    /* 25B98 00124C18 0800A3AF */  sw         $v1, 0x8($sp)
    /* 25B9C 00124C1C 0C00A4AF */  sw         $a0, 0xC($sp)
    /* 25BA0 00124C20 1000A5AF */  sw         $a1, 0x10($sp)
    /* 25BA4 00124C24 1700C268 */  ldl        $v0, 0x17($a2)
    /* 25BA8 00124C28 1000C26C */  ldr        $v0, 0x10($a2)
    /* 25BAC 00124C2C 1F00C368 */  ldl        $v1, 0x1F($a2)
    /* 25BB0 00124C30 1800C36C */  ldr        $v1, 0x18($a2)
    /* 25BB4 00124C34 1B00A2B3 */  sdl        $v0, 0x1B($sp)
    /* 25BB8 00124C38 1400A2B7 */  sdr        $v0, 0x14($sp)
    /* 25BBC 00124C3C 2300A3B3 */  sdl        $v1, 0x23($sp)
    /* 25BC0 00124C40 1C00A3B7 */  sdr        $v1, 0x1C($sp)
    /* 25BC4 00124C44 06000010 */  b          .L00124C60
    /* 25BC8 00124C48 0000A28F */   lw        $v0, 0x0($sp)
.align 2
  .L00124C4C:
    /* 25BCC 00124C4C 0800A0AF */  sw         $zero, 0x8($sp)
    /* 25BD0 00124C50 0C00A0AF */  sw         $zero, 0xC($sp)
    /* 25BD4 00124C54 1000A0AF */  sw         $zero, 0x10($sp)
    /* 25BD8 00124C58 1400A0A3 */  sb         $zero, 0x14($sp)
    /* 25BDC 00124C5C 0000A28F */  lw         $v0, 0x0($sp)
.align 2
  .L00124C60:
    /* 25BE0 00124C60 01001424 */  addiu      $s4, $zero, 0x1
    /* 25BE4 00124C64 0400B4AF */  sw         $s4, 0x4($sp)
    /* 25BE8 00124C68 2D20A003 */  daddu      $a0, $sp, $zero
    /* 25BEC 00124C6C 01004234 */  ori        $v0, $v0, 0x1
    /* 25BF0 00124C70 2D286002 */  daddu      $a1, $s3, $zero
    /* 25BF4 00124C74 0000A2AF */  sw         $v0, 0x0($sp)
    /* 25BF8 00124C78 1692040C */  jal        func_00124858
    /* 25BFC 00124C7C 80006626 */   addiu     $a2, $s3, 0x80
    /* 25C00 00124C80 2D904000 */  daddu      $s2, $v0, $zero
    /* 25C04 00124C84 1A004006 */  bltz       $s2, .L00124CF0
    /* 25C08 00124C88 1600033C */   lui       $v1, %hi(D_0015B640)
    /* 25C0C 00124C8C 30030224 */  addiu      $v0, $zero, 0x330
    /* 25C10 00124C90 18104202 */  mult       $v0, $s2, $v0
    /* 25C14 00124C94 40B66324 */  addiu      $v1, $v1, %lo(D_0015B640)
    /* 25C18 00124C98 2D806002 */  daddu      $s0, $s3, $zero
    /* 25C1C 00124C9C 01001124 */  addiu      $s1, $zero, 0x1
    /* 25C20 00124CA0 21206200 */  addu       $a0, $v1, $v0
    /* 25C24 00124CA4 21104300 */  addu       $v0, $v0, $v1
    /* 25C28 00124CA8 0C0093AC */  sw         $s3, 0xC($a0)
    /* 25C2C 00124CAC 000054AC */  sw         $s4, 0x0($v0)
    /* 25C30 00124CB0 000000A2 */  sb         $zero, 0x0($s0)
    /* 25C34 00124CB4 00000000 */  nop
.align 2
  .L00124CB8:
    /* 25C38 00124CB8 1C000426 */  addiu      $a0, $s0, 0x1C
    /* 25C3C 00124CBC 7C0000AE */  sw         $zero, 0x7C($s0)
    /* 25C40 00124CC0 FF000524 */  addiu      $a1, $zero, 0xFF
    /* 25C44 00124CC4 010000A2 */  sb         $zero, 0x1($s0)
    /* 25C48 00124CC8 20000624 */  addiu      $a2, $zero, 0x20
    /* 25C4C 00124CCC 030000A2 */  sb         $zero, 0x3($s0)
    /* 25C50 00124CD0 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 25C54 00124CD4 020000A2 */  sb         $zero, 0x2($s0)
    /* 25C58 00124CD8 040000AE */  sw         $zero, 0x4($s0)
    /* 25C5C 00124CDC FF54040C */  jal        func_001153FC
    /* 25C60 00124CE0 80001026 */   addiu     $s0, $s0, 0x80
    /* 25C64 00124CE4 F4FF2306 */  bgezl      $s1, .L00124CB8
    /* 25C68 00124CE8 000000A2 */   sb        $zero, 0x0($s0)
    /* 25C6C 00124CEC 2D104002 */  daddu      $v0, $s2, $zero
.align 2
  .L00124CF0:
    /* 25C70 00124CF0 8000BFDF */  ld         $ra, 0x80($sp)
    /* 25C74 00124CF4 7000B4DF */  ld         $s4, 0x70($sp)
    /* 25C78 00124CF8 6000B3DF */  ld         $s3, 0x60($sp)
    /* 25C7C 00124CFC 5000B2DF */  ld         $s2, 0x50($sp)
    /* 25C80 00124D00 4000B1DF */  ld         $s1, 0x40($sp)
    /* 25C84 00124D04 3000B0DF */  ld         $s0, 0x30($sp)
    /* 25C88 00124D08 0800E003 */  jr         $ra
    /* 25C8C 00124D0C 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_00124BC8
