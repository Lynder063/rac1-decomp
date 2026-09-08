.align 3
nonmatching func_001EC2B8, 0x300

glabel func_001EC2B8
    /* ED238 001EC2B8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* ED23C 001EC2BC 1800023C */  lui        $v0, %hi(D_00187040)
    /* ED240 001EC2C0 2000B27F */  sq         $s2, 0x20($sp)
    /* ED244 001EC2C4 2D380000 */  daddu      $a3, $zero, $zero
    /* ED248 001EC2C8 1000B17F */  sq         $s1, 0x10($sp)
    /* ED24C 001EC2CC 2D908000 */  daddu      $s2, $a0, $zero
    /* ED250 001EC2D0 0000B07F */  sq         $s0, 0x0($sp)
    /* ED254 001EC2D4 2D884000 */  daddu      $s1, $v0, $zero
    /* ED258 001EC2D8 6000BF7F */  sq         $ra, 0x60($sp)
    /* ED25C 001EC2DC 40705024 */  addiu      $s0, $v0, %lo(D_00187040)
    /* ED260 001EC2E0 5000B57F */  sq         $s5, 0x50($sp)
    /* ED264 001EC2E4 4000B47F */  sq         $s4, 0x40($sp)
    /* ED268 001EC2E8 3000B37F */  sq         $s3, 0x30($sp)
    /* ED26C 001EC2EC 1600043C */  lui        $a0, %hi(D_0015F090)
    /* ED270 001EC2F0 90F0848C */  lw         $a0, %lo(D_0015F090)($a0)
    /* ED274 001EC2F4 84004386 */  lh         $v1, 0x84($s2)
    /* ED278 001EC2F8 8001148E */  lw         $s4, 0x180($s0)
    /* ED27C 001EC2FC 40190300 */  sll        $v1, $v1, 5
    /* ED280 001EC300 21186400 */  addu       $v1, $v1, $a0
    /* ED284 001EC304 1C00628C */  lw         $v0, 0x1C($v1)
    /* ED288 001EC308 02004010 */  beqz       $v0, .L001EC314
    /* ED28C 001EC30C 7E008486 */   lh        $a0, 0x7E($s4)
    /* ED290 001EC310 1D004790 */  lbu        $a3, 0x1D($v0)
.align 2
  .L001EC314:
    /* ED294 001EC314 04000224 */  addiu      $v0, $zero, 0x4
    /* ED298 001EC318 05008214 */  bne        $a0, $v0, .L001EC330
    /* ED29C 001EC31C 02000624 */   addiu     $a2, $zero, 0x2
    /* ED2A0 001EC320 01000224 */  addiu      $v0, $zero, 0x1
    /* ED2A4 001EC324 30005326 */  addiu      $s3, $s2, 0x30
    /* ED2A8 001EC328 77000010 */  b          .L001EC508
    /* ED2AC 001EC32C 8E0042A6 */   sh        $v0, 0x8E($s2)
.align 2
  .L001EC330:
    /* ED2B0 001EC330 07008610 */  beq        $a0, $a2, .L001EC350
    /* ED2B4 001EC334 01000224 */   addiu     $v0, $zero, 0x1
    /* ED2B8 001EC338 01000524 */  addiu      $a1, $zero, 0x1
    /* ED2BC 001EC33C 0600E510 */  beq        $a3, $a1, .L001EC358
    /* ED2C0 001EC340 05000324 */   addiu     $v1, $zero, 0x5
    /* ED2C4 001EC344 2D00E314 */  bne        $a3, $v1, .L001EC3FC
    /* ED2C8 001EC348 03000224 */   addiu     $v0, $zero, 0x3
    /* ED2CC 001EC34C 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L001EC350:
    /* ED2D0 001EC350 1300E214 */  bne        $a3, $v0, .L001EC3A0
    /* ED2D4 001EC354 05000224 */   addiu     $v0, $zero, 0x5
.align 2
  .L001EC358:
    /* ED2D8 001EC358 780041C6 */  lwc1       $f1, 0x78($s2)
    /* ED2DC 001EC35C 40702226 */  addiu      $v0, $s1, %lo(D_00187040)
    /* ED2E0 001EC360 00008044 */  mtc1       $zero, $f0
    /* ED2E4 001EC364 00000000 */  nop
    /* ED2E8 001EC368 34000146 */  c.lt.s     $f0, $f1
    /* ED2EC 001EC36C 00000000 */  nop
    /* ED2F0 001EC370 04000045 */  bc1f       .L001EC384
    /* ED2F4 001EC374 730240A0 */   sb        $zero, 0x273($v0)
    /* ED2F8 001EC378 880241E4 */  swc1       $f1, 0x288($v0)
    /* ED2FC 001EC37C 17000010 */  b          .L001EC3DC
    /* ED300 001EC380 940241E4 */   swc1      $f1, 0x294($v0)
.align 2
  .L001EC384:
    /* ED304 001EC384 933C013C */  lui        $at, (0x3C9374BC >> 16)
    /* ED308 001EC388 BC742134 */  ori        $at, $at, (0x3C9374BC & 0xFFFF)
    /* ED30C 001EC38C 00008144 */  mtc1       $at, $f0
    /* ED310 001EC390 00000000 */  nop
    /* ED314 001EC394 880240E4 */  swc1       $f0, 0x288($v0)
    /* ED318 001EC398 10000010 */  b          .L001EC3DC
    /* ED31C 001EC39C 940240E4 */   swc1      $f0, 0x294($v0)
.align 2
  .L001EC3A0:
    /* ED320 001EC3A0 0F00E214 */  bne        $a3, $v0, .L001EC3E0
    /* ED324 001EC3A4 40702326 */   addiu     $v1, $s1, %lo(D_00187040)
    /* ED328 001EC3A8 78004CC6 */  lwc1       $f12, 0x78($s2)
    /* ED32C 001EC3AC 00008044 */  mtc1       $zero, $f0
    /* ED330 001EC3B0 00000000 */  nop
    /* ED334 001EC3B4 34000C46 */  c.lt.s     $f0, $f12
    /* ED338 001EC3B8 00000000 */  nop
    /* ED33C 001EC3BC 05000045 */  bc1f       .L001EC3D4
    /* ED340 001EC3C0 730206A2 */   sb        $a2, 0x273($s0)
    /* ED344 001EC3C4 26EA070C */  jal        func_001FA898
    /* ED348 001EC3C8 00000000 */   nop
    /* ED34C 001EC3CC 03000010 */  b          .L001EC3DC
    /* ED350 001EC3D0 F40202AE */   sw        $v0, 0x2F4($s0)
.align 2
  .L001EC3D4:
    /* ED354 001EC3D4 28000224 */  addiu      $v0, $zero, 0x28
    /* ED358 001EC3D8 F40202AE */  sw         $v0, 0x2F4($s0)
.align 2
  .L001EC3DC:
    /* ED35C 001EC3DC 40702326 */  addiu      $v1, $s1, %lo(D_00187040)
.align 2
  .L001EC3E0:
    /* ED360 001EC3E0 70026284 */  lh         $v0, 0x270($v1)
    /* ED364 001EC3E4 02004014 */  bnez       $v0, .L001EC3F0
    /* ED368 001EC3E8 02000224 */   addiu     $v0, $zero, 0x2
    /* ED36C 001EC3EC 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L001EC3F0:
    /* ED370 001EC3F0 30005326 */  addiu      $s3, $s2, 0x30
    /* ED374 001EC3F4 44000010 */  b          .L001EC508
    /* ED378 001EC3F8 700262A4 */   sh        $v0, 0x270($v1)
.align 2
  .L001EC3FC:
    /* ED37C 001EC3FC 08008210 */  beq        $a0, $v0, .L001EC420
    /* ED380 001EC400 30004626 */   addiu     $a2, $s2, 0x30
    /* ED384 001EC404 07008350 */  beql       $a0, $v1, .L001EC424
    /* ED388 001EC408 30008326 */   addiu     $v1, $s4, 0x30
    /* ED38C 001EC40C 0400E210 */  beq        $a3, $v0, .L001EC420
    /* ED390 001EC410 06000224 */   addiu     $v0, $zero, 0x6
    /* ED394 001EC414 3B00E254 */  bnel       $a3, $v0, .L001EC504
    /* ED398 001EC418 8E0045A6 */   sh        $a1, 0x8E($s2)
    /* ED39C 001EC41C 30004626 */  addiu      $a2, $s2, 0x30
.align 2
  .L001EC420:
    /* ED3A0 001EC420 30008326 */  addiu      $v1, $s4, 0x30
.align 2
  .L001EC424:
    /* ED3A4 001EC424 00006278 */  lq         $v0, 0x0($v1)
    /* ED3A8 001EC428 0000C27C */  sq         $v0, 0x0($a2)
    /* ED3AC 001EC42C 0000827A */  lq         $v0, 0x0($s4)
    /* ED3B0 001EC430 0000427E */  sq         $v0, 0x0($s2)
    /* ED3B4 001EC434 10004426 */  addiu      $a0, $s2, 0x10
    /* ED3B8 001EC438 10008326 */  addiu      $v1, $s4, 0x10
    /* ED3BC 001EC43C 00006278 */  lq         $v0, 0x0($v1)
    /* ED3C0 001EC440 0000827C */  sq         $v0, 0x0($a0)
    /* ED3C4 001EC444 20004526 */  addiu      $a1, $s2, 0x20
    /* ED3C8 001EC448 20008326 */  addiu      $v1, $s4, 0x20
    /* ED3CC 001EC44C 00006278 */  lq         $v0, 0x0($v1)
    /* ED3D0 001EC450 0000A27C */  sq         $v0, 0x0($a1)
    /* ED3D4 001EC454 02000424 */  addiu      $a0, $zero, 0x2
    /* ED3D8 001EC458 7D0044A2 */  sb         $a0, 0x7D($s2)
    /* ED3DC 001EC45C 05000324 */  addiu      $v1, $zero, 0x5
    /* ED3E0 001EC460 7E008286 */  lh         $v0, 0x7E($s4)
    /* ED3E4 001EC464 04004310 */  beq        $v0, $v1, .L001EC478
    /* ED3E8 001EC468 2D98C000 */   daddu     $s3, $a2, $zero
    /* ED3EC 001EC46C 06000224 */  addiu      $v0, $zero, 0x6
    /* ED3F0 001EC470 2600E214 */  bne        $a3, $v0, .L001EC50C
    /* ED3F4 001EC474 1900103C */   lui       $s0, %hi(D_00189750)
.align 2
  .L001EC478:
    /* ED3F8 001EC478 780041C6 */  lwc1       $f1, 0x78($s2)
    /* ED3FC 001EC47C 40702426 */  addiu      $a0, $s1, %lo(D_00187040)
    /* ED400 001EC480 00008044 */  mtc1       $zero, $f0
    /* ED404 001EC484 00000000 */  nop
    /* ED408 001EC488 34000146 */  c.lt.s     $f0, $f1
    /* ED40C 001EC48C 00000000 */  nop
    /* ED410 001EC490 04000045 */  bc1f       .L001EC4A4
    /* ED414 001EC494 730280A0 */   sb        $zero, 0x273($a0)
    /* ED418 001EC498 880281E4 */  swc1       $f1, 0x288($a0)
    /* ED41C 001EC49C 10000010 */  b          .L001EC4E0
    /* ED420 001EC4A0 940281E4 */   swc1      $f1, 0x294($a0)
.align 2
  .L001EC4A4:
    /* ED424 001EC4A4 933C013C */  lui        $at, (0x3C9374BC >> 16)
    /* ED428 001EC4A8 BC742134 */  ori        $at, $at, (0x3C9374BC & 0xFFFF)
    /* ED42C 001EC4AC 00008144 */  mtc1       $at, $f0
    /* ED430 001EC4B0 01000324 */  addiu      $v1, $zero, 0x1
    /* ED434 001EC4B4 1600023C */  lui        $v0, %hi(D_0015EE84)
    /* ED438 001EC4B8 84EE428C */  lw         $v0, %lo(D_0015EE84)($v0)
    /* ED43C 001EC4BC 880280E4 */  swc1       $f0, 0x288($a0)
    /* ED440 001EC4C0 07004314 */  bne        $v0, $v1, .L001EC4E0
    /* ED444 001EC4C4 940280E4 */   swc1      $f0, 0x294($a0)
    /* ED448 001EC4C8 233C013C */  lui        $at, (0x3C23D70A >> 16)
    /* ED44C 001EC4CC 0AD72134 */  ori        $at, $at, (0x3C23D70A & 0xFFFF)
    /* ED450 001EC4D0 00008144 */  mtc1       $at, $f0
    /* ED454 001EC4D4 00000000 */  nop
    /* ED458 001EC4D8 880280E4 */  swc1       $f0, 0x288($a0)
    /* ED45C 001EC4DC 940280E4 */  swc1       $f0, 0x294($a0)
.align 2
  .L001EC4E0:
    /* ED460 001EC4E0 40702326 */  addiu      $v1, $s1, %lo(D_00187040)
    /* ED464 001EC4E4 70026284 */  lh         $v0, 0x270($v1)
    /* ED468 001EC4E8 04004014 */  bnez       $v0, .L001EC4FC
    /* ED46C 001EC4EC 02000224 */   addiu     $v0, $zero, 0x2
    /* ED470 001EC4F0 01000224 */  addiu      $v0, $zero, 0x1
    /* ED474 001EC4F4 04000010 */  b          .L001EC508
    /* ED478 001EC4F8 700262A4 */   sh        $v0, 0x270($v1)
.align 2
  .L001EC4FC:
    /* ED47C 001EC4FC 02000010 */  b          .L001EC508
    /* ED480 001EC500 700262A4 */   sh        $v0, 0x270($v1)
.align 2
  .L001EC504:
    /* ED484 001EC504 30005326 */  addiu      $s3, $s2, 0x30
.align 2
  .L001EC508:
    /* ED488 001EC508 1900103C */  lui        $s0, %hi(D_00189750)
.align 2
  .L001EC50C:
    /* ED48C 001EC50C 40703526 */  addiu      $s5, $s1, %lo(D_00187040)
    /* ED490 001EC510 50971026 */  addiu      $s0, $s0, %lo(D_00189750)
    /* ED494 001EC514 7E0080A6 */  sh         $zero, 0x7E($s4)
    /* ED498 001EC518 7D0080A2 */  sb         $zero, 0x7D($s4)
    /* ED49C 001EC51C 80FD1126 */  addiu      $s1, $s0, -0x280
    /* ED4A0 001EC520 8E0080A6 */  sh         $zero, 0x8E($s4)
    /* ED4A4 001EC524 2D282002 */  daddu      $a1, $s1, $zero
    /* ED4A8 001EC528 80020624 */  addiu      $a2, $zero, 0x280
    /* ED4AC 001EC52C 2D200002 */  daddu      $a0, $s0, $zero
    /* ED4B0 001EC530 A6E6070C */  jal        func_001F9A98
    /* ED4B4 001EC534 8401B4AE */   sw        $s4, 0x184($s5)
    /* ED4B8 001EC538 8401A28E */  lw         $v0, 0x184($s5)
    /* ED4BC 001EC53C 2D204002 */  daddu      $a0, $s2, $zero
    /* ED4C0 001EC540 700050AC */  sw         $s0, 0x70($v0)
    /* ED4C4 001EC544 8001B2AE */  sw         $s2, 0x180($s5)
    /* ED4C8 001EC548 700051AE */  sw         $s1, 0x70($s2)
    /* ED4CC 001EC54C 9CB0070C */  jal        func_001EC270
    /* ED4D0 001EC550 9803A0AE */   sw        $zero, 0x398($s5)
    /* ED4D4 001EC554 0EB0070C */  jal        func_001EC038
    /* ED4D8 001EC558 00000000 */   nop
    /* ED4DC 001EC55C 1900023C */  lui        $v0, %hi(D_0018C42C)
    /* ED4E0 001EC560 2CC4438C */  lw         $v1, %lo(D_0018C42C)($v0)
    /* ED4E4 001EC564 05006054 */  bnel       $v1, $zero, .L001EC57C
    /* ED4E8 001EC568 300041C6 */   lwc1      $f1, 0x30($s2)
    /* ED4EC 001EC56C 4001A326 */  addiu      $v1, $s5, 0x140
    /* ED4F0 001EC570 0000627A */  lq         $v0, 0x0($s3)
    /* ED4F4 001EC574 0000627C */  sq         $v0, 0x0($v1)
    /* ED4F8 001EC578 300041C6 */  lwc1       $f1, 0x30($s2)
.align 2
  .L001EC57C:
    /* ED4FC 001EC57C 64004226 */  addiu      $v0, $s2, 0x64
    /* ED500 001EC580 6000BF7B */  lq         $ra, 0x60($sp)
    /* ED504 001EC584 640041E6 */  swc1       $f1, 0x64($s2)
    /* ED508 001EC588 5000B57B */  lq         $s5, 0x50($sp)
    /* ED50C 001EC58C 040060C6 */  lwc1       $f0, 0x4($s3)
    /* ED510 001EC590 4000B47B */  lq         $s4, 0x40($sp)
    /* ED514 001EC594 040040E4 */  swc1       $f0, 0x4($v0)
    /* ED518 001EC598 2000B27B */  lq         $s2, 0x20($sp)
    /* ED51C 001EC59C 080061C6 */  lwc1       $f1, 0x8($s3)
    /* ED520 001EC5A0 3000B37B */  lq         $s3, 0x30($sp)
    /* ED524 001EC5A4 1000B17B */  lq         $s1, 0x10($sp)
    /* ED528 001EC5A8 0000B07B */  lq         $s0, 0x0($sp)
    /* ED52C 001EC5AC 080041E4 */  swc1       $f1, 0x8($v0)
    /* ED530 001EC5B0 0800E003 */  jr         $ra
    /* ED534 001EC5B4 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_001EC2B8
