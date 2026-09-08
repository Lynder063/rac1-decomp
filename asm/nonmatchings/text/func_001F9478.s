.align 3
nonmatching func_001F9478, 0x398

glabel func_001F9478
    /* FA3F8 001F9478 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* FA3FC 001F947C 42000424 */  addiu      $a0, $zero, 0x42
    /* FA400 001F9480 A000BE7F */  sq         $fp, 0xA0($sp)
    /* FA404 001F9484 00800534 */  ori        $a1, $zero, 0x8000
    /* FA408 001F9488 382E0500 */  dsll       $a1, $a1, 24
    /* FA40C 001F948C 4800A534 */  ori        $a1, $a1, 0x48
    /* FA410 001F9490 9000B77F */  sq         $s7, 0x90($sp)
    /* FA414 001F9494 8000B67F */  sq         $s6, 0x80($sp)
    /* FA418 001F9498 00801734 */  ori        $s7, $zero, 0x8000
    /* FA41C 001F949C 7000B57F */  sq         $s5, 0x70($sp)
    /* FA420 001F94A0 D000B6E7 */  swc1       $f22, 0xD0($sp)
    /* FA424 001F94A4 2DA80000 */  daddu      $s5, $zero, $zero
    /* FA428 001F94A8 B000BF7F */  sq         $ra, 0xB0($sp)
    /* FA42C 001F94AC 6000B47F */  sq         $s4, 0x60($sp)
    /* FA430 001F94B0 5000B37F */  sq         $s3, 0x50($sp)
    /* FA434 001F94B4 4000B27F */  sq         $s2, 0x40($sp)
    /* FA438 001F94B8 3000B17F */  sq         $s1, 0x30($sp)
    /* FA43C 001F94BC 2000B07F */  sq         $s0, 0x20($sp)
    /* FA440 001F94C0 C800B5E7 */  swc1       $f21, 0xC8($sp)
    /* FA444 001F94C4 26D3080C */  jal        func_00234C98
    /* FA448 001F94C8 C000B4E7 */   swc1      $f20, 0xC0($sp)
    /* FA44C 001F94CC 8041013C */  lui        $at, (0x41800000 >> 16)
    /* FA450 001F94D0 00B08144 */  mtc1       $at, $f22
    /* FA454 001F94D4 1900033C */  lui        $v1, %hi(D_0018CE00)
    /* FA458 001F94D8 1000B627 */  addiu      $s6, $sp, 0x10
    /* FA45C 001F94DC 00CE7E24 */  addiu      $fp, $v1, %lo(D_0018CE00)
    /* FA460 001F94E0 1900033C */  lui        $v1, %hi(D_0018EE00)
    /* FA464 001F94E4 00000000 */  nop
.align 2
  .L001F94E8:
    /* FA468 001F94E8 00EE6224 */  addiu      $v0, $v1, %lo(D_0018EE00)
    /* FA46C 001F94EC 40191500 */  sll        $v1, $s5, 5
    /* FA470 001F94F0 21906200 */  addu       $s2, $v1, $v0
    /* FA474 001F94F4 10004486 */  lh         $a0, 0x10($s2)
    /* FA478 001F94F8 AD008018 */  blez       $a0, .L001F97B0
    /* FA47C 001F94FC 2D20A003 */   daddu     $a0, $sp, $zero
    /* FA480 001F9500 1800063C */  lui        $a2, %hi(D_00187180)
    /* FA484 001F9504 8071C624 */  addiu      $a2, $a2, %lo(D_00187180)
    /* FA488 001F9508 FCE6070C */  jal        func_001F9BF0
    /* FA48C 001F950C 2D284002 */   daddu     $a1, $s2, $zero
    /* FA490 001F9510 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FA494 001F9514 00008144 */  mtc1       $at, $f0
    /* FA498 001F9518 2D20A003 */  daddu      $a0, $sp, $zero
    /* FA49C 001F951C 2EE7070C */  jal        func_001F9CB8
    /* FA4A0 001F9520 0C00A0E7 */   swc1      $f0, 0xC($sp)
    /* FA4A4 001F9524 8044013C */  lui        $at, (0x44800000 >> 16)
    /* FA4A8 001F9528 00608144 */  mtc1       $at, $f12
    /* FA4AC 001F952C 2D20A003 */  daddu      $a0, $sp, $zero
    /* FA4B0 001F9530 2D28A003 */  daddu      $a1, $sp, $zero
    /* FA4B4 001F9534 0CE7070C */  jal        func_001F9C30
    /* FA4B8 001F9538 46050046 */   mov.s     $f21, $f0
    /* FA4BC 001F953C 1800023C */  lui        $v0, %hi(D_00187180)
    /* FA4C0 001F9540 2D20A003 */  daddu      $a0, $sp, $zero
    /* FA4C4 001F9544 80714224 */  addiu      $v0, $v0, %lo(D_00187180)
    /* FA4C8 001F9548 2D28A003 */  daddu      $a1, $sp, $zero
    /* FA4CC 001F954C BAE7070C */  jal        func_001F9EE8
    /* FA4D0 001F9550 00FF4624 */   addiu     $a2, $v0, -0x100
    /* FA4D4 001F9554 1900063C */  lui        $a2, %hi(D_0018CF80)
    /* FA4D8 001F9558 2D20C002 */  daddu      $a0, $s6, $zero
    /* FA4DC 001F955C 80CFC624 */  addiu      $a2, $a2, %lo(D_0018CF80)
    /* FA4E0 001F9560 18E7070C */  jal        func_001F9C60
    /* FA4E4 001F9564 2D28A003 */   daddu     $a1, $sp, $zero
    /* FA4E8 001F9568 C8E6070C */  jal        func_001F9B20
    /* FA4EC 001F956C 2D20C002 */   daddu     $a0, $s6, $zero
    /* FA4F0 001F9570 06004010 */  beqz       $v0, .L001F958C
    /* FA4F4 001F9574 2D204002 */   daddu     $a0, $s2, $zero
    /* FA4F8 001F9578 2D280000 */  daddu      $a1, $zero, $zero
    /* FA4FC 001F957C 6CE6070C */  jal        func_001F99B0
    /* FA500 001F9580 20000624 */   addiu     $a2, $zero, 0x20
    /* FA504 001F9584 8B000010 */  b          .L001F97B4
    /* FA508 001F9588 0100B526 */   addiu     $s5, $s5, 0x1
.align 2
  .L001F958C:
    /* FA50C 001F958C 0C00A0C7 */  lwc1       $f0, 0xC($sp)
    /* FA510 001F9590 2D20A003 */  daddu      $a0, $sp, $zero
    /* FA514 001F9594 1002CCC7 */  lwc1       $f12, 0x210($fp)
    /* FA518 001F9598 2D28A003 */  daddu      $a1, $sp, $zero
    /* FA51C 001F959C 0CE7070C */  jal        func_001F9C30
    /* FA520 001F95A0 03630046 */   div.s     $f12, $f12, $f0
    /* FA524 001F95A4 0000ACC7 */  lwc1       $f12, 0x0($sp)
    /* FA528 001F95A8 8000033C */  lui        $v1, (0x808080 >> 16)
    /* FA52C 001F95AC 12004286 */  lh         $v0, 0x12($s2)
    /* FA530 001F95B0 80806334 */  ori        $v1, $v1, (0x808080 & 0xFFFF)
    /* FA534 001F95B4 02631646 */  mul.s      $f12, $f12, $f22
    /* FA538 001F95B8 00160200 */  sll        $v0, $v0, 24
    /* FA53C 001F95BC 26EA070C */  jal        func_001FA898
    /* FA540 001F95C0 25A04300 */   or        $s4, $v0, $v1
    /* FA544 001F95C4 0400ACC7 */  lwc1       $f12, 0x4($sp)
    /* FA548 001F95C8 21885700 */  addu       $s1, $v0, $s7
    /* FA54C 001F95CC 26EA070C */  jal        func_001FA898
    /* FA550 001F95D0 02631646 */   mul.s     $f12, $f12, $f22
    /* FA554 001F95D4 7F3F013C */  lui        $at, (0x3F7FEC57 >> 16)
    /* FA558 001F95D8 57EC2134 */  ori        $at, $at, (0x3F7FEC57 & 0xFFFF)
    /* FA55C 001F95DC 00008144 */  mtc1       $at, $f0
    /* FA560 001F95E0 21805700 */  addu       $s0, $v0, $s7
    /* FA564 001F95E4 0800ACC7 */  lwc1       $f12, 0x8($sp)
    /* FA568 001F95E8 A801C1C7 */  lwc1       $f1, 0x1A8($fp)
    /* FA56C 001F95EC 02630046 */  mul.s      $f12, $f12, $f0
    /* FA570 001F95F0 26EA070C */  jal        func_001FA898
    /* FA574 001F95F4 00630146 */   add.s     $f12, $f12, $f1
    /* FA578 001F95F8 9041013C */  lui        $at, (0x41900000 >> 16)
    /* FA57C 001F95FC 00008144 */  mtc1       $at, $f0
    /* FA580 001F9600 3C100200 */  dsll32     $v0, $v0, 0
    /* FA584 001F9604 38841000 */  dsll       $s0, $s0, 16
    /* FA588 001F9608 34001546 */  c.lt.s     $f0, $f21
    /* FA58C 001F960C 25105000 */  or         $v0, $v0, $s0
    /* FA590 001F9610 08000145 */  bc1t       .L001F9634
    /* FA594 001F9614 25985100 */   or        $s3, $v0, $s1
    /* FA598 001F9618 0040013C */  lui        $at, (0x40000000 >> 16)
    /* FA59C 001F961C 00008144 */  mtc1       $at, $f0
    /* FA5A0 001F9620 00000000 */  nop
    /* FA5A4 001F9624 34A80046 */  c.lt.s     $f21, $f0
    /* FA5A8 001F9628 00000000 */  nop
    /* FA5AC 001F962C 03000245 */  bc1fl      .L001F963C
    /* FA5B0 001F9630 12004486 */   lh        $a0, 0x12($s2)
.align 2
  .L001F9634:
    /* FA5B4 001F9634 46050046 */  mov.s      $f21, $f0
    /* FA5B8 001F9638 12004486 */  lh         $a0, 0x12($s2)
.align 2
  .L001F963C:
    /* FA5BC 001F963C 22EA070C */  jal        func_001FA888
    /* FA5C0 001F9640 10008424 */   addiu     $a0, $a0, 0x10
    /* FA5C4 001F9644 803C013C */  lui        $at, (0x3C800000 >> 16)
    /* FA5C8 001F9648 00108144 */  mtc1       $at, $f2
    /* FA5CC 001F964C C041013C */  lui        $at, (0x41C00000 >> 16)
    /* FA5D0 001F9650 00088144 */  mtc1       $at, $f1
    /* FA5D4 001F9654 02000246 */  mul.s      $f0, $f0, $f2
    /* FA5D8 001F9658 1C0054C6 */  lwc1       $f20, 0x1C($s2)
    /* FA5DC 001F965C 41081546 */  sub.s      $f1, $f1, $f21
    /* FA5E0 001F9660 18004CC6 */  lwc1       $f12, 0x18($s2)
    /* FA5E4 001F9664 02A50046 */  mul.s      $f20, $f20, $f0
    /* FA5E8 001F9668 42081646 */  mul.s      $f1, $f1, $f22
    /* FA5EC 001F966C EAE7070C */  jal        func_001F9FA8
    /* FA5F0 001F9670 02A50146 */   mul.s     $f20, $f20, $f1
    /* FA5F4 001F9674 26EA070C */  jal        func_001FA898
    /* FA5F8 001F9678 02A30046 */   mul.s     $f12, $f20, $f0
    /* FA5FC 001F967C 18004CC6 */  lwc1       $f12, 0x18($s2)
    /* FA600 001F9680 E4E7070C */  jal        func_001F9F90
    /* FA604 001F9684 2D904000 */   daddu     $s2, $v0, $zero
    /* FA608 001F9688 26EA070C */  jal        func_001FA898
    /* FA60C 001F968C 02A30046 */   mul.s     $f12, $f20, $f0
    /* FA610 001F9690 1600053C */  lui        $a1, %hi(D_00161000)
    /* FA614 001F9694 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* FA618 001F9698 0010033C */  lui        $v1, (0x10000009 >> 16)
    /* FA61C 001F969C 09006334 */  ori        $v1, $v1, (0x10000009 & 0xFFFF)
    /* FA620 001F96A0 2D884000 */  daddu      $s1, $v0, $zero
    /* FA624 001F96A4 0000A3AC */  sw         $v1, 0x0($a1)
    /* FA628 001F96A8 0050043C */  lui        $a0, (0x50000009 >> 16)
    /* FA62C 001F96AC 09008434 */  ori        $a0, $a0, (0x50000009 & 0xFFFF)
    /* FA630 001F96B0 1600023C */  lui        $v0, %hi(D_00161000)
    /* FA634 001F96B4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FA638 001F96B8 040040AC */  sw         $zero, 0x4($v0)
    /* FA63C 001F96BC 1600033C */  lui        $v1, %hi(D_00161000)
    /* FA640 001F96C0 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FA644 001F96C4 080060AC */  sw         $zero, 0x8($v1)
    /* FA648 001F96C8 1600023C */  lui        $v0, %hi(D_00161000)
    /* FA64C 001F96CC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FA650 001F96D0 0C0044AC */  sw         $a0, 0xC($v0)
    /* FA654 001F96D4 1600043C */  lui        $a0, %hi(D_001609E0)
    /* FA658 001F96D8 1600053C */  lui        $a1, %hi(D_00161000)
    /* FA65C 001F96DC 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* FA660 001F96E0 E0098424 */  addiu      $a0, $a0, %lo(D_001609E0)
    /* FA664 001F96E4 1000A324 */  addiu      $v1, $a1, 0x10
    /* FA668 001F96E8 1600013C */  lui        $at, %hi(D_00161000)
    /* FA66C 001F96EC 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* FA670 001F96F0 00008278 */  lq         $v0, 0x0($a0)
    /* FA674 001F96F4 0000627C */  sq         $v0, 0x0($v1)
    /* FA678 001F96F8 2000B024 */  addiu      $s0, $a1, 0x20
    /* FA67C 001F96FC 05000224 */  addiu      $v0, $zero, 0x5
    /* FA680 001F9700 1600013C */  lui        $at, %hi(D_00161000)
    /* FA684 001F9704 001030AC */  sw         $s0, %lo(D_00161000)($at)
    /* FA688 001F9708 13000424 */  addiu      $a0, $zero, 0x13
    /* FA68C 001F970C 1AD2070C */  jal        func_001F4868
    /* FA690 001F9710 2000A2FC */   sd        $v0, 0x20($a1)
    /* FA694 001F9714 00241100 */  sll        $a0, $s1, 16
    /* FA698 001F9718 23181100 */  negu       $v1, $s1
    /* FA69C 001F971C 23281200 */  negu       $a1, $s2
    /* FA6A0 001F9720 00441200 */  sll        $t0, $s2, 16
    /* FA6A4 001F9724 002C0500 */  sll        $a1, $a1, 16
    /* FA6A8 001F9728 001C0300 */  sll        $v1, $v1, 16
    /* FA6AC 001F972C 2D309300 */  daddu      $a2, $a0, $s3
    /* FA6B0 001F9730 2D487300 */  daddu      $t1, $v1, $s3
    /* FA6B4 001F9734 2D38B300 */  daddu      $a3, $a1, $s3
    /* FA6B8 001F9738 2D201301 */  daddu      $a0, $t0, $s3
    /* FA6BC 001F973C 2F209100 */  dsubu      $a0, $a0, $s1
    /* FA6C0 001F9740 2F483201 */  dsubu      $t1, $t1, $s2
    /* FA6C4 001F9744 2D30D200 */  daddu      $a2, $a2, $s2
    /* FA6C8 001F9748 2D38F100 */  daddu      $a3, $a3, $s1
    /* FA6CC 001F974C 54010324 */  addiu      $v1, $zero, 0x154
    /* FA6D0 001F9750 00020524 */  addiu      $a1, $zero, 0x200
    /* FA6D4 001F9754 0002083C */  lui        $t0, (0x2000000 >> 16)
    /* FA6D8 001F9758 00020A3C */  lui        $t2, (0x2000200 >> 16)
    /* FA6DC 001F975C 00024A35 */  ori        $t2, $t2, (0x2000200 & 0xFFFF)
    /* FA6E0 001F9760 080002FE */  sd         $v0, 0x8($s0)
    /* FA6E4 001F9764 100003FE */  sd         $v1, 0x10($s0)
    /* FA6E8 001F9768 280006FE */  sd         $a2, 0x28($s0)
    /* FA6EC 001F976C 380005FE */  sd         $a1, 0x38($s0)
    /* FA6F0 001F9770 400007FE */  sd         $a3, 0x40($s0)
    /* FA6F4 001F9774 500008FE */  sd         $t0, 0x50($s0)
    /* FA6F8 001F9778 580004FE */  sd         $a0, 0x58($s0)
    /* FA6FC 001F977C 600014FE */  sd         $s4, 0x60($s0)
    /* FA700 001F9780 68000AFE */  sd         $t2, 0x68($s0)
    /* FA704 001F9784 700009FE */  sd         $t1, 0x70($s0)
    /* FA708 001F9788 780000FE */  sd         $zero, 0x78($s0)
    /* FA70C 001F978C 180014FE */  sd         $s4, 0x18($s0)
    /* FA710 001F9790 200000FE */  sd         $zero, 0x20($s0)
    /* FA714 001F9794 300014FE */  sd         $s4, 0x30($s0)
    /* FA718 001F9798 480014FE */  sd         $s4, 0x48($s0)
    /* FA71C 001F979C 1600023C */  lui        $v0, %hi(D_00161000)
    /* FA720 001F97A0 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FA724 001F97A4 80004224 */  addiu      $v0, $v0, 0x80
    /* FA728 001F97A8 1600013C */  lui        $at, %hi(D_00161000)
    /* FA72C 001F97AC 001022AC */  sw         $v0, %lo(D_00161000)($at)
.align 2
  .L001F97B0:
    /* FA730 001F97B0 0100B526 */  addiu      $s5, $s5, 0x1
.align 2
  .L001F97B4:
    /* FA734 001F97B4 1000A22A */  slti       $v0, $s5, 0x10
    /* FA738 001F97B8 4BFF4014 */  bnez       $v0, .L001F94E8
    /* FA73C 001F97BC 1900033C */   lui       $v1, %hi(D_0018EE00)
    /* FA740 001F97C0 00800534 */  ori        $a1, $zero, 0x8000
    /* FA744 001F97C4 382E0500 */  dsll       $a1, $a1, 24
    /* FA748 001F97C8 4400A534 */  ori        $a1, $a1, 0x44
    /* FA74C 001F97CC 26D3080C */  jal        func_00234C98
    /* FA750 001F97D0 42000424 */   addiu     $a0, $zero, 0x42
    /* FA754 001F97D4 B000BF7B */  lq         $ra, 0xB0($sp)
    /* FA758 001F97D8 A000BE7B */  lq         $fp, 0xA0($sp)
    /* FA75C 001F97DC 9000B77B */  lq         $s7, 0x90($sp)
    /* FA760 001F97E0 8000B67B */  lq         $s6, 0x80($sp)
    /* FA764 001F97E4 7000B57B */  lq         $s5, 0x70($sp)
    /* FA768 001F97E8 6000B47B */  lq         $s4, 0x60($sp)
    /* FA76C 001F97EC 5000B37B */  lq         $s3, 0x50($sp)
    /* FA770 001F97F0 4000B27B */  lq         $s2, 0x40($sp)
    /* FA774 001F97F4 3000B17B */  lq         $s1, 0x30($sp)
    /* FA778 001F97F8 2000B07B */  lq         $s0, 0x20($sp)
    /* FA77C 001F97FC D000B6C7 */  lwc1       $f22, 0xD0($sp)
    /* FA780 001F9800 C800B5C7 */  lwc1       $f21, 0xC8($sp)
    /* FA784 001F9804 C000B4C7 */  lwc1       $f20, 0xC0($sp)
    /* FA788 001F9808 0800E003 */  jr         $ra
    /* FA78C 001F980C E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_001F9478
