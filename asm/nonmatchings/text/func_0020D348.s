.align 3
nonmatching func_0020D348, 0xF8

glabel func_0020D348
    /* 10E2C8 0020D348 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 10E2CC 0020D34C 1600023C */  lui        $v0, %hi(D_00160020)
    /* 10E2D0 0020D350 2000428C */  lw         $v0, %lo(D_00160020)($v0)
    /* 10E2D4 0020D354 0000B07F */  sq         $s0, 0x0($sp)
    /* 10E2D8 0020D358 2D308000 */  daddu      $a2, $a0, $zero
    /* 10E2DC 0020D35C 1600103C */  lui        $s0, %hi(D_0016001C)
    /* 10E2E0 0020D360 1C00108E */  lw         $s0, %lo(D_0016001C)($s0)
    /* 10E2E4 0020D364 2D284000 */  daddu      $a1, $v0, $zero
    /* 10E2E8 0020D368 2B100202 */  sltu       $v0, $s0, $v0
    /* 10E2EC 0020D36C 2A004010 */  beqz       $v0, .L0020D418
    /* 10E2F0 0020D370 1000BF7F */   sq        $ra, 0x10($sp)
    /* 10E2F4 0020D374 FF000724 */  addiu      $a3, $zero, 0xFF
    /* 10E2F8 0020D378 20000492 */  lbu        $a0, 0x20($s0)
    /* 10E2FC 0020D37C 00000000 */  nop
.align 2
  .L0020D380:
    /* 10E300 0020D380 FE00822C */  sltiu      $v0, $a0, 0xFE
    /* 10E304 0020D384 21004054 */  bnel       $v0, $zero, .L0020D40C
    /* 10E308 0020D388 00011026 */   addiu     $s0, $s0, 0x100
    /* 10E30C 0020D38C 1600023C */  lui        $v0, %hi(D_0015F6F0)
    /* 10E310 0020D390 F0F6429C */  lwu        $v0, %lo(D_0015F6F0)($v0)
    /* 10E314 0020D394 380003DE */  ld         $v1, 0x38($s0)
    /* 10E318 0020D398 2B104300 */  sltu       $v0, $v0, $v1
    /* 10E31C 0020D39C 1B004054 */  bnel       $v0, $zero, .L0020D40C
    /* 10E320 0020D3A0 00011026 */   addiu     $s0, $s0, 0x100
    /* 10E324 0020D3A4 01008750 */  beql       $a0, $a3, .L0020D3AC
    /* 10E328 0020D3A8 200104A2 */   sb        $a0, 0x120($s0)
.align 2
  .L0020D3AC:
    /* 10E32C 0020D3AC 2D28C000 */  daddu      $a1, $a2, $zero
    /* 10E330 0020D3B0 1035080C */  jal        func_0020D440
    /* 10E334 0020D3B4 2D200002 */   daddu     $a0, $s0, $zero
    /* 10E338 0020D3B8 1600023C */  lui        $v0, %hi(D_0016001C)
    /* 10E33C 0020D3BC 1C00428C */  lw         $v0, %lo(D_0016001C)($v0)
    /* 10E340 0020D3C0 2D280000 */  daddu      $a1, $zero, $zero
    /* 10E344 0020D3C4 1600033C */  lui        $v1, %hi(D_00160028)
    /* 10E348 0020D3C8 2800638C */  lw         $v1, %lo(D_00160028)($v1)
    /* 10E34C 0020D3CC 80000624 */  addiu      $a2, $zero, 0x80
    /* 10E350 0020D3D0 23100202 */  subu       $v0, $s0, $v0
    /* 10E354 0020D3D4 03120200 */  sra        $v0, $v0, 8
    /* 10E358 0020D3D8 C0110200 */  sll        $v0, $v0, 7
    /* 10E35C 0020D3DC 21186200 */  addu       $v1, $v1, $v0
    /* 10E360 0020D3E0 2D206000 */  daddu      $a0, $v1, $zero
    /* 10E364 0020D3E4 6CE6070C */  jal        func_001F99B0
    /* 10E368 0020D3E8 780003AE */   sw        $v1, 0x78($s0)
    /* 10E36C 0020D3EC 1600023C */  lui        $v0, %hi(D_0015FFFC)
    /* 10E370 0020D3F0 FCFF428C */  lw         $v0, %lo(D_0015FFFC)($v0)
    /* 10E374 0020D3F4 03004010 */  beqz       $v0, .L0020D404
    /* 10E378 0020D3F8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 10E37C 0020D3FC 1600013C */  lui        $at, %hi(D_0015FFFC)
    /* 10E380 0020D400 FCFF22AC */  sw         $v0, %lo(D_0015FFFC)($at)
.align 2
  .L0020D404:
    /* 10E384 0020D404 0A000010 */  b          .L0020D430
    /* 10E388 0020D408 2D100002 */   daddu     $v0, $s0, $zero
.align 2
  .L0020D40C:
    /* 10E38C 0020D40C 2B100502 */  sltu       $v0, $s0, $a1
    /* 10E390 0020D410 DBFF4054 */  bnel       $v0, $zero, .L0020D380
    /* 10E394 0020D414 20000492 */   lbu       $a0, 0x20($s0)
.align 2
  .L0020D418:
    /* 10E398 0020D418 1F00043C */  lui        $a0, %hi(D_001E86F0)
    /* 10E39C 0020D41C 1600053C */  lui        $a1, %hi(D_0015F6F0)
    /* 10E3A0 0020D420 F0F6A58C */  lw         $a1, %lo(D_0015F6F0)($a1)
    /* 10E3A4 0020D424 CCA5070C */  jal        func_001E9730
    /* 10E3A8 0020D428 F0868424 */   addiu     $a0, $a0, %lo(D_001E86F0)
    /* 10E3AC 0020D42C 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0020D430:
    /* 10E3B0 0020D430 1000BF7B */  lq         $ra, 0x10($sp)
    /* 10E3B4 0020D434 0000B07B */  lq         $s0, 0x0($sp)
    /* 10E3B8 0020D438 0800E003 */  jr         $ra
    /* 10E3BC 0020D43C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0020D348
