.align 3
nonmatching func_0012D3F0, 0x4C

glabel func_0012D3F0
    /* 2E370 0012D3F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2E374 0012D3F4 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2E378 0012D3F8 D0B4040C */  jal        func_0012D340
    /* 2E37C 0012D3FC 00000000 */   nop
    /* 2E380 0012D400 03004010 */  beqz       $v0, .L0012D410
    /* 2E384 0012D404 1300023C */   lui       $v0, %hi(D_001331D0)
    /* 2E388 0012D408 09000010 */  b          .L0012D430
    /* 2E38C 0012D40C D0314284 */   lh        $v0, %lo(D_001331D0)($v0)
.align 2
  .L0012D410:
    /* 2E390 0012D410 3C63040C */  jal        func_00118CF0
    /* 2E394 0012D414 2D20A003 */   daddu     $a0, $sp, $zero
    /* 2E398 0012D418 0000A28F */  lw         $v0, 0x0($sp)
    /* 2E39C 0012D41C 1C020424 */  addiu      $a0, $zero, 0x21C
    /* 2E3A0 0012D420 421B0200 */  srl        $v1, $v0, 13
    /* 2E3A4 0012D424 43150200 */  sra        $v0, $v0, 21
    /* 2E3A8 0012D428 07006330 */  andi       $v1, $v1, 0x7
    /* 2E3AC 0012D42C 0A108300 */  movz       $v0, $a0, $v1
.align 2
  .L0012D430:
    /* 2E3B0 0012D430 1000BFDF */  ld         $ra, 0x10($sp)
    /* 2E3B4 0012D434 0800E003 */  jr         $ra
    /* 2E3B8 0012D438 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012D3F0
    /* 2E3BC 0012D43C 00000000 */  nop
