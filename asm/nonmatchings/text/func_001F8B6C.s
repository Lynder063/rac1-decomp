/* Handwritten function */
nonmatching func_001F8B6C, 0x64C

glabel func_001F8B6C
    /* F9AEC 001F8B6C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F9AF0 001F8B70 00000000 */  nop
    /* F9AF4 001F8B74 0000B0AF */  sw         $s0, 0x0($sp)
    /* F9AF8 001F8B78 00000000 */  nop
    /* F9AFC 001F8B7C 0400B1AF */  sw         $s1, 0x4($sp)
    /* F9B00 001F8B80 00000000 */  nop
    /* F9B04 001F8B84 0800B2AF */  sw         $s2, 0x8($sp)
    /* F9B08 001F8B88 00000000 */  nop
    /* F9B0C 001F8B8C 0C00B3AF */  sw         $s3, 0xC($sp)
    /* F9B10 001F8B90 00000000 */  nop
    /* F9B14 001F8B94 1000B4AF */  sw         $s4, 0x10($sp)
    /* F9B18 001F8B98 00000000 */  nop
    /* F9B1C 001F8B9C 1000B4AF */  sw         $s4, 0x10($sp)
    /* F9B20 001F8BA0 00700D3C */  lui        $t5, (0x70002400 >> 16)
.align 2
  .L001F8BA4:
    /* F9B24 001F8BA4 0000428D */  lw         $v0, 0x0($t2)
    /* F9B28 001F8BA8 00014230 */  andi       $v0, $v0, 0x100
    /* F9B2C 001F8BAC 00000000 */  nop
    /* F9B30 001F8BB0 00000000 */  nop
    /* F9B34 001F8BB4 00000000 */  nop
    /* F9B38 001F8BB8 FAFF4014 */  bnez       $v0, .L001F8BA4
    /* F9B3C 001F8BBC 00000000 */   nop
    /* F9B40 001F8BC0 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* F9B44 001F8BC4 0080A148 */  qmtc2.ni   $at, $vf16
    /* F9B48 001F8BC8 803A013C */  lui        $at, (0x3A800000 >> 16)
    /* F9B4C 001F8BCC 0020A148 */  qmtc2.ni   $at, $vf4
    /* F9B50 001F8BD0 0024A121 */  addi       $at, $t5, (0x70002400 & 0xFFFF) /* handwritten instruction */
    /* F9B54 001F8BD4 0025A221 */  addi       $v0, $t5, (0x70002500 & 0xFFFF) /* handwritten instruction */
    /* F9B58 001F8BD8 0024A321 */  addi       $v1, $t5, (0x70002400 & 0xFFFF) /* handwritten instruction */
    /* F9B5C 001F8BDC 00000420 */  addi       $a0, $zero, 0x0 /* handwritten instruction */
.align 2
  alabel func_001F8BE0
    /* F9B60 001F8BE0 10002210 */  beq        $at, $v0, .L001F8C24
    /* F9B64 001F8BE4 100025DC */   ld        $a1, 0x10($at)
    /* F9B68 001F8BE8 00000000 */  nop
    /* F9B6C 001F8BEC 00000000 */  nop
    /* F9B70 001F8BF0 00000000 */  nop
    /* F9B74 001F8BF4 FAFFA010 */  beqz       $a1, func_001F8BE0
    /* F9B78 001F8BF8 20002120 */   addi      $at, $at, 0x20 /* handwritten instruction */
    /* F9B7C 001F8BFC F0FF21D8 */  lqc2       $vf1, -0x10($at)
    /* F9B80 001F8C00 E0FF22D8 */  lqc2       $vf2, -0x20($at)
    /* F9B84 001F8C04 BC03E14B */  vdiv       Q, $vf0w, $vf1w
    /* F9B88 001F8C08 100061F8 */  sqc2       $vf1, 0x10($v1)
    /* F9B8C 001F8C0C BF03004A */  vwaitq
    /* F9B90 001F8C10 9C00204A */  vmulq.w    $vf2, $vf0, Q
    /* F9B94 001F8C14 000062F8 */  sqc2       $vf2, 0x0($v1)
    /* F9B98 001F8C18 01008420 */  addi       $a0, $a0, 0x1 /* handwritten instruction */
    /* F9B9C 001F8C1C F8E20708 */  j          func_001F8BE0
    /* F9BA0 001F8C20 20006320 */   addi      $v1, $v1, 0x20 /* handwritten instruction */
.align 2
  .L001F8C24:
    /* F9BA4 001F8C24 89BB9770 */  pcpyld     $s7, $a0, $s7
    /* F9BA8 001F8C28 00000000 */  nop
    /* F9BAC 001F8C2C 1600113C */  lui        $s1, %hi(D_0015F57C)
    /* F9BB0 001F8C30 7CF53126 */  addiu      $s1, $s1, %lo(D_0015F57C)
    /* F9BB4 001F8C34 1600123C */  lui        $s2, %hi(D_0015F578)
    /* F9BB8 001F8C38 78F5528E */  lw         $s2, %lo(D_0015F578)($s2)
    /* F9BBC 001F8C3C 00000000 */  nop
    /* F9BC0 001F8C40 0000318E */  lw         $s1, 0x0($s1)
    /* F9BC4 001F8C44 00000000 */  nop
    /* F9BC8 001F8C48 1600143C */  lui        $s4, %hi(D_0015F580)
    /* F9BCC 001F8C4C 80F5948E */  lw         $s4, %lo(D_0015F580)($s4)
    /* F9BD0 001F8C50 00000000 */  nop
.align 2
  .L001F8C54:
    /* F9BD4 001F8C54 0000938E */  lw         $s3, 0x0($s4)
    /* F9BD8 001F8C58 00000000 */  nop
    /* F9BDC 001F8C5C 000021DA */  lqc2       $vf1, 0x0($s1)
    /* F9BE0 001F8C60 A91BE072 */  pcpyud     $v1, $s7, $zero
    /* F9BE4 001F8C64 3D006010 */  beqz       $v1, .L001F8D5C
    /* F9BE8 001F8C68 E803E04B */   vadd.xyzw $vf15, $vf0, $vf0
    /* F9BEC 001F8C6C 1024A2D9 */  lqc2       $vf2, (0x70002410 & 0xFFFF)($t5)
    /* F9BF0 001F8C70 0024A221 */  addi       $v0, $t5, (0x70002400 & 0xFFFF) /* handwritten instruction */
    /* F9BF4 001F8C74 0025A121 */  addi       $at, $t5, (0x70002500 & 0xFFFF) /* handwritten instruction */
    /* F9BF8 001F8C78 00000420 */  addi       $a0, $zero, 0x0 /* handwritten instruction */
    /* F9BFC 001F8C7C EC10C14B */  vsub.xyz   $vf3, $vf2, $vf1
    /* F9C00 001F8C80 00000000 */  nop
    /* F9C04 001F8C84 8301C04B */  vaddw.xyz  $vf6, $vf0, $vf0w
    /* F9C08 001F8C88 00000000 */  nop
    /* F9C0C 001F8C8C C701C04B */  vsubw.xyz  $vf7, $vf0, $vf0w
    /* F9C10 001F8C90 00000000 */  nop
.align 2
  alabel func_001F8C94
    /* F9C14 001F8C94 31006010 */  beqz       $v1, .L001F8D5C
    /* F9C18 001F8C98 EA18C34B */   vmul.xyz  $vf3, $vf3, $vf3
    /* F9C1C 001F8C9C 2A11224A */  vmul.w     $vf4, $vf2, $vf2
    /* F9C20 001F8CA0 20004220 */  addi       $v0, $v0, 0x20 /* handwritten instruction */
    /* F9C24 001F8CA4 100042D8 */  lqc2       $vf2, 0x10($v0)
    /* F9C28 001F8CA8 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* F9C2C 001F8CAC 3C18834A */  vaddax.y   ACC, $vf3, $vf3x
    /* F9C30 001F8CB0 00000000 */  nop
    /* F9C34 001F8CB4 BE30834A */  vmaddaz.y  ACC, $vf6, $vf3z
    /* F9C38 001F8CB8 00000000 */  nop
    /* F9C3C 001F8CBC 4B39844A */  vmaddw.y   $vf5, $vf7, $vf4w
    /* F9C40 001F8CC0 00000000 */  nop
    /* F9C44 001F8CC4 0802804A */  vmaddx.y   $vf8, $vf0, $vf0x
    /* F9C48 001F8CC8 00000000 */  nop
    /* F9C4C 001F8CCC EC10C14B */  vsub.xyz   $vf3, $vf2, $vf1
    /* F9C50 001F8CD0 00000000 */  nop
    /* F9C54 001F8CD4 00282548 */  qmfc2.ni   $a1, $vf5
    /* F9C58 001F8CD8 00000000 */  nop
    /* F9C5C 001F8CDC BD03884A */  .word      0x4A8803BD                    # vsqrt      Q, $vf8y # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F9C60 001F8CE0 00000000 */  nop
    /* F9C64 001F8CE4 EBFFA01C */  bgtz       $a1, func_001F8C94
    /* F9C68 001F8CE8 00000000 */   nop
    /* F9C6C 001F8CEC F0FF48D8 */  lqc2       $vf8, -0x10($v0)
    /* F9C70 001F8CF0 00000000 */  nop
    /* F9C74 001F8CF4 E0FF49D8 */  lqc2       $vf9, -0x20($v0)
    /* F9C78 001F8CF8 00000000 */  nop
    /* F9C7C 001F8CFC 2C0AC84B */  vsub.xyz   $vf8, $vf1, $vf8
    /* F9C80 001F8D00 FF02004A */  vnop
    /* F9C84 001F8D04 BF03004A */  vwaitq
    /* F9C88 001F8D08 00000000 */  nop
    /* F9C8C 001F8D0C 5C01204A */  vmulq.w    $vf5, $vf0, Q
    /* F9C90 001F8D10 00000000 */  nop
    /* F9C94 001F8D14 5C4A204A */  vmulq.w    $vf9, $vf9, Q
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
    /* F9CD0 001F8D50 01008420 */  addi       $a0, $a0, 0x1 /* handwritten instruction */
    /* F9CD4 001F8D54 25E30708 */  j          func_001F8C94
    /* F9CD8 001F8D58 20002120 */   addi      $at, $at, 0x20 /* handwritten instruction */
.align 2
  .L001F8D5C:
    /* F9CDC 001F8D5C 8300C04B */  vaddw.xyz  $vf2, $vf0, $vf0w
    /* F9CE0 001F8D60 00000000 */  nop
    /* F9CE4 001F8D64 D77B004B */  vminiw.x   $vf15, $vf15, $vf0w
    /* F9CE8 001F8D68 00000000 */  nop
    /* F9CEC 001F8D6C EC130F4B */  vsub.x     $vf15, $vf2, $vf15
    /* F9CF0 001F8D70 8043053C */  lui        $a1, (0x43800000 >> 16)
    /* F9CF4 001F8D74 0018A548 */  qmtc2.ni   $a1, $vf3
    /* F9CF8 001F8D78 00000000 */  nop
    /* F9CFC 001F8D7C D87BE34B */  vmulx.xyzw $vf15, $vf15, $vf3x
    /* F9D00 001F8D80 00000000 */  nop
    /* F9D04 001F8D84 7C79EF4B */  vftoi0.xyzw $vf15, $vf15
    /* F9D08 001F8D88 00000000 */  nop
    /* F9D0C 001F8D8C 00782148 */  qmfc2.ni   $at, $vf15
    /* F9D10 001F8D90 89B33670 */  pcpyld     $s6, $at, $s6
    /* F9D14 001F8D94 0000297A */  lq         $t1, 0x0($s1)
    /* F9D18 001F8D98 00000000 */  nop
    /* F9D1C 001F8D9C 1400228E */  lw         $v0, 0x14($s1)
    /* F9D20 001F8DA0 00000000 */  nop
    /* F9D24 001F8DA4 FFFF4630 */  andi       $a2, $v0, 0xFFFF
    /* F9D28 001F8DA8 00000000 */  nop
    /* F9D2C 001F8DAC F200C010 */  beqz       $a2, .L001F9178
    /* F9D30 001F8DB0 C2470200 */   srl       $t0, $v0, 31
    /* F9D34 001F8DB4 01000831 */  andi       $t0, $t0, 0x1
    /* F9D38 001F8DB8 40400800 */  sll        $t0, $t0, 1
    /* F9D3C 001F8DBC 1800248E */  lw         $a0, 0x18($s1)
    /* F9D40 001F8DC0 0C000825 */  addiu      $t0, $t0, 0xC
    /* F9D44 001F8DC4 1C00258E */  lw         $a1, 0x1C($s1)
    /* F9D48 001F8DC8 00000000 */  nop
    /* F9D4C 001F8DCC 00A39927 */  addiu      $t9, $gp, -0x5D00
    /* F9D50 001F8DD0 0000388F */  lw         $t8, 0x0($t9)
    /* F9D54 001F8DD4 00000000 */  nop
    /* F9D58 001F8DD8 1E00023C */  lui        $v0, %hi(D_001E0280)
    /* F9D5C 001F8DDC 80024224 */  addiu      $v0, $v0, %lo(D_001E0280)
    /* F9D60 001F8DE0 200044AC */  sw         $a0, 0x20($v0)
    /* F9D64 001F8DE4 00000000 */  nop
    /* F9D68 001F8DE8 240045AC */  sw         $a1, 0x24($v0)
    /* F9D6C 001F8DEC 00000000 */  nop
    /* F9D70 001F8DF0 00004C78 */  lq         $t4, 0x0($v0)
    /* F9D74 001F8DF4 00000000 */  nop
    /* F9D78 001F8DF8 10004E78 */  lq         $t6, 0x10($v0)
    /* F9D7C 001F8DFC 00000000 */  nop
    /* F9D80 001F8E00 20005078 */  lq         $s0, 0x20($v0)
    /* F9D84 001F8E04 00000000 */  nop
    /* F9D88 001F8E08 00000C7F */  sq         $t4, 0x0($t8)
    /* F9D8C 001F8E0C 00000000 */  nop
    /* F9D90 001F8E10 10000E7F */  sq         $t6, 0x10($t8)
    /* F9D94 001F8E14 00000000 */  nop
    /* F9D98 001F8E18 2000107F */  sq         $s0, 0x20($t8)
    /* F9D9C 001F8E1C 00000000 */  nop
    /* F9DA0 001F8E20 30001823 */  addi       $t8, $t8, 0x30 /* handwritten instruction */
    /* F9DA4 001F8E24 000038AF */  sw         $t8, 0x0($t9)
    /* F9DA8 001F8E28 2D286002 */  daddu      $a1, $s3, $zero
    /* F9DAC 001F8E2C 0000AC8C */  lw         $t4, 0x0($a1)
    /* F9DB0 001F8E30 FFFF8131 */  andi       $at, $t4, 0xFFFF
    /* F9DB4 001F8E34 1830C100 */  mult       $a2, $a2, $at
    /* F9DB8 001F8E38 A90BC072 */  pcpyud     $at, $s6, $zero
    /* F9DBC 001F8E3C 1830C100 */  mult       $a2, $a2, $at
    /* F9DC0 001F8E40 02340600 */  srl        $a2, $a2, 16
    /* F9DC4 001F8E44 02840C00 */  srl        $s0, $t4, 16
    /* F9DC8 001F8E48 0800A520 */  addi       $a1, $a1, 0x8 /* handwritten instruction */
    /* F9DCC 001F8E4C 00000000 */  nop
.align 2
  .L001F8E50:
    /* F9DD0 001F8E50 0F00A520 */  addi       $a1, $a1, 0xF /* handwritten instruction */
    /* F9DD4 001F8E54 00000000 */  nop
    /* F9DD8 001F8E58 F0FF0B24 */  addiu      $t3, $zero, -0x10
    /* F9DDC 001F8E5C 2428AB00 */  and        $a1, $a1, $t3
    /* F9DE0 001F8E60 0000B88C */  lw         $t8, 0x0($a1)
    /* F9DE4 001F8E64 0400A520 */  addi       $a1, $a1, 0x4 /* handwritten instruction */
    /* F9DE8 001F8E68 2DC8A000 */  daddu      $t9, $a1, $zero
    /* F9DEC 001F8E6C 43601800 */  sra        $t4, $t8, 1
    /* F9DF0 001F8E70 0C000B24 */  addiu      $t3, $zero, 0xC
    /* F9DF4 001F8E74 18608B01 */  mult       $t4, $t4, $t3
    /* F9DF8 001F8E78 2128AC00 */  addu       $a1, $a1, $t4
    /* F9DFC 001F8E7C 0F00A520 */  addi       $a1, $a1, 0xF /* handwritten instruction */
    /* F9E00 001F8E80 00000000 */  nop
    /* F9E04 001F8E84 F0FF0B24 */  addiu      $t3, $zero, -0x10
    /* F9E08 001F8E88 2428AB00 */  and        $a1, $a1, $t3
    /* F9E0C 001F8E8C 2D38A000 */  daddu      $a3, $a1, $zero
    /* F9E10 001F8E90 2D600003 */  daddu      $t4, $t8, $zero
    /* F9E14 001F8E94 04000B24 */  addiu      $t3, $zero, 0x4
    /* F9E18 001F8E98 18608B01 */  mult       $t4, $t4, $t3
    /* F9E1C 001F8E9C 2128AC00 */  addu       $a1, $a1, $t4
    /* F9E20 001F8EA0 00A38A27 */  addiu      $t2, $gp, -0x5D00
    /* F9E24 001F8EA4 00004A8D */  lw         $t2, 0x0($t2)
    /* F9E28 001F8EA8 00000000 */  nop
    /* F9E2C 001F8EAC 2D084001 */  daddu      $at, $t2, $zero
    /* F9E30 001F8EB0 007C1800 */  sll        $t7, $t8, 16
    /* F9E34 001F8EB4 1E000B3C */  lui        $t3, %hi(D_001E0220)
    /* F9E38 001F8EB8 20026B25 */  addiu      $t3, $t3, %lo(D_001E0220)
    /* F9E3C 001F8EBC 05000324 */  addiu      $v1, $zero, 0x5
    /* F9E40 001F8EC0 00000000 */  nop
.align 2
  .L001F8EC4:
    /* F9E44 001F8EC4 00006279 */  lq         $v0, 0x0($t3)
    /* F9E48 001F8EC8 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* F9E4C 001F8ECC 0000227C */  sq         $v0, 0x0($at)
    /* F9E50 001F8ED0 10006B25 */  addiu      $t3, $t3, 0x10
    /* F9E54 001F8ED4 00000000 */  nop
    /* F9E58 001F8ED8 FAFF6014 */  bnez       $v1, .L001F8EC4
    /* F9E5C 001F8EDC 10002124 */   addiu     $at, $at, 0x10
    /* F9E60 001F8EE0 C0FF228C */  lw         $v0, -0x40($at)
    /* F9E64 001F8EE4 00000000 */  nop
    /* F9E68 001F8EE8 25105800 */  or         $v0, $v0, $t8
    /* F9E6C 001F8EEC C0FF22AC */  sw         $v0, -0x40($at)
    /* F9E70 001F8EF0 0042023C */  lui        $v0, (0x42000000 >> 16)
    /* F9E74 001F8EF4 0018A248 */  qmtc2.ni   $v0, $vf3
    /* F9E78 001F8EF8 16000B3C */  lui        $t3, %hi(D_00160F00)
    /* F9E7C 001F8EFC 000F6B25 */  addiu      $t3, $t3, %lo(D_00160F00)
    /* F9E80 001F8F00 00000000 */  nop
    /* F9E84 001F8F04 00006279 */  lq         $v0, 0x0($t3)
    /* F9E88 001F8F08 00000000 */  nop
    /* F9E8C 001F8F0C 0000227C */  sq         $v0, 0x0($at)
    /* F9E90 001F8F10 10002124 */  addiu      $at, $at, 0x10
    /* F9E94 001F8F14 FCFF228C */  lw         $v0, -0x4($at)
    /* F9E98 001F8F18 25104F00 */  or         $v0, $v0, $t7
    /* F9E9C 001F8F1C FCFF22AC */  sw         $v0, -0x4($at)
    /* F9EA0 001F8F20 2D58E000 */  daddu      $t3, $a3, $zero
    /* F9EA4 001F8F24 2D180003 */  daddu      $v1, $t8, $zero
    /* F9EA8 001F8F28 00000000 */  nop
.align 2
  .L001F8F2C:
    /* F9EAC 001F8F2C 000062DD */  ld         $v0, 0x0($t3)
    /* F9EB0 001F8F30 FEFF6320 */  addi       $v1, $v1, -0x2 /* handwritten instruction */
    /* F9EB4 001F8F34 88150270 */  pextlh     $v0, $zero, $v0
    /* F9EB8 001F8F38 00000000 */  nop
    /* F9EBC 001F8F3C BC100270 */  psllw      $v0, $v0, 2
    /* F9EC0 001F8F40 00000000 */  nop
    /* F9EC4 001F8F44 0008A248 */  qmtc2.ni   $v0, $vf1
    /* F9EC8 001F8F48 3E09E14B */  vitof12.xyzw $vf1, $vf1
    /* F9ECC 001F8F4C 4408E34B */  vsubx.xyzw $vf1, $vf1, $vf3x
    /* F9ED0 001F8F50 00082248 */  qmfc2.ni   $v0, $vf1
    /* F9ED4 001F8F54 000022AC */  sw         $v0, 0x0($at)
    /* F9ED8 001F8F58 C9170270 */  prot3w     $v0, $v0
    /* F9EDC 001F8F5C 040022AC */  sw         $v0, 0x4($at)
    /* F9EE0 001F8F60 C9170270 */  prot3w     $v0, $v0
    /* F9EE4 001F8F64 080022AC */  sw         $v0, 0x8($at)
    /* F9EE8 001F8F68 A9134070 */  pcpyud     $v0, $v0, $zero
    /* F9EEC 001F8F6C C9170270 */  prot3w     $v0, $v0
    /* F9EF0 001F8F70 0C0022AC */  sw         $v0, 0xC($at)
    /* F9EF4 001F8F74 08006B25 */  addiu      $t3, $t3, 0x8
    /* F9EF8 001F8F78 ECFF6014 */  bnez       $v1, .L001F8F2C
    /* F9EFC 001F8F7C 10002124 */   addiu     $at, $at, 0x10
    /* F9F00 001F8F80 00000000 */  nop
.align 2
  .L001F8F84:
    /* F9F04 001F8F84 0F002330 */  andi       $v1, $at, 0xF
    /* F9F08 001F8F88 05006010 */  beqz       $v1, .L001F8FA0
    /* F9F0C 001F8F8C 000020AC */   sw        $zero, 0x0($at)
    /* F9F10 001F8F90 04002124 */  addiu      $at, $at, 0x4
    /* F9F14 001F8F94 00000000 */  nop
    /* F9F18 001F8F98 FAFF0010 */  b          .L001F8F84
    /* F9F1C 001F8F9C 00000000 */   nop
.align 2
  .L001F8FA0:
    /* F9F20 001F8FA0 16000B3C */  lui        $t3, %hi(D_00160F20)
    /* F9F24 001F8FA4 200F6B25 */  addiu      $t3, $t3, %lo(D_00160F20)
    /* F9F28 001F8FA8 00006279 */  lq         $v0, 0x0($t3)
    /* F9F2C 001F8FAC 00000000 */  nop
    /* F9F30 001F8FB0 0000227C */  sq         $v0, 0x0($at)
    /* F9F34 001F8FB4 10002124 */  addiu      $at, $at, 0x10
    /* F9F38 001F8FB8 FCFF228C */  lw         $v0, -0x4($at)
    /* F9F3C 001F8FBC 00000000 */  nop
    /* F9F40 001F8FC0 25104F00 */  or         $v0, $v0, $t7
    /* F9F44 001F8FC4 FCFF22AC */  sw         $v0, -0x4($at)
    /* F9F48 001F8FC8 2D58C000 */  daddu      $t3, $a2, $zero
    /* F9F4C 001F8FCC 2D180003 */  daddu      $v1, $t8, $zero
    /* F9F50 001F8FD0 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* F9F54 001F8FD4 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* F9F58 001F8FD8 00660600 */  sll        $t4, $a2, 24
    /* F9F5C 001F8FDC 25608201 */  or         $t4, $t4, $v0
    /* F9F60 001F8FE0 3C100C00 */  dsll32     $v0, $t4, 0
    /* F9F64 001F8FE4 25608201 */  or         $t4, $t4, $v0
.align 2
  .L001F8FE8:
    /* F9F68 001F8FE8 FEFF6320 */  addi       $v1, $v1, -0x2 /* handwritten instruction */
    /* F9F6C 001F8FEC 00002CFC */  sd         $t4, 0x0($at)
    /* F9F70 001F8FF0 00000000 */  nop
    /* F9F74 001F8FF4 00000000 */  nop
    /* F9F78 001F8FF8 00000000 */  nop
    /* F9F7C 001F8FFC FAFF6014 */  bnez       $v1, .L001F8FE8
    /* F9F80 001F9000 08002124 */   addiu     $at, $at, 0x8
.align 2
  .L001F9004:
    /* F9F84 001F9004 0F002330 */  andi       $v1, $at, 0xF
    /* F9F88 001F9008 05006010 */  beqz       $v1, .L001F9020
    /* F9F8C 001F900C 000020AC */   sw        $zero, 0x0($at)
    /* F9F90 001F9010 04002124 */  addiu      $at, $at, 0x4
    /* F9F94 001F9014 00000000 */  nop
    /* F9F98 001F9018 FAFF0010 */  b          .L001F9004
    /* F9F9C 001F901C 00000000 */   nop
.align 2
  .L001F9020:
    /* F9FA0 001F9020 16000B3C */  lui        $t3, %hi(D_00160F40)
    /* F9FA4 001F9024 400F6B25 */  addiu      $t3, $t3, %lo(D_00160F40)
    /* F9FA8 001F9028 00006279 */  lq         $v0, 0x0($t3)
    /* F9FAC 001F902C 00000000 */  nop
    /* F9FB0 001F9030 0000227C */  sq         $v0, 0x0($at)
    /* F9FB4 001F9034 10002124 */  addiu      $at, $at, 0x10
    /* F9FB8 001F9038 FCFF228C */  lw         $v0, -0x4($at)
    /* F9FBC 001F903C 00000000 */  nop
    /* F9FC0 001F9040 25104F00 */  or         $v0, $v0, $t7
    /* F9FC4 001F9044 FCFF22AC */  sw         $v0, -0x4($at)
    /* F9FC8 001F9048 2D582003 */  daddu      $t3, $t9, $zero
    /* F9FCC 001F904C 2D180003 */  daddu      $v1, $t8, $zero
    /* F9FD0 001F9050 0020A948 */  qmtc2.ni   $t1, $vf4
    /* F9FD4 001F9054 0421E34B */  vsubx.xyzw $vf4, $vf4, $vf3x
.align 2
  .L001F9058:
    /* F9FD8 001F9058 0000796D */  ldr        $t9, 0x0($t3)
    /* F9FDC 001F905C 00000000 */  nop
    /* F9FE0 001F9060 07007969 */  ldl        $t9, 0x7($t3)
    /* F9FE4 001F9064 00000000 */  nop
    /* F9FE8 001F9068 04006B21 */  addi       $t3, $t3, 0x4 /* handwritten instruction */
    /* F9FEC 001F906C FEFF6320 */  addi       $v1, $v1, -0x2 /* handwritten instruction */
    /* F9FF0 001F9070 38141900 */  dsll       $v0, $t9, 16
    /* F9FF4 001F9074 00000000 */  nop
    /* F9FF8 001F9078 88151970 */  pextlh     $v0, $zero, $t9
    /* F9FFC 001F907C 00000000 */  nop
    /* FA000 001F9080 BC100270 */  psllw      $v0, $v0, 2
    /* FA004 001F9084 00000000 */  nop
    /* FA008 001F9088 0008A248 */  qmtc2.ni   $v0, $vf1
    /* FA00C 001F908C 3EC81900 */  dsrl32     $t9, $t9, 0
    /* FA010 001F9090 07007969 */  ldl        $t9, 0x7($t3)
    /* FA014 001F9094 3ACC1900 */  dsrl       $t9, $t9, 16
    /* FA018 001F9098 08006B21 */  addi       $t3, $t3, 0x8 /* handwritten instruction */
    /* FA01C 001F909C 00000000 */  nop
    /* FA020 001F90A0 88151970 */  pextlh     $v0, $zero, $t9
    /* FA024 001F90A4 00000000 */  nop
    /* FA028 001F90A8 BC100270 */  psllw      $v0, $v0, 2
    /* FA02C 001F90AC 00000000 */  nop
    /* FA030 001F90B0 3E09C14B */  vitof12.xyz $vf1, $vf1
    /* FA034 001F90B4 0010A248 */  qmtc2.ni   $v0, $vf2
    /* FA038 001F90B8 3E11C24B */  vitof12.xyz $vf2, $vf2
    /* FA03C 001F90BC 6808C44B */  vadd.xyz   $vf1, $vf1, $vf4
    /* FA040 001F90C0 00082248 */  qmfc2.ni   $v0, $vf1
    /* FA044 001F90C4 A810C44B */  vadd.xyz   $vf2, $vf2, $vf4
    /* FA048 001F90C8 000022AC */  sw         $v0, 0x0($at)
    /* FA04C 001F90CC C9170270 */  prot3w     $v0, $v0
    /* FA050 001F90D0 040022AC */  sw         $v0, 0x4($at)
    /* FA054 001F90D4 C9170270 */  prot3w     $v0, $v0
    /* FA058 001F90D8 080022AC */  sw         $v0, 0x8($at)
    /* FA05C 001F90DC 00000000 */  nop
    /* FA060 001F90E0 00102248 */  qmfc2.ni   $v0, $vf2
    /* FA064 001F90E4 00000000 */  nop
    /* FA068 001F90E8 0C0022AC */  sw         $v0, 0xC($at)
    /* FA06C 001F90EC C9170270 */  prot3w     $v0, $v0
    /* FA070 001F90F0 100022AC */  sw         $v0, 0x10($at)
    /* FA074 001F90F4 C9170270 */  prot3w     $v0, $v0
    /* FA078 001F90F8 140022AC */  sw         $v0, 0x14($at)
    /* FA07C 001F90FC 00000000 */  nop
    /* FA080 001F9100 D5FF6014 */  bnez       $v1, .L001F9058
    /* FA084 001F9104 18002124 */   addiu     $at, $at, 0x18
.align 2
  .L001F9108:
    /* FA088 001F9108 0F002330 */  andi       $v1, $at, 0xF
    /* FA08C 001F910C 00000000 */  nop
    /* FA090 001F9110 04006010 */  beqz       $v1, .L001F9124
    /* FA094 001F9114 000020AC */   sw        $zero, 0x0($at)
    /* FA098 001F9118 00000000 */  nop
    /* FA09C 001F911C FAFF0010 */  b          .L001F9108
    /* FA0A0 001F9120 04002124 */   addiu     $at, $at, 0x4
.align 2
  .L001F9124:
    /* FA0A4 001F9124 0015023C */  lui        $v0, (0x15000000 >> 16)
    /* FA0A8 001F9128 25104800 */  or         $v0, $v0, $t0
    /* FA0AC 001F912C 000022AC */  sw         $v0, 0x0($at)
    /* FA0B0 001F9130 0011023C */  lui        $v0, (0x11000000 >> 16)
    /* FA0B4 001F9134 040022AC */  sw         $v0, 0x4($at)
    /* FA0B8 001F9138 00000000 */  nop
    /* FA0BC 001F913C 080020FC */  sd         $zero, 0x8($at)
    /* FA0C0 001F9140 10002124 */  addiu      $at, $at, 0x10
    /* FA0C4 001F9144 22102A00 */  sub        $v0, $at, $t2 /* handwritten instruction */
    /* FA0C8 001F9148 02110200 */  srl        $v0, $v0, 4
    /* FA0CC 001F914C 0000438D */  lw         $v1, 0x0($t2)
    /* FA0D0 001F9150 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* FA0D4 001F9154 25186200 */  or         $v1, $v1, $v0
    /* FA0D8 001F9158 000043AD */  sw         $v1, 0x0($t2)
    /* FA0DC 001F915C 00A38227 */  addiu      $v0, $gp, -0x5D00
    /* FA0E0 001F9160 2D502000 */  daddu      $t2, $at, $zero
    /* FA0E4 001F9164 00004AAC */  sw         $t2, 0x0($v0)
    /* FA0E8 001F9168 FFFF1022 */  addi       $s0, $s0, -0x1 /* handwritten instruction */
    /* FA0EC 001F916C 00000000 */  nop
    /* FA0F0 001F9170 37FF0016 */  bnez       $s0, .L001F8E50
    /* FA0F4 001F9174 00000000 */   nop
.align 2
  .L001F9178:
    /* FA0F8 001F9178 20003122 */  addi       $s1, $s1, 0x20 /* handwritten instruction */
    /* FA0FC 001F917C FFFF5222 */  addi       $s2, $s2, -0x1 /* handwritten instruction */
    /* FA100 001F9180 B4FE4016 */  bnez       $s2, .L001F8C54
    /* FA104 001F9184 04009422 */   addi      $s4, $s4, 0x4 /* handwritten instruction */
    /* FA108 001F9188 0000B08F */  lw         $s0, 0x0($sp)
    /* FA10C 001F918C 00000000 */  nop
    /* FA110 001F9190 0400B18F */  lw         $s1, 0x4($sp)
    /* FA114 001F9194 00000000 */  nop
    /* FA118 001F9198 0800B28F */  lw         $s2, 0x8($sp)
    /* FA11C 001F919C 00000000 */  nop
    /* FA120 001F91A0 0C00B38F */  lw         $s3, 0xC($sp)
    /* FA124 001F91A4 00000000 */  nop
    /* FA128 001F91A8 1000B48F */  lw         $s4, 0x10($sp)
    /* FA12C 001F91AC 00000000 */  nop
    /* FA130 001F91B0 0800E003 */  jr         $ra
    /* FA134 001F91B4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001F8B6C
