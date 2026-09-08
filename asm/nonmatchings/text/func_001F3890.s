.align 3
nonmatching func_001F3890, 0x300

glabel func_001F3890
    /* F4810 001F3890 30FFBD27 */  addiu      $sp, $sp, -0xD0
    /* F4814 001F3894 2D200000 */  daddu      $a0, $zero, $zero
    /* F4818 001F3898 C000BF7F */  sq         $ra, 0xC0($sp)
    /* F481C 001F389C B000B57F */  sq         $s5, 0xB0($sp)
    /* F4820 001F38A0 A000B47F */  sq         $s4, 0xA0($sp)
    /* F4824 001F38A4 9000B37F */  sq         $s3, 0x90($sp)
    /* F4828 001F38A8 8000B27F */  sq         $s2, 0x80($sp)
    /* F482C 001F38AC 7000B17F */  sq         $s1, 0x70($sp)
    /* F4830 001F38B0 6063040C */  jal        func_00118D80
    /* F4834 001F38B4 6000B07F */   sq        $s0, 0x60($sp)
    /* F4838 001F38B8 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* F483C 001F38BC 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* F4840 001F38C0 14004010 */  beqz       $v0, .L001F3914
    /* F4844 001F38C4 1000023C */   lui       $v0, (0x100000 >> 16)
    /* F4848 001F38C8 2C00053C */  lui        $a1, (0x2C0000 >> 16)
    /* F484C 001F38CC 1E00033C */  lui        $v1, (0x1E0000 >> 16)
    /* F4850 001F38D0 1600013C */  lui        $at, %hi(D_0015EF8C)
    /* F4854 001F38D4 8CEF25AC */  sw         $a1, %lo(D_0015EF8C)($at)
    /* F4858 001F38D8 1600013C */  lui        $at, %hi(D_0015EF84)
    /* F485C 001F38DC 84EF22AC */  sw         $v0, %lo(D_0015EF84)($at)
    /* F4860 001F38E0 00020424 */  addiu      $a0, $zero, 0x200
    /* F4864 001F38E4 1600013C */  lui        $at, %hi(D_0015EF88)
    /* F4868 001F38E8 88EF23AC */  sw         $v1, %lo(D_0015EF88)($at)
    /* F486C 001F38EC C0010524 */  addiu      $a1, $zero, 0x1C0
    /* F4870 001F38F0 1600013C */  lui        $at, %hi(D_0015EF80)
    /* F4874 001F38F4 80EF20AC */  sw         $zero, %lo(D_0015EF80)($at)
    /* F4878 001F38F8 00020624 */  addiu      $a2, $zero, 0x200
    /* F487C 001F38FC 00020724 */  addiu      $a3, $zero, 0x200
    /* F4880 001F3900 04000824 */  addiu      $t0, $zero, 0x4
    /* F4884 001F3904 D0EA070C */  jal        func_001FAB40
    /* F4888 001F3908 2D480000 */   daddu     $t1, $zero, $zero
    /* F488C 001F390C 14000010 */  b          .L001F3960
    /* F4890 001F3910 1500123C */   lui       $s2, %hi(D_00151880)
.align 2
  .L001F3914:
    /* F4894 001F3914 2800053C */  lui        $a1, (0x280000 >> 16)
    /* F4898 001F3918 0E00023C */  lui        $v0, (0xE0000 >> 16)
    /* F489C 001F391C 1B00033C */  lui        $v1, (0x1B0000 >> 16)
    /* F48A0 001F3920 1600013C */  lui        $at, %hi(D_0015EF8C)
    /* F48A4 001F3924 8CEF25AC */  sw         $a1, %lo(D_0015EF8C)($at)
    /* F48A8 001F3928 1600013C */  lui        $at, %hi(D_0015EF84)
    /* F48AC 001F392C 84EF22AC */  sw         $v0, %lo(D_0015EF84)($at)
    /* F48B0 001F3930 00020424 */  addiu      $a0, $zero, 0x200
    /* F48B4 001F3934 1600013C */  lui        $at, %hi(D_0015EF88)
    /* F48B8 001F3938 88EF23AC */  sw         $v1, %lo(D_0015EF88)($at)
    /* F48BC 001F393C A0010524 */  addiu      $a1, $zero, 0x1A0
    /* F48C0 001F3940 1600013C */  lui        $at, %hi(D_0015EF80)
    /* F48C4 001F3944 80EF20AC */  sw         $zero, %lo(D_0015EF80)($at)
    /* F48C8 001F3948 00020624 */  addiu      $a2, $zero, 0x200
    /* F48CC 001F394C C0010724 */  addiu      $a3, $zero, 0x1C0
    /* F48D0 001F3950 2D400000 */  daddu      $t0, $zero, $zero
    /* F48D4 001F3954 D0EA070C */  jal        func_001FAB40
    /* F48D8 001F3958 2D480000 */   daddu     $t1, $zero, $zero
    /* F48DC 001F395C 1500123C */  lui        $s2, %hi(D_00151880)
.align 2
  .L001F3960:
    /* F48E0 001F3960 00080624 */  addiu      $a2, $zero, 0x800
    /* F48E4 001F3964 80185226 */  addiu      $s2, $s2, %lo(D_00151880)
    /* F48E8 001F3968 1400113C */  lui        $s1, %hi(D_0013E600)
    /* F48EC 001F396C 52014296 */  lhu        $v0, 0x152($s2)
    /* F48F0 001F3970 00E63026 */  addiu      $s0, $s1, %lo(D_0013E600)
    /* F48F4 001F3974 50014396 */  lhu        $v1, 0x150($s2)
    /* F48F8 001F3978 2D200000 */  daddu      $a0, $zero, $zero
    /* F48FC 001F397C 00140200 */  sll        $v0, $v0, 16
    /* F4900 001F3980 1900133C */  lui        $s3, %hi(D_001942C0)
    /* F4904 001F3984 43540200 */  sra        $t2, $v0, 17
    /* F4908 001F3988 001C0300 */  sll        $v1, $v1, 16
    /* F490C 001F398C 434C0300 */  sra        $t1, $v1, 17
    /* F4910 001F3990 2328CA00 */  subu       $a1, $a2, $t2
    /* F4914 001F3994 00082825 */  addiu      $t0, $t1, 0x800
    /* F4918 001F3998 00084725 */  addiu      $a3, $t2, 0x800
    /* F491C 001F399C 2330C900 */  subu       $a2, $a2, $t1
    /* F4920 001F39A0 031C0300 */  sra        $v1, $v1, 16
    /* F4924 001F39A4 00E623AE */  sw         $v1, %lo(D_0013E600)($s1)
    /* F4928 001F39A8 00310600 */  sll        $a2, $a2, 4
    /* F492C 001F39AC 00410800 */  sll        $t0, $t0, 4
    /* F4930 001F39B0 00390700 */  sll        $a3, $a3, 4
    /* F4934 001F39B4 00290500 */  sll        $a1, $a1, 4
    /* F4938 001F39B8 03140200 */  sra        $v0, $v0, 16
    /* F493C 001F39BC 100006AE */  sw         $a2, 0x10($s0)
    /* F4940 001F39C0 2DA86002 */  daddu      $s5, $s3, $zero
    /* F4944 001F39C4 180008AE */  sw         $t0, 0x18($s0)
    /* F4948 001F39C8 2DA00000 */  daddu      $s4, $zero, $zero
    /* F494C 001F39CC 1C0007AE */  sw         $a3, 0x1C($s0)
    /* F4950 001F39D0 080009AE */  sw         $t1, 0x8($s0)
    /* F4954 001F39D4 0C000AAE */  sw         $t2, 0xC($s0)
    /* F4958 001F39D8 040002AE */  sw         $v0, 0x4($s0)
    /* F495C 001F39DC 6063040C */  jal        func_00118D80
    /* F4960 001F39E0 140005AE */   sw        $a1, 0x14($s0)
    /* F4964 001F39E4 2D280000 */  daddu      $a1, $zero, $zero
    /* F4968 001F39E8 1682040C */  jal        func_00120858
    /* F496C 001F39EC 2D200000 */   daddu     $a0, $zero, $zero
    /* F4970 001F39F0 0400028E */  lw         $v0, 0x4($s0)
    /* F4974 001F39F4 0001043C */  lui        $a0, (0x1000000 >> 16)
    /* F4978 001F39F8 00E6268E */  lw         $a2, %lo(D_0013E600)($s1)
    /* F497C 001F39FC 1400033C */  lui        $v1, %hi(D_0013D010)
    /* F4980 001F3A00 1600053C */  lui        $a1, %hi(D_0015EF88)
    /* F4984 001F3A04 88EFA58C */  lw         $a1, %lo(D_0015EF88)($a1)
    /* F4988 001F3A08 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* F498C 001F3A0C 1400088E */  lw         $t0, 0x14($s0)
    /* F4990 001F3A10 FFFFCA24 */  addiu      $t2, $a2, -0x1
    /* F4994 001F3A14 432B0500 */  sra        $a1, $a1, 13
    /* F4998 001F3A18 10000C8E */  lw         $t4, 0x10($s0)
    /* F499C 001F3A1C 1600093C */  lui        $t1, %hi(D_0015EF84)
    /* F49A0 001F3A20 84EF298D */  lw         $t1, %lo(D_0015EF84)($t1)
    /* F49A4 001F3A24 2528A400 */  or         $a1, $a1, $a0
    /* F49A8 001F3A28 3C140200 */  dsll32     $v0, $v0, 16
    /* F49AC 001F3A2C 38540A00 */  dsll       $t2, $t2, 16
    /* F49B0 001F3A30 16000D3C */  lui        $t5, %hi(D_0015EF8C)
    /* F49B4 001F3A34 8CEFAD8D */  lw         $t5, %lo(D_0015EF8C)($t5)
    /* F49B8 001F3A38 10D06324 */  addiu      $v1, $v1, %lo(D_0013D010)
    /* F49BC 001F3A3C 25504201 */  or         $t2, $t2, $v0
    /* F49C0 001F3A40 2D380001 */  daddu      $a3, $t0, $zero
    /* F49C4 001F3A44 BB310600 */  dsra       $a2, $a2, 6
    /* F49C8 001F3A48 00800434 */  ori        $a0, $zero, 0x8000
    /* F49CC 001F3A4C 78240400 */  dsll       $a0, $a0, 17
    /* F49D0 001F3A50 80006AFC */  sd         $t2, 0x80($v1)
    /* F49D4 001F3A54 3C400800 */  dsll32     $t0, $t0, 0
    /* F49D8 001F3A58 3C380700 */  dsll32     $a3, $a3, 0
    /* F49DC 001F3A5C 2520A400 */  or         $a0, $a1, $a0
    /* F49E0 001F3A60 1400023C */  lui        $v0, %hi(D_0013D270)
    /* F49E4 001F3A64 2D588001 */  daddu      $t3, $t4, $zero
    /* F49E8 001F3A68 38340600 */  dsll       $a2, $a2, 16
    /* F49EC 001F3A6C 7B4B0900 */  dsra       $t1, $t1, 13
    /* F49F0 001F3A70 1600013C */  lui        $at, %hi(D_0015EF78)
    /* F49F4 001F3A74 78EF2DAC */  sw         $t5, %lo(D_0015EF78)($at)
    /* F49F8 001F3A78 25482601 */  or         $t1, $t1, $a2
    /* F49FC 001F3A7C 70D244FC */  sd         $a0, %lo(D_0013D270)($v0)
    /* F4A00 001F3A80 25608801 */  or         $t4, $t4, $t0
    /* F4A04 001F3A84 25586701 */  or         $t3, $t3, $a3
    /* F4A08 001F3A88 200069FC */  sd         $t1, 0x20($v1)
    /* F4A0C 001F3A8C 50006CFC */  sd         $t4, 0x50($v1)
    /* F4A10 001F3A90 1400063C */  lui        $a2, %hi(D_0013D200)
    /* F4A14 001F3A94 60006BFC */  sd         $t3, 0x60($v1)
    /* F4A18 001F3A98 2D200000 */  daddu      $a0, $zero, $zero
    /* F4A1C 001F3A9C 00D2C5FC */  sd         $a1, %lo(D_0013D200)($a2)
    /* F4A20 001F3AA0 1600013C */  lui        $at, %hi(D_0015EF74)
    /* F4A24 001F3AA4 74EF2DAC */  sw         $t5, %lo(D_0015EF74)($at)
    /* F4A28 001F3AA8 300065FC */  sd         $a1, 0x30($v1)
    /* F4A2C 001F3AAC 400065FC */  sd         $a1, 0x40($v1)
    /* F4A30 001F3AB0 100069FC */  sd         $t1, 0x10($v1)
    /* F4A34 001F3AB4 6063040C */  jal        func_00118D80
    /* F4A38 001F3AB8 70006AFC */   sd        $t2, 0x70($v1)
    /* F4A3C 001F3ABC 26ED070C */  jal        func_001FB498
    /* F4A40 001F3AC0 00000000 */   nop
    /* F4A44 001F3AC4 4CED070C */  jal        func_001FB530
    /* F4A48 001F3AC8 00000000 */   nop
    /* F4A4C 001F3ACC 6063040C */  jal        func_00118D80
    /* F4A50 001F3AD0 2D200000 */   daddu     $a0, $zero, $zero
    /* F4A54 001F3AD4 2D200000 */  daddu      $a0, $zero, $zero
    /* F4A58 001F3AD8 1682040C */  jal        func_00120858
    /* F4A5C 001F3ADC 2D280000 */   daddu     $a1, $zero, $zero
    /* F4A60 001F3AE0 1CED070C */  jal        func_001FB470
    /* F4A64 001F3AE4 00000000 */   nop
    /* F4A68 001F3AE8 C0426426 */  addiu      $a0, $s3, %lo(D_001942C0)
    /* F4A6C 001F3AEC 2D280000 */  daddu      $a1, $zero, $zero
    /* F4A70 001F3AF0 6CE6070C */  jal        func_001F99B0
    /* F4A74 001F3AF4 00100624 */   addiu     $a2, $zero, 0x1000
    /* F4A78 001F3AF8 5A014386 */  lh         $v1, 0x15A($s2)
    /* F4A7C 001F3AFC 58014286 */  lh         $v0, 0x158($s2)
    /* F4A80 001F3B00 18104300 */  mult       $v0, $v0, $v1
    /* F4A84 001F3B04 83820200 */  sra        $s0, $v0, 10
    /* F4A88 001F3B08 1900001A */  blez       $s0, .L001F3B70
    /* F4A8C 001F3B0C C000BF7B */   lq        $ra, 0xC0($sp)
    /* F4A90 001F3B10 002D1400 */  sll        $a1, $s4, 20
    /* F4A94 001F3B14 00000000 */  nop
.align 2
  .L001F3B18:
    /* F4A98 001F3B18 2D20A003 */  daddu      $a0, $sp, $zero
    /* F4A9C 001F3B1C 01000624 */  addiu      $a2, $zero, 0x1
    /* F4AA0 001F3B20 2D380000 */  daddu      $a3, $zero, $zero
    /* F4AA4 001F3B24 2D400000 */  daddu      $t0, $zero, $zero
    /* F4AA8 001F3B28 2D480000 */  daddu      $t1, $zero, $zero
    /* F4AAC 001F3B2C 20000A24 */  addiu      $t2, $zero, 0x20
    /* F4AB0 001F3B30 20000B24 */  addiu      $t3, $zero, 0x20
    /* F4AB4 001F3B34 032C0500 */  sra        $a1, $a1, 16
    /* F4AB8 001F3B38 8C89040C */  jal        func_00122630
    /* F4ABC 001F3B3C 01009426 */   addiu     $s4, $s4, 0x1
    /* F4AC0 001F3B40 6063040C */  jal        func_00118D80
    /* F4AC4 001F3B44 2D200000 */   daddu     $a0, $zero, $zero
    /* F4AC8 001F3B48 2D20A003 */  daddu      $a0, $sp, $zero
    /* F4ACC 001F3B4C 568A040C */  jal        func_00122958
    /* F4AD0 001F3B50 C042A526 */   addiu     $a1, $s5, %lo(D_001942C0)
    /* F4AD4 001F3B54 2D200000 */  daddu      $a0, $zero, $zero
    /* F4AD8 001F3B58 1682040C */  jal        func_00120858
    /* F4ADC 001F3B5C 2D280000 */   daddu     $a1, $zero, $zero
    /* F4AE0 001F3B60 2A189002 */  slt        $v1, $s4, $s0
    /* F4AE4 001F3B64 ECFF6054 */  bnel       $v1, $zero, .L001F3B18
    /* F4AE8 001F3B68 002D1400 */   sll       $a1, $s4, 20
    /* F4AEC 001F3B6C C000BF7B */  lq         $ra, 0xC0($sp)
.align 2
  .L001F3B70:
    /* F4AF0 001F3B70 B000B57B */  lq         $s5, 0xB0($sp)
    /* F4AF4 001F3B74 A000B47B */  lq         $s4, 0xA0($sp)
    /* F4AF8 001F3B78 9000B37B */  lq         $s3, 0x90($sp)
    /* F4AFC 001F3B7C 8000B27B */  lq         $s2, 0x80($sp)
    /* F4B00 001F3B80 7000B17B */  lq         $s1, 0x70($sp)
    /* F4B04 001F3B84 6000B07B */  lq         $s0, 0x60($sp)
    /* F4B08 001F3B88 0800E003 */  jr         $ra
    /* F4B0C 001F3B8C D000BD27 */   addiu     $sp, $sp, 0xD0
endlabel func_001F3890
