.align 3
/* Handwritten function */
nonmatching func_00229F00, 0x1744

glabel func_00229F00
    /* 12AE80 00229F00 0070013C */  lui        $at, (0x70003FA8 >> 16)
    /* 12AE84 00229F04 F83F3FFC */  sd         $ra, (0x70003FF8 & 0xFFFF)($at)
    /* 12AE88 00229F08 F03F3EFC */  sd         $fp, (0x70003FF0 & 0xFFFF)($at)
    /* 12AE8C 00229F0C E83F3DFC */  sd         $sp, (0x70003FE8 & 0xFFFF)($at)
    /* 12AE90 00229F10 E03F37FC */  sd         $s7, (0x70003FE0 & 0xFFFF)($at)
    /* 12AE94 00229F14 D83F36FC */  sd         $s6, (0x70003FD8 & 0xFFFF)($at)
    /* 12AE98 00229F18 D03F35FC */  sd         $s5, (0x70003FD0 & 0xFFFF)($at)
    /* 12AE9C 00229F1C C83F34FC */  sd         $s4, (0x70003FC8 & 0xFFFF)($at)
    /* 12AEA0 00229F20 C03F33FC */  sd         $s3, (0x70003FC0 & 0xFFFF)($at)
    /* 12AEA4 00229F24 B83F32FC */  sd         $s2, (0x70003FB8 & 0xFFFF)($at)
    /* 12AEA8 00229F28 B03F31FC */  sd         $s1, (0x70003FB0 & 0xFFFF)($at)
    /* 12AEAC 00229F2C A83F30FC */  sd         $s0, (0x70003FA8 & 0xFFFF)($at)
    /* 12AEB0 00229F30 00701F3C */  lui        $ra, (0x70003F6C >> 16)
    /* 12AEB4 00229F34 DC97938F */  lw         $s3, -0x6824($gp)
    /* 12AEB8 00229F38 CC97818F */  lw         $at, -0x6834($gp)
    /* 12AEBC 00229F3C 1E00023C */  lui        $v0, %hi(D_001D82C0)
    /* 12AEC0 00229F40 C0824224 */  addiu      $v0, $v0, %lo(D_001D82C0)
    /* 12AEC4 00229F44 E497838F */  lw         $v1, -0x681C($gp)
    /* 12AEC8 00229F48 E097848F */  lw         $a0, -0x6820($gp)
    /* 12AECC 00229F4C 00000000 */  nop
    /* 12AED0 00229F50 0037E523 */  addi       $a1, $ra, (0x70003700 & 0xFFFF) /* handwritten instruction */
    /* 12AED4 00229F54 003DE623 */  addi       $a2, $ra, (0x70003D00 & 0xFFFF) /* handwritten instruction */
    /* 12AED8 00229F58 0020E723 */  addi       $a3, $ra, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 12AEDC 00229F5C 0032E823 */  addi       $t0, $ra, (0x70003200 & 0xFFFF) /* handwritten instruction */
    /* 12AEE0 00229F60 603FE1AF */  sw         $at, (0x70003F60 & 0xFFFF)($ra)
    /* 12AEE4 00229F64 643FE2AF */  sw         $v0, (0x70003F64 & 0xFFFF)($ra)
    /* 12AEE8 00229F68 A43FE3AF */  sw         $v1, (0x70003FA4 & 0xFFFF)($ra)
    /* 12AEEC 00229F6C 883FE4AF */  sw         $a0, (0x70003F88 & 0xFFFF)($ra)
    /* 12AEF0 00229F70 703FE5AF */  sw         $a1, (0x70003F70 & 0xFFFF)($ra)
    /* 12AEF4 00229F74 743FE6AF */  sw         $a2, (0x70003F74 & 0xFFFF)($ra)
    /* 12AEF8 00229F78 6C3FE7AF */  sw         $a3, (0x70003F6C & 0xFFFF)($ra)
    /* 12AEFC 00229F7C 8C3FE8AF */  sw         $t0, (0x70003F8C & 0xFFFF)($ra)
    /* 12AF00 00229F80 C0FF7322 */  addi       $s3, $s3, -0x40 /* handwritten instruction */
    /* 12AF04 00229F84 00001920 */  addi       $t9, $zero, 0x0 /* handwritten instruction */
    /* 12AF08 00229F88 003BE223 */  addi       $v0, $ra, (0x70003B00 & 0xFFFF) /* handwritten instruction */
    /* 12AF0C 00229F8C 1E00013C */  lui        $at, %hi(D_001E00F0)
    /* 12AF10 00229F90 F0002124 */  addiu      $at, $at, %lo(D_001E00F0)
    /* 12AF14 00229F94 00014320 */  addi       $v1, $v0, 0x100 /* handwritten instruction */
.align 2
  .L00229F98:
    /* 12AF18 00229F98 00002478 */  lq         $a0, 0x0($at)
    /* 12AF1C 00229F9C 10002578 */  lq         $a1, 0x10($at)
    /* 12AF20 00229FA0 0000447C */  sq         $a0, 0x0($v0)
    /* 12AF24 00229FA4 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 12AF28 00229FA8 1000457C */  sq         $a1, 0x10($v0)
    /* 12AF2C 00229FAC 20004220 */  addi       $v0, $v0, 0x20 /* handwritten instruction */
    /* 12AF30 00229FB0 F9FF4314 */  bne        $v0, $v1, .L00229F98
    /* 12AF34 00229FB4 00000000 */   nop
    /* 12AF38 00229FB8 1E00013C */  lui        $at, %hi(D_001E01F0)
    /* 12AF3C 00229FBC F0012124 */  addiu      $at, $at, %lo(D_001E01F0)
    /* 12AF40 00229FC0 00002278 */  lq         $v0, 0x0($at)
    /* 12AF44 00229FC4 10002378 */  lq         $v1, 0x10($at)
    /* 12AF48 00229FC8 003CE27F */  sq         $v0, (0x70003C00 & 0xFFFF)($ra)
    /* 12AF4C 00229FCC 103CE37F */  sq         $v1, (0x70003C10 & 0xFFFF)($ra)
    /* 12AF50 00229FD0 3888828F */  lw         $v0, -0x77C8($gp)
    /* 12AF54 00229FD4 203CE2AF */  sw         $v0, (0x70003C20 & 0xFFFF)($ra)
    /* 12AF58 00229FD8 2300023C */  lui        $v0, %hi(D_0022A4FC)
    /* 12AF5C 00229FDC FCA44224 */  addiu      $v0, $v0, %lo(D_0022A4FC)
    /* 12AF60 00229FE0 A03FE2AF */  sw         $v0, (0x70003FA0 & 0xFFFF)($ra)
    /* 12AF64 00229FE4 00000000 */  nop
    /* 12AF68 00229FE8 02000120 */  addi       $at, $zero, 0x2 /* handwritten instruction */
    /* 12AF6C 00229FEC EE000220 */  addi       $v0, $zero, 0xEE /* handwritten instruction */
    /* 12AF70 00229FF0 11000320 */  addi       $v1, $zero, 0x11 /* handwritten instruction */
    /* 12AF74 00229FF4 7C3FE1AF */  sw         $at, (0x70003F7C & 0xFFFF)($ra)
    /* 12AF78 00229FF8 803FE2AF */  sw         $v0, (0x70003F80 & 0xFFFF)($ra)
    /* 12AF7C 00229FFC 843FE3AF */  sw         $v1, (0x70003F84 & 0xFFFF)($ra)
    /* 12AF80 0022A000 00A39E8F */  lw         $fp, -0x5D00($gp)
    /* 12AF84 0022A004 0000FD23 */  addi       $sp, $ra, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 12AF88 0022A008 0010E123 */  addi       $at, $ra, (0x70001000 & 0xFFFF) /* handwritten instruction */
    /* 12AF8C 0022A00C 0020E223 */  addi       $v0, $ra, (0x70002000 & 0xFFFF) /* handwritten instruction */
.align 2
  .L0022A010:
    /* 12AF90 0022A010 0000207C */  sq         $zero, 0x0($at)
    /* 12AF94 0022A014 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 12AF98 0022A018 00000000 */  nop
    /* 12AF9C 0022A01C 00000000 */  nop
    /* 12AFA0 0022A020 00000000 */  nop
    /* 12AFA4 0022A024 FAFF2214 */  bne        $at, $v0, .L0022A010
    /* 12AFA8 0022A028 F0FF207C */   sq        $zero, -0x10($at)
    /* 12AFAC 0022A02C 8044023C */  lui        $v0, (0x44800000 >> 16)
    /* 12AFB0 0022A030 1800013C */  lui        $at, %hi(D_00187040)
    /* 12AFB4 0022A034 40702124 */  addiu      $at, $at, %lo(D_00187040)
    /* 12AFB8 0022A038 0008A248 */  qmtc2.ni   $v0, $vf1
    /* 12AFBC 0022A03C 400138D8 */  lqc2       $vf24, 0x140($at)
    /* 12AFC0 0022A040 000039D8 */  lqc2       $vf25, 0x0($at)
    /* 12AFC4 0022A044 10003AD8 */  lqc2       $vf26, 0x10($at)
    /* 12AFC8 0022A048 20003BD8 */  lqc2       $vf27, 0x20($at)
    /* 12AFCC 0022A04C 80003CD8 */  lqc2       $vf28, 0x80($at)
    /* 12AFD0 0022A050 90003DD8 */  lqc2       $vf29, 0x90($at)
    /* 12AFD4 0022A054 A0003ED8 */  lqc2       $vf30, 0xA0($at)
    /* 12AFD8 0022A058 B0003FD8 */  lqc2       $vf31, 0xB0($at)
    /* 12AFDC 0022A05C 1806214A */  vmulx.w    $vf24, $vf0, $vf1x
    /* 12AFE0 0022A060 00000000 */  nop
    /* 12AFE4 0022A064 1900013C */  lui        $at, %hi(D_0018CE00)
    /* 12AFE8 0022A068 00CE2124 */  addiu      $at, $at, %lo(D_0018CE00)
    /* 12AFEC 0022A06C 200232D8 */  lqc2       $vf18, 0x220($at)
    /* 12AFF0 0022A070 A00033D8 */  lqc2       $vf19, 0xA0($at)
    /* 12AFF4 0022A074 B00034D8 */  lqc2       $vf20, 0xB0($at)
    /* 12AFF8 0022A078 D00135D8 */  lqc2       $vf21, 0x1D0($at)
    /* 12AFFC 0022A07C E00136D8 */  lqc2       $vf22, 0x1E0($at)
    /* 12B000 0022A080 F00137D8 */  lqc2       $vf23, 0x1F0($at)
    /* 12B004 0022A084 803A013C */  lui        $at, (0x3A800000 >> 16)
    /* 12B008 0022A088 0008A148 */  qmtc2.ni   $at, $vf1
    /* 12B00C 0022A08C D89C814B */  vmulx.xy   $vf19, $vf19, $vf1x
    /* 12B010 0022A090 D8BD814B */  vmulx.xy   $vf23, $vf23, $vf1x
    /* 12B014 0022A094 609E817B */  lq         $at, -0x61A0($gp)
    /* 12B018 0022A098 709E827B */  lq         $v0, -0x6190($gp)
    /* 12B01C 0022A09C 809E837B */  lq         $v1, -0x6180($gp)
    /* 12B020 0022A0A0 909E847B */  lq         $a0, -0x6170($gp)
    /* 12B024 0022A0A4 A09E857B */  lq         $a1, -0x6160($gp)
    /* 12B028 0022A0A8 B09E867B */  lq         $a2, -0x6150($gp)
    /* 12B02C 0022A0AC 003FE17F */  sq         $at, (0x70003F00 & 0xFFFF)($ra)
    /* 12B030 0022A0B0 103FE27F */  sq         $v0, (0x70003F10 & 0xFFFF)($ra)
    /* 12B034 0022A0B4 203FE37F */  sq         $v1, (0x70003F20 & 0xFFFF)($ra)
    /* 12B038 0022A0B8 303FE47F */  sq         $a0, (0x70003F30 & 0xFFFF)($ra)
    /* 12B03C 0022A0BC 403FE57F */  sq         $a1, (0x70003F40 & 0xFFFF)($ra)
    /* 12B040 0022A0C0 503FE67F */  sq         $a2, (0x70003F50 & 0xFFFF)($ra)
    /* 12B044 0022A0C4 0000A07F */  sq         $zero, 0x0($sp)
    /* 12B048 0022A0C8 1000023C */  lui        $v0, %hi(D_00101750)
    /* 12B04C 0022A0CC 50174224 */  addiu      $v0, $v0, %lo(D_00101750)
    /* 12B050 0022A0D0 1000013C */  lui        $at, %hi(D_00101760)
    /* 12B054 0022A0D4 60172124 */  addiu      $at, $at, %lo(D_00101760)
    /* 12B058 0022A0D8 0000428C */  lw         $v0, 0x0($v0)
    /* 12B05C 0022A0DC 0400A1AF */  sw         $at, 0x4($sp)
    /* 12B060 0022A0E0 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 12B064 0022A0E4 0000A1AF */  sw         $at, 0x0($sp)
    /* 12B068 0022A0E8 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12B06C 0022A0EC 0000A2A7 */  sh         $v0, 0x0($sp)
    /* 12B070 0022A0F0 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12B074 0022A0F4 1E00013C */  lui        $at, %hi(D_001DED30)
    /* 12B078 0022A0F8 30ED2124 */  addiu      $at, $at, %lo(D_001DED30)
    /* 12B07C 0022A0FC 00002278 */  lq         $v0, 0x0($at)
    /* 12B080 0022A100 10002378 */  lq         $v1, 0x10($at)
    /* 12B084 0022A104 20002478 */  lq         $a0, 0x20($at)
    /* 12B088 0022A108 30002578 */  lq         $a1, 0x30($at)
    /* 12B08C 0022A10C 40002678 */  lq         $a2, 0x40($at)
    /* 12B090 0022A110 0000A27F */  sq         $v0, 0x0($sp)
    /* 12B094 0022A114 1000A37F */  sq         $v1, 0x10($sp)
    /* 12B098 0022A118 2000A47F */  sq         $a0, 0x20($sp)
    /* 12B09C 0022A11C 3000A57F */  sq         $a1, 0x30($sp)
    /* 12B0A0 0022A120 4000A67F */  sq         $a2, 0x40($sp)
    /* 12B0A4 0022A124 5000BD23 */  addi       $sp, $sp, 0x50 /* handwritten instruction */
    /* 12B0A8 0022A128 5000DE23 */  addi       $fp, $fp, 0x50 /* handwritten instruction */
    /* 12B0AC 0022A12C 903FFEAF */  sw         $fp, (0x70003F90 & 0xFFFF)($ra)
    /* 12B0B0 0022A130 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12B0B4 0022A134 0000A07F */  sq         $zero, 0x0($sp)
    /* 12B0B8 0022A138 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12B0BC 0022A13C 1E00013C */  lui        $at, %hi(D_001DEE00)
    /* 12B0C0 0022A140 00EE2124 */  addiu      $at, $at, %lo(D_001DEE00)
    /* 12B0C4 0022A144 00002278 */  lq         $v0, 0x0($at)
    /* 12B0C8 0022A148 10002378 */  lq         $v1, 0x10($at)
    /* 12B0CC 0022A14C 20002478 */  lq         $a0, 0x20($at)
    /* 12B0D0 0022A150 0000A27F */  sq         $v0, 0x0($sp)
    /* 12B0D4 0022A154 1000A37F */  sq         $v1, 0x10($sp)
    /* 12B0D8 0022A158 2000A47F */  sq         $a0, 0x20($sp)
    /* 12B0DC 0022A15C 3000BD23 */  addi       $sp, $sp, 0x30 /* handwritten instruction */
    /* 12B0E0 0022A160 3000DE23 */  addi       $fp, $fp, 0x30 /* handwritten instruction */
.align 2
  alabel func_0022A164
    /* 12B0E4 0022A164 603FE18F */  lw         $at, (0x70003F60 & 0xFFFF)($ra)
    /* 12B0E8 0022A168 00000000 */  nop
    /* 12B0EC 0022A16C 643FE28F */  lw         $v0, (0x70003F64 & 0xFFFF)($ra)
    /* 12B0F0 0022A170 00000000 */  nop
    /* 12B0F4 0022A174 1F023910 */  beq        $at, $t9, .L0022A9F4
    /* 12B0F8 0022A178 00000000 */   nop
    /* 12B0FC 0022A17C 0000588C */  lw         $t8, 0x0($v0)
    /* 12B100 0022A180 04004220 */  addi       $v0, $v0, 0x4 /* handwritten instruction */
    /* 12B104 0022A184 643FE2AF */  sw         $v0, (0x70003F64 & 0xFFFF)($ra)
    /* 12B108 0022A188 0050033C */  lui        $v1, (0x50000000 >> 16)
    /* 12B10C 0022A18C 0088A348 */  qmtc2.ni   $v1, $vf17
    /* 12B110 0022A190 00001020 */  addi       $s0, $zero, 0x0 /* handwritten instruction */
    /* 12B114 0022A194 14000197 */  lhu        $at, 0x14($t8)
    /* 12B118 0022A198 00001120 */  addi       $s1, $zero, 0x0 /* handwritten instruction */
    /* 12B11C 0022A19C 1800168F */  lw         $s6, 0x18($t8)
    /* 12B120 0022A1A0 00001220 */  addi       $s2, $zero, 0x0 /* handwritten instruction */
    /* 12B124 0022A1A4 16001797 */  lhu        $s7, 0x16($t8)
    /* 12B128 0022A1A8 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12B12C 0022A1AC 01002230 */  andi       $v0, $at, 0x1
    /* 12B130 0022A1B0 06002130 */  andi       $at, $at, 0x6
    /* 12B134 0022A1B4 F9014014 */  bnez       $v0, .L0022A99C
    /* 12B138 0022A1B8 1000DE23 */   addi      $fp, $fp, 0x10 /* handwritten instruction */
    /* 12B13C 0022A1BC 1C000E8F */  lw         $t6, 0x1C($t8)
    /* 12B140 0022A1C0 42080100 */  srl        $at, $at, 1
    /* 12B144 0022A1C4 9C3FE1AF */  sw         $at, (0x70003F9C & 0xFFFF)($ra)
    /* 12B148 0022A1C8 002CE123 */  addi       $at, $ra, (0x70002C00 & 0xFFFF) /* handwritten instruction */
    /* 12B14C 0022A1CC 683FE1AF */  sw         $at, (0x70003F68 & 0xFFFF)($ra)
    /* 12B150 0022A1D0 899BD373 */  pcpyld     $s3, $fp, $s3
.align 2
  alabel func_0022A1D4
    /* 12B154 0022A1D4 6C01E012 */  beqz       $s7, .L0022A788
    /* 12B158 0022A1D8 00100A3C */   lui       $t2, (0x1000D400 >> 16)
    /* 12B15C 0022A1DC 00D44A35 */  ori        $t2, $t2, (0x1000D400 & 0xFFFF)
    /* 12B160 0022A1E0 A43FEF8F */  lw         $t7, (0x70003FA4 & 0xFFFF)($ra)
    /* 12B164 0022A1E4 00100220 */  addi       $v0, $zero, 0x1000 /* handwritten instruction */
    /* 12B168 0022A1E8 80000120 */  addi       $at, $zero, 0x80 /* handwritten instruction */
    /* 12B16C 0022A1EC 800042AD */  sw         $v0, 0x80($t2)
    /* 12B170 0022A1F0 E8083770 */  pminw      $at, $at, $s7
    /* 12B174 0022A1F4 100056AD */  sw         $s6, 0x10($t2)
    /* 12B178 0022A1F8 40100100 */  sll        $v0, $at, 1
    /* 12B17C 0022A1FC 200042AD */  sw         $v0, 0x20($t2)
    /* 12B180 0022A200 00010234 */  ori        $v0, $zero, 0x100
    /* 12B184 0022A204 000042AD */  sw         $v0, 0x0($t2)
    /* 12B188 0022A208 22B8E102 */  sub        $s7, $s7, $at /* handwritten instruction */
    /* 12B18C 0022A20C 0010F423 */  addi       $s4, $ra, (0x70001000 & 0xFFFF) /* handwritten instruction */
    /* 12B190 0022A210 40A90100 */  sll        $s5, $at, 5
    /* 12B194 0022A214 783FF6AF */  sw         $s6, (0x70003F78 & 0xFFFF)($ra)
    /* 12B198 0022A218 20B0D502 */  add        $s6, $s6, $s5 /* handwritten instruction */
    /* 12B19C 0022A21C 20A89502 */  add        $s5, $s4, $s5 /* handwritten instruction */
    /* 12B1A0 0022A220 E0FF9422 */  addi       $s4, $s4, -0x20 /* handwritten instruction */
.align 2
  alabel func_0022A224
    /* 12B1A4 0022A224 3000828E */  lw         $v0, 0x30($s4)
    /* 12B1A8 0022A228 20009422 */  addi       $s4, $s4, 0x20 /* handwritten instruction */
    /* 12B1AC 0022A22C F4009512 */  beq        $s4, $s5, .L0022A600
    /* 12B1B0 0022A230 000081DA */   lqc2      $vf1, 0x0($s4)
    /* 12B1B4 0022A234 E8104F70 */  pminw      $v0, $v0, $t7
    /* 12B1B8 0022A238 00000000 */  nop
    /* 12B1BC 0022A23C AC08D84B */  vsub.xyz   $vf2, $vf1, $vf24
    /* 12B1C0 0022A240 00000000 */  nop
    /* 12B1C4 0022A244 C300014B */  vaddw.x    $vf3, $vf0, $vf1w
    /* 12B1C8 0022A248 3C100200 */  dsll32     $v0, $v0, 0
    /* 12B1CC 0022A24C 0020A248 */  qmtc2.ni   $v0, $vf4
    /* 12B1D0 0022A250 00000000 */  nop
    /* 12B1D4 0022A254 E6004010 */  beqz       $v0, .L0022A5F0
    /* 12B1D8 0022A258 C700814A */   vsubw.y   $vf3, $vf0, $vf1w
    /* 12B1DC 0022A25C BCC9C24B */  vmulax.xyz ACC, $vf25, $vf2x
    /* 12B1E0 0022A260 00000000 */  nop
    /* 12B1E4 0022A264 BDD0C24B */  vmadday.xyz ACC, $vf26, $vf2y
    /* 12B1E8 0022A268 40007322 */  addi       $s3, $s3, 0x40 /* handwritten instruction */
    /* 12B1EC 0022A26C 8AD8C24B */  vmaddz.xyz $vf2, $vf27, $vf2z
    /* 12B1F0 0022A270 100080AE */  sw         $zero, 0x10($s4)
    /* 12B1F4 0022A274 C724814A */  vsubw.y    $vf19, $vf4, $vf1w
    /* 12B1F8 0022A278 00000000 */  nop
    /* 12B1FC 0022A27C 1BB2814B */  vmulw.xy   $vf8, $vf22, $vf1w
    /* 12B200 0022A280 00000000 */  nop
    /* 12B204 0022A284 00000000 */  nop
    /* 12B208 0022A288 00000000 */  nop
    /* 12B20C 0022A28C 4218824B */  vaddz.xy   $vf1, $vf3, $vf2z
    /* 12B210 0022A290 00000000 */  nop
    /* 12B214 0022A294 5AA1824B */  vmulz.xy   $vf5, $vf20, $vf2z
    /* 12B218 0022A298 00000000 */  nop
    /* 12B21C 0022A29C FD11824B */  vabs.xy    $vf2, $vf2
    /* 12B220 0022A2A0 00000000 */  nop
    /* 12B224 0022A2A4 DA41964B */  vmulz.xy   $vf7, $vf8, $vf22z
    /* 12B228 0022A2A8 00000000 */  nop
    /* 12B22C 0022A2AC EC98814B */  vsub.xy    $vf3, $vf19, $vf1
    /* 12B230 0022A2B0 00000000 */  nop
    /* 12B234 0022A2B4 6A2A954B */  vmul.xy    $vf9, $vf5, $vf21
    /* 12B238 0022A2B8 00000000 */  nop
    /* 12B23C 0022A2BC AC11884B */  vsub.xy    $vf6, $vf2, $vf8
    /* 12B240 0022A2C0 00000000 */  nop
    /* 12B244 0022A2C4 2812874B */  vadd.xy    $vf8, $vf2, $vf7
    /* 12B248 0022A2C8 00000000 */  nop
    /* 12B24C 0022A2CC 2C09974B */  vsub.xy    $vf4, $vf1, $vf23
    /* 12B250 0022A2D0 00000000 */  nop
    /* 12B254 0022A2D4 6B00424A */  vmax.z     $vf1, $vf0, $vf2
    /* 12B258 0022A2D8 00000000 */  nop
    /* 12B25C 0022A2DC 00182148 */  qmfc2.ni   $at, $vf3
    /* 12B260 0022A2E0 00000000 */  nop
    /* 12B264 0022A2E4 EC29864B */  vsub.xy    $vf7, $vf5, $vf6
    /* 12B268 0022A2E8 0040053C */  lui        $a1, (0x40000000 >> 16)
    /* 12B26C 0022A2EC 2C4A884B */  vsub.xy    $vf8, $vf9, $vf8
    /* 12B270 0022A2F0 3C100100 */  dsll32     $v0, $at, 0
    /* 12B274 0022A2F4 CBFF2004 */  bltz       $at, func_0022A224
    /* 12B278 0022A2F8 00202448 */   qmfc2.ni  $a0, $vf4
    /* 12B27C 0022A2FC C9FF4104 */  bgez       $v0, func_0022A224
    /* 12B280 0022A300 3D0B814B */   vmr32.xy  $vf1, $vf1
    /* 12B284 0022A304 7E19834B */  vftoi12.xy $vf3, $vf3
    /* 12B288 0022A308 18008A96 */  lhu        $t2, 0x18($s4)
    /* 12B28C 0022A30C 00382248 */  qmfc2.ni   $v0, $vf7
    /* 12B290 0022A310 2D28A500 */  daddu      $a1, $a1, $a1
    /* 12B294 0022A314 00402348 */  qmfc2.ni   $v1, $vf8
    /* 12B298 0022A318 26208500 */  xor        $a0, $a0, $a1
    /* 12B29C 0022A31C C1FF4004 */  bltz       $v0, func_0022A224
    /* 12B2A0 0022A320 3C100200 */   dsll32    $v0, $v0, 0
    /* 12B2A4 0022A324 BFFF4004 */  bltz       $v0, func_0022A224
    /* 12B2A8 0022A328 25186400 */   or        $v1, $v1, $a0
    /* 12B2AC 0022A32C 9B08184B */  vmulw.x    $vf2, $vf1, $vf24w
    /* 12B2B0 0022A330 300064DA */  lqc2       $vf4, 0x30($s3)
    /* 12B2B4 0022A334 1B008192 */  lbu        $at, 0x1B($s4)
    /* 12B2B8 0022A338 00000000 */  nop
    /* 12B2BC 0022A33C 1E008296 */  lhu        $v0, 0x1E($s4)
    /* 12B2C0 0022A340 00000000 */  nop
    /* 12B2C4 0022A344 03002014 */  bnez       $at, .L0022A354
    /* 12B2C8 0022A348 FFFF0134 */   ori       $at, $zero, 0xFFFF
    /* 12B2CC 0022A34C 09002210 */  beq        $at, $v0, .L0022A374
    /* 12B2D0 0022A350 00000000 */   nop
.align 2
  .L0022A354:
    /* 12B2D4 0022A354 8C3FE18F */  lw         $at, (0x70003F8C & 0xFFFF)($ra)
    /* 12B2D8 0022A358 FE35E223 */  addi       $v0, $ra, (0x700035FE & 0xFFFF) /* handwritten instruction */
    /* 12B2DC 0022A35C 05002210 */  beq        $at, $v0, .L0022A374
    /* 12B2E0 0022A360 00000000 */   nop
    /* 12B2E4 0022A364 00002AA4 */  sh         $t2, 0x0($at)
    /* 12B2E8 0022A368 02002120 */  addi       $at, $at, 0x2 /* handwritten instruction */
    /* 12B2EC 0022A36C 8C3FE1AF */  sw         $at, (0x70003F8C & 0xFFFF)($ra)
    /* 12B2F0 0022A370 00000000 */  nop
.align 2
  .L0022A374:
    /* 12B2F4 0022A374 90006004 */  bltz       $v1, .L0022A5B8
    /* 12B2F8 0022A378 3C180300 */   dsll32    $v1, $v1, 0
    /* 12B2FC 0022A37C 8E006004 */  bltz       $v1, .L0022A5B8
    /* 12B300 0022A380 7E09854A */   vftoi12.y $vf5, $vf1
    /* 12B304 0022A384 2D00C011 */  beqz       $t6, .L0022A43C
    /* 12B308 0022A388 00182348 */   qmfc2.ni  $v1, $vf3
    /* 12B30C 0022A38C 17008192 */  lbu        $at, 0x17($s4)
    /* 12B310 0022A390 00000000 */  nop
    /* 12B314 0022A394 00800334 */  ori        $v1, $zero, 0x8000
    /* 12B318 0022A398 00800634 */  ori        $a2, $zero, 0x8000
    /* 12B31C 0022A39C 0B002010 */  beqz       $at, .L0022A3CC
    /* 12B320 0022A3A0 3C180300 */   dsll32    $v1, $v1, 0
    /* 12B324 0022A3A4 00282248 */  qmfc2.ni   $v0, $vf5
    /* 12B328 0022A3A8 3C0B0100 */  dsll32     $at, $at, 12
    /* 12B32C 0022A3AC 00800434 */  ori        $a0, $zero, 0x8000
    /* 12B330 0022A3B0 2C186100 */  dadd       $v1, $v1, $at
    /* 12B334 0022A3B4 2E304100 */  dsub       $a2, $v0, $at
    /* 12B338 0022A3B8 2E186200 */  dsub       $v1, $v1, $v0
    /* 12B33C 0022A3BC 1F00C004 */  bltz       $a2, .L0022A43C
    /* 12B340 0022A3C0 3F300600 */   dsra32    $a2, $a2, 0
    /* 12B344 0022A3C4 97FF0014 */  bnez       $zero, func_0022A224
    /* 12B348 0022A3C8 E830C470 */   pminw     $a2, $a2, $a0
.align 2
  .L0022A3CC:
    /* 12B34C 0022A3CC 02320600 */  srl        $a2, $a2, 8
    /* 12B350 0022A3D0 80000220 */  addi       $v0, $zero, 0x80 /* handwritten instruction */
    /* 12B354 0022A3D4 0F00C214 */  bne        $a2, $v0, .L0022A414
    /* 12B358 0022A3D8 6C3FE18F */   lw        $at, (0x70003F6C & 0xFFFF)($ra)
    /* 12B35C 0022A3DC 00182348 */  qmfc2.ni   $v1, $vf3
    /* 12B360 0022A3E0 002CE223 */  addi       $v0, $ra, (0x70002C00 & 0xFFFF) /* handwritten instruction */
    /* 12B364 0022A3E4 8FFF2210 */  beq        $at, $v0, func_0022A224
    /* 12B368 0022A3E8 7F180300 */   dsra32    $v1, $v1, 1
    /* 12B36C 0022A3EC 00800234 */  ori        $v0, $zero, 0x8000
    /* 12B370 0022A3F0 01001022 */  addi       $s0, $s0, 0x1 /* handwritten instruction */
    /* 12B374 0022A3F4 E8186270 */  pminw      $v1, $v1, $v0
    /* 12B378 0022A3F8 00002AA4 */  sh         $t2, 0x0($at)
    /* 12B37C 0022A3FC 021A0300 */  srl        $v1, $v1, 8
    /* 12B380 0022A400 00000000 */  nop
    /* 12B384 0022A404 020023A4 */  sh         $v1, 0x2($at)
    /* 12B388 0022A408 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 12B38C 0022A40C 89A80808 */  j          func_0022A224
    /* 12B390 0022A410 6C3FE1AF */   sw        $at, (0x70003F6C & 0xFFFF)($ra)
.align 2
  .L0022A414:
    /* 12B394 0022A414 002CE223 */  addi       $v0, $ra, (0x70002C00 & 0xFFFF) /* handwritten instruction */
    /* 12B398 0022A418 00000000 */  nop
    /* 12B39C 0022A41C 81FF2210 */  beq        $at, $v0, func_0022A224
    /* 12B3A0 0022A420 00000000 */   nop
    /* 12B3A4 0022A424 020026A4 */  sh         $a2, 0x2($at)
    /* 12B3A8 0022A428 01001022 */  addi       $s0, $s0, 0x1 /* handwritten instruction */
    /* 12B3AC 0022A42C 00002AA4 */  sh         $t2, 0x0($at)
    /* 12B3B0 0022A430 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 12B3B4 0022A434 6C3FE1AF */  sw         $at, (0x70003F6C & 0xFFFF)($ra)
    /* 12B3B8 0022A438 00000000 */  nop
.align 2
  .L0022A43C:
    /* 12B3BC 0022A43C 6F14114B */  vmini.x    $vf17, $vf2, $vf17
    /* 12B3C0 0022A440 02211E00 */  srl        $a0, $fp, 4
    /* 12B3C4 0022A444 3F180300 */  dsra32     $v1, $v1, 0
    /* 12B3C8 0022A448 00800234 */  ori        $v0, $zero, 0x8000
    /* 12B3CC 0022A44C 4000A07F */  sq         $zero, 0x40($sp)
    /* 12B3D0 0022A450 E8186270 */  pminw      $v1, $v1, $v0
    /* 12B3D4 0022A454 09006214 */  bne        $v1, $v0, .L0022A47C
    /* 12B3D8 0022A458 002D0A00 */   sll       $a1, $t2, 20
    /* 12B3DC 0022A45C 683FE18F */  lw         $at, (0x70003F68 & 0xFFFF)($ra)
    /* 12B3E0 0022A460 0030E223 */  addi       $v0, $ra, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* 12B3E4 0022A464 6FFF2210 */  beq        $at, $v0, func_0022A224
    /* 12B3E8 0022A468 25208500 */   or        $a0, $a0, $a1
    /* 12B3EC 0022A46C 000024AC */  sw         $a0, 0x0($at)
    /* 12B3F0 0022A470 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 12B3F4 0022A474 33A90808 */  j          func_0022A4CC
    /* 12B3F8 0022A478 683FE1AF */   sw        $at, (0x70003F68 & 0xFFFF)($ra)
.align 2
  .L0022A47C:
    /* 12B3FC 0022A47C 25208500 */  or         $a0, $a0, $a1
    /* 12B400 0022A480 883FE58F */  lw         $a1, (0x70003F88 & 0xFFFF)($ra)
    /* 12B404 0022A484 80310A00 */  sll        $a2, $t2, 6
    /* 12B408 0022A488 40390A00 */  sll        $a3, $t2, 5
    /* 12B40C 0022A48C 2030C700 */  add        $a2, $a2, $a3 /* handwritten instruction */
    /* 12B410 0022A490 021A0300 */  srl        $v1, $v1, 8
    /* 12B414 0022A494 2028A600 */  add        $a1, $a1, $a2 /* handwritten instruction */
    /* 12B418 0022A498 0000A58C */  lw         $a1, 0x0($a1)
    /* 12B41C 0022A49C 61FF0014 */  bnez       $zero, func_0022A224
    /* 12B420 0022A4A0 882E0570 */   pextlb    $a1, $zero, $a1
    /* 12B424 0022A4A4 882D0570 */  pextlh     $a1, $zero, $a1
    /* 12B428 0022A4A8 703FE18F */  lw         $at, (0x70003F70 & 0xFFFF)($ra)
    /* 12B42C 0022A4AC 4000A57F */  sq         $a1, 0x40($sp)
    /* 12B430 0022A4B0 003BE223 */  addi       $v0, $ra, (0x70003B00 & 0xFFFF) /* handwritten instruction */
    /* 12B434 0022A4B4 5BFF2210 */  beq        $at, $v0, func_0022A224
    /* 12B438 0022A4B8 4C00A3AF */   sw        $v1, 0x4C($sp)
    /* 12B43C 0022A4BC 000024AC */  sw         $a0, 0x0($at)
    /* 12B440 0022A4C0 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 12B444 0022A4C4 703FE1AF */  sw         $at, (0x70003F70 & 0xFFFF)($ra)
    /* 12B448 0022A4C8 01005222 */  addi       $s2, $s2, 0x1 /* handwritten instruction */
.align 2
  alabel func_0022A4CC
    /* 12B44C 0022A4CC 000061DA */  lqc2       $vf1, 0x0($s3)
    /* 12B450 0022A4D0 00006722 */  addi       $a3, $s3, 0x0 /* handwritten instruction */
    /* 12B454 0022A4D4 100062DA */  lqc2       $vf2, 0x10($s3)
    /* 12B458 0022A4D8 00000000 */  nop
    /* 12B45C 0022A4DC 200063DA */  lqc2       $vf3, 0x20($s3)
    /* 12B460 0022A4E0 5B08C44B */  vmulw.xyz  $vf1, $vf1, $vf4w
    /* 12B464 0022A4E4 9B10C44B */  vmulw.xyz  $vf2, $vf2, $vf4w
    /* 12B468 0022A4E8 9C3FE18F */  lw         $at, (0x70003F9C & 0xFFFF)($ra)
    /* 12B46C 0022A4EC DB18C44B */  vmulw.xyz  $vf3, $vf3, $vf4w
    /* 12B470 0022A4F0 5000BD23 */  addi       $sp, $sp, 0x50 /* handwritten instruction */
    /* 12B474 0022A4F4 44002014 */  bnez       $at, .L0022A608
    /* 12B478 0022A4F8 2C21D84B */   vsub.xyz  $vf4, $vf4, $vf24
.align 2
  alabel D_0022A4FC
    /* 12B47C 0022A4FC BCE1E14B */  vmulax.xyzw ACC, $vf28, $vf1x
    /* 12B480 0022A500 BDE8E14B */  vmadday.xyzw ACC, $vf29, $vf1y
    /* 12B484 0022A504 BEF0E14B */  vmaddaz.xyzw ACC, $vf30, $vf1z
    /* 12B488 0022A508 48F8E04B */  vmaddx.xyzw $vf1, $vf31, $vf0x
    /* 12B48C 0022A50C 1B21D84B */  vmulw.xyz  $vf4, $vf4, $vf24w
    /* 12B490 0022A510 5000DE23 */  addi       $fp, $fp, 0x50 /* handwritten instruction */
    /* 12B494 0022A514 BCE1E24B */  vmulax.xyzw ACC, $vf28, $vf2x
    /* 12B498 0022A518 BDE8E24B */  vmadday.xyzw ACC, $vf29, $vf2y
    /* 12B49C 0022A51C BEF0E24B */  vmaddaz.xyzw ACC, $vf30, $vf2z
    /* 12B4A0 0022A520 88F8E04B */  vmaddx.xyzw $vf2, $vf31, $vf0x
    /* 12B4A4 0022A524 BCE1E34B */  vmulax.xyzw ACC, $vf28, $vf3x
    /* 12B4A8 0022A528 BDE8E34B */  vmadday.xyzw ACC, $vf29, $vf3y
    /* 12B4AC 0022A52C BEF0E34B */  vmaddaz.xyzw ACC, $vf30, $vf3z
    /* 12B4B0 0022A530 C8F8E04B */  vmaddx.xyzw $vf3, $vf31, $vf0x
    /* 12B4B4 0022A534 BCE1E44B */  vmulax.xyzw ACC, $vf28, $vf4x
    /* 12B4B8 0022A538 BDE8E44B */  vmadday.xyzw ACC, $vf29, $vf4y
    /* 12B4BC 0022A53C BEF0E44B */  vmaddaz.xyzw ACC, $vf30, $vf4z
    /* 12B4C0 0022A540 0BF9E04B */  vmaddw.xyzw $vf4, $vf31, $vf0w
    /* 12B4C4 0022A544 B0FFA1FB */  sqc2       $vf1, -0x50($sp)
    /* 12B4C8 0022A548 00000000 */  nop
    /* 12B4CC 0022A54C C0FFA2FB */  sqc2       $vf2, -0x40($sp)
    /* 12B4D0 0022A550 0006A133 */  andi       $at, $sp, 0x600
    /* 12B4D4 0022A554 D0FFA3FB */  sqc2       $vf3, -0x30($sp)
    /* 12B4D8 0022A558 00060220 */  addi       $v0, $zero, 0x600 /* handwritten instruction */
    /* 12B4DC 0022A55C 31FF2214 */  bne        $at, $v0, func_0022A224
    /* 12B4E0 0022A560 E0FFA4FB */   sqc2      $vf4, -0x20($sp)
    /* 12B4E4 0022A564 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12B4E8 0022A568 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12B4EC 0022A56C 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12B4F0 0022A570 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022A574:
    /* 12B4F4 0022A574 0000838C */  lw         $v1, 0x0($a0)
    /* 12B4F8 0022A578 00016330 */  andi       $v1, $v1, 0x100
    /* 12B4FC 0022A57C 00000000 */  nop
    /* 12B500 0022A580 00000000 */  nop
    /* 12B504 0022A584 00000000 */  nop
    /* 12B508 0022A588 FAFF6014 */  bnez       $v1, .L0022A574
    /* 12B50C 0022A58C 00000000 */   nop
    /* 12B510 0022A590 800082AC */  sw         $v0, 0x80($a0)
    /* 12B514 0022A594 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12B518 0022A598 100082AC */  sw         $v0, 0x10($a0)
    /* 12B51C 0022A59C 02110100 */  srl        $v0, $at, 4
    /* 12B520 0022A5A0 200082AC */  sw         $v0, 0x20($a0)
    /* 12B524 0022A5A4 00010234 */  ori        $v0, $zero, 0x100
    /* 12B528 0022A5A8 000082AC */  sw         $v0, 0x0($a0)
    /* 12B52C 0022A5AC 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12B530 0022A5B0 89A80808 */  j          func_0022A224
    /* 12B534 0022A5B4 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L0022A5B8:
    /* 12B538 0022A5B8 743FE18F */  lw         $at, (0x70003F74 & 0xFFFF)($ra)
    /* 12B53C 0022A5BC 003FE223 */  addi       $v0, $ra, (0x70003F00 & 0xFFFF) /* handwritten instruction */
    /* 12B540 0022A5C0 6F14114B */  vmini.x    $vf17, $vf2, $vf17
    /* 12B544 0022A5C4 00000000 */  nop
    /* 12B548 0022A5C8 16FF2210 */  beq        $at, $v0, func_0022A224
    /* 12B54C 0022A5CC 783FE38F */   lw        $v1, (0x70003F78 & 0xFFFF)($ra)
    /* 12B550 0022A5D0 FF0F8432 */  andi       $a0, $s4, 0xFFF
    /* 12B554 0022A5D4 01003122 */  addi       $s1, $s1, 0x1 /* handwritten instruction */
    /* 12B558 0022A5D8 20186400 */  add        $v1, $v1, $a0 /* handwritten instruction */
    /* 12B55C 0022A5DC 00000000 */  nop
    /* 12B560 0022A5E0 000023AC */  sw         $v1, 0x0($at)
    /* 12B564 0022A5E4 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 12B568 0022A5E8 89A80808 */  j          func_0022A224
    /* 12B56C 0022A5EC 743FE1AF */   sw        $at, (0x70003F74 & 0xFFFF)($ra)
.align 2
  .L0022A5F0:
    /* 12B570 0022A5F0 E0FF9422 */  addi       $s4, $s4, -0x20 /* handwritten instruction */
    /* 12B574 0022A5F4 00000000 */  nop
    /* 12B578 0022A5F8 89A80808 */  j          func_0022A224
    /* 12B57C 0022A5FC 00000000 */   nop
.align 2
  .L0022A600:
    /* 12B580 0022A600 75A80808 */  j          func_0022A1D4
    /* 12B584 0022A604 00000000 */   nop
.align 2
  .L0022A608:
    /* 12B588 0022A608 003CE637 */  ori        $a2, $ra, (0x70003C00 & 0xFFFF)
    /* 12B58C 0022A60C 1000C9D8 */  lqc2       $vf9, 0x10($a2)
    /* 12B590 0022A610 0000C8D8 */  lqc2       $vf8, 0x0($a2)
    /* 12B594 0022A614 2000C58C */  lw         $a1, 0x20($a2)
    /* 12B598 0022A618 42080100 */  srl        $at, $at, 1
    /* 12B59C 0022A61C C302004B */  vaddw.x    $vf11, $vf0, $vf0w
    /* 12B5A0 0022A620 2A23C44B */  vmul.xyz   $vf12, $vf4, $vf4
    /* 12B5A4 0022A624 003BE637 */  ori        $a2, $ra, (0x70003B00 & 0xFFFF)
    /* 12B5A8 0022A628 3D600C4B */  vadday.x   ACC, $vf12, $vf12y
    /* 12B5AC 0022A62C 0A5B0C4B */  vmaddz.x   $vf12, $vf11, $vf12z
    /* 12B5B0 0022A630 04488C4A */  vsubx.y    $vf0, $vf9, $vf12x
    /* 12B5B4 0022A634 FF02004A */  vnop
    /* 12B5B8 0022A638 FF02004A */  vnop
    /* 12B5BC 0022A63C FF02004A */  vnop
    /* 12B5C0 0022A640 FF02004A */  vnop
    /* 12B5C4 0022A644 00884448 */  cfc2.ni    $a0, $vi17
    /* 12B5C8 0022A648 1A63094B */  vmulz.x    $vf12, $vf12, $vf9z
    /* 12B5CC 0022A64C 40008430 */  andi       $a0, $a0, 0x40
    /* 12B5D0 0022A650 49008014 */  bnez       $a0, .L0022A778
    /* 12B5D4 0022A654 04032C4A */   vsubx.w   $vf12, $vf0, $vf12x
    /* 12B5D8 0022A658 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 12B5DC 0022A65C 80110700 */  sll        $v0, $a3, 6
    /* 12B5E0 0022A660 9801E04B */  vmulx.xyzw $vf6, $vf0, $vf0x
    /* 12B5E4 0022A664 40200700 */  sll        $a0, $a3, 1
    /* 12B5E8 0022A668 3D03E74B */  vmr32.xyzw $vf7, $vf0
    /* 12B5EC 0022A66C 21104400 */  addu       $v0, $v0, $a0
    /* 12B5F0 0022A670 4329004B */  vaddw.x    $vf5, $vf5, $vf0w
    /* 12B5F4 0022A674 21104700 */  addu       $v0, $v0, $a3
    /* 12B5F8 0022A678 8331804A */  vaddw.y    $vf6, $vf6, $vf0w
    /* 12B5FC 0022A67C C0190700 */  sll        $v1, $a3, 7
    /* 12B600 0022A680 80200700 */  sll        $a0, $a3, 2
    /* 12B604 0022A684 23186400 */  subu       $v1, $v1, $a0
    /* 12B608 0022A688 23186700 */  subu       $v1, $v1, $a3
    /* 12B60C 0022A68C 21104500 */  addu       $v0, $v0, $a1
    /* 12B610 0022A690 03002010 */  beqz       $at, .L0022A6A0
    /* 12B614 0022A694 21186500 */   addu      $v1, $v1, $a1
    /* 12B618 0022A698 21186500 */  addu       $v1, $v1, $a1
    /* 12B61C 0022A69C 00000000 */  nop
.align 2
  .L0022A6A0:
    /* 12B620 0022A6A0 FF004430 */  andi       $a0, $v0, 0xFF
    /* 12B624 0022A6A4 21208600 */  addu       $a0, $a0, $a2
    /* 12B628 0022A6A8 00008480 */  lb         $a0, 0x0($a0)
    /* 12B62C 0022A6AC 40210400 */  sll        $a0, $a0, 5
    /* 12B630 0022A6B0 0050A448 */  qmtc2.ni   $a0, $vf10
    /* 12B634 0022A6B4 3E51EA4B */  vitof12.xyzw $vf10, $vf10
    /* 12B638 0022A6B8 42200200 */  srl        $a0, $v0, 1
    /* 12B63C 0022A6BC FF008430 */  andi       $a0, $a0, 0xFF
    /* 12B640 0022A6C0 21208600 */  addu       $a0, $a0, $a2
    /* 12B644 0022A6C4 00008480 */  lb         $a0, 0x0($a0)
    /* 12B648 0022A6C8 40210400 */  sll        $a0, $a0, 5
    /* 12B64C 0022A6CC 0058A448 */  qmtc2.ni   $a0, $vf11
    /* 12B650 0022A6D0 3E59EB4B */  vitof12.xyzw $vf11, $vf11
    /* 12B654 0022A6D4 00000000 */  nop
    /* 12B658 0022A6D8 6A530B4B */  vmul.x     $vf13, $vf10, $vf11
    /* 12B65C 0022A6DC 40006424 */  addiu      $a0, $v1, 0x40
    /* 12B660 0022A6E0 4403294A */  vsubx.w    $vf13, $vf0, $vf9x
    /* 12B664 0022A6E4 FF008430 */  andi       $a0, $a0, 0xFF
    /* 12B668 0022A6E8 586B094B */  vmulx.x    $vf13, $vf13, $vf9x
    /* 12B66C 0022A6EC 21208600 */  addu       $a0, $a0, $a2
    /* 12B670 0022A6F0 436B0D4B */  vaddw.x    $vf13, $vf13, $vf13w
    /* 12B674 0022A6F4 00008480 */  lb         $a0, 0x0($a0)
    /* 12B678 0022A6F8 40210400 */  sll        $a0, $a0, 5
    /* 12B67C 0022A6FC 0050A448 */  qmtc2.ni   $a0, $vf10
    /* 12B680 0022A700 3E51EA4B */  vitof12.xyzw $vf10, $vf10
    /* 12B684 0022A704 42200300 */  srl        $a0, $v1, 1
    /* 12B688 0022A708 FF008430 */  andi       $a0, $a0, 0xFF
    /* 12B68C 0022A70C 21208600 */  addu       $a0, $a0, $a2
    /* 12B690 0022A710 00008480 */  lb         $a0, 0x0($a0)
    /* 12B694 0022A714 40210400 */  sll        $a0, $a0, 5
    /* 12B698 0022A718 0058A448 */  qmtc2.ni   $a0, $vf11
    /* 12B69C 0022A71C 3E59EB4B */  vitof12.xyzw $vf11, $vf11
    /* 12B6A0 0022A720 586B084B */  vmulx.x    $vf13, $vf13, $vf8x
    /* 12B6A4 0022A724 BD51084B */  vmulay.x   ACC, $vf10, $vf8y
    /* 12B6A8 0022A728 8A6A084B */  vmaddz.x   $vf10, $vf13, $vf8z
    /* 12B6AC 0022A72C 9B520C4B */  vmulw.x    $vf10, $vf10, $vf12w
    /* 12B6B0 0022A730 BD59084B */  vmulay.x   ACC, $vf11, $vf8y
    /* 12B6B4 0022A734 CB6A084B */  vmaddw.x   $vf11, $vf13, $vf8w
    /* 12B6B8 0022A738 03002014 */  bnez       $at, .L0022A748
    /* 12B6BC 0022A73C DB5A0C4B */   vmulw.x   $vf11, $vf11, $vf12w
    /* 12B6C0 0022A740 9B52094B */  vmulw.x    $vf10, $vf10, $vf9w
    /* 12B6C4 0022A744 DB5A094B */  vmulw.x    $vf11, $vf11, $vf9w
.align 2
  .L0022A748:
    /* 12B6C8 0022A748 C0010A4B */  vaddx.x    $vf7, $vf0, $vf10x
    /* 12B6CC 0022A74C C0018B4A */  vaddx.y    $vf7, $vf0, $vf11x
    /* 12B6D0 0022A750 BC29C14B */  vmulax.xyz ACC, $vf5, $vf1x
    /* 12B6D4 0022A754 BD30C14B */  vmadday.xyz ACC, $vf6, $vf1y
    /* 12B6D8 0022A758 4A38C14B */  vmaddz.xyz $vf1, $vf7, $vf1z
    /* 12B6DC 0022A75C BC29C24B */  vmulax.xyz ACC, $vf5, $vf2x
    /* 12B6E0 0022A760 BD30C24B */  vmadday.xyz ACC, $vf6, $vf2y
    /* 12B6E4 0022A764 8A38C24B */  vmaddz.xyz $vf2, $vf7, $vf2z
    /* 12B6E8 0022A768 BC29C34B */  vmulax.xyz ACC, $vf5, $vf3x
    /* 12B6EC 0022A76C BD30C34B */  vmadday.xyz ACC, $vf6, $vf3y
    /* 12B6F0 0022A770 CA38C34B */  vmaddz.xyz $vf3, $vf7, $vf3z
    /* 12B6F4 0022A774 00000000 */  nop
.align 2
  .L0022A778:
    /* 12B6F8 0022A778 A03FE78F */  lw         $a3, (0x70003FA0 & 0xFFFF)($ra)
    /* 12B6FC 0022A77C 00000000 */  nop
    /* 12B700 0022A780 0800E000 */  jr         $a3
    /* 12B704 0022A784 00000000 */   nop
.align 2
  .L0022A788:
    /* 12B708 0022A788 86000014 */  bnez       $zero, .L0022A9A4
    /* 12B70C 0022A78C A9236072 */   pcpyud    $a0, $s3, $zero
    /* 12B710 0022A790 84009E10 */  beq        $a0, $fp, .L0022A9A4
    /* 12B714 0022A794 7C89114B */   vftoi0.x  $vf17, $vf17
    /* 12B718 0022A798 02090400 */  srl        $at, $a0, 4
    /* 12B71C 0022A79C 2210C403 */  sub        $v0, $fp, $a0 /* handwritten instruction */
    /* 12B720 0022A7A0 00140200 */  sll        $v0, $v0, 16
    /* 12B724 0022A7A4 683FF68F */  lw         $s6, (0x70003F68 & 0xFFFF)($ra)
    /* 12B728 0022A7A8 20184100 */  add        $v1, $v0, $at /* handwritten instruction */
    /* 12B72C 0022A7AC 40101900 */  sll        $v0, $t9, 1
    /* 12B730 0022A7B0 2010E203 */  add        $v0, $ra, $v0 /* handwritten instruction */
    /* 12B734 0022A7B4 400000CF */  pref       0x00, 0x40($t8)
    /* 12B738 0022A7B8 003650A4 */  sh         $s0, 0x3600($v0)
    /* 12B73C 0022A7BC 80081900 */  sll        $at, $t9, 2
    /* 12B740 0022A7C0 803C51A4 */  sh         $s1, 0x3C80($v0)
    /* 12B744 0022A7C4 2008E103 */  add        $at, $ra, $at /* handwritten instruction */
    /* 12B748 0022A7C8 803652A4 */  sh         $s2, 0x3680($v0)
    /* 12B74C 0022A7CC 01003923 */  addi       $t9, $t9, 0x1 /* handwritten instruction */
    /* 12B750 0022A7D0 00882248 */  qmfc2.ni   $v0, $vf17
    /* 12B754 0022A7D4 22B0DF02 */  sub        $s6, $s6, $ra /* handwritten instruction */
    /* 12B758 0022A7D8 003023AC */  sw         $v1, 0x3000($at)
    /* 12B75C 0022A7DC 00D4D622 */  addi       $s6, $s6, -0x2C00 /* handwritten instruction */
    /* 12B760 0022A7E0 003122AC */  sw         $v0, 0x3100($at)
    /* 12B764 0022A7E4 82B01600 */  srl        $s6, $s6, 2
    /* 12B768 0022A7E8 380010A7 */  sh         $s0, 0x38($t8)
    /* 12B76C 0022A7EC 20085602 */  add        $at, $s2, $s6 /* handwritten instruction */
    /* 12B770 0022A7F0 360011A7 */  sh         $s1, 0x36($t8)
    /* 12B774 0022A7F4 340001A7 */  sh         $at, 0x34($t8)
    /* 12B778 0022A7F8 5AFEC012 */  beqz       $s6, func_0022A164
    /* 12B77C 0022A7FC 28001597 */   lhu       $s5, 0x28($t8)
    /* 12B780 0022A800 40001423 */  addi       $s4, $t8, 0x40 /* handwritten instruction */
    /* 12B784 0022A804 00000000 */  nop
    /* 12B788 0022A808 C0A81500 */  sll        $s5, $s5, 3
    /* 12B78C 0022A80C 20A89502 */  add        $s5, $s4, $s5 /* handwritten instruction */
    /* 12B790 0022A810 7C3FE78F */  lw         $a3, (0x70003F7C & 0xFFFF)($ra)
    /* 12B794 0022A814 803FE88F */  lw         $t0, (0x70003F80 & 0xFFFF)($ra)
    /* 12B798 0022A818 843FE98F */  lw         $t1, (0x70003F84 & 0xFFFF)($ra)
    /* 12B79C 0022A81C 00000000 */  nop
    /* 12B7A0 0022A820 003FEA7B */  lq         $t2, (0x70003F00 & 0xFFFF)($ra)
    /* 12B7A4 0022A824 103FEB7B */  lq         $t3, (0x70003F10 & 0xFFFF)($ra)
    /* 12B7A8 0022A828 203FEC7B */  lq         $t4, (0x70003F20 & 0xFFFF)($ra)
    /* 12B7AC 0022A82C 303FED7B */  lq         $t5, (0x70003F30 & 0xFFFF)($ra)
    /* 12B7B0 0022A830 403FEE7B */  lq         $t6, (0x70003F40 & 0xFFFF)($ra)
    /* 12B7B4 0022A834 503FEF7B */  lq         $t7, (0x70003F50 & 0xFFFF)($ra)
.align 2
  .L0022A838:
    /* 12B7B8 0022A838 0000818E */  lw         $at, 0x0($s4)
    /* 12B7BC 0022A83C 00000000 */  nop
    /* 12B7C0 0022A840 0400828E */  lw         $v0, 0x4($s4)
    /* 12B7C4 0022A844 08009422 */  addi       $s4, $s4, 0x8 /* handwritten instruction */
    /* 12B7C8 0022A848 0000AA7F */  sq         $t2, 0x0($sp)
    /* 12B7CC 0022A84C 00000000 */  nop
    /* 12B7D0 0022A850 0400A1AF */  sw         $at, 0x4($sp)
    /* 12B7D4 0022A854 02110200 */  srl        $v0, $v0, 4
    /* 12B7D8 0022A858 0000A2A7 */  sh         $v0, 0x0($sp)
    /* 12B7DC 0022A85C 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12B7E0 0022A860 0800A7A7 */  sh         $a3, 0x8($sp)
    /* 12B7E4 0022A864 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12B7E8 0022A868 0000AB7F */  sq         $t3, 0x0($sp)
    /* 12B7EC 0022A86C 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12B7F0 0022A870 0C00A9A7 */  sh         $t1, 0xC($sp)
    /* 12B7F4 0022A874 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12B7F8 0022A878 002CE623 */  addi       $a2, $ra, (0x70002C00 & 0xFFFF) /* handwritten instruction */
    /* 12B7FC 0022A87C 0000D722 */  addi       $s7, $s6, 0x0 /* handwritten instruction */
.align 2
  alabel func_0022A880
    /* 12B800 0022A880 05000120 */  addi       $at, $zero, 0x5 /* handwritten instruction */
    /* 12B804 0022A884 01000521 */  addi       $a1, $t0, 0x1 /* handwritten instruction */
    /* 12B808 0022A888 3C00E012 */  beqz       $s7, .L0022A97C
    /* 12B80C 0022A88C E820E172 */   pminw     $a0, $s7, $at
    /* 12B810 0022A890 0000AC7F */  sq         $t4, 0x0($sp)
    /* 12B814 0022A894 22B8E402 */  sub        $s7, $s7, $a0 /* handwritten instruction */
    /* 12B818 0022A898 0800A8A7 */  sh         $t0, 0x8($sp)
    /* 12B81C 0022A89C 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12B820 0022A8A0 0C00A4AF */  sw         $a0, 0xC($sp)
    /* 12B824 0022A8A4 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
.align 2
  .L0022A8A8:
    /* 12B828 0022A8A8 0000C18C */  lw         $at, 0x0($a2)
    /* 12B82C 0022A8AC 0400C620 */  addi       $a2, $a2, 0x4 /* handwritten instruction */
    /* 12B830 0022A8B0 0000AD7F */  sq         $t5, 0x0($sp)
    /* 12B834 0022A8B4 FFFF8420 */  addi       $a0, $a0, -0x1 /* handwritten instruction */
    /* 12B838 0022A8B8 00130100 */  sll        $v0, $at, 12
    /* 12B83C 0022A8BC 020D0100 */  srl        $at, $at, 20
    /* 12B840 0022A8C0 0C00A5A7 */  sh         $a1, 0xC($sp)
    /* 12B844 0022A8C4 02120200 */  srl        $v0, $v0, 8
    /* 12B848 0022A8C8 0400A2AF */  sw         $v0, 0x4($sp)
    /* 12B84C 0022A8CC 0400A320 */  addi       $v1, $a1, 0x4 /* handwritten instruction */
    /* 12B850 0022A8D0 BC110100 */  dsll32     $v0, $at, 6
    /* 12B854 0022A8D4 7C090100 */  dsll32     $at, $at, 5
    /* 12B858 0022A8D8 2C082200 */  dadd       $at, $at, $v0
    /* 12B85C 0022A8DC 1C00A520 */  addi       $a1, $a1, 0x1C /* handwritten instruction */
    /* 12B860 0022A8E0 1000AF7F */  sq         $t7, 0x10($sp)
    /* 12B864 0022A8E4 2C082F00 */  dadd       $at, $at, $t7
    /* 12B868 0022A8E8 00406334 */  ori        $v1, $v1, 0x4000
    /* 12B86C 0022A8EC 1000A1FF */  sd         $at, 0x10($sp)
    /* 12B870 0022A8F0 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* 12B874 0022A8F4 2000DE23 */  addi       $fp, $fp, 0x20 /* handwritten instruction */
    /* 12B878 0022A8F8 EBFF8014 */  bnez       $a0, .L0022A8A8
    /* 12B87C 0022A8FC 2000BD23 */   addi      $sp, $sp, 0x20 /* handwritten instruction */
    /* 12B880 0022A900 0000AE7F */  sq         $t6, 0x0($sp)
    /* 12B884 0022A904 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12B888 0022A908 69020120 */  addi       $at, $zero, 0x269 /* handwritten instruction */
    /* 12B88C 0022A90C 26000220 */  addi       $v0, $zero, 0x26 /* handwritten instruction */
    /* 12B890 0022A910 22402800 */  sub        $t0, $at, $t0 /* handwritten instruction */
    /* 12B894 0022A914 22484900 */  sub        $t1, $v0, $t1 /* handwritten instruction */
    /* 12B898 0022A918 0006A133 */  andi       $at, $sp, 0x600
    /* 12B89C 0022A91C 00060220 */  addi       $v0, $zero, 0x600 /* handwritten instruction */
    /* 12B8A0 0022A920 D7FF2214 */  bne        $at, $v0, func_0022A880
    /* 12B8A4 0022A924 1000DE23 */   addi      $fp, $fp, 0x10 /* handwritten instruction */
    /* 12B8A8 0022A928 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12B8AC 0022A92C 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12B8B0 0022A930 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12B8B4 0022A934 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022A938:
    /* 12B8B8 0022A938 0000838C */  lw         $v1, 0x0($a0)
    /* 12B8BC 0022A93C 00016330 */  andi       $v1, $v1, 0x100
    /* 12B8C0 0022A940 00000000 */  nop
    /* 12B8C4 0022A944 00000000 */  nop
    /* 12B8C8 0022A948 00000000 */  nop
    /* 12B8CC 0022A94C FAFF6014 */  bnez       $v1, .L0022A938
    /* 12B8D0 0022A950 00000000 */   nop
    /* 12B8D4 0022A954 800082AC */  sw         $v0, 0x80($a0)
    /* 12B8D8 0022A958 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12B8DC 0022A95C 100082AC */  sw         $v0, 0x10($a0)
    /* 12B8E0 0022A960 02110100 */  srl        $v0, $at, 4
    /* 12B8E4 0022A964 200082AC */  sw         $v0, 0x20($a0)
    /* 12B8E8 0022A968 00010234 */  ori        $v0, $zero, 0x100
    /* 12B8EC 0022A96C 000082AC */  sw         $v0, 0x0($a0)
    /* 12B8F0 0022A970 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12B8F4 0022A974 20AA0808 */  j          func_0022A880
    /* 12B8F8 0022A978 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L0022A97C:
    /* 12B8FC 0022A97C 7A000120 */  addi       $at, $zero, 0x7A /* handwritten instruction */
    /* 12B900 0022A980 00000000 */  nop
    /* 12B904 0022A984 ACFF9516 */  bne        $s4, $s5, .L0022A838
    /* 12B908 0022A988 22382700 */   sub       $a3, $at, $a3 /* handwritten instruction */
    /* 12B90C 0022A98C 7C3FE7AF */  sw         $a3, (0x70003F7C & 0xFFFF)($ra)
    /* 12B910 0022A990 803FE8AF */  sw         $t0, (0x70003F80 & 0xFFFF)($ra)
    /* 12B914 0022A994 59A80808 */  j          func_0022A164
    /* 12B918 0022A998 843FE9AF */   sw        $t1, (0x70003F84 & 0xFFFF)($ra)
.align 2
  .L0022A99C:
    /* 12B91C 0022A99C 80B91700 */  sll        $s7, $s7, 6
    /* 12B920 0022A9A0 20987702 */  add        $s3, $s3, $s7 /* handwritten instruction */
.align 2
  .L0022A9A4:
    /* 12B924 0022A9A4 F0FFBD23 */  addi       $sp, $sp, -0x10 /* handwritten instruction */
    /* 12B928 0022A9A8 40101900 */  sll        $v0, $t9, 1
    /* 12B92C 0022A9AC 2010E203 */  add        $v0, $ra, $v0 /* handwritten instruction */
    /* 12B930 0022A9B0 F0FFDE23 */  addi       $fp, $fp, -0x10 /* handwritten instruction */
    /* 12B934 0022A9B4 380010A7 */  sh         $s0, 0x38($t8)
    /* 12B938 0022A9B8 360011A7 */  sh         $s1, 0x36($t8)
    /* 12B93C 0022A9BC 340000A7 */  sh         $zero, 0x34($t8)
    /* 12B940 0022A9C0 00000000 */  nop
    /* 12B944 0022A9C4 003650A4 */  sh         $s0, 0x3600($v0)
    /* 12B948 0022A9C8 80081900 */  sll        $at, $t9, 2
    /* 12B94C 0022A9CC 803C51A4 */  sh         $s1, 0x3C80($v0)
    /* 12B950 0022A9D0 2008E103 */  add        $at, $ra, $at /* handwritten instruction */
    /* 12B954 0022A9D4 803652A4 */  sh         $s2, 0x3680($v0)
    /* 12B958 0022A9D8 01003923 */  addi       $t9, $t9, 0x1 /* handwritten instruction */
    /* 12B95C 0022A9DC 003020AC */  sw         $zero, 0x3000($at)
    /* 12B960 0022A9E0 00000000 */  nop
    /* 12B964 0022A9E4 00882248 */  qmfc2.ni   $v0, $vf17
    /* 12B968 0022A9E8 00000000 */  nop
    /* 12B96C 0022A9EC 59A80808 */  j          func_0022A164
    /* 12B970 0022A9F0 003122AC */   sw        $v0, 0x3100($at)
.align 2
  .L0022A9F4:
    /* 12B974 0022A9F4 1E00013C */  lui        $at, %hi(D_001DEE30)
    /* 12B978 0022A9F8 30EE2124 */  addiu      $at, $at, %lo(D_001DEE30)
    /* 12B97C 0022A9FC 00002278 */  lq         $v0, 0x0($at)
    /* 12B980 0022AA00 10002378 */  lq         $v1, 0x10($at)
    /* 12B984 0022AA04 20002478 */  lq         $a0, 0x20($at)
    /* 12B988 0022AA08 0000A27F */  sq         $v0, 0x0($sp)
    /* 12B98C 0022AA0C 1000A37F */  sq         $v1, 0x10($sp)
    /* 12B990 0022AA10 2000A47F */  sq         $a0, 0x20($sp)
    /* 12B994 0022AA14 3000BD23 */  addi       $sp, $sp, 0x30 /* handwritten instruction */
    /* 12B998 0022AA18 3000DE23 */  addi       $fp, $fp, 0x30 /* handwritten instruction */
    /* 12B99C 0022AA1C 00001920 */  addi       $t9, $zero, 0x0 /* handwritten instruction */
    /* 12B9A0 0022AA20 1E00133C */  lui        $s3, %hi(D_001D82C0)
    /* 12B9A4 0022AA24 C0827326 */  addiu      $s3, $s3, %lo(D_001D82C0)
    /* 12B9A8 0022AA28 603FF28F */  lw         $s2, (0x70003F60 & 0xFFFF)($ra)
    /* 12B9AC 0022AA2C 8036F123 */  addi       $s1, $ra, (0x70003680 & 0xFFFF) /* handwritten instruction */
    /* 12B9B0 0022AA30 0037F023 */  addi       $s0, $ra, (0x70003700 & 0xFFFF) /* handwritten instruction */
    /* 12B9B4 0022AA34 7C3FE78F */  lw         $a3, (0x70003F7C & 0xFFFF)($ra)
    /* 12B9B8 0022AA38 803FE88F */  lw         $t0, (0x70003F80 & 0xFFFF)($ra)
    /* 12B9BC 0022AA3C 843FE98F */  lw         $t1, (0x70003F84 & 0xFFFF)($ra)
    /* 12B9C0 0022AA40 00000000 */  nop
    /* 12B9C4 0022AA44 003FEA7B */  lq         $t2, (0x70003F00 & 0xFFFF)($ra)
    /* 12B9C8 0022AA48 103FEB7B */  lq         $t3, (0x70003F10 & 0xFFFF)($ra)
    /* 12B9CC 0022AA4C 203FEC7B */  lq         $t4, (0x70003F20 & 0xFFFF)($ra)
    /* 12B9D0 0022AA50 303FED7B */  lq         $t5, (0x70003F30 & 0xFFFF)($ra)
    /* 12B9D4 0022AA54 403FEE7B */  lq         $t6, (0x70003F40 & 0xFFFF)($ra)
    /* 12B9D8 0022AA58 503FEF7B */  lq         $t7, (0x70003F50 & 0xFFFF)($ra)
.align 2
  alabel func_0022AA5C
    /* 12B9DC 0022AA5C 65003213 */  beq        $t9, $s2, .L0022ABF4
    /* 12B9E0 0022AA60 00003696 */   lhu       $s6, 0x0($s1)
    /* 12B9E4 0022AA64 01003923 */  addi       $t9, $t9, 0x1 /* handwritten instruction */
    /* 12B9E8 0022AA68 02003122 */  addi       $s1, $s1, 0x2 /* handwritten instruction */
    /* 12B9EC 0022AA6C 00000000 */  nop
    /* 12B9F0 0022AA70 FAFFC012 */  beqz       $s6, func_0022AA5C
    /* 12B9F4 0022AA74 04007322 */   addi      $s3, $s3, 0x4 /* handwritten instruction */
    /* 12B9F8 0022AA78 FCFF788E */  lw         $t8, -0x4($s3)
    /* 12B9FC 0022AA7C 00000000 */  nop
    /* 12BA00 0022AA80 40001423 */  addi       $s4, $t8, 0x40 /* handwritten instruction */
    /* 12BA04 0022AA84 28001597 */  lhu        $s5, 0x28($t8)
    /* 12BA08 0022AA88 C0A81500 */  sll        $s5, $s5, 3
    /* 12BA0C 0022AA8C 20A89502 */  add        $s5, $s4, $s5 /* handwritten instruction */
.align 2
  .L0022AA90:
    /* 12BA10 0022AA90 0000818E */  lw         $at, 0x0($s4)
    /* 12BA14 0022AA94 00000000 */  nop
    /* 12BA18 0022AA98 0400828E */  lw         $v0, 0x4($s4)
    /* 12BA1C 0022AA9C 08009422 */  addi       $s4, $s4, 0x8 /* handwritten instruction */
    /* 12BA20 0022AAA0 0000AA7F */  sq         $t2, 0x0($sp)
    /* 12BA24 0022AAA4 00000000 */  nop
    /* 12BA28 0022AAA8 0400A1AF */  sw         $at, 0x4($sp)
    /* 12BA2C 0022AAAC 02110200 */  srl        $v0, $v0, 4
    /* 12BA30 0022AAB0 0000A2A7 */  sh         $v0, 0x0($sp)
    /* 12BA34 0022AAB4 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12BA38 0022AAB8 0800A7A7 */  sh         $a3, 0x8($sp)
    /* 12BA3C 0022AABC 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12BA40 0022AAC0 0000AB7F */  sq         $t3, 0x0($sp)
    /* 12BA44 0022AAC4 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12BA48 0022AAC8 0C00A9A7 */  sh         $t1, 0xC($sp)
    /* 12BA4C 0022AACC 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12BA50 0022AAD0 0000D722 */  addi       $s7, $s6, 0x0 /* handwritten instruction */
    /* 12BA54 0022AAD4 00000622 */  addi       $a2, $s0, 0x0 /* handwritten instruction */
.align 2
  alabel func_0022AAD8
    /* 12BA58 0022AAD8 05000120 */  addi       $at, $zero, 0x5 /* handwritten instruction */
    /* 12BA5C 0022AADC 01000521 */  addi       $a1, $t0, 0x1 /* handwritten instruction */
    /* 12BA60 0022AAE0 3C00E012 */  beqz       $s7, .L0022ABD4
    /* 12BA64 0022AAE4 E820E172 */   pminw     $a0, $s7, $at
    /* 12BA68 0022AAE8 0000AC7F */  sq         $t4, 0x0($sp)
    /* 12BA6C 0022AAEC 22B8E402 */  sub        $s7, $s7, $a0 /* handwritten instruction */
    /* 12BA70 0022AAF0 0800A8A7 */  sh         $t0, 0x8($sp)
    /* 12BA74 0022AAF4 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12BA78 0022AAF8 0C00A4AF */  sw         $a0, 0xC($sp)
    /* 12BA7C 0022AAFC 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
.align 2
  .L0022AB00:
    /* 12BA80 0022AB00 0000C18C */  lw         $at, 0x0($a2)
    /* 12BA84 0022AB04 0400C620 */  addi       $a2, $a2, 0x4 /* handwritten instruction */
    /* 12BA88 0022AB08 1000AD7F */  sq         $t5, 0x10($sp)
    /* 12BA8C 0022AB0C FFFF8420 */  addi       $a0, $a0, -0x1 /* handwritten instruction */
    /* 12BA90 0022AB10 00130100 */  sll        $v0, $at, 12
    /* 12BA94 0022AB14 020D0100 */  srl        $at, $at, 20
    /* 12BA98 0022AB18 1C00A5A7 */  sh         $a1, 0x1C($sp)
    /* 12BA9C 0022AB1C 02120200 */  srl        $v0, $v0, 8
    /* 12BAA0 0022AB20 1400A2AF */  sw         $v0, 0x14($sp)
    /* 12BAA4 0022AB24 0400A320 */  addi       $v1, $a1, 0x4 /* handwritten instruction */
    /* 12BAA8 0022AB28 BC110100 */  dsll32     $v0, $at, 6
    /* 12BAAC 0022AB2C 7C090100 */  dsll32     $at, $at, 5
    /* 12BAB0 0022AB30 2C082200 */  dadd       $at, $at, $v0
    /* 12BAB4 0022AB34 1C00A520 */  addi       $a1, $a1, 0x1C /* handwritten instruction */
    /* 12BAB8 0022AB38 0000AF7F */  sq         $t7, 0x0($sp)
    /* 12BABC 0022AB3C 2C082F00 */  dadd       $at, $at, $t7
    /* 12BAC0 0022AB40 00406334 */  ori        $v1, $v1, 0x4000
    /* 12BAC4 0022AB44 0000A1FF */  sd         $at, 0x0($sp)
    /* 12BAC8 0022AB48 0C00A3A7 */  sh         $v1, 0xC($sp)
    /* 12BACC 0022AB4C 2000DE23 */  addi       $fp, $fp, 0x20 /* handwritten instruction */
    /* 12BAD0 0022AB50 EBFF8014 */  bnez       $a0, .L0022AB00
    /* 12BAD4 0022AB54 2000BD23 */   addi      $sp, $sp, 0x20 /* handwritten instruction */
    /* 12BAD8 0022AB58 0000AE7F */  sq         $t6, 0x0($sp)
    /* 12BADC 0022AB5C 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12BAE0 0022AB60 69020120 */  addi       $at, $zero, 0x269 /* handwritten instruction */
    /* 12BAE4 0022AB64 26000220 */  addi       $v0, $zero, 0x26 /* handwritten instruction */
    /* 12BAE8 0022AB68 22402800 */  sub        $t0, $at, $t0 /* handwritten instruction */
    /* 12BAEC 0022AB6C 22484900 */  sub        $t1, $v0, $t1 /* handwritten instruction */
    /* 12BAF0 0022AB70 0006A133 */  andi       $at, $sp, 0x600
    /* 12BAF4 0022AB74 00060220 */  addi       $v0, $zero, 0x600 /* handwritten instruction */
    /* 12BAF8 0022AB78 D7FF2214 */  bne        $at, $v0, func_0022AAD8
    /* 12BAFC 0022AB7C 1000DE23 */   addi      $fp, $fp, 0x10 /* handwritten instruction */
    /* 12BB00 0022AB80 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12BB04 0022AB84 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12BB08 0022AB88 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12BB0C 0022AB8C 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022AB90:
    /* 12BB10 0022AB90 0000838C */  lw         $v1, 0x0($a0)
    /* 12BB14 0022AB94 00016330 */  andi       $v1, $v1, 0x100
    /* 12BB18 0022AB98 00000000 */  nop
    /* 12BB1C 0022AB9C 00000000 */  nop
    /* 12BB20 0022ABA0 00000000 */  nop
    /* 12BB24 0022ABA4 FAFF6014 */  bnez       $v1, .L0022AB90
    /* 12BB28 0022ABA8 00000000 */   nop
    /* 12BB2C 0022ABAC 800082AC */  sw         $v0, 0x80($a0)
    /* 12BB30 0022ABB0 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12BB34 0022ABB4 100082AC */  sw         $v0, 0x10($a0)
    /* 12BB38 0022ABB8 02110100 */  srl        $v0, $at, 4
    /* 12BB3C 0022ABBC 200082AC */  sw         $v0, 0x20($a0)
    /* 12BB40 0022ABC0 00010234 */  ori        $v0, $zero, 0x100
    /* 12BB44 0022ABC4 000082AC */  sw         $v0, 0x0($a0)
    /* 12BB48 0022ABC8 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12BB4C 0022ABCC B6AA0808 */  j          func_0022AAD8
    /* 12BB50 0022ABD0 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L0022ABD4:
    /* 12BB54 0022ABD4 7A000120 */  addi       $at, $zero, 0x7A /* handwritten instruction */
    /* 12BB58 0022ABD8 00000000 */  nop
    /* 12BB5C 0022ABDC ACFF9516 */  bne        $s4, $s5, .L0022AA90
    /* 12BB60 0022ABE0 22382700 */   sub       $a3, $at, $a3 /* handwritten instruction */
    /* 12BB64 0022ABE4 80081600 */  sll        $at, $s6, 2
    /* 12BB68 0022ABE8 00000000 */  nop
    /* 12BB6C 0022ABEC 97AA0808 */  j          func_0022AA5C
    /* 12BB70 0022ABF0 20800102 */   add       $s0, $s0, $at /* handwritten instruction */
.align 2
  .L0022ABF4:
    /* 12BB74 0022ABF4 7C3FE7AF */  sw         $a3, (0x70003F7C & 0xFFFF)($ra)
    /* 12BB78 0022ABF8 803FE8AF */  sw         $t0, (0x70003F80 & 0xFFFF)($ra)
    /* 12BB7C 0022ABFC 843FE9AF */  sw         $t1, (0x70003F84 & 0xFFFF)($ra)
    /* 12BB80 0022AC00 00000000 */  nop
    /* 12BB84 0022AC04 0000A07F */  sq         $zero, 0x0($sp)
    /* 12BB88 0022AC08 0010013C */  lui        $at, (0x10000000 >> 16)
    /* 12BB8C 0022AC0C 0000A1AF */  sw         $at, 0x0($sp)
    /* 12BB90 0022AC10 0013013C */  lui        $at, (0x13000000 >> 16)
    /* 12BB94 0022AC14 0800A1AF */  sw         $at, 0x8($sp)
    /* 12BB98 0022AC18 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12BB9C 0022AC1C 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12BBA0 0022AC20 00000000 */  nop
    /* 12BBA4 0022AC24 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12BBA8 0022AC28 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12BBAC 0022AC2C 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12BBB0 0022AC30 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022AC34:
    /* 12BBB4 0022AC34 0000838C */  lw         $v1, 0x0($a0)
    /* 12BBB8 0022AC38 00016330 */  andi       $v1, $v1, 0x100
    /* 12BBBC 0022AC3C 00000000 */  nop
    /* 12BBC0 0022AC40 00000000 */  nop
    /* 12BBC4 0022AC44 00000000 */  nop
    /* 12BBC8 0022AC48 FAFF6014 */  bnez       $v1, .L0022AC34
    /* 12BBCC 0022AC4C 00000000 */   nop
    /* 12BBD0 0022AC50 800082AC */  sw         $v0, 0x80($a0)
    /* 12BBD4 0022AC54 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12BBD8 0022AC58 100082AC */  sw         $v0, 0x10($a0)
    /* 12BBDC 0022AC5C 02110100 */  srl        $v0, $at, 4
    /* 12BBE0 0022AC60 200082AC */  sw         $v0, 0x20($a0)
    /* 12BBE4 0022AC64 00010234 */  ori        $v0, $zero, 0x100
    /* 12BBE8 0022AC68 000082AC */  sw         $v0, 0x0($a0)
    /* 12BBEC 0022AC6C 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12BBF0 0022AC70 0008BD3B */  xori       $sp, $sp, 0x800
    /* 12BBF4 0022AC74 00000000 */  nop
    /* 12BBF8 0022AC78 943FFEAF */  sw         $fp, (0x70003F94 & 0xFFFF)($ra)
    /* 12BBFC 0022AC7C 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12BC00 0022AC80 0000A07F */  sq         $zero, 0x0($sp)
    /* 12BC04 0022AC84 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12BC08 0022AC88 1E00013C */  lui        $at, %hi(D_001DEE90)
    /* 12BC0C 0022AC8C 90EE2124 */  addiu      $at, $at, %lo(D_001DEE90)
    /* 12BC10 0022AC90 00002278 */  lq         $v0, 0x0($at)
    /* 12BC14 0022AC94 10002378 */  lq         $v1, 0x10($at)
    /* 12BC18 0022AC98 20002478 */  lq         $a0, 0x20($at)
    /* 12BC1C 0022AC9C 30002578 */  lq         $a1, 0x30($at)
    /* 12BC20 0022ACA0 0000A27F */  sq         $v0, 0x0($sp)
    /* 12BC24 0022ACA4 1000A37F */  sq         $v1, 0x10($sp)
    /* 12BC28 0022ACA8 2000A47F */  sq         $a0, 0x20($sp)
    /* 12BC2C 0022ACAC 3000A57F */  sq         $a1, 0x30($sp)
    /* 12BC30 0022ACB0 4000BD23 */  addi       $sp, $sp, 0x40 /* handwritten instruction */
    /* 12BC34 0022ACB4 4000DE23 */  addi       $fp, $fp, 0x40 /* handwritten instruction */
    /* 12BC38 0022ACB8 1800013C */  lui        $at, %hi(D_00187040)
    /* 12BC3C 0022ACBC 40702124 */  addiu      $at, $at, %lo(D_00187040)
    /* 12BC40 0022ACC0 40003CD8 */  lqc2       $vf28, 0x40($at)
    /* 12BC44 0022ACC4 50003DD8 */  lqc2       $vf29, 0x50($at)
    /* 12BC48 0022ACC8 60003ED8 */  lqc2       $vf30, 0x60($at)
    /* 12BC4C 0022ACCC 70003FD8 */  lqc2       $vf31, 0x70($at)
    /* 12BC50 0022ACD0 1900013C */  lui        $at, %hi(D_0018CE00)
    /* 12BC54 0022ACD4 00CE2124 */  addiu      $at, $at, %lo(D_0018CE00)
    /* 12BC58 0022ACD8 200235D8 */  lqc2       $vf21, 0x220($at)
    /* 12BC5C 0022ACDC 100236D8 */  lqc2       $vf22, 0x210($at)
    /* 12BC60 0022ACE0 A00137D8 */  lqc2       $vf23, 0x1A0($at)
    /* 12BC64 0022ACE4 00000000 */  nop
    /* 12BC68 0022ACE8 DC978F8F */  lw         $t7, -0x6824($gp)
    /* 12BC6C 0022ACEC 80001720 */  addi       $s7, $zero, 0x80 /* handwritten instruction */
    /* 12BC70 0022ACF0 1E00013C */  lui        $at, %hi(D_001DEF30)
    /* 12BC74 0022ACF4 30EF2124 */  addiu      $at, $at, %lo(D_001DEF30)
    /* 12BC78 0022ACF8 80002220 */  addi       $v0, $at, 0x80 /* handwritten instruction */
    /* 12BC7C 0022ACFC 0038E323 */  addi       $v1, $ra, (0x70003800 & 0xFFFF) /* handwritten instruction */
.align 2
  .L0022AD00:
    /* 12BC80 0022AD00 00002478 */  lq         $a0, 0x0($at)
    /* 12BC84 0022AD04 00000000 */  nop
    /* 12BC88 0022AD08 10002578 */  lq         $a1, 0x10($at)
    /* 12BC8C 0022AD0C 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 12BC90 0022AD10 0000647C */  sq         $a0, 0x0($v1)
    /* 12BC94 0022AD14 1000657C */  sq         $a1, 0x10($v1)
    /* 12BC98 0022AD18 F9FF2214 */  bne        $at, $v0, .L0022AD00
    /* 12BC9C 0022AD1C 20006320 */   addi      $v1, $v1, 0x20 /* handwritten instruction */
    /* 12BCA0 0022AD20 C09E8B7B */  lq         $t3, -0x6140($gp)
    /* 12BCA4 0022AD24 D09E8C7B */  lq         $t4, -0x6130($gp)
    /* 12BCA8 0022AD28 E09E8D7B */  lq         $t5, -0x6120($gp)
    /* 12BCAC 0022AD2C F09E8E7B */  lq         $t6, -0x6110($gp)
    /* 12BCB0 0022AD30 00001920 */  addi       $t9, $zero, 0x0 /* handwritten instruction */
    /* 12BCB4 0022AD34 1E00133C */  lui        $s3, %hi(D_001D82C0)
    /* 12BCB8 0022AD38 C0827326 */  addiu      $s3, $s3, %lo(D_001D82C0)
    /* 12BCBC 0022AD3C 603FF28F */  lw         $s2, (0x70003F60 & 0xFFFF)($ra)
    /* 12BCC0 0022AD40 0036F123 */  addi       $s1, $ra, (0x70003600 & 0xFFFF) /* handwritten instruction */
    /* 12BCC4 0022AD44 0020F023 */  addi       $s0, $ra, (0x70002000 & 0xFFFF) /* handwritten instruction */
.align 2
  alabel func_0022AD48
    /* 12BCC8 0022AD48 97003213 */  beq        $t9, $s2, .L0022AFA8
    /* 12BCCC 0022AD4C 00003696 */   lhu       $s6, 0x0($s1)
    /* 12BCD0 0022AD50 01003923 */  addi       $t9, $t9, 0x1 /* handwritten instruction */
    /* 12BCD4 0022AD54 02003122 */  addi       $s1, $s1, 0x2 /* handwritten instruction */
    /* 12BCD8 0022AD58 00000000 */  nop
    /* 12BCDC 0022AD5C FAFFC012 */  beqz       $s6, func_0022AD48
    /* 12BCE0 0022AD60 04007322 */   addi      $s3, $s3, 0x4 /* handwritten instruction */
    /* 12BCE4 0022AD64 FCFF788E */  lw         $t8, -0x4($s3)
    /* 12BCE8 0022AD68 00000000 */  nop
    /* 12BCEC 0022AD6C 1C00018F */  lw         $at, 0x1C($t8)
    /* 12BCF0 0022AD70 00000000 */  nop
    /* 12BCF4 0022AD74 000030D8 */  lqc2       $vf16, 0x0($at)
    /* 12BCF8 0022AD78 00003420 */  addi       $s4, $at, 0x0 /* handwritten instruction */
.align 2
  alabel func_0022AD7C
    /* 12BCFC 0022AD7C F2FFC012 */  beqz       $s6, func_0022AD48
    /* 12BD00 0022AD80 00000296 */   lhu       $v0, 0x0($s0)
    /* 12BD04 0022AD84 02000396 */  lhu        $v1, 0x2($s0)
    /* 12BD08 0022AD88 04001022 */  addi       $s0, $s0, 0x4 /* handwritten instruction */
    /* 12BD0C 0022AD8C 80110200 */  sll        $v0, $v0, 6
    /* 12BD10 0022AD90 00000000 */  nop
    /* 12BD14 0022AD94 20104F00 */  add        $v0, $v0, $t7 /* handwritten instruction */
    /* 12BD18 0022AD98 24207700 */  and        $a0, $v1, $s7
    /* 12BD1C 0022AD9C F7FF8010 */  beqz       $a0, func_0022AD7C
    /* 12BD20 0022ADA0 FFFFD622 */   addi      $s6, $s6, -0x1 /* handwritten instruction */
    /* 12BD24 0022ADA4 1C004A8C */  lw         $t2, 0x1C($v0)
    /* 12BD28 0022ADA8 001E0300 */  sll        $v1, $v1, 24
    /* 12BD2C 0022ADAC 0D008012 */  beqz       $s4, .L0022ADE4
    /* 12BD30 0022ADB0 2C00448C */   lw        $a0, 0x2C($v0)
    /* 12BD34 0022ADB4 1000857A */  lq         $a1, 0x10($s4)
    /* 12BD38 0022ADB8 2000867A */  lq         $a2, 0x20($s4)
    /* 12BD3C 0022ADBC 3000877A */  lq         $a3, 0x30($s4)
    /* 12BD40 0022ADC0 00001420 */  addi       $s4, $zero, 0x0 /* handwritten instruction */
    /* 12BD44 0022ADC4 0000AB7F */  sq         $t3, 0x0($sp)
    /* 12BD48 0022ADC8 1000AC7F */  sq         $t4, 0x10($sp)
    /* 12BD4C 0022ADCC 2000A57F */  sq         $a1, 0x20($sp)
    /* 12BD50 0022ADD0 3000A67F */  sq         $a2, 0x30($sp)
    /* 12BD54 0022ADD4 4000A77F */  sq         $a3, 0x40($sp)
    /* 12BD58 0022ADD8 5000BD23 */  addi       $sp, $sp, 0x50 /* handwritten instruction */
    /* 12BD5C 0022ADDC 5000DE23 */  addi       $fp, $fp, 0x50 /* handwritten instruction */
    /* 12BD60 0022ADE0 00000000 */  nop
.align 2
  .L0022ADE4:
    /* 12BD64 0022ADE4 300041D8 */  lqc2       $vf1, 0x30($v0)
    /* 12BD68 0022ADE8 25504301 */  or         $t2, $t2, $v1
    /* 12BD6C 0022ADEC 88250470 */  pextlh     $a0, $zero, $a0
    /* 12BD70 0022ADF0 0000AD7F */  sq         $t5, 0x0($sp)
    /* 12BD74 0022ADF4 88560A70 */  pextlb     $t2, $zero, $t2
    /* 12BD78 0022ADF8 1000AE7F */  sq         $t6, 0x10($sp)
    /* 12BD7C 0022ADFC 88550A70 */  pextlh     $t2, $zero, $t2
    /* 12BD80 0022AE00 0018A448 */  qmtc2.ni   $a0, $vf3
    /* 12BD84 0022AE04 6C08D84B */  vsub.xyz   $vf1, $vf1, $vf24
    /* 12BD88 0022AE08 2000BD23 */  addi       $sp, $sp, 0x20 /* handwritten instruction */
    /* 12BD8C 0022AE0C 3E19834B */  vitof12.xy $vf3, $vf3
    /* 12BD90 0022AE10 2000DE23 */  addi       $fp, $fp, 0x20 /* handwritten instruction */
    /* 12BD94 0022AE14 0301C04B */  vaddw.xyz  $vf4, $vf0, $vf0w
    /* 12BD98 0022AE18 AA08C14B */  vmul.xyz   $vf2, $vf1, $vf1
    /* 12BD9C 0022AE1C 3D10024B */  vadday.x   ACC, $vf2, $vf2y
    /* 12BDA0 0022AE20 8A20024B */  vmaddz.x   $vf2, $vf4, $vf2z
    /* 12BDA4 0022AE24 BE03624A */  vrsqrt     Q, $vf0w, $vf2x
    /* 12BDA8 0022AE28 D883834A */  vmulx.y    $vf15, $vf16, $vf3x
    /* 12BDAC 0022AE2C 1801E04B */  vmulx.xyzw $vf4, $vf0, $vf0x
    /* 12BDB0 0022AE30 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 12BDB4 0022AE34 3D03E64B */  vmr32.xyzw $vf6, $vf0
    /* 12BDB8 0022AE38 3C03E74B */  vmove.xyzw $vf7, $vf0
    /* 12BDBC 0022AE3C 0321004B */  vaddw.x    $vf4, $vf4, $vf0w
    /* 12BDC0 0022AE40 4329804A */  vaddw.y    $vf5, $vf5, $vf0w
    /* 12BDC4 0022AE44 D983634A */  vmuly.zw   $vf15, $vf16, $vf3y
    /* 12BDC8 0022AE48 BF03004A */  vwaitq
    /* 12BDCC 0022AE4C 9C08C04B */  vmulq.xyz  $vf2, $vf1, Q
    /* 12BDD0 0022AE50 DB7BE14A */  vmulw.yzw  $vf15, $vf15, $vf1w
    /* 12BDD4 0022AE54 2801824B */  vadd.xy    $vf4, $vf0, $vf2
    /* 12BDD8 0022AE58 4101024B */  vaddy.x    $vf5, $vf0, $vf2y
    /* 12BDDC 0022AE5C 4401824A */  vsubx.y    $vf5, $vf0, $vf2x
    /* 12BDE0 0022AE60 00000000 */  nop
    /* 12BDE4 0022AE64 DB09D84B */  vmulw.xyz  $vf7, $vf1, $vf24w
    /* 12BDE8 0022AE68 C001204A */  vaddx.w    $vf7, $vf0, $vf0x
    /* 12BDEC 0022AE6C BCE1E44B */  vmulax.xyzw ACC, $vf28, $vf4x
    /* 12BDF0 0022AE70 BDE8E44B */  vmadday.xyzw ACC, $vf29, $vf4y
    /* 12BDF4 0022AE74 BEF0E44B */  vmaddaz.xyzw ACC, $vf30, $vf4z
    /* 12BDF8 0022AE78 08F9E04B */  vmaddx.xyzw $vf4, $vf31, $vf0x
    /* 12BDFC 0022AE7C BCE1E54B */  vmulax.xyzw ACC, $vf28, $vf5x
    /* 12BE00 0022AE80 BDE8E54B */  vmadday.xyzw ACC, $vf29, $vf5y
    /* 12BE04 0022AE84 BEF0E54B */  vmaddaz.xyzw ACC, $vf30, $vf5z
    /* 12BE08 0022AE88 48F9E04B */  vmaddx.xyzw $vf5, $vf31, $vf0x
    /* 12BE0C 0022AE8C BCE1E64B */  vmulax.xyzw ACC, $vf28, $vf6x
    /* 12BE10 0022AE90 BDE8E64B */  vmadday.xyzw ACC, $vf29, $vf6y
    /* 12BE14 0022AE94 BEF0E64B */  vmaddaz.xyzw ACC, $vf30, $vf6z
    /* 12BE18 0022AE98 88F9E04B */  vmaddx.xyzw $vf6, $vf31, $vf0x
    /* 12BE1C 0022AE9C BCE1E74B */  vmulax.xyzw ACC, $vf28, $vf7x
    /* 12BE20 0022AEA0 BDE8E74B */  vmadday.xyzw ACC, $vf29, $vf7y
    /* 12BE24 0022AEA4 BEF0E74B */  vmaddaz.xyzw ACC, $vf30, $vf7z
    /* 12BE28 0022AEA8 CBF9E74B */  vmaddw.xyzw $vf7, $vf31, $vf7w
    /* 12BE2C 0022AEAC 0038E123 */  addi       $at, $ra, (0x70003800 & 0xFFFF) /* handwritten instruction */
    /* 12BE30 0022AEB0 4038E223 */  addi       $v0, $ra, (0x70003840 & 0xFFFF) /* handwritten instruction */
.align 2
  .L0022AEB4:
    /* 12BE34 0022AEB4 000021D8 */  lqc2       $vf1, 0x0($at)
    /* 12BE38 0022AEB8 400022D8 */  lqc2       $vf2, 0x40($at)
    /* 12BE3C 0022AEBC 6A08CF4A */  vmul.yz    $vf1, $vf1, $vf15
    /* 12BE40 0022AEC0 10002120 */  addi       $at, $at, 0x10 /* handwritten instruction */
    /* 12BE44 0022AEC4 43084F4A */  vaddw.z    $vf1, $vf1, $vf15w
    /* 12BE48 0022AEC8 00000000 */  nop
    /* 12BE4C 0022AECC BC21E14B */  vmulax.xyzw ACC, $vf4, $vf1x
    /* 12BE50 0022AED0 BD28E14B */  vmadday.xyzw ACC, $vf5, $vf1y
    /* 12BE54 0022AED4 BE30E14B */  vmaddaz.xyzw ACC, $vf6, $vf1z
    /* 12BE58 0022AED8 4B38E04B */  vmaddw.xyzw $vf1, $vf7, $vf0w
    /* 12BE5C 0022AEDC BCB3814B */  vdiv       Q, $vf22x, $vf1w
    /* 12BE60 0022AEE0 00000000 */  nop
    /* 12BE64 0022AEE4 6808374A */  vadd.w     $vf1, $vf1, $vf23
    /* 12BE68 0022AEE8 00000000 */  nop
    /* 12BE6C 0022AEEC 6B08354A */  vmax.w     $vf1, $vf1, $vf21
    /* 12BE70 0022AEF0 00000000 */  nop
    /* 12BE74 0022AEF4 5608354A */  vminiz.w   $vf1, $vf1, $vf21z
    /* 12BE78 0022AEF8 00000000 */  nop
    /* 12BE7C 0022AEFC BF03004A */  vwaitq
    /* 12BE80 0022AF00 00000000 */  nop
    /* 12BE84 0022AF04 5C08C04B */  vmulq.xyz  $vf1, $vf1, Q
    /* 12BE88 0022AF08 00000000 */  nop
    /* 12BE8C 0022AF0C 9C10C04B */  vmulq.xyz  $vf2, $vf2, Q
    /* 12BE90 0022AF10 00000000 */  nop
    /* 12BE94 0022AF14 6808D74B */  vadd.xyz   $vf1, $vf1, $vf23
    /* 12BE98 0022AF18 00000000 */  nop
    /* 12BE9C 0022AF1C 7D09E14B */  vftoi4.xyzw $vf1, $vf1
    /* 12BEA0 0022AF20 00000000 */  nop
    /* 12BEA4 0022AF24 1000AA7F */  sq         $t2, 0x10($sp)
    /* 12BEA8 0022AF28 00000000 */  nop
    /* 12BEAC 0022AF2C 0000A2FB */  sqc2       $vf2, 0x0($sp)
    /* 12BEB0 0022AF30 3000DE23 */  addi       $fp, $fp, 0x30 /* handwritten instruction */
    /* 12BEB4 0022AF34 2000A1FB */  sqc2       $vf1, 0x20($sp)
    /* 12BEB8 0022AF38 3000BD23 */  addi       $sp, $sp, 0x30 /* handwritten instruction */
    /* 12BEBC 0022AF3C DDFF2214 */  bne        $at, $v0, .L0022AEB4
    /* 12BEC0 0022AF40 00000000 */   nop
    /* 12BEC4 0022AF44 0006A133 */  andi       $at, $sp, 0x600
    /* 12BEC8 0022AF48 00060220 */  addi       $v0, $zero, 0x600 /* handwritten instruction */
    /* 12BECC 0022AF4C 8BFF2214 */  bne        $at, $v0, func_0022AD7C
    /* 12BED0 0022AF50 00000000 */   nop
    /* 12BED4 0022AF54 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12BED8 0022AF58 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12BEDC 0022AF5C 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12BEE0 0022AF60 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022AF64:
    /* 12BEE4 0022AF64 0000838C */  lw         $v1, 0x0($a0)
    /* 12BEE8 0022AF68 00016330 */  andi       $v1, $v1, 0x100
    /* 12BEEC 0022AF6C 00000000 */  nop
    /* 12BEF0 0022AF70 00000000 */  nop
    /* 12BEF4 0022AF74 00000000 */  nop
    /* 12BEF8 0022AF78 FAFF6014 */  bnez       $v1, .L0022AF64
    /* 12BEFC 0022AF7C 00000000 */   nop
    /* 12BF00 0022AF80 800082AC */  sw         $v0, 0x80($a0)
    /* 12BF04 0022AF84 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12BF08 0022AF88 100082AC */  sw         $v0, 0x10($a0)
    /* 12BF0C 0022AF8C 02110100 */  srl        $v0, $at, 4
    /* 12BF10 0022AF90 200082AC */  sw         $v0, 0x20($a0)
    /* 12BF14 0022AF94 00010234 */  ori        $v0, $zero, 0x100
    /* 12BF18 0022AF98 000082AC */  sw         $v0, 0x0($a0)
    /* 12BF1C 0022AF9C 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12BF20 0022AFA0 5FAB0808 */  j          func_0022AD7C
    /* 12BF24 0022AFA4 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L0022AFA8:
    /* 12BF28 0022AFA8 7F000134 */  ori        $at, $zero, 0x7F
    /* 12BF2C 0022AFAC 00000000 */  nop
    /* 12BF30 0022AFB0 13003710 */  beq        $at, $s7, .L0022B000
    /* 12BF34 0022AFB4 00000000 */   nop
    /* 12BF38 0022AFB8 00001920 */  addi       $t9, $zero, 0x0 /* handwritten instruction */
    /* 12BF3C 0022AFBC 1E00133C */  lui        $s3, %hi(D_001D82C0)
    /* 12BF40 0022AFC0 C0827326 */  addiu      $s3, $s3, %lo(D_001D82C0)
    /* 12BF44 0022AFC4 0036F123 */  addi       $s1, $ra, (0x70003600 & 0xFFFF) /* handwritten instruction */
    /* 12BF48 0022AFC8 0020F023 */  addi       $s0, $ra, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 12BF4C 0022AFCC 7F001734 */  ori        $s7, $zero, 0x7F
    /* 12BF50 0022AFD0 1E00013C */  lui        $at, %hi(D_001DEE60)
    /* 12BF54 0022AFD4 60EE2124 */  addiu      $at, $at, %lo(D_001DEE60)
    /* 12BF58 0022AFD8 00002278 */  lq         $v0, 0x0($at)
    /* 12BF5C 0022AFDC 10002378 */  lq         $v1, 0x10($at)
    /* 12BF60 0022AFE0 20002478 */  lq         $a0, 0x20($at)
    /* 12BF64 0022AFE4 0000A27F */  sq         $v0, 0x0($sp)
    /* 12BF68 0022AFE8 1000A37F */  sq         $v1, 0x10($sp)
    /* 12BF6C 0022AFEC 2000A47F */  sq         $a0, 0x20($sp)
    /* 12BF70 0022AFF0 3000BD23 */  addi       $sp, $sp, 0x30 /* handwritten instruction */
    /* 12BF74 0022AFF4 3000DE23 */  addi       $fp, $fp, 0x30 /* handwritten instruction */
    /* 12BF78 0022AFF8 52AB0808 */  j          func_0022AD48
    /* 12BF7C 0022AFFC 00000000 */   nop
.align 2
  .L0022B000:
    /* 12BF80 0022B000 983FFEAF */  sw         $fp, (0x70003F98 & 0xFFFF)($ra)
    /* 12BF84 0022B004 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12BF88 0022B008 0000A07F */  sq         $zero, 0x0($sp)
    /* 12BF8C 0022B00C 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12BF90 0022B010 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12BF94 0022B014 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12BF98 0022B018 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12BF9C 0022B01C 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022B020:
    /* 12BFA0 0022B020 0000838C */  lw         $v1, 0x0($a0)
    /* 12BFA4 0022B024 00016330 */  andi       $v1, $v1, 0x100
    /* 12BFA8 0022B028 00000000 */  nop
    /* 12BFAC 0022B02C 00000000 */  nop
    /* 12BFB0 0022B030 00000000 */  nop
    /* 12BFB4 0022B034 FAFF6014 */  bnez       $v1, .L0022B020
    /* 12BFB8 0022B038 00000000 */   nop
    /* 12BFBC 0022B03C 0B002010 */  beqz       $at, .L0022B06C
    /* 12BFC0 0022B040 00000000 */   nop
    /* 12BFC4 0022B044 800082AC */  sw         $v0, 0x80($a0)
    /* 12BFC8 0022B048 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12BFCC 0022B04C 100082AC */  sw         $v0, 0x10($a0)
    /* 12BFD0 0022B050 02110100 */  srl        $v0, $at, 4
    /* 12BFD4 0022B054 200082AC */  sw         $v0, 0x20($a0)
    /* 12BFD8 0022B058 00010234 */  ori        $v0, $zero, 0x100
    /* 12BFDC 0022B05C 000082AC */  sw         $v0, 0x0($a0)
    /* 12BFE0 0022B060 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12BFE4 0022B064 0008BD3B */  xori       $sp, $sp, 0x800
    /* 12BFE8 0022B068 00000000 */  nop
.align 2
  .L0022B06C:
    /* 12BFEC 0022B06C 1E00013C */  lui        $at, %hi(D_001DEE00)
    /* 12BFF0 0022B070 00EE2124 */  addiu      $at, $at, %lo(D_001DEE00)
    /* 12BFF4 0022B074 00002278 */  lq         $v0, 0x0($at)
    /* 12BFF8 0022B078 10002378 */  lq         $v1, 0x10($at)
    /* 12BFFC 0022B07C 20002478 */  lq         $a0, 0x20($at)
    /* 12C000 0022B080 0000A27F */  sq         $v0, 0x0($sp)
    /* 12C004 0022B084 1000A37F */  sq         $v1, 0x10($sp)
    /* 12C008 0022B088 2000A47F */  sq         $a0, 0x20($sp)
    /* 12C00C 0022B08C 3000BD23 */  addi       $sp, $sp, 0x30 /* handwritten instruction */
    /* 12C010 0022B090 3000DE23 */  addi       $fp, $fp, 0x30 /* handwritten instruction */
    /* 12C014 0022B094 743FE18F */  lw         $at, (0x70003F74 & 0xFFFF)($ra)
    /* 12C018 0022B098 003DE223 */  addi       $v0, $ra, (0x70003D00 & 0xFFFF) /* handwritten instruction */
    /* 12C01C 0022B09C 10012210 */  beq        $at, $v0, .L0022B4E0
    /* 12C020 0022B0A0 00000000 */   nop
    /* 12C024 0022B0A4 0000A07F */  sq         $zero, 0x0($sp)
    /* 12C028 0022B0A8 1000023C */  lui        $v0, %hi(D_001022D0)
    /* 12C02C 0022B0AC D0224224 */  addiu      $v0, $v0, %lo(D_001022D0)
    /* 12C030 0022B0B0 1000013C */  lui        $at, %hi(D_001022E0)
    /* 12C034 0022B0B4 E0222124 */  addiu      $at, $at, %lo(D_001022E0)
    /* 12C038 0022B0B8 0000428C */  lw         $v0, 0x0($v0)
    /* 12C03C 0022B0BC 0400A1AF */  sw         $at, 0x4($sp)
    /* 12C040 0022B0C0 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 12C044 0022B0C4 0000A1AF */  sw         $at, 0x0($sp)
    /* 12C048 0022B0C8 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12C04C 0022B0CC 0000A2A7 */  sh         $v0, 0x0($sp)
    /* 12C050 0022B0D0 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12C054 0022B0D4 1E00013C */  lui        $at, %hi(D_001DED80)
    /* 12C058 0022B0D8 80ED2124 */  addiu      $at, $at, %lo(D_001DED80)
    /* 12C05C 0022B0DC 00002278 */  lq         $v0, 0x0($at)
    /* 12C060 0022B0E0 10002378 */  lq         $v1, 0x10($at)
    /* 12C064 0022B0E4 20002478 */  lq         $a0, 0x20($at)
    /* 12C068 0022B0E8 30002578 */  lq         $a1, 0x30($at)
    /* 12C06C 0022B0EC 40002678 */  lq         $a2, 0x40($at)
    /* 12C070 0022B0F0 50002778 */  lq         $a3, 0x50($at)
    /* 12C074 0022B0F4 60002878 */  lq         $t0, 0x60($at)
    /* 12C078 0022B0F8 70002978 */  lq         $t1, 0x70($at)
    /* 12C07C 0022B0FC 0000A27F */  sq         $v0, 0x0($sp)
    /* 12C080 0022B100 1000A37F */  sq         $v1, 0x10($sp)
    /* 12C084 0022B104 2000A47F */  sq         $a0, 0x20($sp)
    /* 12C088 0022B108 3000A57F */  sq         $a1, 0x30($sp)
    /* 12C08C 0022B10C 4000A67F */  sq         $a2, 0x40($sp)
    /* 12C090 0022B110 5000A77F */  sq         $a3, 0x50($sp)
    /* 12C094 0022B114 6000A87F */  sq         $t0, 0x60($sp)
    /* 12C098 0022B118 7000A97F */  sq         $t1, 0x70($sp)
    /* 12C09C 0022B11C 8000BD23 */  addi       $sp, $sp, 0x80 /* handwritten instruction */
    /* 12C0A0 0022B120 8000DE23 */  addi       $fp, $fp, 0x80 /* handwritten instruction */
    /* 12C0A4 0022B124 1800013C */  lui        $at, %hi(D_00187040)
    /* 12C0A8 0022B128 40702124 */  addiu      $at, $at, %lo(D_00187040)
    /* 12C0AC 0022B12C C0003CD8 */  lqc2       $vf28, 0xC0($at)
    /* 12C0B0 0022B130 D0003DD8 */  lqc2       $vf29, 0xD0($at)
    /* 12C0B4 0022B134 E0003ED8 */  lqc2       $vf30, 0xE0($at)
    /* 12C0B8 0022B138 F0003FD8 */  lqc2       $vf31, 0xF0($at)
    /* 12C0BC 0022B13C 2300023C */  lui        $v0, %hi(D_0022B280)
    /* 12C0C0 0022B140 80B24224 */  addiu      $v0, $v0, %lo(D_0022B280)
    /* 12C0C4 0022B144 A03FE2AF */  sw         $v0, (0x70003FA0 & 0xFFFF)($ra)
    /* 12C0C8 0022B148 00000000 */  nop
    /* 12C0CC 0022B14C 02000120 */  addi       $at, $zero, 0x2 /* handwritten instruction */
    /* 12C0D0 0022B150 EE000220 */  addi       $v0, $zero, 0xEE /* handwritten instruction */
    /* 12C0D4 0022B154 11000320 */  addi       $v1, $zero, 0x11 /* handwritten instruction */
    /* 12C0D8 0022B158 7C3FE1AF */  sw         $at, (0x70003F7C & 0xFFFF)($ra)
    /* 12C0DC 0022B15C 803FE2AF */  sw         $v0, (0x70003F80 & 0xFFFF)($ra)
    /* 12C0E0 0022B160 843FE3AF */  sw         $v1, (0x70003F84 & 0xFFFF)($ra)
    /* 12C0E4 0022B164 003FEA7B */  lq         $t2, (0x70003F00 & 0xFFFF)($ra)
    /* 12C0E8 0022B168 103FEB7B */  lq         $t3, (0x70003F10 & 0xFFFF)($ra)
    /* 12C0EC 0022B16C 203FEC7B */  lq         $t4, (0x70003F20 & 0xFFFF)($ra)
    /* 12C0F0 0022B170 303FED7B */  lq         $t5, (0x70003F30 & 0xFFFF)($ra)
    /* 12C0F4 0022B174 403FEE7B */  lq         $t6, (0x70003F40 & 0xFFFF)($ra)
    /* 12C0F8 0022B178 503FEF7B */  lq         $t7, (0x70003F50 & 0xFFFF)($ra)
    /* 12C0FC 0022B17C 00001920 */  addi       $t9, $zero, 0x0 /* handwritten instruction */
    /* 12C100 0022B180 1E00133C */  lui        $s3, %hi(D_001D82C0)
    /* 12C104 0022B184 C0827326 */  addiu      $s3, $s3, %lo(D_001D82C0)
    /* 12C108 0022B188 603FF28F */  lw         $s2, (0x70003F60 & 0xFFFF)($ra)
    /* 12C10C 0022B18C 803CF123 */  addi       $s1, $ra, (0x70003C80 & 0xFFFF) /* handwritten instruction */
    /* 12C110 0022B190 003DF023 */  addi       $s0, $ra, (0x70003D00 & 0xFFFF) /* handwritten instruction */
    /* 12C114 0022B194 DC97818F */  lw         $at, -0x6824($gp)
    /* 12C118 0022B198 0080A148 */  qmtc2.ni   $at, $vf16
.align 2
  alabel func_0022B19C
    /* 12C11C 0022B19C C8003213 */  beq        $t9, $s2, .L0022B4C0
    /* 12C120 0022B1A0 00003696 */   lhu       $s6, 0x0($s1)
    /* 12C124 0022B1A4 01003923 */  addi       $t9, $t9, 0x1 /* handwritten instruction */
    /* 12C128 0022B1A8 02003122 */  addi       $s1, $s1, 0x2 /* handwritten instruction */
    /* 12C12C 0022B1AC 00000000 */  nop
    /* 12C130 0022B1B0 FAFFC012 */  beqz       $s6, func_0022B19C
    /* 12C134 0022B1B4 04007322 */   addi      $s3, $s3, 0x4 /* handwritten instruction */
    /* 12C138 0022B1B8 FCFF648E */  lw         $a0, -0x4($s3)
    /* 12C13C 0022B1BC 00000000 */  nop
    /* 12C140 0022B1C0 0000A07F */  sq         $zero, 0x0($sp)
    /* 12C144 0022B1C4 0020013C */  lui        $at, (0x20000000 >> 16)
    /* 12C148 0022B1C8 0000A1AF */  sw         $at, 0x0($sp)
    /* 12C14C 0022B1CC 80091600 */  sll        $at, $s6, 6
    /* 12C150 0022B1D0 00111600 */  sll        $v0, $s6, 4
    /* 12C154 0022B1D4 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12C158 0022B1D8 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 12C15C 0022B1DC 20083E00 */  add        $at, $at, $fp /* handwritten instruction */
    /* 12C160 0022B1E0 0400A1AF */  sw         $at, 0x4($sp)
    /* 12C164 0022B1E4 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12C168 0022B1E8 40009420 */  addi       $s4, $a0, 0x40 /* handwritten instruction */
    /* 12C16C 0022B1EC 28009594 */  lhu        $s5, 0x28($a0)
    /* 12C170 0022B1F0 14008194 */  lhu        $at, 0x14($a0)
    /* 12C174 0022B1F4 00000000 */  nop
    /* 12C178 0022B1F8 C0A81500 */  sll        $s5, $s5, 3
    /* 12C17C 0022B1FC 00000000 */  nop
    /* 12C180 0022B200 20A89502 */  add        $s5, $s4, $s5 /* handwritten instruction */
    /* 12C184 0022B204 06002130 */  andi       $at, $at, 0x6
    /* 12C188 0022B208 00001822 */  addi       $t8, $s0, 0x0 /* handwritten instruction */
    /* 12C18C 0022B20C 42080100 */  srl        $at, $at, 1
    /* 12C190 0022B210 9C3FE1AF */  sw         $at, (0x70003F9C & 0xFFFF)($ra)
    /* 12C194 0022B214 00000000 */  nop
.align 2
  alabel func_0022B218
    /* 12C198 0022B218 4A00C012 */  beqz       $s6, .L0022B344
    /* 12C19C 0022B21C 0000018E */   lw        $at, 0x0($s0)
    /* 12C1A0 0022B220 04001022 */  addi       $s0, $s0, 0x4 /* handwritten instruction */
    /* 12C1A4 0022B224 FFFFD622 */  addi       $s6, $s6, -0x1 /* handwritten instruction */
    /* 12C1A8 0022B228 18002394 */  lhu        $v1, 0x18($at)
    /* 12C1AC 0022B22C 00802448 */  qmfc2.ni   $a0, $vf16
    /* 12C1B0 0022B230 00000000 */  nop
    /* 12C1B4 0022B234 00000000 */  nop
    /* 12C1B8 0022B238 80110300 */  sll        $v0, $v1, 6
    /* 12C1BC 0022B23C 20104400 */  add        $v0, $v0, $a0 /* handwritten instruction */
    /* 12C1C0 0022B240 300044D8 */  lqc2       $vf4, 0x30($v0)
    /* 12C1C4 0022B244 02211E00 */  srl        $a0, $fp, 4
    /* 12C1C8 0022B248 000041D8 */  lqc2       $vf1, 0x0($v0)
    /* 12C1CC 0022B24C 001D0300 */  sll        $v1, $v1, 20
    /* 12C1D0 0022B250 100042D8 */  lqc2       $vf2, 0x10($v0)
    /* 12C1D4 0022B254 25186400 */  or         $v1, $v1, $a0
    /* 12C1D8 0022B258 200043D8 */  lqc2       $vf3, 0x20($v0)
    /* 12C1DC 0022B25C FCFF03AE */  sw         $v1, -0x4($s0)
    /* 12C1E0 0022B260 2C21D84B */  vsub.xyz   $vf4, $vf4, $vf24
    /* 12C1E4 0022B264 00000000 */  nop
    /* 12C1E8 0022B268 5B08C44B */  vmulw.xyz  $vf1, $vf1, $vf4w
    /* 12C1EC 0022B26C 9C3FE18F */  lw         $at, (0x70003F9C & 0xFFFF)($ra)
    /* 12C1F0 0022B270 9B10C44B */  vmulw.xyz  $vf2, $vf2, $vf4w
    /* 12C1F4 0022B274 00004720 */  addi       $a3, $v0, 0x0 /* handwritten instruction */
    /* 12C1F8 0022B278 E3FC2014 */  bnez       $at, .L0022A608
    /* 12C1FC 0022B27C DB18C44B */   vmulw.xyz $vf3, $vf3, $vf4w
.align 2
  alabel D_0022B280
    /* 12C200 0022B280 BCE1E14B */  vmulax.xyzw ACC, $vf28, $vf1x
    /* 12C204 0022B284 BDE8E14B */  vmadday.xyzw ACC, $vf29, $vf1y
    /* 12C208 0022B288 BEF0E14B */  vmaddaz.xyzw ACC, $vf30, $vf1z
    /* 12C20C 0022B28C 48F8E04B */  vmaddx.xyzw $vf1, $vf31, $vf0x
    /* 12C210 0022B290 1B21D84B */  vmulw.xyz  $vf4, $vf4, $vf24w
    /* 12C214 0022B294 00000000 */  nop
    /* 12C218 0022B298 BCE1E24B */  vmulax.xyzw ACC, $vf28, $vf2x
    /* 12C21C 0022B29C BDE8E24B */  vmadday.xyzw ACC, $vf29, $vf2y
    /* 12C220 0022B2A0 BEF0E24B */  vmaddaz.xyzw ACC, $vf30, $vf2z
    /* 12C224 0022B2A4 88F8E04B */  vmaddx.xyzw $vf2, $vf31, $vf0x
    /* 12C228 0022B2A8 BCE1E34B */  vmulax.xyzw ACC, $vf28, $vf3x
    /* 12C22C 0022B2AC BDE8E34B */  vmadday.xyzw ACC, $vf29, $vf3y
    /* 12C230 0022B2B0 BEF0E34B */  vmaddaz.xyzw ACC, $vf30, $vf3z
    /* 12C234 0022B2B4 C8F8E04B */  vmaddx.xyzw $vf3, $vf31, $vf0x
    /* 12C238 0022B2B8 BCE1E44B */  vmulax.xyzw ACC, $vf28, $vf4x
    /* 12C23C 0022B2BC BDE8E44B */  vmadday.xyzw ACC, $vf29, $vf4y
    /* 12C240 0022B2C0 BEF0E44B */  vmaddaz.xyzw ACC, $vf30, $vf4z
    /* 12C244 0022B2C4 0BF9E04B */  vmaddw.xyzw $vf4, $vf31, $vf0w
    /* 12C248 0022B2C8 0000A1FB */  sqc2       $vf1, 0x0($sp)
    /* 12C24C 0022B2CC 1000A2FB */  sqc2       $vf2, 0x10($sp)
    /* 12C250 0022B2D0 2000A3FB */  sqc2       $vf3, 0x20($sp)
    /* 12C254 0022B2D4 3000A4FB */  sqc2       $vf4, 0x30($sp)
    /* 12C258 0022B2D8 4000A07F */  sq         $zero, 0x40($sp)
    /* 12C25C 0022B2DC 5000BD23 */  addi       $sp, $sp, 0x50 /* handwritten instruction */
    /* 12C260 0022B2E0 0006A133 */  andi       $at, $sp, 0x600
    /* 12C264 0022B2E4 00060220 */  addi       $v0, $zero, 0x600 /* handwritten instruction */
    /* 12C268 0022B2E8 CBFF2214 */  bne        $at, $v0, func_0022B218
    /* 12C26C 0022B2EC 5000DE23 */   addi      $fp, $fp, 0x50 /* handwritten instruction */
    /* 12C270 0022B2F0 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12C274 0022B2F4 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12C278 0022B2F8 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12C27C 0022B2FC 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022B300:
    /* 12C280 0022B300 0000838C */  lw         $v1, 0x0($a0)
    /* 12C284 0022B304 00016330 */  andi       $v1, $v1, 0x100
    /* 12C288 0022B308 00000000 */  nop
    /* 12C28C 0022B30C 00000000 */  nop
    /* 12C290 0022B310 00000000 */  nop
    /* 12C294 0022B314 FAFF6014 */  bnez       $v1, .L0022B300
    /* 12C298 0022B318 00000000 */   nop
    /* 12C29C 0022B31C 800082AC */  sw         $v0, 0x80($a0)
    /* 12C2A0 0022B320 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12C2A4 0022B324 100082AC */  sw         $v0, 0x10($a0)
    /* 12C2A8 0022B328 02110100 */  srl        $v0, $at, 4
    /* 12C2AC 0022B32C 200082AC */  sw         $v0, 0x20($a0)
    /* 12C2B0 0022B330 00010234 */  ori        $v0, $zero, 0x100
    /* 12C2B4 0022B334 000082AC */  sw         $v0, 0x0($a0)
    /* 12C2B8 0022B338 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12C2BC 0022B33C 86AC0808 */  j          func_0022B218
    /* 12C2C0 0022B340 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L0022B344:
    /* 12C2C4 0022B344 FEFF3696 */  lhu        $s6, -0x2($s1)
    /* 12C2C8 0022B348 00000000 */  nop
    /* 12C2CC 0022B34C 7C3FE78F */  lw         $a3, (0x70003F7C & 0xFFFF)($ra)
    /* 12C2D0 0022B350 803FE88F */  lw         $t0, (0x70003F80 & 0xFFFF)($ra)
    /* 12C2D4 0022B354 843FE98F */  lw         $t1, (0x70003F84 & 0xFFFF)($ra)
    /* 12C2D8 0022B358 00000000 */  nop
.align 2
  .L0022B35C:
    /* 12C2DC 0022B35C 0000818E */  lw         $at, 0x0($s4)
    /* 12C2E0 0022B360 00000000 */  nop
    /* 12C2E4 0022B364 0400828E */  lw         $v0, 0x4($s4)
    /* 12C2E8 0022B368 08009422 */  addi       $s4, $s4, 0x8 /* handwritten instruction */
    /* 12C2EC 0022B36C 0000AA7F */  sq         $t2, 0x0($sp)
    /* 12C2F0 0022B370 00000000 */  nop
    /* 12C2F4 0022B374 0400A1AF */  sw         $at, 0x4($sp)
    /* 12C2F8 0022B378 02110200 */  srl        $v0, $v0, 4
    /* 12C2FC 0022B37C 0000A2A7 */  sh         $v0, 0x0($sp)
    /* 12C300 0022B380 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12C304 0022B384 0800A7A7 */  sh         $a3, 0x8($sp)
    /* 12C308 0022B388 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12C30C 0022B38C 0000AB7F */  sq         $t3, 0x0($sp)
    /* 12C310 0022B390 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12C314 0022B394 0C00A9A7 */  sh         $t1, 0xC($sp)
    /* 12C318 0022B398 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12C31C 0022B39C 0000D722 */  addi       $s7, $s6, 0x0 /* handwritten instruction */
    /* 12C320 0022B3A0 00000623 */  addi       $a2, $t8, 0x0 /* handwritten instruction */
.align 2
  alabel func_0022B3A4
    /* 12C324 0022B3A4 05000120 */  addi       $at, $zero, 0x5 /* handwritten instruction */
    /* 12C328 0022B3A8 01000521 */  addi       $a1, $t0, 0x1 /* handwritten instruction */
    /* 12C32C 0022B3AC 3C00E012 */  beqz       $s7, .L0022B4A0
    /* 12C330 0022B3B0 E820E172 */   pminw     $a0, $s7, $at
    /* 12C334 0022B3B4 0000AC7F */  sq         $t4, 0x0($sp)
    /* 12C338 0022B3B8 22B8E402 */  sub        $s7, $s7, $a0 /* handwritten instruction */
    /* 12C33C 0022B3BC 0800A8A7 */  sh         $t0, 0x8($sp)
    /* 12C340 0022B3C0 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12C344 0022B3C4 0C00A4AF */  sw         $a0, 0xC($sp)
    /* 12C348 0022B3C8 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
.align 2
  .L0022B3CC:
    /* 12C34C 0022B3CC 0000C18C */  lw         $at, 0x0($a2)
    /* 12C350 0022B3D0 0400C620 */  addi       $a2, $a2, 0x4 /* handwritten instruction */
    /* 12C354 0022B3D4 0000AD7F */  sq         $t5, 0x0($sp)
    /* 12C358 0022B3D8 FFFF8420 */  addi       $a0, $a0, -0x1 /* handwritten instruction */
    /* 12C35C 0022B3DC 00130100 */  sll        $v0, $at, 12
    /* 12C360 0022B3E0 020D0100 */  srl        $at, $at, 20
    /* 12C364 0022B3E4 0C00A5A7 */  sh         $a1, 0xC($sp)
    /* 12C368 0022B3E8 02120200 */  srl        $v0, $v0, 8
    /* 12C36C 0022B3EC 0400A2AF */  sw         $v0, 0x4($sp)
    /* 12C370 0022B3F0 0400A320 */  addi       $v1, $a1, 0x4 /* handwritten instruction */
    /* 12C374 0022B3F4 BC110100 */  dsll32     $v0, $at, 6
    /* 12C378 0022B3F8 7C090100 */  dsll32     $at, $at, 5
    /* 12C37C 0022B3FC 2C082200 */  dadd       $at, $at, $v0
    /* 12C380 0022B400 1C00A520 */  addi       $a1, $a1, 0x1C /* handwritten instruction */
    /* 12C384 0022B404 1000AF7F */  sq         $t7, 0x10($sp)
    /* 12C388 0022B408 2C082F00 */  dadd       $at, $at, $t7
    /* 12C38C 0022B40C 00406334 */  ori        $v1, $v1, 0x4000
    /* 12C390 0022B410 1000A1FF */  sd         $at, 0x10($sp)
    /* 12C394 0022B414 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* 12C398 0022B418 2000DE23 */  addi       $fp, $fp, 0x20 /* handwritten instruction */
    /* 12C39C 0022B41C EBFF8014 */  bnez       $a0, .L0022B3CC
    /* 12C3A0 0022B420 2000BD23 */   addi      $sp, $sp, 0x20 /* handwritten instruction */
    /* 12C3A4 0022B424 0000AE7F */  sq         $t6, 0x0($sp)
    /* 12C3A8 0022B428 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12C3AC 0022B42C 69020120 */  addi       $at, $zero, 0x269 /* handwritten instruction */
    /* 12C3B0 0022B430 26000220 */  addi       $v0, $zero, 0x26 /* handwritten instruction */
    /* 12C3B4 0022B434 22402800 */  sub        $t0, $at, $t0 /* handwritten instruction */
    /* 12C3B8 0022B438 22484900 */  sub        $t1, $v0, $t1 /* handwritten instruction */
    /* 12C3BC 0022B43C 0006A133 */  andi       $at, $sp, 0x600
    /* 12C3C0 0022B440 00060220 */  addi       $v0, $zero, 0x600 /* handwritten instruction */
    /* 12C3C4 0022B444 D7FF2214 */  bne        $at, $v0, func_0022B3A4
    /* 12C3C8 0022B448 1000DE23 */   addi      $fp, $fp, 0x10 /* handwritten instruction */
    /* 12C3CC 0022B44C FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12C3D0 0022B450 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12C3D4 0022B454 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12C3D8 0022B458 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022B45C:
    /* 12C3DC 0022B45C 0000838C */  lw         $v1, 0x0($a0)
    /* 12C3E0 0022B460 00016330 */  andi       $v1, $v1, 0x100
    /* 12C3E4 0022B464 00000000 */  nop
    /* 12C3E8 0022B468 00000000 */  nop
    /* 12C3EC 0022B46C 00000000 */  nop
    /* 12C3F0 0022B470 FAFF6014 */  bnez       $v1, .L0022B45C
    /* 12C3F4 0022B474 00000000 */   nop
    /* 12C3F8 0022B478 800082AC */  sw         $v0, 0x80($a0)
    /* 12C3FC 0022B47C 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12C400 0022B480 100082AC */  sw         $v0, 0x10($a0)
    /* 12C404 0022B484 02110100 */  srl        $v0, $at, 4
    /* 12C408 0022B488 200082AC */  sw         $v0, 0x20($a0)
    /* 12C40C 0022B48C 00010234 */  ori        $v0, $zero, 0x100
    /* 12C410 0022B490 000082AC */  sw         $v0, 0x0($a0)
    /* 12C414 0022B494 22E8A103 */  sub        $sp, $sp, $at /* handwritten instruction */
    /* 12C418 0022B498 E9AC0808 */  j          func_0022B3A4
    /* 12C41C 0022B49C 0008BD3B */   xori      $sp, $sp, 0x800
.align 2
  .L0022B4A0:
    /* 12C420 0022B4A0 7A000120 */  addi       $at, $zero, 0x7A /* handwritten instruction */
    /* 12C424 0022B4A4 00000000 */  nop
    /* 12C428 0022B4A8 ACFF9516 */  bne        $s4, $s5, .L0022B35C
    /* 12C42C 0022B4AC 22382700 */   sub       $a3, $at, $a3 /* handwritten instruction */
    /* 12C430 0022B4B0 7C3FE7AF */  sw         $a3, (0x70003F7C & 0xFFFF)($ra)
    /* 12C434 0022B4B4 803FE8AF */  sw         $t0, (0x70003F80 & 0xFFFF)($ra)
    /* 12C438 0022B4B8 67AC0808 */  j          func_0022B19C
    /* 12C43C 0022B4BC 843FE9AF */   sw        $t1, (0x70003F84 & 0xFFFF)($ra)
.align 2
  .L0022B4C0:
    /* 12C440 0022B4C0 0000A07F */  sq         $zero, 0x0($sp)
    /* 12C444 0022B4C4 0010013C */  lui        $at, (0x10000000 >> 16)
    /* 12C448 0022B4C8 0000A1AF */  sw         $at, 0x0($sp)
    /* 12C44C 0022B4CC 0013013C */  lui        $at, (0x13000000 >> 16)
    /* 12C450 0022B4D0 0800A1AF */  sw         $at, 0x8($sp)
    /* 12C454 0022B4D4 1000BD23 */  addi       $sp, $sp, 0x10 /* handwritten instruction */
    /* 12C458 0022B4D8 1000DE23 */  addi       $fp, $fp, 0x10 /* handwritten instruction */
    /* 12C45C 0022B4DC 00000000 */  nop
.align 2
  .L0022B4E0:
    /* 12C460 0022B4E0 FF07A133 */  andi       $at, $sp, 0x7FF
    /* 12C464 0022B4E4 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 12C468 0022B4E8 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 12C46C 0022B4EC 2210A103 */  sub        $v0, $sp, $at /* handwritten instruction */
.align 2
  .L0022B4F0:
    /* 12C470 0022B4F0 0000838C */  lw         $v1, 0x0($a0)
    /* 12C474 0022B4F4 00016330 */  andi       $v1, $v1, 0x100
    /* 12C478 0022B4F8 00000000 */  nop
    /* 12C47C 0022B4FC 00000000 */  nop
    /* 12C480 0022B500 00000000 */  nop
    /* 12C484 0022B504 FAFF6014 */  bnez       $v1, .L0022B4F0
    /* 12C488 0022B508 00000000 */   nop
    /* 12C48C 0022B50C 16002010 */  beqz       $at, .L0022B568
    /* 12C490 0022B510 00000000 */   nop
    /* 12C494 0022B514 800082AC */  sw         $v0, 0x80($a0)
    /* 12C498 0022B518 2210C103 */  sub        $v0, $fp, $at /* handwritten instruction */
    /* 12C49C 0022B51C 100082AC */  sw         $v0, 0x10($a0)
    /* 12C4A0 0022B520 02110100 */  srl        $v0, $at, 4
    /* 12C4A4 0022B524 200082AC */  sw         $v0, 0x20($a0)
    /* 12C4A8 0022B528 00010234 */  ori        $v0, $zero, 0x100
    /* 12C4AC 0022B52C 000082AC */  sw         $v0, 0x0($a0)
    /* 12C4B0 0022B530 00000000 */  nop
.align 2
  alabel func_0022B534
    /* 12C4B4 0022B534 0000838C */  lw         $v1, 0x0($a0)
    /* 12C4B8 0022B538 00016330 */  andi       $v1, $v1, 0x100
    /* 12C4BC 0022B53C 0A006010 */  beqz       $v1, .L0022B568
    /* 12C4C0 0022B540 10000320 */   addi      $v1, $zero, 0x10 /* handwritten instruction */
.align 2
  .L0022B544:
    /* 12C4C4 0022B544 00000000 */  nop
    /* 12C4C8 0022B548 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 12C4CC 0022B54C 00000000 */  nop
    /* 12C4D0 0022B550 00000000 */  nop
    /* 12C4D4 0022B554 00000000 */  nop
    /* 12C4D8 0022B558 FAFF6014 */  bnez       $v1, .L0022B544
    /* 12C4DC 0022B55C 00000000 */   nop
    /* 12C4E0 0022B560 4DAD0808 */  j          func_0022B534
    /* 12C4E4 0022B564 00000000 */   nop
.align 2
  .L0022B568:
    /* 12C4E8 0022B568 8C3FE18F */  lw         $at, (0x70003F8C & 0xFFFF)($ra)
    /* 12C4EC 0022B56C FFFF0220 */  addi       $v0, $zero, -0x1 /* handwritten instruction */
    /* 12C4F0 0022B570 000022A4 */  sh         $v0, 0x0($at)
    /* 12C4F4 0022B574 00000000 */  nop
    /* 12C4F8 0022B578 603FE28F */  lw         $v0, (0x70003F60 & 0xFFFF)($ra)
    /* 12C4FC 0022B57C 0030E123 */  addi       $at, $ra, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* 12C500 0022B580 80100200 */  sll        $v0, $v0, 2
    /* 12C504 0022B584 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
.align 2
  alabel func_0022B588
    /* 12C508 0022B588 10002210 */  beq        $at, $v0, .L0022B5CC
    /* 12C50C 0022B58C 0000238C */   lw        $v1, 0x0($at)
    /* 12C510 0022B590 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 12C514 0022B594 00000000 */  nop
    /* 12C518 0022B598 00000000 */  nop
    /* 12C51C 0022B59C FAFF6010 */  beqz       $v1, func_0022B588
    /* 12C520 0022B5A0 02240300 */   srl       $a0, $v1, 16
    /* 12C524 0022B5A4 F0FF8430 */  andi       $a0, $a0, 0xFFF0
    /* 12C528 0022B5A8 001B0300 */  sll        $v1, $v1, 12
    /* 12C52C 0022B5AC 021A0300 */  srl        $v1, $v1, 8
    /* 12C530 0022B5B0 0020053C */  lui        $a1, (0x20000000 >> 16)
    /* 12C534 0022B5B4 F0FF607C */  sq         $zero, -0x10($v1)
    /* 12C538 0022B5B8 20206400 */  add        $a0, $v1, $a0 /* handwritten instruction */
    /* 12C53C 0022B5BC F0FF65AC */  sw         $a1, -0x10($v1)
    /* 12C540 0022B5C0 00000000 */  nop
    /* 12C544 0022B5C4 62AD0808 */  j          func_0022B588
    /* 12C548 0022B5C8 F4FF64AC */   sw        $a0, -0xC($v1)
.align 2
  .L0022B5CC:
    /* 12C54C 0022B5CC 903FE18F */  lw         $at, (0x70003F90 & 0xFFFF)($ra)
    /* 12C550 0022B5D0 943FE28F */  lw         $v0, (0x70003F94 & 0xFFFF)($ra)
    /* 12C554 0022B5D4 983FE38F */  lw         $v1, (0x70003F98 & 0xFFFF)($ra)
    /* 12C558 0022B5D8 0020043C */  lui        $a0, (0x20000000 >> 16)
    /* 12C55C 0022B5DC 000024AC */  sw         $a0, 0x0($at)
    /* 12C560 0022B5E0 000044AC */  sw         $a0, 0x0($v0)
    /* 12C564 0022B5E4 000064AC */  sw         $a0, 0x0($v1)
    /* 12C568 0022B5E8 10004420 */  addi       $a0, $v0, 0x10 /* handwritten instruction */
    /* 12C56C 0022B5EC 040024AC */  sw         $a0, 0x4($at)
    /* 12C570 0022B5F0 10006420 */  addi       $a0, $v1, 0x10 /* handwritten instruction */
    /* 12C574 0022B5F4 040044AC */  sw         $a0, 0x4($v0)
    /* 12C578 0022B5F8 10002420 */  addi       $a0, $at, 0x10 /* handwritten instruction */
    /* 12C57C 0022B5FC 040064AC */  sw         $a0, 0x4($v1)
    /* 12C580 0022B600 00000000 */  nop
    /* 12C584 0022B604 00A39EAF */  sw         $fp, -0x5D00($gp)
    /* 12C588 0022B608 00000000 */  nop
    /* 12C58C 0022B60C 0070013C */  lui        $at, (0x70003FA8 >> 16)
    /* 12C590 0022B610 F83F3FDC */  ld         $ra, (0x70003FF8 & 0xFFFF)($at)
    /* 12C594 0022B614 F03F3EDC */  ld         $fp, (0x70003FF0 & 0xFFFF)($at)
    /* 12C598 0022B618 E83F3DDC */  ld         $sp, (0x70003FE8 & 0xFFFF)($at)
    /* 12C59C 0022B61C E03F37DC */  ld         $s7, (0x70003FE0 & 0xFFFF)($at)
    /* 12C5A0 0022B620 D83F36DC */  ld         $s6, (0x70003FD8 & 0xFFFF)($at)
    /* 12C5A4 0022B624 D03F35DC */  ld         $s5, (0x70003FD0 & 0xFFFF)($at)
    /* 12C5A8 0022B628 C83F34DC */  ld         $s4, (0x70003FC8 & 0xFFFF)($at)
    /* 12C5AC 0022B62C C03F33DC */  ld         $s3, (0x70003FC0 & 0xFFFF)($at)
    /* 12C5B0 0022B630 B83F32DC */  ld         $s2, (0x70003FB8 & 0xFFFF)($at)
    /* 12C5B4 0022B634 B03F31DC */  ld         $s1, (0x70003FB0 & 0xFFFF)($at)
    /* 12C5B8 0022B638 A83F30DC */  ld         $s0, (0x70003FA8 & 0xFFFF)($at)
    /* 12C5BC 0022B63C 0800E003 */  jr         $ra
    /* 12C5C0 0022B640 00000000 */   nop
endlabel func_00229F00
    /* 12C5C4 0022B644 00000000 */  nop
