.align 3
nonmatching func_001FB498, 0x94

glabel func_001FB498
    /* FC418 001FB498 F0FFBD27 */  addiu      $29, $29, -0x10
    /* FC41C 001FB49C 1600043C */  lui        $4, %hi(D_00161000)
    /* FC420 001FB4A0 0010848C */  lw         $4, %lo(D_00161000)($4)
    /* FC424 001FB4A4 1A008010 */  beqz       $4, .L001FB510
    /* FC428 001FB4A8 0000BF7F */   sq        $31, 0x0($29)
    /* FC42C 001FB4AC 0030023C */  lui        $2, (0x30000009 >> 16)
    /* FC430 001FB4B0 FF0F033C */  lui        $3, (0xFFFFFFF >> 16)
    /* FC434 001FB4B4 09004234 */  ori        $2, $2, (0x30000009 & 0xFFFF)
    /* FC438 001FB4B8 FFFF6334 */  ori        $3, $3, (0xFFFFFFF & 0xFFFF)
    /* FC43C 001FB4BC 000082AC */  sw         $2, 0x0($4)
    /* FC440 001FB4C0 0050053C */  lui        $5, (0x50000009 >> 16)
    /* FC444 001FB4C4 0900A534 */  ori        $5, $5, (0x50000009 & 0xFFFF)
    /* FC448 001FB4C8 1600023C */  lui        $2, %hi(D_0015EFB8)
    /* FC44C 001FB4CC B8EF428C */  lw         $2, %lo(D_0015EFB8)($2)
    /* FC450 001FB4D0 1600043C */  lui        $4, %hi(D_00161000)
    /* FC454 001FB4D4 0010848C */  lw         $4, %lo(D_00161000)($4)
    /* FC458 001FB4D8 30004224 */  addiu      $2, $2, 0x30
    /* FC45C 001FB4DC 24104300 */  and        $2, $2, $3
    /* FC460 001FB4E0 040082AC */  sw         $2, 0x4($4)
    /* FC464 001FB4E4 1600033C */  lui        $3, %hi(D_00161000)
    /* FC468 001FB4E8 0010638C */  lw         $3, %lo(D_00161000)($3)
    /* FC46C 001FB4EC 080060AC */  sw         $0, 0x8($3)
    /* FC470 001FB4F0 1600043C */  lui        $4, %hi(D_00161000)
    /* FC474 001FB4F4 0010848C */  lw         $4, %lo(D_00161000)($4)
    /* FC478 001FB4F8 0C0085AC */  sw         $5, 0xC($4)
    /* FC47C 001FB4FC 1600023C */  lui        $2, %hi(D_00161000)
    /* FC480 001FB500 0010428C */  lw         $2, %lo(D_00161000)($2)
    /* FC484 001FB504 10004224 */  addiu      $2, $2, 0x10
    /* FC488 001FB508 05000010 */  b          .L001FB520
    /* FC48C 001FB50C 00A382AF */   sw        $2, -0x5D00($28)
.align 2
  .L001FB510:
    /* FC490 001FB510 1600043C */  lui        $4, %hi(D_0015EFB8)
    /* FC494 001FB514 B8EF848C */  lw         $4, %lo(D_0015EFB8)($4)
    /* FC498 001FB518 2C89040C */  jal        func_001224B0
    /* FC49C 001FB51C 30008424 */   addiu     $4, $4, 0x30
.align 2
  .L001FB520:
    /* FC4A0 001FB520 0000BF7B */  lq         $31, 0x0($29)
    /* FC4A4 001FB524 0800E003 */  jr         $31
    /* FC4A8 001FB528 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_001FB498
    /* FC4AC 001FB52C 00000000 */  nop
