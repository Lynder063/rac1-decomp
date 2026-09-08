.align 3
/* Handwritten function */
nonmatching func_00236F00, 0x14D4

glabel func_00236F00
    /* 137E80 00236F00 0070013C */  lui        $1, (0x70003FA8 >> 16)
    /* 137E84 00236F04 F83F3FFC */  sd         $31, (0x70003FF8 & 0xFFFF)($1)
    /* 137E88 00236F08 F03F3EFC */  sd         $30, (0x70003FF0 & 0xFFFF)($1)
    /* 137E8C 00236F0C E83F3DFC */  sd         $29, (0x70003FE8 & 0xFFFF)($1)
    /* 137E90 00236F10 E03F37FC */  sd         $23, (0x70003FE0 & 0xFFFF)($1)
    /* 137E94 00236F14 D83F36FC */  sd         $22, (0x70003FD8 & 0xFFFF)($1)
    /* 137E98 00236F18 D03F35FC */  sd         $21, (0x70003FD0 & 0xFFFF)($1)
    /* 137E9C 00236F1C C83F34FC */  sd         $20, (0x70003FC8 & 0xFFFF)($1)
    /* 137EA0 00236F20 C03F33FC */  sd         $19, (0x70003FC0 & 0xFFFF)($1)
    /* 137EA4 00236F24 B83F32FC */  sd         $18, (0x70003FB8 & 0xFFFF)($1)
    /* 137EA8 00236F28 B03F31FC */  sd         $17, (0x70003FB0 & 0xFFFF)($1)
    /* 137EAC 00236F2C A83F30FC */  sd         $16, (0x70003FA8 & 0xFFFF)($1)
    /* 137EB0 00236F30 4CA3818F */  lw         $1, -0x5CB4($28)
    /* 137EB4 00236F34 1E00023C */  lui        $2, %hi(D_001E1A00)
    /* 137EB8 00236F38 001A4224 */  addiu      $2, $2, %lo(D_001E1A00)
    /* 137EBC 00236F3C 00701F3C */  lui        $31, (0x70003F0C >> 16)
    /* 137EC0 00236F40 003AE323 */  addi       $3, $31, (0x70003A00 & 0xFFFF) /* handwritten instruction */
    /* 137EC4 00236F44 0032E423 */  addi       $4, $31, (0x70003200 & 0xFFFF) /* handwritten instruction */
    /* 137EC8 00236F48 0036E523 */  addi       $5, $31, (0x70003600 & 0xFFFF) /* handwritten instruction */
    /* 137ECC 00236F4C 50A3868F */  lw         $6, -0x5CB0($28)
    /* 137ED0 00236F50 70A3878F */  lw         $7, -0x5C90($28)
    /* 137ED4 00236F54 003FE1AF */  sw         $1, (0x70003F00 & 0xFFFF)($31)
    /* 137ED8 00236F58 043FE2AF */  sw         $2, (0x70003F04 & 0xFFFF)($31)
    /* 137EDC 00236F5C 083FE3AF */  sw         $3, (0x70003F08 & 0xFFFF)($31)
    /* 137EE0 00236F60 143FE4AF */  sw         $4, (0x70003F14 & 0xFFFF)($31)
    /* 137EE4 00236F64 183FE5AF */  sw         $5, (0x70003F18 & 0xFFFF)($31)
    /* 137EE8 00236F68 1C3FE6AF */  sw         $6, (0x70003F1C & 0xFFFF)($31)
    /* 137EEC 00236F6C 283FE7AF */  sw         $7, (0x70003F28 & 0xFFFF)($31)
    /* 137EF0 00236F70 00A39E8F */  lw         $30, -0x5D00($28)
    /* 137EF4 00236F74 0000FD23 */  addi       $29, $31, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 137EF8 00236F78 00001920 */  addi       $25, $0, 0x0 /* handwritten instruction */
    /* 137EFC 00236F7C 00000000 */  nop
    /* 137F00 00236F80 0020E123 */  addi       $1, $31, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 137F04 00236F84 0030E223 */  addi       $2, $31, (0x70003000 & 0xFFFF) /* handwritten instruction */
.align 2
  .L00236F88:
    /* 137F08 00236F88 0000207C */  sq         $0, 0x0($1)
    /* 137F0C 00236F8C 20002120 */  addi       $1, $1, 0x20 /* handwritten instruction */
    /* 137F10 00236F90 00000000 */  nop
    /* 137F14 00236F94 00000000 */  nop
    /* 137F18 00236F98 00000000 */  nop
    /* 137F1C 00236F9C FAFF2214 */  bne        $1, $2, .L00236F88
    /* 137F20 00236FA0 F0FF207C */   sq        $0, -0x10($1)
    /* 137F24 00236FA4 0030E223 */  addi       $2, $31, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* 137F28 00236FA8 1900013C */  lui        $1, %hi(D_001940C0)
    /* 137F2C 00236FAC C0402124 */  addiu      $1, $1, %lo(D_001940C0)
    /* 137F30 00236FB0 80004320 */  addi       $3, $2, 0x80 /* handwritten instruction */
.align 2
  .L00236FB4:
    /* 137F34 00236FB4 00002478 */  lq         $4, 0x0($1)
    /* 137F38 00236FB8 10002578 */  lq         $5, 0x10($1)
    /* 137F3C 00236FBC 0000447C */  sq         $4, 0x0($2)
    /* 137F40 00236FC0 20002120 */  addi       $1, $1, 0x20 /* handwritten instruction */
    /* 137F44 00236FC4 1000457C */  sq         $5, 0x10($2)
    /* 137F48 00236FC8 20004220 */  addi       $2, $2, 0x20 /* handwritten instruction */
    /* 137F4C 00236FCC F9FF4314 */  bne        $2, $3, .L00236FB4
    /* 137F50 00236FD0 00000000 */   nop
    /* 137F54 00236FD4 0035E223 */  addi       $2, $31, (0x70003500 & 0xFFFF) /* handwritten instruction */
    /* 137F58 00236FD8 1E00013C */  lui        $1, %hi(D_001E00F0)
    /* 137F5C 00236FDC F0002124 */  addiu      $1, $1, %lo(D_001E00F0)
    /* 137F60 00236FE0 00014320 */  addi       $3, $2, 0x100 /* handwritten instruction */
.align 2
  .L00236FE4:
    /* 137F64 00236FE4 00002478 */  lq         $4, 0x0($1)
    /* 137F68 00236FE8 10002578 */  lq         $5, 0x10($1)
    /* 137F6C 00236FEC 0000447C */  sq         $4, 0x0($2)
    /* 137F70 00236FF0 20002120 */  addi       $1, $1, 0x20 /* handwritten instruction */
    /* 137F74 00236FF4 1000457C */  sq         $5, 0x10($2)
    /* 137F78 00236FF8 20004220 */  addi       $2, $2, 0x20 /* handwritten instruction */
    /* 137F7C 00236FFC F9FF4314 */  bne        $2, $3, .L00236FE4
    /* 137F80 00237000 00000000 */   nop
    /* 137F84 00237004 1E00013C */  lui        $1, %hi(D_001E01F0)
    /* 137F88 00237008 F0012124 */  addiu      $1, $1, %lo(D_001E01F0)
    /* 137F8C 0023700C 00002278 */  lq         $2, 0x0($1)
    /* 137F90 00237010 10002378 */  lq         $3, 0x10($1)
    /* 137F94 00237014 803EE27F */  sq         $2, (0x70003E80 & 0xFFFF)($31)
    /* 137F98 00237018 903EE37F */  sq         $3, (0x70003E90 & 0xFFFF)($31)
    /* 137F9C 0023701C 3888828F */  lw         $2, -0x77C8($28)
    /* 137FA0 00237020 A03EE2AF */  sw         $2, (0x70003EA0 & 0xFFFF)($31)
    /* 137FA4 00237024 2300023C */  lui        $2, %hi(D_00237818)
    /* 137FA8 00237028 18784224 */  addiu      $2, $2, %lo(D_00237818)
    /* 137FAC 0023702C 243FE2AF */  sw         $2, (0x70003F24 & 0xFFFF)($31)
    /* 137FB0 00237030 00000000 */  nop
    /* 137FB4 00237034 8044023C */  lui        $2, (0x44800000 >> 16)
    /* 137FB8 00237038 1800013C */  lui        $1, %hi(D_00187040)
    /* 137FBC 0023703C 40702124 */  addiu      $1, $1, %lo(D_00187040)
    /* 137FC0 00237040 0008A248 */  qmtc2.ni   $2, $vf1
    /* 137FC4 00237044 400138D8 */  lqc2       $vf24, 0x140($1)
    /* 137FC8 00237048 000039D8 */  lqc2       $vf25, 0x0($1)
    /* 137FCC 0023704C 10003AD8 */  lqc2       $vf26, 0x10($1)
    /* 137FD0 00237050 20003BD8 */  lqc2       $vf27, 0x20($1)
    /* 137FD4 00237054 80003CD8 */  lqc2       $vf28, 0x80($1)
    /* 137FD8 00237058 90003DD8 */  lqc2       $vf29, 0x90($1)
    /* 137FDC 0023705C A0003ED8 */  lqc2       $vf30, 0xA0($1)
    /* 137FE0 00237060 B0003FD8 */  lqc2       $vf31, 0xB0($1)
    /* 137FE4 00237064 00012CD8 */  lqc2       $vf12, 0x100($1)
    /* 137FE8 00237068 10012DD8 */  lqc2       $vf13, 0x110($1)
    /* 137FEC 0023706C 20012ED8 */  lqc2       $vf14, 0x120($1)
    /* 137FF0 00237070 30012FD8 */  lqc2       $vf15, 0x130($1)
    /* 137FF4 00237074 1806214A */  vmulx.w    $vf24, $vf0, $vf1x
    /* 137FF8 00237078 00000000 */  nop
    /* 137FFC 0023707C 1900013C */  lui        $1, %hi(D_0018CE00)
    /* 138000 00237080 00CE2124 */  addiu      $1, $1, %lo(D_0018CE00)
    /* 138004 00237084 200232D8 */  lqc2       $vf18, 0x220($1)
    /* 138008 00237088 A00033D8 */  lqc2       $vf19, 0xA0($1)
    /* 13800C 0023708C B00034D8 */  lqc2       $vf20, 0xB0($1)
    /* 138010 00237090 E00136D8 */  lqc2       $vf22, 0x1E0($1)
    /* 138014 00237094 F00137D8 */  lqc2       $vf23, 0x1F0($1)
    /* 138018 00237098 803A013C */  lui        $1, (0x3A800000 >> 16)
    /* 13801C 0023709C 0008A148 */  qmtc2.ni   $1, $vf1
    /* 138020 002370A0 D89C814B */  vmulx.xy   $vf19, $vf19, $vf1x
    /* 138024 002370A4 D8BD814B */  vmulx.xy   $vf23, $vf23, $vf1x
    /* 138028 002370A8 20A395DB */  lqc2       $vf21, -0x5CE0($28)
    /* 13802C 002370AC D09D817B */  lq         $1, -0x6230($28)
    /* 138030 002370B0 E09D827B */  lq         $2, -0x6220($28)
    /* 138034 002370B4 F09D837B */  lq         $3, -0x6210($28)
    /* 138038 002370B8 009E847B */  lq         $4, -0x6200($28)
    /* 13803C 002370BC 109E857B */  lq         $5, -0x61F0($28)
    /* 138040 002370C0 209E867B */  lq         $6, -0x61E0($28)
    /* 138044 002370C4 309E877B */  lq         $7, -0x61D0($28)
    /* 138048 002370C8 409E887B */  lq         $8, -0x61C0($28)
    /* 13804C 002370CC 003EE17F */  sq         $1, (0x70003E00 & 0xFFFF)($31)
    /* 138050 002370D0 103EE27F */  sq         $2, (0x70003E10 & 0xFFFF)($31)
    /* 138054 002370D4 203EE37F */  sq         $3, (0x70003E20 & 0xFFFF)($31)
    /* 138058 002370D8 303EE47F */  sq         $4, (0x70003E30 & 0xFFFF)($31)
    /* 13805C 002370DC 403EE57F */  sq         $5, (0x70003E40 & 0xFFFF)($31)
    /* 138060 002370E0 503EE67F */  sq         $6, (0x70003E50 & 0xFFFF)($31)
    /* 138064 002370E4 603EE77F */  sq         $7, (0x70003E60 & 0xFFFF)($31)
    /* 138068 002370E8 703EE87F */  sq         $8, (0x70003E70 & 0xFFFF)($31)
    /* 13806C 002370EC 0000A07F */  sq         $0, 0x0($29)
    /* 138070 002370F0 1100023C */  lui        $2, %hi(D_00108E10)
    /* 138074 002370F4 108E4224 */  addiu      $2, $2, %lo(D_00108E10)
    /* 138078 002370F8 1100013C */  lui        $1, %hi(D_00108E20)
    /* 13807C 002370FC 208E2124 */  addiu      $1, $1, %lo(D_00108E20)
    /* 138080 00237100 0000428C */  lw         $2, 0x0($2)
    /* 138084 00237104 0400A1AF */  sw         $1, 0x4($29)
    /* 138088 00237108 0030013C */  lui        $1, (0x30000000 >> 16)
    /* 13808C 0023710C 0000A1AF */  sw         $1, 0x0($29)
    /* 138090 00237110 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138094 00237114 0000A2A7 */  sh         $2, 0x0($29)
    /* 138098 00237118 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 13809C 0023711C 1E00013C */  lui        $1, %hi(D_001DEC40)
    /* 1380A0 00237120 40EC2124 */  addiu      $1, $1, %lo(D_001DEC40)
    /* 1380A4 00237124 00002278 */  lq         $2, 0x0($1)
    /* 1380A8 00237128 10002378 */  lq         $3, 0x10($1)
    /* 1380AC 0023712C 20002478 */  lq         $4, 0x20($1)
    /* 1380B0 00237130 30002578 */  lq         $5, 0x30($1)
    /* 1380B4 00237134 40002678 */  lq         $6, 0x40($1)
    /* 1380B8 00237138 50002778 */  lq         $7, 0x50($1)
    /* 1380BC 0023713C 0000A27F */  sq         $2, 0x0($29)
    /* 1380C0 00237140 1000A37F */  sq         $3, 0x10($29)
    /* 1380C4 00237144 2000A47F */  sq         $4, 0x20($29)
    /* 1380C8 00237148 3000A57F */  sq         $5, 0x30($29)
    /* 1380CC 0023714C 4000A67F */  sq         $6, 0x40($29)
    /* 1380D0 00237150 5000A77F */  sq         $7, 0x50($29)
    /* 1380D4 00237154 6000BD23 */  addi       $29, $29, 0x60 /* handwritten instruction */
    /* 1380D8 00237158 6000DE23 */  addi       $30, $30, 0x60 /* handwritten instruction */
.align 2
  alabel func_0023715C
    /* 1380DC 0023715C 003FE18F */  lw         $1, (0x70003F00 & 0xFFFF)($31)
    /* 1380E0 00237160 00000000 */  nop
    /* 1380E4 00237164 043FE28F */  lw         $2, (0x70003F04 & 0xFFFF)($31)
    /* 1380E8 00237168 00000000 */  nop
    /* 1380EC 0023716C 2C032010 */  beqz       $1, .L00237E20
    /* 1380F0 00237170 FFFF2120 */   addi      $1, $1, -0x1 /* handwritten instruction */
    /* 1380F4 00237174 0000588C */  lw         $24, 0x0($2)
    /* 1380F8 00237178 04004220 */  addi       $2, $2, 0x4 /* handwritten instruction */
    /* 1380FC 0023717C 003FE1AF */  sw         $1, (0x70003F00 & 0xFFFF)($31)
    /* 138100 00237180 00000000 */  nop
    /* 138104 00237184 043FE2AF */  sw         $2, (0x70003F04 & 0xFFFF)($31)
    /* 138108 00237188 00000000 */  nop
    /* 13810C 0023718C 24000197 */  lhu        $1, 0x24($24)
    /* 138110 00237190 0050033C */  lui        $3, (0x50000000 >> 16)
    /* 138114 00237194 0088A348 */  qmtc2.ni   $3, $vf17
    /* 138118 00237198 00000000 */  nop
    /* 13811C 0023719C 2800168F */  lw         $22, 0x28($24)
    /* 138120 002371A0 09002230 */  andi       $2, $1, 0x9
    /* 138124 002371A4 26001797 */  lhu        $23, 0x26($24)
    /* 138128 002371A8 06002130 */  andi       $1, $1, 0x6
    /* 13812C 002371AC 12034014 */  bnez       $2, .L00237DF8
    /* 138130 002371B0 100010DB */   lqc2      $vf16, 0x10($24)
    /* 138134 002371B4 1C0000AF */  sw         $0, 0x1C($24)
    /* 138138 002371B8 42080100 */  srl        $1, $1, 1
    /* 13813C 002371BC 203FE1AF */  sw         $1, (0x70003F20 & 0xFFFF)($31)
    /* 138140 002371C0 00000000 */  nop
.align 2
  alabel func_002371C4
    /* 138144 002371C4 0C03E012 */  beqz       $23, .L00237DF8
    /* 138148 002371C8 00100A3C */   lui       $10, (0x1000D400 >> 16)
    /* 13814C 002371CC 00D44A35 */  ori        $10, $10, (0x1000D400 & 0xFFFF)
    /* 138150 002371D0 283FEB8F */  lw         $11, (0x70003F28 & 0xFFFF)($31)
    /* 138154 002371D4 00200220 */  addi       $2, $0, 0x2000 /* handwritten instruction */
    /* 138158 002371D8 80000120 */  addi       $1, $0, 0x80 /* handwritten instruction */
    /* 13815C 002371DC 800042AD */  sw         $2, 0x80($10)
    /* 138160 002371E0 E8083770 */  pminw      $1, $1, $23
    /* 138164 002371E4 100056AD */  sw         $22, 0x10($10)
    /* 138168 002371E8 40100100 */  sll        $2, $1, 1
    /* 13816C 002371EC 200042AD */  sw         $2, 0x20($10)
    /* 138170 002371F0 00010234 */  ori        $2, $0, 0x100
    /* 138174 002371F4 000042AD */  sw         $2, 0x0($10)
    /* 138178 002371F8 22B8E102 */  sub        $23, $23, $1 /* handwritten instruction */
    /* 13817C 002371FC 0020F423 */  addi       $20, $31, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 138180 00237200 40A90100 */  sll        $21, $1, 5
    /* 138184 00237204 0C3FF6AF */  sw         $22, (0x70003F0C & 0xFFFF)($31)
    /* 138188 00237208 20B0D502 */  add        $22, $22, $21 /* handwritten instruction */
    /* 13818C 0023720C 20A89502 */  add        $21, $20, $21 /* handwritten instruction */
    /* 138190 00237210 E0FF9422 */  addi       $20, $20, -0x20 /* handwritten instruction */
    /* 138194 00237214 00001020 */  addi       $16, $0, 0x0 /* handwritten instruction */
    /* 138198 00237218 00001120 */  addi       $17, $0, 0x0 /* handwritten instruction */
    /* 13819C 0023721C 00001220 */  addi       $18, $0, 0x0 /* handwritten instruction */
    /* 1381A0 00237220 00001320 */  addi       $19, $0, 0x0 /* handwritten instruction */
    /* 1381A4 00237224 1C000C93 */  lbu        $12, 0x1C($24)
    /* 1381A8 00237228 1D000D93 */  lbu        $13, 0x1D($24)
    /* 1381AC 0023722C 1E000E97 */  lhu        $14, 0x1E($24)
    /* 1381B0 00237230 00000000 */  nop
.align 2
  alabel func_00237234
    /* 1381B4 00237234 3400828E */  lw         $2, 0x34($20)
    /* 1381B8 00237238 20009422 */  addi       $20, $20, 0x20 /* handwritten instruction */
    /* 1381BC 0023723C C7009512 */  beq        $20, $21, .L0023755C
    /* 1381C0 00237240 000081DA */   lqc2      $vf1, 0x0($20)
    /* 1381C4 00237244 E8104B70 */  pminw      $2, $2, $11
    /* 1381C8 00237248 19008192 */  lbu        $1, 0x19($20)
    /* 1381CC 0023724C AC08D84B */  vsub.xyz   $vf2, $vf1, $vf24
    /* 1381D0 00237250 18008392 */  lbu        $3, 0x18($20)
    /* 1381D4 00237254 C300014B */  vaddw.x    $vf3, $vf0, $vf1w
    /* 1381D8 00237258 3C100200 */  dsll32     $2, $2, 0
    /* 1381DC 0023725C 0020A248 */  qmtc2.ni   $2, $vf4
    /* 1381E0 00237260 00000000 */  nop
    /* 1381E4 00237264 3B004010 */  beqz       $2, .L00237354
    /* 1381E8 00237268 C700814A */   vsubw.y   $vf3, $vf0, $vf1w
    /* 1381EC 0023726C BCC9C24B */  .word      0x4BC2C9BC    # vmulax.xyz ACC, $vf25, $vf2x
    /* 1381F0 00237270 20103F00 */  add        $2, $1, $31 /* handwritten instruction */
    /* 1381F4 00237274 BDD0C24B */  .word      0x4BC2D0BD    # vmadday.xyz ACC, $vf26, $vf2y
    /* 1381F8 00237278 000080FE */  sd         $0, 0x0($20)
    /* 1381FC 0023727C 8AD8C24B */  vmaddz.xyz $vf2, $vf27, $vf2z
    /* 138200 00237280 140080AE */  sw         $0, 0x14($20)
    /* 138204 00237284 C724814A */  vsubw.y    $vf19, $vf4, $vf1w
    /* 138208 00237288 00304290 */  lbu        $2, 0x3000($2)
    /* 13820C 0023728C 1BB2814B */  vmulw.xy   $vf8, $vf22, $vf1w
    /* 138210 00237290 00000000 */  nop
    /* 138214 00237294 4218824B */  vaddz.xy   $vf1, $vf3, $vf2z
    /* 138218 00237298 24186200 */  and        $3, $3, $2
    /* 13821C 0023729C E5FF6010 */  beqz       $3, func_00237234
    /* 138220 002372A0 5AA1824B */   vmulz.xy  $vf5, $vf20, $vf2z
    /* 138224 002372A4 FD11824B */  vabs.xy    $vf2, $vf2
    /* 138228 002372A8 00000000 */  nop
    /* 13822C 002372AC 00000000 */  nop
    /* 138230 002372B0 00000000 */  nop
    /* 138234 002372B4 EC98814B */  vsub.xy    $vf3, $vf19, $vf1
    /* 138238 002372B8 00000000 */  nop
    /* 13823C 002372BC 00000000 */  nop
    /* 138240 002372C0 00000000 */  nop
    /* 138244 002372C4 AC11884B */  vsub.xy    $vf6, $vf2, $vf8
    /* 138248 002372C8 00000000 */  nop
    /* 13824C 002372CC 2812884B */  vadd.xy    $vf8, $vf2, $vf8
    /* 138250 002372D0 00000000 */  nop
    /* 138254 002372D4 2C09974B */  vsub.xy    $vf4, $vf1, $vf23
    /* 138258 002372D8 00000000 */  nop
    /* 13825C 002372DC 6B00424A */  vmax.z     $vf1, $vf0, $vf2
    /* 138260 002372E0 00000000 */  nop
    /* 138264 002372E4 00182148 */  qmfc2.ni   $1, $vf3
    /* 138268 002372E8 00000000 */  nop
    /* 13826C 002372EC EC29864B */  vsub.xy    $vf7, $vf5, $vf6
    /* 138270 002372F0 0040053C */  lui        $5, (0x40000000 >> 16)
    /* 138274 002372F4 2C2A884B */  vsub.xy    $vf8, $vf5, $vf8
    /* 138278 002372F8 3C100100 */  dsll32     $2, $1, 0
    /* 13827C 002372FC CDFF2004 */  bltz       $1, func_00237234
    /* 138280 00237300 00202448 */   qmfc2.ni  $4, $vf4
    /* 138284 00237304 CBFF4104 */  bgez       $2, func_00237234
    /* 138288 00237308 3D0B814B */   .word      0x4B810B3D    # vmr32.xy  $vf1, $vf1
    /* 13828C 0023730C 2030D303 */  add        $6, $30, $19 /* handwritten instruction */
    /* 138290 00237310 00000000 */  nop
    /* 138294 00237314 00382248 */  qmfc2.ni   $2, $vf7
    /* 138298 00237318 2D28A500 */  daddu      $5, $5, $5
    /* 13829C 0023731C 00402348 */  qmfc2.ni   $3, $vf8
    /* 1382A0 00237320 26208500 */  xor        $4, $4, $5
    /* 1382A4 00237324 C3FF4004 */  bltz       $2, func_00237234
    /* 1382A8 00237328 3C100200 */   dsll32    $2, $2, 0
    /* 1382AC 0023732C C1FF4004 */  bltz       $2, func_00237234
    /* 1382B0 00237330 25186400 */   or        $3, $3, $4
    /* 1382B4 00237334 0B006004 */  bltz       $3, .L00237364
    /* 1382B8 00237338 3C180300 */   dsll32    $3, $3, 0
    /* 1382BC 0023733C 09006004 */  bltz       $3, .L00237364
    /* 1382C0 00237340 1000C620 */   addi      $6, $6, 0x10 /* handwritten instruction */
    /* 1382C4 00237344 000081FA */  sqc2       $vf1, 0x0($20)
    /* 1382C8 00237348 60007322 */  addi       $19, $19, 0x60 /* handwritten instruction */
    /* 1382CC 0023734C 8DDC0808 */  j          func_00237234
    /* 1382D0 00237350 0C0086AE */   sw        $6, 0xC($20)
.align 2
  .L00237354:
    /* 1382D4 00237354 E0FF9422 */  addi       $20, $20, -0x20 /* handwritten instruction */
    /* 1382D8 00237358 00000000 */  nop
    /* 1382DC 0023735C 8DDC0808 */  j          func_00237234
    /* 1382E0 00237360 00000000 */   nop
.align 2
  .L00237364:
    /* 1382E4 00237364 10008F8E */  lw         $15, 0x10($20)
    /* 1382E8 00237368 00000000 */  nop
    /* 1382EC 0023736C 5B0AE04B */  vmulw.xyzw $vf9, $vf1, $vf0w
    /* 1382F0 00237370 00000000 */  nop
    /* 1382F4 00237374 3000E4D9 */  lqc2       $vf4, 0x30($15)
    /* 1382F8 00237378 0000E1D9 */  lqc2       $vf1, 0x0($15)
    /* 1382FC 0023737C 1000E2D9 */  lqc2       $vf2, 0x10($15)
    /* 138300 00237380 2000E3D9 */  lqc2       $vf3, 0x20($15)
    /* 138304 00237384 A00005DB */  lqc2       $vf5, 0xA0($24)
    /* 138308 00237388 B00006DB */  lqc2       $vf6, 0xB0($24)
    /* 13830C 0023738C 5B08C44B */  vmulw.xyz  $vf1, $vf1, $vf4w
    /* 138310 00237390 9B10C44B */  vmulw.xyz  $vf2, $vf2, $vf4w
    /* 138314 00237394 DB18C44B */  vmulw.xyz  $vf3, $vf3, $vf4w
    /* 138318 00237398 2C21D84B */  vsub.xyz   $vf4, $vf4, $vf24
    /* 13831C 0023739C BC61E14B */  .word      0x4BE161BC    # vmulax.xyzw ACC, $vf12, $vf1x
    /* 138320 002373A0 BD68E14B */  .word      0x4BE168BD    # vmadday.xyzw ACC, $vf13, $vf1y
    /* 138324 002373A4 4A70E14B */  vmaddz.xyzw $vf1, $vf14, $vf1z
    /* 138328 002373A8 00000000 */  nop
    /* 13832C 002373AC 1B21D84B */  vmulw.xyz  $vf4, $vf4, $vf24w
    /* 138330 002373B0 00000000 */  nop
    /* 138334 002373B4 BC61E24B */  .word      0x4BE261BC    # vmulax.xyzw ACC, $vf12, $vf2x
    /* 138338 002373B8 BD68E24B */  .word      0x4BE268BD    # vmadday.xyzw ACC, $vf13, $vf2y
    /* 13833C 002373BC 8A70E24B */  vmaddz.xyzw $vf2, $vf14, $vf2z
    /* 138340 002373C0 C00007DB */  lqc2       $vf7, 0xC0($24)
    /* 138344 002373C4 BC61E34B */  .word      0x4BE361BC    # vmulax.xyzw ACC, $vf12, $vf3x
    /* 138348 002373C8 BD68E34B */  .word      0x4BE368BD    # vmadday.xyzw ACC, $vf13, $vf3y
    /* 13834C 002373CC CA70E34B */  vmaddz.xyzw $vf3, $vf14, $vf3z
    /* 138350 002373D0 D00008DB */  lqc2       $vf8, 0xD0($24)
    /* 138354 002373D4 BC61E44B */  .word      0x4BE461BC    # vmulax.xyzw ACC, $vf12, $vf4x
    /* 138358 002373D8 BD68E44B */  .word      0x4BE468BD    # vmadday.xyzw ACC, $vf13, $vf4y
    /* 13835C 002373DC BE70E44B */  .word      0x4BE470BE    # vmaddaz.xyzw ACC, $vf14, $vf4z
    /* 138360 002373E0 0B79E04B */  vmaddw.xyzw $vf4, $vf15, $vf0w
    /* 138364 002373E4 BC09E54B */  .word      0x4BE509BC    # vmulax.xyzw ACC, $vf1, $vf5x
    /* 138368 002373E8 BD10E54B */  .word      0x4BE510BD    # vmadday.xyzw ACC, $vf2, $vf5y
    /* 13836C 002373EC BE18E54B */  .word      0x4BE518BE    # vmaddaz.xyzw ACC, $vf3, $vf5z
    /* 138370 002373F0 4B21E04B */  vmaddw.xyzw $vf5, $vf4, $vf0w
    /* 138374 002373F4 BC09E64B */  .word      0x4BE609BC    # vmulax.xyzw ACC, $vf1, $vf6x
    /* 138378 002373F8 BD10E64B */  .word      0x4BE610BD    # vmadday.xyzw ACC, $vf2, $vf6y
    /* 13837C 002373FC BE18E64B */  .word      0x4BE618BE    # vmaddaz.xyzw ACC, $vf3, $vf6z
    /* 138380 00237400 8B21E04B */  vmaddw.xyzw $vf6, $vf4, $vf0w
    /* 138384 00237404 FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138388 00237408 BC09E74B */  .word      0x4BE709BC    # vmulax.xyzw ACC, $vf1, $vf7x
    /* 13838C 0023740C BD10E74B */  .word      0x4BE710BD    # vmadday.xyzw ACC, $vf2, $vf7y
    /* 138390 00237410 BE18E74B */  .word      0x4BE718BE    # vmaddaz.xyzw ACC, $vf3, $vf7z
    /* 138394 00237414 CB21E04B */  vmaddw.xyzw $vf7, $vf4, $vf0w
    /* 138398 00237418 FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 13839C 0023741C BC09E84B */  .word      0x4BE809BC    # vmulax.xyzw ACC, $vf1, $vf8x
    /* 1383A0 00237420 BD10E84B */  .word      0x4BE810BD    # vmadday.xyzw ACC, $vf2, $vf8y
    /* 1383A4 00237424 BE18E84B */  .word      0x4BE818BE    # vmaddaz.xyzw ACC, $vf3, $vf8z
    /* 1383A8 00237428 0B22E04B */  vmaddw.xyzw $vf8, $vf4, $vf0w
    /* 1383AC 0023742C FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1383B0 00237430 6A29954B */  vmul.xy    $vf5, $vf5, $vf21
    /* 1383B4 00237434 AA31954B */  vmul.xy    $vf6, $vf6, $vf21
    /* 1383B8 00237438 FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1383BC 0023743C EA39954B */  vmul.xy    $vf7, $vf7, $vf21
    /* 1383C0 00237440 2A42954B */  vmul.xy    $vf8, $vf8, $vf21
    /* 1383C4 00237444 E0000ADB */  lqc2       $vf10, 0xE0($24)
    /* 1383C8 00237448 F0000BDB */  lqc2       $vf11, 0xF0($24)
    /* 1383CC 0023744C 00904148 */  cfc2.ni    $1, $vi18
    /* 1383D0 00237450 FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1383D4 00237454 FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1383D8 00237458 FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1383DC 0023745C FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 1383E0 00237460 BC09EA4B */  .word      0x4BEA09BC    # vmulax.xyzw ACC, $vf1, $vf10x
    /* 1383E4 00237464 BD10EA4B */  .word      0x4BEA10BD    # vmadday.xyzw ACC, $vf2, $vf10y
    /* 1383E8 00237468 BE18EA4B */  .word      0x4BEA18BE    # vmaddaz.xyzw ACC, $vf3, $vf10z
    /* 1383EC 0023746C 4B21E04B */  vmaddw.xyzw $vf5, $vf4, $vf0w
    /* 1383F0 00237470 00904348 */  cfc2.ni    $3, $vi18
    /* 1383F4 00237474 000107DB */  lqc2       $vf7, 0x100($24)
    /* 1383F8 00237478 100108DB */  lqc2       $vf8, 0x110($24)
    /* 1383FC 0023747C BC09EB4B */  .word      0x4BEB09BC    # vmulax.xyzw ACC, $vf1, $vf11x
    /* 138400 00237480 BD10EB4B */  .word      0x4BEB10BD    # vmadday.xyzw ACC, $vf2, $vf11y
    /* 138404 00237484 BE18EB4B */  .word      0x4BEB18BE    # vmaddaz.xyzw ACC, $vf3, $vf11z
    /* 138408 00237488 8B21E04B */  vmaddw.xyzw $vf6, $vf4, $vf0w
    /* 13840C 0023748C FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138410 00237490 BC09E74B */  .word      0x4BE709BC    # vmulax.xyzw ACC, $vf1, $vf7x
    /* 138414 00237494 BD10E74B */  .word      0x4BE710BD    # vmadday.xyzw ACC, $vf2, $vf7y
    /* 138418 00237498 BE18E74B */  .word      0x4BE718BE    # vmaddaz.xyzw ACC, $vf3, $vf7z
    /* 13841C 0023749C CB21E04B */  vmaddw.xyzw $vf7, $vf4, $vf0w
    /* 138420 002374A0 FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138424 002374A4 BC09E84B */  .word      0x4BE809BC    # vmulax.xyzw ACC, $vf1, $vf8x
    /* 138428 002374A8 BD10E84B */  .word      0x4BE810BD    # vmadday.xyzw ACC, $vf2, $vf8y
    /* 13842C 002374AC BE18E84B */  .word      0x4BE818BE    # vmaddaz.xyzw ACC, $vf3, $vf8z
    /* 138430 002374B0 0B22E04B */  vmaddw.xyzw $vf8, $vf4, $vf0w
    /* 138434 002374B4 FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138438 002374B8 6A29954B */  vmul.xy    $vf5, $vf5, $vf21
    /* 13843C 002374BC AA31954B */  vmul.xy    $vf6, $vf6, $vf21
    /* 138440 002374C0 FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138444 002374C4 EA39954B */  vmul.xy    $vf7, $vf7, $vf21
    /* 138448 002374C8 82290100 */  srl        $5, $1, 6
    /* 13844C 002374CC 2A42954B */  vmul.xy    $vf8, $vf8, $vf21
    /* 138450 002374D0 02330100 */  srl        $6, $1, 12
    /* 138454 002374D4 823C0100 */  srl        $7, $1, 18
    /* 138458 002374D8 24082500 */  and        $1, $1, $5
    /* 13845C 002374DC 2430C700 */  and        $6, $6, $7
    /* 138460 002374E0 00000000 */  nop
    /* 138464 002374E4 00904248 */  cfc2.ni    $2, $vi18
    /* 138468 002374E8 24082600 */  and        $1, $1, $6
    /* 13846C 002374EC FF29C54B */  .word      0x4BC529FF                    # vclipw.xyz $vf5, $vf5w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138470 002374F0 00000000 */  nop
    /* 138474 002374F4 FF31C64B */  .word      0x4BC631FF                    # vclipw.xyz $vf6, $vf6w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138478 002374F8 82290200 */  srl        $5, $2, 6
    /* 13847C 002374FC FF39C74B */  .word      0x4BC739FF                    # vclipw.xyz $vf7, $vf7w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138480 00237500 02330200 */  srl        $6, $2, 12
    /* 138484 00237504 FF41C84B */  .word      0x4BC841FF                    # vclipw.xyz $vf8, $vf8w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 138488 00237508 823C0200 */  srl        $7, $2, 18
    /* 13848C 0023750C 24104500 */  and        $2, $2, $5
    /* 138490 00237510 2430C700 */  and        $6, $6, $7
    /* 138494 00237514 24104600 */  and        $2, $2, $6
    /* 138498 00237518 00000000 */  nop
    /* 13849C 0023751C 24082200 */  and        $1, $1, $2
    /* 1384A0 00237520 00000000 */  nop
    /* 1384A4 00237524 3F002130 */  andi       $1, $1, 0x3F
    /* 1384A8 00237528 00000000 */  nop
    /* 1384AC 0023752C 41FF2014 */  bnez       $1, func_00237234
    /* 1384B0 00237530 00904448 */   cfc2.ni   $4, $vi18
    /* 1384B4 00237534 000089FA */  sqc2       $vf9, 0x0($20)
    /* 1384B8 00237538 00000000 */  nop
    /* 1384BC 0023753C 25186400 */  or         $3, $3, $4
    /* 1384C0 00237540 2030D303 */  add        $6, $30, $19 /* handwritten instruction */
    /* 1384C4 00237544 01006328 */  slti       $3, $3, 0x1
    /* 1384C8 00237548 1000C620 */  addi       $6, $6, 0x10 /* handwritten instruction */
    /* 1384CC 0023754C 080083AE */  sw         $3, 0x8($20)
    /* 1384D0 00237550 60007322 */  addi       $19, $19, 0x60 /* handwritten instruction */
    /* 1384D4 00237554 8DDC0808 */  j          func_00237234
    /* 1384D8 00237558 0C0086AE */   sw        $6, 0xC($20)
.align 2
  .L0023755C:
    /* 1384DC 0023755C 19FF6012 */  beqz       $19, func_002371C4
    /* 1384E0 00237560 00000000 */   nop
    /* 1384E4 00237564 E01FF423 */  addi       $20, $31, (0x70001FE0 & 0xFFFF) /* handwritten instruction */
    /* 1384E8 00237568 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 1384EC 0023756C 0000A07F */  sq         $0, 0x0($29)
    /* 1384F0 00237570 0020013C */  lui        $1, (0x20000000 >> 16)
    /* 1384F4 00237574 0000A1AF */  sw         $1, 0x0($29)
    /* 1384F8 00237578 2008D303 */  add        $1, $30, $19 /* handwritten instruction */
    /* 1384FC 0023757C 0400A1AF */  sw         $1, 0x4($29)
    /* 138500 00237580 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
.align 2
  alabel func_00237584
    /* 138504 00237584 200081DE */  ld         $1, 0x20($20)
    /* 138508 00237588 20009422 */  addi       $20, $20, 0x20 /* handwritten instruction */
    /* 13850C 0023758C 6B019512 */  beq        $20, $21, .L00237B3C
    /* 138510 00237590 000081DA */   lqc2      $vf1, 0x0($20)
    /* 138514 00237594 00000000 */  nop
    /* 138518 00237598 FAFF2010 */  beqz       $1, func_00237584
    /* 13851C 0023759C 10008F8E */   lw        $15, 0x10($20)
    /* 138520 002375A0 8580C14B */  vsuby.xyz  $vf2, $vf16, $vf1y
    /* 138524 002375A4 1B008392 */  lbu        $3, 0x1B($20)
    /* 138528 002375A8 DB08184B */  vmulw.x    $vf3, $vf1, $vf24w
    /* 13852C 002375AC 1E008496 */  lhu        $4, 0x1E($20)
    /* 138530 002375B0 BC02924A */  .word      0x4A9202BC    # vadda.y    ACC, $vf18, $vf0
    /* 138534 002375B4 0000E0CD */  pref       0x00, 0x0($15)
    /* 138538 002375B8 0809924A */  vmaddx.y   $vf4, $vf1, $vf18x
    /* 13853C 002375BC 00000000 */  nop
    /* 138540 002375C0 03006014 */  bnez       $3, .L002375D0
    /* 138544 002375C4 FFFF0334 */   ori       $3, $0, 0xFFFF
    /* 138548 002375C8 11006410 */  beq        $3, $4, .L00237610
    /* 13854C 002375CC 00000000 */   nop
.align 2
  .L002375D0:
    /* 138550 002375D0 0C3FE38F */  lw         $3, (0x70003F0C & 0xFFFF)($31)
    /* 138554 002375D4 00000000 */  nop
    /* 138558 002375D8 1C3FE28F */  lw         $2, (0x70003F1C & 0xFFFF)($31)
    /* 13855C 002375DC FF0F8432 */  andi       $4, $20, 0xFFF
    /* 138560 002375E0 20186400 */  add        $3, $3, $4 /* handwritten instruction */
    /* 138564 002375E4 00000000 */  nop
    /* 138568 002375E8 22106200 */  sub        $2, $3, $2 /* handwritten instruction */
    /* 13856C 002375EC 183FE38F */  lw         $3, (0x70003F18 & 0xFFFF)($31)
    /* 138570 002375F0 42110200 */  srl        $2, $2, 5
    /* 138574 002375F4 FE39E423 */  addi       $4, $31, (0x700039FE & 0xFFFF) /* handwritten instruction */
    /* 138578 002375F8 05006410 */  beq        $3, $4, .L00237610
    /* 13857C 002375FC 00000000 */   nop
    /* 138580 00237600 000062A4 */  sh         $2, 0x0($3)
    /* 138584 00237604 02006320 */  addi       $3, $3, 0x2 /* handwritten instruction */
    /* 138588 00237608 183FE3AF */  sw         $3, (0x70003F18 & 0xFFFF)($31)
    /* 13858C 0023760C 00000000 */  nop
.align 2
  .L00237610:
    /* 138590 00237610 00102248 */  qmfc2.ni   $2, $vf2
    /* 138594 00237614 00000000 */  nop
    /* 138598 00237618 6F1C114B */  vmini.x    $vf17, $vf3, $vf17
    /* 13859C 0023761C 00000000 */  nop
    /* 1385A0 00237620 3C080200 */  dsll32     $1, $2, 0
    /* 1385A4 00237624 00000000 */  nop
    /* 1385A8 00237628 51002104 */  bgez       $1, .L00237770
    /* 1385AC 0023762C C91F0270 */   prot3w    $3, $2
    /* 1385B0 00237630 5F006004 */  bltz       $3, .L002377B0
    /* 1385B4 00237634 00000000 */   nop
    /* 1385B8 00237638 27004104 */  bgez       $2, .L002376D8
    /* 1385BC 0023763C 00000000 */   nop
    /* 1385C0 00237640 C580504A */  vsuby.z    $vf3, $vf16, $vf16y
    /* 1385C4 00237644 0100AD21 */  addi       $13, $13, 0x1 /* handwritten instruction */
    /* 1385C8 00237648 EC00824A */  vsub.y     $vf3, $vf0, $vf2
    /* 1385CC 0023764C 00000000 */  nop
    /* 1385D0 00237650 1621924A */  vminiz.y   $vf4, $vf4, $vf18z
    /* 1385D4 00237654 00000000 */  nop
    /* 1385D8 00237658 1C0091AE */  sw         $17, 0x1C($20)
    /* 1385DC 0023765C 00009122 */  addi       $17, $20, 0x0 /* handwritten instruction */
    /* 1385E0 00237660 BC1B234B */  .word      0x4B231BBC    # vdiv       Q, $vf3y, $vf3z
    /* 1385E4 00237664 8043013C */  lui        $1, (0x43800000 >> 16)
    /* 1385E8 00237668 C6FF0014 */  bnez       $0, func_00237584
    /* 1385EC 0023766C 880C2170 */   pextlw    $1, $1, $1
    /* 1385F0 00237670 C4FF0014 */  bnez       $0, func_00237584
    /* 1385F4 00237674 890B2170 */   pcpyld    $1, $1, $1
    /* 1385F8 00237678 1191244A */  vmaxy.w    $vf4, $vf18, $vf4y
    /* 1385FC 0023767C 00000000 */  nop
    /* 138600 00237680 0028A148 */  qmtc2.ni   $1, $vf5
    /* 138604 00237684 00000000 */  nop
    /* 138608 00237688 FF02004A */  vnop
    /* 13860C 0023768C FF02004A */  vnop
    /* 138610 00237690 E800804A */  vadd.y     $vf3, $vf0, $vf0
    /* 138614 00237694 00000000 */  nop
    /* 138618 00237698 DC28204A */  .word      0x4A2028DC    # vmulq.w    $vf3, $vf5, Q
    /* 13861C 0023769C 00000000 */  nop
    /* 138620 002376A0 E000004B */  .word      0x4B0000E0    # vaddq.x    $vf3, $vf0, Q
    /* 138624 002376A4 00000000 */  nop
    /* 138628 002376A8 2801C04B */  vadd.xyz   $vf4, $vf0, $vf0
    /* 13862C 002376AC 00000000 */  nop
    /* 138630 002376B0 08008A8E */  lw         $10, 0x8($20)
    /* 138634 002376B4 00000000 */  nop
    /* 138638 002376B8 C728434A */  vsubw.z    $vf3, $vf5, $vf3w
    /* 13863C 002376BC 00000000 */  nop
    /* 138640 002376C0 FF02004A */  vnop
    /* 138644 002376C4 FF02004A */  vnop
    /* 138648 002376C8 92004011 */  beqz       $10, .L00237914
    /* 13864C 002376CC 5000A4FB */   sqc2      $vf4, 0x50($29)
    /* 138650 002376D0 FADD0808 */  j          func_002377E8
    /* 138654 002376D4 4000A3FB */   sqc2      $vf3, 0x40($29)
.align 2
  .L002376D8:
    /* 138658 002376D8 C480904A */  vsubx.y    $vf3, $vf16, $vf16x
    /* 13865C 002376DC 01008C21 */  addi       $12, $12, 0x1 /* handwritten instruction */
    /* 138660 002376E0 EC00024B */  vsub.x     $vf3, $vf0, $vf2
    /* 138664 002376E4 00000000 */  nop
    /* 138668 002376E8 1621924A */  vminiz.y   $vf4, $vf4, $vf18z
    /* 13866C 002376EC 00000000 */  nop
    /* 138670 002376F0 1C0090AE */  sw         $16, 0x1C($20)
    /* 138674 002376F4 00009022 */  addi       $16, $20, 0x0 /* handwritten instruction */
    /* 138678 002376F8 BC1B834A */  .word      0x4A831BBC    # vdiv       Q, $vf3x, $vf3y
    /* 13867C 002376FC 8043013C */  lui        $1, (0x43800000 >> 16)
    /* 138680 00237700 A0FF0014 */  bnez       $0, func_00237584
    /* 138684 00237704 880C2170 */   pextlw    $1, $1, $1
    /* 138688 00237708 9EFF0014 */  bnez       $0, func_00237584
    /* 13868C 0023770C 890B2170 */   pcpyld    $1, $1, $1
    /* 138690 00237710 1191244A */  vmaxy.w    $vf4, $vf18, $vf4y
    /* 138694 00237714 00000000 */  nop
    /* 138698 00237718 0028A148 */  qmtc2.ni   $1, $vf5
    /* 13869C 0023771C 00000000 */  nop
    /* 1386A0 00237720 FF02004A */  vnop
    /* 1386A4 00237724 FF02004A */  vnop
    /* 1386A8 00237728 E800804A */  vadd.y     $vf3, $vf0, $vf0
    /* 1386AC 0023772C 00000000 */  nop
    /* 1386B0 00237730 DC28204A */  .word      0x4A2028DC    # vmulq.w    $vf3, $vf5, Q
    /* 1386B4 00237734 00000000 */  nop
    /* 1386B8 00237738 E000004B */  .word      0x4B0000E0    # vaddq.x    $vf3, $vf0, Q
    /* 1386BC 0023773C 00000000 */  nop
    /* 1386C0 00237740 2801C04B */  vadd.xyz   $vf4, $vf0, $vf0
    /* 1386C4 00237744 00000000 */  nop
    /* 1386C8 00237748 08008A8E */  lw         $10, 0x8($20)
    /* 1386CC 0023774C 00000000 */  nop
    /* 1386D0 00237750 C728434A */  vsubw.z    $vf3, $vf5, $vf3w
    /* 1386D4 00237754 00000000 */  nop
    /* 1386D8 00237758 FF02004A */  vnop
    /* 1386DC 0023775C FF02004A */  vnop
    /* 1386E0 00237760 64004011 */  beqz       $10, .L002378F4
    /* 1386E4 00237764 5000A4FB */   sqc2      $vf4, 0x50($29)
    /* 1386E8 00237768 FADD0808 */  j          func_002377E8
    /* 1386EC 0023776C 4000A3FB */   sqc2      $vf3, 0x40($29)
.align 2
  .L00237770:
    /* 1386F0 00237770 84FF0014 */  bnez       $0, func_00237584
    /* 1386F4 00237774 A90C0070 */   por       $1, $0, $0
    /* 1386F8 00237778 1621924A */  vminiz.y   $vf4, $vf4, $vf18z
    /* 1386FC 0023777C 8043013C */  lui        $1, (0x43800000 >> 16)
    /* 138700 00237780 C90F0170 */  prot3w     $1, $1
    /* 138704 00237784 1C0090AE */  sw         $16, 0x1C($20)
    /* 138708 00237788 00009022 */  addi       $16, $20, 0x0 /* handwritten instruction */
    /* 13870C 0023778C E800C04B */  vadd.xyz   $vf3, $vf0, $vf0
    /* 138710 00237790 D190244A */  vmaxy.w    $vf3, $vf18, $vf4y
    /* 138714 00237794 08008A8E */  lw         $10, 0x8($20)
    /* 138718 00237798 01008C21 */  addi       $12, $12, 0x1 /* handwritten instruction */
    /* 13871C 0023779C 00000000 */  nop
    /* 138720 002377A0 4C004011 */  beqz       $10, .L002378D4
    /* 138724 002377A4 4000A17F */   sq        $1, 0x40($29)
    /* 138728 002377A8 FADD0808 */  j          func_002377E8
    /* 13872C 002377AC 5000A3FB */   sqc2      $vf3, 0x50($29)
.align 2
  .L002377B0:
    /* 138730 002377B0 74FF0014 */  bnez       $0, func_00237584
    /* 138734 002377B4 A90C0070 */   por       $1, $0, $0
    /* 138738 002377B8 1621924A */  vminiz.y   $vf4, $vf4, $vf18z
    /* 13873C 002377BC 8043013C */  lui        $1, (0x43800000 >> 16)
    /* 138740 002377C0 C90F0170 */  prot3w     $1, $1
    /* 138744 002377C4 1C0092AE */  sw         $18, 0x1C($20)
    /* 138748 002377C8 00009222 */  addi       $18, $20, 0x0 /* handwritten instruction */
    /* 13874C 002377CC E800C04B */  vadd.xyz   $vf3, $vf0, $vf0
    /* 138750 002377D0 D190244A */  vmaxy.w    $vf3, $vf18, $vf4y
    /* 138754 002377D4 08008A8E */  lw         $10, 0x8($20)
    /* 138758 002377D8 4000A17F */  sq         $1, 0x40($29)
    /* 13875C 002377DC 0100CE21 */  addi       $14, $14, 0x1 /* handwritten instruction */
    /* 138760 002377E0 54004011 */  beqz       $10, .L00237934
    /* 138764 002377E4 5000A3FB */   sqc2      $vf3, 0x50($29)
.align 2
  alabel func_002377E8
    /* 138768 002377E8 3000E4D9 */  lqc2       $vf4, 0x30($15)
    /* 13876C 002377EC 0000E1D9 */  lqc2       $vf1, 0x0($15)
    /* 138770 002377F0 1000E2D9 */  lqc2       $vf2, 0x10($15)
    /* 138774 002377F4 2000E3D9 */  lqc2       $vf3, 0x20($15)
    /* 138778 002377F8 5B08C44B */  vmulw.xyz  $vf1, $vf1, $vf4w
    /* 13877C 002377FC 203FE18F */  lw         $1, (0x70003F20 & 0xFFFF)($31)
    /* 138780 00237800 9B10C44B */  vmulw.xyz  $vf2, $vf2, $vf4w
    /* 138784 00237804 6000BD23 */  addi       $29, $29, 0x60 /* handwritten instruction */
    /* 138788 00237808 DB18C44B */  vmulw.xyz  $vf3, $vf3, $vf4w
    /* 13878C 0023780C 0000E721 */  addi       $7, $15, 0x0 /* handwritten instruction */
    /* 138790 00237810 66002014 */  bnez       $1, .L002379AC
    /* 138794 00237814 2C21D84B */   vsub.xyz  $vf4, $vf4, $vf24
.align 2
  alabel D_00237818
    /* 138798 00237818 BCE1E14B */  .word      0x4BE1E1BC    # vmulax.xyzw ACC, $vf28, $vf1x
    /* 13879C 0023781C BDE8E14B */  .word      0x4BE1E8BD    # vmadday.xyzw ACC, $vf29, $vf1y
    /* 1387A0 00237820 4AF0E14B */  vmaddz.xyzw $vf1, $vf30, $vf1z
    /* 1387A4 00237824 00000000 */  nop
    /* 1387A8 00237828 1B21D84B */  vmulw.xyz  $vf4, $vf4, $vf24w
    /* 1387AC 0023782C 6000DE23 */  addi       $30, $30, 0x60 /* handwritten instruction */
    /* 1387B0 00237830 BCE1E24B */  .word      0x4BE2E1BC    # vmulax.xyzw ACC, $vf28, $vf2x
    /* 1387B4 00237834 BDE8E24B */  .word      0x4BE2E8BD    # vmadday.xyzw ACC, $vf29, $vf2y
    /* 1387B8 00237838 8AF0E24B */  vmaddz.xyzw $vf2, $vf30, $vf2z
    /* 1387BC 0023783C 00000000 */  nop
    /* 1387C0 00237840 BCE1E34B */  .word      0x4BE3E1BC    # vmulax.xyzw ACC, $vf28, $vf3x
    /* 1387C4 00237844 BDE8E34B */  .word      0x4BE3E8BD    # vmadday.xyzw ACC, $vf29, $vf3y
    /* 1387C8 00237848 CAF0E34B */  vmaddz.xyzw $vf3, $vf30, $vf3z
    /* 1387CC 0023784C 00000000 */  nop
    /* 1387D0 00237850 BCE1E44B */  .word      0x4BE4E1BC    # vmulax.xyzw ACC, $vf28, $vf4x
    /* 1387D4 00237854 BDE8E44B */  .word      0x4BE4E8BD    # vmadday.xyzw ACC, $vf29, $vf4y
    /* 1387D8 00237858 BEF0E44B */  .word      0x4BE4F0BE    # vmaddaz.xyzw ACC, $vf30, $vf4z
    /* 1387DC 0023785C 0BF9E04B */  vmaddw.xyzw $vf4, $vf31, $vf0w
    /* 1387E0 00237860 A0FFA1FB */  sqc2       $vf1, -0x60($29)
    /* 1387E4 00237864 00000000 */  nop
    /* 1387E8 00237868 B0FFA2FB */  sqc2       $vf2, -0x50($29)
    /* 1387EC 0023786C 000EA133 */  andi       $1, $29, 0xE00
    /* 1387F0 00237870 C0FFA3FB */  sqc2       $vf3, -0x40($29)
    /* 1387F4 00237874 000E0220 */  addi       $2, $0, 0xE00 /* handwritten instruction */
    /* 1387F8 00237878 42FF2214 */  bne        $1, $2, func_00237584
    /* 1387FC 0023787C D0FFA4FB */   sqc2      $vf4, -0x30($29)
.align 2
  alabel func_00237880
    /* 138800 00237880 FF0FA133 */  andi       $1, $29, 0xFFF
    /* 138804 00237884 0010043C */  lui        $4, (0x1000D000 >> 16)
    /* 138808 00237888 00D08434 */  ori        $4, $4, (0x1000D000 & 0xFFFF)
    /* 13880C 0023788C 2210A103 */  sub        $2, $29, $1 /* handwritten instruction */
.align 2
  .L00237890:
    /* 138810 00237890 0000838C */  lw         $3, 0x0($4)
    /* 138814 00237894 00016330 */  andi       $3, $3, 0x100
    /* 138818 00237898 00000000 */  nop
    /* 13881C 0023789C 00000000 */  nop
    /* 138820 002378A0 00000000 */  nop
    /* 138824 002378A4 FAFF6014 */  bnez       $3, .L00237890
    /* 138828 002378A8 00000000 */   nop
    /* 13882C 002378AC 800082AC */  sw         $2, 0x80($4)
    /* 138830 002378B0 2210C103 */  sub        $2, $30, $1 /* handwritten instruction */
    /* 138834 002378B4 100082AC */  sw         $2, 0x10($4)
    /* 138838 002378B8 02110100 */  srl        $2, $1, 4
    /* 13883C 002378BC 200082AC */  sw         $2, 0x20($4)
    /* 138840 002378C0 00010234 */  ori        $2, $0, 0x100
    /* 138844 002378C4 000082AC */  sw         $2, 0x0($4)
    /* 138848 002378C8 22E8A103 */  sub        $29, $29, $1 /* handwritten instruction */
    /* 13884C 002378CC 61DD0808 */  j          func_00237584
    /* 138850 002378D0 0010BD3B */   xori      $29, $29, 0x1000
.align 2
  .L002378D4:
    /* 138854 002378D4 1C00908E */  lw         $16, 0x1C($20)
    /* 138858 002378D8 00000000 */  nop
    /* 13885C 002378DC 0000038F */  lw         $3, 0x0($24)
    /* 138860 002378E0 6000BD23 */  addi       $29, $29, 0x60 /* handwritten instruction */
    /* 138864 002378E4 20000493 */  lbu        $4, 0x20($24)
    /* 138868 002378E8 6000DE23 */  addi       $30, $30, 0x60 /* handwritten instruction */
    /* 13886C 002378EC 53DE0808 */  j          func_0023794C
    /* 138870 002378F0 F0FFA3FB */   sqc2      $vf3, -0x10($29)
.align 2
  .L002378F4:
    /* 138874 002378F4 1C00908E */  lw         $16, 0x1C($20)
    /* 138878 002378F8 00000000 */  nop
    /* 13887C 002378FC 0000038F */  lw         $3, 0x0($24)
    /* 138880 00237900 6000BD23 */  addi       $29, $29, 0x60 /* handwritten instruction */
    /* 138884 00237904 20000493 */  lbu        $4, 0x20($24)
    /* 138888 00237908 6000DE23 */  addi       $30, $30, 0x60 /* handwritten instruction */
    /* 13888C 0023790C 53DE0808 */  j          func_0023794C
    /* 138890 00237910 E0FFA3FB */   sqc2      $vf3, -0x20($29)
.align 2
  .L00237914:
    /* 138894 00237914 1C00918E */  lw         $17, 0x1C($20)
    /* 138898 00237918 00000000 */  nop
    /* 13889C 0023791C 0400038F */  lw         $3, 0x4($24)
    /* 1388A0 00237920 6000BD23 */  addi       $29, $29, 0x60 /* handwritten instruction */
    /* 1388A4 00237924 21000493 */  lbu        $4, 0x21($24)
    /* 1388A8 00237928 6000DE23 */  addi       $30, $30, 0x60 /* handwritten instruction */
    /* 1388AC 0023792C 53DE0808 */  j          func_0023794C
    /* 1388B0 00237930 E0FFA3FB */   sqc2      $vf3, -0x20($29)
.align 2
  .L00237934:
    /* 1388B4 00237934 1C00928E */  lw         $18, 0x1C($20)
    /* 1388B8 00237938 00000000 */  nop
    /* 1388BC 0023793C 0800038F */  lw         $3, 0x8($24)
    /* 1388C0 00237940 6000BD23 */  addi       $29, $29, 0x60 /* handwritten instruction */
    /* 1388C4 00237944 22000493 */  lbu        $4, 0x22($24)
    /* 1388C8 00237948 6000DE23 */  addi       $30, $30, 0x60 /* handwritten instruction */
.align 2
  alabel func_0023794C
    /* 1388CC 0023794C 083FE18F */  lw         $1, (0x70003F08 & 0xFFFF)($31)
    /* 1388D0 00237950 003EE223 */  addi       $2, $31, (0x70003E00 & 0xFFFF) /* handwritten instruction */
    /* 1388D4 00237954 0F002210 */  beq        $1, $2, .L00237994
    /* 1388D8 00237958 000E0720 */   addi      $7, $0, 0xE00 /* handwritten instruction */
    /* 1388DC 0023795C 203FE68F */  lw         $6, (0x70003F20 & 0xFFFF)($31)
    /* 1388E0 00237960 00000000 */  nop
    /* 1388E4 00237964 0C00828E */  lw         $2, 0xC($20)
    /* 1388E8 00237968 00000000 */  nop
    /* 1388EC 0023796C 2C00058F */  lw         $5, 0x2C($24)
    /* 1388F0 00237970 2530CF00 */  or         $6, $6, $15
    /* 1388F4 00237974 000022AC */  sw         $2, 0x0($1)
    /* 1388F8 00237978 00260400 */  sll        $4, $4, 24
    /* 1388FC 0023797C 040026AC */  sw         $6, 0x4($1)
    /* 138900 00237980 02290500 */  srl        $5, $5, 4
    /* 138904 00237984 080023AC */  sw         $3, 0x8($1)
    /* 138908 00237988 25208500 */  or         $4, $4, $5
    /* 13890C 0023798C 0C0024AC */  sw         $4, 0xC($1)
    /* 138910 00237990 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
.align 2
  .L00237994:
    /* 138914 00237994 083FE1AF */  sw         $1, (0x70003F08 & 0xFFFF)($31)
    /* 138918 00237998 000EA133 */  andi       $1, $29, 0xE00
    /* 13891C 0023799C F9FE2714 */  bne        $1, $7, func_00237584
    /* 138920 002379A0 00000000 */   nop
    /* 138924 002379A4 20DE0808 */  j          func_00237880
    /* 138928 002379A8 00000000 */   nop
.align 2
  .L002379AC:
    /* 13892C 002379AC 903EE9DB */  lqc2       $vf9, (0x70003E90 & 0xFFFF)($31)
    /* 138930 002379B0 803EE8DB */  lqc2       $vf8, (0x70003E80 & 0xFFFF)($31)
    /* 138934 002379B4 B03EECFB */  sqc2       $vf12, (0x70003EB0 & 0xFFFF)($31)
    /* 138938 002379B8 C302004B */  vaddw.x    $vf11, $vf0, $vf0w
    /* 13893C 002379BC A03EE58F */  lw         $5, (0x70003EA0 & 0xFFFF)($31)
    /* 138940 002379C0 42080100 */  srl        $1, $1, 1
    /* 138944 002379C4 2A23C44B */  vmul.xyz   $vf12, $vf4, $vf4
    /* 138948 002379C8 0035E637 */  ori        $6, $31, (0x70003500 & 0xFFFF)
    /* 13894C 002379CC 3D600C4B */  .word      0x4B0C603D    # vadday.x   ACC, $vf12, $vf12y
    /* 138950 002379D0 0A5B0C4B */  vmaddz.x   $vf12, $vf11, $vf12z
    /* 138954 002379D4 04488C4A */  vsubx.y    $vf0, $vf9, $vf12x
    /* 138958 002379D8 FF02004A */  vnop
    /* 13895C 002379DC FF02004A */  vnop
    /* 138960 002379E0 FF02004A */  vnop
    /* 138964 002379E4 FF02004A */  vnop
    /* 138968 002379E8 00884448 */  cfc2.ni    $4, $vi17
    /* 13896C 002379EC 1A63094B */  vmulz.x    $vf12, $vf12, $vf9z
    /* 138970 002379F0 40008430 */  andi       $4, $4, 0x40
    /* 138974 002379F4 4B008014 */  bnez       $4, .L00237B24
    /* 138978 002379F8 04032C4A */   vsubx.w   $vf12, $vf0, $vf12x
    /* 13897C 002379FC 5801E04B */  vmulx.xyzw $vf5, $vf0, $vf0x
    /* 138980 00237A00 423A0700 */  srl        $7, $7, 9
    /* 138984 00237A04 9801E04B */  vmulx.xyzw $vf6, $vf0, $vf0x
    /* 138988 00237A08 FF01E730 */  andi       $7, $7, 0x1FF
    /* 13898C 00237A0C 3D03E74B */  .word      0x4BE7033D    # vmr32.xyzw $vf7, $vf0
    /* 138990 00237A10 80110700 */  sll        $2, $7, 6
    /* 138994 00237A14 4329004B */  vaddw.x    $vf5, $vf5, $vf0w
    /* 138998 00237A18 40200700 */  sll        $4, $7, 1
    /* 13899C 00237A1C 8331804A */  vaddw.y    $vf6, $vf6, $vf0w
    /* 1389A0 00237A20 21104400 */  addu       $2, $2, $4
    /* 1389A4 00237A24 21104700 */  addu       $2, $2, $7
    /* 1389A8 00237A28 C0190700 */  sll        $3, $7, 7
    /* 1389AC 00237A2C 80200700 */  sll        $4, $7, 2
    /* 1389B0 00237A30 23186400 */  subu       $3, $3, $4
    /* 1389B4 00237A34 23186700 */  subu       $3, $3, $7
    /* 1389B8 00237A38 21104500 */  addu       $2, $2, $5
    /* 1389BC 00237A3C 03002010 */  beqz       $1, .L00237A4C
    /* 1389C0 00237A40 21186500 */   addu      $3, $3, $5
    /* 1389C4 00237A44 00000000 */  nop
    /* 1389C8 00237A48 21186500 */  addu       $3, $3, $5
.align 2
  .L00237A4C:
    /* 1389CC 00237A4C FF004430 */  andi       $4, $2, 0xFF
    /* 1389D0 00237A50 21208600 */  addu       $4, $4, $6
    /* 1389D4 00237A54 00008480 */  lb         $4, 0x0($4)
    /* 1389D8 00237A58 40210400 */  sll        $4, $4, 5
    /* 1389DC 00237A5C 0050A448 */  qmtc2.ni   $4, $vf10
    /* 1389E0 00237A60 3E51EA4B */  vitof12.xyzw $vf10, $vf10
    /* 1389E4 00237A64 42200200 */  srl        $4, $2, 1
    /* 1389E8 00237A68 FF008430 */  andi       $4, $4, 0xFF
    /* 1389EC 00237A6C 21208600 */  addu       $4, $4, $6
    /* 1389F0 00237A70 00008480 */  lb         $4, 0x0($4)
    /* 1389F4 00237A74 40210400 */  sll        $4, $4, 5
    /* 1389F8 00237A78 0058A448 */  qmtc2.ni   $4, $vf11
    /* 1389FC 00237A7C 3E59EB4B */  vitof12.xyzw $vf11, $vf11
    /* 138A00 00237A80 00000000 */  nop
    /* 138A04 00237A84 EA510B4B */  vmul.x     $vf7, $vf10, $vf11
    /* 138A08 00237A88 40006424 */  addiu      $4, $3, 0x40
    /* 138A0C 00237A8C C401294A */  vsubx.w    $vf7, $vf0, $vf9x
    /* 138A10 00237A90 FF008430 */  andi       $4, $4, 0xFF
    /* 138A14 00237A94 D839094B */  vmulx.x    $vf7, $vf7, $vf9x
    /* 138A18 00237A98 21208600 */  addu       $4, $4, $6
    /* 138A1C 00237A9C C339074B */  vaddw.x    $vf7, $vf7, $vf7w
    /* 138A20 00237AA0 00008480 */  lb         $4, 0x0($4)
    /* 138A24 00237AA4 40210400 */  sll        $4, $4, 5
    /* 138A28 00237AA8 0050A448 */  qmtc2.ni   $4, $vf10
    /* 138A2C 00237AAC 3E51EA4B */  vitof12.xyzw $vf10, $vf10
    /* 138A30 00237AB0 42200300 */  srl        $4, $3, 1
    /* 138A34 00237AB4 FF008430 */  andi       $4, $4, 0xFF
    /* 138A38 00237AB8 21208600 */  addu       $4, $4, $6
    /* 138A3C 00237ABC 00008480 */  lb         $4, 0x0($4)
    /* 138A40 00237AC0 40210400 */  sll        $4, $4, 5
    /* 138A44 00237AC4 0058A448 */  qmtc2.ni   $4, $vf11
    /* 138A48 00237AC8 3E59EB4B */  vitof12.xyzw $vf11, $vf11
    /* 138A4C 00237ACC D839084B */  vmulx.x    $vf7, $vf7, $vf8x
    /* 138A50 00237AD0 BD51084B */  .word      0x4B0851BD    # vmulay.x   ACC, $vf10, $vf8y
    /* 138A54 00237AD4 8A3A084B */  vmaddz.x   $vf10, $vf7, $vf8z
    /* 138A58 00237AD8 9B520C4B */  vmulw.x    $vf10, $vf10, $vf12w
    /* 138A5C 00237ADC BD59084B */  .word      0x4B0859BD    # vmulay.x   ACC, $vf11, $vf8y
    /* 138A60 00237AE0 CB3A084B */  vmaddw.x   $vf11, $vf7, $vf8w
    /* 138A64 00237AE4 03002014 */  bnez       $1, .L00237AF4
    /* 138A68 00237AE8 DB5A0C4B */   vmulw.x   $vf11, $vf11, $vf12w
    /* 138A6C 00237AEC 9B52094B */  vmulw.x    $vf10, $vf10, $vf9w
    /* 138A70 00237AF0 DB5A094B */  vmulw.x    $vf11, $vf11, $vf9w
.align 2
  .L00237AF4:
    /* 138A74 00237AF4 C0010A4B */  vaddx.x    $vf7, $vf0, $vf10x
    /* 138A78 00237AF8 C0018B4A */  vaddx.y    $vf7, $vf0, $vf11x
    /* 138A7C 00237AFC BC29C14B */  .word      0x4BC129BC    # vmulax.xyz ACC, $vf5, $vf1x
    /* 138A80 00237B00 BD30C14B */  .word      0x4BC130BD    # vmadday.xyz ACC, $vf6, $vf1y
    /* 138A84 00237B04 4A38C14B */  vmaddz.xyz $vf1, $vf7, $vf1z
    /* 138A88 00237B08 BC29C24B */  .word      0x4BC229BC    # vmulax.xyz ACC, $vf5, $vf2x
    /* 138A8C 00237B0C BD30C24B */  .word      0x4BC230BD    # vmadday.xyz ACC, $vf6, $vf2y
    /* 138A90 00237B10 8A38C24B */  vmaddz.xyz $vf2, $vf7, $vf2z
    /* 138A94 00237B14 BC29C34B */  .word      0x4BC329BC    # vmulax.xyz ACC, $vf5, $vf3x
    /* 138A98 00237B18 BD30C34B */  .word      0x4BC330BD    # vmadday.xyz ACC, $vf6, $vf3y
    /* 138A9C 00237B1C CA38C34B */  vmaddz.xyz $vf3, $vf7, $vf3z
    /* 138AA0 00237B20 00000000 */  nop
.align 2
  .L00237B24:
    /* 138AA4 00237B24 243FE78F */  lw         $7, (0x70003F24 & 0xFFFF)($31)
    /* 138AA8 00237B28 00000000 */  nop
    /* 138AAC 00237B2C B03EECDB */  lqc2       $vf12, (0x70003EB0 & 0xFFFF)($31)
    /* 138AB0 00237B30 00000000 */  nop
    /* 138AB4 00237B34 0800E000 */  jr         $7
    /* 138AB8 00237B38 00000000 */   nop
.align 2
  .L00237B3C:
    /* 138ABC 00237B3C 1C000CA3 */  sb         $12, 0x1C($24)
    /* 138AC0 00237B40 1D000DA3 */  sb         $13, 0x1D($24)
    /* 138AC4 00237B44 1E000EA7 */  sh         $14, 0x1E($24)
    /* 138AC8 00237B48 00000000 */  nop
    /* 138ACC 00237B4C 003EE87B */  lq         $8, (0x70003E00 & 0xFFFF)($31)
    /* 138AD0 00237B50 103EE97B */  lq         $9, (0x70003E10 & 0xFFFF)($31)
    /* 138AD4 00237B54 203EEA7B */  lq         $10, (0x70003E20 & 0xFFFF)($31)
    /* 138AD8 00237B58 303EEB7B */  lq         $11, (0x70003E30 & 0xFFFF)($31)
    /* 138ADC 00237B5C 403EEC7B */  lq         $12, (0x70003E40 & 0xFFFF)($31)
    /* 138AE0 00237B60 503EED7B */  lq         $13, (0x70003E50 & 0xFFFF)($31)
    /* 138AE4 00237B64 603EEE7B */  lq         $14, (0x70003E60 & 0xFFFF)($31)
    /* 138AE8 00237B68 00000000 */  nop
    /* 138AEC 00237B6C 09000012 */  beqz       $16, .L00237B94
    /* 138AF0 00237B70 20001593 */   lbu       $21, 0x20($24)
    /* 138AF4 00237B74 0000148F */  lw         $20, 0x0($24)
    /* 138AF8 00237B78 23000F3C */  lui        $15, %hi(.L00237B94)
    /* 138AFC 00237B7C 947BEF25 */  addiu      $15, $15, %lo(.L00237B94)
    /* 138B00 00237B80 00A91500 */  sll        $21, $21, 4
    /* 138B04 00237B84 20A89502 */  add        $21, $20, $21 /* handwritten instruction */
    /* 138B08 00237B88 0000878E */  lw         $7, 0x0($20)
    /* 138B0C 00237B8C FBDE0808 */  j          func_00237BEC
    /* 138B10 00237B90 00001322 */   addi      $19, $16, 0x0 /* handwritten instruction */
.align 2
  .L00237B94:
    /* 138B14 00237B94 09002012 */  beqz       $17, .L00237BBC
    /* 138B18 00237B98 21001593 */   lbu       $21, 0x21($24)
    /* 138B1C 00237B9C 0400148F */  lw         $20, 0x4($24)
    /* 138B20 00237BA0 23000F3C */  lui        $15, %hi(.L00237BBC)
    /* 138B24 00237BA4 BC7BEF25 */  addiu      $15, $15, %lo(.L00237BBC)
    /* 138B28 00237BA8 00A91500 */  sll        $21, $21, 4
    /* 138B2C 00237BAC 20A89502 */  add        $21, $20, $21 /* handwritten instruction */
    /* 138B30 00237BB0 0000878E */  lw         $7, 0x0($20)
    /* 138B34 00237BB4 FBDE0808 */  j          func_00237BEC
    /* 138B38 00237BB8 00003322 */   addi      $19, $17, 0x0 /* handwritten instruction */
.align 2
  .L00237BBC:
    /* 138B3C 00237BBC 09004012 */  beqz       $18, .L00237BE4
    /* 138B40 00237BC0 22001593 */   lbu       $21, 0x22($24)
    /* 138B44 00237BC4 0800148F */  lw         $20, 0x8($24)
    /* 138B48 00237BC8 23000F3C */  lui        $15, %hi(.L00237BE4)
    /* 138B4C 00237BCC E47BEF25 */  addiu      $15, $15, %lo(.L00237BE4)
    /* 138B50 00237BD0 00A91500 */  sll        $21, $21, 4
    /* 138B54 00237BD4 20A89502 */  add        $21, $20, $21 /* handwritten instruction */
    /* 138B58 00237BD8 0000878E */  lw         $7, 0x0($20)
    /* 138B5C 00237BDC FBDE0808 */  j          func_00237BEC
    /* 138B60 00237BE0 00005322 */   addi      $19, $18, 0x0 /* handwritten instruction */
.align 2
  .L00237BE4:
    /* 138B64 00237BE4 71DC0808 */  j          func_002371C4
    /* 138B68 00237BE8 00000000 */   nop
.align 2
  alabel func_00237BEC
    /* 138B6C 00237BEC 103FF3AF */  sw         $19, 0x3F10($31)
    /* 138B70 00237BF0 00000000 */  nop
.align 2
  alabel func_00237BF4
    /* 138B74 00237BF4 7E009512 */  beq        $20, $21, .L00237DF0
    /* 138B78 00237BF8 103FF38F */   lw        $19, 0x3F10($31)
    /* 138B7C 00237BFC 04008192 */  lbu        $1, 0x4($20)
    /* 138B80 00237C00 1000E420 */  addi       $4, $7, 0x10 /* handwritten instruction */
    /* 138B84 00237C04 0000A87F */  sq         $8, 0x0($29)
    /* 138B88 00237C08 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138B8C 00237C0C 0400A7AF */  sw         $7, 0x4($29)
    /* 138B90 00237C10 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 138B94 00237C14 2C00028F */  lw         $2, 0x2C($24)
    /* 138B98 00237C18 01000320 */  addi       $3, $0, 0x1 /* handwritten instruction */
.align 2
  .L00237C1C:
    /* 138B9C 00237C1C 0000858C */  lw         $5, 0x0($4)
    /* 138BA0 00237C20 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* 138BA4 00237C24 0000A87F */  sq         $8, 0x0($29)
    /* 138BA8 00237C28 05000620 */  addi       $6, $0, 0x5 /* handwritten instruction */
    /* 138BAC 00237C2C 0000A6A3 */  sb         $6, 0x0($29)
    /* 138BB0 00237C30 2028A200 */  add        $5, $5, $2 /* handwritten instruction */
    /* 138BB4 00237C34 0E00A6A3 */  sb         $6, 0xE($29)
    /* 138BB8 00237C38 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138BBC 00237C3C 0C00A3A7 */  sh         $3, 0xC($29)
    /* 138BC0 00237C40 05006320 */  addi       $3, $3, 0x5 /* handwritten instruction */
    /* 138BC4 00237C44 0400A5AF */  sw         $5, 0x4($29)
    /* 138BC8 00237C48 FFFF2120 */  addi       $1, $1, -0x1 /* handwritten instruction */
    /* 138BCC 00237C4C F3FF2014 */  bnez       $1, .L00237C1C
    /* 138BD0 00237C50 1000BD23 */   addi      $29, $29, 0x10 /* handwritten instruction */
    /* 138BD4 00237C54 07008292 */  lbu        $2, 0x7($20)
    /* 138BD8 00237C58 2000E120 */  addi       $1, $7, 0x20 /* handwritten instruction */
    /* 138BDC 00237C5C 0000A97F */  sq         $9, 0x0($29)
    /* 138BE0 00237C60 00406320 */  addi       $3, $3, 0x4000 /* handwritten instruction */
    /* 138BE4 00237C64 0400A1AF */  sw         $1, 0x4($29)
    /* 138BE8 00237C68 00000000 */  nop
    /* 138BEC 00237C6C 0000A2A3 */  sb         $2, 0x0($29)
    /* 138BF0 00237C70 80100200 */  sll        $2, $2, 2
    /* 138BF4 00237C74 0E00A2A3 */  sb         $2, 0xE($29)
    /* 138BF8 00237C78 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138BFC 00237C7C 0C00A3A7 */  sh         $3, 0xC($29)
    /* 138C00 00237C80 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 138C04 00237C84 08008192 */  lbu        $1, 0x8($20)
    /* 138C08 00237C88 00000000 */  nop
    /* 138C0C 00237C8C 09008292 */  lbu        $2, 0x9($20)
    /* 138C10 00237C90 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138C14 00237C94 0000AA7F */  sq         $10, 0x0($29)
    /* 138C18 00237C98 00090100 */  sll        $1, $1, 4
    /* 138C1C 00237C9C 0000A2A3 */  sb         $2, 0x0($29)
    /* 138C20 00237CA0 40100200 */  sll        $2, $2, 1
    /* 138C24 00237CA4 0E00A2A3 */  sb         $2, 0xE($29)
    /* 138C28 00237CA8 20082700 */  add        $1, $1, $7 /* handwritten instruction */
    /* 138C2C 00237CAC 0400A1AF */  sw         $1, 0x4($29)
    /* 138C30 00237CB0 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 138C34 00237CB4 0000A07F */  sq         $0, 0x0($29)
    /* 138C38 00237CB8 0010013C */  lui        $1, (0x10000000 >> 16)
    /* 138C3C 00237CBC 0000A1AF */  sw         $1, 0x0($29)
    /* 138C40 00237CC0 0014013C */  lui        $1, (0x14000006 >> 16)
    /* 138C44 00237CC4 06002134 */  ori        $1, $1, (0x14000006 & 0xFFFF)
    /* 138C48 00237CC8 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138C4C 00237CCC 0C00A1AF */  sw         $1, 0xC($29)
    /* 138C50 00237CD0 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 138C54 00237CD4 0B008292 */  lbu        $2, 0xB($20)
    /* 138C58 00237CD8 2000DE23 */  addi       $30, $30, 0x20 /* handwritten instruction */
    /* 138C5C 00237CDC 0A008192 */  lbu        $1, 0xA($20)
    /* 138C60 00237CE0 00000000 */  nop
    /* 138C64 00237CE4 0000AB7F */  sq         $11, 0x0($29)
    /* 138C68 00237CE8 03004320 */  addi       $3, $2, 0x3 /* handwritten instruction */
    /* 138C6C 00237CEC 1000AB7F */  sq         $11, 0x10($29)
    /* 138C70 00237CF0 82180300 */  srl        $3, $3, 2
    /* 138C74 00237CF4 0E00A2A3 */  sb         $2, 0xE($29)
    /* 138C78 00237CF8 00090100 */  sll        $1, $1, 4
    /* 138C7C 00237CFC 1E00A2A3 */  sb         $2, 0x1E($29)
    /* 138C80 00237D00 20082700 */  add        $1, $1, $7 /* handwritten instruction */
    /* 138C84 00237D04 0000A3A3 */  sb         $3, 0x0($29)
    /* 138C88 00237D08 00000000 */  nop
    /* 138C8C 00237D0C 1000A3A3 */  sb         $3, 0x10($29)
    /* 138C90 00237D10 00110300 */  sll        $2, $3, 4
    /* 138C94 00237D14 0400A1AF */  sw         $1, 0x4($29)
    /* 138C98 00237D18 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 138C9C 00237D1C 1400A1AF */  sw         $1, 0x14($29)
    /* 138CA0 00237D20 F8400334 */  ori        $3, $0, 0x40F8
    /* 138CA4 00237D24 1C00A3A7 */  sh         $3, 0x1C($29)
    /* 138CA8 00237D28 2000BD23 */  addi       $29, $29, 0x20 /* handwritten instruction */
    /* 138CAC 00237D2C 1000878E */  lw         $7, 0x10($20)
    /* 138CB0 00237D30 10009422 */  addi       $20, $20, 0x10 /* handwritten instruction */
.align 2
  .L00237D34:
    /* 138CB4 00237D34 0C00618E */  lw         $1, 0xC($19)
    /* 138CB8 00237D38 00000000 */  nop
    /* 138CBC 00237D3C 1000628E */  lw         $2, 0x10($19)
    /* 138CC0 00237D40 00000000 */  nop
    /* 138CC4 00237D44 0000AC7F */  sq         $12, 0x0($29)
    /* 138CC8 00237D48 00000000 */  nop
    /* 138CCC 00237D4C 0400A1AF */  sw         $1, 0x4($29)
    /* 138CD0 00237D50 3000DE23 */  addi       $30, $30, 0x30 /* handwritten instruction */
    /* 138CD4 00237D54 1000AD7F */  sq         $13, 0x10($29)
    /* 138CD8 00237D58 40004220 */  addi       $2, $2, 0x40 /* handwritten instruction */
    /* 138CDC 00237D5C 1400A2AF */  sw         $2, 0x14($29)
    /* 138CE0 00237D60 46432323 */  addi       $3, $25, 0x4346 /* handwritten instruction */
    /* 138CE4 00237D64 1C00A3A7 */  sh         $3, 0x1C($29)
    /* 138CE8 00237D68 000EA133 */  andi       $1, $29, 0xE00
    /* 138CEC 00237D6C 1C00738E */  lw         $19, 0x1C($19)
    /* 138CF0 00237D70 000E0220 */  addi       $2, $0, 0xE00 /* handwritten instruction */
    /* 138CF4 00237D74 2000AE7F */  sq         $14, 0x20($29)
    /* 138CF8 00237D78 3000BD23 */  addi       $29, $29, 0x30 /* handwritten instruction */
    /* 138CFC 00237D7C 05002210 */  beq        $1, $2, .L00237D94
    /* 138D00 00237D80 4000393B */   xori      $25, $25, 0x40
    /* 138D04 00237D84 EBFF6016 */  bnez       $19, .L00237D34
    /* 138D08 00237D88 00000000 */   nop
    /* 138D0C 00237D8C FDDE0808 */  j          func_00237BF4
    /* 138D10 00237D90 00000000 */   nop
.align 2
  .L00237D94:
    /* 138D14 00237D94 FF0FA133 */  andi       $1, $29, 0xFFF
    /* 138D18 00237D98 0010043C */  lui        $4, (0x1000D000 >> 16)
    /* 138D1C 00237D9C 00D08434 */  ori        $4, $4, (0x1000D000 & 0xFFFF)
    /* 138D20 00237DA0 2210A103 */  sub        $2, $29, $1 /* handwritten instruction */
.align 2
  .L00237DA4:
    /* 138D24 00237DA4 0000838C */  lw         $3, 0x0($4)
    /* 138D28 00237DA8 00016330 */  andi       $3, $3, 0x100
    /* 138D2C 00237DAC 00000000 */  nop
    /* 138D30 00237DB0 00000000 */  nop
    /* 138D34 00237DB4 00000000 */  nop
    /* 138D38 00237DB8 FAFF6014 */  bnez       $3, .L00237DA4
    /* 138D3C 00237DBC 00000000 */   nop
    /* 138D40 00237DC0 800082AC */  sw         $2, 0x80($4)
    /* 138D44 00237DC4 2210C103 */  sub        $2, $30, $1 /* handwritten instruction */
    /* 138D48 00237DC8 100082AC */  sw         $2, 0x10($4)
    /* 138D4C 00237DCC 02110100 */  srl        $2, $1, 4
    /* 138D50 00237DD0 200082AC */  sw         $2, 0x20($4)
    /* 138D54 00237DD4 00010234 */  ori        $2, $0, 0x100
    /* 138D58 00237DD8 000082AC */  sw         $2, 0x0($4)
    /* 138D5C 00237DDC 22E8A103 */  sub        $29, $29, $1 /* handwritten instruction */
    /* 138D60 00237DE0 D4FF6016 */  bnez       $19, .L00237D34
    /* 138D64 00237DE4 0010BD3B */   xori      $29, $29, 0x1000
    /* 138D68 00237DE8 FDDE0808 */  j          func_00237BF4
    /* 138D6C 00237DEC 00000000 */   nop
.align 2
  .L00237DF0:
    /* 138D70 00237DF0 0800E001 */  jr         $15
    /* 138D74 00237DF4 00000000 */   nop
.align 2
  .L00237DF8:
    /* 138D78 00237DF8 7C89114B */  vftoi0.x   $vf17, $vf17
    /* 138D7C 00237DFC 00000000 */  nop
    /* 138D80 00237E00 143FE28F */  lw         $2, (0x70003F14 & 0xFFFF)($31)
    /* 138D84 00237E04 00000000 */  nop
    /* 138D88 00237E08 04004320 */  addi       $3, $2, 0x4 /* handwritten instruction */
    /* 138D8C 00237E0C 143FE3AF */  sw         $3, (0x70003F14 & 0xFFFF)($31)
    /* 138D90 00237E10 00882148 */  qmfc2.ni   $1, $vf17
    /* 138D94 00237E14 00000000 */  nop
    /* 138D98 00237E18 57DC0808 */  j          func_0023715C
    /* 138D9C 00237E1C 000041AC */   sw        $1, 0x0($2)
.align 2
  .L00237E20:
    /* 138DA0 00237E20 0000A07F */  sq         $0, 0x0($29)
    /* 138DA4 00237E24 0010013C */  lui        $1, (0x10000000 >> 16)
    /* 138DA8 00237E28 0000A1AF */  sw         $1, 0x0($29)
    /* 138DAC 00237E2C 0013013C */  lui        $1, (0x13000000 >> 16)
    /* 138DB0 00237E30 0800A1AF */  sw         $1, 0x8($29)
    /* 138DB4 00237E34 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 138DB8 00237E38 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138DBC 00237E3C 00000000 */  nop
    /* 138DC0 00237E40 FF0FA133 */  andi       $1, $29, 0xFFF
    /* 138DC4 00237E44 00100A3C */  lui        $10, (0x1000D000 >> 16)
    /* 138DC8 00237E48 00D04A35 */  ori        $10, $10, (0x1000D000 & 0xFFFF)
    /* 138DCC 00237E4C 2210A103 */  sub        $2, $29, $1 /* handwritten instruction */
.align 2
  .L00237E50:
    /* 138DD0 00237E50 0000438D */  lw         $3, 0x0($10)
    /* 138DD4 00237E54 00016330 */  andi       $3, $3, 0x100
    /* 138DD8 00237E58 00000000 */  nop
    /* 138DDC 00237E5C 00000000 */  nop
    /* 138DE0 00237E60 00000000 */  nop
    /* 138DE4 00237E64 FAFF6014 */  bnez       $3, .L00237E50
    /* 138DE8 00237E68 00000000 */   nop
    /* 138DEC 00237E6C 0B002010 */  beqz       $1, .L00237E9C
    /* 138DF0 00237E70 00000000 */   nop
    /* 138DF4 00237E74 800042AD */  sw         $2, 0x80($10)
    /* 138DF8 00237E78 2210C103 */  sub        $2, $30, $1 /* handwritten instruction */
    /* 138DFC 00237E7C 100042AD */  sw         $2, 0x10($10)
    /* 138E00 00237E80 02110100 */  srl        $2, $1, 4
    /* 138E04 00237E84 200042AD */  sw         $2, 0x20($10)
    /* 138E08 00237E88 00010234 */  ori        $2, $0, 0x100
    /* 138E0C 00237E8C 000042AD */  sw         $2, 0x0($10)
    /* 138E10 00237E90 22E8A103 */  sub        $29, $29, $1 /* handwritten instruction */
    /* 138E14 00237E94 0010BD3B */  xori       $29, $29, 0x1000
    /* 138E18 00237E98 00000000 */  nop
.align 2
  .L00237E9C:
    /* 138E1C 00237E9C 083FF08F */  lw         $16, (0x70003F08 & 0xFFFF)($31)
    /* 138E20 00237EA0 003AF323 */  addi       $19, $31, (0x70003A00 & 0xFFFF) /* handwritten instruction */
    /* 138E24 00237EA4 28011312 */  beq        $16, $19, .L00238348
    /* 138E28 00237EA8 00001920 */   addi      $25, $0, 0x0 /* handwritten instruction */
    /* 138E2C 00237EAC 0000A07F */  sq         $0, 0x0($29)
    /* 138E30 00237EB0 1100023C */  lui        $2, %hi(D_0010AD10)
    /* 138E34 00237EB4 10AD4224 */  addiu      $2, $2, %lo(D_0010AD10)
    /* 138E38 00237EB8 1100013C */  lui        $1, %hi(D_0010AD20)
    /* 138E3C 00237EBC 20AD2124 */  addiu      $1, $1, %lo(D_0010AD20)
    /* 138E40 00237EC0 0000428C */  lw         $2, 0x0($2)
    /* 138E44 00237EC4 0400A1AF */  sw         $1, 0x4($29)
    /* 138E48 00237EC8 0030013C */  lui        $1, (0x30000000 >> 16)
    /* 138E4C 00237ECC 0000A1AF */  sw         $1, 0x0($29)
    /* 138E50 00237ED0 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 138E54 00237ED4 0000A2A7 */  sh         $2, 0x0($29)
    /* 138E58 00237ED8 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 138E5C 00237EDC 1E00013C */  lui        $1, %hi(D_001DECA0)
    /* 138E60 00237EE0 A0EC2124 */  addiu      $1, $1, %lo(D_001DECA0)
    /* 138E64 00237EE4 00002278 */  lq         $2, 0x0($1)
    /* 138E68 00237EE8 10002378 */  lq         $3, 0x10($1)
    /* 138E6C 00237EEC 20002478 */  lq         $4, 0x20($1)
    /* 138E70 00237EF0 30002578 */  lq         $5, 0x30($1)
    /* 138E74 00237EF4 40002678 */  lq         $6, 0x40($1)
    /* 138E78 00237EF8 50002778 */  lq         $7, 0x50($1)
    /* 138E7C 00237EFC 60002878 */  lq         $8, 0x60($1)
    /* 138E80 00237F00 70002978 */  lq         $9, 0x70($1)
    /* 138E84 00237F04 80002A78 */  lq         $10, 0x80($1)
    /* 138E88 00237F08 0000A27F */  sq         $2, 0x0($29)
    /* 138E8C 00237F0C 1000A37F */  sq         $3, 0x10($29)
    /* 138E90 00237F10 2000A47F */  sq         $4, 0x20($29)
    /* 138E94 00237F14 3000A57F */  sq         $5, 0x30($29)
    /* 138E98 00237F18 4000A67F */  sq         $6, 0x40($29)
    /* 138E9C 00237F1C 5000A77F */  sq         $7, 0x50($29)
    /* 138EA0 00237F20 6000A87F */  sq         $8, 0x60($29)
    /* 138EA4 00237F24 7000A97F */  sq         $9, 0x70($29)
    /* 138EA8 00237F28 8000AA7F */  sq         $10, 0x80($29)
    /* 138EAC 00237F2C 9000BD23 */  addi       $29, $29, 0x90 /* handwritten instruction */
    /* 138EB0 00237F30 9000DE23 */  addi       $30, $30, 0x90 /* handwritten instruction */
    /* 138EB4 00237F34 1800013C */  lui        $1, %hi(D_00187040)
    /* 138EB8 00237F38 40702124 */  addiu      $1, $1, %lo(D_00187040)
    /* 138EBC 00237F3C C0003CD8 */  lqc2       $vf28, 0xC0($1)
    /* 138EC0 00237F40 D0003DD8 */  lqc2       $vf29, 0xD0($1)
    /* 138EC4 00237F44 E0003ED8 */  lqc2       $vf30, 0xE0($1)
    /* 138EC8 00237F48 F0003FD8 */  lqc2       $vf31, 0xF0($1)
    /* 138ECC 00237F4C 003EE87B */  lq         $8, (0x70003E00 & 0xFFFF)($31)
    /* 138ED0 00237F50 103EE97B */  lq         $9, (0x70003E10 & 0xFFFF)($31)
    /* 138ED4 00237F54 203EEA7B */  lq         $10, (0x70003E20 & 0xFFFF)($31)
    /* 138ED8 00237F58 303EEB7B */  lq         $11, (0x70003E30 & 0xFFFF)($31)
    /* 138EDC 00237F5C 403EEC7B */  lq         $12, (0x70003E40 & 0xFFFF)($31)
    /* 138EE0 00237F60 503EED7B */  lq         $13, (0x70003E50 & 0xFFFF)($31)
    /* 138EE4 00237F64 603EEE7B */  lq         $14, (0x70003E60 & 0xFFFF)($31)
    /* 138EE8 00237F68 703EEF7B */  lq         $15, (0x70003E70 & 0xFFFF)($31)
    /* 138EEC 00237F6C 2300023C */  lui        $2, %hi(D_00237FF8)
    /* 138EF0 00237F70 F87F4224 */  addiu      $2, $2, %lo(D_00237FF8)
    /* 138EF4 00237F74 243FE2AF */  sw         $2, (0x70003F24 & 0xFFFF)($31)
    /* 138EF8 00237F78 00000000 */  nop
    /* 138EFC 00237F7C 0010023C */  lui        $2, (0x1000D000 >> 16)
    /* 138F00 00237F80 00D04234 */  ori        $2, $2, (0x1000D000 & 0xFFFF)
.align 2
  alabel func_00237F84
    /* 138F04 00237F84 0000438C */  lw         $3, 0x0($2)
    /* 138F08 00237F88 00016330 */  andi       $3, $3, 0x100
    /* 138F0C 00237F8C 0A006010 */  beqz       $3, .L00237FB8
    /* 138F10 00237F90 10000320 */   addi      $3, $0, 0x10 /* handwritten instruction */
.align 2
  .L00237F94:
    /* 138F14 00237F94 00000000 */  nop
    /* 138F18 00237F98 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 138F1C 00237F9C 00000000 */  nop
    /* 138F20 00237FA0 00000000 */  nop
    /* 138F24 00237FA4 00000000 */  nop
    /* 138F28 00237FA8 FAFF6014 */  bnez       $3, .L00237F94
    /* 138F2C 00237FAC 00000000 */   nop
    /* 138F30 00237FB0 E1DF0808 */  j          func_00237F84
    /* 138F34 00237FB4 00000000 */   nop
.align 2
  .L00237FB8:
    /* 138F38 00237FB8 0400768E */  lw         $22, 0x4($19)
    /* 138F3C 00237FBC F0FF0220 */  addi       $2, $0, -0x10 /* handwritten instruction */
    /* 138F40 00237FC0 0F00C132 */  andi       $1, $22, 0xF
    /* 138F44 00237FC4 24B0C202 */  and        $22, $22, $2
    /* 138F48 00237FC8 3000C4DA */  lqc2       $vf4, 0x30($22)
    /* 138F4C 00237FCC 0000C1DA */  lqc2       $vf1, 0x0($22)
    /* 138F50 00237FD0 1000C2DA */  lqc2       $vf2, 0x10($22)
    /* 138F54 00237FD4 2000C3DA */  lqc2       $vf3, 0x20($22)
    /* 138F58 00237FD8 5B08C44B */  vmulw.xyz  $vf1, $vf1, $vf4w
    /* 138F5C 00237FDC 0000778E */  lw         $23, 0x0($19)
    /* 138F60 00237FE0 9B10C44B */  vmulw.xyz  $vf2, $vf2, $vf4w
    /* 138F64 00237FE4 10007322 */  addi       $19, $19, 0x10 /* handwritten instruction */
    /* 138F68 00237FE8 DB18C44B */  vmulw.xyz  $vf3, $vf3, $vf4w
    /* 138F6C 00237FEC 0000C722 */  addi       $7, $22, 0x0 /* handwritten instruction */
    /* 138F70 00237FF0 6EFE2014 */  bnez       $1, .L002379AC
    /* 138F74 00237FF4 2C21D84B */   vsub.xyz  $vf4, $vf4, $vf24
.align 2
  alabel D_00237FF8
    /* 138F78 00237FF8 BCE1E14B */  .word      0x4BE1E1BC    # vmulax.xyzw ACC, $vf28, $vf1x
    /* 138F7C 00237FFC BDE8E14B */  .word      0x4BE1E8BD    # vmadday.xyzw ACC, $vf29, $vf1y
    /* 138F80 00238000 4AF0E14B */  vmaddz.xyzw $vf1, $vf30, $vf1z
    /* 138F84 00238004 1B21D84B */  vmulw.xyz  $vf4, $vf4, $vf24w
    /* 138F88 00238008 BCE1E24B */  .word      0x4BE2E1BC    # vmulax.xyzw ACC, $vf28, $vf2x
    /* 138F8C 0023800C BDE8E24B */  .word      0x4BE2E8BD    # vmadday.xyzw ACC, $vf29, $vf2y
    /* 138F90 00238010 8AF0E24B */  vmaddz.xyzw $vf2, $vf30, $vf2z
    /* 138F94 00238014 00000000 */  nop
    /* 138F98 00238018 BCE1E34B */  .word      0x4BE3E1BC    # vmulax.xyzw ACC, $vf28, $vf3x
    /* 138F9C 0023801C BDE8E34B */  .word      0x4BE3E8BD    # vmadday.xyzw ACC, $vf29, $vf3y
    /* 138FA0 00238020 CAF0E34B */  vmaddz.xyzw $vf3, $vf30, $vf3z
    /* 138FA4 00238024 00000000 */  nop
    /* 138FA8 00238028 BCE1E44B */  .word      0x4BE4E1BC    # vmulax.xyzw ACC, $vf28, $vf4x
    /* 138FAC 0023802C BDE8E44B */  .word      0x4BE4E8BD    # vmadday.xyzw ACC, $vf29, $vf4y
    /* 138FB0 00238030 BEF0E44B */  .word      0x4BE4F0BE    # vmaddaz.xyzw ACC, $vf30, $vf4z
    /* 138FB4 00238034 0BF9E04B */  vmaddw.xyzw $vf4, $vf31, $vf0w
    /* 138FB8 00238038 0000E1FA */  sqc2       $vf1, 0x0($23)
    /* 138FBC 0023803C 1000E2FA */  sqc2       $vf2, 0x10($23)
    /* 138FC0 00238040 2000E3FA */  sqc2       $vf3, 0x20($23)
    /* 138FC4 00238044 3000E4FA */  sqc2       $vf4, 0x30($23)
    /* 138FC8 00238048 DBFF7016 */  bne        $19, $16, .L00237FB8
    /* 138FCC 0023804C 00000000 */   nop
    /* 138FD0 00238050 003AF323 */  addi       $19, $31, (0x70003A00 & 0xFFFF) /* handwritten instruction */
    /* 138FD4 00238054 00000000 */  nop
.align 2
  .L00238058:
    /* 138FD8 00238058 A0007012 */  beq        $19, $16, .L002382DC
    /* 138FDC 0023805C 0C00758E */   lw        $21, 0xC($19)
    /* 138FE0 00238060 0800748E */  lw         $20, 0x8($19)
    /* 138FE4 00238064 00000000 */  nop
    /* 138FE8 00238068 00C21500 */  sll        $24, $21, 8
    /* 138FEC 0023806C 02AE1500 */  srl        $21, $21, 24
    /* 138FF0 00238070 02C11800 */  srl        $24, $24, 4
    /* 138FF4 00238074 00A91500 */  sll        $21, $21, 4
    /* 138FF8 00238078 0000878E */  lw         $7, 0x0($20)
    /* 138FFC 0023807C 20A89502 */  add        $21, $20, $21 /* handwritten instruction */
    /* 139000 00238080 00001120 */  addi       $17, $0, 0x0 /* handwritten instruction */
    /* 139004 00238084 00007222 */  addi       $18, $19, 0x0 /* handwritten instruction */
.align 2
  alabel func_00238088
    /* 139008 00238088 1800618E */  lw         $1, 0x18($19)
    /* 13900C 0023808C 10007322 */  addi       $19, $19, 0x10 /* handwritten instruction */
    /* 139010 00238090 05007012 */  beq        $19, $16, func_002380A8
    /* 139014 00238094 01003122 */   addi      $17, $17, 0x1 /* handwritten instruction */
    /* 139018 00238098 03003414 */  bne        $1, $20, func_002380A8
    /* 13901C 0023809C 00000000 */   nop
    /* 139020 002380A0 22E00808 */  j          func_00238088
    /* 139024 002380A4 00000000 */   nop
.align 2
  alabel func_002380A8
    /* 139028 002380A8 EBFF9512 */  beq        $20, $21, .L00238058
    /* 13902C 002380AC 00000000 */   nop
    /* 139030 002380B0 04008192 */  lbu        $1, 0x4($20)
    /* 139034 002380B4 1000E420 */  addi       $4, $7, 0x10 /* handwritten instruction */
    /* 139038 002380B8 0000A87F */  sq         $8, 0x0($29)
    /* 13903C 002380BC 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 139040 002380C0 0400A7AF */  sw         $7, 0x4($29)
    /* 139044 002380C4 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 139048 002380C8 01000320 */  addi       $3, $0, 0x1 /* handwritten instruction */
    /* 13904C 002380CC 00000000 */  nop
.align 2
  .L002380D0:
    /* 139050 002380D0 0000858C */  lw         $5, 0x0($4)
    /* 139054 002380D4 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* 139058 002380D8 0000A87F */  sq         $8, 0x0($29)
    /* 13905C 002380DC 05000620 */  addi       $6, $0, 0x5 /* handwritten instruction */
    /* 139060 002380E0 0000A6A3 */  sb         $6, 0x0($29)
    /* 139064 002380E4 2028B800 */  add        $5, $5, $24 /* handwritten instruction */
    /* 139068 002380E8 0E00A6A3 */  sb         $6, 0xE($29)
    /* 13906C 002380EC 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 139070 002380F0 0C00A3A7 */  sh         $3, 0xC($29)
    /* 139074 002380F4 05006320 */  addi       $3, $3, 0x5 /* handwritten instruction */
    /* 139078 002380F8 0400A5AF */  sw         $5, 0x4($29)
    /* 13907C 002380FC FFFF2120 */  addi       $1, $1, -0x1 /* handwritten instruction */
    /* 139080 00238100 F3FF2014 */  bnez       $1, .L002380D0
    /* 139084 00238104 1000BD23 */   addi      $29, $29, 0x10 /* handwritten instruction */
    /* 139088 00238108 07008292 */  lbu        $2, 0x7($20)
    /* 13908C 0023810C 2000E120 */  addi       $1, $7, 0x20 /* handwritten instruction */
    /* 139090 00238110 0000A97F */  sq         $9, 0x0($29)
    /* 139094 00238114 00406320 */  addi       $3, $3, 0x4000 /* handwritten instruction */
    /* 139098 00238118 0400A1AF */  sw         $1, 0x4($29)
    /* 13909C 0023811C 00000000 */  nop
    /* 1390A0 00238120 0000A2A3 */  sb         $2, 0x0($29)
    /* 1390A4 00238124 80100200 */  sll        $2, $2, 2
    /* 1390A8 00238128 0E00A2A3 */  sb         $2, 0xE($29)
    /* 1390AC 0023812C 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 1390B0 00238130 0C00A3A7 */  sh         $3, 0xC($29)
    /* 1390B4 00238134 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 1390B8 00238138 0C008192 */  lbu        $1, 0xC($20)
    /* 1390BC 0023813C 00000000 */  nop
    /* 1390C0 00238140 0D008292 */  lbu        $2, 0xD($20)
    /* 1390C4 00238144 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 1390C8 00238148 0000AF7F */  sq         $15, 0x0($29)
    /* 1390CC 0023814C 00090100 */  sll        $1, $1, 4
    /* 1390D0 00238150 0000A2A3 */  sb         $2, 0x0($29)
    /* 1390D4 00238154 80100200 */  sll        $2, $2, 2
    /* 1390D8 00238158 0E00A2A3 */  sb         $2, 0xE($29)
    /* 1390DC 0023815C 20082700 */  add        $1, $1, $7 /* handwritten instruction */
    /* 1390E0 00238160 0400A1AF */  sw         $1, 0x4($29)
    /* 1390E4 00238164 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 1390E8 00238168 08008192 */  lbu        $1, 0x8($20)
    /* 1390EC 0023816C 00000000 */  nop
    /* 1390F0 00238170 09008292 */  lbu        $2, 0x9($20)
    /* 1390F4 00238174 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 1390F8 00238178 0000AA7F */  sq         $10, 0x0($29)
    /* 1390FC 0023817C 00090100 */  sll        $1, $1, 4
    /* 139100 00238180 0000A2A3 */  sb         $2, 0x0($29)
    /* 139104 00238184 40100200 */  sll        $2, $2, 1
    /* 139108 00238188 0E00A2A3 */  sb         $2, 0xE($29)
    /* 13910C 0023818C 20082700 */  add        $1, $1, $7 /* handwritten instruction */
    /* 139110 00238190 0400A1AF */  sw         $1, 0x4($29)
    /* 139114 00238194 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 139118 00238198 0000A07F */  sq         $0, 0x0($29)
    /* 13911C 0023819C 0010013C */  lui        $1, (0x10000000 >> 16)
    /* 139120 002381A0 0000A1AF */  sw         $1, 0x0($29)
    /* 139124 002381A4 0014013C */  lui        $1, (0x14000006 >> 16)
    /* 139128 002381A8 06002134 */  ori        $1, $1, (0x14000006 & 0xFFFF)
    /* 13912C 002381AC 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 139130 002381B0 0C00A1AF */  sw         $1, 0xC($29)
    /* 139134 002381B4 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 139138 002381B8 0B008292 */  lbu        $2, 0xB($20)
    /* 13913C 002381BC 2000DE23 */  addi       $30, $30, 0x20 /* handwritten instruction */
    /* 139140 002381C0 0A008192 */  lbu        $1, 0xA($20)
    /* 139144 002381C4 00000000 */  nop
    /* 139148 002381C8 0000AB7F */  sq         $11, 0x0($29)
    /* 13914C 002381CC 03004320 */  addi       $3, $2, 0x3 /* handwritten instruction */
    /* 139150 002381D0 1000AB7F */  sq         $11, 0x10($29)
    /* 139154 002381D4 82180300 */  srl        $3, $3, 2
    /* 139158 002381D8 0E00A2A3 */  sb         $2, 0xE($29)
    /* 13915C 002381DC 00090100 */  sll        $1, $1, 4
    /* 139160 002381E0 1E00A2A3 */  sb         $2, 0x1E($29)
    /* 139164 002381E4 20082700 */  add        $1, $1, $7 /* handwritten instruction */
    /* 139168 002381E8 0000A3A3 */  sb         $3, 0x0($29)
    /* 13916C 002381EC 00000000 */  nop
    /* 139170 002381F0 1000A3A3 */  sb         $3, 0x10($29)
    /* 139174 002381F4 00110300 */  sll        $2, $3, 4
    /* 139178 002381F8 0400A1AF */  sw         $1, 0x4($29)
    /* 13917C 002381FC 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 139180 00238200 1400A1AF */  sw         $1, 0x14($29)
    /* 139184 00238204 F8400334 */  ori        $3, $0, 0x40F8
    /* 139188 00238208 1C00A3A7 */  sh         $3, 0x1C($29)
    /* 13918C 0023820C 2000BD23 */  addi       $29, $29, 0x20 /* handwritten instruction */
    /* 139190 00238210 1000878E */  lw         $7, 0x10($20)
    /* 139194 00238214 10009422 */  addi       $20, $20, 0x10 /* handwritten instruction */
    /* 139198 00238218 00002522 */  addi       $5, $17, 0x0 /* handwritten instruction */
    /* 13919C 0023821C 00004622 */  addi       $6, $18, 0x0 /* handwritten instruction */
.align 2
  .L00238220:
    /* 1391A0 00238220 0400C28C */  lw         $2, 0x4($6)
    /* 1391A4 00238224 FFFFA520 */  addi       $5, $5, -0x1 /* handwritten instruction */
    /* 1391A8 00238228 0000C18C */  lw         $1, 0x0($6)
    /* 1391AC 0023822C 3000DE23 */  addi       $30, $30, 0x30 /* handwritten instruction */
    /* 1391B0 00238230 0000AC7F */  sq         $12, 0x0($29)
    /* 1391B4 00238234 02110200 */  srl        $2, $2, 4
    /* 1391B8 00238238 0400A1AF */  sw         $1, 0x4($29)
    /* 1391BC 0023823C 00110200 */  sll        $2, $2, 4
    /* 1391C0 00238240 40004220 */  addi       $2, $2, 0x40 /* handwritten instruction */
    /* 1391C4 00238244 1000C620 */  addi       $6, $6, 0x10 /* handwritten instruction */
    /* 1391C8 00238248 1000AD7F */  sq         $13, 0x10($29)
    /* 1391CC 0023824C 46432323 */  addi       $3, $25, 0x4346 /* handwritten instruction */
    /* 1391D0 00238250 1400A2AF */  sw         $2, 0x14($29)
    /* 1391D4 00238254 000EA133 */  andi       $1, $29, 0xE00
    /* 1391D8 00238258 1C00A3A7 */  sh         $3, 0x1C($29)
    /* 1391DC 0023825C 000E0220 */  addi       $2, $0, 0xE00 /* handwritten instruction */
    /* 1391E0 00238260 2000AE7F */  sq         $14, 0x20($29)
    /* 1391E4 00238264 3000BD23 */  addi       $29, $29, 0x30 /* handwritten instruction */
    /* 1391E8 00238268 05002210 */  beq        $1, $2, .L00238280
    /* 1391EC 0023826C 4000393B */   xori      $25, $25, 0x40
    /* 1391F0 00238270 EBFFA01C */  bgtz       $5, .L00238220
    /* 1391F4 00238274 00000000 */   nop
    /* 1391F8 00238278 2AE00808 */  j          func_002380A8
    /* 1391FC 0023827C 00000000 */   nop
.align 2
  .L00238280:
    /* 139200 00238280 FF0FA133 */  andi       $1, $29, 0xFFF
    /* 139204 00238284 0010043C */  lui        $4, (0x1000D000 >> 16)
    /* 139208 00238288 00D08434 */  ori        $4, $4, (0x1000D000 & 0xFFFF)
    /* 13920C 0023828C 2210A103 */  sub        $2, $29, $1 /* handwritten instruction */
.align 2
  .L00238290:
    /* 139210 00238290 0000838C */  lw         $3, 0x0($4)
    /* 139214 00238294 00016330 */  andi       $3, $3, 0x100
    /* 139218 00238298 00000000 */  nop
    /* 13921C 0023829C 00000000 */  nop
    /* 139220 002382A0 00000000 */  nop
    /* 139224 002382A4 FAFF6014 */  bnez       $3, .L00238290
    /* 139228 002382A8 00000000 */   nop
    /* 13922C 002382AC 800082AC */  sw         $2, 0x80($4)
    /* 139230 002382B0 2210C103 */  sub        $2, $30, $1 /* handwritten instruction */
    /* 139234 002382B4 100082AC */  sw         $2, 0x10($4)
    /* 139238 002382B8 02110100 */  srl        $2, $1, 4
    /* 13923C 002382BC 200082AC */  sw         $2, 0x20($4)
    /* 139240 002382C0 00010234 */  ori        $2, $0, 0x100
    /* 139244 002382C4 000082AC */  sw         $2, 0x0($4)
    /* 139248 002382C8 22E8A103 */  sub        $29, $29, $1 /* handwritten instruction */
    /* 13924C 002382CC D4FFA01C */  bgtz       $5, .L00238220
    /* 139250 002382D0 0010BD3B */   xori      $29, $29, 0x1000
    /* 139254 002382D4 2AE00808 */  j          func_002380A8
    /* 139258 002382D8 00000000 */   nop
.align 2
  .L002382DC:
    /* 13925C 002382DC 0000A07F */  sq         $0, 0x0($29)
    /* 139260 002382E0 0010013C */  lui        $1, (0x10000000 >> 16)
    /* 139264 002382E4 0000A1AF */  sw         $1, 0x0($29)
    /* 139268 002382E8 0013013C */  lui        $1, (0x13000000 >> 16)
    /* 13926C 002382EC 0800A1AF */  sw         $1, 0x8($29)
    /* 139270 002382F0 1000BD23 */  addi       $29, $29, 0x10 /* handwritten instruction */
    /* 139274 002382F4 1000DE23 */  addi       $30, $30, 0x10 /* handwritten instruction */
    /* 139278 002382F8 00000000 */  nop
    /* 13927C 002382FC FF0FA133 */  andi       $1, $29, 0xFFF
    /* 139280 00238300 0010043C */  lui        $4, (0x1000D000 >> 16)
    /* 139284 00238304 00D08434 */  ori        $4, $4, (0x1000D000 & 0xFFFF)
    /* 139288 00238308 2210A103 */  sub        $2, $29, $1 /* handwritten instruction */
.align 2
  .L0023830C:
    /* 13928C 0023830C 0000838C */  lw         $3, 0x0($4)
    /* 139290 00238310 00016330 */  andi       $3, $3, 0x100
    /* 139294 00238314 00000000 */  nop
    /* 139298 00238318 00000000 */  nop
    /* 13929C 0023831C 00000000 */  nop
    /* 1392A0 00238320 FAFF6014 */  bnez       $3, .L0023830C
    /* 1392A4 00238324 00000000 */   nop
    /* 1392A8 00238328 800082AC */  sw         $2, 0x80($4)
    /* 1392AC 0023832C 2210C103 */  sub        $2, $30, $1 /* handwritten instruction */
    /* 1392B0 00238330 100082AC */  sw         $2, 0x10($4)
    /* 1392B4 00238334 02110100 */  srl        $2, $1, 4
    /* 1392B8 00238338 200082AC */  sw         $2, 0x20($4)
    /* 1392BC 0023833C 00010234 */  ori        $2, $0, 0x100
    /* 1392C0 00238340 000082AC */  sw         $2, 0x0($4)
    /* 1392C4 00238344 00000000 */  nop
.align 2
  .L00238348:
    /* 1392C8 00238348 183FE18F */  lw         $1, (0x70003F18 & 0xFFFF)($31)
    /* 1392CC 0023834C FFFF0220 */  addi       $2, $0, -0x1 /* handwritten instruction */
    /* 1392D0 00238350 000022A4 */  sh         $2, 0x0($1)
    /* 1392D4 00238354 00000000 */  nop
    /* 1392D8 00238358 00100A3C */  lui        $10, (0x1000D000 >> 16)
    /* 1392DC 0023835C 00D04A35 */  ori        $10, $10, (0x1000D000 & 0xFFFF)
.align 2
  alabel func_00238360
    /* 1392E0 00238360 0000438D */  lw         $3, 0x0($10)
    /* 1392E4 00238364 00016330 */  andi       $3, $3, 0x100
    /* 1392E8 00238368 0A006010 */  beqz       $3, .L00238394
    /* 1392EC 0023836C 10000320 */   addi      $3, $0, 0x10 /* handwritten instruction */
.align 2
  .L00238370:
    /* 1392F0 00238370 00000000 */  nop
    /* 1392F4 00238374 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 1392F8 00238378 00000000 */  nop
    /* 1392FC 0023837C 00000000 */  nop
    /* 139300 00238380 00000000 */  nop
    /* 139304 00238384 FAFF6014 */  bnez       $3, .L00238370
    /* 139308 00238388 00000000 */   nop
    /* 13930C 0023838C D8E00808 */  j          func_00238360
    /* 139310 00238390 00000000 */   nop
.align 2
  .L00238394:
    /* 139314 00238394 00A39EAF */  sw         $30, -0x5D00($28)
    /* 139318 00238398 00000000 */  nop
    /* 13931C 0023839C 0070013C */  lui        $1, (0x70003FA8 >> 16)
    /* 139320 002383A0 F83F3FDC */  ld         $31, (0x70003FF8 & 0xFFFF)($1)
    /* 139324 002383A4 F03F3EDC */  ld         $30, (0x70003FF0 & 0xFFFF)($1)
    /* 139328 002383A8 E83F3DDC */  ld         $29, (0x70003FE8 & 0xFFFF)($1)
    /* 13932C 002383AC E03F37DC */  ld         $23, (0x70003FE0 & 0xFFFF)($1)
    /* 139330 002383B0 D83F36DC */  ld         $22, (0x70003FD8 & 0xFFFF)($1)
    /* 139334 002383B4 D03F35DC */  ld         $21, (0x70003FD0 & 0xFFFF)($1)
    /* 139338 002383B8 C83F34DC */  ld         $20, (0x70003FC8 & 0xFFFF)($1)
    /* 13933C 002383BC C03F33DC */  ld         $19, (0x70003FC0 & 0xFFFF)($1)
    /* 139340 002383C0 B83F32DC */  ld         $18, (0x70003FB8 & 0xFFFF)($1)
    /* 139344 002383C4 B03F31DC */  ld         $17, (0x70003FB0 & 0xFFFF)($1)
    /* 139348 002383C8 A83F30DC */  ld         $16, (0x70003FA8 & 0xFFFF)($1)
    /* 13934C 002383CC 0800E003 */  jr         $31
    /* 139350 002383D0 00000000 */   nop
endlabel func_00236F00
    /* 139354 002383D4 00000000 */  nop
