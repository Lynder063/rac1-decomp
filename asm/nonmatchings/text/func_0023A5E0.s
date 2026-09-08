.align 3
nonmatching func_0023A5E0, 0x364

glabel func_0023A5E0
    /* 13B560 0023A5E0 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 13B564 0023A5E4 0300053C */  lui        $a1, (0x32003 >> 16)
    /* 13B568 0023A5E8 0320A534 */  ori        $a1, $a1, (0x32003 & 0xFFFF)
    /* 13B56C 0023A5EC 6000B67F */  sq         $s6, 0x60($sp)
    /* 13B570 0023A5F0 B000B8E7 */  swc1       $f24, 0xB0($sp)
    /* 13B574 0023A5F4 2DB08000 */  daddu      $s6, $a0, $zero
    /* 13B578 0023A5F8 A800B7E7 */  swc1       $f23, 0xA8($sp)
    /* 13B57C 0023A5FC 47000424 */  addiu      $a0, $zero, 0x47
    /* 13B580 0023A600 7000B77F */  sq         $s7, 0x70($sp)
    /* 13B584 0023A604 C6650046 */  mov.s      $f23, $f12
    /* 13B588 0023A608 8000BF7F */  sq         $ra, 0x80($sp)
    /* 13B58C 0023A60C 066E0046 */  mov.s      $f24, $f13
    /* 13B590 0023A610 5000B57F */  sq         $s5, 0x50($sp)
    /* 13B594 0023A614 4000B47F */  sq         $s4, 0x40($sp)
    /* 13B598 0023A618 3000B37F */  sq         $s3, 0x30($sp)
    /* 13B59C 0023A61C 2000B27F */  sq         $s2, 0x20($sp)
    /* 13B5A0 0023A620 1000B17F */  sq         $s1, 0x10($sp)
    /* 13B5A4 0023A624 0000B07F */  sq         $s0, 0x0($sp)
    /* 13B5A8 0023A628 A000B6E7 */  swc1       $f22, 0xA0($sp)
    /* 13B5AC 0023A62C 9800B5E7 */  swc1       $f21, 0x98($sp)
    /* 13B5B0 0023A630 26D3080C */  jal        func_00234C98
    /* 13B5B4 0023A634 9000B4E7 */   swc1      $f20, 0x90($sp)
    /* 13B5B8 0023A638 1E00023C */  lui        $v0, %hi(D_001E6920)
    /* 13B5BC 0023A63C 80181600 */  sll        $v1, $s6, 2
    /* 13B5C0 0023A640 2DB84000 */  daddu      $s7, $v0, $zero
    /* 13B5C4 0023A644 20694224 */  addiu      $v0, $v0, %lo(D_001E6920)
    /* 13B5C8 0023A648 21286200 */  addu       $a1, $v1, $v0
    /* 13B5CC 0023A64C 0000A48C */  lw         $a0, 0x0($a1)
    /* 13B5D0 0023A650 06008014 */  bnez       $a0, .L0023A66C
    /* 13B5D4 0023A654 02008224 */   addiu     $v0, $a0, 0x2
    /* 13B5D8 0023A658 4700C016 */  bnez       $s6, .L0023A778
    /* 13B5DC 0023A65C 2DA86000 */   daddu     $s5, $v1, $zero
    /* 13B5E0 0023A660 2069E28E */  lw         $v0, %lo(D_001E6920)($s7)
    /* 13B5E4 0023A664 03004010 */  beqz       $v0, .L0023A674
    /* 13B5E8 0023A668 02008224 */   addiu     $v0, $a0, 0x2
.align 2
  .L0023A66C:
    /* 13B5EC 0023A66C 0000A2AC */  sw         $v0, 0x0($a1)
    /* 13B5F0 0023A670 80181600 */  sll        $v1, $s6, 2
.align 2
  .L0023A674:
    /* 13B5F4 0023A674 2069E226 */  addiu      $v0, $s7, %lo(D_001E6920)
    /* 13B5F8 0023A678 21A06200 */  addu       $s4, $v1, $v0
    /* 13B5FC 0023A67C 2DA86000 */  daddu      $s5, $v1, $zero
    /* 13B600 0023A680 0500C016 */  bnez       $s6, .L0023A698
    /* 13B604 0023A684 0000908E */   lw        $s0, 0x0($s4)
    /* 13B608 0023A688 17000224 */  addiu      $v0, $zero, 0x17
    /* 13B60C 0023A68C 18000324 */  addiu      $v1, $zero, 0x18
    /* 13B610 0023A690 2A105000 */  slt        $v0, $v0, $s0
    /* 13B614 0023A694 0A806200 */  movz       $s0, $v1, $v0
.align 2
  .L0023A698:
    /* 13B618 0023A698 C8000424 */  addiu      $a0, $zero, 0xC8
    /* 13B61C 0023A69C 2C50080C */  jal        func_002140B0
    /* 13B620 0023A6A0 80001124 */   addiu     $s1, $zero, 0x80
    /* 13B624 0023A6A4 00B08044 */  mtc1       $zero, $f22
    /* 13B628 0023A6A8 00A88244 */  mtc1       $v0, $f21
    /* 13B62C 0023A6AC 00000000 */  nop
    /* 13B630 0023A6B0 60AD8046 */  cvt.s.w    $f21, $f21
    /* 13B634 0023A6B4 2C50080C */  jal        func_002140B0
    /* 13B638 0023A6B8 C8000424 */   addiu     $a0, $zero, 0xC8
    /* 13B63C 0023A6BC 00A08244 */  mtc1       $v0, $f20
    /* 13B640 0023A6C0 00000000 */  nop
    /* 13B644 0023A6C4 20A58046 */  cvt.s.w    $f20, $f20
    /* 13B648 0023A6C8 DCE6070C */  jal        func_001F9B70
    /* 13B64C 0023A6CC 80FF0426 */   addiu     $a0, $s0, -0x80
    /* 13B650 0023A6D0 23802202 */  subu       $s0, $s1, $v0
    /* 13B654 0023A6D4 2D280000 */  daddu      $a1, $zero, $zero
    /* 13B658 0023A6D8 26D3080C */  jal        func_00234C98
    /* 13B65C 0023A6DC 08000424 */   addiu     $a0, $zero, 0x8
    /* 13B660 0023A6E0 40801000 */  sll        $s0, $s0, 1
    /* 13B664 0023A6E4 68000524 */  addiu      $a1, $zero, 0x68
    /* 13B668 0023A6E8 8100022A */  slti       $v0, $s0, 0x81
    /* 13B66C 0023A6EC 42000424 */  addiu      $a0, $zero, 0x42
    /* 13B670 0023A6F0 0B880202 */  movn       $s1, $s0, $v0
    /* 13B674 0023A6F4 3C881100 */  dsll32     $s1, $s1, 0
    /* 13B678 0023A6F8 26D3080C */  jal        func_00234C98
    /* 13B67C 0023A6FC 25282502 */   or        $a1, $s1, $a1
    /* 13B680 0023A700 00B81546 */  add.s      $f0, $f23, $f21
    /* 13B684 0023A704 40C01446 */  add.s      $f1, $f24, $f20
    /* 13B688 0023A708 40AD1646 */  add.s      $f21, $f21, $f22
    /* 13B68C 0023A70C 00A51646 */  add.s      $f20, $f20, $f22
    /* 13B690 0023A710 A4000046 */  .word      0x460000A4                    # cvt.w.s    $f2, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13B694 0023A714 00101344 */  mfc1       $s3, $f2
    /* 13B698 0023A718 24080046 */  .word      0x46000824                    # cvt.w.s    $f0, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13B69C 0023A71C 00001244 */  mfc1       $s2, $f0
    /* 13B6A0 0023A720 24A80046 */  .word      0x4600A824                    # cvt.w.s    $f0, $f21 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13B6A4 0023A724 00001044 */  mfc1       $s0, $f0
    /* 13B6A8 0023A728 24A00046 */  .word      0x4600A024                    # cvt.w.s    $f0, $f20 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13B6AC 0023A72C 00001144 */  mfc1       $s1, $f0
    /* 13B6B0 0023A730 1AD2070C */  jal        func_001F4868
    /* 13B6B4 0023A734 1A000424 */   addiu     $a0, $zero, 0x1A
    /* 13B6B8 0023A738 06B30046 */  mov.s      $f12, $f22
    /* 13B6BC 0023A73C 2D484000 */  daddu      $t1, $v0, $zero
    /* 13B6C0 0023A740 2D200002 */  daddu      $a0, $s0, $zero
    /* 13B6C4 0023A744 2D282002 */  daddu      $a1, $s1, $zero
    /* 13B6C8 0023A748 2D306002 */  daddu      $a2, $s3, $zero
    /* 13B6CC 0023A74C 2D384002 */  daddu      $a3, $s2, $zero
    /* 13B6D0 0023A750 46630046 */  mov.s      $f13, $f12
    /* 13B6D4 0023A754 86BB0046 */  mov.s      $f14, $f23
    /* 13B6D8 0023A758 8000083C */  lui        $t0, (0x808080 >> 16)
    /* 13B6DC 0023A75C 80800835 */  ori        $t0, $t0, (0x808080 & 0xFFFF)
    /* 13B6E0 0023A760 62D6070C */  jal        func_001F5988
    /* 13B6E4 0023A764 C6C30046 */   mov.s     $f15, $f24
    /* 13B6E8 0023A768 0000828E */  lw         $v0, 0x0($s4)
    /* 13B6EC 0023A76C 00014228 */  slti       $v0, $v0, 0x100
    /* 13B6F0 0023A770 01004050 */  beql       $v0, $zero, .L0023A778
    /* 13B6F4 0023A774 000080AE */   sw        $zero, 0x0($s4)
.align 2
  .L0023A778:
    /* 13B6F8 0023A778 2069E226 */  addiu      $v0, $s7, %lo(D_001E6920)
    /* 13B6FC 0023A77C 2180A202 */  addu       $s0, $s5, $v0
    /* 13B700 0023A780 0000038E */  lw         $v1, 0x0($s0)
    /* 13B704 0023A784 07006014 */  bnez       $v1, .L0023A7A4
    /* 13B708 0023A788 08000424 */   addiu     $a0, $zero, 0x8
    /* 13B70C 0023A78C 2C50080C */  jal        func_002140B0
    /* 13B710 0023A790 BC020424 */   addiu     $a0, $zero, 0x2BC
    /* 13B714 0023A794 03004014 */  bnez       $v0, .L0023A7A4
    /* 13B718 0023A798 08000424 */   addiu     $a0, $zero, 0x8
    /* 13B71C 0023A79C 02000224 */  addiu      $v0, $zero, 0x2
    /* 13B720 0023A7A0 000002AE */  sw         $v0, 0x0($s0)
.align 2
  .L0023A7A4:
    /* 13B724 0023A7A4 26D3080C */  jal        func_00234C98
    /* 13B728 0023A7A8 2D280000 */   daddu     $a1, $zero, $zero
    /* 13B72C 0023A7AC 00800534 */  ori        $a1, $zero, 0x8000
    /* 13B730 0023A7B0 382E0500 */  dsll       $a1, $a1, 24
    /* 13B734 0023A7B4 4400A534 */  ori        $a1, $a1, 0x44
    /* 13B738 0023A7B8 26D3080C */  jal        func_00234C98
    /* 13B73C 0023A7BC 42000424 */   addiu     $a0, $zero, 0x42
    /* 13B740 0023A7C0 3D00C01A */  blez       $s6, .L0023A8B8
    /* 13B744 0023A7C4 1E00023C */   lui       $v0, %hi(D_001E6940)
    /* 13B748 0023A7C8 40694224 */  addiu      $v0, $v0, %lo(D_001E6940)
    /* 13B74C 0023A7CC 2198A202 */  addu       $s3, $s5, $v0
    /* 13B750 0023A7D0 0000648E */  lw         $a0, 0x0($s3)
    /* 13B754 0023A7D4 32008010 */  beqz       $a0, .L0023A8A0
    /* 13B758 0023A7D8 02008224 */   addiu     $v0, $a0, 0x2
    /* 13B75C 0023A7DC 000062AE */  sw         $v0, 0x0($s3)
    /* 13B760 0023A7E0 24B80046 */  .word      0x4600B824                    # cvt.w.s    $f0, $f23 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13B764 0023A7E4 00001244 */  mfc1       $s2, $f0
    /* 13B768 0023A7E8 DCE6070C */  jal        func_001F9B70
    /* 13B76C 0023A7EC 02FF8424 */   addiu     $a0, $a0, -0xFE
    /* 13B770 0023A7F0 00011024 */  addiu      $s0, $zero, 0x100
    /* 13B774 0023A7F4 0000658E */  lw         $a1, 0x0($s3)
    /* 13B778 0023A7F8 23800202 */  subu       $s0, $s0, $v0
    /* 13B77C 0023A7FC 50000324 */  addiu      $v1, $zero, 0x50
    /* 13B780 0023A800 5100022A */  slti       $v0, $s0, 0x51
    /* 13B784 0023A804 00020424 */  addiu      $a0, $zero, 0x200
    /* 13B788 0023A808 0A806200 */  movz       $s0, $v1, $v0
    /* 13B78C 0023A80C 22EA070C */  jal        func_001FA888
    /* 13B790 0023A810 23208500 */   subu      $a0, $a0, $a1
    /* 13B794 0023A814 8041013C */  lui        $at, (0x41800000 >> 16)
    /* 13B798 0023A818 00A88144 */  mtc1       $at, $f21
    /* 13B79C 0023A81C 5000113C */  lui        $s1, (0x505050 >> 16)
    /* 13B7A0 0023A820 003D013C */  lui        $at, (0x3D000000 >> 16)
    /* 13B7A4 0023A824 00108144 */  mtc1       $at, $f2
    /* 13B7A8 0023A828 00861000 */  sll        $s0, $s0, 24
    /* 13B7AC 0023A82C 40C51546 */  add.s      $f21, $f24, $f21
    /* 13B7B0 0023A830 C03F013C */  lui        $at, (0x3FC00000 >> 16)
    /* 13B7B4 0023A834 00088144 */  mtc1       $at, $f1
    /* 13B7B8 0023A838 02050246 */  mul.s      $f20, $f0, $f2
    /* 13B7BC 0023A83C 50503136 */  ori        $s1, $s1, (0x505050 & 0xFFFF)
    /* 13B7C0 0023A840 25881102 */  or         $s1, $s0, $s1
    /* 13B7C4 0023A844 1C000424 */  addiu      $a0, $zero, 0x1C
    /* 13B7C8 0023A848 42A80146 */  mul.s      $f1, $f21, $f1
    /* 13B7CC 0023A84C 24080046 */  .word      0x46000824                    # cvt.w.s    $f0, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13B7D0 0023A850 00001044 */  mfc1       $s0, $f0
    /* 13B7D4 0023A854 1AD2070C */  jal        func_001F4868
    /* 13B7D8 0023A858 07A50046 */   neg.s     $f20, $f20
    /* 13B7DC 0023A85C 00608044 */  mtc1       $zero, $f12
    /* 13B7E0 0023A860 2D484000 */  daddu      $t1, $v0, $zero
    /* 13B7E4 0023A864 46A30046 */  mov.s      $f13, $f20
    /* 13B7E8 0023A868 C6AB0046 */  mov.s      $f15, $f21
    /* 13B7EC 0023A86C 2D304002 */  daddu      $a2, $s2, $zero
    /* 13B7F0 0023A870 2D380002 */  daddu      $a3, $s0, $zero
    /* 13B7F4 0023A874 2D402002 */  daddu      $t0, $s1, $zero
    /* 13B7F8 0023A878 86BB0046 */  mov.s      $f14, $f23
    /* 13B7FC 0023A87C 2D200000 */  daddu      $a0, $zero, $zero
    /* 13B800 0023A880 62D6070C */  jal        func_001F5988
    /* 13B804 0023A884 2D280000 */   daddu     $a1, $zero, $zero
    /* 13B808 0023A888 0000628E */  lw         $v0, 0x0($s3)
    /* 13B80C 0023A88C 00024228 */  slti       $v0, $v0, 0x200
    /* 13B810 0023A890 09004050 */  beql       $v0, $zero, .L0023A8B8
    /* 13B814 0023A894 000060AE */   sw        $zero, 0x0($s3)
    /* 13B818 0023A898 08000010 */  b          .L0023A8BC
    /* 13B81C 0023A89C 06000224 */   addiu     $v0, $zero, 0x6
.align 2
  .L0023A8A0:
    /* 13B820 0023A8A0 2C50080C */  jal        func_002140B0
    /* 13B824 0023A8A4 68010424 */   addiu     $a0, $zero, 0x168
    /* 13B828 0023A8A8 04004014 */  bnez       $v0, .L0023A8BC
    /* 13B82C 0023A8AC 06000224 */   addiu     $v0, $zero, 0x6
    /* 13B830 0023A8B0 02000224 */  addiu      $v0, $zero, 0x2
    /* 13B834 0023A8B4 000062AE */  sw         $v0, 0x0($s3)
.align 2
  .L0023A8B8:
    /* 13B838 0023A8B8 06000224 */  addiu      $v0, $zero, 0x6
.align 2
  .L0023A8BC:
    /* 13B83C 0023A8BC 1200C216 */  bne        $s6, $v0, .L0023A908
    /* 13B840 0023A8C0 8000BF7B */   lq        $ra, 0x80($sp)
    /* 13B844 0023A8C4 00A08044 */  mtc1       $zero, $f20
    /* 13B848 0023A8C8 1AD2070C */  jal        func_001F4868
    /* 13B84C 0023A8CC 19000424 */   addiu     $a0, $zero, 0x19
    /* 13B850 0023A8D0 06A30046 */  mov.s      $f12, $f20
    /* 13B854 0023A8D4 86BB0046 */  mov.s      $f14, $f23
    /* 13B858 0023A8D8 C6C30046 */  mov.s      $f15, $f24
    /* 13B85C 0023A8DC 2D484000 */  daddu      $t1, $v0, $zero
    /* 13B860 0023A8E0 46630046 */  mov.s      $f13, $f12
    /* 13B864 0023A8E4 2D200000 */  daddu      $a0, $zero, $zero
    /* 13B868 0023A8E8 2D280000 */  daddu      $a1, $zero, $zero
    /* 13B86C 0023A8EC 40000624 */  addiu      $a2, $zero, 0x40
    /* 13B870 0023A8F0 80800834 */  ori        $t0, $zero, 0x8080
    /* 13B874 0023A8F4 38440800 */  dsll       $t0, $t0, 16
    /* 13B878 0023A8F8 80800835 */  ori        $t0, $t0, 0x8080
    /* 13B87C 0023A8FC 62D6070C */  jal        func_001F5988
    /* 13B880 0023A900 40000724 */   addiu     $a3, $zero, 0x40
    /* 13B884 0023A904 8000BF7B */  lq         $ra, 0x80($sp)
.align 2
  .L0023A908:
    /* 13B888 0023A908 7000B77B */  lq         $s7, 0x70($sp)
    /* 13B88C 0023A90C 6000B67B */  lq         $s6, 0x60($sp)
    /* 13B890 0023A910 5000B57B */  lq         $s5, 0x50($sp)
    /* 13B894 0023A914 4000B47B */  lq         $s4, 0x40($sp)
    /* 13B898 0023A918 3000B37B */  lq         $s3, 0x30($sp)
    /* 13B89C 0023A91C 2000B27B */  lq         $s2, 0x20($sp)
    /* 13B8A0 0023A920 1000B17B */  lq         $s1, 0x10($sp)
    /* 13B8A4 0023A924 0000B07B */  lq         $s0, 0x0($sp)
    /* 13B8A8 0023A928 B000B8C7 */  lwc1       $f24, 0xB0($sp)
    /* 13B8AC 0023A92C A800B7C7 */  lwc1       $f23, 0xA8($sp)
    /* 13B8B0 0023A930 A000B6C7 */  lwc1       $f22, 0xA0($sp)
    /* 13B8B4 0023A934 9800B5C7 */  lwc1       $f21, 0x98($sp)
    /* 13B8B8 0023A938 9000B4C7 */  lwc1       $f20, 0x90($sp)
    /* 13B8BC 0023A93C 0800E003 */  jr         $ra
    /* 13B8C0 0023A940 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_0023A5E0
    /* 13B8C4 0023A944 00000000 */  nop
