.align 3
nonmatching func_0021F898, 0x1B8

glabel func_0021F898
    /* 120818 0021F898 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 12081C 0021F89C 18000624 */  addiu      $a2, $zero, 0x18
    /* 120820 0021F8A0 9000BF7F */  sq         $ra, 0x90($sp)
    /* 120824 0021F8A4 2D280000 */  daddu      $a1, $zero, $zero
    /* 120828 0021F8A8 8000B67F */  sq         $s6, 0x80($sp)
    /* 12082C 0021F8AC 7000B57F */  sq         $s5, 0x70($sp)
    /* 120830 0021F8B0 6000B47F */  sq         $s4, 0x60($sp)
    /* 120834 0021F8B4 5000B37F */  sq         $s3, 0x50($sp)
    /* 120838 0021F8B8 4000B27F */  sq         $s2, 0x40($sp)
    /* 12083C 0021F8BC 2D988000 */  daddu      $s3, $a0, $zero
    /* 120840 0021F8C0 3000B17F */  sq         $s1, 0x30($sp)
    /* 120844 0021F8C4 2D20A003 */  daddu      $a0, $sp, $zero
    /* 120848 0021F8C8 2000B07F */  sq         $s0, 0x20($sp)
    /* 12084C 0021F8CC 2000708E */  lw         $s0, 0x20($s3)
    /* 120850 0021F8D0 FF54040C */  jal        func_001153FC
    /* 120854 0021F8D4 2400718E */   lw        $s1, 0x24($s3)
    /* 120858 0021F8D8 C2971000 */  srl        $s2, $s0, 31
    /* 12085C 0021F8DC FCFF0326 */  addiu      $v1, $s0, -0x4
    /* 120860 0021F8E0 21901202 */  addu       $s2, $s0, $s2
    /* 120864 0021F8E4 10000624 */  addiu      $a2, $zero, 0x10
    /* 120868 0021F8E8 01000724 */  addiu      $a3, $zero, 0x1
    /* 12086C 0021F8EC 04000224 */  addiu      $v0, $zero, 0x4
    /* 120870 0021F8F0 43901200 */  sra        $s2, $s2, 1
    /* 120874 0021F8F4 06000524 */  addiu      $a1, $zero, 0x6
    /* 120878 0021F8F8 0600A3A7 */  sh         $v1, 0x6($sp)
    /* 12087C 0021F8FC 2D200000 */  daddu      $a0, $zero, $zero
    /* 120880 0021F900 0A00A5A7 */  sh         $a1, 0xA($sp)
    /* 120884 0021F904 C0FF3426 */  addiu      $s4, $s1, -0x40
    /* 120888 0021F908 0C00B0A7 */  sh         $s0, 0xC($sp)
    /* 12088C 0021F90C D8FF3526 */  addiu      $s5, $s1, -0x28
    /* 120890 0021F910 1000A6A7 */  sh         $a2, 0x10($sp)
    /* 120894 0021F914 ECFF3626 */  addiu      $s6, $s1, -0x14
    /* 120898 0021F918 1200A7A7 */  sh         $a3, 0x12($sp)
    /* 12089C 0021F91C 0200B1A7 */  sh         $s1, 0x2($sp)
    /* 1208A0 0021F920 0800B2A7 */  sh         $s2, 0x8($sp)
    /* 1208A4 0021F924 0E00B1A7 */  sh         $s1, 0xE($sp)
    /* 1208A8 0021F928 8CD1070C */  jal        func_001F4630
    /* 1208AC 0021F92C 0400A2A7 */   sh        $v0, 0x4($sp)
    /* 1208B0 0021F930 0200053C */  lui        $a1, (0x2004B >> 16)
    /* 1208B4 0021F934 4B00A534 */  ori        $a1, $a1, (0x2004B & 0xFFFF)
    /* 1208B8 0021F938 26D3080C */  jal        func_00234C98
    /* 1208BC 0021F93C 47000424 */   addiu     $a0, $zero, 0x47
    /* 1208C0 0021F940 50F9070C */  jal        func_001FE540
    /* 1208C4 0021F944 6D4F0424 */   addiu     $a0, $zero, 0x4F6D
    /* 1208C8 0021F948 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1208CC 0021F94C 2D304000 */  daddu      $a2, $v0, $zero
    /* 1208D0 0021F950 FF800534 */  ori        $a1, $zero, 0x80FF
    /* 1208D4 0021F954 382C0500 */  dsll       $a1, $a1, 16
    /* 1208D8 0021F958 88A8A534 */  ori        $a1, $a1, 0xA888
    /* 1208DC 0021F95C 58DD070C */  jal        func_001F7560
    /* 1208E0 0021F960 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 1208E4 0021F964 50F9070C */  jal        func_001FE540
    /* 1208E8 0021F968 3F4F0424 */   addiu     $a0, $zero, 0x4F3F
    /* 1208EC 0021F96C 2D384000 */  daddu      $a3, $v0, $zero
    /* 1208F0 0021F970 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 1208F4 0021F974 38340600 */  dsll       $a2, $a2, 16
    /* 1208F8 0021F978 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 1208FC 0021F97C FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 120900 0021F980 2D288002 */  daddu      $a1, $s4, $zero
    /* 120904 0021F984 AADB070C */  jal        func_001F6EA8
    /* 120908 0021F988 2D204002 */   daddu     $a0, $s2, $zero
    /* 12090C 0021F98C 50F9070C */  jal        func_001FE540
    /* 120910 0021F990 50520424 */   addiu     $a0, $zero, 0x5250
    /* 120914 0021F994 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 120918 0021F998 80D9070C */  jal        func_001F6600
    /* 12091C 0021F99C 2D204000 */   daddu     $a0, $v0, $zero
    /* 120920 0021F9A0 2D804000 */  daddu      $s0, $v0, $zero
    /* 120924 0021F9A4 50F9070C */  jal        func_001FE540
    /* 120928 0021F9A8 54520424 */   addiu     $a0, $zero, 0x5254
    /* 12092C 0021F9AC FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 120930 0021F9B0 80D9070C */  jal        func_001F6600
    /* 120934 0021F9B4 2D204000 */   daddu     $a0, $v0, $zero
    /* 120938 0021F9B8 2A185000 */  slt        $v1, $v0, $s0
    /* 12093C 0021F9BC 2000718E */  lw         $s1, 0x20($s3)
    /* 120940 0021F9C0 0A804300 */  movz       $s0, $v0, $v1
    /* 120944 0021F9C4 50520424 */  addiu      $a0, $zero, 0x5250
    /* 120948 0021F9C8 23883002 */  subu       $s1, $s1, $s0
    /* 12094C 0021F9CC 50F9070C */  jal        func_001FE540
    /* 120950 0021F9D0 43881100 */   sra       $s1, $s1, 1
    /* 120954 0021F9D4 2D28A002 */  daddu      $a1, $s5, $zero
    /* 120958 0021F9D8 2D384000 */  daddu      $a3, $v0, $zero
    /* 12095C 0021F9DC FF800634 */  ori        $a2, $zero, 0x80FF
    /* 120960 0021F9E0 38340600 */  dsll       $a2, $a2, 16
    /* 120964 0021F9E4 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120968 0021F9E8 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 12096C 0021F9EC 3ADA070C */  jal        func_001F68E8
    /* 120970 0021F9F0 2D202002 */   daddu     $a0, $s1, $zero
    /* 120974 0021F9F4 50F9070C */  jal        func_001FE540
    /* 120978 0021F9F8 54520424 */   addiu     $a0, $zero, 0x5254
    /* 12097C 0021F9FC 2D384000 */  daddu      $a3, $v0, $zero
    /* 120980 0021FA00 2D202002 */  daddu      $a0, $s1, $zero
    /* 120984 0021FA04 2D28C002 */  daddu      $a1, $s6, $zero
    /* 120988 0021FA08 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 12098C 0021FA0C 38340600 */  dsll       $a2, $a2, 16
    /* 120990 0021FA10 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 120994 0021FA14 3ADA070C */  jal        func_001F68E8
    /* 120998 0021FA18 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 12099C 0021FA1C D2D1070C */  jal        func_001F4748
    /* 1209A0 0021FA20 00000000 */   nop
    /* 1209A4 0021FA24 9000BF7B */  lq         $ra, 0x90($sp)
    /* 1209A8 0021FA28 02000224 */  addiu      $v0, $zero, 0x2
    /* 1209AC 0021FA2C 8000B67B */  lq         $s6, 0x80($sp)
    /* 1209B0 0021FA30 7000B57B */  lq         $s5, 0x70($sp)
    /* 1209B4 0021FA34 6000B47B */  lq         $s4, 0x60($sp)
    /* 1209B8 0021FA38 5000B37B */  lq         $s3, 0x50($sp)
    /* 1209BC 0021FA3C 4000B27B */  lq         $s2, 0x40($sp)
    /* 1209C0 0021FA40 3000B17B */  lq         $s1, 0x30($sp)
    /* 1209C4 0021FA44 2000B07B */  lq         $s0, 0x20($sp)
    /* 1209C8 0021FA48 0800E003 */  jr         $ra
    /* 1209CC 0021FA4C A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_0021F898
