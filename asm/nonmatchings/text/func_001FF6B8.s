.align 3
nonmatching func_001FF6B8, 0x134

glabel func_001FF6B8
    /* 100638 001FF6B8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 10063C 001FF6BC 1A00023C */  lui        $v0, %hi(D_0019A4E8)
    /* 100640 001FF6C0 4000B47F */  sq         $s4, 0x40($sp)
    /* 100644 001FF6C4 1A00033C */  lui        $v1, %hi(D_00199C60)
    /* 100648 001FF6C8 3000B37F */  sq         $s3, 0x30($sp)
    /* 10064C 001FF6CC E8A44424 */  addiu      $a0, $v0, %lo(D_0019A4E8)
    /* 100650 001FF6D0 2000B27F */  sq         $s2, 0x20($sp)
    /* 100654 001FF6D4 609C6324 */  addiu      $v1, $v1, %lo(D_00199C60)
    /* 100658 001FF6D8 1000B17F */  sq         $s1, 0x10($sp)
    /* 10065C 001FF6DC FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 100660 001FF6E0 0000B07F */  sq         $s0, 0x0($sp)
    /* 100664 001FF6E4 2D880000 */  daddu      $s1, $zero, $zero
    /* 100668 001FF6E8 5000BF7F */  sq         $ra, 0x50($sp)
    /* 10066C 001FF6EC 24007024 */  addiu      $s0, $v1, 0x24
    /* 100670 001FF6F0 E8A440AC */  sw         $zero, %lo(D_0019A4E8)($v0)
    /* 100674 001FF6F4 0100133C */  lui        $s3, (0x10000 >> 16)
    /* 100678 001FF6F8 040080AC */  sw         $zero, 0x4($a0)
    /* 10067C 001FF6FC FAFF1224 */  addiu      $s2, $zero, -0x6
.align 2
  .L001FF700:
    /* 100680 001FF700 400014AE */  sw         $s4, 0x40($s0)
    /* 100684 001FF704 2D202002 */  daddu      $a0, $s1, $zero
    /* 100688 001FF708 FCFF13AE */  sw         $s3, -0x4($s0)
    /* 10068C 001FF70C FFFF0534 */  ori        $a1, $zero, 0xFFFF
    /* 100690 001FF710 2D300000 */  daddu      $a2, $zero, $zero
    /* 100694 001FF714 2D380000 */  daddu      $a3, $zero, $zero
    /* 100698 001FF718 2D400000 */  daddu      $t0, $zero, $zero
    /* 10069C 001FF71C 2D480000 */  daddu      $t1, $zero, $zero
    /* 1006A0 001FF720 01000A24 */  addiu      $t2, $zero, 0x1
    /* 1006A4 001FF724 CEFE070C */  jal        func_001FFB38
    /* 1006A8 001FF728 01003126 */   addiu     $s1, $s1, 0x1
    /* 1006AC 001FF72C 580000AE */  sw         $zero, 0x58($s0)
    /* 1006B0 001FF730 0D00222A */  slti       $v0, $s1, 0xD
    /* 1006B4 001FF734 480012AE */  sw         $s2, 0x48($s0)
    /* 1006B8 001FF738 E0FF00AE */  sw         $zero, -0x20($s0)
    /* 1006BC 001FF73C 000000AE */  sw         $zero, 0x0($s0)
    /* 1006C0 001FF740 EFFF4014 */  bnez       $v0, .L001FF700
    /* 1006C4 001FF744 90001026 */   addiu     $s0, $s0, 0x90
    /* 1006C8 001FF748 1600023C */  lui        $v0, %hi(D_0015FAB8)
    /* 1006CC 001FF74C B8FA428C */  lw         $v0, %lo(D_0015FAB8)($v0)
    /* 1006D0 001FF750 14004014 */  bnez       $v0, .L001FF7A4
    /* 1006D4 001FF754 00280524 */   addiu     $a1, $zero, 0x2800
    /* 1006D8 001FF758 1600103C */  lui        $s0, %hi(D_0015F7B8)
    /* 1006DC 001FF75C 00280424 */  addiu      $a0, $zero, 0x2800
    /* 1006E0 001FF760 B8F71026 */  addiu      $s0, $s0, %lo(D_0015F7B8)
    /* 1006E4 001FF764 2D280000 */  daddu      $a1, $zero, $zero
    /* 1006E8 001FF768 2D300002 */  daddu      $a2, $s0, $zero
    /* 1006EC 001FF76C AEFE070C */  jal        func_001FFAB8
    /* 1006F0 001FF770 15010724 */   addiu     $a3, $zero, 0x115
    /* 1006F4 001FF774 1600013C */  lui        $at, %hi(D_0015FAB8)
    /* 1006F8 001FF778 B8FA22AC */  sw         $v0, %lo(D_0015FAB8)($at)
    /* 1006FC 001FF77C 2D300002 */  daddu      $a2, $s0, $zero
    /* 100700 001FF780 00140424 */  addiu      $a0, $zero, 0x1400
    /* 100704 001FF784 2D280000 */  daddu      $a1, $zero, $zero
    /* 100708 001FF788 AEFE070C */  jal        func_001FFAB8
    /* 10070C 001FF78C 16010724 */   addiu     $a3, $zero, 0x116
    /* 100710 001FF790 1600013C */  lui        $at, %hi(D_0015FAC4)
    /* 100714 001FF794 C4FA22AC */  sw         $v0, %lo(D_0015FAC4)($at)
    /* 100718 001FF798 1600023C */  lui        $v0, %hi(D_0015FAB8)
    /* 10071C 001FF79C B8FA428C */  lw         $v0, %lo(D_0015FAB8)($v0)
    /* 100720 001FF7A0 00280524 */  addiu      $a1, $zero, 0x2800
.align 2
  .L001FF7A4:
    /* 100724 001FF7A4 00284324 */  addiu      $v1, $v0, 0x2800
    /* 100728 001FF7A8 2D204000 */  daddu      $a0, $v0, $zero
    /* 10072C 001FF7AC 1600013C */  lui        $at, %hi(D_0015FAC0)
    /* 100730 001FF7B0 C0FA23AC */  sw         $v1, %lo(D_0015FAC0)($at)
    /* 100734 001FF7B4 76E6070C */  jal        func_001F99D8
    /* 100738 001FF7B8 BC8D82AF */   sw        $v0, -0x7244($gp)
    /* 10073C 001FF7BC 1600033C */  lui        $v1, %hi(D_0015FAB8)
    /* 100740 001FF7C0 B8FA638C */  lw         $v1, %lo(D_0015FAB8)($v1)
    /* 100744 001FF7C4 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 100748 001FF7C8 5000BF7B */  lq         $ra, 0x50($sp)
    /* 10074C 001FF7CC 4000B47B */  lq         $s4, 0x40($sp)
    /* 100750 001FF7D0 3000B37B */  lq         $s3, 0x30($sp)
    /* 100754 001FF7D4 2000B27B */  lq         $s2, 0x20($sp)
    /* 100758 001FF7D8 1000B17B */  lq         $s1, 0x10($sp)
    /* 10075C 001FF7DC 0000B07B */  lq         $s0, 0x0($sp)
    /* 100760 001FF7E0 200062A0 */  sb         $v0, 0x20($v1)
    /* 100764 001FF7E4 0800E003 */  jr         $ra
    /* 100768 001FF7E8 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001FF6B8
    /* 10076C 001FF7EC 00000000 */  nop
