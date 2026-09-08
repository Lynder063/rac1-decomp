.align 3
nonmatching func_0011BF80, 0x284

glabel func_0011BF80
    /* 1CF00 0011BF80 B0FEBD27 */  addiu      $sp, $sp, -0x150
    /* 1CF04 0011BF84 4000B0FF */  sd         $s0, 0x40($sp)
    /* 1CF08 0011BF88 B000B7FF */  sd         $s7, 0xB0($sp)
    /* 1CF0C 0011BF8C 2D808000 */  daddu      $s0, $a0, $zero
    /* 1CF10 0011BF90 C000BEFF */  sd         $fp, 0xC0($sp)
    /* 1CF14 0011BF94 2DB8A000 */  daddu      $s7, $a1, $zero
    /* 1CF18 0011BF98 5000B1FF */  sd         $s1, 0x50($sp)
    /* 1CF1C 0011BF9C 2D200000 */  daddu      $a0, $zero, $zero
    /* 1CF20 0011BFA0 D000BFFF */  sd         $ra, 0xD0($sp)
    /* 1CF24 0011BFA4 15001E3C */  lui        $fp, %hi(D_00156980)
    /* 1CF28 0011BFA8 A000B6FF */  sd         $s6, 0xA0($sp)
    /* 1CF2C 0011BFAC 8069D127 */  addiu      $s1, $fp, %lo(D_00156980)
    /* 1CF30 0011BFB0 9000B5FF */  sd         $s5, 0x90($sp)
    /* 1CF34 0011BFB4 8000B4FF */  sd         $s4, 0x80($sp)
    /* 1CF38 0011BFB8 7000B3FF */  sd         $s3, 0x70($sp)
    /* 1CF3C 0011BFBC 6000B2FF */  sd         $s2, 0x60($sp)
    /* 1CF40 0011BFC0 2001A6FF */  sd         $a2, 0x120($sp)
    /* 1CF44 0011BFC4 2801A7FF */  sd         $a3, 0x128($sp)
    /* 1CF48 0011BFC8 3001A8FF */  sd         $t0, 0x130($sp)
    /* 1CF4C 0011BFCC 3801A9FF */  sd         $t1, 0x138($sp)
    /* 1CF50 0011BFD0 4001AAFF */  sd         $t2, 0x140($sp)
    /* 1CF54 0011BFD4 106F040C */  jal        func_0011BC40
    /* 1CF58 0011BFD8 4801ABFF */   sd        $t3, 0x148($sp)
    /* 1CF5C 0011BFDC 1300033C */  lui        $v1, %hi(D_0012FD94)
    /* 1CF60 0011BFE0 94FD628C */  lw         $v0, %lo(D_0012FD94)($v1)
    /* 1CF64 0011BFE4 03004014 */  bnez       $v0, .L0011BFF4
    /* 1CF68 0011BFE8 00000000 */   nop
    /* 1CF6C 0011BFEC 2C6F040C */  jal        func_0011BCB0
    /* 1CF70 0011BFF0 00000000 */   nop
.align 2
  .L0011BFF4:
    /* 1CF74 0011BFF4 AE6F040C */  jal        func_0011BEB8
    /* 1CF78 0011BFF8 00000000 */   nop
    /* 1CF7C 0011BFFC 06004010 */  beqz       $v0, .L0011C018
    /* 1CF80 0011C000 00000000 */   nop
    /* 1CF84 0011C004 1C6F040C */  jal        func_0011BC70
    /* 1CF88 0011C008 00000000 */   nop
    /* 1CF8C 0011C00C FEFF023C */  lui        $v0, (0xFFFEFFFC >> 16)
    /* 1CF90 0011C010 70000010 */  b          .L0011C1D4
    /* 1CF94 0011C014 FCFF4234 */   ori       $v0, $v0, (0xFFFEFFFC & 0xFFFF)
.align 2
  .L0011C018:
    /* 1CF98 0011C018 DC6D040C */  jal        func_0011B770
    /* 1CF9C 0011C01C 00000000 */   nop
    /* 1CFA0 0011C020 2D984000 */  daddu      $s3, $v0, $zero
    /* 1CFA4 0011C024 05006056 */  bnel       $s3, $zero, .L0011C03C
    /* 1CFA8 0011C028 00000392 */   lbu       $v1, 0x0($s0)
    /* 1CFAC 0011C02C 1C6F040C */  jal        func_0011BC70
    /* 1CFB0 0011C030 00000000 */   nop
    /* 1CFB4 0011C034 67000010 */  b          .L0011C1D4
    /* 1CFB8 0011C038 EDFF0224 */   addiu     $v0, $zero, -0x13
.align 2
  .L0011C03C:
    /* 1CFBC 0011C03C 2D280000 */  daddu      $a1, $zero, $zero
    /* 1CFC0 0011C040 2001A78F */  lw         $a3, 0x120($sp)
    /* 1CFC4 0011C044 00160300 */  sll        $v0, $v1, 24
    /* 1CFC8 0011C048 12004010 */  beqz       $v0, .L0011C094
    /* 1CFCC 0011C04C 140023A2 */   sb        $v1, 0x14($s1)
    /* 1CFD0 0011C050 1500063C */  lui        $a2, %hi(D_00157E80)
    /* 1CFD4 0011C054 3000B227 */  addiu      $s2, $sp, 0x30
    /* 1CFD8 0011C058 1600163C */  lui        $s6, %hi(D_00158080)
    /* 1CFDC 0011C05C 1500143C */  lui        $s4, %hi(D_001575C0)
    /* 1CFE0 0011C060 0100A524 */  addiu      $a1, $a1, 0x1
    /* 1CFE4 0011C064 00000000 */  nop
.align 2
  .L0011C068:
    /* 1CFE8 0011C068 0004A228 */  slti       $v0, $a1, 0x400
    /* 1CFEC 0011C06C 0D004010 */  beqz       $v0, .L0011C0A4
    /* 1CFF0 0011C070 21100502 */   addu      $v0, $s0, $a1
    /* 1CFF4 0011C074 21202502 */  addu       $a0, $s1, $a1
    /* 1CFF8 0011C078 00004390 */  lbu        $v1, 0x0($v0)
    /* 1CFFC 0011C07C 140083A0 */  sb         $v1, 0x14($a0)
    /* 1D000 0011C080 001E0300 */  sll        $v1, $v1, 24
    /* 1D004 0011C084 F8FF6054 */  bnel       $v1, $zero, .L0011C068
    /* 1D008 0011C088 0100A524 */   addiu     $a1, $a1, 0x1
    /* 1D00C 0011C08C 06000010 */  b          .L0011C0A8
    /* 1D010 0011C090 00040224 */   addiu     $v0, $zero, 0x400
.align 2
  .L0011C094:
    /* 1D014 0011C094 1500063C */  lui        $a2, %hi(D_00157E80)
    /* 1D018 0011C098 3000B227 */  addiu      $s2, $sp, 0x30
    /* 1D01C 0011C09C 1600163C */  lui        $s6, %hi(D_00158080)
    /* 1D020 0011C0A0 1500143C */  lui        $s4, %hi(D_001575C0)
.align 2
  .L0011C0A4:
    /* 1D024 0011C0A4 00040224 */  addiu      $v0, $zero, 0x400
.align 2
  .L0011C0A8:
    /* 1D028 0011C0A8 0100A250 */  beql       $a1, $v0, .L0011C0B0
    /* 1D02C 0011C0AC 130420A2 */   sb        $zero, 0x413($s1)
.align 2
  .L0011C0B0:
    /* 1D030 0011C0B0 807EC224 */  addiu      $v0, $a2, %lo(D_00157E80)
    /* 1D034 0011C0B4 FF6F033C */  lui        $v1, (0x6FFFFFFF >> 16)
    /* 1D038 0011C0B8 23106202 */  subu       $v0, $s3, $v0
    /* 1D03C 0011C0BC FFFF6334 */  ori        $v1, $v1, (0x6FFFFFFF & 0xFFFF)
    /* 1D040 0011C0C0 03A90200 */  sra        $s5, $v0, 4
    /* 1D044 0011C0C4 2418E302 */  and        $v1, $s7, $v1
    /* 1D048 0011C0C8 0C0023AE */  sw         $v1, 0xC($s1)
    /* 1D04C 0011C0CC 01000224 */  addiu      $v0, $zero, 0x1
    /* 1D050 0011C0D0 100027AE */  sw         $a3, 0x10($s1)
    /* 1D054 0011C0D4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1D058 0011C0D8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1D05C 0011C0DC C0759426 */  addiu      $s4, $s4, %lo(D_001575C0)
    /* 1D060 0011C0E0 140435AE */  sw         $s5, 0x414($s1)
    /* 1D064 0011C0E4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1D068 0011C0E8 1C63040C */  jal        func_00118C70
    /* 1D06C 0011C0EC 2400A0AF */   sw        $zero, 0x24($sp)
    /* 1D070 0011C0F0 2D804000 */  daddu      $s0, $v0, $zero
    /* 1D074 0011C0F4 040032AE */  sw         $s2, 0x4($s1)
    /* 1D078 0011C0F8 04000224 */  addiu      $v0, $zero, 0x4
    /* 1D07C 0011C0FC 000030AE */  sw         $s0, 0x0($s1)
    /* 1D080 0011C100 080022AE */  sw         $v0, 0x8($s1)
    /* 1D084 0011C104 8080C426 */  addiu      $a0, $s6, %lo(D_00158080)
    /* 1D088 0011C108 8069C727 */  addiu      $a3, $fp, %lo(D_00156980)
    /* 1D08C 0011C10C 2D280000 */  daddu      $a1, $zero, $zero
    /* 1D090 0011C110 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1D094 0011C114 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D098 0011C118 18040824 */  addiu      $t0, $zero, 0x418
    /* 1D09C 0011C11C 2D488002 */  daddu      $t1, $s4, $zero
    /* 1D0A0 0011C120 04000A24 */  addiu      $t2, $zero, 0x4
    /* 1D0A4 0011C124 326D040C */  jal        func_0011B4C8
    /* 1D0A8 0011C128 2D580000 */   daddu     $t3, $zero, $zero
    /* 1D0AC 0011C12C 07004104 */  bgez       $v0, .L0011C14C
    /* 1D0B0 0011C130 0020023C */   lui       $v0, (0x20000000 >> 16)
    /* 1D0B4 0011C134 2063040C */  jal        func_00118C80
    /* 1D0B8 0011C138 2D200002 */   daddu     $a0, $s0, $zero
    /* 1D0BC 0011C13C 1C6F040C */  jal        func_0011BC70
    /* 1D0C0 0011C140 00000000 */   nop
    /* 1D0C4 0011C144 23000010 */  b          .L0011C1D4
    /* 1D0C8 0011C148 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C14C:
    /* 1D0CC 0011C14C 25108202 */  or         $v0, $s4, $v0
    /* 1D0D0 0011C150 1C6F040C */  jal        func_0011BC70
    /* 1D0D4 0011C154 0000518C */   lw        $s1, (0x20000000 & 0xFFFF)($v0)
    /* 1D0D8 0011C158 05002016 */  bnez       $s1, .L0011C170
    /* 1D0DC 0011C15C 00000000 */   nop
    /* 1D0E0 0011C160 2063040C */  jal        func_00118C80
    /* 1D0E4 0011C164 2D200002 */   daddu     $a0, $s0, $zero
    /* 1D0E8 0011C168 1A000010 */  b          .L0011C1D4
    /* 1D0EC 0011C16C F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C170:
    /* 1D0F0 0011C170 2C63040C */  jal        func_00118CB0
    /* 1D0F4 0011C174 2D200002 */   daddu     $a0, $s0, $zero
    /* 1D0F8 0011C178 2063040C */  jal        func_00118C80
    /* 1D0FC 0011C17C 2D200002 */   daddu     $a0, $s0, $zero
    /* 1D100 0011C180 3000A38F */  lw         $v1, 0x30($sp)
    /* 1D104 0011C184 08006104 */  bgez       $v1, .L0011C1A8
    /* 1D108 0011C188 1300103C */   lui       $s0, %hi(D_0012FDA0)
    /* 1D10C 0011C18C 2C63040C */  jal        func_00118CB0
    /* 1D110 0011C190 A0FD048E */   lw        $a0, %lo(D_0012FDA0)($s0)
    /* 1D114 0011C194 040060AE */  sw         $zero, 0x4($s3)
    /* 1D118 0011C198 2463040C */  jal        func_00118C90
    /* 1D11C 0011C19C A0FD048E */   lw        $a0, %lo(D_0012FDA0)($s0)
    /* 1D120 0011C1A0 0C000010 */  b          .L0011C1D4
    /* 1D124 0011C1A4 3000A28F */   lw        $v0, 0x30($sp)
.align 2
  .L0011C1A8:
    /* 1D128 0011C1A8 2D88A002 */  daddu      $s1, $s5, $zero
    /* 1D12C 0011C1AC 2C63040C */  jal        func_00118CB0
    /* 1D130 0011C1B0 A0FD048E */   lw        $a0, %lo(D_0012FDA0)($s0)
    /* 1D134 0011C1B4 0400638E */  lw         $v1, 0x4($s3)
    /* 1D138 0011C1B8 3000A28F */  lw         $v0, 0x30($sp)
    /* 1D13C 0011C1BC A0FD048E */  lw         $a0, %lo(D_0012FDA0)($s0)
    /* 1D140 0011C1C0 25187700 */  or         $v1, $v1, $s7
    /* 1D144 0011C1C4 040063AE */  sw         $v1, 0x4($s3)
    /* 1D148 0011C1C8 2463040C */  jal        func_00118C90
    /* 1D14C 0011C1CC 000062AE */   sw        $v0, 0x0($s3)
    /* 1D150 0011C1D0 2D102002 */  daddu      $v0, $s1, $zero
.align 2
  .L0011C1D4:
    /* 1D154 0011C1D4 D000BFDF */  ld         $ra, 0xD0($sp)
    /* 1D158 0011C1D8 C000BEDF */  ld         $fp, 0xC0($sp)
    /* 1D15C 0011C1DC B000B7DF */  ld         $s7, 0xB0($sp)
    /* 1D160 0011C1E0 A000B6DF */  ld         $s6, 0xA0($sp)
    /* 1D164 0011C1E4 9000B5DF */  ld         $s5, 0x90($sp)
    /* 1D168 0011C1E8 8000B4DF */  ld         $s4, 0x80($sp)
    /* 1D16C 0011C1EC 7000B3DF */  ld         $s3, 0x70($sp)
    /* 1D170 0011C1F0 6000B2DF */  ld         $s2, 0x60($sp)
    /* 1D174 0011C1F4 5000B1DF */  ld         $s1, 0x50($sp)
    /* 1D178 0011C1F8 4000B0DF */  ld         $s0, 0x40($sp)
    /* 1D17C 0011C1FC 0800E003 */  jr         $ra
    /* 1D180 0011C200 5001BD27 */   addiu     $sp, $sp, 0x150
endlabel func_0011BF80
    /* 1D184 0011C204 00000000 */  nop
