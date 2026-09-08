/* Handwritten function */
nonmatching func_001F8B6C, 0x64C

glabel func_001F8B6C
    /* F9AEC 001F8B6C E0FFBD27 */  addiu      $29, $29, -0x20
    /* F9AF0 001F8B70 00000000 */  nop
    /* F9AF4 001F8B74 0000B0AF */  sw         $16, 0x0($29)
    /* F9AF8 001F8B78 00000000 */  nop
    /* F9AFC 001F8B7C 0400B1AF */  sw         $17, 0x4($29)
    /* F9B00 001F8B80 00000000 */  nop
    /* F9B04 001F8B84 0800B2AF */  sw         $18, 0x8($29)
    /* F9B08 001F8B88 00000000 */  nop
    /* F9B0C 001F8B8C 0C00B3AF */  sw         $19, 0xC($29)
    /* F9B10 001F8B90 00000000 */  nop
    /* F9B14 001F8B94 1000B4AF */  sw         $20, 0x10($29)
    /* F9B18 001F8B98 00000000 */  nop
    /* F9B1C 001F8B9C 1000B4AF */  sw         $20, 0x10($29)
    /* F9B20 001F8BA0 00700D3C */  lui        $13, (0x70002400 >> 16)
.align 2
  .L001F8BA4:
    /* F9B24 001F8BA4 0000428D */  lw         $2, 0x0($10)
    /* F9B28 001F8BA8 00014230 */  andi       $2, $2, 0x100
    /* F9B2C 001F8BAC 00000000 */  nop
    /* F9B30 001F8BB0 00000000 */  nop
    /* F9B34 001F8BB4 00000000 */  nop
    /* F9B38 001F8BB8 FAFF4014 */  bnez       $2, .L001F8BA4
    /* F9B3C 001F8BBC 00000000 */   nop
    /* F9B40 001F8BC0 003F013C */  lui        $1, (0x3F000000 >> 16)
    /* F9B44 001F8BC4 0080A148 */  qmtc2.ni   $1, $vf16
    /* F9B48 001F8BC8 803A013C */  lui        $1, (0x3A800000 >> 16)
    /* F9B4C 001F8BCC 0020A148 */  qmtc2.ni   $1, $vf4
    /* F9B50 001F8BD0 0024A121 */  addi       $1, $13, (0x70002400 & 0xFFFF) /* handwritten instruction */
    /* F9B54 001F8BD4 0025A221 */  addi       $2, $13, (0x70002500 & 0xFFFF) /* handwritten instruction */
    /* F9B58 001F8BD8 0024A321 */  addi       $3, $13, (0x70002400 & 0xFFFF) /* handwritten instruction */
    /* F9B5C 001F8BDC 00000420 */  addi       $4, $0, 0x0 /* handwritten instruction */
.align 2
  alabel func_001F8BE0
    /* F9B60 001F8BE0 10002210 */  beq        $1, $2, .L001F8C24
    /* F9B64 001F8BE4 100025DC */   ld        $5, 0x10($1)
    /* F9B68 001F8BE8 00000000 */  nop
    /* F9B6C 001F8BEC 00000000 */  nop
    /* F9B70 001F8BF0 00000000 */  nop
    /* F9B74 001F8BF4 FAFFA010 */  beqz       $5, func_001F8BE0
    /* F9B78 001F8BF8 20002120 */   addi      $1, $1, 0x20 /* handwritten instruction */
    /* F9B7C 001F8BFC F0FF21D8 */  lqc2       $vf1, -0x10($1)
    /* F9B80 001F8C00 E0FF22D8 */  lqc2       $vf2, -0x20($1)
    /* F9B84 001F8C04 BC03E14B */  .word      0x4BE103BC    # vdiv       Q, $vf0w, $vf1w
    /* F9B88 001F8C08 100061F8 */  sqc2       $vf1, 0x10($3)
    /* F9B8C 001F8C0C BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F9B90 001F8C10 9C00204A */  .word      0x4A20009C    # vmulq.w    $vf2, $vf0, Q
    /* F9B94 001F8C14 000062F8 */  sqc2       $vf2, 0x0($3)
    /* F9B98 001F8C18 01008420 */  addi       $4, $4, 0x1 /* handwritten instruction */
    /* F9B9C 001F8C1C F8E20708 */  j          func_001F8BE0
    /* F9BA0 001F8C20 20006320 */   addi      $3, $3, 0x20 /* handwritten instruction */
.align 2
  .L001F8C24:
    /* F9BA4 001F8C24 89BB9770 */  pcpyld     $23, $4, $23
    /* F9BA8 001F8C28 00000000 */  nop
    /* F9BAC 001F8C2C 1600113C */  lui        $17, %hi(D_0015F57C)
    /* F9BB0 001F8C30 7CF53126 */  addiu      $17, $17, %lo(D_0015F57C)
    /* F9BB4 001F8C34 1600123C */  lui        $18, %hi(D_0015F578)
    /* F9BB8 001F8C38 78F5528E */  lw         $18, %lo(D_0015F578)($18)
    /* F9BBC 001F8C3C 00000000 */  nop
    /* F9BC0 001F8C40 0000318E */  lw         $17, 0x0($17)
    /* F9BC4 001F8C44 00000000 */  nop
    /* F9BC8 001F8C48 1600143C */  lui        $20, %hi(D_0015F580)
    /* F9BCC 001F8C4C 80F5948E */  lw         $20, %lo(D_0015F580)($20)
    /* F9BD0 001F8C50 00000000 */  nop
.align 2
  .L001F8C54:
    /* F9BD4 001F8C54 0000938E */  lw         $19, 0x0($20)
    /* F9BD8 001F8C58 00000000 */  nop
    /* F9BDC 001F8C5C 000021DA */  lqc2       $vf1, 0x0($17)
    /* F9BE0 001F8C60 A91BE072 */  pcpyud     $3, $23, $0
    /* F9BE4 001F8C64 3D006010 */  beqz       $3, .L001F8D5C
    /* F9BE8 001F8C68 E803E04B */   vadd.xyzw $vf15, $vf0, $vf0
    /* F9BEC 001F8C6C 1024A2D9 */  lqc2       $vf2, (0x70002410 & 0xFFFF)($13)
    /* F9BF0 001F8C70 0024A221 */  addi       $2, $13, (0x70002400 & 0xFFFF) /* handwritten instruction */
    /* F9BF4 001F8C74 0025A121 */  addi       $1, $13, (0x70002500 & 0xFFFF) /* handwritten instruction */
    /* F9BF8 001F8C78 00000420 */  addi       $4, $0, 0x0 /* handwritten instruction */
    /* F9BFC 001F8C7C EC10C14B */  vsub.xyz   $vf3, $vf2, $vf1
    /* F9C00 001F8C80 00000000 */  nop
    /* F9C04 001F8C84 8301C04B */  vaddw.xyz  $vf6, $vf0, $vf0w
    /* F9C08 001F8C88 00000000 */  nop
    /* F9C0C 001F8C8C C701C04B */  vsubw.xyz  $vf7, $vf0, $vf0w
    /* F9C10 001F8C90 00000000 */  nop
.align 2
  alabel func_001F8C94
    /* F9C14 001F8C94 31006010 */  beqz       $3, .L001F8D5C
    /* F9C18 001F8C98 EA18C34B */   vmul.xyz  $vf3, $vf3, $vf3
    /* F9C1C 001F8C9C 2A11224A */  vmul.w     $vf4, $vf2, $vf2
    /* F9C20 001F8CA0 20004220 */  addi       $2, $2, 0x20 /* handwritten instruction */
    /* F9C24 001F8CA4 100042D8 */  lqc2       $vf2, 0x10($2)
    /* F9C28 001F8CA8 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* F9C2C 001F8CAC 3C18834A */  .word      0x4A83183C    # vaddax.y   ACC, $vf3, $vf3x
    /* F9C30 001F8CB0 00000000 */  nop
    /* F9C34 001F8CB4 BE30834A */  .word      0x4A8330BE    # vmaddaz.y  ACC, $vf6, $vf3z
    /* F9C38 001F8CB8 00000000 */  nop
    /* F9C3C 001F8CBC 4B39844A */  vmaddw.y   $vf5, $vf7, $vf4w
    /* F9C40 001F8CC0 00000000 */  nop
    /* F9C44 001F8CC4 0802804A */  vmaddx.y   $vf8, $vf0, $vf0x
    /* F9C48 001F8CC8 00000000 */  nop
    /* F9C4C 001F8CCC EC10C14B */  vsub.xyz   $vf3, $vf2, $vf1
    /* F9C50 001F8CD0 00000000 */  nop
    /* F9C54 001F8CD4 00282548 */  qmfc2.ni   $5, $vf5
    /* F9C58 001F8CD8 00000000 */  nop
    /* F9C5C 001F8CDC BD03884A */  .word      0x4A8803BD                    # vsqrt      Q, $vf8y # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F9C60 001F8CE0 00000000 */  nop
    /* F9C64 001F8CE4 EBFFA01C */  bgtz       $5, func_001F8C94
    /* F9C68 001F8CE8 00000000 */   nop
    /* F9C6C 001F8CEC F0FF48D8 */  lqc2       $vf8, -0x10($2)
    /* F9C70 001F8CF0 00000000 */  nop
    /* F9C74 001F8CF4 E0FF49D8 */  lqc2       $vf9, -0x20($2)
    /* F9C78 001F8CF8 00000000 */  nop
    /* F9C7C 001F8CFC 2C0AC84B */  vsub.xyz   $vf8, $vf1, $vf8
    /* F9C80 001F8D00 FF02004A */  vnop
    /* F9C84 001F8D04 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F9C88 001F8D08 00000000 */  nop
    /* F9C8C 001F8D0C 5C01204A */  .word      0x4A20015C    # vmulq.w    $vf5, $vf0, Q
    /* F9C90 001F8D10 00000000 */  nop
    /* F9C94 001F8D14 5C4A204A */  .word      0x4A204A5C    # vmulq.w    $vf9, $vf9, Q
    /* F9C98 001F8D18 00000000 */  nop
    /* F9C9C 001F8D1C 6C02294A */  vsub.w     $vf9, $vf0, $vf9
    /* F9CA0 001F8D20 00000000 */  nop
    /* F9CA4 001F8D24 514A094B */  vmaxy.x    $vf9, $vf9, $vf9y
    /* F9CA8 001F8D28 00000000 */  nop
    /* F9CAC 001F8D2C 524A094B */  vmaxz.x    $vf9, $vf9, $vf9z
    /* F9CB0 001F8D30 00000000 */  nop
    /* F9CB4 001F8D34 6A4A104B */  vmul.x     $vf9, $vf9, $vf16
    /* F9CB8 001F8D38 00000000 */  nop
    /* F9CBC 001F8D3C 574A004B */  vminiw.x   $vf9, $vf9, $vf0w
    /* F9CC0 001F8D40 00000000 */  nop
    /* F9CC4 001F8D44 5B4A094B */  vmulw.x    $vf9, $vf9, $vf9w
    /* F9CC8 001F8D48 00000000 */  nop
    /* F9CCC 001F8D4C E87B094B */  vadd.x     $vf15, $vf15, $vf9
    /* F9CD0 001F8D50 01008420 */  addi       $4, $4, 0x1 /* handwritten instruction */
    /* F9CD4 001F8D54 25E30708 */  j          func_001F8C94
    /* F9CD8 001F8D58 20002120 */   addi      $1, $1, 0x20 /* handwritten instruction */
.align 2
  .L001F8D5C:
    /* F9CDC 001F8D5C 8300C04B */  vaddw.xyz  $vf2, $vf0, $vf0w
    /* F9CE0 001F8D60 00000000 */  nop
    /* F9CE4 001F8D64 D77B004B */  vminiw.x   $vf15, $vf15, $vf0w
    /* F9CE8 001F8D68 00000000 */  nop
    /* F9CEC 001F8D6C EC130F4B */  vsub.x     $vf15, $vf2, $vf15
    /* F9CF0 001F8D70 8043053C */  lui        $5, (0x43800000 >> 16)
    /* F9CF4 001F8D74 0018A548 */  qmtc2.ni   $5, $vf3
    /* F9CF8 001F8D78 00000000 */  nop
    /* F9CFC 001F8D7C D87BE34B */  vmulx.xyzw $vf15, $vf15, $vf3x
    /* F9D00 001F8D80 00000000 */  nop
    /* F9D04 001F8D84 7C79EF4B */  vftoi0.xyzw $vf15, $vf15
    /* F9D08 001F8D88 00000000 */  nop
    /* F9D0C 001F8D8C 00782148 */  qmfc2.ni   $1, $vf15
    /* F9D10 001F8D90 89B33670 */  pcpyld     $22, $1, $22
    /* F9D14 001F8D94 0000297A */  lq         $9, 0x0($17)
    /* F9D18 001F8D98 00000000 */  nop
    /* F9D1C 001F8D9C 1400228E */  lw         $2, 0x14($17)
    /* F9D20 001F8DA0 00000000 */  nop
    /* F9D24 001F8DA4 FFFF4630 */  andi       $6, $2, 0xFFFF
    /* F9D28 001F8DA8 00000000 */  nop
    /* F9D2C 001F8DAC F200C010 */  beqz       $6, .L001F9178
    /* F9D30 001F8DB0 C2470200 */   srl       $8, $2, 31
    /* F9D34 001F8DB4 01000831 */  andi       $8, $8, 0x1
    /* F9D38 001F8DB8 40400800 */  sll        $8, $8, 1
    /* F9D3C 001F8DBC 1800248E */  lw         $4, 0x18($17)
    /* F9D40 001F8DC0 0C000825 */  addiu      $8, $8, 0xC
    /* F9D44 001F8DC4 1C00258E */  lw         $5, 0x1C($17)
    /* F9D48 001F8DC8 00000000 */  nop
    /* F9D4C 001F8DCC 00A39927 */  addiu      $25, $28, -0x5D00
    /* F9D50 001F8DD0 0000388F */  lw         $24, 0x0($25)
    /* F9D54 001F8DD4 00000000 */  nop
    /* F9D58 001F8DD8 1E00023C */  lui        $2, %hi(D_001E0280)
    /* F9D5C 001F8DDC 80024224 */  addiu      $2, $2, %lo(D_001E0280)
    /* F9D60 001F8DE0 200044AC */  sw         $4, 0x20($2)
    /* F9D64 001F8DE4 00000000 */  nop
    /* F9D68 001F8DE8 240045AC */  sw         $5, 0x24($2)
    /* F9D6C 001F8DEC 00000000 */  nop
    /* F9D70 001F8DF0 00004C78 */  lq         $12, 0x0($2)
    /* F9D74 001F8DF4 00000000 */  nop
    /* F9D78 001F8DF8 10004E78 */  lq         $14, 0x10($2)
    /* F9D7C 001F8DFC 00000000 */  nop
    /* F9D80 001F8E00 20005078 */  lq         $16, 0x20($2)
    /* F9D84 001F8E04 00000000 */  nop
    /* F9D88 001F8E08 00000C7F */  sq         $12, 0x0($24)
    /* F9D8C 001F8E0C 00000000 */  nop
    /* F9D90 001F8E10 10000E7F */  sq         $14, 0x10($24)
    /* F9D94 001F8E14 00000000 */  nop
    /* F9D98 001F8E18 2000107F */  sq         $16, 0x20($24)
    /* F9D9C 001F8E1C 00000000 */  nop
    /* F9DA0 001F8E20 30001823 */  addi       $24, $24, 0x30 /* handwritten instruction */
    /* F9DA4 001F8E24 000038AF */  sw         $24, 0x0($25)
    /* F9DA8 001F8E28 2D286002 */  daddu      $5, $19, $0
    /* F9DAC 001F8E2C 0000AC8C */  lw         $12, 0x0($5)
    /* F9DB0 001F8E30 FFFF8131 */  andi       $1, $12, 0xFFFF
    /* F9DB4 001F8E34 1830C100 */  mult       $6, $6, $1
    /* F9DB8 001F8E38 A90BC072 */  pcpyud     $1, $22, $0
    /* F9DBC 001F8E3C 1830C100 */  mult       $6, $6, $1
    /* F9DC0 001F8E40 02340600 */  srl        $6, $6, 16
    /* F9DC4 001F8E44 02840C00 */  srl        $16, $12, 16
    /* F9DC8 001F8E48 0800A520 */  addi       $5, $5, 0x8 /* handwritten instruction */
    /* F9DCC 001F8E4C 00000000 */  nop
.align 2
  .L001F8E50:
    /* F9DD0 001F8E50 0F00A520 */  addi       $5, $5, 0xF /* handwritten instruction */
    /* F9DD4 001F8E54 00000000 */  nop
    /* F9DD8 001F8E58 F0FF0B24 */  addiu      $11, $0, -0x10
    /* F9DDC 001F8E5C 2428AB00 */  and        $5, $5, $11
    /* F9DE0 001F8E60 0000B88C */  lw         $24, 0x0($5)
    /* F9DE4 001F8E64 0400A520 */  addi       $5, $5, 0x4 /* handwritten instruction */
    /* F9DE8 001F8E68 2DC8A000 */  daddu      $25, $5, $0
    /* F9DEC 001F8E6C 43601800 */  sra        $12, $24, 1
    /* F9DF0 001F8E70 0C000B24 */  addiu      $11, $0, 0xC
    /* F9DF4 001F8E74 18608B01 */  mult       $12, $12, $11
    /* F9DF8 001F8E78 2128AC00 */  addu       $5, $5, $12
    /* F9DFC 001F8E7C 0F00A520 */  addi       $5, $5, 0xF /* handwritten instruction */
    /* F9E00 001F8E80 00000000 */  nop
    /* F9E04 001F8E84 F0FF0B24 */  addiu      $11, $0, -0x10
    /* F9E08 001F8E88 2428AB00 */  and        $5, $5, $11
    /* F9E0C 001F8E8C 2D38A000 */  daddu      $7, $5, $0
    /* F9E10 001F8E90 2D600003 */  daddu      $12, $24, $0
    /* F9E14 001F8E94 04000B24 */  addiu      $11, $0, 0x4
    /* F9E18 001F8E98 18608B01 */  mult       $12, $12, $11
    /* F9E1C 001F8E9C 2128AC00 */  addu       $5, $5, $12
    /* F9E20 001F8EA0 00A38A27 */  addiu      $10, $28, -0x5D00
    /* F9E24 001F8EA4 00004A8D */  lw         $10, 0x0($10)
    /* F9E28 001F8EA8 00000000 */  nop
    /* F9E2C 001F8EAC 2D084001 */  daddu      $1, $10, $0
    /* F9E30 001F8EB0 007C1800 */  sll        $15, $24, 16
    /* F9E34 001F8EB4 1E000B3C */  lui        $11, %hi(D_001E0220)
    /* F9E38 001F8EB8 20026B25 */  addiu      $11, $11, %lo(D_001E0220)
    /* F9E3C 001F8EBC 05000324 */  addiu      $3, $0, 0x5
    /* F9E40 001F8EC0 00000000 */  nop
.align 2
  .L001F8EC4:
    /* F9E44 001F8EC4 00006279 */  lq         $2, 0x0($11)
    /* F9E48 001F8EC8 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* F9E4C 001F8ECC 0000227C */  sq         $2, 0x0($1)
    /* F9E50 001F8ED0 10006B25 */  addiu      $11, $11, 0x10
    /* F9E54 001F8ED4 00000000 */  nop
    /* F9E58 001F8ED8 FAFF6014 */  bnez       $3, .L001F8EC4
    /* F9E5C 001F8EDC 10002124 */   addiu     $1, $1, 0x10
    /* F9E60 001F8EE0 C0FF228C */  lw         $2, -0x40($1)
    /* F9E64 001F8EE4 00000000 */  nop
    /* F9E68 001F8EE8 25105800 */  or         $2, $2, $24
    /* F9E6C 001F8EEC C0FF22AC */  sw         $2, -0x40($1)
    /* F9E70 001F8EF0 0042023C */  lui        $2, (0x42000000 >> 16)
    /* F9E74 001F8EF4 0018A248 */  qmtc2.ni   $2, $vf3
    /* F9E78 001F8EF8 16000B3C */  lui        $11, %hi(D_00160F00)
    /* F9E7C 001F8EFC 000F6B25 */  addiu      $11, $11, %lo(D_00160F00)
    /* F9E80 001F8F00 00000000 */  nop
    /* F9E84 001F8F04 00006279 */  lq         $2, 0x0($11)
    /* F9E88 001F8F08 00000000 */  nop
    /* F9E8C 001F8F0C 0000227C */  sq         $2, 0x0($1)
    /* F9E90 001F8F10 10002124 */  addiu      $1, $1, 0x10
    /* F9E94 001F8F14 FCFF228C */  lw         $2, -0x4($1)
    /* F9E98 001F8F18 25104F00 */  or         $2, $2, $15
    /* F9E9C 001F8F1C FCFF22AC */  sw         $2, -0x4($1)
    /* F9EA0 001F8F20 2D58E000 */  daddu      $11, $7, $0
    /* F9EA4 001F8F24 2D180003 */  daddu      $3, $24, $0
    /* F9EA8 001F8F28 00000000 */  nop
.align 2
  .L001F8F2C:
    /* F9EAC 001F8F2C 000062DD */  ld         $2, 0x0($11)
    /* F9EB0 001F8F30 FEFF6320 */  addi       $3, $3, -0x2 /* handwritten instruction */
    /* F9EB4 001F8F34 88150270 */  pextlh     $2, $0, $2
    /* F9EB8 001F8F38 00000000 */  nop
    /* F9EBC 001F8F3C BC100270 */  psllw      $2, $2, 2
    /* F9EC0 001F8F40 00000000 */  nop
    /* F9EC4 001F8F44 0008A248 */  qmtc2.ni   $2, $vf1
    /* F9EC8 001F8F48 3E09E14B */  vitof12.xyzw $vf1, $vf1
    /* F9ECC 001F8F4C 4408E34B */  vsubx.xyzw $vf1, $vf1, $vf3x
    /* F9ED0 001F8F50 00082248 */  qmfc2.ni   $2, $vf1
    /* F9ED4 001F8F54 000022AC */  sw         $2, 0x0($1)
    /* F9ED8 001F8F58 C9170270 */  prot3w     $2, $2
    /* F9EDC 001F8F5C 040022AC */  sw         $2, 0x4($1)
    /* F9EE0 001F8F60 C9170270 */  prot3w     $2, $2
    /* F9EE4 001F8F64 080022AC */  sw         $2, 0x8($1)
    /* F9EE8 001F8F68 A9134070 */  pcpyud     $2, $2, $0
    /* F9EEC 001F8F6C C9170270 */  prot3w     $2, $2
    /* F9EF0 001F8F70 0C0022AC */  sw         $2, 0xC($1)
    /* F9EF4 001F8F74 08006B25 */  addiu      $11, $11, 0x8
    /* F9EF8 001F8F78 ECFF6014 */  bnez       $3, .L001F8F2C
    /* F9EFC 001F8F7C 10002124 */   addiu     $1, $1, 0x10
    /* F9F00 001F8F80 00000000 */  nop
.align 2
  .L001F8F84:
    /* F9F04 001F8F84 0F002330 */  andi       $3, $1, 0xF
    /* F9F08 001F8F88 05006010 */  beqz       $3, .L001F8FA0
    /* F9F0C 001F8F8C 000020AC */   sw        $0, 0x0($1)
    /* F9F10 001F8F90 04002124 */  addiu      $1, $1, 0x4
    /* F9F14 001F8F94 00000000 */  nop
    /* F9F18 001F8F98 FAFF0010 */  b          .L001F8F84
    /* F9F1C 001F8F9C 00000000 */   nop
.align 2
  .L001F8FA0:
    /* F9F20 001F8FA0 16000B3C */  lui        $11, %hi(D_00160F20)
    /* F9F24 001F8FA4 200F6B25 */  addiu      $11, $11, %lo(D_00160F20)
    /* F9F28 001F8FA8 00006279 */  lq         $2, 0x0($11)
    /* F9F2C 001F8FAC 00000000 */  nop
    /* F9F30 001F8FB0 0000227C */  sq         $2, 0x0($1)
    /* F9F34 001F8FB4 10002124 */  addiu      $1, $1, 0x10
    /* F9F38 001F8FB8 FCFF228C */  lw         $2, -0x4($1)
    /* F9F3C 001F8FBC 00000000 */  nop
    /* F9F40 001F8FC0 25104F00 */  or         $2, $2, $15
    /* F9F44 001F8FC4 FCFF22AC */  sw         $2, -0x4($1)
    /* F9F48 001F8FC8 2D58C000 */  daddu      $11, $6, $0
    /* F9F4C 001F8FCC 2D180003 */  daddu      $3, $24, $0
    /* F9F50 001F8FD0 FF00023C */  lui        $2, (0xFFFFFF >> 16)
    /* F9F54 001F8FD4 FFFF4234 */  ori        $2, $2, (0xFFFFFF & 0xFFFF)
    /* F9F58 001F8FD8 00660600 */  sll        $12, $6, 24
    /* F9F5C 001F8FDC 25608201 */  or         $12, $12, $2
    /* F9F60 001F8FE0 3C100C00 */  dsll32     $2, $12, 0
    /* F9F64 001F8FE4 25608201 */  or         $12, $12, $2
.align 2
  .L001F8FE8:
    /* F9F68 001F8FE8 FEFF6320 */  addi       $3, $3, -0x2 /* handwritten instruction */
    /* F9F6C 001F8FEC 00002CFC */  sd         $12, 0x0($1)
    /* F9F70 001F8FF0 00000000 */  nop
    /* F9F74 001F8FF4 00000000 */  nop
    /* F9F78 001F8FF8 00000000 */  nop
    /* F9F7C 001F8FFC FAFF6014 */  bnez       $3, .L001F8FE8
    /* F9F80 001F9000 08002124 */   addiu     $1, $1, 0x8
.align 2
  .L001F9004:
    /* F9F84 001F9004 0F002330 */  andi       $3, $1, 0xF
    /* F9F88 001F9008 05006010 */  beqz       $3, .L001F9020
    /* F9F8C 001F900C 000020AC */   sw        $0, 0x0($1)
    /* F9F90 001F9010 04002124 */  addiu      $1, $1, 0x4
    /* F9F94 001F9014 00000000 */  nop
    /* F9F98 001F9018 FAFF0010 */  b          .L001F9004
    /* F9F9C 001F901C 00000000 */   nop
.align 2
  .L001F9020:
    /* F9FA0 001F9020 16000B3C */  lui        $11, %hi(D_00160F40)
    /* F9FA4 001F9024 400F6B25 */  addiu      $11, $11, %lo(D_00160F40)
    /* F9FA8 001F9028 00006279 */  lq         $2, 0x0($11)
    /* F9FAC 001F902C 00000000 */  nop
    /* F9FB0 001F9030 0000227C */  sq         $2, 0x0($1)
    /* F9FB4 001F9034 10002124 */  addiu      $1, $1, 0x10
    /* F9FB8 001F9038 FCFF228C */  lw         $2, -0x4($1)
    /* F9FBC 001F903C 00000000 */  nop
    /* F9FC0 001F9040 25104F00 */  or         $2, $2, $15
    /* F9FC4 001F9044 FCFF22AC */  sw         $2, -0x4($1)
    /* F9FC8 001F9048 2D582003 */  daddu      $11, $25, $0
    /* F9FCC 001F904C 2D180003 */  daddu      $3, $24, $0
    /* F9FD0 001F9050 0020A948 */  qmtc2.ni   $9, $vf4
    /* F9FD4 001F9054 0421E34B */  vsubx.xyzw $vf4, $vf4, $vf3x
.align 2
  .L001F9058:
    /* F9FD8 001F9058 0000796D */  ldr        $25, 0x0($11)
    /* F9FDC 001F905C 00000000 */  nop
    /* F9FE0 001F9060 07007969 */  ldl        $25, 0x7($11)
    /* F9FE4 001F9064 00000000 */  nop
    /* F9FE8 001F9068 04006B21 */  addi       $11, $11, 0x4 /* handwritten instruction */
    /* F9FEC 001F906C FEFF6320 */  addi       $3, $3, -0x2 /* handwritten instruction */
    /* F9FF0 001F9070 38141900 */  dsll       $2, $25, 16
    /* F9FF4 001F9074 00000000 */  nop
    /* F9FF8 001F9078 88151970 */  pextlh     $2, $0, $25
    /* F9FFC 001F907C 00000000 */  nop
    /* FA000 001F9080 BC100270 */  psllw      $2, $2, 2
    /* FA004 001F9084 00000000 */  nop
    /* FA008 001F9088 0008A248 */  qmtc2.ni   $2, $vf1
    /* FA00C 001F908C 3EC81900 */  dsrl32     $25, $25, 0
    /* FA010 001F9090 07007969 */  ldl        $25, 0x7($11)
    /* FA014 001F9094 3ACC1900 */  dsrl       $25, $25, 16
    /* FA018 001F9098 08006B21 */  addi       $11, $11, 0x8 /* handwritten instruction */
    /* FA01C 001F909C 00000000 */  nop
    /* FA020 001F90A0 88151970 */  pextlh     $2, $0, $25
    /* FA024 001F90A4 00000000 */  nop
    /* FA028 001F90A8 BC100270 */  psllw      $2, $2, 2
    /* FA02C 001F90AC 00000000 */  nop
    /* FA030 001F90B0 3E09C14B */  vitof12.xyz $vf1, $vf1
    /* FA034 001F90B4 0010A248 */  qmtc2.ni   $2, $vf2
    /* FA038 001F90B8 3E11C24B */  vitof12.xyz $vf2, $vf2
    /* FA03C 001F90BC 6808C44B */  vadd.xyz   $vf1, $vf1, $vf4
    /* FA040 001F90C0 00082248 */  qmfc2.ni   $2, $vf1
    /* FA044 001F90C4 A810C44B */  vadd.xyz   $vf2, $vf2, $vf4
    /* FA048 001F90C8 000022AC */  sw         $2, 0x0($1)
    /* FA04C 001F90CC C9170270 */  prot3w     $2, $2
    /* FA050 001F90D0 040022AC */  sw         $2, 0x4($1)
    /* FA054 001F90D4 C9170270 */  prot3w     $2, $2
    /* FA058 001F90D8 080022AC */  sw         $2, 0x8($1)
    /* FA05C 001F90DC 00000000 */  nop
    /* FA060 001F90E0 00102248 */  qmfc2.ni   $2, $vf2
    /* FA064 001F90E4 00000000 */  nop
    /* FA068 001F90E8 0C0022AC */  sw         $2, 0xC($1)
    /* FA06C 001F90EC C9170270 */  prot3w     $2, $2
    /* FA070 001F90F0 100022AC */  sw         $2, 0x10($1)
    /* FA074 001F90F4 C9170270 */  prot3w     $2, $2
    /* FA078 001F90F8 140022AC */  sw         $2, 0x14($1)
    /* FA07C 001F90FC 00000000 */  nop
    /* FA080 001F9100 D5FF6014 */  bnez       $3, .L001F9058
    /* FA084 001F9104 18002124 */   addiu     $1, $1, 0x18
.align 2
  .L001F9108:
    /* FA088 001F9108 0F002330 */  andi       $3, $1, 0xF
    /* FA08C 001F910C 00000000 */  nop
    /* FA090 001F9110 04006010 */  beqz       $3, .L001F9124
    /* FA094 001F9114 000020AC */   sw        $0, 0x0($1)
    /* FA098 001F9118 00000000 */  nop
    /* FA09C 001F911C FAFF0010 */  b          .L001F9108
    /* FA0A0 001F9120 04002124 */   addiu     $1, $1, 0x4
.align 2
  .L001F9124:
    /* FA0A4 001F9124 0015023C */  lui        $2, (0x15000000 >> 16)
    /* FA0A8 001F9128 25104800 */  or         $2, $2, $8
    /* FA0AC 001F912C 000022AC */  sw         $2, 0x0($1)
    /* FA0B0 001F9130 0011023C */  lui        $2, (0x11000000 >> 16)
    /* FA0B4 001F9134 040022AC */  sw         $2, 0x4($1)
    /* FA0B8 001F9138 00000000 */  nop
    /* FA0BC 001F913C 080020FC */  sd         $0, 0x8($1)
    /* FA0C0 001F9140 10002124 */  addiu      $1, $1, 0x10
    /* FA0C4 001F9144 22102A00 */  sub        $2, $1, $10 /* handwritten instruction */
    /* FA0C8 001F9148 02110200 */  srl        $2, $2, 4
    /* FA0CC 001F914C 0000438D */  lw         $3, 0x0($10)
    /* FA0D0 001F9150 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* FA0D4 001F9154 25186200 */  or         $3, $3, $2
    /* FA0D8 001F9158 000043AD */  sw         $3, 0x0($10)
    /* FA0DC 001F915C 00A38227 */  addiu      $2, $28, -0x5D00
    /* FA0E0 001F9160 2D502000 */  daddu      $10, $1, $0
    /* FA0E4 001F9164 00004AAC */  sw         $10, 0x0($2)
    /* FA0E8 001F9168 FFFF1022 */  addi       $16, $16, -0x1 /* handwritten instruction */
    /* FA0EC 001F916C 00000000 */  nop
    /* FA0F0 001F9170 37FF0016 */  bnez       $16, .L001F8E50
    /* FA0F4 001F9174 00000000 */   nop
.align 2
  .L001F9178:
    /* FA0F8 001F9178 20003122 */  addi       $17, $17, 0x20 /* handwritten instruction */
    /* FA0FC 001F917C FFFF5222 */  addi       $18, $18, -0x1 /* handwritten instruction */
    /* FA100 001F9180 B4FE4016 */  bnez       $18, .L001F8C54
    /* FA104 001F9184 04009422 */   addi      $20, $20, 0x4 /* handwritten instruction */
    /* FA108 001F9188 0000B08F */  lw         $16, 0x0($29)
    /* FA10C 001F918C 00000000 */  nop
    /* FA110 001F9190 0400B18F */  lw         $17, 0x4($29)
    /* FA114 001F9194 00000000 */  nop
    /* FA118 001F9198 0800B28F */  lw         $18, 0x8($29)
    /* FA11C 001F919C 00000000 */  nop
    /* FA120 001F91A0 0C00B38F */  lw         $19, 0xC($29)
    /* FA124 001F91A4 00000000 */  nop
    /* FA128 001F91A8 1000B48F */  lw         $20, 0x10($29)
    /* FA12C 001F91AC 00000000 */  nop
    /* FA130 001F91B0 0800E003 */  jr         $31
    /* FA134 001F91B4 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001F8B6C
