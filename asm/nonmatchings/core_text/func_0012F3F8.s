.align 3
nonmatching func_0012F3F8, 0xB0

glabel func_0012F3F8
    /* 30378 0012F3F8 1600033C */  lui        $v1, %hi(D_0015EE58)
    /* 3037C 0012F3FC 58EE6390 */  lbu        $v1, %lo(D_0015EE58)($v1)
    /* 30380 0012F400 D0CFBD27 */  addiu      $sp, $sp, -0x3030
    /* 30384 0012F404 20000224 */  addiu      $v0, $zero, 0x20
    /* 30388 0012F408 1030B07F */  sq         $s0, 0x3010($sp)
    /* 3038C 0012F40C 2030BF7F */  sq         $ra, 0x3020($sp)
    /* 30390 0012F410 0030B027 */  addiu      $s0, $sp, 0x3000
    /* 30394 0012F414 0030A2A3 */  sb         $v0, 0x3000($sp)
    /* 30398 0012F418 0130A3A3 */  sb         $v1, 0x3001($sp)
    /* 3039C 0012F41C 0230A0A3 */  sb         $zero, 0x3002($sp)
    /* 303A0 0012F420 0330A0A3 */  sb         $zero, 0x3003($sp)
    /* 303A4 0012F424 DC050424 */  addiu      $a0, $zero, 0x5DC
.align 2
  .L0012F428:
    /* 303A8 0012F428 06000524 */  addiu      $a1, $zero, 0x6
    /* 303AC 0012F42C 2D30A003 */  daddu      $a2, $sp, $zero
    /* 303B0 0012F430 D485040C */  jal        func_00121750
    /* 303B4 0012F434 2D380002 */   daddu     $a3, $s0, $zero
    /* 303B8 0012F438 03000010 */  b          .L0012F448
    /* 303BC 0012F43C 00000000 */   nop
.align 2
  .L0012F440:
    /* 303C0 0012F440 6689040C */  jal        func_00122598
    /* 303C4 0012F444 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012F448:
    /* 303C8 0012F448 CC83040C */  jal        func_00120F30
    /* 303CC 0012F44C 01000424 */   addiu     $a0, $zero, 0x1
    /* 303D0 0012F450 00000000 */  nop
    /* 303D4 0012F454 FAFF4014 */  bnez       $v0, .L0012F440
    /* 303D8 0012F458 00000000 */   nop
    /* 303DC 0012F45C 4C86040C */  jal        func_00121930
    /* 303E0 0012F460 00000000 */   nop
    /* 303E4 0012F464 F0FF4014 */  bnez       $v0, .L0012F428
    /* 303E8 0012F468 DC050424 */   addiu     $a0, $zero, 0x5DC
    /* 303EC 0012F46C 1300023C */  lui        $v0, %hi(D_00137C80)
    /* 303F0 0012F470 2D280000 */  daddu      $a1, $zero, $zero
    /* 303F4 0012F474 807C4624 */  addiu      $a2, $v0, %lo(D_00137C80)
.align 2
  .L0012F478:
    /* 303F8 0012F478 2110A503 */  addu       $v0, $sp, $a1
    /* 303FC 0012F47C 2120A600 */  addu       $a0, $a1, $a2
    /* 30400 0012F480 00004390 */  lbu        $v1, 0x0($v0)
    /* 30404 0012F484 0100A524 */  addiu      $a1, $a1, 0x1
    /* 30408 0012F488 6029A22C */  sltiu      $v0, $a1, 0x2960
    /* 3040C 0012F48C FAFF4014 */  bnez       $v0, .L0012F478
    /* 30410 0012F490 000083A0 */   sb        $v1, 0x0($a0)
    /* 30414 0012F494 2030BF7B */  lq         $ra, 0x3020($sp)
    /* 30418 0012F498 01000224 */  addiu      $v0, $zero, 0x1
    /* 3041C 0012F49C 1030B07B */  lq         $s0, 0x3010($sp)
    /* 30420 0012F4A0 0800E003 */  jr         $ra
    /* 30424 0012F4A4 3030BD27 */   addiu     $sp, $sp, 0x3030
endlabel func_0012F3F8
