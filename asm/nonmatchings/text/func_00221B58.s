.align 3
nonmatching func_00221B58, 0x304

glabel func_00221B58
    /* 122AD8 00221B58 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 122ADC 00221B5C 2000B27F */  sq         $s2, 0x20($sp)
    /* 122AE0 00221B60 2D908000 */  daddu      $s2, $a0, $zero
    /* 122AE4 00221B64 5000B57F */  sq         $s5, 0x50($sp)
    /* 122AE8 00221B68 4000B47F */  sq         $s4, 0x40($sp)
    /* 122AEC 00221B6C 2D200000 */  daddu      $a0, $zero, $zero
    /* 122AF0 00221B70 3000B37F */  sq         $s3, 0x30($sp)
    /* 122AF4 00221B74 9000B8E7 */  swc1       $f24, 0x90($sp)
    /* 122AF8 00221B78 2D980000 */  daddu      $s3, $zero, $zero
    /* 122AFC 00221B7C 8800B7E7 */  swc1       $f23, 0x88($sp)
    /* 122B00 00221B80 8000B6E7 */  swc1       $f22, 0x80($sp)
    /* 122B04 00221B84 6000BF7F */  sq         $ra, 0x60($sp)
    /* 122B08 00221B88 1000B17F */  sq         $s1, 0x10($sp)
    /* 122B0C 00221B8C 0000B07F */  sq         $s0, 0x0($sp)
    /* 122B10 00221B90 7800B5E7 */  swc1       $f21, 0x78($sp)
    /* 122B14 00221B94 8CD1070C */  jal        func_001F4630
    /* 122B18 00221B98 7000B4E7 */   swc1      $f20, 0x70($sp)
    /* 122B1C 00221B9C 2400428E */  lw         $v0, 0x24($s2)
    /* 122B20 00221BA0 1800043C */  lui        $a0, %hi(D_001864D0)
    /* 122B24 00221BA4 2000438E */  lw         $v1, 0x20($s2)
    /* 122B28 00221BA8 D0649524 */  addiu      $s5, $a0, %lo(D_001864D0)
    /* 122B2C 00221BAC 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 122B30 00221BB0 00088144 */  mtc1       $at, $f1
    /* 122B34 00221BB4 00108244 */  mtc1       $v0, $f2
    /* 122B38 00221BB8 00000000 */  nop
    /* 122B3C 00221BBC A0108046 */  cvt.s.w    $f2, $f2
    /* 122B40 00221BC0 00208344 */  mtc1       $v1, $f4
    /* 122B44 00221BC4 00000000 */  nop
    /* 122B48 00221BC8 20218046 */  cvt.s.w    $f4, $f4
    /* 122B4C 00221BCC 2A206200 */  slt        $a0, $v1, $v0
    /* 122B50 00221BD0 0A184400 */  movz       $v1, $v0, $a0
    /* 122B54 00221BD4 2042013C */  lui        $at, (0x42200000 >> 16)
    /* 122B58 00221BD8 00188144 */  mtc1       $at, $f3
    /* 122B5C 00221BDC 00008344 */  mtc1       $v1, $f0
    /* 122B60 00221BE0 00000000 */  nop
    /* 122B64 00221BE4 20008046 */  cvt.s.w    $f0, $f0
    /* 122B68 00221BE8 1400023C */  lui        $v0, %hi(D_0013E620)
    /* 122B6C 00221BEC 02260146 */  mul.s      $f24, $f4, $f1
    /* 122B70 00221BF0 20E65424 */  addiu      $s4, $v0, %lo(D_0013E620)
    /* 122B74 00221BF4 C2150146 */  mul.s      $f23, $f2, $f1
    /* 122B78 00221BF8 02000146 */  mul.s      $f0, $f0, $f1
    /* 122B7C 00221BFC 81050346 */  sub.s      $f22, $f0, $f3
.align 2
  .L00221C00:
    /* 122B80 00221C00 00609344 */  mtc1       $s3, $f12
    /* 122B84 00221C04 00000000 */  nop
    /* 122B88 00221C08 20638046 */  cvt.s.w    $f12, $f12
    /* 122B8C 00221C0C 493F013C */  lui        $at, (0x3F490FDB >> 16)
    /* 122B90 00221C10 DB0F2134 */  ori        $at, $at, (0x3F490FDB & 0xFFFF)
    /* 122B94 00221C14 00008144 */  mtc1       $at, $f0
    /* 122B98 00221C18 C9BF013C */  lui        $at, (0xBFC90FDB >> 16)
    /* 122B9C 00221C1C DB0F2134 */  ori        $at, $at, (0xBFC90FDB & 0xFFFF)
    /* 122BA0 00221C20 00088144 */  mtc1       $at, $f1
    /* 122BA4 00221C24 02630046 */  mul.s      $f12, $f12, $f0
    /* 122BA8 00221C28 F6E9070C */  jal        func_001FA7D8
    /* 122BAC 00221C2C 00630146 */   add.s     $f12, $f12, $f1
    /* 122BB0 00221C30 06050046 */  mov.s      $f20, $f0
    /* 122BB4 00221C34 E4E7070C */  jal        func_001F9F90
    /* 122BB8 00221C38 06A30046 */   mov.s     $f12, $f20
    /* 122BBC 00221C3C 02001646 */  mul.s      $f0, $f0, $f22
    /* 122BC0 00221C40 06A30046 */  mov.s      $f12, $f20
    /* 122BC4 00221C44 EAE7070C */  jal        func_001F9FA8
    /* 122BC8 00221C48 00C50046 */   add.s     $f20, $f24, $f0
    /* 122BCC 00221C4C 02001646 */  mul.s      $f0, $f0, $f22
    /* 122BD0 00221C50 5000428E */  lw         $v0, 0x50($s2)
    /* 122BD4 00221C54 1F006216 */  bne        $s3, $v0, .L00221CD4
    /* 122BD8 00221C58 40BD0046 */   add.s     $f21, $f23, $f0
    /* 122BDC 00221C5C 1600043C */  lui        $a0, %hi(D_0015F538)
    /* 122BE0 00221C60 38F5848C */  lw         $a0, %lo(D_0015F538)($a0)
    /* 122BE4 00221C64 24A00046 */  .word      0x4600A024                    # cvt.w.s    $f0, $f20 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 122BE8 00221C68 00001044 */  mfc1       $s0, $f0
    /* 122BEC 00221C6C 24A80046 */  .word      0x4600A824                    # cvt.w.s    $f0, $f21 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 122BF0 00221C70 00001144 */  mfc1       $s1, $f0
    /* 122BF4 00221C74 3F008430 */  andi       $a0, $a0, 0x3F
    /* 122BF8 00221C78 DCE6070C */  jal        func_001F9B70
    /* 122BFC 00221C7C E0FF8424 */   addiu     $a0, $a0, -0x20
    /* 122C00 00221C80 0100033C */  lui        $v1, (0x10202 >> 16)
    /* 122C04 00221C84 40004224 */  addiu      $v0, $v0, 0x40
    /* 122C08 00221C88 02026334 */  ori        $v1, $v1, (0x10202 & 0xFFFF)
    /* 122C0C 00221C8C 0080083C */  lui        $t0, (0x80000000 >> 16)
    /* 122C10 00221C90 18104300 */  mult       $v0, $v0, $v1
    /* 122C14 00221C94 EDFF0426 */  addiu      $a0, $s0, -0x13
    /* 122C18 00221C98 EDFF2526 */  addiu      $a1, $s1, -0x13
    /* 122C1C 00221C9C 13000626 */  addiu      $a2, $s0, 0x13
    /* 122C20 00221CA0 13002726 */  addiu      $a3, $s1, 0x13
    /* 122C24 00221CA4 2D480000 */  daddu      $t1, $zero, $zero
    /* 122C28 00221CA8 25104800 */  or         $v0, $v0, $t0
    /* 122C2C 00221CAC 3C100200 */  dsll32     $v0, $v0, 0
    /* 122C30 00221CB0 9005080C */  jal        func_00201640
    /* 122C34 00221CB4 3E400200 */   dsrl32    $t0, $v0, 0
    /* 122C38 00221CB8 B095888F */  lw         $t0, -0x6A50($gp)
    /* 122C3C 00221CBC 12000626 */  addiu      $a2, $s0, 0x12
    /* 122C40 00221CC0 12002726 */  addiu      $a3, $s1, 0x12
    /* 122C44 00221CC4 EEFF0426 */  addiu      $a0, $s0, -0x12
    /* 122C48 00221CC8 EEFF2526 */  addiu      $a1, $s1, -0x12
    /* 122C4C 00221CCC 9005080C */  jal        func_00201640
    /* 122C50 00221CD0 2D480000 */   daddu     $t1, $zero, $zero
.align 2
  .L00221CD4:
    /* 122C54 00221CD4 80101300 */  sll        $v0, $s3, 2
    /* 122C58 00221CD8 21104202 */  addu       $v0, $s2, $v0
    /* 122C5C 00221CDC 3000448C */  lw         $a0, 0x30($v0)
    /* 122C60 00221CE0 0F008014 */  bnez       $a0, .L00221D20
    /* 122C64 00221CE4 4C000224 */   addiu     $v0, $zero, 0x4C
    /* 122C68 00221CE8 24A00046 */  .word      0x4600A024                    # cvt.w.s    $f0, $f20 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 122C6C 00221CEC 00000444 */  mfc1       $a0, $f0
    /* 122C70 00221CF0 4040083C */  lui        $t0, (0x40404040 >> 16)
    /* 122C74 00221CF4 40400835 */  ori        $t0, $t0, (0x40404040 & 0xFFFF)
    /* 122C78 00221CF8 24A80046 */  .word      0x4600A824                    # cvt.w.s    $f0, $f21 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 122C7C 00221CFC 00000544 */  mfc1       $a1, $f0
    /* 122C80 00221D00 2D480000 */  daddu      $t1, $zero, $zero
    /* 122C84 00221D04 0F008624 */  addiu      $a2, $a0, 0xF
    /* 122C88 00221D08 0F00A724 */  addiu      $a3, $a1, 0xF
    /* 122C8C 00221D0C F1FF8424 */  addiu      $a0, $a0, -0xF
    /* 122C90 00221D10 9005080C */  jal        func_00201640
    /* 122C94 00221D14 F1FFA524 */   addiu     $a1, $a1, -0xF
    /* 122C98 00221D18 15000010 */  b          .L00221D70
    /* 122C9C 00221D1C 01007326 */   addiu     $s3, $s3, 0x1
.align 2
  .L00221D20:
    /* 122CA0 00221D20 21189400 */  addu       $v1, $a0, $s4
    /* 122CA4 00221D24 18288200 */  mult       $a1, $a0, $v0
    /* 122CA8 00221D28 00006490 */  lbu        $a0, 0x0($v1)
    /* 122CAC 00221D2C 2110B500 */  addu       $v0, $a1, $s5
    /* 122CB0 00221D30 04000524 */  addiu      $a1, $zero, 0x4
    /* 122CB4 00221D34 0A280400 */  movz       $a1, $zero, $a0
    /* 122CB8 00221D38 6600080C */  jal        func_00200198
    /* 122CBC 00221D3C 38004494 */   lhu       $a0, 0x38($v0)
    /* 122CC0 00221D40 2D204000 */  daddu      $a0, $v0, $zero
    /* 122CC4 00221D44 24A00046 */  .word      0x4600A024                    # cvt.w.s    $f0, $f20 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 122CC8 00221D48 00000544 */  mfc1       $a1, $f0
    /* 122CCC 00221D4C 24A80046 */  .word      0x4600A824                    # cvt.w.s    $f0, $f21 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 122CD0 00221D50 00000644 */  mfc1       $a2, $f0
    /* 122CD4 00221D54 20000724 */  addiu      $a3, $zero, 0x20
    /* 122CD8 00221D58 20000824 */  addiu      $t0, $zero, 0x20
    /* 122CDC 00221D5C 80000924 */  addiu      $t1, $zero, 0x80
    /* 122CE0 00221D60 EFFFA524 */  addiu      $a1, $a1, -0x11
    /* 122CE4 00221D64 1A01080C */  jal        func_00200468
    /* 122CE8 00221D68 EFFFC624 */   addiu     $a2, $a2, -0x11
    /* 122CEC 00221D6C 01007326 */  addiu      $s3, $s3, 0x1
.align 2
  .L00221D70:
    /* 122CF0 00221D70 0800622A */  slti       $v0, $s3, 0x8
    /* 122CF4 00221D74 A2FF4014 */  bnez       $v0, .L00221C00
    /* 122CF8 00221D78 9EE90434 */   ori       $a0, $zero, 0xE99E
    /* 122CFC 00221D7C 6600080C */  jal        func_00200198
    /* 122D00 00221D80 2D280000 */   daddu     $a1, $zero, $zero
    /* 122D04 00221D84 2D204000 */  daddu      $a0, $v0, $zero
    /* 122D08 00221D88 27000624 */  addiu      $a2, $zero, 0x27
    /* 122D0C 00221D8C 20000724 */  addiu      $a3, $zero, 0x20
    /* 122D10 00221D90 E0FF0824 */  addiu      $t0, $zero, -0x20
    /* 122D14 00221D94 80000924 */  addiu      $t1, $zero, 0x80
    /* 122D18 00221D98 1A01080C */  jal        func_00200468
    /* 122D1C 00221D9C 08000524 */   addiu     $a1, $zero, 0x8
    /* 122D20 00221DA0 2D280000 */  daddu      $a1, $zero, $zero
    /* 122D24 00221DA4 6600080C */  jal        func_00200198
    /* 122D28 00221DA8 9EE90434 */   ori       $a0, $zero, 0xE99E
    /* 122D2C 00221DAC 2000458E */  lw         $a1, 0x20($s2)
    /* 122D30 00221DB0 2D204000 */  daddu      $a0, $v0, $zero
    /* 122D34 00221DB4 80000924 */  addiu      $t1, $zero, 0x80
    /* 122D38 00221DB8 E0FF0724 */  addiu      $a3, $zero, -0x20
    /* 122D3C 00221DBC 27000624 */  addiu      $a2, $zero, 0x27
    /* 122D40 00221DC0 F6FFA524 */  addiu      $a1, $a1, -0xA
    /* 122D44 00221DC4 1A01080C */  jal        func_00200468
    /* 122D48 00221DC8 E0FF0824 */   addiu     $t0, $zero, -0x20
    /* 122D4C 00221DCC 1600073C */  lui        $a3, %hi(D_001603D8)
    /* 122D50 00221DD0 28000424 */  addiu      $a0, $zero, 0x28
    /* 122D54 00221DD4 D803E724 */  addiu      $a3, $a3, %lo(D_001603D8)
    /* 122D58 00221DD8 0F000524 */  addiu      $a1, $zero, 0xF
    /* 122D5C 00221DDC FF800634 */  ori        $a2, $zero, 0x80FF
    /* 122D60 00221DE0 38340600 */  dsll       $a2, $a2, 16
    /* 122D64 00221DE4 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 122D68 00221DE8 3ADA070C */  jal        func_001F68E8
    /* 122D6C 00221DEC FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 122D70 00221DF0 2000448E */  lw         $a0, 0x20($s2)
    /* 122D74 00221DF4 1600073C */  lui        $a3, %hi(D_001603E0)
    /* 122D78 00221DF8 E003E724 */  addiu      $a3, $a3, %lo(D_001603E0)
    /* 122D7C 00221DFC 0F000524 */  addiu      $a1, $zero, 0xF
    /* 122D80 00221E00 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 122D84 00221E04 38340600 */  dsll       $a2, $a2, 16
    /* 122D88 00221E08 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 122D8C 00221E0C C4FF8424 */  addiu      $a0, $a0, -0x3C
    /* 122D90 00221E10 3ADA070C */  jal        func_001F68E8
    /* 122D94 00221E14 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 122D98 00221E18 D2D1070C */  jal        func_001F4748
    /* 122D9C 00221E1C 00000000 */   nop
    /* 122DA0 00221E20 6000BF7B */  lq         $ra, 0x60($sp)
    /* 122DA4 00221E24 02000224 */  addiu      $v0, $zero, 0x2
    /* 122DA8 00221E28 5000B57B */  lq         $s5, 0x50($sp)
    /* 122DAC 00221E2C 4000B47B */  lq         $s4, 0x40($sp)
    /* 122DB0 00221E30 3000B37B */  lq         $s3, 0x30($sp)
    /* 122DB4 00221E34 2000B27B */  lq         $s2, 0x20($sp)
    /* 122DB8 00221E38 1000B17B */  lq         $s1, 0x10($sp)
    /* 122DBC 00221E3C 0000B07B */  lq         $s0, 0x0($sp)
    /* 122DC0 00221E40 9000B8C7 */  lwc1       $f24, 0x90($sp)
    /* 122DC4 00221E44 8800B7C7 */  lwc1       $f23, 0x88($sp)
    /* 122DC8 00221E48 8000B6C7 */  lwc1       $f22, 0x80($sp)
    /* 122DCC 00221E4C 7800B5C7 */  lwc1       $f21, 0x78($sp)
    /* 122DD0 00221E50 7000B4C7 */  lwc1       $f20, 0x70($sp)
    /* 122DD4 00221E54 0800E003 */  jr         $ra
    /* 122DD8 00221E58 A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_00221B58
    /* 122DDC 00221E5C 00000000 */  nop
