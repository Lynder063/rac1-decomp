.align 3
nonmatching func_001FE588, 0x134

glabel func_001FE588
    /* FF508 001FE588 A0FFBD27 */  addiu      $29, $29, -0x60
    /* FF50C 001FE58C 1A00023C */  lui        $2, %hi(D_001997D0)
    /* FF510 001FE590 01000524 */  addiu      $5, $0, 0x1
    /* FF514 001FE594 3000B07F */  sq         $16, 0x30($29)
    /* FF518 001FE598 5000BF7F */  sq         $31, 0x50($29)
    /* FF51C 001FE59C D0974324 */  addiu      $3, $2, %lo(D_001997D0)
    /* FF520 001FE5A0 4000B17F */  sq         $17, 0x40($29)
    /* FF524 001FE5A4 2D804000 */  daddu      $16, $2, $0
    /* FF528 001FE5A8 1600043C */  lui        $4, %hi(D_0015EF1D)
    /* FF52C 001FE5AC 1DEF8490 */  lbu        $4, %lo(D_0015EF1D)($4)
    /* FF530 001FE5B0 D09745AC */  sw         $5, %lo(D_001997D0)($2)
    /* FF534 001FE5B4 05008014 */  bnez       $4, .L001FE5CC
    /* FF538 001FE5B8 040060AC */   sw        $0, 0x4($3)
    /* FF53C 001FE5BC 1600023C */  lui        $2, %hi(D_0015EF1C)
    /* FF540 001FE5C0 1CEF4290 */  lbu        $2, %lo(D_0015EF1C)($2)
    /* FF544 001FE5C4 06004010 */  beqz       $2, .L001FE5E0
    /* FF548 001FE5C8 D0971126 */   addiu     $17, $16, %lo(D_001997D0)
.align 2
  .L001FE5CC:
    /* FF54C 001FE5CC 2D200000 */  daddu      $4, $0, $0
    /* FF550 001FE5D0 01000524 */  addiu      $5, $0, 0x1
    /* FF554 001FE5D4 8ABB080C */  jal        func_0022EE28
    /* FF558 001FE5D8 2D300000 */   daddu     $6, $0, $0
    /* FF55C 001FE5DC D0971126 */  addiu      $17, $16, %lo(D_001997D0)
.align 2
  .L001FE5E0:
    /* FF560 001FE5E0 1600033C */  lui        $3, %hi(D_0015F780)
    /* FF564 001FE5E4 80F7638C */  lw         $3, %lo(D_0015F780)($3)
    /* FF568 001FE5E8 2000228E */  lw         $2, 0x20($17)
    /* FF56C 001FE5EC 07000924 */  addiu      $9, $0, 0x7
    /* FF570 001FE5F0 1000A427 */  addiu      $4, $29, 0x10
    /* FF574 001FE5F4 D4010824 */  addiu      $8, $0, 0x1D4
    /* FF578 001FE5F8 00110200 */  sll        $2, $2, 4
    /* FF57C 001FE5FC 68010A24 */  addiu      $10, $0, 0x168
    /* FF580 001FE600 21104300 */  addu       $2, $2, $3
    /* FF584 001FE604 F0000524 */  addiu      $5, $0, 0xF0
    /* FF588 001FE608 0000508C */  lw         $16, 0x0($2)
    /* FF58C 001FE60C E0010624 */  addiu      $6, $0, 0x1E0
    /* FF590 001FE610 0000A9AF */  sw         $9, 0x0($29)
    /* FF594 001FE614 2C000724 */  addiu      $7, $0, 0x2C
    /* FF598 001FE618 00010924 */  addiu      $9, $0, 0x100
    /* FF59C 001FE61C 92DD070C */  jal        func_001F7648
    /* FF5A0 001FE620 10000B24 */   addiu     $11, $0, 0x10
    /* FF5A4 001FE624 2D300002 */  daddu      $6, $16, $0
    /* FF5A8 001FE628 1000A427 */  addiu      $4, $29, 0x10
    /* FF5AC 001FE62C FF800534 */  ori        $5, $0, 0x80FF
    /* FF5B0 001FE630 382C0500 */  dsll       $5, $5, 16
    /* FF5B4 001FE634 88A8A534 */  ori        $5, $5, 0xA888
    /* FF5B8 001FE638 74DD070C */  jal        func_001F75D0
    /* FF5BC 001FE63C FFFF0724 */   addiu     $7, $0, -0x1
    /* FF5C0 001FE640 1400023C */  lui        $2, %hi(D_0013E604)
    /* FF5C4 001FE644 1E00A397 */  lhu        $3, 0x1E($29)
    /* FF5C8 001FE648 04E6498C */  lw         $9, %lo(D_0013E604)($2)
    /* FF5CC 001FE64C 08000824 */  addiu      $8, $0, 0x8
    /* FF5D0 001FE650 1C00A297 */  lhu        $2, 0x1C($29)
    /* FF5D4 001FE654 001C0300 */  sll        $3, $3, 16
    /* FF5D8 001FE658 43540300 */  sra        $10, $3, 17
    /* FF5DC 001FE65C C4FF2725 */  addiu      $7, $9, -0x3C
    /* FF5E0 001FE660 00140200 */  sll        $2, $2, 16
    /* FF5E4 001FE664 05004625 */  addiu      $6, $10, 0x5
    /* FF5E8 001FE668 43140200 */  sra        $2, $2, 17
    /* FF5EC 001FE66C 2128E600 */  addu       $5, $7, $6
    /* FF5F0 001FE670 0A004224 */  addiu      $2, $2, 0xA
    /* FF5F4 001FE674 00010424 */  addiu      $4, $0, 0x100
    /* FF5F8 001FE678 F4FF2325 */  addiu      $3, $9, -0xC
    /* FF5FC 001FE67C 080022AE */  sw         $2, 0x8($17)
    /* FF600 001FE680 2A186500 */  slt        $3, $3, $5
    /* FF604 001FE684 100024AE */  sw         $4, 0x10($17)
    /* FF608 001FE688 1C0028AE */  sw         $8, 0x1C($17)
    /* FF60C 001FE68C 0C0026AE */  sw         $6, 0xC($17)
    /* FF610 001FE690 180028AE */  sw         $8, 0x18($17)
    /* FF614 001FE694 04006010 */  beqz       $3, .L001FE6A8
    /* FF618 001FE698 140027AE */   sw        $7, 0x14($17)
    /* FF61C 001FE69C 11004225 */  addiu      $2, $10, 0x11
    /* FF620 001FE6A0 23102201 */  subu       $2, $9, $2
    /* FF624 001FE6A4 140022AE */  sw         $2, 0x14($17)
.align 2
  .L001FE6A8:
    /* FF628 001FE6A8 5000BF7B */  lq         $31, 0x50($29)
    /* FF62C 001FE6AC 4000B17B */  lq         $17, 0x40($29)
    /* FF630 001FE6B0 3000B07B */  lq         $16, 0x30($29)
    /* FF634 001FE6B4 0800E003 */  jr         $31
    /* FF638 001FE6B8 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_001FE588
    /* FF63C 001FE6BC 00000000 */  nop
