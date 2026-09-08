.align 3
/* Handwritten function */
nonmatching func_00218B10, 0xBF4

glabel func_00218B10
    /* 119A90 00218B10 AC94988F */  lw         $24, -0x6B54($28)
    /* 119A94 00218B14 1800013C */  lui        $1, %hi(D_00187040)
    /* 119A98 00218B18 40702124 */  addiu      $1, $1, %lo(D_00187040)
    /* 119A9C 00218B1C 1900023C */  lui        $2, %hi(D_0018CE00)
    /* 119AA0 00218B20 00CE4224 */  addiu      $2, $2, %lo(D_0018CE00)
    /* 119AA4 00218B24 B494998F */  lw         $25, -0x6B4C($28)
    /* 119AA8 00218B28 40013CD8 */  lqc2       $vf28, 0x140($1)
    /* 119AAC 00218B2C 89830072 */  pcpyld     $16, $16, $0
    /* 119AB0 00218B30 00003DD8 */  lqc2       $vf29, 0x0($1)
    /* 119AB4 00218B34 898B2072 */  pcpyld     $17, $17, $0
    /* 119AB8 00218B38 10003ED8 */  lqc2       $vf30, 0x10($1)
    /* 119ABC 00218B3C 89934072 */  pcpyld     $18, $18, $0
    /* 119AC0 00218B40 20003FD8 */  lqc2       $vf31, 0x20($1)
    /* 119AC4 00218B44 899B6072 */  pcpyld     $19, $19, $0
    /* 119AC8 00218B48 C00034D8 */  lqc2       $vf20, 0xC0($1)
    /* 119ACC 00218B4C D00035D8 */  lqc2       $vf21, 0xD0($1)
    /* 119AD0 00218B50 E00036D8 */  lqc2       $vf22, 0xE0($1)
    /* 119AD4 00218B54 F00037D8 */  lqc2       $vf23, 0xF0($1)
    /* 119AD8 00218B58 C00158D8 */  lqc2       $vf24, 0x1C0($2)
    /* 119ADC 00218B5C B0005AD8 */  lqc2       $vf26, 0xB0($2)
    /* 119AE0 00218B60 E0015BD8 */  lqc2       $vf27, 0x1E0($2)
    /* 119AE4 00218B64 209B99DB */  lqc2       $vf25, -0x64E0($28)
    /* 119AE8 00218B68 BC94938F */  lw         $19, -0x6B44($28)
    /* 119AEC 00218B6C 00000000 */  nop
    /* 119AF0 00218B70 8044013C */  lui        $1, (0x44800000 >> 16)
    /* 119AF4 00218B74 00100F3C */  lui        $15, (0x1000D400 >> 16)
    /* 119AF8 00218B78 0008A148 */  qmtc2.ni   $1, $vf1
    /* 119AFC 00218B7C 00D4EF35 */  ori        $15, $15, (0x1000D400 & 0xFFFF)
    /* 119B00 00218B80 01003923 */  addi       $25, $25, 0x1 /* handwritten instruction */
    /* 119B04 00218B84 703F013C */  lui        $1, (0x3F700000 >> 16)
    /* 119B08 00218B88 18A5E14B */  vmulx.xyzw $vf20, $vf20, $vf1x
    /* 119B0C 00218B8C 58ADE14B */  vmulx.xyzw $vf21, $vf21, $vf1x
    /* 119B10 00218B90 98B5E14B */  vmulx.xyzw $vf22, $vf22, $vf1x
    /* 119B14 00218B94 0008A148 */  qmtc2.ni   $1, $vf1
    /* 119B18 00218B98 18C6814B */  vmulx.xy   $vf24, $vf24, $vf1x
    /* 119B1C 00218B9C 0070013C */  lui        $1, (0x70000800 >> 16)
    /* 119B20 00218BA0 00382A20 */  addi       $10, $1, (0x70003800 & 0xFFFF) /* handwritten instruction */
    /* 119B24 00218BA4 00102B20 */  addi       $11, $1, (0x70001000 & 0xFFFF) /* handwritten instruction */
    /* 119B28 00218BA8 00302C20 */  addi       $12, $1, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* 119B2C 00218BAC 00082D20 */  addi       $13, $1, (0x70000800 & 0xFFFF) /* handwritten instruction */
    /* 119B30 00218BB0 CE022013 */  beqz       $25, .L002196EC
    /* 119B34 00218BB4 89FBE073 */   pcpyld    $31, $31, $0
    /* 119B38 00218BB8 1000F8AD */  sw         $24, 0x10($15)
    /* 119B3C 00218BBC 00020134 */  ori        $1, $0, 0x200
    /* 119B40 00218BC0 100CE1AD */  sw         $1, 0xC10($15)
    /* 119B44 00218BC4 80000120 */  addi       $1, $0, 0x80 /* handwritten instruction */
    /* 119B48 00218BC8 2000E1AD */  sw         $1, 0x20($15)
    /* 119B4C 00218BCC 00000120 */  addi       $1, $0, 0x0 /* handwritten instruction */
    /* 119B50 00218BD0 8000E1AD */  sw         $1, 0x80($15)
    /* 119B54 00218BD4 00010134 */  ori        $1, $0, 0x100
    /* 119B58 00218BD8 0000E1AD */  sw         $1, 0x0($15)
    /* 119B5C 00218BDC 00081823 */  addi       $24, $24, 0x800 /* handwritten instruction */
    /* 119B60 00218BE0 E0FF8121 */  addi       $1, $12, -0x20 /* handwritten instruction */
    /* 119B64 00218BE4 E0078221 */  addi       $2, $12, 0x7E0 /* handwritten instruction */
.align 2
  .L00218BE8:
    /* 119B68 00218BE8 2000207C */  sq         $0, 0x20($1)
    /* 119B6C 00218BEC 20002120 */  addi       $1, $1, 0x20 /* handwritten instruction */
    /* 119B70 00218BF0 00000000 */  nop
    /* 119B74 00218BF4 00000000 */  nop
    /* 119B78 00218BF8 00000000 */  nop
    /* 119B7C 00218BFC FAFF2214 */  bne        $1, $2, .L00218BE8
    /* 119B80 00218C00 1000207C */   sq        $0, 0x10($1)
.align 2
  .L00218C04:
    /* 119B84 00218C04 B4002013 */  beqz       $25, .L00218ED8
    /* 119B88 00218C08 00F80220 */   addi      $2, $0, -0x800 /* handwritten instruction */
    /* 119B8C 00218C0C 24104D00 */  and        $2, $2, $13
    /* 119B90 00218C10 E0FF2E23 */  addi       $14, $25, -0x20 /* handwritten instruction */
    /* 119B94 00218C14 0F040000 */  sync.p
    /* 119B98 00218C18 0F000000 */  sync
.align 2
  .L00218C1C:
    /* 119B9C 00218C1C 00000000 */  nop
    /* 119BA0 00218C20 00000000 */  nop
    /* 119BA4 00218C24 00000000 */  nop
    /* 119BA8 00218C28 00000000 */  nop
    /* 119BAC 00218C2C 00000000 */  nop
    /* 119BB0 00218C30 FAFF0041 */  bc0f       .L00218C1C /* handwritten instruction */
    /* 119BB4 00218C34 00000000 */   nop
    /* 119BB8 00218C38 C870C071 */  pmaxw      $14, $14, $0
    /* 119BBC 00218C3C 0000A048 */  qmtc2.ni   $0, $vf0
    /* 119BC0 00218C40 0B00C011 */  beqz       $14, .L00218C70
    /* 119BC4 00218C44 00084D38 */   xori      $13, $2, 0x800
    /* 119BC8 00218C48 1000F8AD */  sw         $24, 0x10($15)
    /* 119BCC 00218C4C 00020134 */  ori        $1, $0, 0x200
    /* 119BD0 00218C50 100CE1AD */  sw         $1, 0xC10($15)
    /* 119BD4 00218C54 80000120 */  addi       $1, $0, 0x80 /* handwritten instruction */
    /* 119BD8 00218C58 2000E1AD */  sw         $1, 0x20($15)
    /* 119BDC 00218C5C 00000000 */  nop
    /* 119BE0 00218C60 8000E2AD */  sw         $2, 0x80($15)
    /* 119BE4 00218C64 00010134 */  ori        $1, $0, 0x100
    /* 119BE8 00218C68 0000E1AD */  sw         $1, 0x0($15)
    /* 119BEC 00218C6C 00081823 */  addi       $24, $24, 0x800 /* handwritten instruction */
.align 2
  .L00218C70:
    /* 119BF0 00218C70 C0FFAD21 */  addi       $13, $13, -0x40 /* handwritten instruction */
    /* 119BF4 00218C74 00000000 */  nop
.align 2
  alabel func_00218C78
    /* 119BF8 00218C78 E2FF2E13 */  beq        $25, $14, .L00218C04
    /* 119BFC 00218C7C 5000A1D9 */   lqc2      $vf1, 0x50($13)
    /* 119C00 00218C80 4C00A18D */  lw         $1, 0x4C($13)
    /* 119C04 00218C84 4000AD21 */  addi       $13, $13, 0x40 /* handwritten instruction */
    /* 119C08 00218C88 AC08DC4B */  vsub.xyz   $vf2, $vf1, $vf28
    /* 119C0C 00218C8C 0100A981 */  lb         $9, 0x1($13)
    /* 119C10 00218C90 0018A148 */  qmtc2.ni   $1, $vf3
    /* 119C14 00218C94 FFFF3923 */  addi       $25, $25, -0x1 /* handwritten instruction */
    /* 119C18 00218C98 F7FF2005 */  bltz       $9, func_00218C78
    /* 119C1C 00218C9C 02002131 */   andi      $1, $9, 0x2
    /* 119C20 00218CA0 37002014 */  bnez       $1, .L00218D80
    /* 119C24 00218CA4 D8C8834B */   vmulx.xy  $vf3, $vf25, $vf3x
    /* 119C28 00218CA8 BCE9C24B */  .word      0x4BC2E9BC    # vmulax.xyz ACC, $vf29, $vf2x
    /* 119C2C 00218CAC DF002831 */  andi       $8, $9, 0xDF
    /* 119C30 00218CB0 BDF0C24B */  .word      0x4BC2F0BD    # vmadday.xyz ACC, $vf30, $vf2y
    /* 119C34 00218CB4 0900A691 */  lbu        $6, 0x9($13)
    /* 119C38 00218CB8 8AF8C24B */  vmaddz.xyz $vf2, $vf31, $vf2z
    /* 119C3C 00218CBC 00000000 */  nop
    /* 119C40 00218CC0 18D9834B */  vmulx.xy   $vf4, $vf27, $vf3x
    /* 119C44 00218CC4 F000C430 */  andi       $4, $6, 0xF0
    /* 119C48 00218CC8 7E19074B */  vftoi12.x  $vf7, $vf3
    /* 119C4C 00218CCC 40230400 */  sll        $4, $4, 13
    /* 119C50 00218CD0 0F00C630 */  andi       $6, $6, 0xF
    /* 119C54 00218CD4 00000000 */  nop
    /* 119C58 00218CD8 7E11464A */  vftoi12.z  $vf6, $vf2
    /* 119C5C 00218CDC 80320600 */  sll        $6, $6, 10
    /* 119C60 00218CE0 FD11834B */  vabs.xy    $vf3, $vf2
    /* 119C64 00218CE4 00000000 */  nop
    /* 119C68 00218CE8 5AD1824B */  vmulz.xy   $vf5, $vf26, $vf2z
    /* 119C6C 00218CEC 00000000 */  nop
    /* 119C70 00218CF0 E8209370 */  pminw      $4, $4, $19
    /* 119C74 00218CF4 0000A048 */  qmtc2.ni   $0, $vf0
    /* 119C78 00218CF8 00382548 */  qmfc2.ni   $5, $vf7
    /* 119C7C 00218CFC 00000000 */  nop
    /* 119C80 00218D00 EC18844B */  vsub.xy    $vf3, $vf3, $vf4
    /* 119C84 00218D04 00000000 */  nop
    /* 119C88 00218D08 00302248 */  qmfc2.ni   $2, $vf6
    /* 119C8C 00218D0C FF030734 */  ori        $7, $0, 0x3FF
    /* 119C90 00218D10 03280500 */  sra        $5, $5, 0
    /* 119C94 00218D14 00000000 */  nop
    /* 119C98 00218D18 A8140270 */  pextuw     $2, $0, $2
    /* 119C9C 00218D1C 0000A048 */  qmtc2.ni   $0, $vf0
    /* 119CA0 00218D20 EC28834B */  vsub.xy    $vf3, $vf5, $vf3
    /* 119CA4 00218D24 03100200 */  sra        $2, $2, 0
    /* 119CA8 00218D28 2E184600 */  dsub       $3, $2, $6
    /* 119CAC 00218D2C 2E284500 */  dsub       $5, $2, $5
    /* 119CB0 00218D30 61006018 */  blez       $3, .L00218EB8
    /* 119CB4 00218D34 2E184400 */   dsub      $3, $2, $4
    /* 119CB8 00218D38 5F006104 */  bgez       $3, .L00218EB8
    /* 119CBC 00218D3C 0001A528 */   slti      $5, $5, 0x100
    /* 119CC0 00218D40 2428A900 */  and        $5, $5, $9
    /* 119CC4 00218D44 83120200 */  sra        $2, $2, 10
    /* 119CC8 00218D48 00182348 */  qmfc2.ni   $3, $vf3
    /* 119CCC 00218D4C E8104770 */  pminw      $2, $2, $7
    /* 119CD0 00218D50 5900A014 */  bnez       $5, .L00218EB8
    /* 119CD4 00218D54 40100200 */   sll       $2, $2, 1
    /* 119CD8 00218D58 57006004 */  bltz       $3, .L00218EB8
    /* 119CDC 00218D5C 3C180300 */   dsll32    $3, $3, 0
    /* 119CE0 00218D60 55006004 */  bltz       $3, .L00218EB8
    /* 119CE4 00218D64 20104C00 */   add       $2, $2, $12 /* handwritten instruction */
    /* 119CE8 00218D68 00004494 */  lhu        $4, 0x0($2)
    /* 119CEC 00218D6C 00004BA4 */  sh         $11, 0x0($2)
    /* 119CF0 00218D70 000079A5 */  sh         $25, 0x0($11)
    /* 119CF4 00218D74 020064A5 */  sh         $4, 0x2($11)
    /* 119CF8 00218D78 1E630808 */  j          func_00218C78
    /* 119CFC 00218D7C 04006B21 */   addi      $11, $11, 0x4 /* handwritten instruction */
.align 2
  .L00218D80:
    /* 119D00 00218D80 2000A4D9 */  lqc2       $vf4, 0x20($13)
    /* 119D04 00218D84 DF002831 */  andi       $8, $9, 0xDF
    /* 119D08 00218D88 BCA1E24B */  .word      0x4BE2A1BC    # vmulax.xyzw ACC, $vf20, $vf2x
    /* 119D0C 00218D8C 0900A491 */  lbu        $4, 0x9($13)
    /* 119D10 00218D90 2C21DC4B */  vsub.xyz   $vf4, $vf4, $vf28
    /* 119D14 00218D94 00000000 */  nop
    /* 119D18 00218D98 BDA8E24B */  .word      0x4BE2A8BD    # vmadday.xyzw ACC, $vf21, $vf2y
    /* 119D1C 00218D9C F0008530 */  andi       $5, $4, 0xF0
    /* 119D20 00218DA0 BEB0E24B */  .word      0x4BE2B0BE    # vmaddaz.xyzw ACC, $vf22, $vf2z
    /* 119D24 00218DA4 402B0500 */  sll        $5, $5, 13
    /* 119D28 00218DA8 4BB8E04B */  vmaddw.xyzw $vf1, $vf23, $vf0w
    /* 119D2C 00218DAC 0F008430 */  andi       $4, $4, 0xF
    /* 119D30 00218DB0 BCA1E44B */  .word      0x4BE4A1BC    # vmulax.xyzw ACC, $vf20, $vf4x
    /* 119D34 00218DB4 80220400 */  sll        $4, $4, 10
    /* 119D38 00218DB8 BDA8E44B */  .word      0x4BE4A8BD    # vmadday.xyzw ACC, $vf21, $vf4y
    /* 119D3C 00218DBC 00000000 */  nop
    /* 119D40 00218DC0 BEB0E44B */  .word      0x4BE4B0BE    # vmaddaz.xyzw ACC, $vf22, $vf4z
    /* 119D44 00218DC4 00000000 */  nop
    /* 119D48 00218DC8 CBB8E04B */  vmaddw.xyzw $vf3, $vf23, $vf0w
    /* 119D4C 00218DCC 00000000 */  nop
    /* 119D50 00218DD0 BE11F94B */  .word      0x4BF911BE    # vmulaz.xyzw ACC, $vf2, $vf25z
    /* 119D54 00218DD4 00000000 */  nop
    /* 119D58 00218DD8 8A20F94B */  vmaddz.xyzw $vf2, $vf4, $vf25z
    /* 119D5C 00218DDC 00000000 */  nop
    /* 119D60 00218DE0 FF09C14B */  .word      0x4BC109FF                    # vclipw.xyz $vf1, $vf1w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 119D64 00218DE4 00000000 */  nop
    /* 119D68 00218DE8 FF19C34B */  .word      0x4BC319FF                    # vclipw.xyz $vf3, $vf3w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 119D6C 00218DEC 00000000 */  nop
    /* 119D70 00218DF0 6A08984B */  vmul.xy    $vf1, $vf1, $vf24
    /* 119D74 00218DF4 00000000 */  nop
    /* 119D78 00218DF8 EA18984B */  vmul.xy    $vf3, $vf3, $vf24
    /* 119D7C 00218DFC 00000000 */  nop
    /* 119D80 00218E00 BCE9C24B */  .word      0x4BC2E9BC    # vmulax.xyz ACC, $vf29, $vf2x
    /* 119D84 00218E04 00000000 */  nop
    /* 119D88 00218E08 BDF0C24B */  .word      0x4BC2F0BD    # vmadday.xyz ACC, $vf30, $vf2y
    /* 119D8C 00218E0C 00000000 */  nop
    /* 119D90 00218E10 8AF8C24B */  vmaddz.xyz $vf2, $vf31, $vf2z
    /* 119D94 00218E14 00000000 */  nop
    /* 119D98 00218E18 00904148 */  cfc2.ni    $1, $vi18
    /* 119D9C 00218E1C 00000000 */  nop
    /* 119DA0 00218E20 FF09C14B */  .word      0x4BC109FF                    # vclipw.xyz $vf1, $vf1w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 119DA4 00218E24 00000000 */  nop
    /* 119DA8 00218E28 FF19C34B */  .word      0x4BC319FF                    # vclipw.xyz $vf3, $vf3w # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* 119DAC 00218E2C FF0F2130 */  andi       $1, $1, 0xFFF
    /* 119DB0 00218E30 21002014 */  bnez       $1, .L00218EB8
    /* 119DB4 00218E34 7E11424A */   vftoi12.z $vf2, $vf2
    /* 119DB8 00218E38 E828B370 */  pminw      $5, $5, $19
    /* 119DBC 00218E3C 0000A048 */  qmtc2.ni   $0, $vf0
    /* 119DC0 00218E40 00000000 */  nop
    /* 119DC4 00218E44 00000000 */  nop
    /* 119DC8 00218E48 00000000 */  nop
    /* 119DCC 00218E4C 00000000 */  nop
    /* 119DD0 00218E50 00000000 */  nop
    /* 119DD4 00218E54 00904148 */  cfc2.ni    $1, $vi18
    /* 119DD8 00218E58 00102348 */  qmfc2.ni   $3, $vf2
    /* 119DDC 00218E5C FF030734 */  ori        $7, $0, 0x3FF
    /* 119DE0 00218E60 82110100 */  srl        $2, $1, 6
    /* 119DE4 00218E64 3F002130 */  andi       $1, $1, 0x3F
    /* 119DE8 00218E68 A81C0370 */  pextuw     $3, $0, $3
    /* 119DEC 00218E6C 0000A048 */  qmtc2.ni   $0, $vf0
    /* 119DF0 00218E70 03180300 */  sra        $3, $3, 0
    /* 119DF4 00218E74 24082200 */  and        $1, $1, $2
    /* 119DF8 00218E78 0F002014 */  bnez       $1, .L00218EB8
    /* 119DFC 00218E7C 22206400 */   sub       $4, $3, $4 /* handwritten instruction */
    /* 119E00 00218E80 0D008018 */  blez       $4, .L00218EB8
    /* 119E04 00218E84 22286500 */   sub       $5, $3, $5 /* handwritten instruction */
    /* 119E08 00218E88 0B00A104 */  bgez       $5, .L00218EB8
    /* 119E0C 00218E8C 83120300 */   sra       $2, $3, 10
    /* 119E10 00218E90 E8104770 */  pminw      $2, $2, $7
    /* 119E14 00218E94 0000A048 */  qmtc2.ni   $0, $vf0
    /* 119E18 00218E98 40100200 */  sll        $2, $2, 1
    /* 119E1C 00218E9C 20104C00 */  add        $2, $2, $12 /* handwritten instruction */
    /* 119E20 00218EA0 00004494 */  lhu        $4, 0x0($2)
    /* 119E24 00218EA4 00004BA4 */  sh         $11, 0x0($2)
    /* 119E28 00218EA8 000079A5 */  sh         $25, 0x0($11)
    /* 119E2C 00218EAC 020064A5 */  sh         $4, 0x2($11)
    /* 119E30 00218EB0 1E630808 */  j          func_00218C78
    /* 119E34 00218EB4 04006B21 */   addi      $11, $11, 0x4 /* handwritten instruction */
.align 2
  .L00218EB8:
    /* 119E38 00218EB8 6FFF0911 */  beq        $8, $9, func_00218C78
    /* 119E3C 00218EBC 00404131 */   andi      $1, $10, 0x4000
    /* 119E40 00218EC0 6DFF2014 */  bnez       $1, func_00218C78
    /* 119E44 00218EC4 00000000 */   nop
    /* 119E48 00218EC8 000059A5 */  sh         $25, 0x0($10)
    /* 119E4C 00218ECC 020048A5 */  sh         $8, 0x2($10)
    /* 119E50 00218ED0 1E630808 */  j          func_00218C78
    /* 119E54 00218ED4 04004A21 */   addi      $10, $10, 0x4 /* handwritten instruction */
.align 2
  .L00218ED8:
    /* 119E58 00218ED8 AC94988F */  lw         $24, -0x6B54($28)
    /* 119E5C 00218EDC 00000000 */  nop
    /* 119E60 00218EE0 B4948F8F */  lw         $15, -0x6B4C($28)
    /* 119E64 00218EE4 00700B3C */  lui        $11, (0x70003800 >> 16)
    /* 119E68 00218EE8 00386B21 */  addi       $11, $11, (0x70003800 & 0xFFFF) /* handwritten instruction */
    /* 119E6C 00218EEC 08006A11 */  beq        $11, $10, .L00218F10
.align 2
  .L00218EF0:
    /* 119E70 00218EF0 00006295 */   lhu       $2, 0x0($11)
    /* 119E74 00218EF4 02006395 */  lhu        $3, 0x2($11)
    /* 119E78 00218EF8 04006B21 */  addi       $11, $11, 0x4 /* handwritten instruction */
    /* 119E7C 00218EFC 2210E201 */  sub        $2, $15, $2 /* handwritten instruction */
    /* 119E80 00218F00 80110200 */  sll        $2, $2, 6
    /* 119E84 00218F04 20105800 */  add        $2, $2, $24 /* handwritten instruction */
    /* 119E88 00218F08 F9FF6A15 */  bne        $11, $10, .L00218EF0
    /* 119E8C 00218F0C 010043A0 */   sb        $3, 0x1($2)
.align 2
  .L00218F10:
    /* 119E90 00218F10 00700B3C */  lui        $11, (0x70000002 >> 16)
    /* 119E94 00218F14 00006C21 */  addi       $12, $11, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 119E98 00218F18 FE376D21 */  addi       $13, $11, (0x700037FE & 0xFFFF) /* handwritten instruction */
    /* 119E9C 00218F1C FE2F6E21 */  addi       $14, $11, (0x70002FFE & 0xFFFF) /* handwritten instruction */
.align 2
  alabel func_00218F20
    /* 119EA0 00218F20 0000A195 */  lhu        $1, 0x0($13)
    /* 119EA4 00218F24 FEFFAD21 */  addi       $13, $13, -0x2 /* handwritten instruction */
    /* 119EA8 00218F28 0E00AE11 */  beq        $13, $14, .L00218F64
    /* 119EAC 00218F2C 00000000 */   nop
    /* 119EB0 00218F30 00000000 */  nop
    /* 119EB4 00218F34 FAFF2010 */  beqz       $1, func_00218F20
    /* 119EB8 00218F38 25082B00 */   or        $1, $1, $11
.align 2
  .L00218F3C:
    /* 119EBC 00218F3C 00002294 */  lhu        $2, (0x70000000 & 0xFFFF)($1)
    /* 119EC0 00218F40 02002194 */  lhu        $1, (0x70000002 & 0xFFFF)($1)
    /* 119EC4 00218F44 2210E201 */  sub        $2, $15, $2 /* handwritten instruction */
    /* 119EC8 00218F48 20082B00 */  add        $1, $1, $11 /* handwritten instruction */
    /* 119ECC 00218F4C 000082A5 */  sh         $2, 0x0($12)
    /* 119ED0 00218F50 02008C21 */  addi       $12, $12, 0x2 /* handwritten instruction */
    /* 119ED4 00218F54 F9FF2B14 */  bne        $1, $11, .L00218F3C
    /* 119ED8 00218F58 00000000 */   nop
    /* 119EDC 00218F5C C8630808 */  j          func_00218F20
    /* 119EE0 00218F60 00000000 */   nop
.align 2
  .L00218F64:
    /* 119EE4 00218F64 000080A5 */  sh         $0, 0x0($12)
    /* 119EE8 00218F68 00000000 */  nop
    /* 119EEC 00218F6C 00700A3C */  lui        $10, (0x70001000 >> 16)
    /* 119EF0 00218F70 00008F21 */  addi       $15, $12, 0x0 /* handwritten instruction */
    /* 119EF4 00218F74 00004E21 */  addi       $14, $10, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 119EF8 00218F78 00105821 */  addi       $24, $10, (0x70001000 & 0xFFFF) /* handwritten instruction */
    /* 119EFC 00218F7C DB01CF11 */  beq        $14, $15, .L002196EC
    /* 119F00 00218F80 00000C20 */   addi      $12, $0, 0x0 /* handwritten instruction */
    /* 119F04 00218F84 00A3998F */  lw         $25, -0x5D00($28)
    /* 119F08 00218F88 AC948B8F */  lw         $11, -0x6B54($28)
    /* 119F0C 00218F8C 5888918F */  lw         $17, -0x77A8($28)
    /* 119F10 00218F90 7482908F */  lw         $16, -0x7D8C($28)
    /* 119F14 00218F94 00091100 */  sll        $1, $17, 4
    /* 119F18 00218F98 1900123C */  lui        $18, %hi(D_0018D140)
    /* 119F1C 00218F9C 40D15226 */  addiu      $18, $18, %lo(D_0018D140)
    /* 119F20 00218FA0 20904102 */  add        $18, $18, $1 /* handwritten instruction */
    /* 119F24 00218FA4 E09A91DB */  lqc2       $vf17, -0x6520($28)
    /* 119F28 00218FA8 F09A92DB */  lqc2       $vf18, -0x6510($28)
    /* 119F2C 00218FAC 009B93DB */  lqc2       $vf19, -0x6500($28)
    /* 119F30 00218FB0 109B94DB */  lqc2       $vf20, -0x64F0($28)
    /* 119F34 00218FB4 00C82148 */  qmfc2.ni   $1, $vf25
    /* 119F38 00218FB8 00208144 */  mtc1       $1, $f4
    /* 119F3C 00218FBC 0010043C */  lui        $4, (0x1000D400 >> 16)
    /* 119F40 00218FC0 1D00013C */  lui        $1, %hi(D_001CDD00)
    /* 119F44 00218FC4 00DD2124 */  addiu      $1, $1, %lo(D_001CDD00)
    /* 119F48 00218FC8 00D48434 */  ori        $4, $4, (0x1000D400 & 0xFFFF)
    /* 119F4C 00218FCC 100081AC */  sw         $1, 0x10($4)
    /* 119F50 00218FD0 00020134 */  ori        $1, $0, 0x200
    /* 119F54 00218FD4 100C81AC */  sw         $1, 0xC10($4)
    /* 119F58 00218FD8 40000120 */  addi       $1, $0, 0x40 /* handwritten instruction */
    /* 119F5C 00218FDC 200081AC */  sw         $1, 0x20($4)
    /* 119F60 00218FE0 00300120 */  addi       $1, $0, 0x3000 /* handwritten instruction */
    /* 119F64 00218FE4 800081AC */  sw         $1, 0x80($4)
    /* 119F68 00218FE8 00010134 */  ori        $1, $0, 0x100
    /* 119F6C 00218FEC 000081AC */  sw         $1, 0x0($4)
    /* 119F70 00218FF0 00000000 */  nop
    /* 119F74 00218FF4 0F040000 */  sync.p
    /* 119F78 00218FF8 0F000000 */  sync
.align 2
  .L00218FFC:
    /* 119F7C 00218FFC 00000000 */  nop
    /* 119F80 00219000 00000000 */  nop
    /* 119F84 00219004 00000000 */  nop
    /* 119F88 00219008 00000000 */  nop
    /* 119F8C 0021900C 00000000 */  nop
    /* 119F90 00219010 FAFF0041 */  bc0f       .L00218FFC /* handwritten instruction */
    /* 119F94 00219014 00000000 */   nop
    /* 119F98 00219018 00020134 */  ori        $1, $0, 0x200
    /* 119F9C 0021901C 1600023C */  lui        $2, %hi(D_00165E00)
    /* 119FA0 00219020 005E4224 */  addiu      $2, $2, %lo(D_00165E00)
    /* 119FA4 00219024 100C81AC */  sw         $1, 0xC10($4)
    /* 119FA8 00219028 100082AC */  sw         $2, 0x10($4)
    /* 119FAC 0021902C 40000120 */  addi       $1, $0, 0x40 /* handwritten instruction */
    /* 119FB0 00219030 200081AC */  sw         $1, 0x20($4)
    /* 119FB4 00219034 00340120 */  addi       $1, $0, 0x3400 /* handwritten instruction */
    /* 119FB8 00219038 800081AC */  sw         $1, 0x80($4)
    /* 119FBC 0021903C 00010134 */  ori        $1, $0, 0x100
    /* 119FC0 00219040 000081AC */  sw         $1, 0x0($4)
    /* 119FC4 00219044 00000000 */  nop
    /* 119FC8 00219048 0F040000 */  sync.p
    /* 119FCC 0021904C 0F000000 */  sync
.align 2
  .L00219050:
    /* 119FD0 00219050 00000000 */  nop
    /* 119FD4 00219054 00000000 */  nop
    /* 119FD8 00219058 00000000 */  nop
    /* 119FDC 0021905C 00000000 */  nop
    /* 119FE0 00219060 00000000 */  nop
    /* 119FE4 00219064 FAFF0041 */  bc0f       .L00219050 /* handwritten instruction */
    /* 119FE8 00219068 00000000 */   nop
    /* 119FEC 0021906C 0000007F */  sq         $0, 0x0($24)
    /* 119FF0 00219070 1000023C */  lui        $2, %hi(D_00101070)
    /* 119FF4 00219074 70104224 */  addiu      $2, $2, %lo(D_00101070)
    /* 119FF8 00219078 1000013C */  lui        $1, %hi(D_00101080)
    /* 119FFC 0021907C 80102124 */  addiu      $1, $1, %lo(D_00101080)
    /* 11A000 00219080 0000428C */  lw         $2, 0x0($2)
    /* 11A004 00219084 040001AF */  sw         $1, 0x4($24)
    /* 11A008 00219088 0030013C */  lui        $1, (0x30000000 >> 16)
    /* 11A00C 0021908C 000001AF */  sw         $1, 0x0($24)
    /* 11A010 00219090 10003923 */  addi       $25, $25, 0x10 /* handwritten instruction */
    /* 11A014 00219094 000002A7 */  sh         $2, 0x0($24)
    /* 11A018 00219098 10001823 */  addi       $24, $24, 0x10 /* handwritten instruction */
    /* 11A01C 0021909C C09A817B */  lq         $1, -0x6540($28)
    /* 11A020 002190A0 D09A827B */  lq         $2, -0x6530($28)
    /* 11A024 002190A4 0000017F */  sq         $1, 0x0($24)
    /* 11A028 002190A8 7000027F */  sq         $2, 0x70($24)
    /* 11A02C 002190AC 1900013C */  lui        $1, %hi(D_0018CE00)
    /* 11A030 002190B0 00CE2124 */  addiu      $1, $1, %lo(D_0018CE00)
    /* 11A034 002190B4 10022278 */  lq         $2, 0x210($1)
    /* 11A038 002190B8 A0012378 */  lq         $3, 0x1A0($1)
    /* 11A03C 002190BC 5000027F */  sq         $2, 0x50($24)
    /* 11A040 002190C0 6000037F */  sq         $3, 0x60($24)
    /* 11A044 002190C4 8044023C */  lui        $2, (0x44800000 >> 16)
    /* 11A048 002190C8 1800013C */  lui        $1, %hi(D_00187040)
    /* 11A04C 002190CC 40702124 */  addiu      $1, $1, %lo(D_00187040)
    /* 11A050 002190D0 0028A248 */  qmtc2.ni   $2, $vf5
    /* 11A054 002190D4 400021D8 */  lqc2       $vf1, 0x40($1)
    /* 11A058 002190D8 500022D8 */  lqc2       $vf2, 0x50($1)
    /* 11A05C 002190DC 600023D8 */  lqc2       $vf3, 0x60($1)
    /* 11A060 002190E0 700024D8 */  lqc2       $vf4, 0x70($1)
    /* 11A064 002190E4 5808E54B */  vmulx.xyzw $vf1, $vf1, $vf5x
    /* 11A068 002190E8 9810E54B */  vmulx.xyzw $vf2, $vf2, $vf5x
    /* 11A06C 002190EC D818E54B */  vmulx.xyzw $vf3, $vf3, $vf5x
    /* 11A070 002190F0 00000000 */  nop
    /* 11A074 002190F4 100001FB */  sqc2       $vf1, 0x10($24)
    /* 11A078 002190F8 200002FB */  sqc2       $vf2, 0x20($24)
    /* 11A07C 002190FC 300003FB */  sqc2       $vf3, 0x30($24)
    /* 11A080 00219100 400004FB */  sqc2       $vf4, 0x40($24)
    /* 11A084 00219104 80001823 */  addi       $24, $24, 0x80 /* handwritten instruction */
    /* 11A088 00219108 80003923 */  addi       $25, $25, 0x80 /* handwritten instruction */
    /* 11A08C 0021910C FF070133 */  andi       $1, $24, 0x7FF
    /* 11A090 00219110 0010043C */  lui        $4, (0x1000D000 >> 16)
    /* 11A094 00219114 00D08434 */  ori        $4, $4, (0x1000D000 & 0xFFFF)
    /* 11A098 00219118 22C00103 */  sub        $24, $24, $1 /* handwritten instruction */
    /* 11A09C 0021911C 800098AC */  sw         $24, 0x80($4)
    /* 11A0A0 00219120 00010234 */  ori        $2, $0, 0x100
    /* 11A0A4 00219124 101082AC */  sw         $2, 0x1010($4)
    /* 11A0A8 00219128 22102103 */  sub        $2, $25, $1 /* handwritten instruction */
    /* 11A0AC 0021912C 100082AC */  sw         $2, 0x10($4)
    /* 11A0B0 00219130 02110100 */  srl        $2, $1, 4
    /* 11A0B4 00219134 200082AC */  sw         $2, 0x20($4)
    /* 11A0B8 00219138 00010234 */  ori        $2, $0, 0x100
    /* 11A0BC 0021913C 000082AC */  sw         $2, 0x0($4)
    /* 11A0C0 00219140 0008183B */  xori       $24, $24, 0x800
    /* 11A0C4 00219144 10001823 */  addi       $24, $24, 0x10 /* handwritten instruction */
    /* 11A0C8 00219148 10003923 */  addi       $25, $25, 0x10 /* handwritten instruction */
    /* 11A0CC 0021914C 0000CD95 */  lhu        $13, 0x0($14)
    /* 11A0D0 00219150 00000000 */  nop
    /* 11A0D4 00219154 80690D00 */  sll        $13, $13, 6
    /* 11A0D8 00219158 2068AB01 */  add        $13, $13, $11 /* handwritten instruction */
.align 2
  alabel func_0021915C
    /* 11A0DC 0021915C 3001CF11 */  beq        $14, $15, .L00219620
    /* 11A0E0 00219160 0100A291 */   lbu       $2, 0x1($13)
    /* 11A0E4 00219164 1000A1D9 */  lqc2       $vf1, 0x10($13)
    /* 11A0E8 00219168 0000A121 */  addi       $1, $13, 0x0 /* handwritten instruction */
    /* 11A0EC 0021916C 0200CE21 */  addi       $14, $14, 0x2 /* handwritten instruction */
    /* 11A0F0 00219170 03004330 */  andi       $3, $2, 0x3
    /* 11A0F4 00219174 49006014 */  bnez       $3, .L0021929C
    /* 11A0F8 00219178 0000CD95 */   lhu       $13, 0x0($14)
    /* 11A0FC 0021917C 6C08DC4B */  vsub.xyz   $vf1, $vf1, $vf28
    /* 11A100 00219180 02002990 */  lbu        $9, 0x2($1)
    /* 11A104 00219184 08002690 */  lbu        $6, 0x8($1)
    /* 11A108 00219188 80690D00 */  sll        $13, $13, 6
    /* 11A10C 0021918C 0400278C */  lw         $7, 0x4($1)
    /* 11A110 00219190 2068AB01 */  add        $13, $13, $11 /* handwritten instruction */
    /* 11A114 00219194 000023D8 */  lqc2       $vf3, 0x0($1)
    /* 11A118 00219198 C0480900 */  sll        $9, $9, 3
    /* 11A11C 0021919C 09002490 */  lbu        $4, 0x9($1)
    /* 11A120 002191A0 20482A01 */  add        $9, $9, $10 /* handwritten instruction */
    /* 11A124 002191A4 BCE9C14B */  .word      0x4BC1E9BC    # vmulax.xyz ACC, $vf29, $vf1x
    /* 11A128 002191A8 0000A0CD */  pref       0x00, 0x0($13)
    /* 11A12C 002191AC BDF0C14B */  .word      0x4BC1F0BD    # vmadday.xyz ACC, $vf30, $vf1y
    /* 11A130 002191B0 80300600 */  sll        $6, $6, 2
    /* 11A134 002191B4 8AF8C14B */  vmaddz.xyz $vf2, $vf31, $vf1z
    /* 11A138 002191B8 0003C520 */  addi       $5, $6, 0x300 /* handwritten instruction */
    /* 11A13C 002191BC EA18394A */  vmul.w     $vf3, $vf3, $vf25
    /* 11A140 002191C0 FF03A530 */  andi       $5, $5, 0x3FF
    /* 11A144 002191C4 003028DD */  ld         $8, 0x3000($9)
    /* 11A148 002191C8 0F008330 */  andi       $3, $4, 0xF
    /* 11A14C 002191CC 7E11454A */  vftoi12.z  $vf5, $vf2
    /* 11A150 002191D0 F0008430 */  andi       $4, $4, 0xF0
    /* 11A154 002191D4 A810594A */  vadd.z     $vf2, $vf2, $vf25
    /* 11A158 002191D8 2030CA00 */  add        $6, $6, $10 /* handwritten instruction */
    /* 11A15C 002191DC 2028AA00 */  add        $5, $5, $10 /* handwritten instruction */
    /* 11A160 002191E0 40230400 */  sll        $4, $4, 13
    /* 11A164 002191E4 0034A59C */  lwu        $5, 0x3400($5)
    /* 11A168 002191E8 883E0770 */  pextlb     $7, $0, $7
    /* 11A16C 002191EC 0034C69C */  lwu        $6, 0x3400($6)
    /* 11A170 002191F0 883D0770 */  pextlh     $7, $0, $7
    /* 11A174 002191F4 BC1B624B */  .word      0x4B621BBC    # vdiv       Q, $vf3w, $vf2z
    /* 11A178 002191F8 3C280500 */  dsll32     $5, $5, 0
    /* 11A17C 002191FC 2528A600 */  or         $5, $5, $6
    /* 11A180 00219200 20004634 */  ori        $6, $2, 0x20
    /* 11A184 00219204 03004610 */  beq        $2, $6, .L00219214
    /* 11A188 00219208 0020A548 */   qmtc2.ni  $5, $vf4
    /* 11A18C 0021920C 010026A0 */  sb         $6, 0x1($1)
    /* 11A190 00219210 00000000 */  nop
.align 2
  .L00219214:
    /* 11A194 00219214 00282648 */  qmfc2.ni   $6, $vf5
    /* 11A198 00219218 801A0300 */  sll        $3, $3, 10
    /* 11A19C 0021921C 07002590 */  lbu        $5, 0x7($1)
    /* 11A1A0 00219220 E8209370 */  pminw      $4, $4, $19
    /* 11A1A4 00219224 000001FB */  sqc2       $vf1, 0x0($24)
    /* 11A1A8 00219228 A8340670 */  pextuw     $6, $0, $6
    /* 11A1AC 0021922C 2218C300 */  sub        $3, $6, $3 /* handwritten instruction */
    /* 11A1B0 00219230 22208600 */  sub        $4, $4, $6 /* handwritten instruction */
    /* 11A1B4 00219234 02210400 */  srl        $4, $4, 4
    /* 11A1B8 00219238 00100620 */  addi       $6, $0, 0x1000 /* handwritten instruction */
    /* 11A1BC 0021923C 1000077F */  sq         $7, 0x10($24)
    /* 11A1C0 00219240 E8208370 */  pminw      $4, $4, $3
    /* 11A1C4 00219244 0C0000AF */  sw         $0, 0xC($24)
    /* 11A1C8 00219248 E8208670 */  pminw      $4, $4, $6
    /* 11A1CC 0021924C 1C21804B */  .word      0x4B80211C    # vmulq.xy   $vf4, $vf4, Q
    /* 11A1D0 00219250 18008500 */  mult       $0, $4, $5
    /* 11A1D4 00219254 2B011105 */  bgezal     $8, func_00219704
    /* 11A1D8 00219258 89430870 */   pcpyld    $8, $0, $8
    /* 11A1DC 0021925C 03002490 */  lbu        $4, 0x3($1)
    /* 11A1E0 00219260 00070133 */  andi       $1, $24, 0x700
    /* 11A1E4 00219264 3000087F */  sq         $8, 0x30($24)
    /* 11A1E8 00219268 00070220 */  addi       $2, $0, 0x700 /* handwritten instruction */
    /* 11A1EC 0021926C 200004FB */  sqc2       $vf4, 0x20($24)
    /* 11A1F0 00219270 12180000 */  mflo       $3
    /* 11A1F4 00219274 280004FF */  sd         $4, 0x28($24)
    /* 11A1F8 00219278 40003923 */  addi       $25, $25, 0x40 /* handwritten instruction */
    /* 11A1FC 0021927C 021B0300 */  srl        $3, $3, 12
    /* 11A200 00219280 00000000 */  nop
    /* 11A204 00219284 1C0003AF */  sw         $3, 0x1C($24)
    /* 11A208 00219288 40001823 */  addi       $24, $24, 0x40 /* handwritten instruction */
    /* 11A20C 0021928C B3FF2214 */  bne        $1, $2, func_0021915C
    /* 11A210 00219290 04008C21 */   addi      $12, $12, 0x4 /* handwritten instruction */
    /* 11A214 00219294 63650808 */  j          func_0021958C
    /* 11A218 00219298 00000000 */   nop
.align 2
  .L0021929C:
    /* 11A21C 0021929C FEFF6320 */  addi       $3, $3, -0x2 /* handwritten instruction */
    /* 11A220 002192A0 6C08DC4B */  vsub.xyz   $vf1, $vf1, $vf28
    /* 11A224 002192A4 45006104 */  bgez       $3, .L002193BC
    /* 11A228 002192A8 0400278C */   lw        $7, 0x4($1)
    /* 11A22C 002192AC 02002990 */  lbu        $9, 0x2($1)
    /* 11A230 002192B0 80690D00 */  sll        $13, $13, 6
    /* 11A234 002192B4 08002690 */  lbu        $6, 0x8($1)
    /* 11A238 002192B8 2068AB01 */  add        $13, $13, $11 /* handwritten instruction */
    /* 11A23C 002192BC 0C0020C4 */  lwc1       $f0, 0xC($1)
    /* 11A240 002192C0 C0480900 */  sll        $9, $9, 3
    /* 11A244 002192C4 BCE9C14B */  .word      0x4BC1E9BC    # vmulax.xyz ACC, $vf29, $vf1x
    /* 11A248 002192C8 09002490 */  lbu        $4, 0x9($1)
    /* 11A24C 002192CC BDF0C14B */  .word      0x4BC1F0BD    # vmadday.xyz ACC, $vf30, $vf1y
    /* 11A250 002192D0 0000A0CD */  pref       0x00, 0x0($13)
    /* 11A254 002192D4 8AF8C14B */  vmaddz.xyz $vf2, $vf31, $vf1z
    /* 11A258 002192D8 80300600 */  sll        $6, $6, 2
    /* 11A25C 002192DC 0003C520 */  addi       $5, $6, 0x300 /* handwritten instruction */
    /* 11A260 002192E0 20482A01 */  add        $9, $9, $10 /* handwritten instruction */
    /* 11A264 002192E4 003028DD */  ld         $8, 0x3000($9)
    /* 11A268 002192E8 0F008330 */  andi       $3, $4, 0xF
    /* 11A26C 002192EC 7E11424A */  vftoi12.z  $vf2, $vf2
    /* 11A270 002192F0 F0008430 */  andi       $4, $4, 0xF0
    /* 11A274 002192F4 02000446 */  mul.s      $f0, $f0, $f4
    /* 11A278 002192F8 FF03A530 */  andi       $5, $5, 0x3FF
    /* 11A27C 002192FC 2028AA00 */  add        $5, $5, $10 /* handwritten instruction */
    /* 11A280 00219300 2030CA00 */  add        $6, $6, $10 /* handwritten instruction */
    /* 11A284 00219304 0034C1C4 */  lwc1       $f1, 0x3400($6)
    /* 11A288 00219308 883E0770 */  pextlb     $7, $0, $7
    /* 11A28C 0021930C 0034A2C4 */  lwc1       $f2, 0x3400($5)
    /* 11A290 00219310 883D0770 */  pextlh     $7, $0, $7
    /* 11A294 00219314 00102648 */  qmfc2.ni   $6, $vf2
    /* 11A298 00219318 801A0300 */  sll        $3, $3, 10
    /* 11A29C 0021931C 07002590 */  lbu        $5, 0x7($1)
    /* 11A2A0 00219320 40230400 */  sll        $4, $4, 13
    /* 11A2A4 00219324 E8209370 */  pminw      $4, $4, $19
    /* 11A2A8 00219328 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11A2AC 0021932C 000001FB */  sqc2       $vf1, 0x0($24)
    /* 11A2B0 00219330 A8340670 */  pextuw     $6, $0, $6
    /* 11A2B4 00219334 42080046 */  mul.s      $f1, $f1, $f0
    /* 11A2B8 00219338 2218C300 */  sub        $3, $6, $3 /* handwritten instruction */
    /* 11A2BC 0021933C 82100046 */  mul.s      $f2, $f2, $f0
    /* 11A2C0 00219340 22208600 */  sub        $4, $4, $6 /* handwritten instruction */
    /* 11A2C4 00219344 1000077F */  sq         $7, 0x10($24)
    /* 11A2C8 00219348 20004634 */  ori        $6, $2, 0x20
    /* 11A2CC 0021934C 03004610 */  beq        $2, $6, .L0021935C
    /* 11A2D0 00219350 02210400 */   srl       $4, $4, 4
    /* 11A2D4 00219354 010026A0 */  sb         $6, 0x1($1)
    /* 11A2D8 00219358 00000000 */  nop
.align 2
  .L0021935C:
    /* 11A2DC 0021935C 00100620 */  addi       $6, $0, 0x1000 /* handwritten instruction */
    /* 11A2E0 00219360 01000720 */  addi       $7, $0, 0x1 /* handwritten instruction */
    /* 11A2E4 00219364 200001E7 */  swc1       $f1, 0x20($24)
    /* 11A2E8 00219368 E8208370 */  pminw      $4, $4, $3
    /* 11A2EC 0021936C 240002E7 */  swc1       $f2, 0x24($24)
    /* 11A2F0 00219370 E8208670 */  pminw      $4, $4, $6
    /* 11A2F4 00219374 0C0007AF */  sw         $7, 0xC($24)
    /* 11A2F8 00219378 18008500 */  mult       $0, $4, $5
    /* 11A2FC 0021937C E1001105 */  bgezal     $8, func_00219704
    /* 11A300 00219380 89430870 */   pcpyld    $8, $0, $8
    /* 11A304 00219384 03002490 */  lbu        $4, 0x3($1)
    /* 11A308 00219388 00070133 */  andi       $1, $24, 0x700
    /* 11A30C 0021938C 3000087F */  sq         $8, 0x30($24)
    /* 11A310 00219390 00070220 */  addi       $2, $0, 0x700 /* handwritten instruction */
    /* 11A314 00219394 280004FF */  sd         $4, 0x28($24)
    /* 11A318 00219398 12180000 */  mflo       $3
    /* 11A31C 0021939C 021B0300 */  srl        $3, $3, 12
    /* 11A320 002193A0 40003923 */  addi       $25, $25, 0x40 /* handwritten instruction */
    /* 11A324 002193A4 1C0003AF */  sw         $3, 0x1C($24)
    /* 11A328 002193A8 40001823 */  addi       $24, $24, 0x40 /* handwritten instruction */
    /* 11A32C 002193AC 6BFF2214 */  bne        $1, $2, func_0021915C
    /* 11A330 002193B0 04008C21 */   addi      $12, $12, 0x4 /* handwritten instruction */
    /* 11A334 002193B4 63650808 */  j          func_0021958C
    /* 11A338 002193B8 00000000 */   nop
.align 2
  .L002193BC:
    /* 11A33C 002193BC 200022D8 */  lqc2       $vf2, 0x20($1)
    /* 11A340 002193C0 80690D00 */  sll        $13, $13, 6
    /* 11A344 002193C4 0C00268C */  lw         $6, 0xC($1)
    /* 11A348 002193C8 2068AB01 */  add        $13, $13, $11 /* handwritten instruction */
    /* 11A34C 002193CC 1B006014 */  bnez       $3, .L0021943C
    /* 11A350 002193D0 AC10DC4B */   vsub.xyz  $vf2, $vf2, $vf28
    /* 11A354 002193D4 883E0770 */  pextlb     $7, $0, $7
    /* 11A358 002193D8 0000A0CD */  pref       0x00, 0x0($13)
    /* 11A35C 002193DC 883D0770 */  pextlh     $7, $0, $7
    /* 11A360 002193E0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11A364 002193E4 000001FB */  sqc2       $vf1, 0x0($24)
    /* 11A368 002193E8 88360670 */  pextlb     $6, $0, $6
    /* 11A36C 002193EC 1000077F */  sq         $7, 0x10($24)
    /* 11A370 002193F0 88350670 */  pextlh     $6, $0, $6
    /* 11A374 002193F4 3000067F */  sq         $6, 0x30($24)
    /* 11A378 002193F8 00000000 */  nop
    /* 11A37C 002193FC 200002FB */  sqc2       $vf2, 0x20($24)
    /* 11A380 00219400 FFFF0420 */  addi       $4, $0, -0x1 /* handwritten instruction */
    /* 11A384 00219404 0C0004AF */  sw         $4, 0xC($24)
    /* 11A388 00219408 20004434 */  ori        $4, $2, 0x20
    /* 11A38C 0021940C 03004410 */  beq        $2, $4, .L0021941C
    /* 11A390 00219410 2C0000AF */   sw        $0, 0x2C($24)
    /* 11A394 00219414 010024A0 */  sb         $4, 0x1($1)
    /* 11A398 00219418 00000000 */  nop
.align 2
  .L0021941C:
    /* 11A39C 0021941C 00070133 */  andi       $1, $24, 0x700
    /* 11A3A0 00219420 00070220 */  addi       $2, $0, 0x700 /* handwritten instruction */
    /* 11A3A4 00219424 40003923 */  addi       $25, $25, 0x40 /* handwritten instruction */
    /* 11A3A8 00219428 40001823 */  addi       $24, $24, 0x40 /* handwritten instruction */
    /* 11A3AC 0021942C 4BFF2214 */  bne        $1, $2, func_0021915C
    /* 11A3B0 00219430 04008C21 */   addi      $12, $12, 0x4 /* handwritten instruction */
    /* 11A3B4 00219434 63650808 */  j          func_0021958C
    /* 11A3B8 00219438 00000000 */   nop
.align 2
  .L0021943C:
    /* 11A3BC 0021943C 02002990 */  lbu        $9, 0x2($1)
    /* 11A3C0 00219440 883E0770 */  pextlb     $7, $0, $7
    /* 11A3C4 00219444 07002490 */  lbu        $4, 0x7($1)
    /* 11A3C8 00219448 883D0770 */  pextlh     $7, $0, $7
    /* 11A3CC 0021944C BE09D94B */  .word      0x4BD909BE    # vmulaz.xyz ACC, $vf1, $vf25z
    /* 11A3D0 00219450 0F002590 */  lbu        $5, 0xF($1)
    /* 11A3D4 00219454 0A11D94B */  vmaddz.xyz $vf4, $vf2, $vf25z
    /* 11A3D8 00219458 C0480900 */  sll        $9, $9, 3
    /* 11A3DC 0021945C EC10C14B */  vsub.xyz   $vf3, $vf2, $vf1
    /* 11A3E0 00219460 20482A01 */  add        $9, $9, $10 /* handwritten instruction */
    /* 11A3E4 00219464 09002390 */  lbu        $3, 0x9($1)
    /* 11A3E8 00219468 88360670 */  pextlb     $6, $0, $6
    /* 11A3EC 0021946C 003028DD */  ld         $8, 0x3000($9)
    /* 11A3F0 00219470 88350670 */  pextlh     $6, $0, $6
    /* 11A3F4 00219474 FE1AC44B */  .word      0x4BC41AFE    # vopmula.xyz ACC, $vf3, $vf4
    /* 11A3F8 00219478 0000A0CD */  pref       0x00, 0x0($13)
    /* 11A3FC 0021947C EE20C34B */  .word      0x4BC320EE    # vopmsub.xyz $vf3, $vf4, $vf3
    /* 11A400 00219480 00000000 */  nop
    /* 11A404 00219484 BCE9C44B */  .word      0x4BC4E9BC    # vmulax.xyz ACC, $vf29, $vf4x
    /* 11A408 00219488 00000000 */  nop
    /* 11A40C 0021948C BDF0C44B */  .word      0x4BC4F0BD    # vmadday.xyz ACC, $vf30, $vf4y
    /* 11A410 00219490 00000000 */  nop
    /* 11A414 00219494 0AF9C44B */  vmaddz.xyz $vf4, $vf31, $vf4z
    /* 11A418 00219498 00000000 */  nop
    /* 11A41C 0021949C 6A19C34B */  vmul.xyz   $vf5, $vf3, $vf3
    /* 11A420 002194A0 00000000 */  nop
    /* 11A424 002194A4 8301C04B */  vaddw.xyz  $vf6, $vf0, $vf0w
    /* 11A428 002194A8 00000000 */  nop
    /* 11A42C 002194AC 892BA470 */  pcpyld     $5, $5, $4
    /* 11A430 002194B0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11A434 002194B4 7E21444A */  vftoi12.z  $vf4, $vf4
    /* 11A438 002194B8 F0006430 */  andi       $4, $3, 0xF0
    /* 11A43C 002194BC 3D28054B */  .word      0x4B05283D    # vadday.x   ACC, $vf5, $vf5y
    /* 11A440 002194C0 0F006330 */  andi       $3, $3, 0xF
    /* 11A444 002194C4 4A31054B */  vmaddz.x   $vf5, $vf6, $vf5z
    /* 11A448 002194C8 00000000 */  nop
    /* 11A44C 002194CC 3000077F */  sq         $7, 0x30($24)
    /* 11A450 002194D0 801A0300 */  sll        $3, $3, 10
    /* 11A454 002194D4 4000067F */  sq         $6, 0x40($24)
    /* 11A458 002194D8 40230400 */  sll        $4, $4, 13
    /* 11A45C 002194DC 00202648 */  qmfc2.ni   $6, $vf4
    /* 11A460 002194E0 E8209370 */  pminw      $4, $4, $19
    /* 11A464 002194E4 BE0B654A */  .word      0x4A650BBE    # vrsqrt     Q, $vf1w, $vf5x
    /* 11A468 002194E8 00000000 */  nop
    /* 11A46C 002194EC 000001FB */  sqc2       $vf1, 0x0($24)
    /* 11A470 002194F0 A8340670 */  pextuw     $6, $0, $6
    /* 11A474 002194F4 100002FB */  sqc2       $vf2, 0x10($24)
    /* 11A478 002194F8 2218C300 */  sub        $3, $6, $3 /* handwritten instruction */
    /* 11A47C 002194FC 22208600 */  sub        $4, $4, $6 /* handwritten instruction */
    /* 11A480 00219500 20004634 */  ori        $6, $2, 0x20
    /* 11A484 00219504 03004610 */  beq        $2, $6, .L00219514
    /* 11A488 00219508 02210400 */   srl       $4, $4, 4
    /* 11A48C 0021950C 010026A0 */  sb         $6, 0x1($1)
    /* 11A490 00219510 00000000 */  nop
.align 2
  .L00219514:
    /* 11A494 00219514 00100620 */  addi       $6, $0, 0x1000 /* handwritten instruction */
    /* 11A498 00219518 FEFF0720 */  addi       $7, $0, -0x2 /* handwritten instruction */
    /* 11A49C 0021951C E8208370 */  pminw      $4, $4, $3
    /* 11A4A0 00219520 03002390 */  lbu        $3, 0x3($1)
    /* 11A4A4 00219524 E8208670 */  pminw      $4, $4, $6
    /* 11A4A8 00219528 0C0007AF */  sw         $7, 0xC($24)
    /* 11A4AC 0021952C 89238470 */  pcpyld     $4, $4, $4
    /* 11A4B0 00219530 580003FF */  sd         $3, 0x58($24)
    /* 11A4B4 00219534 73001105 */  bgezal     $8, func_00219704
    /* 11A4B8 00219538 29238570 */   pmultuw   $4, $4, $5
    /* 11A4BC 0021953C 500008FF */  sd         $8, 0x50($24)
    /* 11A4C0 00219540 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 11A4C4 00219544 DC18C04B */  .word      0x4BC018DC    # vmulq.xyz  $vf3, $vf3, Q
    /* 11A4C8 00219548 00000000 */  nop
    /* 11A4CC 0021954C 3E230470 */  psrlw      $4, $4, 12
    /* 11A4D0 00219550 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11A4D4 00219554 3C0004AF */  sw         $4, 0x3C($24)
    /* 11A4D8 00219558 A9238070 */  pcpyud     $4, $4, $0
    /* 11A4DC 0021955C 4C0004AF */  sw         $4, 0x4C($24)
    /* 11A4E0 00219560 00000000 */  nop
    /* 11A4E4 00219564 00070133 */  andi       $1, $24, 0x700
    /* 11A4E8 00219568 00070220 */  addi       $2, $0, 0x700 /* handwritten instruction */
    /* 11A4EC 0021956C 200003FB */  sqc2       $vf3, 0x20($24)
    /* 11A4F0 00219570 60003923 */  addi       $25, $25, 0x60 /* handwritten instruction */
    /* 11A4F4 00219574 2C0000AF */  sw         $0, 0x2C($24)
    /* 11A4F8 00219578 60001823 */  addi       $24, $24, 0x60 /* handwritten instruction */
    /* 11A4FC 0021957C F7FE2214 */  bne        $1, $2, func_0021915C
    /* 11A500 00219580 06008C21 */   addi      $12, $12, 0x6 /* handwritten instruction */
    /* 11A504 00219584 63650808 */  j          func_0021958C
    /* 11A508 00219588 00000000 */   nop
.align 2
  alabel func_0021958C
    /* 11A50C 0021958C 000012FB */  sqc2       $vf18, 0x0($24)
    /* 11A510 00219590 10001823 */  addi       $24, $24, 0x10 /* handwritten instruction */
    /* 11A514 00219594 10003923 */  addi       $25, $25, 0x10 /* handwritten instruction */
    /* 11A518 00219598 FF070133 */  andi       $1, $24, 0x7FF
    /* 11A51C 0021959C 0010043C */  lui        $4, (0x1000D000 >> 16)
    /* 11A520 002195A0 22C00103 */  sub        $24, $24, $1 /* handwritten instruction */
    /* 11A524 002195A4 00D08434 */  ori        $4, $4, (0x1000D000 & 0xFFFF)
    /* 11A528 002195A8 02110100 */  srl        $2, $1, 4
    /* 11A52C 002195AC 000011FB */  sqc2       $vf17, 0x0($24)
    /* 11A530 002195B0 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 11A534 002195B4 000002A7 */  sh         $2, 0x0($24)
    /* 11A538 002195B8 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 11A53C 002195BC 0E0002A3 */  sb         $2, 0xE($24)
    /* 11A540 002195C0 00000000 */  nop
    /* 11A544 002195C4 3C000CAF */  sw         $12, 0x3C($24)
    /* 11A548 002195C8 00000C20 */  addi       $12, $0, 0x0 /* handwritten instruction */
.align 2
  .L002195CC:
    /* 11A54C 002195CC 0000838C */  lw         $3, 0x0($4)
    /* 11A550 002195D0 00016330 */  andi       $3, $3, 0x100
    /* 11A554 002195D4 00000000 */  nop
    /* 11A558 002195D8 00000000 */  nop
    /* 11A55C 002195DC 00000000 */  nop
    /* 11A560 002195E0 FAFF6014 */  bnez       $3, .L002195CC
    /* 11A564 002195E4 00000000 */   nop
    /* 11A568 002195E8 800098AC */  sw         $24, 0x80($4)
    /* 11A56C 002195EC 00010234 */  ori        $2, $0, 0x100
    /* 11A570 002195F0 101082AC */  sw         $2, 0x1010($4)
    /* 11A574 002195F4 22102103 */  sub        $2, $25, $1 /* handwritten instruction */
    /* 11A578 002195F8 100082AC */  sw         $2, 0x10($4)
    /* 11A57C 002195FC 02110100 */  srl        $2, $1, 4
    /* 11A580 00219600 200082AC */  sw         $2, 0x20($4)
    /* 11A584 00219604 00010234 */  ori        $2, $0, 0x100
    /* 11A588 00219608 000082AC */  sw         $2, 0x0($4)
    /* 11A58C 0021960C 0008183B */  xori       $24, $24, 0x800
    /* 11A590 00219610 10001823 */  addi       $24, $24, 0x10 /* handwritten instruction */
    /* 11A594 00219614 10003923 */  addi       $25, $25, 0x10 /* handwritten instruction */
    /* 11A598 00219618 57640808 */  j          func_0021915C
    /* 11A59C 0021961C 00000000 */   nop
.align 2
  .L00219620:
    /* 11A5A0 00219620 0F008011 */  beqz       $12, .L00219660
    /* 11A5A4 00219624 FF070133 */   andi      $1, $24, 0x7FF
    /* 11A5A8 00219628 000012FB */  sqc2       $vf18, 0x0($24)
    /* 11A5AC 0021962C 22100103 */  sub        $2, $24, $1 /* handwritten instruction */
    /* 11A5B0 00219630 10001823 */  addi       $24, $24, 0x10 /* handwritten instruction */
    /* 11A5B4 00219634 10003923 */  addi       $25, $25, 0x10 /* handwritten instruction */
    /* 11A5B8 00219638 02090100 */  srl        $1, $1, 4
    /* 11A5BC 0021963C 3C004CAC */  sw         $12, 0x3C($2)
    /* 11A5C0 00219640 000051F8 */  sqc2       $vf17, 0x0($2)
    /* 11A5C4 00219644 00000000 */  nop
    /* 11A5C8 00219648 000041A4 */  sh         $1, 0x0($2)
    /* 11A5CC 0021964C FFFF2120 */  addi       $1, $1, -0x1 /* handwritten instruction */
    /* 11A5D0 00219650 0E0041A0 */  sb         $1, 0xE($2)
    /* 11A5D4 00219654 00000000 */  nop
    /* 11A5D8 00219658 10001823 */  addi       $24, $24, 0x10 /* handwritten instruction */
    /* 11A5DC 0021965C 10003923 */  addi       $25, $25, 0x10 /* handwritten instruction */
.align 2
  .L00219660:
    /* 11A5E0 00219660 F0FF13FB */  sqc2       $vf19, -0x10($24)
    /* 11A5E4 00219664 00000000 */  nop
    /* 11A5E8 00219668 FF070133 */  andi       $1, $24, 0x7FF
    /* 11A5EC 0021966C 0010043C */  lui        $4, (0x1000D000 >> 16)
    /* 11A5F0 00219670 00D08434 */  ori        $4, $4, (0x1000D000 & 0xFFFF)
    /* 11A5F4 00219674 22C00103 */  sub        $24, $24, $1 /* handwritten instruction */
.align 2
  .L00219678:
    /* 11A5F8 00219678 0000838C */  lw         $3, 0x0($4)
    /* 11A5FC 0021967C 00016330 */  andi       $3, $3, 0x100
    /* 11A600 00219680 00000000 */  nop
    /* 11A604 00219684 00000000 */  nop
    /* 11A608 00219688 00000000 */  nop
    /* 11A60C 0021968C FAFF6014 */  bnez       $3, .L00219678
    /* 11A610 00219690 00000000 */   nop
    /* 11A614 00219694 800098AC */  sw         $24, 0x80($4)
    /* 11A618 00219698 00010234 */  ori        $2, $0, 0x100
    /* 11A61C 0021969C 101082AC */  sw         $2, 0x1010($4)
    /* 11A620 002196A0 22102103 */  sub        $2, $25, $1 /* handwritten instruction */
    /* 11A624 002196A4 100082AC */  sw         $2, 0x10($4)
    /* 11A628 002196A8 02110100 */  srl        $2, $1, 4
    /* 11A62C 002196AC 200082AC */  sw         $2, 0x20($4)
    /* 11A630 002196B0 00010234 */  ori        $2, $0, 0x100
    /* 11A634 002196B4 000082AC */  sw         $2, 0x0($4)
    /* 11A638 002196B8 0008183B */  xori       $24, $24, 0x800
.align 2
  .L002196BC:
    /* 11A63C 002196BC 0000838C */  lw         $3, 0x0($4)
    /* 11A640 002196C0 00000000 */  nop
    /* 11A644 002196C4 00016330 */  andi       $3, $3, 0x100
    /* 11A648 002196C8 00000000 */  nop
    /* 11A64C 002196CC FF02004A */  vnop
    /* 11A650 002196D0 FF02004A */  vnop
    /* 11A654 002196D4 F9FF6014 */  bnez       $3, .L002196BC
    /* 11A658 002196D8 00000000 */   nop
    /* 11A65C 002196DC 748290AF */  sw         $16, -0x7D8C($28)
    /* 11A660 002196E0 588891AF */  sw         $17, -0x77A8($28)
    /* 11A664 002196E4 00A399AF */  sw         $25, -0x5D00($28)
    /* 11A668 002196E8 00000000 */  nop
.align 2
  .L002196EC:
    /* 11A66C 002196EC A9FBE073 */  pcpyud     $31, $31, $0
    /* 11A670 002196F0 A99B6072 */  pcpyud     $19, $19, $0
    /* 11A674 002196F4 A9934072 */  pcpyud     $18, $18, $0
    /* 11A678 002196F8 A98B2072 */  pcpyud     $17, $17, $0
    /* 11A67C 002196FC 0800E003 */  jr         $31
    /* 11A680 00219700 A9830072 */   pcpyud    $16, $16, $0
endlabel func_00218B10
