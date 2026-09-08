.align 3
nonmatching func_0012D380, 0x60

glabel func_0012D380
    /* 2E300 0012D380 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E304 0012D384 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2E308 0012D388 3C63040C */  jal        func_00118CF0
    /* 2E30C 0012D38C 2D20A003 */   daddu     $a0, $sp, $zero
    /* 2E310 0012D390 D0B4040C */  jal        func_0012D340
    /* 2E314 0012D394 00000000 */   nop
    /* 2E318 0012D398 03004010 */  beqz       $v0, .L0012D3A8
    /* 2E31C 0012D39C 1300023C */   lui       $v0, %hi(D_001331D4)
    /* 2E320 0012D3A0 0C000010 */  b          .L0012D3D4
    /* 2E324 0012D3A4 D4314290 */   lbu       $v0, %lo(D_001331D4)($v0)
.align 2
  .L0012D3A8:
    /* 2E328 0012D3A8 3C63040C */  jal        func_00118CF0
    /* 2E32C 0012D3AC 2D20A003 */   daddu     $a0, $sp, $zero
    /* 2E330 0012D3B0 0000A38F */  lw         $v1, 0x0($sp)
    /* 2E334 0012D3B4 42130300 */  srl        $v0, $v1, 13
    /* 2E338 0012D3B8 07004230 */  andi       $v0, $v0, 0x7
    /* 2E33C 0012D3BC 04004054 */  bnel       $v0, $zero, .L0012D3D0
    /* 2E340 0012D3C0 02140300 */   srl       $v0, $v1, 16
    /* 2E344 0012D3C4 02110300 */  srl        $v0, $v1, 4
    /* 2E348 0012D3C8 02000010 */  b          .L0012D3D4
    /* 2E34C 0012D3CC 01004230 */   andi      $v0, $v0, 0x1
.align 2
  .L0012D3D0:
    /* 2E350 0012D3D0 1F004230 */  andi       $v0, $v0, 0x1F
.align 2
  .L0012D3D4:
    /* 2E354 0012D3D4 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2E358 0012D3D8 0800E003 */  jr         $ra
    /* 2E35C 0012D3DC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012D380
