.align 3
nonmatching func_001EE3B0, 0x31C

glabel func_001EE3B0
    /* EF330 001EE3B0 70FFBD27 */  addiu      $29, $29, -0x90
    /* EF334 001EE3B4 4000B27F */  sq         $18, 0x40($29)
    /* EF338 001EE3B8 2000B07F */  sq         $16, 0x20($29)
    /* EF33C 001EE3BC 8000B8E7 */  swc1       $f24, 0x80($29)
    /* EF340 001EE3C0 2D808000 */  daddu      $16, $4, $0
    /* EF344 001EE3C4 7800B7E7 */  swc1       $f23, 0x78($29)
    /* EF348 001EE3C8 7000B6E7 */  swc1       $f22, 0x70($29)
    /* EF34C 001EE3CC C66D0046 */  mov.s      $f23, $f13
    /* EF350 001EE3D0 6800B5E7 */  swc1       $f21, 0x68($29)
    /* EF354 001EE3D4 86650046 */  mov.s      $f22, $f12
    /* EF358 001EE3D8 5000BF7F */  sq         $31, 0x50($29)
    /* EF35C 001EE3DC 3000B17F */  sq         $17, 0x30($29)
    /* EF360 001EE3E0 6000B4E7 */  swc1       $f20, 0x60($29)
    /* EF364 001EE3E4 2042013C */  lui        $1, (0x42200000 >> 16)
    /* EF368 001EE3E8 00C08144 */  mtc1       $1, $f24
    /* EF36C 001EE3EC 1AD2070C */  jal        func_001F4868
    /* EF370 001EE3F0 1800048E */   lw        $4, 0x18($16)
    /* EF374 001EE3F4 2D904000 */  daddu      $18, $2, $0
    /* EF378 001EE3F8 2C00038E */  lw         $3, 0x2C($16)
    /* EF37C 001EE3FC 01000224 */  addiu      $2, $0, 0x1
    /* EF380 001EE400 2C006210 */  beq        $3, $2, .L001EE4B4
    /* EF384 001EE404 1C0015C6 */   lwc1      $f21, 0x1C($16)
    /* EF388 001EE408 02006228 */  slti       $2, $3, 0x2
    /* EF38C 001EE40C 05004050 */  beql       $2, $0, .L001EE424
    /* EF390 001EE410 02000224 */   addiu     $2, $0, 0x2
    /* EF394 001EE414 07006010 */  beqz       $3, .L001EE434
    /* EF398 001EE418 5000BF7B */   lq        $31, 0x50($29)
    /* EF39C 001EE41C A2000010 */  b          .L001EE6A8
    /* EF3A0 001EE420 4000B27B */   lq        $18, 0x40($29)
.align 2
  .L001EE424:
    /* EF3A4 001EE424 8C006210 */  beq        $3, $2, .L001EE658
    /* EF3A8 001EE428 5000BF7B */   lq        $31, 0x50($29)
    /* EF3AC 001EE42C 9E000010 */  b          .L001EE6A8
    /* EF3B0 001EE430 4000B27B */   lq        $18, 0x40($29)
.align 2
  .L001EE434:
    /* EF3B4 001EE434 26000286 */  lh         $2, 0x26($16)
    /* EF3B8 001EE438 99004018 */  blez       $2, .L001EE6A0
    /* EF3BC 001EE43C 2D880000 */   daddu     $17, $0, $0
    /* EF3C0 001EE440 00A08044 */  mtc1       $0, $f20
    /* EF3C4 001EE444 00000000 */  nop
.align 2
  .L001EE448:
    /* EF3C8 001EE448 10000EC6 */  lwc1       $f14, 0x10($16)
    /* EF3CC 001EE44C FF00073C */  lui        $7, (0xFFFFF3 >> 16)
    /* EF3D0 001EE450 1400088E */  lw         $8, 0x14($16)
    /* EF3D4 001EE454 06AC0046 */  mov.s      $f16, $f21
    /* EF3D8 001EE458 82C30E46 */  mul.s      $f14, $f24, $f14
    /* EF3DC 001EE45C 06B30046 */  mov.s      $f12, $f22
    /* EF3E0 001EE460 46BB0046 */  mov.s      $f13, $f23
    /* EF3E4 001EE464 3F000424 */  addiu      $4, $0, 0x3F
    /* EF3E8 001EE468 3F000524 */  addiu      $5, $0, 0x3F
    /* EF3EC 001EE46C 2D304002 */  daddu      $6, $18, $0
    /* EF3F0 001EE470 F3FFE734 */  ori        $7, $7, (0xFFFFF3 & 0xFFFF)
    /* EF3F4 001EE474 C6730046 */  mov.s      $f15, $f14
    /* EF3F8 001EE478 2D480000 */  daddu      $9, $0, $0
    /* EF3FC 001EE47C 2D500000 */  daddu      $10, $0, $0
    /* EF400 001EE480 46A40046 */  mov.s      $f17, $f20
    /* EF404 001EE484 98D7070C */  jal        func_001F5E60
    /* EF408 001EE488 86A40046 */   mov.s     $f18, $f20
    /* EF40C 001EE48C 01003126 */  addiu      $17, $17, 0x1
    /* EF410 001EE490 28000DC6 */  lwc1       $f13, 0x28($16)
    /* EF414 001EE494 D2E9070C */  jal        func_001FA748
    /* EF418 001EE498 06AB0046 */   mov.s     $f12, $f21
    /* EF41C 001EE49C 26000286 */  lh         $2, 0x26($16)
    /* EF420 001EE4A0 2A102202 */  slt        $2, $17, $2
    /* EF424 001EE4A4 E8FF4014 */  bnez       $2, .L001EE448
    /* EF428 001EE4A8 46050046 */   mov.s     $f21, $f0
    /* EF42C 001EE4AC 7D000010 */  b          .L001EE6A4
    /* EF430 001EE4B0 5000BF7B */   lq        $31, 0x50($29)
.align 2
  .L001EE4B4:
    /* EF434 001EE4B4 00A08044 */  mtc1       $0, $f20
    /* EF438 001EE4B8 EAE7070C */  jal        func_001F9FA8
    /* EF43C 001EE4BC 06AB0046 */   mov.s     $f12, $f21
    /* EF440 001EE4C0 02001846 */  mul.s      $f0, $f0, $f24
    /* EF444 001EE4C4 100001C6 */  lwc1       $f1, 0x10($16)
    /* EF448 001EE4C8 06AB0046 */  mov.s      $f12, $f21
    /* EF44C 001EE4CC 02000146 */  mul.s      $f0, $f0, $f1
    /* EF450 001EE4D0 E4E7070C */  jal        func_001F9F90
    /* EF454 001EE4D4 0000A0E7 */   swc1      $f0, 0x0($29)
    /* EF458 001EE4D8 02001846 */  mul.s      $f0, $f0, $f24
    /* EF45C 001EE4DC 100001C6 */  lwc1       $f1, 0x10($16)
    /* EF460 001EE4E0 06AB0046 */  mov.s      $f12, $f21
    /* EF464 001EE4E4 02000146 */  mul.s      $f0, $f0, $f1
    /* EF468 001EE4E8 E4E7070C */  jal        func_001F9F90
    /* EF46C 001EE4EC 0400A0E7 */   swc1      $f0, 0x4($29)
    /* EF470 001EE4F0 02001846 */  mul.s      $f0, $f0, $f24
    /* EF474 001EE4F4 100001C6 */  lwc1       $f1, 0x10($16)
    /* EF478 001EE4F8 06AB0046 */  mov.s      $f12, $f21
    /* EF47C 001EE4FC 02000146 */  mul.s      $f0, $f0, $f1
    /* EF480 001EE500 EAE7070C */  jal        func_001F9FA8
    /* EF484 001EE504 1000A0E7 */   swc1      $f0, 0x10($29)
    /* EF488 001EE508 47C00046 */  neg.s      $f1, $f24
    /* EF48C 001EE50C 100002C6 */  lwc1       $f2, 0x10($16)
    /* EF490 001EE510 1400088E */  lw         $8, 0x14($16)
    /* EF494 001EE514 FF00073C */  lui        $7, (0xFFFFF3 >> 16)
    /* EF498 001EE518 82131846 */  mul.s      $f14, $f2, $f24
    /* EF49C 001EE51C 06B30046 */  mov.s      $f12, $f22
    /* EF4A0 001EE520 02000146 */  mul.s      $f0, $f0, $f1
    /* EF4A4 001EE524 46BB0046 */  mov.s      $f13, $f23
    /* EF4A8 001EE528 06AC0046 */  mov.s      $f16, $f21
    /* EF4AC 001EE52C 3F000424 */  addiu      $4, $0, 0x3F
    /* EF4B0 001EE530 C6730046 */  mov.s      $f15, $f14
    /* EF4B4 001EE534 3F000524 */  addiu      $5, $0, 0x3F
    /* EF4B8 001EE538 02000246 */  mul.s      $f0, $f0, $f2
    /* EF4BC 001EE53C 2D304002 */  daddu      $6, $18, $0
    /* EF4C0 001EE540 F3FFE734 */  ori        $7, $7, (0xFFFFF3 & 0xFFFF)
    /* EF4C4 001EE544 2D480000 */  daddu      $9, $0, $0
    /* EF4C8 001EE548 2D500000 */  daddu      $10, $0, $0
    /* EF4CC 001EE54C 46A40046 */  mov.s      $f17, $f20
    /* EF4D0 001EE550 1400A0E7 */  swc1       $f0, 0x14($29)
    /* EF4D4 001EE554 98D7070C */  jal        func_001F5E60
    /* EF4D8 001EE558 86A40046 */   mov.s     $f18, $f20
    /* EF4DC 001EE55C 10000EC6 */  lwc1       $f14, 0x10($16)
    /* EF4E0 001EE560 FF00073C */  lui        $7, (0xFFFFF3 >> 16)
    /* EF4E4 001EE564 1000ACC7 */  lwc1       $f12, 0x10($29)
    /* EF4E8 001EE568 06AC0046 */  mov.s      $f16, $f21
    /* EF4EC 001EE56C 1400ADC7 */  lwc1       $f13, 0x14($29)
    /* EF4F0 001EE570 82731846 */  mul.s      $f14, $f14, $f24
    /* EF4F4 001EE574 00B30C46 */  add.s      $f12, $f22, $f12
    /* EF4F8 001EE578 1400088E */  lw         $8, 0x14($16)
    /* EF4FC 001EE57C 40BB0D46 */  add.s      $f13, $f23, $f13
    /* EF500 001EE580 3F000424 */  addiu      $4, $0, 0x3F
    /* EF504 001EE584 C6730046 */  mov.s      $f15, $f14
    /* EF508 001EE588 3F000524 */  addiu      $5, $0, 0x3F
    /* EF50C 001EE58C 2D304002 */  daddu      $6, $18, $0
    /* EF510 001EE590 F3FFE734 */  ori        $7, $7, (0xFFFFF3 & 0xFFFF)
    /* EF514 001EE594 01000924 */  addiu      $9, $0, 0x1
    /* EF518 001EE598 2D500000 */  daddu      $10, $0, $0
    /* EF51C 001EE59C 46A40046 */  mov.s      $f17, $f20
    /* EF520 001EE5A0 98D7070C */  jal        func_001F5E60
    /* EF524 001EE5A4 86A40046 */   mov.s     $f18, $f20
    /* EF528 001EE5A8 10000EC6 */  lwc1       $f14, 0x10($16)
    /* EF52C 001EE5AC FF00073C */  lui        $7, (0xFFFFF3 >> 16)
    /* EF530 001EE5B0 0000ACC7 */  lwc1       $f12, 0x0($29)
    /* EF534 001EE5B4 06AC0046 */  mov.s      $f16, $f21
    /* EF538 001EE5B8 0400ADC7 */  lwc1       $f13, 0x4($29)
    /* EF53C 001EE5BC 82731846 */  mul.s      $f14, $f14, $f24
    /* EF540 001EE5C0 01B30C46 */  sub.s      $f12, $f22, $f12
    /* EF544 001EE5C4 1400088E */  lw         $8, 0x14($16)
    /* EF548 001EE5C8 41BB0D46 */  sub.s      $f13, $f23, $f13
    /* EF54C 001EE5CC 3F000424 */  addiu      $4, $0, 0x3F
    /* EF550 001EE5D0 C6730046 */  mov.s      $f15, $f14
    /* EF554 001EE5D4 3F000524 */  addiu      $5, $0, 0x3F
    /* EF558 001EE5D8 2D304002 */  daddu      $6, $18, $0
    /* EF55C 001EE5DC F3FFE734 */  ori        $7, $7, (0xFFFFF3 & 0xFFFF)
    /* EF560 001EE5E0 2D480000 */  daddu      $9, $0, $0
    /* EF564 001EE5E4 01000A24 */  addiu      $10, $0, 0x1
    /* EF568 001EE5E8 46A40046 */  mov.s      $f17, $f20
    /* EF56C 001EE5EC 98D7070C */  jal        func_001F5E60
    /* EF570 001EE5F0 86A40046 */   mov.s     $f18, $f20
    /* EF574 001EE5F4 1000ACC7 */  lwc1       $f12, 0x10($29)
    /* EF578 001EE5F8 46A40046 */  mov.s      $f17, $f20
    /* EF57C 001EE5FC 1400ADC7 */  lwc1       $f13, 0x14($29)
    /* EF580 001EE600 FF00073C */  lui        $7, (0xFFFFF3 >> 16)
    /* EF584 001EE604 10000EC6 */  lwc1       $f14, 0x10($16)
    /* EF588 001EE608 00B30C46 */  add.s      $f12, $f22, $f12
    /* EF58C 001EE60C 40BB0D46 */  add.s      $f13, $f23, $f13
    /* EF590 001EE610 0000A0C7 */  lwc1       $f0, 0x0($29)
    /* EF594 001EE614 0400A1C7 */  lwc1       $f1, 0x4($29)
    /* EF598 001EE618 82731846 */  mul.s      $f14, $f14, $f24
    /* EF59C 001EE61C 01630046 */  sub.s      $f12, $f12, $f0
    /* EF5A0 001EE620 1400088E */  lw         $8, 0x14($16)
    /* EF5A4 001EE624 416B0146 */  sub.s      $f13, $f13, $f1
    /* EF5A8 001EE628 06AC0046 */  mov.s      $f16, $f21
    /* EF5AC 001EE62C 2D304002 */  daddu      $6, $18, $0
    /* EF5B0 001EE630 C6730046 */  mov.s      $f15, $f14
    /* EF5B4 001EE634 3F000424 */  addiu      $4, $0, 0x3F
    /* EF5B8 001EE638 3F000524 */  addiu      $5, $0, 0x3F
    /* EF5BC 001EE63C F3FFE734 */  ori        $7, $7, (0xFFFFF3 & 0xFFFF)
    /* EF5C0 001EE640 01000924 */  addiu      $9, $0, 0x1
    /* EF5C4 001EE644 01000A24 */  addiu      $10, $0, 0x1
    /* EF5C8 001EE648 98D7070C */  jal        func_001F5E60
    /* EF5CC 001EE64C 868C0046 */   mov.s     $f18, $f17
    /* EF5D0 001EE650 14000010 */  b          .L001EE6A4
    /* EF5D4 001EE654 5000BF7B */   lq        $31, 0x50($29)
.align 2
  .L001EE658:
    /* EF5D8 001EE658 10000EC6 */  lwc1       $f14, 0x10($16)
    /* EF5DC 001EE65C FF00073C */  lui        $7, (0xFFFFF3 >> 16)
    /* EF5E0 001EE660 003F013C */  lui        $1, (0x3F000000 >> 16)
    /* EF5E4 001EE664 00888144 */  mtc1       $1, $f17
    /* EF5E8 001EE668 06B30046 */  mov.s      $f12, $f22
    /* EF5EC 001EE66C 82731846 */  mul.s      $f14, $f14, $f24
    /* EF5F0 001EE670 1400088E */  lw         $8, 0x14($16)
    /* EF5F4 001EE674 46BB0046 */  mov.s      $f13, $f23
    /* EF5F8 001EE678 06AC0046 */  mov.s      $f16, $f21
    /* EF5FC 001EE67C 2D304002 */  daddu      $6, $18, $0
    /* EF600 001EE680 3F000424 */  addiu      $4, $0, 0x3F
    /* EF604 001EE684 C6730046 */  mov.s      $f15, $f14
    /* EF608 001EE688 3F000524 */  addiu      $5, $0, 0x3F
    /* EF60C 001EE68C F3FFE734 */  ori        $7, $7, (0xFFFFF3 & 0xFFFF)
    /* EF610 001EE690 2D480000 */  daddu      $9, $0, $0
    /* EF614 001EE694 2D500000 */  daddu      $10, $0, $0
    /* EF618 001EE698 98D7070C */  jal        func_001F5E60
    /* EF61C 001EE69C 868C0046 */   mov.s     $f18, $f17
.align 2
  .L001EE6A0:
    /* EF620 001EE6A0 5000BF7B */  lq         $31, 0x50($29)
.align 2
  .L001EE6A4:
    /* EF624 001EE6A4 4000B27B */  lq         $18, 0x40($29)
.align 2
  .L001EE6A8:
    /* EF628 001EE6A8 3000B17B */  lq         $17, 0x30($29)
    /* EF62C 001EE6AC 2000B07B */  lq         $16, 0x20($29)
    /* EF630 001EE6B0 8000B8C7 */  lwc1       $f24, 0x80($29)
    /* EF634 001EE6B4 7800B7C7 */  lwc1       $f23, 0x78($29)
    /* EF638 001EE6B8 7000B6C7 */  lwc1       $f22, 0x70($29)
    /* EF63C 001EE6BC 6800B5C7 */  lwc1       $f21, 0x68($29)
    /* EF640 001EE6C0 6000B4C7 */  lwc1       $f20, 0x60($29)
    /* EF644 001EE6C4 0800E003 */  jr         $31
    /* EF648 001EE6C8 9000BD27 */   addiu     $29, $29, 0x90
endlabel func_001EE3B0
    /* EF64C 001EE6CC 00000000 */  nop
