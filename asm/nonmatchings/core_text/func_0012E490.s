.align 3
nonmatching func_0012E490, 0x48

glabel func_0012E490
    /* 2F410 0012E490 1000BD27 */  addiu      $29, $29, 0x10
    /* 2F414 0012E494 00000000 */  nop
    /* 2F418 0012E498 1000BD27 */  addiu      $29, $29, 0x10
    /* 2F41C 0012E49C 00000000 */  nop
    /* 2F420 0012E4A0 1000BD27 */  addiu      $29, $29, 0x10
    /* 2F424 0012E4A4 00000000 */  nop
.align 2
  alabel func_0012E4A8
    /* 2F428 0012E4A8 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2F42C 0012E4AC 04000524 */  addiu      $5, $0, 0x4
    /* 2F430 0012E4B0 0000A4AF */  sw         $4, 0x0($29)
    /* 2F434 0012E4B4 2D30A003 */  daddu      $6, $29, $0
    /* 2F438 0012E4B8 1000BF7F */  sq         $31, 0x10($29)
    /* 2F43C 0012E4BC 15000424 */  addiu      $4, $0, 0x15
    /* 2F440 0012E4C0 2D380000 */  daddu      $7, $0, $0
    /* 2F444 0012E4C4 08BA040C */  jal        func_0012E820
    /* 2F448 0012E4C8 2D400000 */   daddu     $8, $0, $0
    /* 2F44C 0012E4CC 1000BF7B */  lq         $31, 0x10($29)
    /* 2F450 0012E4D0 0800E003 */  jr         $31
    /* 2F454 0012E4D4 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012E490
