.align 3
nonmatching func_0012E820, 0x2C0

glabel func_0012E820
    /* 2F7A0 0012E820 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 2F7A4 0012E824 C480828F */  lw         $v0, -0x7F3C($gp)
    /* 2F7A8 0012E828 A000BE7F */  sq         $fp, 0xA0($sp)
    /* 2F7AC 0012E82C 9000B77F */  sq         $s7, 0x90($sp)
    /* 2F7B0 0012E830 2DF0E000 */  daddu      $fp, $a3, $zero
    /* 2F7B4 0012E834 8000B67F */  sq         $s6, 0x80($sp)
    /* 2F7B8 0012E838 2DB88000 */  daddu      $s7, $a0, $zero
    /* 2F7BC 0012E83C 7000B57F */  sq         $s5, 0x70($sp)
    /* 2F7C0 0012E840 2DB0C000 */  daddu      $s6, $a2, $zero
    /* 2F7C4 0012E844 3000B17F */  sq         $s1, 0x30($sp)
    /* 2F7C8 0012E848 2DA80000 */  daddu      $s5, $zero, $zero
    /* 2F7CC 0012E84C B000BF7F */  sq         $ra, 0xB0($sp)
    /* 2F7D0 0012E850 2D88A000 */  daddu      $s1, $a1, $zero
    /* 2F7D4 0012E854 6000B47F */  sq         $s4, 0x60($sp)
    /* 2F7D8 0012E858 5000B37F */  sq         $s3, 0x50($sp)
    /* 2F7DC 0012E85C 4000B27F */  sq         $s2, 0x40($sp)
    /* 2F7E0 0012E860 2000B07F */  sq         $s0, 0x20($sp)
    /* 2F7E4 0012E864 25004014 */  bnez       $v0, .L0012E8FC
    /* 2F7E8 0012E868 1000A8FF */   sd        $t0, 0x10($sp)
    /* 2F7EC 0012E86C 8080828F */  lw         $v0, -0x7F80($gp)
    /* 2F7F0 0012E870 23004014 */  bnez       $v0, .L0012E900
    /* 2F7F4 0012E874 04003026 */   addiu     $s0, $s1, 0x4
    /* 2F7F8 0012E878 22002016 */  bnez       $s1, .L0012E904
    /* 2F7FC 0012E87C 03000232 */   andi      $v0, $s0, 0x3
    /* 2F800 0012E880 2000C017 */  bnez       $fp, .L0012E904
    /* 2F804 0012E884 01000524 */   addiu     $a1, $zero, 0x1
    /* 2F808 0012E888 1300103C */  lui        $s0, %hi(D_00133200)
    /* 2F80C 0012E88C 0EB8040C */  jal        func_0012E038
    /* 2F810 0012E890 00320426 */   addiu     $a0, $s0, %lo(D_00133200)
    /* 2F814 0012E894 2D900002 */  daddu      $s2, $s0, $zero
    /* 2F818 0012E898 07000010 */  b          .L0012E8B8
    /* 2F81C 0012E89C 1600113C */   lui       $s1, %hi(D_0015ECC0)
.align 2
  .L0012E8A0:
    /* 2F820 0012E8A0 1E58040C */  jal        func_00116078
    /* 2F824 0012E8A4 203E8424 */   addiu     $a0, $a0, %lo(D_00153E20)
    /* 2F828 0012E8A8 70B7040C */  jal        func_0012DDC0
    /* 2F82C 0012E8AC 00000000 */   nop
    /* 2F830 0012E8B0 6063040C */  jal        func_00118D80
    /* 2F834 0012E8B4 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012E8B8:
    /* 2F838 0012E8B8 C0EC3026 */  addiu      $s0, $s1, %lo(D_0015ECC0)
    /* 2F83C 0012E8BC AE6D040C */  jal        func_0011B6B8
    /* 2F840 0012E8C0 2D200002 */   daddu     $a0, $s0, $zero
    /* 2F844 0012E8C4 F6FF4014 */  bnez       $v0, .L0012E8A0
    /* 2F848 0012E8C8 1500043C */   lui       $a0, %hi(D_00153E20)
    /* 2F84C 0012E8CC 2D200002 */  daddu      $a0, $s0, $zero
    /* 2F850 0012E8D0 2D28E002 */  daddu      $a1, $s7, $zero
    /* 2F854 0012E8D4 00324926 */  addiu      $t1, $s2, %lo(D_00133200)
    /* 2F858 0012E8D8 0000A0AF */  sw         $zero, 0x0($sp)
    /* 2F85C 0012E8DC 01000624 */  addiu      $a2, $zero, 0x1
    /* 2F860 0012E8E0 2D380000 */  daddu      $a3, $zero, $zero
    /* 2F864 0012E8E4 2D400000 */  daddu      $t0, $zero, $zero
    /* 2F868 0012E8E8 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 2F86C 0012E8EC 326D040C */  jal        func_0011B4C8
    /* 2F870 0012E8F0 2D580000 */   daddu     $t3, $zero, $zero
    /* 2F874 0012E8F4 6F000010 */  b          .L0012EAB4
    /* 2F878 0012E8F8 B000BF7B */   lq        $ra, 0xB0($sp)
.align 2
  .L0012E8FC:
    /* 2F87C 0012E8FC 04003026 */  addiu      $s0, $s1, 0x4
.align 2
  .L0012E900:
    /* 2F880 0012E900 03000232 */  andi       $v0, $s0, 0x3
.align 2
  .L0012E904:
    /* 2F884 0012E904 0A004010 */  beqz       $v0, .L0012E930
    /* 2F888 0012E908 2D900000 */   daddu     $s2, $zero, $zero
    /* 2F88C 0012E90C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2F890 0012E910 07002326 */  addiu      $v1, $s1, 0x7
    /* 2F894 0012E914 2A105000 */  slt        $v0, $v0, $s0
    /* 2F898 0012E918 08002426 */  addiu      $a0, $s1, 0x8
    /* 2F89C 0012E91C 0B180202 */  movn       $v1, $s0, $v0
    /* 2F8A0 0012E920 83180300 */  sra        $v1, $v1, 2
    /* 2F8A4 0012E924 80180300 */  sll        $v1, $v1, 2
    /* 2F8A8 0012E928 23180302 */  subu       $v1, $s0, $v1
    /* 2F8AC 0012E92C 23808300 */  subu       $s0, $a0, $v1
.align 2
  .L0012E930:
    /* 2F8B0 0012E930 C080828F */  lw         $v0, -0x7F40($gp)
    /* 2F8B4 0012E934 A0808427 */  addiu      $a0, $gp, -0x7F60
    /* 2F8B8 0012E938 2D988000 */  daddu      $s3, $a0, $zero
    /* 2F8BC 0012E93C 00010524 */  addiu      $a1, $zero, 0x100
    /* 2F8C0 0012E940 80300200 */  sll        $a2, $v0, 2
    /* 2F8C4 0012E944 A8809427 */  addiu      $s4, $gp, -0x7F58
    /* 2F8C8 0012E948 2120C400 */  addu       $a0, $a2, $a0
    /* 2F8CC 0012E94C 0000828C */  lw         $v0, 0x0($a0)
    /* 2F8D0 0012E950 0000438C */  lw         $v1, 0x0($v0)
    /* 2F8D4 0012E954 1D006514 */  bne        $v1, $a1, .L0012E9CC
    /* 2F8D8 0012E958 2118D400 */   addu      $v1, $a2, $s4
    /* 2F8DC 0012E95C 00000000 */  nop
.align 2
  .L0012E960:
    /* 2F8E0 0012E960 C480828F */  lw         $v0, -0x7F3C($gp)
.align 2
  .L0012E964:
    /* 2F8E4 0012E964 03004010 */  beqz       $v0, .L0012E974
    /* 2F8E8 0012E968 00000000 */   nop
    /* 2F8EC 0012E96C C48080AF */  sw         $zero, -0x7F3C($gp)
    /* 2F8F0 0012E970 01001524 */  addiu      $s5, $zero, 0x1
.align 2
  .L0012E974:
    /* 2F8F4 0012E974 70B7040C */  jal        func_0012DDC0
    /* 2F8F8 0012E978 00000000 */   nop
    /* 2F8FC 0012E97C 01000324 */  addiu      $v1, $zero, 0x1
    /* 2F900 0012E980 0A004316 */  bne        $s2, $v1, .L0012E9AC
    /* 2F904 0012E984 C080838F */   lw        $v1, -0x7F40($gp)
    /* 2F908 0012E988 C080858F */  lw         $a1, -0x7F40($gp)
    /* 2F90C 0012E98C 1500043C */  lui        $a0, %hi(D_00154110)
    /* 2F910 0012E990 10418424 */  addiu      $a0, $a0, %lo(D_00154110)
    /* 2F914 0012E994 80100500 */  sll        $v0, $a1, 2
    /* 2F918 0012E998 21105300 */  addu       $v0, $v0, $s3
    /* 2F91C 0012E99C 0000438C */  lw         $v1, 0x0($v0)
    /* 2F920 0012E9A0 1E58040C */  jal        func_00116078
    /* 2F924 0012E9A4 0000668C */   lw        $a2, 0x0($v1)
    /* 2F928 0012E9A8 C080838F */  lw         $v1, -0x7F40($gp)
.align 2
  .L0012E9AC:
    /* 2F92C 0012E9AC 00010524 */  addiu      $a1, $zero, 0x100
    /* 2F930 0012E9B0 80300300 */  sll        $a2, $v1, 2
    /* 2F934 0012E9B4 2110D300 */  addu       $v0, $a2, $s3
    /* 2F938 0012E9B8 0000438C */  lw         $v1, 0x0($v0)
    /* 2F93C 0012E9BC 0000648C */  lw         $a0, 0x0($v1)
    /* 2F940 0012E9C0 E7FF8510 */  beq        $a0, $a1, .L0012E960
    /* 2F944 0012E9C4 01005226 */   addiu     $s2, $s2, 0x1
    /* 2F948 0012E9C8 2118D400 */  addu       $v1, $a2, $s4
.align 2
  .L0012E9CC:
    /* 2F94C 0012E9CC 0000628C */  lw         $v0, 0x0($v1)
    /* 2F950 0012E9D0 2A105000 */  slt        $v0, $v0, $s0
    /* 2F954 0012E9D4 E3FF4014 */  bnez       $v0, .L0012E964
    /* 2F958 0012E9D8 C480828F */   lw        $v0, -0x7F3C($gp)
    /* 2F95C 0012E9DC 04004012 */  beqz       $s2, .L0012E9F0
    /* 2F960 0012E9E0 1500043C */   lui       $a0, %hi(D_00154170)
    /* 2F964 0012E9E4 2D284002 */  daddu      $a1, $s2, $zero
    /* 2F968 0012E9E8 1E58040C */  jal        func_00116078
    /* 2F96C 0012E9EC 70418424 */   addiu     $a0, $a0, %lo(D_00154170)
.align 2
  .L0012E9F0:
    /* 2F970 0012E9F0 0200A012 */  beqz       $s5, .L0012E9FC
    /* 2F974 0012E9F4 01000224 */   addiu     $v0, $zero, 0x1
    /* 2F978 0012E9F8 C48082AF */  sw         $v0, -0x7F3C($gp)
.align 2
  .L0012E9FC:
    /* 2F97C 0012E9FC C080838F */  lw         $v1, -0x7F40($gp)
    /* 2F980 0012EA00 2D300000 */  daddu      $a2, $zero, $zero
    /* 2F984 0012EA04 80180300 */  sll        $v1, $v1, 2
    /* 2F988 0012EA08 21207400 */  addu       $a0, $v1, $s4
    /* 2F98C 0012EA0C 0000828C */  lw         $v0, 0x0($a0)
    /* 2F990 0012EA10 21187300 */  addu       $v1, $v1, $s3
    /* 2F994 0012EA14 0000658C */  lw         $a1, 0x0($v1)
    /* 2F998 0012EA18 00F04224 */  addiu      $v0, $v0, -0x1000
    /* 2F99C 0012EA1C 2328A200 */  subu       $a1, $a1, $v0
    /* 2F9A0 0012EA20 0000B7A4 */  sh         $s7, 0x0($a1)
    /* 2F9A4 0012EA24 0200A524 */  addiu      $a1, $a1, 0x2
    /* 2F9A8 0012EA28 0000B1A4 */  sh         $s1, 0x0($a1)
    /* 2F9AC 0012EA2C 0900201A */  blez       $s1, .L0012EA54
    /* 2F9B0 0012EA30 0200A524 */   addiu     $a1, $a1, 0x2
    /* 2F9B4 0012EA34 00000000 */  nop
.align 2
  .L0012EA38:
    /* 2F9B8 0012EA38 2110C602 */  addu       $v0, $s6, $a2
    /* 2F9BC 0012EA3C 2120A600 */  addu       $a0, $a1, $a2
    /* 2F9C0 0012EA40 00004390 */  lbu        $v1, 0x0($v0)
    /* 2F9C4 0012EA44 0100C624 */  addiu      $a2, $a2, 0x1
    /* 2F9C8 0012EA48 2A10D100 */  slt        $v0, $a2, $s1
    /* 2F9CC 0012EA4C FAFF4014 */  bnez       $v0, .L0012EA38
    /* 2F9D0 0012EA50 000083A0 */   sb        $v1, 0x0($a0)
.align 2
  .L0012EA54:
    /* 2F9D4 0012EA54 C080838F */  lw         $v1, -0x7F40($gp)
    /* 2F9D8 0012EA58 B0808427 */  addiu      $a0, $gp, -0x7F50
    /* 2F9DC 0012EA5C 80180300 */  sll        $v1, $v1, 2
    /* 2F9E0 0012EA60 21287400 */  addu       $a1, $v1, $s4
    /* 2F9E4 0012EA64 21307300 */  addu       $a2, $v1, $s3
    /* 2F9E8 0012EA68 0000A28C */  lw         $v0, 0x0($a1)
    /* 2F9EC 0012EA6C 21186400 */  addu       $v1, $v1, $a0
    /* 2F9F0 0012EA70 23105000 */  subu       $v0, $v0, $s0
    /* 2F9F4 0012EA74 0000A2AC */  sw         $v0, 0x0($a1)
    /* 2F9F8 0012EA78 0000C48C */  lw         $a0, 0x0($a2)
    /* 2F9FC 0012EA7C 0000658C */  lw         $a1, 0x0($v1)
    /* 2FA00 0012EA80 0000828C */  lw         $v0, 0x0($a0)
    /* 2FA04 0012EA84 00110200 */  sll        $v0, $v0, 4
    /* 2FA08 0012EA88 21104500 */  addu       $v0, $v0, $a1
    /* 2FA0C 0012EA8C 00005EAC */  sw         $fp, 0x0($v0)
    /* 2FA10 0012EA90 0000C48C */  lw         $a0, 0x0($a2)
    /* 2FA14 0012EA94 0000658C */  lw         $a1, 0x0($v1)
    /* 2FA18 0012EA98 0000828C */  lw         $v0, 0x0($a0)
    /* 2FA1C 0012EA9C 1000A3DF */  ld         $v1, 0x10($sp)
    /* 2FA20 0012EAA0 00110200 */  sll        $v0, $v0, 4
    /* 2FA24 0012EAA4 21104500 */  addu       $v0, $v0, $a1
    /* 2FA28 0012EAA8 B8BA040C */  jal        func_0012EAE0
    /* 2FA2C 0012EAAC 080043FC */   sd        $v1, 0x8($v0)
    /* 2FA30 0012EAB0 B000BF7B */  lq         $ra, 0xB0($sp)
.align 2
  .L0012EAB4:
    /* 2FA34 0012EAB4 A000BE7B */  lq         $fp, 0xA0($sp)
    /* 2FA38 0012EAB8 9000B77B */  lq         $s7, 0x90($sp)
    /* 2FA3C 0012EABC 8000B67B */  lq         $s6, 0x80($sp)
    /* 2FA40 0012EAC0 7000B57B */  lq         $s5, 0x70($sp)
    /* 2FA44 0012EAC4 6000B47B */  lq         $s4, 0x60($sp)
    /* 2FA48 0012EAC8 5000B37B */  lq         $s3, 0x50($sp)
    /* 2FA4C 0012EACC 4000B27B */  lq         $s2, 0x40($sp)
    /* 2FA50 0012EAD0 3000B17B */  lq         $s1, 0x30($sp)
    /* 2FA54 0012EAD4 2000B07B */  lq         $s0, 0x20($sp)
    /* 2FA58 0012EAD8 0800E003 */  jr         $ra
    /* 2FA5C 0012EADC C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_0012E820
