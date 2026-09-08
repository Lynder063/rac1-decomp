.align 3
nonmatching func_001FBE80, 0x1568

glabel func_001FBE80
    /* FCE00 001FBE80 D0FCBD27 */  addiu      $sp, $sp, -0x330
    /* FCE04 001FBE84 2D200000 */  daddu      $a0, $zero, $zero
    /* FCE08 001FBE88 E002B77F */  sq         $s7, 0x2E0($sp)
    /* FCE0C 001FBE8C 2D280000 */  daddu      $a1, $zero, $zero
    /* FCE10 001FBE90 0003BF7F */  sq         $ra, 0x300($sp)
    /* FCE14 001FBE94 2D300000 */  daddu      $a2, $zero, $zero
    /* FCE18 001FBE98 F002BE7F */  sq         $fp, 0x2F0($sp)
    /* FCE1C 001FBE9C 30000724 */  addiu      $a3, $zero, 0x30
    /* FCE20 001FBEA0 D002B67F */  sq         $s6, 0x2D0($sp)
    /* FCE24 001FBEA4 C002B57F */  sq         $s5, 0x2C0($sp)
    /* FCE28 001FBEA8 B002B47F */  sq         $s4, 0x2B0($sp)
    /* FCE2C 001FBEAC A002B37F */  sq         $s3, 0x2A0($sp)
    /* FCE30 001FBEB0 9002B27F */  sq         $s2, 0x290($sp)
    /* FCE34 001FBEB4 8002B17F */  sq         $s1, 0x280($sp)
    /* FCE38 001FBEB8 7002B07F */  sq         $s0, 0x270($sp)
    /* FCE3C 001FBEBC 2003B6E7 */  swc1       $f22, 0x320($sp)
    /* FCE40 001FBEC0 1803B5E7 */  swc1       $f21, 0x318($sp)
    /* FCE44 001FBEC4 70D5070C */  jal        func_001F55C0
    /* FCE48 001FBEC8 1003B4E7 */   swc1      $f20, 0x310($sp)
    /* FCE4C 001FBECC 1900023C */  lui        $v0, %hi(D_00193400)
    /* FCE50 001FBED0 2DB84000 */  daddu      $s7, $v0, $zero
    /* FCE54 001FBED4 00344224 */  addiu      $v0, $v0, %lo(D_00193400)
    /* FCE58 001FBED8 2C00438C */  lw         $v1, 0x2C($v0)
    /* FCE5C 001FBEDC 34056014 */  bnez       $v1, .L001FD3B0
    /* FCE60 001FBEE0 0003BF7B */   lq        $ra, 0x300($sp)
    /* FCE64 001FBEE4 8CD1070C */  jal        func_001F4630
    /* FCE68 001FBEE8 2D200000 */   daddu     $a0, $zero, $zero
    /* FCE6C 001FBEEC 0034E38E */  lw         $v1, %lo(D_00193400)($s7)
    /* FCE70 001FBEF0 0900622C */  sltiu      $v0, $v1, 0x9
    /* FCE74 001FBEF4 EB044010 */  beqz       $v0, .L001FD2A4
    /* FCE78 001FBEF8 1E00023C */   lui       $v0, %hi(jtbl_001E7C30)
    /* FCE7C 001FBEFC 80180300 */  sll        $v1, $v1, 2
    /* FCE80 001FBF00 307C4224 */  addiu      $v0, $v0, %lo(jtbl_001E7C30)
    /* FCE84 001FBF04 21186200 */  addu       $v1, $v1, $v0
    /* FCE88 001FBF08 0000648C */  lw         $a0, 0x0($v1)
    /* FCE8C 001FBF0C 08008000 */  jr         $a0
    /* FCE90 001FBF10 00000000 */   nop
    /* FCE94 001FBF14 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FCE98 001FBF18 30E6070C */  jal        func_001F98C0
    /* FCE9C 001FBF1C 0070103C */   lui       $s0, (0x70000000 >> 16)
    /* FCEA0 001FBF20 0034E326 */  addiu      $v1, $s7, %lo(D_00193400)
    /* FCEA4 001FBF24 00108244 */  mtc1       $v0, $f2
    /* FCEA8 001FBF28 00000000 */  nop
    /* FCEAC 001FBF2C A0108046 */  cvt.s.w    $f2, $f2
    /* FCEB0 001FBF30 040060C4 */  lwc1       $f0, 0x4($v1)
    /* FCEB4 001FBF34 20008046 */  cvt.s.w    $f0, $f0
    /* FCEB8 001FBF38 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FCEBC 001FBF3C 00A08144 */  mtc1       $at, $f20
    /* FCEC0 001FBF40 A042013C */  lui        $at, (0x42A00000 >> 16)
    /* FCEC4 001FBF44 00088144 */  mtc1       $at, $f1
    /* FCEC8 001FBF48 60000624 */  addiu      $a2, $zero, 0x60
    /* FCECC 001FBF4C A0010724 */  addiu      $a3, $zero, 0x1A0
    /* FCED0 001FBF50 50000424 */  addiu      $a0, $zero, 0x50
    /* FCED4 001FBF54 03000246 */  div.s      $f0, $f0, $f2
    /* FCED8 001FBF58 01A50046 */  sub.s      $f20, $f20, $f0
    /* FCEDC 001FBF5C 42A00146 */  mul.s      $f1, $f20, $f1
    /* FCEE0 001FBF60 24080046 */  .word      0x46000824                    # cvt.w.s    $f0, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FCEE4 001FBF64 00000844 */  mfc1       $t0, $f0
    /* FCEE8 001FBF68 B2D8070C */  jal        func_001F62C8
    /* FCEEC 001FBF6C 54010524 */   addiu     $a1, $zero, 0x154
    /* FCEF0 001FBF70 F488858F */  lw         $a1, -0x770C($gp)
    /* FCEF4 001FBF74 1E00023C */  lui        $v0, %hi(D_001E7BF8)
    /* FCEF8 001FBF78 F088848F */  lw         $a0, -0x7710($gp)
    /* FCEFC 001FBF7C F87B4824 */  addiu      $t0, $v0, %lo(D_001E7BF8)
    /* FCF00 001FBF80 07000369 */  ldl        $v1, 0x7($t0)
    /* FCF04 001FBF84 0000036D */  ldr        $v1, 0x0($t0)
    /* FCF08 001FBF88 0F000669 */  ldl        $a2, 0xF($t0)
    /* FCF0C 001FBF8C 0800066D */  ldr        $a2, 0x8($t0)
    /* FCF10 001FBF90 17000769 */  ldl        $a3, 0x17($t0)
    /* FCF14 001FBF94 1000076D */  ldr        $a3, 0x10($t0)
    /* FCF18 001FBF98 0702A3B3 */  sdl        $v1, 0x207($sp)
    /* FCF1C 001FBF9C 0002A3B7 */  sdr        $v1, 0x200($sp)
    /* FCF20 001FBFA0 0F02A6B3 */  sdl        $a2, 0x20F($sp)
    /* FCF24 001FBFA4 0802A6B7 */  sdr        $a2, 0x208($sp)
    /* FCF28 001FBFA8 1702A7B3 */  sdl        $a3, 0x217($sp)
    /* FCF2C 001FBFAC 1002A7B7 */  sdr        $a3, 0x210($sp)
    /* FCF30 001FBFB0 2AEA070C */  jal        func_001FA8A8
    /* FCF34 001FBFB4 06A30046 */   mov.s     $f12, $f20
    /* FCF38 001FBFB8 2B4E0424 */  addiu      $a0, $zero, 0x4E2B
    /* FCF3C 001FBFBC 50F9070C */  jal        func_001FE540
    /* FCF40 001FBFC0 2D884000 */   daddu     $s1, $v0, $zero
    /* FCF44 001FBFC4 2D284000 */  daddu      $a1, $v0, $zero
    /* FCF48 001FBFC8 0070043C */  lui        $a0, (0x70000000 >> 16)
    /* FCF4C 001FBFCC C05A040C */  jal        func_00116B00
    /* FCF50 001FBFD0 00040624 */   addiu     $a2, $zero, 0x400
    /* FCF54 001FBFD4 00000392 */  lbu        $v1, (0x70000000 & 0xFFFF)($s0)
    /* FCF58 001FBFD8 0200632C */  sltiu      $v1, $v1, 0x2
    /* FCF5C 001FBFDC 09006014 */  bnez       $v1, .L001FC004
    /* FCF60 001FBFE0 0002B627 */   addiu     $s6, $sp, 0x200
    /* FCF64 001FBFE4 01001026 */  addiu      $s0, $s0, %lo(D_70000001)
.align 2
  .L001FBFE8:
    /* FCF68 001FBFE8 00000292 */  lbu        $v0, 0x0($s0)
    /* FCF6C 001FBFEC 0200422C */  sltiu      $v0, $v0, 0x2
    /* FCF70 001FBFF0 00000000 */  nop
    /* FCF74 001FBFF4 00000000 */  nop
    /* FCF78 001FBFF8 00000000 */  nop
    /* FCF7C 001FBFFC FAFF4050 */  beql       $v0, $zero, .L001FBFE8
    /* FCF80 001FC000 01001026 */   addiu     $s0, $s0, 0x1
.align 2
  .L001FC004:
    /* FCF84 001FC004 00000392 */  lbu        $v1, (0x70000000 & 0xFFFF)($s0)
    /* FCF88 001FC008 01000224 */  addiu      $v0, $zero, 0x1
    /* FCF8C 001FC00C 0B006214 */  bne        $v1, $v0, .L001FC03C
    /* FCF90 001FC010 2D982002 */   daddu     $s3, $s1, $zero
    /* FCF94 001FC014 01000324 */  addiu      $v1, $zero, 0x1
    /* FCF98 001FC018 000000A2 */  sb         $zero, (0x70000000 & 0xFFFF)($s0)
    /* FCF9C 001FC01C 00000000 */  nop
.align 2
  .L001FC020:
    /* FCFA0 001FC020 01001026 */  addiu      $s0, $s0, %lo(D_70000001)
    /* FCFA4 001FC024 00000292 */  lbu        $v0, 0x0($s0)
    /* FCFA8 001FC028 00000000 */  nop
    /* FCFAC 001FC02C 00000000 */  nop
    /* FCFB0 001FC030 00000000 */  nop
    /* FCFB4 001FC034 FAFF4350 */  beql       $v0, $v1, .L001FC020
    /* FCFB8 001FC038 000000A2 */   sb        $zero, 0x0($s0)
.align 2
  .L001FC03C:
    /* FCFBC 001FC03C 2D20C002 */  daddu      $a0, $s6, $zero
    /* FCFC0 001FC040 2D286002 */  daddu      $a1, $s3, $zero
    /* FCFC4 001FC044 0070063C */  lui        $a2, (0x70000000 >> 16)
    /* FCFC8 001FC048 58DD070C */  jal        func_001F7560
    /* FCFCC 001FC04C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FCFD0 001FC050 8843013C */  lui        $at, (0x43880000 >> 16)
    /* FCFD4 001FC054 00B08144 */  mtc1       $at, $f22
    /* FCFD8 001FC058 1202A297 */  lhu        $v0, 0x212($sp)
    /* FCFDC 001FC05C 2D20C002 */  daddu      $a0, $s6, $zero
    /* FCFE0 001FC060 0E02A387 */  lh         $v1, 0x20E($sp)
    /* FCFE4 001FC064 2D300002 */  daddu      $a2, $s0, $zero
    /* FCFE8 001FC068 0A02B187 */  lh         $s1, 0x20A($sp)
    /* FCFEC 001FC06C 04004234 */  ori        $v0, $v0, 0x4
    /* FCFF0 001FC070 1202A2A7 */  sh         $v0, 0x212($sp)
    /* FCFF4 001FC074 2D286002 */  daddu      $a1, $s3, $zero
    /* FCFF8 001FC078 21882302 */  addu       $s1, $s1, $v1
    /* FCFFC 001FC07C 58DD070C */  jal        func_001F7560
    /* FD000 001FC080 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FD004 001FC084 1202A297 */  lhu        $v0, 0x212($sp)
    /* FD008 001FC088 36010324 */  addiu      $v1, $zero, 0x136
    /* FD00C 001FC08C 0E02A497 */  lhu        $a0, 0x20E($sp)
    /* FD010 001FC090 2D300002 */  daddu      $a2, $s0, $zero
    /* FD014 001FC094 04004238 */  xori       $v0, $v0, 0x4
    /* FD018 001FC098 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* FD01C 001FC09C 23186400 */  subu       $v1, $v1, $a0
    /* FD020 001FC0A0 1202A2A7 */  sh         $v0, 0x212($sp)
    /* FD024 001FC0A4 0A02A3A7 */  sh         $v1, 0x20A($sp)
    /* FD028 001FC0A8 2D286002 */  daddu      $a1, $s3, $zero
    /* FD02C 001FC0AC 58DD070C */  jal        func_001F7560
    /* FD030 001FC0B0 2D20C002 */   daddu     $a0, $s6, $zero
    /* FD034 001FC0B4 30E6070C */  jal        func_001F98C0
    /* FD038 001FC0B8 1E000424 */   addiu     $a0, $zero, 0x1E
    /* FD03C 001FC0BC 0034E326 */  addiu      $v1, $s7, %lo(D_00193400)
    /* FD040 001FC0C0 00088244 */  mtc1       $v0, $f1
    /* FD044 001FC0C4 00000000 */  nop
    /* FD048 001FC0C8 60088046 */  cvt.s.w    $f1, $f1
    /* FD04C 001FC0CC 24006CC4 */  lwc1       $f12, 0x24($v1)
    /* FD050 001FC0D0 20638046 */  cvt.s.w    $f12, $f12
    /* FD054 001FC0D4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FD058 001FC0D8 00008144 */  mtc1       $at, $f0
    /* FD05C 001FC0DC 2000043C */  lui        $a0, (0x20FFFF >> 16)
    /* FD060 001FC0E0 2080053C */  lui        $a1, (0x8020FFFF >> 16)
    /* FD064 001FC0E4 FFFFA534 */  ori        $a1, $a1, (0x8020FFFF & 0xFFFF)
    /* FD068 001FC0E8 FFFF8434 */  ori        $a0, $a0, (0x20FFFF & 0xFFFF)
    /* FD06C 001FC0EC 03630146 */  div.s      $f12, $f12, $f1
    /* FD070 001FC0F0 2AEA070C */  jal        func_001FA8A8
    /* FD074 001FC0F4 01030C46 */   sub.s     $f12, $f0, $f12
    /* FD078 001FC0F8 2D804000 */  daddu      $s0, $v0, $zero
    /* FD07C 001FC0FC 50F9070C */  jal        func_001FE540
    /* FD080 001FC100 4F520424 */   addiu     $a0, $zero, 0x524F
    /* FD084 001FC104 2D300002 */  daddu      $a2, $s0, $zero
    /* FD088 001FC108 2D384000 */  daddu      $a3, $v0, $zero
    /* FD08C 001FC10C FFFF0824 */  addiu      $t0, $zero, -0x1
    /* FD090 001FC110 00010424 */  addiu      $a0, $zero, 0x100
    /* FD094 001FC114 AADB070C */  jal        func_001F6EA8
    /* FD098 001FC118 40010524 */   addiu     $a1, $zero, 0x140
    /* FD09C 001FC11C 0A02A387 */  lh         $v1, 0x20A($sp)
    /* FD0A0 001FC120 47000424 */  addiu      $a0, $zero, 0x47
    /* FD0A4 001FC124 0300053C */  lui        $a1, (0x3004B >> 16)
    /* FD0A8 001FC128 4B00A534 */  ori        $a1, $a1, (0x3004B & 0xFFFF)
    /* FD0AC 001FC12C 21882302 */  addu       $s1, $s1, $v1
    /* FD0B0 001FC130 26D3080C */  jal        func_00234C98
    /* FD0B4 001FC134 43881100 */   sra       $s1, $s1, 1
    /* FD0B8 001FC138 E0FF3026 */  addiu      $s0, $s1, -0x20
    /* FD0BC 001FC13C 5D750424 */  addiu      $a0, $zero, 0x755D
    /* FD0C0 001FC140 6600080C */  jal        func_00200198
    /* FD0C4 001FC144 2D280000 */   daddu     $a1, $zero, $zero
    /* FD0C8 001FC148 2D300002 */  daddu      $a2, $s0, $zero
    /* FD0CC 001FC14C 2D204000 */  daddu      $a0, $v0, $zero
    /* FD0D0 001FC150 40000724 */  addiu      $a3, $zero, 0x40
    /* FD0D4 001FC154 40000824 */  addiu      $t0, $zero, 0x40
    /* FD0D8 001FC158 80000924 */  addiu      $t1, $zero, 0x80
    /* FD0DC 001FC15C 1A01080C */  jal        func_00200468
    /* FD0E0 001FC160 E0000524 */   addiu     $a1, $zero, 0xE0
    /* FD0E4 001FC164 1600033C */  lui        $v1, %hi(D_0015F538)
    /* FD0E8 001FC168 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* FD0EC 001FC16C 37000224 */  addiu      $v0, $zero, 0x37
    /* FD0F0 001FC170 C9C0013C */  lui        $at, (0xC0C90FDB >> 16)
    /* FD0F4 001FC174 DB0F2134 */  ori        $at, $at, (0xC0C90FDB & 0xFFFF)
    /* FD0F8 001FC178 00088144 */  mtc1       $at, $f1
    /* FD0FC 001FC17C 00891100 */  sll        $s1, $s1, 4
    /* FD100 001FC180 1A006200 */  div        $zero, $v1, $v0
    /* FD104 001FC184 5C42013C */  lui        $at, (0x425C0000 >> 16)
    /* FD108 001FC188 00008144 */  mtc1       $at, $f0
    /* FD10C 001FC18C 01000524 */  addiu      $a1, $zero, 0x1
    /* FD110 001FC190 00A89144 */  mtc1       $s1, $f21
    /* FD114 001FC194 00000000 */  nop
    /* FD118 001FC198 60AD8046 */  cvt.s.w    $f21, $f21
    /* FD11C 001FC19C 5D750424 */  addiu      $a0, $zero, 0x755D
    /* FD120 001FC1A0 01004050 */  beql       $v0, $zero, .L001FC1A8
    /* FD124 001FC1A4 CD010000 */   break     0, 7
.align 2
  .L001FC1A8:
    /* FD128 001FC1A8 10300000 */  mfhi       $a2
    /* FD12C 001FC1AC 00A08644 */  mtc1       $a2, $f20
    /* FD130 001FC1B0 00000000 */  nop
    /* FD134 001FC1B4 20A58046 */  cvt.s.w    $f20, $f20
    /* FD138 001FC1B8 02A50146 */  mul.s      $f20, $f20, $f1
    /* FD13C 001FC1BC 6600080C */  jal        func_00200198
    /* FD140 001FC1C0 03A50046 */   div.s     $f20, $f20, $f0
    /* FD144 001FC1C4 9200080C */  jal        func_00200248
    /* FD148 001FC1C8 2D204000 */   daddu     $a0, $v0, $zero
    /* FD14C 001FC1CC 86B30046 */  mov.s      $f14, $f22
    /* FD150 001FC1D0 8045013C */  lui        $at, (0x45800000 >> 16)
    /* FD154 001FC1D4 00608144 */  mtc1       $at, $f12
    /* FD158 001FC1D8 46AB0046 */  mov.s      $f13, $f21
    /* FD15C 001FC1DC 2D304000 */  daddu      $a2, $v0, $zero
    /* FD160 001FC1E0 06A40046 */  mov.s      $f16, $f20
    /* FD164 001FC1E4 C6730046 */  mov.s      $f15, $f14
    /* FD168 001FC1E8 40000424 */  addiu      $a0, $zero, 0x40
    /* FD16C 001FC1EC 8E03080C */  jal        func_00200E38
    /* FD170 001FC1F0 40000524 */   addiu     $a1, $zero, 0x40
    /* FD174 001FC1F4 6B040010 */  b          .L001FD3A4
    /* FD178 001FC1F8 00000000 */   nop
    /* FD17C 001FC1FC 0034E226 */  addiu      $v0, $s7, 0x3400
    /* FD180 001FC200 2000438C */  lw         $v1, 0x20($v0)
    /* FD184 001FC204 67046018 */  blez       $v1, .L001FD3A4
    /* FD188 001FC208 00000000 */   nop
    /* FD18C 001FC20C 50F9070C */  jal        func_001FE540
    /* FD190 001FC210 A64F0424 */   addiu     $a0, $zero, 0x4FA6
    /* FD194 001FC214 0070043C */  lui        $a0, (0x70000000 >> 16)
    /* FD198 001FC218 2D284000 */  daddu      $a1, $v0, $zero
    /* FD19C 001FC21C C05A040C */  jal        func_00116B00
    /* FD1A0 001FC220 00040624 */   addiu     $a2, $zero, 0x400
    /* FD1A4 001FC224 0070123C */  lui        $s2, (0x70000000 >> 16)
    /* FD1A8 001FC228 2002A427 */  addiu      $a0, $sp, 0x220
    /* FD1AC 001FC22C 00004292 */  lbu        $v0, (0x70000000 & 0xFFFF)($s2)
    /* FD1B0 001FC230 0200422C */  sltiu      $v0, $v0, 0x2
    /* FD1B4 001FC234 09004014 */  bnez       $v0, .L001FC25C
    /* FD1B8 001FC238 0002B627 */   addiu     $s6, $sp, 0x200
    /* FD1BC 001FC23C 01005226 */  addiu      $s2, $s2, %lo(D_70000001)
.align 2
  .L001FC240:
    /* FD1C0 001FC240 00004292 */  lbu        $v0, 0x0($s2)
    /* FD1C4 001FC244 0200422C */  sltiu      $v0, $v0, 0x2
    /* FD1C8 001FC248 00000000 */  nop
    /* FD1CC 001FC24C 00000000 */  nop
    /* FD1D0 001FC250 00000000 */  nop
    /* FD1D4 001FC254 FAFF4050 */  beql       $v0, $zero, .L001FC240
    /* FD1D8 001FC258 01005226 */   addiu     $s2, $s2, 0x1
.align 2
  .L001FC25C:
    /* FD1DC 001FC25C 00004392 */  lbu        $v1, (0x70000000 & 0xFFFF)($s2)
    /* FD1E0 001FC260 01000224 */  addiu      $v0, $zero, 0x1
    /* FD1E4 001FC264 0C006214 */  bne        $v1, $v0, .L001FC298
    /* FD1E8 001FC268 0034F126 */   addiu     $s1, $s7, 0x3400
    /* FD1EC 001FC26C 01000324 */  addiu      $v1, $zero, 0x1
    /* FD1F0 001FC270 000040A2 */  sb         $zero, (0x70000000 & 0xFFFF)($s2)
    /* FD1F4 001FC274 00000000 */  nop
.align 2
  .L001FC278:
    /* FD1F8 001FC278 01005226 */  addiu      $s2, $s2, %lo(D_70000001)
    /* FD1FC 001FC27C 00004292 */  lbu        $v0, 0x0($s2)
    /* FD200 001FC280 00000000 */  nop
    /* FD204 001FC284 00000000 */  nop
    /* FD208 001FC288 00000000 */  nop
    /* FD20C 001FC28C FAFF4350 */  beql       $v0, $v1, .L001FC278
    /* FD210 001FC290 000040A2 */   sb        $zero, 0x0($s2)
    /* FD214 001FC294 0034F126 */  addiu      $s1, $s7, 0x3400
.align 2
  .L001FC298:
    /* FD218 001FC298 4F521324 */  addiu      $s3, $zero, 0x524F
    /* FD21C 001FC29C 0400228E */  lw         $v0, 0x4($s1)
    /* FD220 001FC2A0 2D280000 */  daddu      $a1, $zero, $zero
    /* FD224 001FC2A4 18000624 */  addiu      $a2, $zero, 0x18
    /* FD228 001FC2A8 1400103C */  lui        $s0, %hi(D_0013E600)
    /* FD22C 001FC2AC 0B980200 */  movn       $s3, $zero, $v0
    /* FD230 001FC2B0 FF54040C */  jal        func_001153FC
    /* FD234 001FC2B4 00E61026 */   addiu     $s0, $s0, %lo(D_0013E600)
    /* FD238 001FC2B8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FD23C 001FC2BC 00A88144 */  mtc1       $at, $f21
    /* FD240 001FC2C0 04000296 */  lhu        $v0, 0x4($s0)
    /* FD244 001FC2C4 10000924 */  addiu      $t1, $zero, 0x10
    /* FD248 001FC2C8 05000A24 */  addiu      $t2, $zero, 0x5
    /* FD24C 001FC2CC 68000824 */  addiu      $t0, $zero, 0x68
    /* FD250 001FC2D0 60000324 */  addiu      $v1, $zero, 0x60
    /* FD254 001FC2D4 A0010424 */  addiu      $a0, $zero, 0x1A0
    /* FD258 001FC2D8 00010724 */  addiu      $a3, $zero, 0x100
    /* FD25C 001FC2DC 2202A2A7 */  sh         $v0, 0x222($sp)
    /* FD260 001FC2E0 2402A3A7 */  sh         $v1, 0x224($sp)
    /* FD264 001FC2E4 2D280000 */  daddu      $a1, $zero, $zero
    /* FD268 001FC2E8 2602A4A7 */  sh         $a0, 0x226($sp)
    /* FD26C 001FC2EC 2D304002 */  daddu      $a2, $s2, $zero
    /* FD270 001FC2F0 2802A7A7 */  sh         $a3, 0x228($sp)
    /* FD274 001FC2F4 2D20C002 */  daddu      $a0, $s6, $zero
    /* FD278 001FC2F8 2A02A8A7 */  sh         $t0, 0x22A($sp)
    /* FD27C 001FC2FC 3002A9A7 */  sh         $t1, 0x230($sp)
    /* FD280 001FC300 3202AAA7 */  sh         $t2, 0x232($sp)
    /* FD284 001FC304 2702A26B */  ldl        $v0, 0x227($sp)
    /* FD288 001FC308 2002A26F */  ldr        $v0, 0x220($sp)
    /* FD28C 001FC30C 2F02A36B */  ldl        $v1, 0x22F($sp)
    /* FD290 001FC310 2802A36F */  ldr        $v1, 0x228($sp)
    /* FD294 001FC314 3702A86B */  ldl        $t0, 0x237($sp)
    /* FD298 001FC318 3002A86F */  ldr        $t0, 0x230($sp)
    /* FD29C 001FC31C 0702A2B3 */  sdl        $v0, 0x207($sp)
    /* FD2A0 001FC320 0002A2B7 */  sdr        $v0, 0x200($sp)
    /* FD2A4 001FC324 0F02A3B3 */  sdl        $v1, 0x20F($sp)
    /* FD2A8 001FC328 0802A3B7 */  sdr        $v1, 0x208($sp)
    /* FD2AC 001FC32C 1702A8B3 */  sdl        $t0, 0x217($sp)
    /* FD2B0 001FC330 1002A8B7 */  sdr        $t0, 0x210($sp)
    /* FD2B4 001FC334 58DD070C */  jal        func_001F7560
    /* FD2B8 001FC338 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FD2BC 001FC33C 0E02A387 */  lh         $v1, 0x20E($sp)
    /* FD2C0 001FC340 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FD2C4 001FC344 0400028E */  lw         $v0, 0x4($s0)
    /* FD2C8 001FC348 28006324 */  addiu      $v1, $v1, 0x28
    /* FD2CC 001FC34C 23104300 */  subu       $v0, $v0, $v1
    /* FD2D0 001FC350 43100200 */  sra        $v0, $v0, 1
    /* FD2D4 001FC354 21184300 */  addu       $v1, $v0, $v1
    /* FD2D8 001FC358 04004524 */  addiu      $a1, $v0, 0x4
    /* FD2DC 001FC35C 0A02A5A7 */  sh         $a1, 0x20A($sp)
    /* FD2E0 001FC360 0202A3A7 */  sh         $v1, 0x202($sp)
    /* FD2E4 001FC364 30E6070C */  jal        func_001F98C0
    /* FD2E8 001FC368 0002A2A7 */   sh        $v0, 0x200($sp)
    /* FD2EC 001FC36C 00088244 */  mtc1       $v0, $f1
    /* FD2F0 001FC370 00000000 */  nop
    /* FD2F4 001FC374 60088046 */  cvt.s.w    $f1, $f1
    /* FD2F8 001FC378 A042013C */  lui        $at, (0x42A00000 >> 16)
    /* FD2FC 001FC37C 00008144 */  mtc1       $at, $f0
    /* FD300 001FC380 040034C6 */  lwc1       $f20, 0x4($s1)
    /* FD304 001FC384 20A58046 */  cvt.s.w    $f20, $f20
    /* FD308 001FC388 0002A487 */  lh         $a0, 0x200($sp)
    /* FD30C 001FC38C 0202A587 */  lh         $a1, 0x202($sp)
    /* FD310 001FC390 60000624 */  addiu      $a2, $zero, 0x60
    /* FD314 001FC394 03A50146 */  div.s      $f20, $f20, $f1
    /* FD318 001FC398 01AD1446 */  sub.s      $f20, $f21, $f20
    /* FD31C 001FC39C 02A00046 */  mul.s      $f0, $f20, $f0
    /* FD320 001FC3A0 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FD324 001FC3A4 00080844 */  mfc1       $t0, $f1
    /* FD328 001FC3A8 B2D8070C */  jal        func_001F62C8
    /* FD32C 001FC3AC A0010724 */   addiu     $a3, $zero, 0x1A0
    /* FD330 001FC3B0 1202A297 */  lhu        $v0, 0x212($sp)
    /* FD334 001FC3B4 06A30046 */  mov.s      $f12, $f20
    /* FD338 001FC3B8 F088848F */  lw         $a0, -0x7710($gp)
    /* FD33C 001FC3BC 04004238 */  xori       $v0, $v0, 0x4
    /* FD340 001FC3C0 F488858F */  lw         $a1, -0x770C($gp)
    /* FD344 001FC3C4 2AEA070C */  jal        func_001FA8A8
    /* FD348 001FC3C8 1202A2A7 */   sh        $v0, 0x212($sp)
    /* FD34C 001FC3CC 2D284000 */  daddu      $a1, $v0, $zero
    /* FD350 001FC3D0 2D304002 */  daddu      $a2, $s2, $zero
    /* FD354 001FC3D4 2D20C002 */  daddu      $a0, $s6, $zero
    /* FD358 001FC3D8 58DD070C */  jal        func_001F7560
    /* FD35C 001FC3DC FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FD360 001FC3E0 30E6070C */  jal        func_001F98C0
    /* FD364 001FC3E4 1E000424 */   addiu     $a0, $zero, 0x1E
    /* FD368 001FC3E8 24002CC6 */  lwc1       $f12, 0x24($s1)
    /* FD36C 001FC3EC 20638046 */  cvt.s.w    $f12, $f12
    /* FD370 001FC3F0 2000043C */  lui        $a0, (0x20FFFF >> 16)
    /* FD374 001FC3F4 00008244 */  mtc1       $v0, $f0
    /* FD378 001FC3F8 00000000 */  nop
    /* FD37C 001FC3FC 20008046 */  cvt.s.w    $f0, $f0
    /* FD380 001FC400 2080053C */  lui        $a1, (0x8020FFFF >> 16)
    /* FD384 001FC404 FFFF8434 */  ori        $a0, $a0, (0x20FFFF & 0xFFFF)
    /* FD388 001FC408 FFFFA534 */  ori        $a1, $a1, (0x8020FFFF & 0xFFFF)
    /* FD38C 001FC40C 03630046 */  div.s      $f12, $f12, $f0
    /* FD390 001FC410 2AEA070C */  jal        func_001FA8A8
    /* FD394 001FC414 01AB0C46 */   sub.s     $f12, $f21, $f12
    /* FD398 001FC418 E2036012 */  beqz       $s3, .L001FD3A4
    /* FD39C 001FC41C 0202B087 */   lh        $s0, 0x202($sp)
    /* FD3A0 001FC420 2D884000 */  daddu      $s1, $v0, $zero
    /* FD3A4 001FC424 2D206002 */  daddu      $a0, $s3, $zero
    /* FD3A8 001FC428 50F9070C */  jal        func_001FE540
    /* FD3AC 001FC42C ECFF1026 */   addiu     $s0, $s0, -0x14
    /* FD3B0 001FC430 2D280002 */  daddu      $a1, $s0, $zero
    /* FD3B4 001FC434 2D302002 */  daddu      $a2, $s1, $zero
    /* FD3B8 001FC438 2D384000 */  daddu      $a3, $v0, $zero
    /* FD3BC 001FC43C 95030010 */  b          .L001FD294
    /* FD3C0 001FC440 00010424 */   addiu     $a0, $zero, 0x100
    /* FD3C4 001FC444 0034F326 */  addiu      $s3, $s7, 0x3400
    /* FD3C8 001FC448 2000628E */  lw         $v0, 0x20($s3)
    /* FD3CC 001FC44C D5034018 */  blez       $v0, .L001FD3A4
    /* FD3D0 001FC450 BC4F0224 */   addiu     $v0, $zero, 0x4FBC
    /* FD3D4 001FC454 3000638E */  lw         $v1, 0x30($s3)
    /* FD3D8 001FC458 BD4F0424 */  addiu      $a0, $zero, 0x4FBD
    /* FD3DC 001FC45C 4F521424 */  addiu      $s4, $zero, 0x524F
    /* FD3E0 001FC460 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FD3E4 001FC464 00A88144 */  mtc1       $at, $f21
    /* FD3E8 001FC468 50F9070C */  jal        func_001FE540
    /* FD3EC 001FC46C 0A204300 */   movz      $a0, $v0, $v1
    /* FD3F0 001FC470 0400638E */  lw         $v1, 0x4($s3)
    /* FD3F4 001FC474 4002A427 */  addiu      $a0, $sp, 0x240
    /* FD3F8 001FC478 2D904000 */  daddu      $s2, $v0, $zero
    /* FD3FC 001FC47C 18000624 */  addiu      $a2, $zero, 0x18
    /* FD400 001FC480 2D280000 */  daddu      $a1, $zero, $zero
    /* FD404 001FC484 FF54040C */  jal        func_001153FC
    /* FD408 001FC488 0BA00300 */   movn      $s4, $zero, $v1
    /* FD40C 001FC48C 1400103C */  lui        $s0, %hi(D_0013E600)
    /* FD410 001FC490 05000924 */  addiu      $t1, $zero, 0x5
    /* FD414 001FC494 00E61026 */  addiu      $s0, $s0, %lo(D_0013E600)
    /* FD418 001FC498 10000824 */  addiu      $t0, $zero, 0x10
    /* FD41C 001FC49C 04000296 */  lhu        $v0, 0x4($s0)
    /* FD420 001FC4A0 60000324 */  addiu      $v1, $zero, 0x60
    /* FD424 001FC4A4 A0010424 */  addiu      $a0, $zero, 0x1A0
    /* FD428 001FC4A8 00010624 */  addiu      $a2, $zero, 0x100
    /* FD42C 001FC4AC 68000724 */  addiu      $a3, $zero, 0x68
    /* FD430 001FC4B0 4202A2A7 */  sh         $v0, 0x242($sp)
    /* FD434 001FC4B4 4402A3A7 */  sh         $v1, 0x244($sp)
    /* FD438 001FC4B8 0002B127 */  addiu      $s1, $sp, 0x200
    /* FD43C 001FC4BC 4602A4A7 */  sh         $a0, 0x246($sp)
    /* FD440 001FC4C0 2D280000 */  daddu      $a1, $zero, $zero
    /* FD444 001FC4C4 4802A6A7 */  sh         $a2, 0x248($sp)
    /* FD448 001FC4C8 2D202002 */  daddu      $a0, $s1, $zero
    /* FD44C 001FC4CC 4A02A7A7 */  sh         $a3, 0x24A($sp)
    /* FD450 001FC4D0 2D304002 */  daddu      $a2, $s2, $zero
    /* FD454 001FC4D4 5002A8A7 */  sh         $t0, 0x250($sp)
    /* FD458 001FC4D8 5202A9A7 */  sh         $t1, 0x252($sp)
    /* FD45C 001FC4DC 4702A26B */  ldl        $v0, 0x247($sp)
    /* FD460 001FC4E0 4002A26F */  ldr        $v0, 0x240($sp)
    /* FD464 001FC4E4 4F02A36B */  ldl        $v1, 0x24F($sp)
    /* FD468 001FC4E8 4802A36F */  ldr        $v1, 0x248($sp)
    /* FD46C 001FC4EC 5702A86B */  ldl        $t0, 0x257($sp)
    /* FD470 001FC4F0 5002A86F */  ldr        $t0, 0x250($sp)
    /* FD474 001FC4F4 0702A2B3 */  sdl        $v0, 0x207($sp)
    /* FD478 001FC4F8 0002A2B7 */  sdr        $v0, 0x200($sp)
    /* FD47C 001FC4FC 0F02A3B3 */  sdl        $v1, 0x20F($sp)
    /* FD480 001FC500 0802A3B7 */  sdr        $v1, 0x208($sp)
    /* FD484 001FC504 1702A8B3 */  sdl        $t0, 0x217($sp)
    /* FD488 001FC508 1002A8B7 */  sdr        $t0, 0x210($sp)
    /* FD48C 001FC50C 58DD070C */  jal        func_001F7560
    /* FD490 001FC510 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FD494 001FC514 0E02A387 */  lh         $v1, 0x20E($sp)
    /* FD498 001FC518 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FD49C 001FC51C 0400028E */  lw         $v0, 0x4($s0)
    /* FD4A0 001FC520 28006324 */  addiu      $v1, $v1, 0x28
    /* FD4A4 001FC524 23104300 */  subu       $v0, $v0, $v1
    /* FD4A8 001FC528 43100200 */  sra        $v0, $v0, 1
    /* FD4AC 001FC52C 21184300 */  addu       $v1, $v0, $v1
    /* FD4B0 001FC530 04004524 */  addiu      $a1, $v0, 0x4
    /* FD4B4 001FC534 0A02A5A7 */  sh         $a1, 0x20A($sp)
    /* FD4B8 001FC538 0202A3A7 */  sh         $v1, 0x202($sp)
    /* FD4BC 001FC53C 30E6070C */  jal        func_001F98C0
    /* FD4C0 001FC540 0002A2A7 */   sh        $v0, 0x200($sp)
    /* FD4C4 001FC544 00088244 */  mtc1       $v0, $f1
    /* FD4C8 001FC548 00000000 */  nop
    /* FD4CC 001FC54C 60088046 */  cvt.s.w    $f1, $f1
    /* FD4D0 001FC550 A042013C */  lui        $at, (0x42A00000 >> 16)
    /* FD4D4 001FC554 00008144 */  mtc1       $at, $f0
    /* FD4D8 001FC558 040074C6 */  lwc1       $f20, 0x4($s3)
    /* FD4DC 001FC55C 20A58046 */  cvt.s.w    $f20, $f20
    /* FD4E0 001FC560 0002A487 */  lh         $a0, 0x200($sp)
    /* FD4E4 001FC564 0202A587 */  lh         $a1, 0x202($sp)
    /* FD4E8 001FC568 60000624 */  addiu      $a2, $zero, 0x60
    /* FD4EC 001FC56C 03A50146 */  div.s      $f20, $f20, $f1
    /* FD4F0 001FC570 01AD1446 */  sub.s      $f20, $f21, $f20
    /* FD4F4 001FC574 02A00046 */  mul.s      $f0, $f20, $f0
    /* FD4F8 001FC578 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FD4FC 001FC57C 00080844 */  mfc1       $t0, $f1
    /* FD500 001FC580 B2D8070C */  jal        func_001F62C8
    /* FD504 001FC584 A0010724 */   addiu     $a3, $zero, 0x1A0
    /* FD508 001FC588 1202A297 */  lhu        $v0, 0x212($sp)
    /* FD50C 001FC58C 06A30046 */  mov.s      $f12, $f20
    /* FD510 001FC590 F088848F */  lw         $a0, -0x7710($gp)
    /* FD514 001FC594 04004238 */  xori       $v0, $v0, 0x4
    /* FD518 001FC598 F488858F */  lw         $a1, -0x770C($gp)
    /* FD51C 001FC59C 2AEA070C */  jal        func_001FA8A8
    /* FD520 001FC5A0 1202A2A7 */   sh        $v0, 0x212($sp)
    /* FD524 001FC5A4 2D284000 */  daddu      $a1, $v0, $zero
    /* FD528 001FC5A8 2D304002 */  daddu      $a2, $s2, $zero
    /* FD52C 001FC5AC 2D202002 */  daddu      $a0, $s1, $zero
    /* FD530 001FC5B0 58DD070C */  jal        func_001F7560
    /* FD534 001FC5B4 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FD538 001FC5B8 30E6070C */  jal        func_001F98C0
    /* FD53C 001FC5BC 1E000424 */   addiu     $a0, $zero, 0x1E
    /* FD540 001FC5C0 24006CC6 */  lwc1       $f12, 0x24($s3)
    /* FD544 001FC5C4 20638046 */  cvt.s.w    $f12, $f12
    /* FD548 001FC5C8 2000043C */  lui        $a0, (0x20FFFF >> 16)
    /* FD54C 001FC5CC 00008244 */  mtc1       $v0, $f0
    /* FD550 001FC5D0 00000000 */  nop
    /* FD554 001FC5D4 20008046 */  cvt.s.w    $f0, $f0
    /* FD558 001FC5D8 2080053C */  lui        $a1, (0x8020FFFF >> 16)
    /* FD55C 001FC5DC FFFF8434 */  ori        $a0, $a0, (0x20FFFF & 0xFFFF)
    /* FD560 001FC5E0 FFFFA534 */  ori        $a1, $a1, (0x8020FFFF & 0xFFFF)
    /* FD564 001FC5E4 03630046 */  div.s      $f12, $f12, $f0
    /* FD568 001FC5E8 2AEA070C */  jal        func_001FA8A8
    /* FD56C 001FC5EC 01AB0C46 */   sub.s     $f12, $f21, $f12
    /* FD570 001FC5F0 6C038012 */  beqz       $s4, .L001FD3A4
    /* FD574 001FC5F4 0202B087 */   lh        $s0, 0x202($sp)
    /* FD578 001FC5F8 2D884000 */  daddu      $s1, $v0, $zero
    /* FD57C 001FC5FC 2D208002 */  daddu      $a0, $s4, $zero
    /* FD580 001FC600 50F9070C */  jal        func_001FE540
    /* FD584 001FC604 ECFF1026 */   addiu     $s0, $s0, -0x14
    /* FD588 001FC608 2D280002 */  daddu      $a1, $s0, $zero
    /* FD58C 001FC60C 2D302002 */  daddu      $a2, $s1, $zero
    /* FD590 001FC610 2D384000 */  daddu      $a3, $v0, $zero
    /* FD594 001FC614 1F030010 */  b          .L001FD294
    /* FD598 001FC618 00010424 */   addiu     $a0, $zero, 0x100
    /* FD59C 001FC61C 1400033C */  lui        $v1, %hi(D_0013D440)
    /* FD5A0 001FC620 40D4628C */  lw         $v0, %lo(D_0013D440)($v1)
    /* FD5A4 001FC624 5F034014 */  bnez       $v0, .L001FD3A4
    /* FD5A8 001FC628 01001224 */   addiu     $s2, $zero, 0x1
    /* FD5AC 001FC62C 0034E226 */  addiu      $v0, $s7, 0x3400
    /* FD5B0 001FC630 2000438C */  lw         $v1, 0x20($v0)
    /* FD5B4 001FC634 5B036018 */  blez       $v1, .L001FD3A4
    /* FD5B8 001FC638 B082828F */   lw        $v0, -0x7D50($gp)
    /* FD5BC 001FC63C 1600033C */  lui        $v1, %hi(D_0015F648)
    /* FD5C0 001FC640 48F67324 */  addiu      $s3, $v1, %lo(D_0015F648)
    /* FD5C4 001FC644 2DB00000 */  daddu      $s6, $zero, $zero
    /* FD5C8 001FC648 FEFF4324 */  addiu      $v1, $v0, -0x2
    /* FD5CC 001FC64C 2DA00000 */  daddu      $s4, $zero, $zero
    /* FD5D0 001FC650 1700622C */  sltiu      $v0, $v1, 0x17
    /* FD5D4 001FC654 67004010 */  beqz       $v0, .L001FC7F4
    /* FD5D8 001FC658 2DA80000 */   daddu     $s5, $zero, $zero
    /* FD5DC 001FC65C 1E00023C */  lui        $v0, %hi(jtbl_001E7C60)
    /* FD5E0 001FC660 80180300 */  sll        $v1, $v1, 2
    /* FD5E4 001FC664 607C4224 */  addiu      $v0, $v0, %lo(jtbl_001E7C60)
    /* FD5E8 001FC668 21186200 */  addu       $v1, $v1, $v0
    /* FD5EC 001FC66C 0000648C */  lw         $a0, 0x0($v1)
    /* FD5F0 001FC670 08008000 */  jr         $a0
    /* FD5F4 001FC674 00000000 */   nop
    /* FD5F8 001FC678 4E000010 */  b          .L001FC7B4
    /* FD5FC 001FC67C AF4F0424 */   addiu     $a0, $zero, 0x4FAF
    /* FD600 001FC680 1D00023C */  lui        $v0, %hi(D_001D60C0)
    /* FD604 001FC684 C060438C */  lw         $v1, %lo(D_001D60C0)($v0)
    /* FD608 001FC688 54006014 */  bnez       $v1, .L001FC7DC
    /* FD60C 001FC68C A74F0424 */   addiu     $a0, $zero, 0x4FA7
    /* FD610 001FC690 48000010 */  b          .L001FC7B4
    /* FD614 001FC694 AD4F0424 */   addiu     $a0, $zero, 0x4FAD
    /* FD618 001FC698 51000010 */  b          .L001FC7E0
    /* FD61C 001FC69C B74F0424 */   addiu     $a0, $zero, 0x4FB7
    /* FD620 001FC6A0 4F000010 */  b          .L001FC7E0
    /* FD624 001FC6A4 B84F0424 */   addiu     $a0, $zero, 0x4FB8
    /* FD628 001FC6A8 BA4F0424 */  addiu      $a0, $zero, 0x4FBA
    /* FD62C 001FC6AC 4C000010 */  b          .L001FC7E0
    /* FD630 001FC6B0 4F521424 */   addiu     $s4, $zero, 0x524F
    /* FD634 001FC6B4 BC4F0424 */  addiu      $a0, $zero, 0x4FBC
    /* FD638 001FC6B8 49000010 */  b          .L001FC7E0
    /* FD63C 001FC6BC 4F521424 */   addiu     $s4, $zero, 0x524F
    /* FD640 001FC6C0 A64F0424 */  addiu      $a0, $zero, 0x4FA6
    /* FD644 001FC6C4 50F9070C */  jal        func_001FE540
    /* FD648 001FC6C8 4F521424 */   addiu     $s4, $zero, 0x524F
    /* FD64C 001FC6CC 0034E326 */  addiu      $v1, $s7, 0x3400
    /* FD650 001FC6D0 2D984000 */  daddu      $s3, $v0, $zero
    /* FD654 001FC6D4 0400628C */  lw         $v0, 0x4($v1)
    /* FD658 001FC6D8 46000010 */  b          .L001FC7F4
    /* FD65C 001FC6DC 0BA00200 */   movn      $s4, $zero, $v0
    /* FD660 001FC6E0 1D00023C */  lui        $v0, %hi(D_001D60C0)
    /* FD664 001FC6E4 C060438C */  lw         $v1, %lo(D_001D60C0)($v0)
    /* FD668 001FC6E8 3C006014 */  bnez       $v1, .L001FC7DC
    /* FD66C 001FC6EC A74F0424 */   addiu     $a0, $zero, 0x4FA7
    /* FD670 001FC6F0 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* FD674 001FC6F4 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* FD678 001FC6F8 03004010 */  beqz       $v0, .L001FC708
    /* FD67C 001FC6FC 1600103C */   lui       $s0, %hi(D_0015F650)
    /* FD680 001FC700 0B000010 */  b          .L001FC730
    /* FD684 001FC704 A94F0424 */   addiu     $a0, $zero, 0x4FA9
.align 2
  .L001FC708:
    /* FD688 001FC708 34000010 */  b          .L001FC7DC
    /* FD68C 001FC70C A94F0424 */   addiu     $a0, $zero, 0x4FA9
    /* FD690 001FC710 BD4F0424 */  addiu      $a0, $zero, 0x4FBD
    /* FD694 001FC714 32000010 */  b          .L001FC7E0
    /* FD698 001FC718 4F521424 */   addiu     $s4, $zero, 0x524F
    /* FD69C 001FC71C BB4F0424 */  addiu      $a0, $zero, 0x4FBB
    /* FD6A0 001FC720 2F000010 */  b          .L001FC7E0
    /* FD6A4 001FC724 4F521424 */   addiu     $s4, $zero, 0x524F
    /* FD6A8 001FC728 1600103C */  lui        $s0, %hi(D_0015F650)
    /* FD6AC 001FC72C AE4F0424 */  addiu      $a0, $zero, 0x4FAE
.align 2
  .L001FC730:
    /* FD6B0 001FC730 50F61026 */  addiu      $s0, $s0, %lo(D_0015F650)
    /* FD6B4 001FC734 50F9070C */  jal        func_001FE540
    /* FD6B8 001FC738 53521624 */   addiu     $s6, $zero, 0x5253
    /* FD6BC 001FC73C 50521524 */  addiu      $s5, $zero, 0x5250
    /* FD6C0 001FC740 2D884000 */  daddu      $s1, $v0, $zero
    /* FD6C4 001FC744 50F9070C */  jal        func_001FE540
    /* FD6C8 001FC748 AA4F0424 */   addiu     $a0, $zero, 0x4FAA
    /* FD6CC 001FC74C 2D280002 */  daddu      $a1, $s0, $zero
    /* FD6D0 001FC750 2D302002 */  daddu      $a2, $s1, $zero
    /* FD6D4 001FC754 2D484000 */  daddu      $t1, $v0, $zero
    /* FD6D8 001FC758 2D20A003 */  daddu      $a0, $sp, $zero
    /* FD6DC 001FC75C 01000724 */  addiu      $a3, $zero, 0x1
    /* FD6E0 001FC760 9258040C */  jal        func_00116248
    /* FD6E4 001FC764 01000824 */   addiu     $t0, $zero, 0x1
    /* FD6E8 001FC768 22000010 */  b          .L001FC7F4
    /* FD6EC 001FC76C 2D98A003 */   daddu     $s3, $sp, $zero
    /* FD6F0 001FC770 B14F0424 */  addiu      $a0, $zero, 0x4FB1
    /* FD6F4 001FC774 10000010 */  b          .L001FC7B8
    /* FD6F8 001FC778 53521624 */   addiu     $s6, $zero, 0x5253
    /* FD6FC 001FC77C 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* FD700 001FC780 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* FD704 001FC784 07004010 */  beqz       $v0, .L001FC7A4
    /* FD708 001FC788 1D00023C */   lui       $v0, %hi(D_001D60C0)
    /* FD70C 001FC78C C060438C */  lw         $v1, %lo(D_001D60C0)($v0)
    /* FD710 001FC790 06006014 */  bnez       $v1, .L001FC7AC
    /* FD714 001FC794 CC89828F */   lw        $v0, -0x7634($gp)
    /* FD718 001FC798 AB4F0424 */  addiu      $a0, $zero, 0x4FAB
    /* FD71C 001FC79C 06000010 */  b          .L001FC7B8
    /* FD720 001FC7A0 53521624 */   addiu     $s6, $zero, 0x5253
.align 2
  .L001FC7A4:
    /* FD724 001FC7A4 1600023C */  lui        $v0, %hi(D_0015F6CC)
    /* FD728 001FC7A8 CCF6428C */  lw         $v0, %lo(D_0015F6CC)($v0)
.align 2
  .L001FC7AC:
    /* FD72C 001FC7AC 06004010 */  beqz       $v0, .L001FC7C8
    /* FD730 001FC7B0 AB4F0424 */   addiu     $a0, $zero, 0x4FAB
.align 2
  .L001FC7B4:
    /* FD734 001FC7B4 54521624 */  addiu      $s6, $zero, 0x5254
.align 2
  .L001FC7B8:
    /* FD738 001FC7B8 50F9070C */  jal        func_001FE540
    /* FD73C 001FC7BC 50521524 */   addiu     $s5, $zero, 0x5250
    /* FD740 001FC7C0 0C000010 */  b          .L001FC7F4
    /* FD744 001FC7C4 2D984000 */   daddu     $s3, $v0, $zero
.align 2
  .L001FC7C8:
    /* FD748 001FC7C8 1D00023C */  lui        $v0, %hi(D_001D60C0)
    /* FD74C 001FC7CC C060438C */  lw         $v1, %lo(D_001D60C0)($v0)
    /* FD750 001FC7D0 02006010 */  beqz       $v1, .L001FC7DC
    /* FD754 001FC7D4 AC4F0424 */   addiu     $a0, $zero, 0x4FAC
    /* FD758 001FC7D8 A74F0424 */  addiu      $a0, $zero, 0x4FA7
.align 2
  .L001FC7DC:
    /* FD75C 001FC7DC A84F1424 */  addiu      $s4, $zero, 0x4FA8
.align 2
  .L001FC7E0:
    /* FD760 001FC7E0 50F9070C */  jal        func_001FE540
    /* FD764 001FC7E4 00000000 */   nop
    /* FD768 001FC7E8 02000010 */  b          .L001FC7F4
    /* FD76C 001FC7EC 2D984000 */   daddu     $s3, $v0, $zero
    /* FD770 001FC7F0 2D900000 */  daddu      $s2, $zero, $zero
.align 2
  .L001FC7F4:
    /* FD774 001FC7F4 EB024012 */  beqz       $s2, .L001FD3A4
    /* FD778 001FC7F8 2002A427 */   addiu     $a0, $sp, 0x220
    /* FD77C 001FC7FC 18000624 */  addiu      $a2, $zero, 0x18
    /* FD780 001FC800 2D280000 */  daddu      $a1, $zero, $zero
    /* FD784 001FC804 FF54040C */  jal        func_001153FC
    /* FD788 001FC808 0034F226 */   addiu     $s2, $s7, 0x3400
    /* FD78C 001FC80C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FD790 001FC810 00A88144 */  mtc1       $at, $f21
    /* FD794 001FC814 1400103C */  lui        $s0, %hi(D_0013E600)
    /* FD798 001FC818 05000924 */  addiu      $t1, $zero, 0x5
    /* FD79C 001FC81C 00E61026 */  addiu      $s0, $s0, %lo(D_0013E600)
    /* FD7A0 001FC820 10000824 */  addiu      $t0, $zero, 0x10
    /* FD7A4 001FC824 04000296 */  lhu        $v0, 0x4($s0)
    /* FD7A8 001FC828 60000324 */  addiu      $v1, $zero, 0x60
    /* FD7AC 001FC82C A0010424 */  addiu      $a0, $zero, 0x1A0
    /* FD7B0 001FC830 00010624 */  addiu      $a2, $zero, 0x100
    /* FD7B4 001FC834 68000724 */  addiu      $a3, $zero, 0x68
    /* FD7B8 001FC838 2202A2A7 */  sh         $v0, 0x222($sp)
    /* FD7BC 001FC83C 2402A3A7 */  sh         $v1, 0x224($sp)
    /* FD7C0 001FC840 0002B127 */  addiu      $s1, $sp, 0x200
    /* FD7C4 001FC844 2602A4A7 */  sh         $a0, 0x226($sp)
    /* FD7C8 001FC848 2D280000 */  daddu      $a1, $zero, $zero
    /* FD7CC 001FC84C 2802A6A7 */  sh         $a2, 0x228($sp)
    /* FD7D0 001FC850 2D202002 */  daddu      $a0, $s1, $zero
    /* FD7D4 001FC854 2A02A7A7 */  sh         $a3, 0x22A($sp)
    /* FD7D8 001FC858 2D306002 */  daddu      $a2, $s3, $zero
    /* FD7DC 001FC85C 3002A8A7 */  sh         $t0, 0x230($sp)
    /* FD7E0 001FC860 3202A9A7 */  sh         $t1, 0x232($sp)
    /* FD7E4 001FC864 2702A26B */  ldl        $v0, 0x227($sp)
    /* FD7E8 001FC868 2002A26F */  ldr        $v0, 0x220($sp)
    /* FD7EC 001FC86C 2F02A36B */  ldl        $v1, 0x22F($sp)
    /* FD7F0 001FC870 2802A36F */  ldr        $v1, 0x228($sp)
    /* FD7F4 001FC874 3702A86B */  ldl        $t0, 0x237($sp)
    /* FD7F8 001FC878 3002A86F */  ldr        $t0, 0x230($sp)
    /* FD7FC 001FC87C 0702A2B3 */  sdl        $v0, 0x207($sp)
    /* FD800 001FC880 0002A2B7 */  sdr        $v0, 0x200($sp)
    /* FD804 001FC884 0F02A3B3 */  sdl        $v1, 0x20F($sp)
    /* FD808 001FC888 0802A3B7 */  sdr        $v1, 0x208($sp)
    /* FD80C 001FC88C 1702A8B3 */  sdl        $t0, 0x217($sp)
    /* FD810 001FC890 1002A8B7 */  sdr        $t0, 0x210($sp)
    /* FD814 001FC894 58DD070C */  jal        func_001F7560
    /* FD818 001FC898 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FD81C 001FC89C 0E02A387 */  lh         $v1, 0x20E($sp)
    /* FD820 001FC8A0 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FD824 001FC8A4 0400028E */  lw         $v0, 0x4($s0)
    /* FD828 001FC8A8 28006324 */  addiu      $v1, $v1, 0x28
    /* FD82C 001FC8AC 23104300 */  subu       $v0, $v0, $v1
    /* FD830 001FC8B0 43100200 */  sra        $v0, $v0, 1
    /* FD834 001FC8B4 21184300 */  addu       $v1, $v0, $v1
    /* FD838 001FC8B8 04004524 */  addiu      $a1, $v0, 0x4
    /* FD83C 001FC8BC 0A02A5A7 */  sh         $a1, 0x20A($sp)
    /* FD840 001FC8C0 0202A3A7 */  sh         $v1, 0x202($sp)
    /* FD844 001FC8C4 30E6070C */  jal        func_001F98C0
    /* FD848 001FC8C8 0002A2A7 */   sh        $v0, 0x200($sp)
    /* FD84C 001FC8CC 00088244 */  mtc1       $v0, $f1
    /* FD850 001FC8D0 00000000 */  nop
    /* FD854 001FC8D4 60088046 */  cvt.s.w    $f1, $f1
    /* FD858 001FC8D8 A042013C */  lui        $at, (0x42A00000 >> 16)
    /* FD85C 001FC8DC 00008144 */  mtc1       $at, $f0
    /* FD860 001FC8E0 040054C6 */  lwc1       $f20, 0x4($s2)
    /* FD864 001FC8E4 20A58046 */  cvt.s.w    $f20, $f20
    /* FD868 001FC8E8 0002A487 */  lh         $a0, 0x200($sp)
    /* FD86C 001FC8EC 0202A587 */  lh         $a1, 0x202($sp)
    /* FD870 001FC8F0 60000624 */  addiu      $a2, $zero, 0x60
    /* FD874 001FC8F4 03A50146 */  div.s      $f20, $f20, $f1
    /* FD878 001FC8F8 01AD1446 */  sub.s      $f20, $f21, $f20
    /* FD87C 001FC8FC 02A00046 */  mul.s      $f0, $f20, $f0
    /* FD880 001FC900 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FD884 001FC904 00080844 */  mfc1       $t0, $f1
    /* FD888 001FC908 B2D8070C */  jal        func_001F62C8
    /* FD88C 001FC90C A0010724 */   addiu     $a3, $zero, 0x1A0
    /* FD890 001FC910 1202A297 */  lhu        $v0, 0x212($sp)
    /* FD894 001FC914 06A30046 */  mov.s      $f12, $f20
    /* FD898 001FC918 F088848F */  lw         $a0, -0x7710($gp)
    /* FD89C 001FC91C 04004238 */  xori       $v0, $v0, 0x4
    /* FD8A0 001FC920 F488858F */  lw         $a1, -0x770C($gp)
    /* FD8A4 001FC924 2AEA070C */  jal        func_001FA8A8
    /* FD8A8 001FC928 1202A2A7 */   sh        $v0, 0x212($sp)
    /* FD8AC 001FC92C 2D284000 */  daddu      $a1, $v0, $zero
    /* FD8B0 001FC930 2D306002 */  daddu      $a2, $s3, $zero
    /* FD8B4 001FC934 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* FD8B8 001FC938 58DD070C */  jal        func_001F7560
    /* FD8BC 001FC93C 2D202002 */   daddu     $a0, $s1, $zero
    /* FD8C0 001FC940 30E6070C */  jal        func_001F98C0
    /* FD8C4 001FC944 1E000424 */   addiu     $a0, $zero, 0x1E
    /* FD8C8 001FC948 24004CC6 */  lwc1       $f12, 0x24($s2)
    /* FD8CC 001FC94C 20638046 */  cvt.s.w    $f12, $f12
    /* FD8D0 001FC950 2000043C */  lui        $a0, (0x20FFFF >> 16)
    /* FD8D4 001FC954 00008244 */  mtc1       $v0, $f0
    /* FD8D8 001FC958 00000000 */  nop
    /* FD8DC 001FC95C 20008046 */  cvt.s.w    $f0, $f0
    /* FD8E0 001FC960 2080053C */  lui        $a1, (0x8020FFFF >> 16)
    /* FD8E4 001FC964 FFFF8434 */  ori        $a0, $a0, (0x20FFFF & 0xFFFF)
    /* FD8E8 001FC968 FFFFA534 */  ori        $a1, $a1, (0x8020FFFF & 0xFFFF)
    /* FD8EC 001FC96C 03630046 */  div.s      $f12, $f12, $f0
    /* FD8F0 001FC970 2AEA070C */  jal        func_001FA8A8
    /* FD8F4 001FC974 01AB0C46 */   sub.s     $f12, $f21, $f12
    /* FD8F8 001FC978 0C00C012 */  beqz       $s6, .L001FC9AC
    /* FD8FC 001FC97C 2D904000 */   daddu     $s2, $v0, $zero
    /* FD900 001FC980 0202B087 */  lh         $s0, 0x202($sp)
    /* FD904 001FC984 2D20C002 */  daddu      $a0, $s6, $zero
    /* FD908 001FC988 2D884002 */  daddu      $s1, $s2, $zero
    /* FD90C 001FC98C 50F9070C */  jal        func_001FE540
    /* FD910 001FC990 ECFF1026 */   addiu     $s0, $s0, -0x14
    /* FD914 001FC994 2D280002 */  daddu      $a1, $s0, $zero
    /* FD918 001FC998 2D302002 */  daddu      $a2, $s1, $zero
    /* FD91C 001FC99C 2D384000 */  daddu      $a3, $v0, $zero
    /* FD920 001FC9A0 CA000424 */  addiu      $a0, $zero, 0xCA
    /* FD924 001FC9A4 AADB070C */  jal        func_001F6EA8
    /* FD928 001FC9A8 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L001FC9AC:
    /* FD92C 001FC9AC 0B00A012 */  beqz       $s5, .L001FC9DC
    /* FD930 001FC9B0 0202B087 */   lh        $s0, 0x202($sp)
    /* FD934 001FC9B4 2D20A002 */  daddu      $a0, $s5, $zero
    /* FD938 001FC9B8 2D884002 */  daddu      $s1, $s2, $zero
    /* FD93C 001FC9BC 50F9070C */  jal        func_001FE540
    /* FD940 001FC9C0 ECFF1026 */   addiu     $s0, $s0, -0x14
    /* FD944 001FC9C4 2D280002 */  daddu      $a1, $s0, $zero
    /* FD948 001FC9C8 2D302002 */  daddu      $a2, $s1, $zero
    /* FD94C 001FC9CC 2D384000 */  daddu      $a3, $v0, $zero
    /* FD950 001FC9D0 35010424 */  addiu      $a0, $zero, 0x135
    /* FD954 001FC9D4 AADB070C */  jal        func_001F6EA8
    /* FD958 001FC9D8 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L001FC9DC:
    /* FD95C 001FC9DC 71028012 */  beqz       $s4, .L001FD3A4
    /* FD960 001FC9E0 0202B087 */   lh        $s0, 0x202($sp)
    /* FD964 001FC9E4 2D208002 */  daddu      $a0, $s4, $zero
    /* FD968 001FC9E8 2D884002 */  daddu      $s1, $s2, $zero
    /* FD96C 001FC9EC 50F9070C */  jal        func_001FE540
    /* FD970 001FC9F0 ECFF1026 */   addiu     $s0, $s0, -0x14
    /* FD974 001FC9F4 2D280002 */  daddu      $a1, $s0, $zero
    /* FD978 001FC9F8 2D302002 */  daddu      $a2, $s1, $zero
    /* FD97C 001FC9FC 2D384000 */  daddu      $a3, $v0, $zero
    /* FD980 001FCA00 24020010 */  b          .L001FD294
    /* FD984 001FCA04 00010424 */   addiu     $a0, $zero, 0x100
    /* FD988 001FCA08 1E00023C */  lui        $v0, %hi(D_001E7C10)
    /* FD98C 001FCA0C 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FD990 001FCA10 107C4724 */  addiu      $a3, $v0, %lo(D_001E7C10)
    /* FD994 001FCA14 0700E368 */  ldl        $v1, 0x7($a3)
    /* FD998 001FCA18 0000E36C */  ldr        $v1, 0x0($a3)
    /* FD99C 001FCA1C 0F00E568 */  ldl        $a1, 0xF($a3)
    /* FD9A0 001FCA20 0800E56C */  ldr        $a1, 0x8($a3)
    /* FD9A4 001FCA24 1700E668 */  ldl        $a2, 0x17($a3)
    /* FD9A8 001FCA28 1000E66C */  ldr        $a2, 0x10($a3)
    /* FD9AC 001FCA2C 0702A3B3 */  sdl        $v1, 0x207($sp)
    /* FD9B0 001FCA30 0002A3B7 */  sdr        $v1, 0x200($sp)
    /* FD9B4 001FCA34 0F02A5B3 */  sdl        $a1, 0x20F($sp)
    /* FD9B8 001FCA38 0802A5B7 */  sdr        $a1, 0x208($sp)
    /* FD9BC 001FCA3C 1702A6B3 */  sdl        $a2, 0x217($sp)
    /* FD9C0 001FCA40 1002A6B7 */  sdr        $a2, 0x210($sp)
    /* FD9C4 001FCA44 30E6070C */  jal        func_001F98C0
    /* FD9C8 001FCA48 0034F026 */   addiu     $s0, $s7, 0x3400
    /* FD9CC 001FCA4C 00108244 */  mtc1       $v0, $f2
    /* FD9D0 001FCA50 00000000 */  nop
    /* FD9D4 001FCA54 A0108046 */  cvt.s.w    $f2, $f2
    /* FD9D8 001FCA58 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FD9DC 001FCA5C 00A08144 */  mtc1       $at, $f20
    /* FD9E0 001FCA60 040000C6 */  lwc1       $f0, 0x4($s0)
    /* FD9E4 001FCA64 20008046 */  cvt.s.w    $f0, $f0
    /* FD9E8 001FCA68 A042013C */  lui        $at, (0x42A00000 >> 16)
    /* FD9EC 001FCA6C 00088144 */  mtc1       $at, $f1
    /* FD9F0 001FCA70 60000624 */  addiu      $a2, $zero, 0x60
    /* FD9F4 001FCA74 A0010724 */  addiu      $a3, $zero, 0x1A0
    /* FD9F8 001FCA78 64000424 */  addiu      $a0, $zero, 0x64
    /* FD9FC 001FCA7C 03000246 */  div.s      $f0, $f0, $f2
    /* FDA00 001FCA80 01A50046 */  sub.s      $f20, $f20, $f0
    /* FDA04 001FCA84 42A00146 */  mul.s      $f1, $f20, $f1
    /* FDA08 001FCA88 24080046 */  .word      0x46000824                    # cvt.w.s    $f0, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FDA0C 001FCA8C 00000844 */  mfc1       $t0, $f0
    /* FDA10 001FCA90 B2D8070C */  jal        func_001F62C8
    /* FDA14 001FCA94 2C010524 */   addiu     $a1, $zero, 0x12C
    /* FDA18 001FCA98 F088848F */  lw         $a0, -0x7710($gp)
    /* FDA1C 001FCA9C 06A30046 */  mov.s      $f12, $f20
    /* FDA20 001FCAA0 2AEA070C */  jal        func_001FA8A8
    /* FDA24 001FCAA4 F488858F */   lw        $a1, -0x770C($gp)
    /* FDA28 001FCAA8 2000043C */  lui        $a0, (0x20FFFF >> 16)
    /* FDA2C 001FCAAC 2080053C */  lui        $a1, (0x8020FFFF >> 16)
    /* FDA30 001FCAB0 FFFF8434 */  ori        $a0, $a0, (0x20FFFF & 0xFFFF)
    /* FDA34 001FCAB4 2D884000 */  daddu      $s1, $v0, $zero
    /* FDA38 001FCAB8 06A30046 */  mov.s      $f12, $f20
    /* FDA3C 001FCABC 2AEA070C */  jal        func_001FA8A8
    /* FDA40 001FCAC0 FFFFA534 */   ori       $a1, $a1, (0x8020FFFF & 0xFFFF)
    /* FDA44 001FCAC4 2D204000 */  daddu      $a0, $v0, $zero
    /* FDA48 001FCAC8 1C00038E */  lw         $v1, 0x1C($s0)
    /* FDA4C 001FCACC 02000224 */  addiu      $v0, $zero, 0x2
    /* FDA50 001FCAD0 1B006210 */  beq        $v1, $v0, .L001FCB40
    /* FDA54 001FCAD4 03006228 */   slti      $v0, $v1, 0x3
    /* FDA58 001FCAD8 05004014 */  bnez       $v0, .L001FCAF0
    /* FDA5C 001FCADC 03000224 */   addiu     $v0, $zero, 0x3
    /* FDA60 001FCAE0 2A006210 */  beq        $v1, $v0, .L001FCB8C
    /* FDA64 001FCAE4 2D808000 */   daddu     $s0, $a0, $zero
    /* FDA68 001FCAE8 33000010 */  b          .L001FCBB8
    /* FDA6C 001FCAEC 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L001FCAF0:
    /* FDA70 001FCAF0 30006004 */  bltz       $v1, .L001FCBB4
    /* FDA74 001FCAF4 2D808000 */   daddu     $s0, $a0, $zero
    /* FDA78 001FCAF8 50F9070C */  jal        func_001FE540
    /* FDA7C 001FCAFC 53520424 */   addiu     $a0, $zero, 0x5253
    /* FDA80 001FCB00 2D384000 */  daddu      $a3, $v0, $zero
    /* FDA84 001FCB04 18010524 */  addiu      $a1, $zero, 0x118
    /* FDA88 001FCB08 2D300002 */  daddu      $a2, $s0, $zero
    /* FDA8C 001FCB0C FFFF0824 */  addiu      $t0, $zero, -0x1
    /* FDA90 001FCB10 AADB070C */  jal        func_001F6EA8
    /* FDA94 001FCB14 CA000424 */   addiu     $a0, $zero, 0xCA
    /* FDA98 001FCB18 50F9070C */  jal        func_001FE540
    /* FDA9C 001FCB1C 50520424 */   addiu     $a0, $zero, 0x5250
    /* FDAA0 001FCB20 35010424 */  addiu      $a0, $zero, 0x135
    /* FDAA4 001FCB24 2D300002 */  daddu      $a2, $s0, $zero
    /* FDAA8 001FCB28 2D384000 */  daddu      $a3, $v0, $zero
    /* FDAAC 001FCB2C 18010524 */  addiu      $a1, $zero, 0x118
    /* FDAB0 001FCB30 AADB070C */  jal        func_001F6EA8
    /* FDAB4 001FCB34 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FDAB8 001FCB38 1F000010 */  b          .L001FCBB8
    /* FDABC 001FCB3C 2F520424 */   addiu     $a0, $zero, 0x522F
.align 2
  .L001FCB40:
    /* FDAC0 001FCB40 2D808000 */  daddu      $s0, $a0, $zero
    /* FDAC4 001FCB44 50F9070C */  jal        func_001FE540
    /* FDAC8 001FCB48 53520424 */   addiu     $a0, $zero, 0x5253
    /* FDACC 001FCB4C 2D384000 */  daddu      $a3, $v0, $zero
    /* FDAD0 001FCB50 18010524 */  addiu      $a1, $zero, 0x118
    /* FDAD4 001FCB54 2D300002 */  daddu      $a2, $s0, $zero
    /* FDAD8 001FCB58 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* FDADC 001FCB5C AADB070C */  jal        func_001F6EA8
    /* FDAE0 001FCB60 CA000424 */   addiu     $a0, $zero, 0xCA
    /* FDAE4 001FCB64 50F9070C */  jal        func_001FE540
    /* FDAE8 001FCB68 50520424 */   addiu     $a0, $zero, 0x5250
    /* FDAEC 001FCB6C 35010424 */  addiu      $a0, $zero, 0x135
    /* FDAF0 001FCB70 2D300002 */  daddu      $a2, $s0, $zero
    /* FDAF4 001FCB74 2D384000 */  daddu      $a3, $v0, $zero
    /* FDAF8 001FCB78 18010524 */  addiu      $a1, $zero, 0x118
    /* FDAFC 001FCB7C AADB070C */  jal        func_001F6EA8
    /* FDB00 001FCB80 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FDB04 001FCB84 0C000010 */  b          .L001FCBB8
    /* FDB08 001FCB88 30520424 */   addiu     $a0, $zero, 0x5230
.align 2
  .L001FCB8C:
    /* FDB0C 001FCB8C 50F9070C */  jal        func_001FE540
    /* FDB10 001FCB90 4F520424 */   addiu     $a0, $zero, 0x524F
    /* FDB14 001FCB94 00010424 */  addiu      $a0, $zero, 0x100
    /* FDB18 001FCB98 2D300002 */  daddu      $a2, $s0, $zero
    /* FDB1C 001FCB9C 2D384000 */  daddu      $a3, $v0, $zero
    /* FDB20 001FCBA0 18010524 */  addiu      $a1, $zero, 0x118
    /* FDB24 001FCBA4 AADB070C */  jal        func_001F6EA8
    /* FDB28 001FCBA8 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FDB2C 001FCBAC 02000010 */  b          .L001FCBB8
    /* FDB30 001FCBB0 31520424 */   addiu     $a0, $zero, 0x5231
.align 2
  .L001FCBB4:
    /* FDB34 001FCBB4 2D200000 */  daddu      $a0, $zero, $zero
.align 2
  .L001FCBB8:
    /* FDB38 001FCBB8 FA018010 */  beqz       $a0, .L001FD3A4
    /* FDB3C 001FCBBC 0002B227 */   addiu     $s2, $sp, 0x200
    /* FDB40 001FCBC0 50F9070C */  jal        func_001FE540
    /* FDB44 001FCBC4 2D802002 */   daddu     $s0, $s1, $zero
    /* FDB48 001FCBC8 2D884000 */  daddu      $s1, $v0, $zero
    /* FDB4C 001FCBCC 1AD2070C */  jal        func_001F4868
    /* FDB50 001FCBD0 01000424 */   addiu     $a0, $zero, 0x1
    /* FDB54 001FCBD4 1E00093C */  lui        $t1, %hi(D_001DF3D0)
    /* FDB58 001FCBD8 2D204002 */  daddu      $a0, $s2, $zero
    /* FDB5C 001FCBDC 2D280002 */  daddu      $a1, $s0, $zero
    /* FDB60 001FCBE0 2D302002 */  daddu      $a2, $s1, $zero
    /* FDB64 001FCBE4 2D404000 */  daddu      $t0, $v0, $zero
    /* FDB68 001FCBE8 D0F32925 */  addiu      $t1, $t1, %lo(D_001DF3D0)
    /* FDB6C 001FCBEC 1CDC070C */  jal        func_001F7070
    /* FDB70 001FCBF0 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* FDB74 001FCBF4 EB010010 */  b          .L001FD3A4
    /* FDB78 001FCBF8 00000000 */   nop
    /* FDB7C 001FCBFC 22EA070C */  jal        func_001FA888
    /* FDB80 001FCC00 2089848F */   lw        $a0, -0x76E0($gp)
    /* FDB84 001FCC04 2089828F */  lw         $v0, -0x76E0($gp)
    /* FDB88 001FCC08 1600033C */  lui        $v1, %hi(D_0015F538)
    /* FDB8C 001FCC0C 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* FDB90 001FCC10 C940013C */  lui        $at, (0x40C90FD0 >> 16)
    /* FDB94 001FCC14 D00F2134 */  ori        $at, $at, (0x40C90FD0 & 0xFFFF)
    /* FDB98 001FCC18 00108144 */  mtc1       $at, $f2
    /* FDB9C 001FCC1C 01004050 */  beql       $v0, $zero, .L001FCC24
    /* FDBA0 001FCC20 CD010000 */   break     0, 7
.align 2
  .L001FCC24:
    /* FDBA4 001FCC24 1A006200 */  div        $zero, $v1, $v0
    /* FDBA8 001FCC28 4940013C */  lui        $at, (0x40490FD0 >> 16)
    /* FDBAC 001FCC2C D00F2134 */  ori        $at, $at, (0x40490FD0 & 0xFFFF)
    /* FDBB0 001FCC30 00088144 */  mtc1       $at, $f1
    /* FDBB4 001FCC34 10200000 */  mfhi       $a0
    /* FDBB8 001FCC38 00608444 */  mtc1       $a0, $f12
    /* FDBBC 001FCC3C 00000000 */  nop
    /* FDBC0 001FCC40 20638046 */  cvt.s.w    $f12, $f12
    /* FDBC4 001FCC44 03630046 */  div.s      $f12, $f12, $f0
    /* FDBC8 001FCC48 02630246 */  mul.s      $f12, $f12, $f2
    /* FDBCC 001FCC4C EAE7070C */  jal        func_001F9FA8
    /* FDBD0 001FCC50 01630146 */   sub.s     $f12, $f12, $f1
    /* FDBD4 001FCC54 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* FDBD8 001FCC58 00608144 */  mtc1       $at, $f12
    /* FDBDC 001FCC5C 2489848F */  lw         $a0, -0x76DC($gp)
    /* FDBE0 001FCC60 02000C46 */  mul.s      $f0, $f0, $f12
    /* FDBE4 001FCC64 2889858F */  lw         $a1, -0x76D8($gp)
    /* FDBE8 001FCC68 2AEA070C */  jal        func_001FA8A8
    /* FDBEC 001FCC6C 00030C46 */   add.s     $f12, $f0, $f12
    /* FDBF0 001FCC70 2DA04000 */  daddu      $s4, $v0, $zero
    /* FDBF4 001FCC74 003E013C */  lui        $at, (0x3E000000 >> 16)
    /* FDBF8 001FCC78 00088144 */  mtc1       $at, $f1
    /* FDBFC 001FCC7C 0034E226 */  addiu      $v0, $s7, 0x3400
    /* FDC00 001FCC80 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FDC04 001FCC84 00108144 */  mtc1       $at, $f2
    /* FDC08 001FCC88 200040C4 */  lwc1       $f0, 0x20($v0)
    /* FDC0C 001FCC8C 20008046 */  cvt.s.w    $f0, $f0
    /* FDC10 001FCC90 42050146 */  mul.s      $f21, $f0, $f1
    /* FDC14 001FCC94 34101546 */  c.lt.s     $f2, $f21
    /* FDC18 001FCC98 00000000 */  nop
    /* FDC1C 001FCC9C 03000045 */  bc1f       .L001FCCAC
    /* FDC20 001FCCA0 00000000 */   nop
    /* FDC24 001FCCA4 09000010 */  b          .L001FCCCC
    /* FDC28 001FCCA8 46150046 */   mov.s     $f21, $f2
.align 2
  .L001FCCAC:
    /* FDC2C 001FCCAC CC3D013C */  lui        $at, (0x3DCCCCCD >> 16)
    /* FDC30 001FCCB0 CDCC2134 */  ori        $at, $at, (0x3DCCCCCD & 0xFFFF)
    /* FDC34 001FCCB4 00008144 */  mtc1       $at, $f0
    /* FDC38 001FCCB8 00000000 */  nop
    /* FDC3C 001FCCBC 34A80046 */  c.lt.s     $f21, $f0
    /* FDC40 001FCCC0 00000000 */  nop
    /* FDC44 001FCCC4 01000345 */  bc1tl      .L001FCCCC
    /* FDC48 001FCCC8 46050046 */   mov.s     $f21, $f0
.align 2
  .L001FCCCC:
    /* FDC4C 001FCCCC 2C89838F */  lw         $v1, -0x76D4($gp)
    /* FDC50 001FCCD0 0034E226 */  addiu      $v0, $s7, 0x3400
    /* FDC54 001FCCD4 3489978F */  lw         $s7, -0x76CC($gp)
    /* FDC58 001FCCD8 6002A3AF */  sw         $v1, 0x260($sp)
    /* FDC5C 001FCCDC 2400428C */  lw         $v0, 0x24($v0)
    /* FDC60 001FCCE0 24004010 */  beqz       $v0, .L001FCD74
    /* FDC64 001FCCE4 3C899E8F */   lw        $fp, -0x76C4($gp)
    /* FDC68 001FCCE8 00088244 */  mtc1       $v0, $f1
    /* FDC6C 001FCCEC 00000000 */  nop
    /* FDC70 001FCCF0 60088046 */  cvt.s.w    $f1, $f1
    /* FDC74 001FCCF4 003E013C */  lui        $at, (0x3E000000 >> 16)
    /* FDC78 001FCCF8 00008144 */  mtc1       $at, $f0
    /* FDC7C 001FCCFC 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* FDC80 001FCD00 00108144 */  mtc1       $at, $f2
    /* FDC84 001FCD04 020D0046 */  mul.s      $f20, $f1, $f0
    /* FDC88 001FCD08 34101446 */  c.lt.s     $f2, $f20
    /* FDC8C 001FCD0C 00000000 */  nop
    /* FDC90 001FCD10 03000045 */  bc1f       .L001FCD20
    /* FDC94 001FCD14 00000000 */   nop
    /* FDC98 001FCD18 07000010 */  b          .L001FCD38
    /* FDC9C 001FCD1C 06150046 */   mov.s     $f20, $f2
.align 2
  .L001FCD20:
    /* FDCA0 001FCD20 00008044 */  mtc1       $zero, $f0
    /* FDCA4 001FCD24 00000000 */  nop
    /* FDCA8 001FCD28 34A00046 */  c.lt.s     $f20, $f0
    /* FDCAC 001FCD2C 00000000 */  nop
    /* FDCB0 001FCD30 01000345 */  bc1tl      .L001FCD38
    /* FDCB4 001FCD34 06050046 */   mov.s     $f20, $f0
.align 2
  .L001FCD38:
    /* FDCB8 001FCD38 2C89848F */  lw         $a0, -0x76D4($gp)
    /* FDCBC 001FCD3C 06A30046 */  mov.s      $f12, $f20
    /* FDCC0 001FCD40 2AEA070C */  jal        func_001FA8A8
    /* FDCC4 001FCD44 3089858F */   lw        $a1, -0x76D0($gp)
    /* FDCC8 001FCD48 3489848F */  lw         $a0, -0x76CC($gp)
    /* FDCCC 001FCD4C 06A30046 */  mov.s      $f12, $f20
    /* FDCD0 001FCD50 3889858F */  lw         $a1, -0x76C8($gp)
    /* FDCD4 001FCD54 2AEA070C */  jal        func_001FA8A8
    /* FDCD8 001FCD58 6002A2AF */   sw        $v0, 0x260($sp)
    /* FDCDC 001FCD5C 3C89848F */  lw         $a0, -0x76C4($gp)
    /* FDCE0 001FCD60 2DB84000 */  daddu      $s7, $v0, $zero
    /* FDCE4 001FCD64 4089858F */  lw         $a1, -0x76C0($gp)
    /* FDCE8 001FCD68 2AEA070C */  jal        func_001FA8A8
    /* FDCEC 001FCD6C 06A30046 */   mov.s     $f12, $f20
    /* FDCF0 001FCD70 2DF04000 */  daddu      $fp, $v0, $zero
.align 2
  .L001FCD74:
    /* FDCF4 001FCD74 1400033C */  lui        $v1, %hi(D_0013F450)
    /* FDCF8 001FCD78 50F47324 */  addiu      $s3, $v1, %lo(D_0013F450)
    /* FDCFC 001FCD7C 9A086286 */  lh         $v0, 0x89A($s3)
    /* FDD00 001FCD80 03004228 */  slti       $v0, $v0, 0x3
    /* FDD04 001FCD84 3A004010 */  beqz       $v0, .L001FCE70
    /* FDD08 001FCD88 00000000 */   nop
    /* FDD0C 001FCD8C 04898CC7 */  lwc1       $f12, -0x76FC($gp)
    /* FDD10 001FCD90 20638046 */  cvt.s.w    $f12, $f12
    /* FDD14 001FCD94 6002B38F */  lw         $s3, 0x260($sp)
    /* FDD18 001FCD98 26EA070C */  jal        func_001FA898
    /* FDD1C 001FCD9C 02631546 */   mul.s     $f12, $f12, $f21
    /* FDD20 001FCDA0 04898CC7 */  lwc1       $f12, -0x76FC($gp)
    /* FDD24 001FCDA4 20638046 */  cvt.s.w    $f12, $f12
    /* FDD28 001FCDA8 FC88928F */  lw         $s2, -0x7704($gp)
    /* FDD2C 001FCDAC 23904202 */  subu       $s2, $s2, $v0
    /* FDD30 001FCDB0 26EA070C */  jal        func_001FA898
    /* FDD34 001FCDB4 02631546 */   mul.s     $f12, $f12, $f21
    /* FDD38 001FCDB8 00898CC7 */  lwc1       $f12, -0x7700($gp)
    /* FDD3C 001FCDBC 20638046 */  cvt.s.w    $f12, $f12
    /* FDD40 001FCDC0 FC88918F */  lw         $s1, -0x7704($gp)
    /* FDD44 001FCDC4 21882202 */  addu       $s1, $s1, $v0
    /* FDD48 001FCDC8 26EA070C */  jal        func_001FA898
    /* FDD4C 001FCDCC 02631546 */   mul.s     $f12, $f12, $f21
    /* FDD50 001FCDD0 00898CC7 */  lwc1       $f12, -0x7700($gp)
    /* FDD54 001FCDD4 20638046 */  cvt.s.w    $f12, $f12
    /* FDD58 001FCDD8 F888908F */  lw         $s0, -0x7708($gp)
    /* FDD5C 001FCDDC 23800202 */  subu       $s0, $s0, $v0
    /* FDD60 001FCDE0 26EA070C */  jal        func_001FA898
    /* FDD64 001FCDE4 02631546 */   mul.s     $f12, $f12, $f21
    /* FDD68 001FCDE8 F888878F */  lw         $a3, -0x7708($gp)
    /* FDD6C 001FCDEC 2D300002 */  daddu      $a2, $s0, $zero
    /* FDD70 001FCDF0 2D282002 */  daddu      $a1, $s1, $zero
    /* FDD74 001FCDF4 2D408002 */  daddu      $t0, $s4, $zero
    /* FDD78 001FCDF8 2138E200 */  addu       $a3, $a3, $v0
    /* FDD7C 001FCDFC 04D9070C */  jal        func_001F6410
    /* FDD80 001FCE00 2D204002 */   daddu     $a0, $s2, $zero
    /* FDD84 001FCE04 50F9070C */  jal        func_001FE540
    /* FDD88 001FCE08 6E4F0424 */   addiu     $a0, $zero, 0x4F6E
    /* FDD8C 001FCE0C 0889858F */  lw         $a1, -0x76F8($gp)
    /* FDD90 001FCE10 2D384000 */  daddu      $a3, $v0, $zero
    /* FDD94 001FCE14 2D306002 */  daddu      $a2, $s3, $zero
    /* FDD98 001FCE18 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* FDD9C 001FCE1C AADB070C */  jal        func_001F6EA8
    /* FDDA0 001FCE20 00010424 */   addiu     $a0, $zero, 0x100
    /* FDDA4 001FCE24 0889908F */  lw         $s0, -0x76F8($gp)
    /* FDDA8 001FCE28 4E520424 */  addiu      $a0, $zero, 0x524E
    /* FDDAC 001FCE2C 50F9070C */  jal        func_001FE540
    /* FDDB0 001FCE30 18001026 */   addiu     $s0, $s0, 0x18
    /* FDDB4 001FCE34 2D280002 */  daddu      $a1, $s0, $zero
    /* FDDB8 001FCE38 2D384000 */  daddu      $a3, $v0, $zero
    /* FDDBC 001FCE3C 2D306002 */  daddu      $a2, $s3, $zero
    /* FDDC0 001FCE40 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* FDDC4 001FCE44 AADB070C */  jal        func_001F6EA8
    /* FDDC8 001FCE48 00010424 */   addiu     $a0, $zero, 0x100
    /* FDDCC 001FCE4C 0889908F */  lw         $s0, -0x76F8($gp)
    /* FDDD0 001FCE50 4D520424 */  addiu      $a0, $zero, 0x524D
    /* FDDD4 001FCE54 50F9070C */  jal        func_001FE540
    /* FDDD8 001FCE58 30001026 */   addiu     $s0, $s0, 0x30
    /* FDDDC 001FCE5C 2D280002 */  daddu      $a1, $s0, $zero
    /* FDDE0 001FCE60 2D306002 */  daddu      $a2, $s3, $zero
    /* FDDE4 001FCE64 2D384000 */  daddu      $a3, $v0, $zero
    /* FDDE8 001FCE68 0A010010 */  b          .L001FD294
    /* FDDEC 001FCE6C 00010424 */   addiu     $a0, $zero, 0x100
.align 2
  .L001FCE70:
    /* FDDF0 001FCE70 18898CC7 */  lwc1       $f12, -0x76E8($gp)
    /* FDDF4 001FCE74 20638046 */  cvt.s.w    $f12, $f12
    /* FDDF8 001FCE78 26EA070C */  jal        func_001FA898
    /* FDDFC 001FCE7C 02631546 */   mul.s     $f12, $f12, $f21
    /* FDE00 001FCE80 18898CC7 */  lwc1       $f12, -0x76E8($gp)
    /* FDE04 001FCE84 20638046 */  cvt.s.w    $f12, $f12
    /* FDE08 001FCE88 1089928F */  lw         $s2, -0x76F0($gp)
    /* FDE0C 001FCE8C 23904202 */  subu       $s2, $s2, $v0
    /* FDE10 001FCE90 26EA070C */  jal        func_001FA898
    /* FDE14 001FCE94 02631546 */   mul.s     $f12, $f12, $f21
    /* FDE18 001FCE98 14898CC7 */  lwc1       $f12, -0x76EC($gp)
    /* FDE1C 001FCE9C 20638046 */  cvt.s.w    $f12, $f12
    /* FDE20 001FCEA0 1089918F */  lw         $s1, -0x76F0($gp)
    /* FDE24 001FCEA4 21882202 */  addu       $s1, $s1, $v0
    /* FDE28 001FCEA8 26EA070C */  jal        func_001FA898
    /* FDE2C 001FCEAC 02631546 */   mul.s     $f12, $f12, $f21
    /* FDE30 001FCEB0 14898CC7 */  lwc1       $f12, -0x76EC($gp)
    /* FDE34 001FCEB4 20638046 */  cvt.s.w    $f12, $f12
    /* FDE38 001FCEB8 0C89908F */  lw         $s0, -0x76F4($gp)
    /* FDE3C 001FCEBC 23800202 */  subu       $s0, $s0, $v0
    /* FDE40 001FCEC0 26EA070C */  jal        func_001FA898
    /* FDE44 001FCEC4 02631546 */   mul.s     $f12, $f12, $f21
    /* FDE48 001FCEC8 0C89878F */  lw         $a3, -0x76F4($gp)
    /* FDE4C 001FCECC 2D282002 */  daddu      $a1, $s1, $zero
    /* FDE50 001FCED0 2D300002 */  daddu      $a2, $s0, $zero
    /* FDE54 001FCED4 2D408002 */  daddu      $t0, $s4, $zero
    /* FDE58 001FCED8 2138E200 */  addu       $a3, $a3, $v0
    /* FDE5C 001FCEDC 04D9070C */  jal        func_001F6410
    /* FDE60 001FCEE0 2D204002 */   daddu     $a0, $s2, $zero
    /* FDE64 001FCEE4 C008648E */  lw         $a0, 0x8C0($s3)
    /* FDE68 001FCEE8 04000324 */  addiu      $v1, $zero, 0x4
    /* FDE6C 001FCEEC 1600103C */  lui        $s0, %hi(D_0015F660)
    /* FDE70 001FCEF0 0002B227 */  addiu      $s2, $sp, 0x200
    /* FDE74 001FCEF4 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* FDE78 001FCEF8 60F61026 */  addiu      $s0, $s0, %lo(D_0015F660)
    /* FDE7C 001FCEFC 05008228 */  slti       $v0, $a0, 0x5
    /* FDE80 001FCF00 2DB04002 */  daddu      $s6, $s2, $zero
    /* FDE84 001FCF04 0A206200 */  movz       $a0, $v1, $v0
    /* FDE88 001FCF08 50F9070C */  jal        func_001FE540
    /* FDE8C 001FCF0C 29528424 */   addiu     $a0, $a0, 0x5229
    /* FDE90 001FCF10 2D884000 */  daddu      $s1, $v0, $zero
    /* FDE94 001FCF14 50F9070C */  jal        func_001FE540
    /* FDE98 001FCF18 45520424 */   addiu     $a0, $zero, 0x5245
    /* FDE9C 001FCF1C 2D280002 */  daddu      $a1, $s0, $zero
    /* FDEA0 001FCF20 2D302002 */  daddu      $a2, $s1, $zero
    /* FDEA4 001FCF24 2D384000 */  daddu      $a3, $v0, $zero
    /* FDEA8 001FCF28 9258040C */  jal        func_00116248
    /* FDEAC 001FCF2C 2D204002 */   daddu     $a0, $s2, $zero
    /* FDEB0 001FCF30 C008638E */  lw         $v1, 0x8C0($s3)
    /* FDEB4 001FCF34 01000224 */  addiu      $v0, $zero, 0x1
    /* FDEB8 001FCF38 08006214 */  bne        $v1, $v0, .L001FCF5C
    /* FDEBC 001FCF3C 1C89858F */   lw        $a1, -0x76E4($gp)
    /* FDEC0 001FCF40 00010424 */  addiu      $a0, $zero, 0x100
    /* FDEC4 001FCF44 2D30E002 */  daddu      $a2, $s7, $zero
    /* FDEC8 001FCF48 2D38C002 */  daddu      $a3, $s6, $zero
    /* FDECC 001FCF4C AADB070C */  jal        func_001F6EA8
    /* FDED0 001FCF50 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FDED4 001FCF54 08000010 */  b          .L001FCF78
    /* FDED8 001FCF58 8481838F */   lw        $v1, -0x7E7C($gp)
.align 2
  .L001FCF5C:
    /* FDEDC 001FCF5C 00010424 */  addiu      $a0, $zero, 0x100
    /* FDEE0 001FCF60 2D30C003 */  daddu      $a2, $fp, $zero
    /* FDEE4 001FCF64 2D38C002 */  daddu      $a3, $s6, $zero
    /* FDEE8 001FCF68 AADB070C */  jal        func_001F6EA8
    /* FDEEC 001FCF6C FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FDEF0 001FCF70 1600033C */  lui        $v1, %hi(D_0015EE84)
    /* FDEF4 001FCF74 84EE638C */  lw         $v1, %lo(D_0015EE84)($v1)
.align 2
  .L001FCF78:
    /* FDEF8 001FCF78 04000224 */  addiu      $v0, $zero, 0x4
    /* FDEFC 001FCF7C 1600063C */  lui        $a2, %hi(D_0015EF58)
    /* FDF00 001FCF80 58EFC624 */  addiu      $a2, $a2, %lo(D_0015EF58)
    /* FDF04 001FCF84 1400053C */  lui        $a1, %hi(D_0013F450)
    /* FDF08 001FCF88 10006338 */  xori       $v1, $v1, 0x10
    /* FDF0C 001FCF8C 50F4A424 */  addiu      $a0, $a1, %lo(D_0013F450)
    /* FDF10 001FCF90 0B100300 */  movn       $v0, $zero, $v1
    /* FDF14 001FCF94 9408858C */  lw         $a1, 0x894($a0)
    /* FDF18 001FCF98 21104600 */  addu       $v0, $v0, $a2
    /* FDF1C 001FCF9C 0000468C */  lw         $a2, 0x0($v0)
    /* FDF20 001FCFA0 3800C514 */  bne        $a2, $a1, .L001FD084
    /* FDF24 001FCFA4 A2500424 */   addiu     $a0, $zero, 0x50A2
    /* FDF28 001FCFA8 1600043C */  lui        $a0, %hi(D_0015EE80)
    /* FDF2C 001FCFAC 80EE848C */  lw         $a0, %lo(D_0015EE80)($a0)
    /* FDF30 001FCFB0 B80B0324 */  addiu      $v1, $zero, 0xBB8
    /* FDF34 001FCFB4 100E1024 */  addiu      $s0, $zero, 0xE10
    /* FDF38 001FCFB8 3C000224 */  addiu      $v0, $zero, 0x3C
    /* FDF3C 001FCFBC 0B806400 */  movn       $s0, $v1, $a0
    /* FDF40 001FCFC0 01004050 */  beql       $v0, $zero, .L001FCFC8
    /* FDF44 001FCFC4 CD010000 */   break     0, 7
.align 2
  .L001FCFC8:
    /* FDF48 001FCFC8 1A00D000 */  div        $zero, $a2, $s0
    /* FDF4C 001FCFCC 64000524 */  addiu      $a1, $zero, 0x64
    /* FDF50 001FCFD0 1600153C */  lui        $s5, %hi(D_0015F668)
    /* FDF54 001FCFD4 A3500424 */  addiu      $a0, $zero, 0x50A3
    /* FDF58 001FCFD8 68F6B126 */  addiu      $s1, $s5, %lo(D_0015F668)
    /* FDF5C 001FCFDC 2DA0E002 */  daddu      $s4, $s7, $zero
    /* FDF60 001FCFE0 12980000 */  mflo       $s3
    /* FDF64 001FCFE4 1A000202 */  div        $zero, $s0, $v0
    /* FDF68 001FCFE8 12180000 */  mflo       $v1
    /* FDF6C 001FCFEC 18807002 */  mult       $s0, $s3, $s0
    /* FDF70 001FCFF0 2380D000 */  subu       $s0, $a2, $s0
    /* FDF74 001FCFF4 1A000302 */  div        $zero, $s0, $v1
    /* FDF78 001FCFF8 12900000 */  mflo       $s2
    /* FDF7C 001FCFFC 18104302 */  mult       $v0, $s2, $v1
    /* FDF80 001FD000 23800202 */  subu       $s0, $s0, $v0
    /* FDF84 001FD004 18800502 */  mult       $s0, $s0, $a1
    /* FDF88 001FD008 1A000302 */  div        $zero, $s0, $v1
    /* FDF8C 001FD00C 12800000 */  mflo       $s0
    /* FDF90 001FD010 50F9070C */  jal        func_001FE540
    /* FDF94 001FD014 00000000 */   nop
    /* FDF98 001FD018 2D282002 */  daddu      $a1, $s1, $zero
    /* FDF9C 001FD01C 2D304000 */  daddu      $a2, $v0, $zero
    /* FDFA0 001FD020 9258040C */  jal        func_00116248
    /* FDFA4 001FD024 2D20C002 */   daddu     $a0, $s6, $zero
    /* FDFA8 001FD028 1C89858F */  lw         $a1, -0x76E4($gp)
    /* FDFAC 001FD02C 00010424 */  addiu      $a0, $zero, 0x100
    /* FDFB0 001FD030 2D308002 */  daddu      $a2, $s4, $zero
    /* FDFB4 001FD034 2D38C002 */  daddu      $a3, $s6, $zero
    /* FDFB8 001FD038 2600A524 */  addiu      $a1, $a1, 0x26
    /* FDFBC 001FD03C AADB070C */  jal        func_001F6EA8
    /* FDFC0 001FD040 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FDFC4 001FD044 1600053C */  lui        $a1, %hi(D_0015F670)
    /* FDFC8 001FD048 2D400002 */  daddu      $t0, $s0, $zero
    /* FDFCC 001FD04C 70F6A524 */  addiu      $a1, $a1, %lo(D_0015F670)
    /* FDFD0 001FD050 2D306002 */  daddu      $a2, $s3, $zero
    /* FDFD4 001FD054 2D384002 */  daddu      $a3, $s2, $zero
    /* FDFD8 001FD058 9258040C */  jal        func_00116248
    /* FDFDC 001FD05C 2D20C002 */   daddu     $a0, $s6, $zero
    /* FDFE0 001FD060 1C89858F */  lw         $a1, -0x76E4($gp)
    /* FDFE4 001FD064 2D308002 */  daddu      $a2, $s4, $zero
    /* FDFE8 001FD068 00010424 */  addiu      $a0, $zero, 0x100
    /* FDFEC 001FD06C 2D38C002 */  daddu      $a3, $s6, $zero
    /* FDFF0 001FD070 3A00A524 */  addiu      $a1, $a1, 0x3A
    /* FDFF4 001FD074 AADB070C */  jal        func_001F6EA8
    /* FDFF8 001FD078 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FDFFC 001FD07C 0E000010 */  b          .L001FD0B8
    /* FE000 001FD080 2D80A002 */   daddu     $s0, $s5, $zero
.align 2
  .L001FD084:
    /* FE004 001FD084 50F9070C */  jal        func_001FE540
    /* FE008 001FD088 1600103C */   lui       $s0, %hi(D_0015F668)
    /* FE00C 001FD08C 68F60526 */  addiu      $a1, $s0, %lo(D_0015F668)
    /* FE010 001FD090 2D304000 */  daddu      $a2, $v0, $zero
    /* FE014 001FD094 9258040C */  jal        func_00116248
    /* FE018 001FD098 2D20C002 */   daddu     $a0, $s6, $zero
    /* FE01C 001FD09C 1C89858F */  lw         $a1, -0x76E4($gp)
    /* FE020 001FD0A0 00010424 */  addiu      $a0, $zero, 0x100
    /* FE024 001FD0A4 2D30C003 */  daddu      $a2, $fp, $zero
    /* FE028 001FD0A8 2D38C002 */  daddu      $a3, $s6, $zero
    /* FE02C 001FD0AC 3000A524 */  addiu      $a1, $a1, 0x30
    /* FE030 001FD0B0 AADB070C */  jal        func_001F6EA8
    /* FE034 001FD0B4 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L001FD0B8:
    /* FE038 001FD0B8 1600023C */  lui        $v0, %hi(D_0015EE84)
    /* FE03C 001FD0BC 84EE428C */  lw         $v0, %lo(D_0015EE84)($v0)
    /* FE040 001FD0C0 04000324 */  addiu      $v1, $zero, 0x4
    /* FE044 001FD0C4 1600043C */  lui        $a0, %hi(D_0015EF68)
    /* FE048 001FD0C8 68EF8424 */  addiu      $a0, $a0, %lo(D_0015EF68)
    /* FE04C 001FD0CC 10004238 */  xori       $v0, $v0, 0x10
    /* FE050 001FD0D0 0B180200 */  movn       $v1, $zero, $v0
    /* FE054 001FD0D4 21186400 */  addu       $v1, $v1, $a0
    /* FE058 001FD0D8 0000638C */  lw         $v1, 0x0($v1)
    /* FE05C 001FD0DC 21006010 */  beqz       $v1, .L001FD164
    /* FE060 001FD0E0 1400023C */   lui       $v0, %hi(D_0013F450)
    /* FE064 001FD0E4 50F45224 */  addiu      $s2, $v0, %lo(D_0013F450)
    /* FE068 001FD0E8 A808428E */  lw         $v0, 0x8A8($s2)
    /* FE06C 001FD0EC 1E006214 */  bne        $v1, $v0, .L001FD168
    /* FE070 001FD0F0 68F61026 */   addiu     $s0, $s0, %lo(D_0015F668)
    /* FE074 001FD0F4 50F9070C */  jal        func_001FE540
    /* FE078 001FD0F8 A5500424 */   addiu     $a0, $zero, 0x50A5
    /* FE07C 001FD0FC 2D88E002 */  daddu      $s1, $s7, $zero
    /* FE080 001FD100 2D280002 */  daddu      $a1, $s0, $zero
    /* FE084 001FD104 2D304000 */  daddu      $a2, $v0, $zero
    /* FE088 001FD108 9258040C */  jal        func_00116248
    /* FE08C 001FD10C 2D20C002 */   daddu     $a0, $s6, $zero
    /* FE090 001FD110 1C89858F */  lw         $a1, -0x76E4($gp)
    /* FE094 001FD114 2D38C002 */  daddu      $a3, $s6, $zero
    /* FE098 001FD118 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* FE09C 001FD11C 00010424 */  addiu      $a0, $zero, 0x100
    /* FE0A0 001FD120 5600A524 */  addiu      $a1, $a1, 0x56
    /* FE0A4 001FD124 AADB070C */  jal        func_001F6EA8
    /* FE0A8 001FD128 2D302002 */   daddu     $a2, $s1, $zero
    /* FE0AC 001FD12C A808468E */  lw         $a2, 0x8A8($s2)
    /* FE0B0 001FD130 1600053C */  lui        $a1, %hi(D_0015F680)
    /* FE0B4 001FD134 80F6A524 */  addiu      $a1, $a1, %lo(D_0015F680)
    /* FE0B8 001FD138 9258040C */  jal        func_00116248
    /* FE0BC 001FD13C 2D20C002 */   daddu     $a0, $s6, $zero
    /* FE0C0 001FD140 1C89858F */  lw         $a1, -0x76E4($gp)
    /* FE0C4 001FD144 2D302002 */  daddu      $a2, $s1, $zero
    /* FE0C8 001FD148 2D38C002 */  daddu      $a3, $s6, $zero
    /* FE0CC 001FD14C 00010424 */  addiu      $a0, $zero, 0x100
    /* FE0D0 001FD150 6A00A524 */  addiu      $a1, $a1, 0x6A
    /* FE0D4 001FD154 AADB070C */  jal        func_001F6EA8
    /* FE0D8 001FD158 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FE0DC 001FD15C 10000010 */  b          .L001FD1A0
    /* FE0E0 001FD160 1C89908F */   lw        $s0, -0x76E4($gp)
.align 2
  .L001FD164:
    /* FE0E4 001FD164 68F61026 */  addiu      $s0, $s0, %lo(D_0015F668)
.align 2
  .L001FD168:
    /* FE0E8 001FD168 50F9070C */  jal        func_001FE540
    /* FE0EC 001FD16C A4500424 */   addiu     $a0, $zero, 0x50A4
    /* FE0F0 001FD170 2D280002 */  daddu      $a1, $s0, $zero
    /* FE0F4 001FD174 2D304000 */  daddu      $a2, $v0, $zero
    /* FE0F8 001FD178 9258040C */  jal        func_00116248
    /* FE0FC 001FD17C 2D20C002 */   daddu     $a0, $s6, $zero
    /* FE100 001FD180 1C89858F */  lw         $a1, -0x76E4($gp)
    /* FE104 001FD184 2D30C003 */  daddu      $a2, $fp, $zero
    /* FE108 001FD188 2D38C002 */  daddu      $a3, $s6, $zero
    /* FE10C 001FD18C 00010424 */  addiu      $a0, $zero, 0x100
    /* FE110 001FD190 6000A524 */  addiu      $a1, $a1, 0x60
    /* FE114 001FD194 AADB070C */  jal        func_001F6EA8
    /* FE118 001FD198 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FE11C 001FD19C 1C89908F */  lw         $s0, -0x76E4($gp)
.align 2
  .L001FD1A0:
    /* FE120 001FD1A0 4E520424 */  addiu      $a0, $zero, 0x524E
    /* FE124 001FD1A4 6002B18F */  lw         $s1, 0x260($sp)
    /* FE128 001FD1A8 50F9070C */  jal        func_001FE540
    /* FE12C 001FD1AC 90001026 */   addiu     $s0, $s0, 0x90
    /* FE130 001FD1B0 2D280002 */  daddu      $a1, $s0, $zero
    /* FE134 001FD1B4 2D384000 */  daddu      $a3, $v0, $zero
    /* FE138 001FD1B8 2D302002 */  daddu      $a2, $s1, $zero
    /* FE13C 001FD1BC FFFF0824 */  addiu      $t0, $zero, -0x1
    /* FE140 001FD1C0 AADB070C */  jal        func_001F6EA8
    /* FE144 001FD1C4 00010424 */   addiu     $a0, $zero, 0x100
    /* FE148 001FD1C8 1C89908F */  lw         $s0, -0x76E4($gp)
    /* FE14C 001FD1CC 4D520424 */  addiu      $a0, $zero, 0x524D
    /* FE150 001FD1D0 50F9070C */  jal        func_001FE540
    /* FE154 001FD1D4 A8001026 */   addiu     $s0, $s0, 0xA8
    /* FE158 001FD1D8 2D280002 */  daddu      $a1, $s0, $zero
    /* FE15C 001FD1DC 2D302002 */  daddu      $a2, $s1, $zero
    /* FE160 001FD1E0 2D384000 */  daddu      $a3, $v0, $zero
    /* FE164 001FD1E4 2B000010 */  b          .L001FD294
    /* FE168 001FD1E8 00010424 */   addiu     $a0, $zero, 0x100
    /* FE16C 001FD1EC 22EA070C */  jal        func_001FA888
    /* FE170 001FD1F0 2089848F */   lw        $a0, -0x76E0($gp)
    /* FE174 001FD1F4 2089828F */  lw         $v0, -0x76E0($gp)
    /* FE178 001FD1F8 1600033C */  lui        $v1, %hi(D_0015F538)
    /* FE17C 001FD1FC 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* FE180 001FD200 C940013C */  lui        $at, (0x40C90FD0 >> 16)
    /* FE184 001FD204 D00F2134 */  ori        $at, $at, (0x40C90FD0 & 0xFFFF)
    /* FE188 001FD208 00108144 */  mtc1       $at, $f2
    /* FE18C 001FD20C 01004050 */  beql       $v0, $zero, .L001FD214
    /* FE190 001FD210 CD010000 */   break     0, 7
.align 2
  .L001FD214:
    /* FE194 001FD214 1A006200 */  div        $zero, $v1, $v0
    /* FE198 001FD218 4940013C */  lui        $at, (0x40490FD0 >> 16)
    /* FE19C 001FD21C D00F2134 */  ori        $at, $at, (0x40490FD0 & 0xFFFF)
    /* FE1A0 001FD220 00088144 */  mtc1       $at, $f1
    /* FE1A4 001FD224 10200000 */  mfhi       $a0
    /* FE1A8 001FD228 00608444 */  mtc1       $a0, $f12
    /* FE1AC 001FD22C 00000000 */  nop
    /* FE1B0 001FD230 20638046 */  cvt.s.w    $f12, $f12
    /* FE1B4 001FD234 03630046 */  div.s      $f12, $f12, $f0
    /* FE1B8 001FD238 02630246 */  mul.s      $f12, $f12, $f2
    /* FE1BC 001FD23C EAE7070C */  jal        func_001F9FA8
    /* FE1C0 001FD240 01630146 */   sub.s     $f12, $f12, $f1
    /* FE1C4 001FD244 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* FE1C8 001FD248 00608144 */  mtc1       $at, $f12
    /* FE1CC 001FD24C 2489848F */  lw         $a0, -0x76DC($gp)
    /* FE1D0 001FD250 02000C46 */  mul.s      $f0, $f0, $f12
    /* FE1D4 001FD254 2889858F */  lw         $a1, -0x76D8($gp)
    /* FE1D8 001FD258 2AEA070C */  jal        func_001FA8A8
    /* FE1DC 001FD25C 00030C46 */   add.s     $f12, $f0, $f12
    /* FE1E0 001FD260 2D404000 */  daddu      $t0, $v0, $zero
    /* FE1E4 001FD264 64000424 */  addiu      $a0, $zero, 0x64
    /* FE1E8 001FD268 A0000524 */  addiu      $a1, $zero, 0xA0
    /* FE1EC 001FD26C B0000624 */  addiu      $a2, $zero, 0xB0
    /* FE1F0 001FD270 04D9070C */  jal        func_001F6410
    /* FE1F4 001FD274 50010724 */   addiu     $a3, $zero, 0x150
    /* FE1F8 001FD278 0034E226 */  addiu      $v0, $s7, 0x3400
    /* FE1FC 001FD27C 00010424 */  addiu      $a0, $zero, 0x100
    /* FE200 001FD280 0800478C */  lw         $a3, 0x8($v0)
    /* FE204 001FD284 7A000524 */  addiu      $a1, $zero, 0x7A
    /* FE208 001FD288 00800634 */  ori        $a2, $zero, 0x8000
    /* FE20C 001FD28C 38340600 */  dsll       $a2, $a2, 16
    /* FE210 001FD290 C0C0C634 */  ori        $a2, $a2, 0xC0C0
.align 2
  .L001FD294:
    /* FE214 001FD294 AADB070C */  jal        func_001F6EA8
    /* FE218 001FD298 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* FE21C 001FD29C 41000010 */  b          .L001FD3A4
    /* FE220 001FD2A0 00000000 */   nop
.align 2
  .L001FD2A4:
    /* FE224 001FD2A4 2089848F */  lw         $a0, -0x76E0($gp)
    /* FE228 001FD2A8 22EA070C */  jal        func_001FA888
    /* FE22C 001FD2AC 0034F026 */   addiu     $s0, $s7, %lo(D_00193400)
    /* FE230 001FD2B0 2089828F */  lw         $v0, -0x76E0($gp)
    /* FE234 001FD2B4 1600033C */  lui        $v1, %hi(D_0015F538)
    /* FE238 001FD2B8 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* FE23C 001FD2BC C940013C */  lui        $at, (0x40C90FD0 >> 16)
    /* FE240 001FD2C0 D00F2134 */  ori        $at, $at, (0x40C90FD0 & 0xFFFF)
    /* FE244 001FD2C4 00108144 */  mtc1       $at, $f2
    /* FE248 001FD2C8 01004050 */  beql       $v0, $zero, .L001FD2D0
    /* FE24C 001FD2CC CD010000 */   break     0, 7
.align 2
  .L001FD2D0:
    /* FE250 001FD2D0 1A006200 */  div        $zero, $v1, $v0
    /* FE254 001FD2D4 4940013C */  lui        $at, (0x40490FD0 >> 16)
    /* FE258 001FD2D8 D00F2134 */  ori        $at, $at, (0x40490FD0 & 0xFFFF)
    /* FE25C 001FD2DC 00088144 */  mtc1       $at, $f1
    /* FE260 001FD2E0 10200000 */  mfhi       $a0
    /* FE264 001FD2E4 00608444 */  mtc1       $a0, $f12
    /* FE268 001FD2E8 00000000 */  nop
    /* FE26C 001FD2EC 20638046 */  cvt.s.w    $f12, $f12
    /* FE270 001FD2F0 03630046 */  div.s      $f12, $f12, $f0
    /* FE274 001FD2F4 02630246 */  mul.s      $f12, $f12, $f2
    /* FE278 001FD2F8 EAE7070C */  jal        func_001F9FA8
    /* FE27C 001FD2FC 01630146 */   sub.s     $f12, $f12, $f1
    /* FE280 001FD300 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* FE284 001FD304 00608144 */  mtc1       $at, $f12
    /* FE288 001FD308 2889858F */  lw         $a1, -0x76D8($gp)
    /* FE28C 001FD30C 02000C46 */  mul.s      $f0, $f0, $f12
    /* FE290 001FD310 2489848F */  lw         $a0, -0x76DC($gp)
    /* FE294 001FD314 2AEA070C */  jal        func_001FA8A8
    /* FE298 001FD318 00030C46 */   add.s     $f12, $f0, $f12
    /* FE29C 001FD31C EC88858F */  lw         $a1, -0x7714($gp)
    /* FE2A0 001FD320 50010724 */  addiu      $a3, $zero, 0x150
    /* FE2A4 001FD324 2D404000 */  daddu      $t0, $v0, $zero
    /* FE2A8 001FD328 50000424 */  addiu      $a0, $zero, 0x50
    /* FE2AC 001FD32C B0000624 */  addiu      $a2, $zero, 0xB0
    /* FE2B0 001FD330 04D9070C */  jal        func_001F6410
    /* FE2B4 001FD334 1A00A524 */   addiu     $a1, $a1, 0x1A
    /* FE2B8 001FD338 0800078E */  lw         $a3, 0x8($s0)
    /* FE2BC 001FD33C 0700E010 */  beqz       $a3, .L001FD35C
    /* FE2C0 001FD340 00010424 */   addiu     $a0, $zero, 0x100
    /* FE2C4 001FD344 5A000524 */  addiu      $a1, $zero, 0x5A
    /* FE2C8 001FD348 00800634 */  ori        $a2, $zero, 0x8000
    /* FE2CC 001FD34C 38340600 */  dsll       $a2, $a2, 16
    /* FE2D0 001FD350 C0C0C634 */  ori        $a2, $a2, 0xC0C0
    /* FE2D4 001FD354 AADB070C */  jal        func_001F6EA8
    /* FE2D8 001FD358 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L001FD35C:
    /* FE2DC 001FD35C 0C00078E */  lw         $a3, 0xC($s0)
    /* FE2E0 001FD360 0700E010 */  beqz       $a3, .L001FD380
    /* FE2E4 001FD364 E888858F */   lw        $a1, -0x7718($gp)
    /* FE2E8 001FD368 00010424 */  addiu      $a0, $zero, 0x100
    /* FE2EC 001FD36C FF800634 */  ori        $a2, $zero, 0x80FF
    /* FE2F0 001FD370 38340600 */  dsll       $a2, $a2, 16
    /* FE2F4 001FD374 88A8C634 */  ori        $a2, $a2, 0xA888
    /* FE2F8 001FD378 AADB070C */  jal        func_001F6EA8
    /* FE2FC 001FD37C FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L001FD380:
    /* FE300 001FD380 1000078E */  lw         $a3, 0x10($s0)
    /* FE304 001FD384 0700E010 */  beqz       $a3, .L001FD3A4
    /* FE308 001FD388 EC88858F */   lw        $a1, -0x7714($gp)
    /* FE30C 001FD38C 00010424 */  addiu      $a0, $zero, 0x100
    /* FE310 001FD390 FF800634 */  ori        $a2, $zero, 0x80FF
    /* FE314 001FD394 38340600 */  dsll       $a2, $a2, 16
    /* FE318 001FD398 88A8C634 */  ori        $a2, $a2, 0xA888
    /* FE31C 001FD39C AADB070C */  jal        func_001F6EA8
    /* FE320 001FD3A0 FFFF0824 */   addiu     $t0, $zero, -0x1
.align 2
  .L001FD3A4:
    /* FE324 001FD3A4 D2D1070C */  jal        func_001F4748
    /* FE328 001FD3A8 00000000 */   nop
    /* FE32C 001FD3AC 0003BF7B */  lq         $ra, 0x300($sp)
.align 2
  .L001FD3B0:
    /* FE330 001FD3B0 F002BE7B */  lq         $fp, 0x2F0($sp)
    /* FE334 001FD3B4 E002B77B */  lq         $s7, 0x2E0($sp)
    /* FE338 001FD3B8 D002B67B */  lq         $s6, 0x2D0($sp)
    /* FE33C 001FD3BC C002B57B */  lq         $s5, 0x2C0($sp)
    /* FE340 001FD3C0 B002B47B */  lq         $s4, 0x2B0($sp)
    /* FE344 001FD3C4 A002B37B */  lq         $s3, 0x2A0($sp)
    /* FE348 001FD3C8 9002B27B */  lq         $s2, 0x290($sp)
    /* FE34C 001FD3CC 8002B17B */  lq         $s1, 0x280($sp)
    /* FE350 001FD3D0 7002B07B */  lq         $s0, 0x270($sp)
    /* FE354 001FD3D4 2003B6C7 */  lwc1       $f22, 0x320($sp)
    /* FE358 001FD3D8 1803B5C7 */  lwc1       $f21, 0x318($sp)
    /* FE35C 001FD3DC 1003B4C7 */  lwc1       $f20, 0x310($sp)
    /* FE360 001FD3E0 0800E003 */  jr         $ra
    /* FE364 001FD3E4 3003BD27 */   addiu     $sp, $sp, 0x330
endlabel func_001FBE80
