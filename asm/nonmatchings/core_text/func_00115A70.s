.align 3
nonmatching func_00115A70, 0x100

glabel func_00115A70
    /* 169F0 00115A70 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 169F4 00115A74 1000B1FF */  sd         $s1, 0x10($sp)
    /* 169F8 00115A78 3000B3FF */  sd         $s3, 0x30($sp)
    /* 169FC 00115A7C 2D88C000 */  daddu      $s1, $a2, $zero
    /* 16A00 00115A80 2000B2FF */  sd         $s2, 0x20($sp)
    /* 16A04 00115A84 2D988000 */  daddu      $s3, $a0, $zero
    /* 16A08 00115A88 4000BFFF */  sd         $ra, 0x40($sp)
    /* 16A0C 00115A8C 03002332 */  andi       $v1, $s1, 0x3
    /* 16A10 00115A90 0000B0FF */  sd         $s0, 0x0($sp)
    /* 16A14 00115A94 0A006010 */  beqz       $v1, .L00115AC0
    /* 16A18 00115A98 2D90A000 */   daddu     $s2, $a1, $zero
    /* 16A1C 00115A9C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 16A20 00115AA0 1500023C */  lui        $v0, %hi(D_001524B8)
    /* 16A24 00115AA4 B8244224 */  addiu      $v0, $v0, %lo(D_001524B8)
    /* 16A28 00115AA8 80180300 */  sll        $v1, $v1, 2
    /* 16A2C 00115AAC 21186200 */  addu       $v1, $v1, $v0
    /* 16A30 00115AB0 0000668C */  lw         $a2, 0x0($v1)
    /* 16A34 00115AB4 6A55040C */  jal        func_001155A8
    /* 16A38 00115AB8 2D380000 */   daddu     $a3, $zero, $zero
    /* 16A3C 00115ABC 2D904000 */  daddu      $s2, $v0, $zero
.align 2
  .L00115AC0:
    /* 16A40 00115AC0 83881100 */  sra        $s1, $s1, 2
    /* 16A44 00115AC4 23002012 */  beqz       $s1, .L00115B54
    /* 16A48 00115AC8 2D104002 */   daddu     $v0, $s2, $zero
    /* 16A4C 00115ACC 4800708E */  lw         $s0, 0x48($s3)
    /* 16A50 00115AD0 13000016 */  bnez       $s0, .L00115B20
    /* 16A54 00115AD4 01002232 */   andi      $v0, $s1, 0x1
    /* 16A58 00115AD8 2D206002 */  daddu      $a0, $s3, $zero
    /* 16A5C 00115ADC 0256040C */  jal        func_00115808
    /* 16A60 00115AE0 71020524 */   addiu     $a1, $zero, 0x271
    /* 16A64 00115AE4 2D804000 */  daddu      $s0, $v0, $zero
    /* 16A68 00115AE8 480062AE */  sw         $v0, 0x48($s3)
    /* 16A6C 00115AEC 0B000010 */  b          .L00115B1C
    /* 16A70 00115AF0 000000AE */   sw        $zero, 0x0($s0)
    /* 16A74 00115AF4 00000000 */  nop
.align 2
  .L00115AF8:
    /* 16A78 00115AF8 08004054 */  bnel       $v0, $zero, .L00115B1C
    /* 16A7C 00115AFC 2D804000 */   daddu     $s0, $v0, $zero
    /* 16A80 00115B00 2D206002 */  daddu      $a0, $s3, $zero
    /* 16A84 00115B04 2D280002 */  daddu      $a1, $s0, $zero
    /* 16A88 00115B08 1056040C */  jal        func_00115840
    /* 16A8C 00115B0C 2D300002 */   daddu     $a2, $s0, $zero
    /* 16A90 00115B10 000002AE */  sw         $v0, 0x0($s0)
    /* 16A94 00115B14 000040AC */  sw         $zero, 0x0($v0)
    /* 16A98 00115B18 2D804000 */  daddu      $s0, $v0, $zero
.align 2
  .L00115B1C:
    /* 16A9C 00115B1C 01002232 */  andi       $v0, $s1, 0x1
.align 2
  .L00115B20:
    /* 16AA0 00115B20 08004010 */  beqz       $v0, .L00115B44
    /* 16AA4 00115B24 2D284002 */   daddu     $a1, $s2, $zero
    /* 16AA8 00115B28 2D206002 */  daddu      $a0, $s3, $zero
    /* 16AAC 00115B2C 1056040C */  jal        func_00115840
    /* 16AB0 00115B30 2D300002 */   daddu     $a2, $s0, $zero
    /* 16AB4 00115B34 2D284002 */  daddu      $a1, $s2, $zero
    /* 16AB8 00115B38 2D206002 */  daddu      $a0, $s3, $zero
    /* 16ABC 00115B3C 5E55040C */  jal        func_00115578
    /* 16AC0 00115B40 2D904000 */   daddu     $s2, $v0, $zero
.align 2
  .L00115B44:
    /* 16AC4 00115B44 43881100 */  sra        $s1, $s1, 1
    /* 16AC8 00115B48 EBFF2056 */  bnel       $s1, $zero, .L00115AF8
    /* 16ACC 00115B4C 0000028E */   lw        $v0, 0x0($s0)
    /* 16AD0 00115B50 2D104002 */  daddu      $v0, $s2, $zero
.align 2
  .L00115B54:
    /* 16AD4 00115B54 4000BFDF */  ld         $ra, 0x40($sp)
    /* 16AD8 00115B58 3000B3DF */  ld         $s3, 0x30($sp)
    /* 16ADC 00115B5C 2000B2DF */  ld         $s2, 0x20($sp)
    /* 16AE0 00115B60 1000B1DF */  ld         $s1, 0x10($sp)
    /* 16AE4 00115B64 0000B0DF */  ld         $s0, 0x0($sp)
    /* 16AE8 00115B68 0800E003 */  jr         $ra
    /* 16AEC 00115B6C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00115A70
