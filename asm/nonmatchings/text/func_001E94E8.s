.align 3
nonmatching func_001E94E8, 0x1D0

glabel func_001E94E8
    /* EA468 001E94E8 E0FEBD27 */  addiu      $sp, $sp, -0x120
    /* EA46C 001E94EC 0001B47F */  sq         $s4, 0x100($sp)
    /* EA470 001E94F0 E000B27F */  sq         $s2, 0xE0($sp)
    /* EA474 001E94F4 2DA0C000 */  daddu      $s4, $a2, $zero
    /* EA478 001E94F8 C000B07F */  sq         $s0, 0xC0($sp)
    /* EA47C 001E94FC 2D90A000 */  daddu      $s2, $a1, $zero
    /* EA480 001E9500 2D808000 */  daddu      $s0, $a0, $zero
    /* EA484 001E9504 D000B17F */  sq         $s1, 0xD0($sp)
    /* EA488 001E9508 1001BF7F */  sq         $ra, 0x110($sp)
    /* EA48C 001E950C 2D88E000 */  daddu      $s1, $a3, $zero
    /* EA490 001E9510 F000B37F */  sq         $s3, 0xF0($sp)
    /* EA494 001E9514 2D20A003 */  daddu      $a0, $sp, $zero
    /* EA498 001E9518 2D280000 */  daddu      $a1, $zero, $zero
    /* EA49C 001E951C 6CE6070C */  jal        func_001F99B0
    /* EA4A0 001E9520 54000624 */   addiu     $a2, $zero, 0x54
    /* EA4A4 001E9524 20000226 */  addiu      $v0, $s0, 0x20
    /* EA4A8 001E9528 1400038E */  lw         $v1, 0x14($s0)
    /* EA4AC 001E952C 0000A2AF */  sw         $v0, 0x0($sp)
    /* EA4B0 001E9530 02006014 */  bnez       $v1, .L001E953C
    /* EA4B4 001E9534 00020224 */   addiu     $v0, $zero, 0x200
    /* EA4B8 001E9538 00040224 */  addiu      $v0, $zero, 0x400
.align 2
  .L001E953C:
    /* EA4BC 001E953C 1400A2AF */  sw         $v0, 0x14($sp)
    /* EA4C0 001E9540 0800048E */  lw         $a0, 0x8($s0)
    /* EA4C4 001E9544 5AE6070C */  jal        func_001F9968
    /* EA4C8 001E9548 039A1100 */   sra       $s3, $s1, 8
    /* EA4CC 001E954C 0C00048E */  lw         $a0, 0xC($s0)
    /* EA4D0 001E9550 5AE6070C */  jal        func_001F9968
    /* EA4D4 001E9554 4C00A2AF */   sw        $v0, 0x4C($sp)
    /* EA4D8 001E9558 0C00068E */  lw         $a2, 0xC($s0)
    /* EA4DC 001E955C 6000B127 */  addiu      $s1, $sp, 0x60
    /* EA4E0 001E9560 0800048E */  lw         $a0, 0x8($s0)
    /* EA4E4 001E9564 002C1300 */  sll        $a1, $s3, 16
    /* EA4E8 001E9568 1400A38F */  lw         $v1, 0x14($sp)
    /* EA4EC 001E956C 2D400000 */  daddu      $t0, $zero, $zero
    /* EA4F0 001E9570 18208600 */  mult       $a0, $a0, $a2
    /* EA4F4 001E9574 14000786 */  lh         $a3, 0x14($s0)
    /* EA4F8 001E9578 20006324 */  addiu      $v1, $v1, 0x20
    /* EA4FC 001E957C 5000A2AF */  sw         $v0, 0x50($sp)
    /* EA500 001E9580 21180302 */  addu       $v1, $s0, $v1
    /* EA504 001E9584 01000624 */  addiu      $a2, $zero, 0x1
    /* EA508 001E9588 0400A3AF */  sw         $v1, 0x4($sp)
    /* EA50C 001E958C 2D480000 */  daddu      $t1, $zero, $zero
    /* EA510 001E9590 1800A4AF */  sw         $a0, 0x18($sp)
    /* EA514 001E9594 10000A24 */  addiu      $t2, $zero, 0x10
    /* EA518 001E9598 10000B24 */  addiu      $t3, $zero, 0x10
    /* EA51C 001E959C 032C0500 */  sra        $a1, $a1, 16
    /* EA520 001E95A0 8C89040C */  jal        func_00122630
    /* EA524 001E95A4 2D202002 */   daddu     $a0, $s1, $zero
    /* EA528 001E95A8 6063040C */  jal        func_00118D80
    /* EA52C 001E95AC 2D200000 */   daddu     $a0, $zero, $zero
    /* EA530 001E95B0 0000A58F */  lw         $a1, 0x0($sp)
    /* EA534 001E95B4 568A040C */  jal        func_00122958
    /* EA538 001E95B8 2D202002 */   daddu     $a0, $s1, $zero
    /* EA53C 001E95BC 2D200000 */  daddu      $a0, $zero, $zero
    /* EA540 001E95C0 1682040C */  jal        func_00120858
    /* EA544 001E95C4 2D280000 */   daddu     $a1, $zero, $zero
    /* EA548 001E95C8 0800038E */  lw         $v1, 0x8($s0)
    /* EA54C 001E95CC 83190300 */  sra        $v1, $v1, 6
    /* EA550 001E95D0 0300601C */  bgtz       $v1, .L001E95E0
    /* EA554 001E95D4 3C00A3AF */   sw        $v1, 0x3C($sp)
    /* EA558 001E95D8 01000224 */  addiu      $v0, $zero, 0x1
    /* EA55C 001E95DC 3C00A2AF */  sw         $v0, 0x3C($sp)
.align 2
  .L001E95E0:
    /* EA560 001E95E0 03121400 */  sra        $v0, $s4, 8
    /* EA564 001E95E4 3C00A687 */  lh         $a2, 0x3C($sp)
    /* EA568 001E95E8 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* EA56C 001E95EC 1B000724 */  addiu      $a3, $zero, 0x1B
    /* EA570 001E95F0 2D400000 */  daddu      $t0, $zero, $zero
    /* EA574 001E95F4 2D480000 */  daddu      $t1, $zero, $zero
    /* EA578 001E95F8 08000A86 */  lh         $t2, 0x8($s0)
    /* EA57C 001E95FC 2D202002 */  daddu      $a0, $s1, $zero
    /* EA580 001E9600 2C00A587 */  lh         $a1, 0x2C($sp)
    /* EA584 001E9604 8C89040C */  jal        func_00122630
    /* EA588 001E9608 0C000B86 */   lh        $t3, 0xC($s0)
    /* EA58C 001E960C 6063040C */  jal        func_00118D80
    /* EA590 001E9610 2D200000 */   daddu     $a0, $zero, $zero
    /* EA594 001E9614 0400A58F */  lw         $a1, 0x4($sp)
    /* EA598 001E9618 568A040C */  jal        func_00122958
    /* EA59C 001E961C 2D202002 */   daddu     $a0, $s1, $zero
    /* EA5A0 001E9620 2D200000 */  daddu      $a0, $zero, $zero
    /* EA5A4 001E9624 1682040C */  jal        func_00120858
    /* EA5A8 001E9628 2D280000 */   daddu     $a1, $zero, $zero
    /* EA5AC 001E962C 3C00A58F */  lw         $a1, 0x3C($sp)
    /* EA5B0 001E9630 B001073C */  lui        $a3, (0x1B00000 >> 16)
    /* EA5B4 001E9634 4C00A38F */  lw         $v1, 0x4C($sp)
    /* EA5B8 001E9638 7C311300 */  dsll32     $a2, $s3, 5
    /* EA5BC 001E963C 2C00A28F */  lw         $v0, 0x2C($sp)
    /* EA5C0 001E9640 B82B0500 */  dsll       $a1, $a1, 14
    /* EA5C4 001E9644 B81E0300 */  dsll       $v1, $v1, 26
    /* EA5C8 001E9648 5000A48F */  lw         $a0, 0x50($sp)
    /* EA5CC 001E964C 25186700 */  or         $v1, $v1, $a3
    /* EA5D0 001E9650 25104500 */  or         $v0, $v0, $a1
    /* EA5D4 001E9654 25104300 */  or         $v0, $v0, $v1
    /* EA5D8 001E9658 1400058E */  lw         $a1, 0x14($s0)
    /* EA5DC 001E965C B8270400 */  dsll       $a0, $a0, 30
    /* EA5E0 001E9660 00800334 */  ori        $v1, $zero, 0x8000
    /* EA5E4 001E9664 F81C0300 */  dsll       $v1, $v1, 19
    /* EA5E8 001E9668 2530C300 */  or         $a2, $a2, $v1
    /* EA5EC 001E966C 25104400 */  or         $v0, $v0, $a0
    /* EA5F0 001E9670 25104600 */  or         $v0, $v0, $a2
    /* EA5F4 001E9674 FC2C0500 */  dsll32     $a1, $a1, 19
    /* EA5F8 001E9678 25104500 */  or         $v0, $v0, $a1
    /* EA5FC 001E967C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* EA600 001E9680 FC1F0300 */  dsll32     $v1, $v1, 31
    /* EA604 001E9684 25104300 */  or         $v0, $v0, $v1
    /* EA608 001E9688 01000424 */  addiu      $a0, $zero, 0x1
    /* EA60C 001E968C 000042FE */  sd         $v0, 0x0($s2)
    /* EA610 001E9690 080044FE */  sd         $a0, 0x8($s2)
    /* EA614 001E9694 100040FE */  sd         $zero, 0x10($s2)
    /* EA618 001E9698 1001BF7B */  lq         $ra, 0x110($sp)
    /* EA61C 001E969C 0001B47B */  lq         $s4, 0x100($sp)
    /* EA620 001E96A0 F000B37B */  lq         $s3, 0xF0($sp)
    /* EA624 001E96A4 E000B27B */  lq         $s2, 0xE0($sp)
    /* EA628 001E96A8 D000B17B */  lq         $s1, 0xD0($sp)
    /* EA62C 001E96AC C000B07B */  lq         $s0, 0xC0($sp)
    /* EA630 001E96B0 0800E003 */  jr         $ra
    /* EA634 001E96B4 2001BD27 */   addiu     $sp, $sp, 0x120
endlabel func_001E94E8
