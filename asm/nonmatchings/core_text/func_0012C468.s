.align 3
nonmatching func_0012C468, 0x54

glabel func_0012C468
    /* 2D3E8 0012C468 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2D3EC 0012C46C 1000BFFF */  sd         $ra, 0x10($sp)
    /* 2D3F0 0012C470 5808838C */  lw         $v1, 0x858($a0)
    /* 2D3F4 0012C474 0C006010 */  beqz       $v1, .L0012C4A8
    /* 2D3F8 0012C478 00000000 */   nop
    /* 2D3FC 0012C47C 0A008010 */  beqz       $a0, .L0012C4A8
    /* 2D400 0012C480 00000000 */   nop
    /* 2D404 0012C484 0C00828C */  lw         $v0, 0xC($a0)
    /* 2D408 0012C488 07004010 */  beqz       $v0, .L0012C4A8
    /* 2D40C 0012C48C 2D206000 */   daddu     $a0, $v1, $zero
    /* 2D410 0012C490 0400A5AF */  sw         $a1, 0x4($sp)
    /* 2D414 0012C494 0000A0AF */  sw         $zero, 0x0($sp)
    /* 2D418 0012C498 1EAF040C */  jal        func_0012BC78
    /* 2D41C 0012C49C 2D28A003 */   daddu     $a1, $sp, $zero
    /* 2D420 0012C4A0 04000010 */  b          .L0012C4B4
    /* 2D424 0012C4A4 1000BFDF */   ld        $ra, 0x10($sp)
.align 2
  .L0012C4A8:
    /* 2D428 0012C4A8 08B1040C */  jal        func_0012C420
    /* 2D42C 0012C4AC 2D20A000 */   daddu     $a0, $a1, $zero
    /* 2D430 0012C4B0 1000BFDF */  ld         $ra, 0x10($sp)
.align 2
  .L0012C4B4:
    /* 2D434 0012C4B4 0800E003 */  jr         $ra
    /* 2D438 0012C4B8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012C468
    /* 2D43C 0012C4BC 00000000 */  nop
