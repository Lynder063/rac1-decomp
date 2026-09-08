.align 3
nonmatching func_001EB7C0, 0x330

glabel func_001EB7C0
    /* EC740 001EB7C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EC744 001EB7C4 1600023C */  lui        $v0, %hi(D_0016055C)
    /* EC748 001EB7C8 5C05428C */  lw         $v0, %lo(D_0016055C)($v0)
    /* EC74C 001EB7CC 04004010 */  beqz       $v0, .L001EB7E0
    /* EC750 001EB7D0 1000BF7F */   sq        $ra, 0x10($sp)
    /* EC754 001EB7D4 04004284 */  lh         $v0, 0x4($v0)
    /* EC758 001EB7D8 04004010 */  beqz       $v0, .L001EB7EC
    /* EC75C 001EB7DC 1900043C */   lui       $a0, %hi(D_001940C0)
.align 2
  .L001EB7E0:
    /* EC760 001EB7E0 4CED070C */  jal        func_001FB530
    /* EC764 001EB7E4 00000000 */   nop
    /* EC768 001EB7E8 1900043C */  lui        $a0, %hi(D_001940C0)
.align 2
  .L001EB7EC:
    /* EC76C 001EB7EC FFFF0524 */  addiu      $a1, $zero, -0x1
    /* EC770 001EB7F0 C0408424 */  addiu      $a0, $a0, %lo(D_001940C0)
    /* EC774 001EB7F4 6CE6070C */  jal        func_001F99B0
    /* EC778 001EB7F8 80000624 */   addiu     $a2, $zero, 0x80
    /* EC77C 001EB7FC CEAC070C */  jal        func_001EB338
    /* EC780 001EB800 00000000 */   nop
    /* EC784 001EB804 82C9070C */  jal        func_001F2608
    /* EC788 001EB808 00000000 */   nop
    /* EC78C 001EB80C AC36080C */  jal        func_0020DAB0
    /* EC790 001EB810 00000000 */   nop
    /* EC794 001EB814 04CF070C */  jal        func_001F3C10
    /* EC798 001EB818 00000000 */   nop
    /* EC79C 001EB81C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* EC7A0 001EB820 1600033C */  lui        $v1, %hi(D_0016055C)
    /* EC7A4 001EB824 5C05638C */  lw         $v1, %lo(D_0016055C)($v1)
    /* EC7A8 001EB828 03006010 */  beqz       $v1, .L001EB838
    /* EC7AC 001EB82C 048A82AF */   sw        $v0, -0x75FC($gp)
    /* EC7B0 001EB830 9CA7070C */  jal        func_001E9E70
    /* EC7B4 001EB834 00000000 */   nop
.align 2
  .L001EB838:
    /* EC7B8 001EB838 B0D1080C */  jal        func_002346C0
    /* EC7BC 001EB83C 00000000 */   nop
    /* EC7C0 001EB840 A4D4080C */  jal        func_00235290
    /* EC7C4 001EB844 0102043C */   lui       $a0, (0x2010000 >> 16)
    /* EC7C8 001EB848 F8DA080C */  jal        func_00236BE0
    /* EC7CC 001EB84C 00000000 */   nop
    /* EC7D0 001EB850 A4D4080C */  jal        func_00235290
    /* EC7D4 001EB854 0202043C */   lui       $a0, (0x2020000 >> 16)
    /* EC7D8 001EB858 94A7080C */  jal        func_00229E50
    /* EC7DC 001EB85C 00000000 */   nop
    /* EC7E0 001EB860 A4D4080C */  jal        func_00235290
    /* EC7E4 001EB864 0402043C */   lui       $a0, (0x2040000 >> 16)
    /* EC7E8 001EB868 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* EC7EC 001EB86C E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
    /* EC7F0 001EB870 03000224 */  addiu      $v0, $zero, 0x3
    /* EC7F4 001EB874 05006214 */  bne        $v1, $v0, .L001EB88C
    /* EC7F8 001EB878 00000000 */   nop
    /* EC7FC 001EB87C 8469080C */  jal        func_0021A610
    /* EC800 001EB880 00000000 */   nop
    /* EC804 001EB884 03000010 */  b          .L001EB894
    /* EC808 001EB888 00000000 */   nop
.align 2
  .L001EB88C:
    /* EC80C 001EB88C AC38080C */  jal        func_0020E2B0
    /* EC810 001EB890 00000000 */   nop
.align 2
  .L001EB894:
    /* EC814 001EB894 A4D4080C */  jal        func_00235290
    /* EC818 001EB898 0802043C */   lui       $a0, (0x2080000 >> 16)
    /* EC81C 001EB89C 8CD1070C */  jal        func_001F4630
    /* EC820 001EB8A0 2D200000 */   daddu     $a0, $zero, $zero
    /* EC824 001EB8A4 D0D3080C */  jal        func_00234F40
    /* EC828 001EB8A8 00000000 */   nop
    /* EC82C 001EB8AC 1600023C */  lui        $v0, %hi(D_0015F564)
    /* EC830 001EB8B0 64F5428C */  lw         $v0, %lo(D_0015F564)($v0)
    /* EC834 001EB8B4 03004010 */  beqz       $v0, .L001EB8C4
    /* EC838 001EB8B8 00000000 */   nop
    /* EC83C 001EB8BC 80D2070C */  jal        func_001F4A00
    /* EC840 001EB8C0 00000000 */   nop
.align 2
  .L001EB8C4:
    /* EC844 001EB8C4 D0D3080C */  jal        func_00234F40
    /* EC848 001EB8C8 00000000 */   nop
    /* EC84C 001EB8CC 1900023C */  lui        $v0, %hi(D_0018A3E8)
    /* EC850 001EB8D0 E8A3438C */  lw         $v1, %lo(D_0018A3E8)($v0)
    /* EC854 001EB8D4 0C006010 */  beqz       $v1, .L001EB908
    /* EC858 001EB8D8 05000524 */   addiu     $a1, $zero, 0x5
    /* EC85C 001EB8DC 26D3080C */  jal        func_00234C98
    /* EC860 001EB8E0 08000424 */   addiu     $a0, $zero, 0x8
    /* EC864 001EB8E4 D0D3080C */  jal        func_00234F40
    /* EC868 001EB8E8 00000000 */   nop
    /* EC86C 001EB8EC 6063040C */  jal        func_00118D80
    /* EC870 001EB8F0 2D200000 */   daddu     $a0, $zero, $zero
    /* EC874 001EB8F4 C462080C */  jal        func_00218B10
    /* EC878 001EB8F8 00000000 */   nop
    /* EC87C 001EB8FC 08000224 */  addiu      $v0, $zero, 0x8
    /* EC880 001EB900 1600013C */  lui        $at, %hi(D_0015F704)
    /* EC884 001EB904 04F722AC */  sw         $v0, %lo(D_0015F704)($at)
.align 2
  .L001EB908:
    /* EC888 001EB908 12EE070C */  jal        func_001FB848
    /* EC88C 001EB90C 00000000 */   nop
    /* EC890 001EB910 04CF070C */  jal        func_001F3C10
    /* EC894 001EB914 00000000 */   nop
    /* EC898 001EB918 1600033C */  lui        $v1, %hi(D_0015F050)
    /* EC89C 001EB91C 50F0638C */  lw         $v1, %lo(D_0015F050)($v1)
    /* EC8A0 001EB920 10006010 */  beqz       $v1, .L001EB964
    /* EC8A4 001EB924 488386DF */   ld        $a2, -0x7CB8($gp)
    /* EC8A8 001EB928 8000023C */  lui        $v0, (0x808080 >> 16)
    /* EC8AC 001EB92C 001E0300 */  sll        $v1, $v1, 24
    /* EC8B0 001EB930 80804234 */  ori        $v0, $v0, (0x808080 & 0xFFFF)
    /* EC8B4 001EB934 25106200 */  or         $v0, $v1, $v0
    /* EC8B8 001EB938 0800A6FF */  sd         $a2, 0x8($sp)
    /* EC8BC 001EB93C EC000424 */  addiu      $a0, $zero, 0xEC
    /* EC8C0 001EB940 0000A2FF */  sd         $v0, 0x0($sp)
    /* EC8C4 001EB944 10000524 */  addiu      $a1, $zero, 0x10
    /* EC8C8 001EB948 00010624 */  addiu      $a2, $zero, 0x100
    /* EC8CC 001EB94C 80000724 */  addiu      $a3, $zero, 0x80
    /* EC8D0 001EB950 2D400000 */  daddu      $t0, $zero, $zero
    /* EC8D4 001EB954 2D480000 */  daddu      $t1, $zero, $zero
    /* EC8D8 001EB958 00010A24 */  addiu      $t2, $zero, 0x100
    /* EC8DC 001EB95C 00D6070C */  jal        func_001F5800
    /* EC8E0 001EB960 80000B24 */   addiu     $t3, $zero, 0x80
.align 2
  .L001EB964:
    /* EC8E4 001EB964 1600023C */  lui        $v0, %hi(D_0015F054)
    /* EC8E8 001EB968 54F0428C */  lw         $v0, %lo(D_0015F054)($v0)
    /* EC8EC 001EB96C 1A004010 */  beqz       $v0, .L001EB9D8
    /* EC8F0 001EB970 8881848F */   lw        $a0, -0x7E78($gp)
    /* EC8F4 001EB974 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* EC8F8 001EB978 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* EC8FC 001EB97C 2A104400 */  slt        $v0, $v0, $a0
    /* EC900 001EB980 0A200200 */  movz       $a0, $zero, $v0
    /* EC904 001EB984 1AD2070C */  jal        func_001F4868
    /* EC908 001EB988 04008424 */   addiu     $a0, $a0, 0x4
    /* EC90C 001EB98C 1600043C */  lui        $a0, %hi(D_0015F054)
    /* EC910 001EB990 54F0848C */  lw         $a0, %lo(D_0015F054)($a0)
    /* EC914 001EB994 1400063C */  lui        $a2, %hi(D_0013E604)
    /* EC918 001EB998 8000033C */  lui        $v1, (0x808080 >> 16)
    /* EC91C 001EB99C 04E6C58C */  lw         $a1, %lo(D_0013E604)($a2)
    /* EC920 001EB9A0 00260400 */  sll        $a0, $a0, 24
    /* EC924 001EB9A4 80806334 */  ori        $v1, $v1, (0x808080 & 0xFFFF)
    /* EC928 001EB9A8 25188300 */  or         $v1, $a0, $v1
    /* EC92C 001EB9AC B0FFA524 */  addiu      $a1, $a1, -0x50
    /* EC930 001EB9B0 0000A3FF */  sd         $v1, 0x0($sp)
    /* EC934 001EB9B4 A0000424 */  addiu      $a0, $zero, 0xA0
    /* EC938 001EB9B8 0800A2FF */  sd         $v0, 0x8($sp)
    /* EC93C 001EB9BC C0000624 */  addiu      $a2, $zero, 0xC0
    /* EC940 001EB9C0 60000724 */  addiu      $a3, $zero, 0x60
    /* EC944 001EB9C4 2D400000 */  daddu      $t0, $zero, $zero
    /* EC948 001EB9C8 2D480000 */  daddu      $t1, $zero, $zero
    /* EC94C 001EB9CC 00010A24 */  addiu      $t2, $zero, 0x100
    /* EC950 001EB9D0 00D6070C */  jal        func_001F5800
    /* EC954 001EB9D4 80000B24 */   addiu     $t3, $zero, 0x80
.align 2
  .L001EB9D8:
    /* EC958 001EB9D8 D2D1070C */  jal        func_001F4748
    /* EC95C 001EB9DC 00000000 */   nop
    /* EC960 001EB9E0 1600013C */  lui        $at, %hi(D_0015F53C)
    /* EC964 001EB9E4 3CF521C4 */  lwc1       $f1, %lo(D_0015F53C)($at)
    /* EC968 001EB9E8 00008044 */  mtc1       $zero, $f0
    /* EC96C 001EB9EC 00000000 */  nop
    /* EC970 001EB9F0 34000146 */  c.lt.s     $f0, $f1
    /* EC974 001EB9F4 00000000 */  nop
    /* EC978 001EB9F8 14000045 */  bc1f       .L001EBA4C
    /* EC97C 001EB9FC 1000043C */   lui       $a0, %hi(D_00100AE0)
    /* EC980 001EBA00 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EC984 001EBA04 00008144 */  mtc1       $at, $f0
    /* EC988 001EBA08 00000000 */  nop
    /* EC98C 001EBA0C 34000146 */  c.lt.s     $f0, $f1
    /* EC990 001EBA10 00000000 */  nop
    /* EC994 001EBA14 01000345 */  bc1tl      .L001EBA1C
    /* EC998 001EBA18 3C8880E7 */   swc1      $f0, -0x77C4($gp)
.align 2
  .L001EBA1C:
    /* EC99C 001EBA1C 1600013C */  lui        $at, %hi(D_0015F53C)
    /* EC9A0 001EBA20 3CF520C4 */  lwc1       $f0, %lo(D_0015F53C)($at)
    /* EC9A4 001EBA24 0043013C */  lui        $at, (0x43000000 >> 16)
    /* EC9A8 001EBA28 00608144 */  mtc1       $at, $f12
    /* EC9AC 001EBA2C 26EA070C */  jal        func_001FA898
    /* EC9B0 001EBA30 02030C46 */   mul.s     $f12, $f0, $f12
    /* EC9B4 001EBA34 2D384000 */  daddu      $a3, $v0, $zero
    /* EC9B8 001EBA38 2D200000 */  daddu      $a0, $zero, $zero
    /* EC9BC 001EBA3C 2D280000 */  daddu      $a1, $zero, $zero
    /* EC9C0 001EBA40 70D5070C */  jal        func_001F55C0
    /* EC9C4 001EBA44 2D300000 */   daddu     $a2, $zero, $zero
    /* EC9C8 001EBA48 1000043C */  lui        $a0, %hi(D_00100AE0)
.align 2
  .L001EBA4C:
    /* EC9CC 001EBA4C FCD1080C */  jal        func_002347F0
    /* EC9D0 001EBA50 E00A8424 */   addiu     $a0, $a0, %lo(D_00100AE0)
    /* EC9D4 001EBA54 6063040C */  jal        func_00118D80
    /* EC9D8 001EBA58 2D200000 */   daddu     $a0, $zero, $zero
    /* EC9DC 001EBA5C 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* EC9E0 001EBA60 E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
    /* EC9E4 001EBA64 04000224 */  addiu      $v0, $zero, 0x4
    /* EC9E8 001EBA68 03006214 */  bne        $v1, $v0, .L001EBA78
    /* EC9EC 001EBA6C 00000000 */   nop
    /* EC9F0 001EBA70 A0EF070C */  jal        func_001FBE80
    /* EC9F4 001EBA74 00000000 */   nop
.align 2
  .L001EBA78:
    /* EC9F8 001EBA78 B2D2080C */  jal        func_00234AC8
    /* EC9FC 001EBA7C 02000424 */   addiu     $a0, $zero, 0x2
    /* ECA00 001EBA80 1E00043C */  lui        $a0, %hi(D_001E1600)
    /* ECA04 001EBA84 ACD8080C */  jal        func_002362B0
    /* ECA08 001EBA88 00168424 */   addiu     $a0, $a0, %lo(D_001E1600)
    /* ECA0C 001EBA8C 88D1080C */  jal        func_00234620
    /* ECA10 001EBA90 00000000 */   nop
    /* ECA14 001EBA94 B2D2080C */  jal        func_00234AC8
    /* ECA18 001EBA98 04000424 */   addiu     $a0, $zero, 0x4
    /* ECA1C 001EBA9C 1E00043C */  lui        $a0, %hi(D_001E3500)
    /* ECA20 001EBAA0 A2E1080C */  jal        func_00238688
    /* ECA24 001EBAA4 00358424 */   addiu     $a0, $a0, %lo(D_001E3500)
    /* ECA28 001EBAA8 A6DA080C */  jal        func_00236A98
    /* ECA2C 001EBAAC 00000000 */   nop
    /* ECA30 001EBAB0 B2D2080C */  jal        func_00234AC8
    /* ECA34 001EBAB4 08000424 */   addiu     $a0, $zero, 0x8
    /* ECA38 001EBAB8 1E00043C */  lui        $a0, %hi(D_001D9240)
    /* ECA3C 001EBABC 3EAE080C */  jal        func_0022B8F8
    /* ECA40 001EBAC0 40928424 */   addiu     $a0, $a0, %lo(D_001D9240)
    /* ECA44 001EBAC4 52A7080C */  jal        func_00229D48
    /* ECA48 001EBAC8 00000000 */   nop
    /* ECA4C 001EBACC B2D2080C */  jal        func_00234AC8
    /* ECA50 001EBAD0 10000424 */   addiu     $a0, $zero, 0x10
    /* ECA54 001EBAD4 5237080C */  jal        func_0020DD48
    /* ECA58 001EBAD8 00000000 */   nop
    /* ECA5C 001EBADC 4CCA070C */  jal        func_001F2930
    /* ECA60 001EBAE0 00000000 */   nop
    /* ECA64 001EBAE4 1000BF7B */  lq         $ra, 0x10($sp)
    /* ECA68 001EBAE8 0800E003 */  jr         $ra
    /* ECA6C 001EBAEC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001EB7C0
