.align 3
nonmatching func_0011E860, 0x668

glabel func_0011E860
    /* 1F7E0 0011E860 2D408000 */  daddu      $t0, $a0, $zero
    /* 1F7E4 0011E864 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1F7E8 0011E868 3000B0FF */  sd         $s0, 0x30($sp)
    /* 1F7EC 0011E86C 3F500800 */  dsra32     $t2, $t0, 0
    /* 1F7F0 0011E870 3C200A00 */  dsll32     $a0, $t2, 0
    /* 1F7F4 0011E874 3F200400 */  dsra32     $a0, $a0, 0
    /* 1F7F8 0011E878 16008104 */  bgez       $a0, .L0011E8D4
    /* 1F7FC 0011E87C 2D800000 */   daddu     $s0, $zero, $zero
    /* 1F800 0011E880 3C100800 */  dsll32     $v0, $t0, 0
    /* 1F804 0011E884 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F808 0011E888 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1F80C 0011E88C 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F810 0011E890 23100200 */  negu       $v0, $v0
    /* 1F814 0011E894 2430C300 */  and        $a2, $a2, $v1
    /* 1F818 0011E898 3C100200 */  dsll32     $v0, $v0, 0
    /* 1F81C 0011E89C 23180400 */  negu       $v1, $a0
    /* 1F820 0011E8A0 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1F824 0011E8A4 FFFF043C */  lui        $a0, (0xFFFF0000 >> 16)
    /* 1F828 0011E8A8 3E200400 */  dsrl32     $a0, $a0, 0
    /* 1F82C 0011E8AC 2530C200 */  or         $a2, $a2, $v0
    /* 1F830 0011E8B0 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 1F834 0011E8B4 3C100600 */  dsll32     $v0, $a2, 0
    /* 1F838 0011E8B8 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F83C 0011E8BC 2B100200 */  sltu       $v0, $zero, $v0
    /* 1F840 0011E8C0 2430C400 */  and        $a2, $a2, $a0
    /* 1F844 0011E8C4 23186200 */  subu       $v1, $v1, $v0
    /* 1F848 0011E8C8 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F84C 0011E8CC 2540C300 */  or         $t0, $a2, $v1
    /* 1F850 0011E8D0 3F500800 */  dsra32     $t2, $t0, 0
.align 2
  .L0011E8D4:
    /* 1F854 0011E8D4 3F200500 */  dsra32     $a0, $a1, 0
    /* 1F858 0011E8D8 13008104 */  bgez       $a0, .L0011E928
    /* 1F85C 0011E8DC 23200400 */   negu      $a0, $a0
    /* 1F860 0011E8E0 3C100500 */  dsll32     $v0, $a1, 0
    /* 1F864 0011E8E4 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F868 0011E8E8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1F86C 0011E8EC 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F870 0011E8F0 23100200 */  negu       $v0, $v0
    /* 1F874 0011E8F4 2438E300 */  and        $a3, $a3, $v1
    /* 1F878 0011E8F8 3C100200 */  dsll32     $v0, $v0, 0
    /* 1F87C 0011E8FC 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1F880 0011E900 FFFF053C */  lui        $a1, (0xFFFF0000 >> 16)
    /* 1F884 0011E904 3E280500 */  dsrl32     $a1, $a1, 0
    /* 1F888 0011E908 2538E200 */  or         $a3, $a3, $v0
    /* 1F88C 0011E90C 3C180700 */  dsll32     $v1, $a3, 0
    /* 1F890 0011E910 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F894 0011E914 2B180300 */  sltu       $v1, $zero, $v1
    /* 1F898 0011E918 2438E500 */  and        $a3, $a3, $a1
    /* 1F89C 0011E91C 23208300 */  subu       $a0, $a0, $v1
    /* 1F8A0 0011E920 3C200400 */  dsll32     $a0, $a0, 0
    /* 1F8A4 0011E924 2528E400 */  or         $a1, $a3, $a0
.align 2
  .L0011E928:
    /* 1F8A8 0011E928 3C600800 */  dsll32     $t4, $t0, 0
    /* 1F8AC 0011E92C 3F600C00 */  dsra32     $t4, $t4, 0
    /* 1F8B0 0011E930 3F480500 */  dsra32     $t1, $a1, 0
    /* 1F8B4 0011E934 3C500A00 */  dsll32     $t2, $t2, 0
    /* 1F8B8 0011E938 3F500A00 */  dsra32     $t2, $t2, 0
    /* 1F8BC 0011E93C 3C400500 */  dsll32     $t0, $a1, 0
    /* 1F8C0 0011E940 3F400800 */  dsra32     $t0, $t0, 0
    /* 1F8C4 0011E944 B3002015 */  bnez       $t1, .L0011EC14
    /* 1F8C8 0011E948 2DC8A003 */   daddu     $t9, $sp, $zero
    /* 1F8CC 0011E94C 2B104801 */  sltu       $v0, $t2, $t0
    /* 1F8D0 0011E950 23004010 */  beqz       $v0, .L0011E9E0
    /* 1F8D4 0011E954 FFFF0234 */   ori       $v0, $zero, 0xFFFF
    /* 1F8D8 0011E958 2B104800 */  sltu       $v0, $v0, $t0
    /* 1F8DC 0011E95C 06004014 */  bnez       $v0, .L0011E978
    /* 1F8E0 0011E960 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 1F8E4 0011E964 0001022D */  sltiu      $v0, $t0, 0x100
    /* 1F8E8 0011E968 08000524 */  addiu      $a1, $zero, 0x8
    /* 1F8EC 0011E96C 08000010 */  b          .L0011E990
    /* 1F8F0 0011E970 0B280200 */   movn      $a1, $zero, $v0
    /* 1F8F4 0011E974 00000000 */  nop
.align 2
  .L0011E978:
    /* 1F8F8 0011E978 18000524 */  addiu      $a1, $zero, 0x18
    /* 1F8FC 0011E97C FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 1F900 0011E980 10000324 */  addiu      $v1, $zero, 0x10
    /* 1F904 0011E984 2B104800 */  sltu       $v0, $v0, $t0
    /* 1F908 0011E988 0A286200 */  movz       $a1, $v1, $v0
    /* 1F90C 0011E98C 00000000 */  nop
.align 2
  .L0011E990:
    /* 1F910 0011E990 1500023C */  lui        $v0, %hi(D_00152C18)
    /* 1F914 0011E994 0620A800 */  srlv       $a0, $t0, $a1
    /* 1F918 0011E998 182C4224 */  addiu      $v0, $v0, %lo(D_00152C18)
    /* 1F91C 0011E99C 20000624 */  addiu      $a2, $zero, 0x20
    /* 1F920 0011E9A0 21208200 */  addu       $a0, $a0, $v0
    /* 1F924 0011E9A4 00008390 */  lbu        $v1, 0x0($a0)
    /* 1F928 0011E9A8 21186500 */  addu       $v1, $v1, $a1
    /* 1F92C 0011E9AC 2368C300 */  subu       $t5, $a2, $v1
    /* 1F930 0011E9B0 0600A011 */  beqz       $t5, .L0011E9CC
    /* 1F934 0011E9B4 2310CD00 */   subu      $v0, $a2, $t5
    /* 1F938 0011E9B8 0418AA01 */  sllv       $v1, $t2, $t5
    /* 1F93C 0011E9BC 06104C00 */  srlv       $v0, $t4, $v0
    /* 1F940 0011E9C0 0440A801 */  sllv       $t0, $t0, $t5
    /* 1F944 0011E9C4 25506200 */  or         $t2, $v1, $v0
    /* 1F948 0011E9C8 0460AC01 */  sllv       $t4, $t4, $t5
.align 2
  .L0011E9CC:
    /* 1F94C 0011E9CC 022C0800 */  srl        $a1, $t0, 16
    /* 1F950 0011E9D0 FFFF0731 */  andi       $a3, $t0, 0xFFFF
    /* 1F954 0011E9D4 60000010 */  b          .L0011EB58
    /* 1F958 0011E9D8 1B004501 */   divu      $zero, $t2, $a1
    /* 1F95C 0011E9DC 00000000 */  nop
.align 2
  .L0011E9E0:
    /* 1F960 0011E9E0 09000015 */  bnez       $t0, .L0011EA08
    /* 1F964 0011E9E4 2B104800 */   sltu      $v0, $v0, $t0
    /* 1F968 0011E9E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F96C 0011E9EC 01000051 */  beql       $t0, $zero, .L0011E9F4
    /* 1F970 0011E9F0 CD010000 */   break     0, 7
.align 2
  .L0011E9F4:
    /* 1F974 0011E9F4 1B004900 */  divu       $zero, $v0, $t1
    /* 1F978 0011E9F8 12100000 */  mflo       $v0
    /* 1F97C 0011E9FC 2D404000 */  daddu      $t0, $v0, $zero
    /* 1F980 0011EA00 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 1F984 0011EA04 2B104800 */  sltu       $v0, $v0, $t0
.align 2
  .L0011EA08:
    /* 1F988 0011EA08 05004014 */  bnez       $v0, .L0011EA20
    /* 1F98C 0011EA0C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 1F990 0011EA10 0001022D */  sltiu      $v0, $t0, 0x100
    /* 1F994 0011EA14 08000524 */  addiu      $a1, $zero, 0x8
    /* 1F998 0011EA18 07000010 */  b          .L0011EA38
    /* 1F99C 0011EA1C 0B280200 */   movn      $a1, $zero, $v0
.align 2
  .L0011EA20:
    /* 1F9A0 0011EA20 18000524 */  addiu      $a1, $zero, 0x18
    /* 1F9A4 0011EA24 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 1F9A8 0011EA28 10000324 */  addiu      $v1, $zero, 0x10
    /* 1F9AC 0011EA2C 2B104800 */  sltu       $v0, $v0, $t0
    /* 1F9B0 0011EA30 0A286200 */  movz       $a1, $v1, $v0
    /* 1F9B4 0011EA34 00000000 */  nop
.align 2
  .L0011EA38:
    /* 1F9B8 0011EA38 1500023C */  lui        $v0, %hi(D_00152C18)
    /* 1F9BC 0011EA3C 0620A800 */  srlv       $a0, $t0, $a1
    /* 1F9C0 0011EA40 182C4224 */  addiu      $v0, $v0, %lo(D_00152C18)
    /* 1F9C4 0011EA44 20000624 */  addiu      $a2, $zero, 0x20
    /* 1F9C8 0011EA48 21208200 */  addu       $a0, $a0, $v0
    /* 1F9CC 0011EA4C 00008390 */  lbu        $v1, 0x0($a0)
    /* 1F9D0 0011EA50 21186500 */  addu       $v1, $v1, $a1
    /* 1F9D4 0011EA54 2368C300 */  subu       $t5, $a2, $v1
    /* 1F9D8 0011EA58 0500A015 */  bnez       $t5, .L0011EA70
    /* 1F9DC 0011EA5C 2370CD00 */   subu      $t6, $a2, $t5
    /* 1F9E0 0011EA60 23504801 */  subu       $t2, $t2, $t0
    /* 1F9E4 0011EA64 022C0800 */  srl        $a1, $t0, 16
    /* 1F9E8 0011EA68 38000010 */  b          .L0011EB4C
    /* 1F9EC 0011EA6C FFFF0931 */   andi      $t1, $t0, 0xFFFF
.align 2
  .L0011EA70:
    /* 1F9F0 0011EA70 0418AA01 */  sllv       $v1, $t2, $t5
    /* 1F9F4 0011EA74 0610CC01 */  srlv       $v0, $t4, $t6
    /* 1F9F8 0011EA78 0638CA01 */  srlv       $a3, $t2, $t6
    /* 1F9FC 0011EA7C 25506200 */  or         $t2, $v1, $v0
    /* 1FA00 0011EA80 0440A801 */  sllv       $t0, $t0, $t5
    /* 1FA04 0011EA84 0460AC01 */  sllv       $t4, $t4, $t5
    /* 1FA08 0011EA88 022C0800 */  srl        $a1, $t0, 16
    /* 1FA0C 0011EA8C 1B00E500 */  divu       $zero, $a3, $a1
    /* 1FA10 0011EA90 FFFF0931 */  andi       $t1, $t0, 0xFFFF
    /* 1FA14 0011EA94 2D38A000 */  daddu      $a3, $a1, $zero
    /* 1FA18 0011EA98 02240A00 */  srl        $a0, $t2, 16
    /* 1FA1C 0011EA9C 0100E050 */  beql       $a3, $zero, .L0011EAA4
    /* 1FA20 0011EAA0 CD010000 */   break     0, 7
.align 2
  .L0011EAA4:
    /* 1FA24 0011EAA4 2D582001 */  daddu      $t3, $t1, $zero
    /* 1FA28 0011EAA8 12100000 */  mflo       $v0
    /* 1FA2C 0011EAAC 10180000 */  mfhi       $v1
    /* 1FA30 0011EAB0 3C180300 */  dsll32     $v1, $v1, 0
    /* 1FA34 0011EAB4 381C0300 */  dsll       $v1, $v1, 16
    /* 1FA38 0011EAB8 3F180300 */  dsra32     $v1, $v1, 0
    /* 1FA3C 0011EABC 18304900 */  mult       $a2, $v0, $t1
    /* 1FA40 0011EAC0 25186400 */  or         $v1, $v1, $a0
    /* 1FA44 0011EAC4 2B106600 */  sltu       $v0, $v1, $a2
    /* 1FA48 0011EAC8 0A004050 */  beql       $v0, $zero, .L0011EAF4
    /* 1FA4C 0011EACC 23186600 */   subu      $v1, $v1, $a2
    /* 1FA50 0011EAD0 21186800 */  addu       $v1, $v1, $t0
    /* 1FA54 0011EAD4 2B106800 */  sltu       $v0, $v1, $t0
    /* 1FA58 0011EAD8 06004054 */  bnel       $v0, $zero, .L0011EAF4
    /* 1FA5C 0011EADC 23186600 */   subu      $v1, $v1, $a2
    /* 1FA60 0011EAE0 2B106600 */  sltu       $v0, $v1, $a2
    /* 1FA64 0011EAE4 02004054 */  bnel       $v0, $zero, .L0011EAF0
    /* 1FA68 0011EAE8 21186800 */   addu      $v1, $v1, $t0
    /* 1FA6C 0011EAEC 00000000 */  nop
.align 2
  .L0011EAF0:
    /* 1FA70 0011EAF0 23186600 */  subu       $v1, $v1, $a2
.align 2
  .L0011EAF4:
    /* 1FA74 0011EAF4 FFFF4431 */  andi       $a0, $t2, 0xFFFF
    /* 1FA78 0011EAF8 1B006700 */  divu       $zero, $v1, $a3
    /* 1FA7C 0011EAFC 0100E050 */  beql       $a3, $zero, .L0011EB04
    /* 1FA80 0011EB00 CD010000 */   break     0, 7
.align 2
  .L0011EB04:
    /* 1FA84 0011EB04 12100000 */  mflo       $v0
    /* 1FA88 0011EB08 10180000 */  mfhi       $v1
    /* 1FA8C 0011EB0C 3C180300 */  dsll32     $v1, $v1, 0
    /* 1FA90 0011EB10 381C0300 */  dsll       $v1, $v1, 16
    /* 1FA94 0011EB14 3F180300 */  dsra32     $v1, $v1, 0
    /* 1FA98 0011EB18 18304B00 */  mult       $a2, $v0, $t3
    /* 1FA9C 0011EB1C 25186400 */  or         $v1, $v1, $a0
    /* 1FAA0 0011EB20 2B106600 */  sltu       $v0, $v1, $a2
    /* 1FAA4 0011EB24 09004050 */  beql       $v0, $zero, .L0011EB4C
    /* 1FAA8 0011EB28 23506600 */   subu      $t2, $v1, $a2
    /* 1FAAC 0011EB2C 21186800 */  addu       $v1, $v1, $t0
    /* 1FAB0 0011EB30 2B106800 */  sltu       $v0, $v1, $t0
    /* 1FAB4 0011EB34 05004014 */  bnez       $v0, .L0011EB4C
    /* 1FAB8 0011EB38 23506600 */   subu      $t2, $v1, $a2
    /* 1FABC 0011EB3C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1FAC0 0011EB40 01004054 */  bnel       $v0, $zero, .L0011EB48
    /* 1FAC4 0011EB44 21186800 */   addu      $v1, $v1, $t0
.align 2
  .L0011EB48:
    /* 1FAC8 0011EB48 23506600 */  subu       $t2, $v1, $a2
.align 2
  .L0011EB4C:
    /* 1FACC 0011EB4C 1B004501 */  divu       $zero, $t2, $a1
    /* 1FAD0 0011EB50 2D382001 */  daddu      $a3, $t1, $zero
    /* 1FAD4 0011EB54 00000000 */  nop
.align 2
  .L0011EB58:
    /* 1FAD8 0011EB58 02240C00 */  srl        $a0, $t4, 16
    /* 1FADC 0011EB5C 0100A050 */  beql       $a1, $zero, .L0011EB64
    /* 1FAE0 0011EB60 CD010000 */   break     0, 7
.align 2
  .L0011EB64:
    /* 1FAE4 0011EB64 12100000 */  mflo       $v0
    /* 1FAE8 0011EB68 10180000 */  mfhi       $v1
    /* 1FAEC 0011EB6C 3C180300 */  dsll32     $v1, $v1, 0
    /* 1FAF0 0011EB70 381C0300 */  dsll       $v1, $v1, 16
    /* 1FAF4 0011EB74 3F180300 */  dsra32     $v1, $v1, 0
    /* 1FAF8 0011EB78 18304700 */  mult       $a2, $v0, $a3
    /* 1FAFC 0011EB7C 25186400 */  or         $v1, $v1, $a0
    /* 1FB00 0011EB80 2B106600 */  sltu       $v0, $v1, $a2
    /* 1FB04 0011EB84 09004050 */  beql       $v0, $zero, .L0011EBAC
    /* 1FB08 0011EB88 23186600 */   subu      $v1, $v1, $a2
    /* 1FB0C 0011EB8C 21186800 */  addu       $v1, $v1, $t0
    /* 1FB10 0011EB90 2B106800 */  sltu       $v0, $v1, $t0
    /* 1FB14 0011EB94 05004054 */  bnel       $v0, $zero, .L0011EBAC
    /* 1FB18 0011EB98 23186600 */   subu      $v1, $v1, $a2
    /* 1FB1C 0011EB9C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1FB20 0011EBA0 01004054 */  bnel       $v0, $zero, .L0011EBA8
    /* 1FB24 0011EBA4 21186800 */   addu      $v1, $v1, $t0
.align 2
  .L0011EBA8:
    /* 1FB28 0011EBA8 23186600 */  subu       $v1, $v1, $a2
.align 2
  .L0011EBAC:
    /* 1FB2C 0011EBAC FFFF8431 */  andi       $a0, $t4, 0xFFFF
    /* 1FB30 0011EBB0 1B006500 */  divu       $zero, $v1, $a1
    /* 1FB34 0011EBB4 0100A050 */  beql       $a1, $zero, .L0011EBBC
    /* 1FB38 0011EBB8 CD010000 */   break     0, 7
.align 2
  .L0011EBBC:
    /* 1FB3C 0011EBBC 12100000 */  mflo       $v0
    /* 1FB40 0011EBC0 10180000 */  mfhi       $v1
    /* 1FB44 0011EBC4 3C180300 */  dsll32     $v1, $v1, 0
    /* 1FB48 0011EBC8 381C0300 */  dsll       $v1, $v1, 16
    /* 1FB4C 0011EBCC 3F180300 */  dsra32     $v1, $v1, 0
    /* 1FB50 0011EBD0 18304700 */  mult       $a2, $v0, $a3
    /* 1FB54 0011EBD4 25186400 */  or         $v1, $v1, $a0
    /* 1FB58 0011EBD8 2B106600 */  sltu       $v0, $v1, $a2
    /* 1FB5C 0011EBDC 07004010 */  beqz       $v0, .L0011EBFC
    /* 1FB60 0011EBE0 00000000 */   nop
    /* 1FB64 0011EBE4 21186800 */  addu       $v1, $v1, $t0
    /* 1FB68 0011EBE8 2B106800 */  sltu       $v0, $v1, $t0
    /* 1FB6C 0011EBEC 03004014 */  bnez       $v0, .L0011EBFC
    /* 1FB70 0011EBF0 2B106600 */   sltu      $v0, $v1, $a2
    /* 1FB74 0011EBF4 01004054 */  bnel       $v0, $zero, .L0011EBFC
    /* 1FB78 0011EBF8 21186800 */   addu      $v1, $v1, $t0
.align 2
  .L0011EBFC:
    /* 1FB7C 0011EBFC 97002013 */  beqz       $t9, .L0011EE5C
    /* 1FB80 0011EC00 23606600 */   subu      $t4, $v1, $a2
    /* 1FB84 0011EC04 0610AC01 */  srlv       $v0, $t4, $t5
    /* 1FB88 0011EC08 3C100200 */  dsll32     $v0, $v0, 0
    /* 1FB8C 0011EC0C 92000010 */  b          .L0011EE58
    /* 1FB90 0011EC10 3E780200 */   dsrl32    $t7, $v0, 0
.align 2
  .L0011EC14:
    /* 1FB94 0011EC14 2B104901 */  sltu       $v0, $t2, $t1
    /* 1FB98 0011EC18 06004010 */  beqz       $v0, .L0011EC34
    /* 1FB9C 0011EC1C 3C100C00 */   dsll32    $v0, $t4, 0
    /* 1FBA0 0011EC20 3C180A00 */  dsll32     $v1, $t2, 0
    /* 1FBA4 0011EC24 3E780200 */  dsrl32     $t7, $v0, 0
    /* 1FBA8 0011EC28 2578E301 */  or         $t7, $t7, $v1
    /* 1FBAC 0011EC2C 8B000010 */  b          .L0011EE5C
    /* 1FBB0 0011EC30 0000AFFF */   sd        $t7, 0x0($sp)
.align 2
  .L0011EC34:
    /* 1FBB4 0011EC34 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 1FBB8 0011EC38 2B104900 */  sltu       $v0, $v0, $t1
    /* 1FBBC 0011EC3C 06004014 */  bnez       $v0, .L0011EC58
    /* 1FBC0 0011EC40 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 1FBC4 0011EC44 0001222D */  sltiu      $v0, $t1, 0x100
    /* 1FBC8 0011EC48 08000624 */  addiu      $a2, $zero, 0x8
    /* 1FBCC 0011EC4C 08000010 */  b          .L0011EC70
    /* 1FBD0 0011EC50 0B300200 */   movn      $a2, $zero, $v0
    /* 1FBD4 0011EC54 00000000 */  nop
.align 2
  .L0011EC58:
    /* 1FBD8 0011EC58 18000624 */  addiu      $a2, $zero, 0x18
    /* 1FBDC 0011EC5C FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 1FBE0 0011EC60 10000324 */  addiu      $v1, $zero, 0x10
    /* 1FBE4 0011EC64 2B104900 */  sltu       $v0, $v0, $t1
    /* 1FBE8 0011EC68 0A306200 */  movz       $a2, $v1, $v0
    /* 1FBEC 0011EC6C 00000000 */  nop
.align 2
  .L0011EC70:
    /* 1FBF0 0011EC70 1500023C */  lui        $v0, %hi(D_00152C18)
    /* 1FBF4 0011EC74 0620C900 */  srlv       $a0, $t1, $a2
    /* 1FBF8 0011EC78 182C4224 */  addiu      $v0, $v0, %lo(D_00152C18)
    /* 1FBFC 0011EC7C 20000524 */  addiu      $a1, $zero, 0x20
    /* 1FC00 0011EC80 21208200 */  addu       $a0, $a0, $v0
    /* 1FC04 0011EC84 00008390 */  lbu        $v1, 0x0($a0)
    /* 1FC08 0011EC88 21186600 */  addu       $v1, $v1, $a2
    /* 1FC0C 0011EC8C 2368A300 */  subu       $t5, $a1, $v1
    /* 1FC10 0011EC90 1100A015 */  bnez       $t5, .L0011ECD8
    /* 1FC14 0011EC94 2370AD00 */   subu      $t6, $a1, $t5
    /* 1FC18 0011EC98 2B102A01 */  sltu       $v0, $t1, $t2
    /* 1FC1C 0011EC9C 04004014 */  bnez       $v0, .L0011ECB0
    /* 1FC20 0011ECA0 23208801 */   subu      $a0, $t4, $t0
    /* 1FC24 0011ECA4 2B108801 */  sltu       $v0, $t4, $t0
    /* 1FC28 0011ECA8 05004014 */  bnez       $v0, .L0011ECC0
    /* 1FC2C 0011ECAC 00000000 */   nop
.align 2
  .L0011ECB0:
    /* 1FC30 0011ECB0 23184901 */  subu       $v1, $t2, $t1
    /* 1FC34 0011ECB4 2B108401 */  sltu       $v0, $t4, $a0
    /* 1FC38 0011ECB8 23506200 */  subu       $t2, $v1, $v0
    /* 1FC3C 0011ECBC 2D608000 */  daddu      $t4, $a0, $zero
.align 2
  .L0011ECC0:
    /* 1FC40 0011ECC0 66002013 */  beqz       $t9, .L0011EE5C
    /* 1FC44 0011ECC4 3C100C00 */   dsll32    $v0, $t4, 0
    /* 1FC48 0011ECC8 3C180A00 */  dsll32     $v1, $t2, 0
    /* 1FC4C 0011ECCC 3E780200 */  dsrl32     $t7, $v0, 0
    /* 1FC50 0011ECD0 61000010 */  b          .L0011EE58
    /* 1FC54 0011ECD4 2578E301 */   or        $t7, $t7, $v1
.align 2
  .L0011ECD8:
    /* 1FC58 0011ECD8 0418AA01 */  sllv       $v1, $t2, $t5
    /* 1FC5C 0011ECDC 0620C801 */  srlv       $a0, $t0, $t6
    /* 1FC60 0011ECE0 0638CA01 */  srlv       $a3, $t2, $t6
    /* 1FC64 0011ECE4 0610CC01 */  srlv       $v0, $t4, $t6
    /* 1FC68 0011ECE8 0428A901 */  sllv       $a1, $t1, $t5
    /* 1FC6C 0011ECEC 25506200 */  or         $t2, $v1, $v0
    /* 1FC70 0011ECF0 2548A400 */  or         $t1, $a1, $a0
    /* 1FC74 0011ECF4 0440A801 */  sllv       $t0, $t0, $t5
    /* 1FC78 0011ECF8 0460AC01 */  sllv       $t4, $t4, $t5
    /* 1FC7C 0011ECFC 02340900 */  srl        $a2, $t1, 16
    /* 1FC80 0011ED00 1B00E600 */  divu       $zero, $a3, $a2
    /* 1FC84 0011ED04 FFFF2531 */  andi       $a1, $t1, 0xFFFF
    /* 1FC88 0011ED08 02240A00 */  srl        $a0, $t2, 16
    /* 1FC8C 0011ED0C 0100C050 */  beql       $a2, $zero, .L0011ED14
    /* 1FC90 0011ED10 CD010000 */   break     0, 7
.align 2
  .L0011ED14:
    /* 1FC94 0011ED14 12100000 */  mflo       $v0
    /* 1FC98 0011ED18 10180000 */  mfhi       $v1
    /* 1FC9C 0011ED1C 2D584000 */  daddu      $t3, $v0, $zero
    /* 1FCA0 0011ED20 3C180300 */  dsll32     $v1, $v1, 0
    /* 1FCA4 0011ED24 381C0300 */  dsll       $v1, $v1, 16
    /* 1FCA8 0011ED28 3F180300 */  dsra32     $v1, $v1, 0
    /* 1FCAC 0011ED2C 18386501 */  mult       $a3, $t3, $a1
    /* 1FCB0 0011ED30 25186400 */  or         $v1, $v1, $a0
    /* 1FCB4 0011ED34 2B106700 */  sltu       $v0, $v1, $a3
    /* 1FCB8 0011ED38 0C004050 */  beql       $v0, $zero, .L0011ED6C
    /* 1FCBC 0011ED3C 23186700 */   subu      $v1, $v1, $a3
    /* 1FCC0 0011ED40 21186900 */  addu       $v1, $v1, $t1
    /* 1FCC4 0011ED44 2B106900 */  sltu       $v0, $v1, $t1
    /* 1FCC8 0011ED48 07004014 */  bnez       $v0, .L0011ED68
    /* 1FCCC 0011ED4C FFFF6B25 */   addiu     $t3, $t3, -0x1
    /* 1FCD0 0011ED50 2B106700 */  sltu       $v0, $v1, $a3
    /* 1FCD4 0011ED54 05004050 */  beql       $v0, $zero, .L0011ED6C
    /* 1FCD8 0011ED58 23186700 */   subu      $v1, $v1, $a3
    /* 1FCDC 0011ED5C FFFF6B25 */  addiu      $t3, $t3, -0x1
    /* 1FCE0 0011ED60 21186900 */  addu       $v1, $v1, $t1
    /* 1FCE4 0011ED64 00000000 */  nop
.align 2
  .L0011ED68:
    /* 1FCE8 0011ED68 23186700 */  subu       $v1, $v1, $a3
.align 2
  .L0011ED6C:
    /* 1FCEC 0011ED6C 0100C050 */  beql       $a2, $zero, .L0011ED74
    /* 1FCF0 0011ED70 CD010000 */   break     0, 7
.align 2
  .L0011ED74:
    /* 1FCF4 0011ED74 1B006600 */  divu       $zero, $v1, $a2
    /* 1FCF8 0011ED78 FFFF4431 */  andi       $a0, $t2, 0xFFFF
    /* 1FCFC 0011ED7C 12100000 */  mflo       $v0
    /* 1FD00 0011ED80 10180000 */  mfhi       $v1
    /* 1FD04 0011ED84 2D304000 */  daddu      $a2, $v0, $zero
    /* 1FD08 0011ED88 3C180300 */  dsll32     $v1, $v1, 0
    /* 1FD0C 0011ED8C 381C0300 */  dsll       $v1, $v1, 16
    /* 1FD10 0011ED90 3F180300 */  dsra32     $v1, $v1, 0
    /* 1FD14 0011ED94 1838C500 */  mult       $a3, $a2, $a1
    /* 1FD18 0011ED98 25286400 */  or         $a1, $v1, $a0
    /* 1FD1C 0011ED9C 2B10A700 */  sltu       $v0, $a1, $a3
    /* 1FD20 0011EDA0 0B004010 */  beqz       $v0, .L0011EDD0
    /* 1FD24 0011EDA4 3C100B00 */   dsll32    $v0, $t3, 0
    /* 1FD28 0011EDA8 2128A900 */  addu       $a1, $a1, $t1
    /* 1FD2C 0011EDAC 2B10A900 */  sltu       $v0, $a1, $t1
    /* 1FD30 0011EDB0 06004014 */  bnez       $v0, .L0011EDCC
    /* 1FD34 0011EDB4 FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 1FD38 0011EDB8 2B10A700 */  sltu       $v0, $a1, $a3
    /* 1FD3C 0011EDBC 04004010 */  beqz       $v0, .L0011EDD0
    /* 1FD40 0011EDC0 3C100B00 */   dsll32    $v0, $t3, 0
    /* 1FD44 0011EDC4 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 1FD48 0011EDC8 2128A900 */  addu       $a1, $a1, $t1
.align 2
  .L0011EDCC:
    /* 1FD4C 0011EDCC 3C100B00 */  dsll32     $v0, $t3, 0
.align 2
  .L0011EDD0:
    /* 1FD50 0011EDD0 2328A700 */  subu       $a1, $a1, $a3
    /* 1FD54 0011EDD4 38140200 */  dsll       $v0, $v0, 16
    /* 1FD58 0011EDD8 3F100200 */  dsra32     $v0, $v0, 0
    /* 1FD5C 0011EDDC 2D50A000 */  daddu      $t2, $a1, $zero
    /* 1FD60 0011EDE0 25104600 */  or         $v0, $v0, $a2
    /* 1FD64 0011EDE4 19004800 */  multu      $v0, $t0
    /* 1FD68 0011EDE8 10380000 */  mfhi       $a3
    /* 1FD6C 0011EDEC 12300000 */  mflo       $a2
    /* 1FD70 0011EDF0 2B184701 */  sltu       $v1, $t2, $a3
    /* 1FD74 0011EDF4 06006014 */  bnez       $v1, .L0011EE10
    /* 1FD78 0011EDF8 2320C800 */   subu      $a0, $a2, $t0
    /* 1FD7C 0011EDFC 0800EA14 */  bne        $a3, $t2, .L0011EE20
    /* 1FD80 0011EE00 2B108601 */   sltu      $v0, $t4, $a2
    /* 1FD84 0011EE04 06004010 */  beqz       $v0, .L0011EE20
    /* 1FD88 0011EE08 00000000 */   nop
    /* 1FD8C 0011EE0C 00000000 */  nop
.align 2
  .L0011EE10:
    /* 1FD90 0011EE10 2318E900 */  subu       $v1, $a3, $t1
    /* 1FD94 0011EE14 2B10C400 */  sltu       $v0, $a2, $a0
    /* 1FD98 0011EE18 23386200 */  subu       $a3, $v1, $v0
    /* 1FD9C 0011EE1C 2D308000 */  daddu      $a2, $a0, $zero
.align 2
  .L0011EE20:
    /* 1FDA0 0011EE20 0E002013 */  beqz       $t9, .L0011EE5C
    /* 1FDA4 0011EE24 23208601 */   subu      $a0, $t4, $a2
    /* 1FDA8 0011EE28 2318A700 */  subu       $v1, $a1, $a3
    /* 1FDAC 0011EE2C 2B108401 */  sltu       $v0, $t4, $a0
    /* 1FDB0 0011EE30 23506200 */  subu       $t2, $v1, $v0
    /* 1FDB4 0011EE34 0428CA01 */  sllv       $a1, $t2, $t6
    /* 1FDB8 0011EE38 0620A401 */  srlv       $a0, $a0, $t5
    /* 1FDBC 0011EE3C 0610AA01 */  srlv       $v0, $t2, $t5
    /* 1FDC0 0011EE40 2528A400 */  or         $a1, $a1, $a0
    /* 1FDC4 0011EE44 3C100200 */  dsll32     $v0, $v0, 0
    /* 1FDC8 0011EE48 3C280500 */  dsll32     $a1, $a1, 0
    /* 1FDCC 0011EE4C 3E780500 */  dsrl32     $t7, $a1, 0
    /* 1FDD0 0011EE50 2578E201 */  or         $t7, $t7, $v0
    /* 1FDD4 0011EE54 00000000 */  nop
.align 2
  .L0011EE58:
    /* 1FDD8 0011EE58 00002FFF */  sd         $t7, 0x0($t9)
.align 2
  .L0011EE5C:
    /* 1FDDC 0011EE5C 16000012 */  beqz       $s0, .L0011EEB8
    /* 1FDE0 0011EE60 0000A3DF */   ld        $v1, 0x0($sp)
    /* 1FDE4 0011EE64 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1FDE8 0011EE68 3C200400 */  dsll32     $a0, $a0, 0
    /* 1FDEC 0011EE6C 24C00403 */  and        $t8, $t8, $a0
    /* 1FDF0 0011EE70 3C100300 */  dsll32     $v0, $v1, 0
    /* 1FDF4 0011EE74 3F100200 */  dsra32     $v0, $v0, 0
    /* 1FDF8 0011EE78 23100200 */  negu       $v0, $v0
    /* 1FDFC 0011EE7C 3F180300 */  dsra32     $v1, $v1, 0
    /* 1FE00 0011EE80 3C100200 */  dsll32     $v0, $v0, 0
    /* 1FE04 0011EE84 23180300 */  negu       $v1, $v1
    /* 1FE08 0011EE88 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1FE0C 0011EE8C 25C00203 */  or         $t8, $t8, $v0
    /* 1FE10 0011EE90 3C201800 */  dsll32     $a0, $t8, 0
    /* 1FE14 0011EE94 3F200400 */  dsra32     $a0, $a0, 0
    /* 1FE18 0011EE98 FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
    /* 1FE1C 0011EE9C 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1FE20 0011EEA0 2B200400 */  sltu       $a0, $zero, $a0
    /* 1FE24 0011EEA4 24C00203 */  and        $t8, $t8, $v0
    /* 1FE28 0011EEA8 23186400 */  subu       $v1, $v1, $a0
    /* 1FE2C 0011EEAC 3C180300 */  dsll32     $v1, $v1, 0
    /* 1FE30 0011EEB0 25C00303 */  or         $t8, $t8, $v1
    /* 1FE34 0011EEB4 0000B8FF */  sd         $t8, 0x0($sp)
.align 2
  .L0011EEB8:
    /* 1FE38 0011EEB8 0000A2DF */  ld         $v0, 0x0($sp)
    /* 1FE3C 0011EEBC 3000B0DF */  ld         $s0, 0x30($sp)
    /* 1FE40 0011EEC0 0800E003 */  jr         $ra
    /* 1FE44 0011EEC4 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011E860
