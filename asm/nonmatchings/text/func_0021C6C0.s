.align 3
nonmatching func_0021C6C0, 0xD0

glabel func_0021C6C0
    /* 11D640 0021C6C0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 11D644 0021C6C4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 11D648 0021C6C8 3000B37F */  sq         $s3, 0x30($sp)
    /* 11D64C 0021C6CC 2A104400 */  slt        $v0, $v0, $a0
    /* 11D650 0021C6D0 2000B27F */  sq         $s2, 0x20($sp)
    /* 11D654 0021C6D4 2D980000 */  daddu      $s3, $zero, $zero
    /* 11D658 0021C6D8 1000B17F */  sq         $s1, 0x10($sp)
    /* 11D65C 0021C6DC 0B988200 */  movn       $s3, $a0, $v0
    /* 11D660 0021C6E0 FF80123C */  lui        $s2, (0x80FFA888 >> 16)
    /* 11D664 0021C6E4 2080113C */  lui        $s1, (0x8020FFFF >> 16)
    /* 11D668 0021C6E8 27180500 */  nor        $v1, $zero, $a1
    /* 11D66C 0021C6EC 27100600 */  nor        $v0, $zero, $a2
    /* 11D670 0021C6F0 88A85236 */  ori        $s2, $s2, (0x80FFA888 & 0xFFFF)
    /* 11D674 0021C6F4 FFFF3136 */  ori        $s1, $s1, (0x8020FFFF & 0xFFFF)
    /* 11D678 0021C6F8 B495848F */  lw         $a0, -0x6A4C($gp)
    /* 11D67C 0021C6FC 0B90A300 */  movn       $s2, $a1, $v1
    /* 11D680 0021C700 4000BF7F */  sq         $ra, 0x40($sp)
    /* 11D684 0021C704 0B88C200 */  movn       $s1, $a2, $v0
    /* 11D688 0021C708 30E6070C */  jal        func_001F98C0
    /* 11D68C 0021C70C 0000B07F */   sq        $s0, 0x0($sp)
    /* 11D690 0021C710 2A105300 */  slt        $v0, $v0, $s3
    /* 11D694 0021C714 12004014 */  bnez       $v0, .L0021C760
    /* 11D698 0021C718 00000000 */   nop
    /* 11D69C 0021C71C 30E6070C */  jal        func_001F98C0
    /* 11D6A0 0021C720 B495848F */   lw        $a0, -0x6A4C($gp)
    /* 11D6A4 0021C724 B495848F */  lw         $a0, -0x6A4C($gp)
    /* 11D6A8 0021C728 30E6070C */  jal        func_001F98C0
    /* 11D6AC 0021C72C 2D804000 */   daddu     $s0, $v0, $zero
    /* 11D6B0 0021C730 23801302 */  subu       $s0, $s0, $s3
    /* 11D6B4 0021C734 00108244 */  mtc1       $v0, $f2
    /* 11D6B8 0021C738 00000000 */  nop
    /* 11D6BC 0021C73C A0108046 */  cvt.s.w    $f2, $f2
    /* 11D6C0 0021C740 00009044 */  mtc1       $s0, $f0
    /* 11D6C4 0021C744 00000000 */  nop
    /* 11D6C8 0021C748 20008046 */  cvt.s.w    $f0, $f0
    /* 11D6CC 0021C74C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 11D6D0 0021C750 00088144 */  mtc1       $at, $f1
    /* 11D6D4 0021C754 03000246 */  div.s      $f0, $f0, $f2
    /* 11D6D8 0021C758 03000010 */  b          .L0021C768
    /* 11D6DC 0021C75C 010B0046 */   sub.s     $f12, $f1, $f0
.align 2
  .L0021C760:
    /* 11D6E0 0021C760 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 11D6E4 0021C764 00608144 */  mtc1       $at, $f12
.align 2
  .L0021C768:
    /* 11D6E8 0021C768 2D204002 */  daddu      $a0, $s2, $zero
    /* 11D6EC 0021C76C 2AEA070C */  jal        func_001FA8A8
    /* 11D6F0 0021C770 2D282002 */   daddu     $a1, $s1, $zero
    /* 11D6F4 0021C774 4000BF7B */  lq         $ra, 0x40($sp)
    /* 11D6F8 0021C778 3000B37B */  lq         $s3, 0x30($sp)
    /* 11D6FC 0021C77C 2000B27B */  lq         $s2, 0x20($sp)
    /* 11D700 0021C780 1000B17B */  lq         $s1, 0x10($sp)
    /* 11D704 0021C784 0000B07B */  lq         $s0, 0x0($sp)
    /* 11D708 0021C788 0800E003 */  jr         $ra
    /* 11D70C 0021C78C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0021C6C0
