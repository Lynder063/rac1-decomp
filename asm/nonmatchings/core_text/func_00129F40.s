.align 3
nonmatching func_00129F40, 0x1B8

glabel func_00129F40
    /* 2AEC0 00129F40 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 2AEC4 00129F44 02000224 */  addiu      $v0, $zero, 0x2
    /* 2AEC8 00129F48 6000B6FF */  sd         $s6, 0x60($sp)
    /* 2AECC 00129F4C 5000B5FF */  sd         $s5, 0x50($sp)
    /* 2AED0 00129F50 2DB00000 */  daddu      $s6, $zero, $zero
    /* 2AED4 00129F54 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2AED8 00129F58 2DA8C000 */  daddu      $s5, $a2, $zero
    /* 2AEDC 00129F5C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2AEE0 00129F60 7000BFFF */  sd         $ra, 0x70($sp)
    /* 2AEE4 00129F64 2D888000 */  daddu      $s1, $a0, $zero
    /* 2AEE8 00129F68 4000B4FF */  sd         $s4, 0x40($sp)
    /* 2AEEC 00129F6C 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2AEF0 00129F70 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2AEF4 00129F74 7401238E */  lw         $v1, 0x174($s1)
    /* 2AEF8 00129F78 05006214 */  bne        $v1, $v0, .L00129F90
    /* 2AEFC 00129F7C 2D90A000 */   daddu     $s2, $a1, $zero
    /* 2AF00 00129F80 2D984002 */  daddu      $s3, $s2, $zero
    /* 2AF04 00129F84 2DA0A002 */  daddu      $s4, $s5, $zero
    /* 2AF08 00129F88 03000010 */  b          .L00129F98
    /* 2AF0C 00129F8C 40001624 */   addiu     $s6, $zero, 0x40
.align 2
  .L00129F90:
    /* 2AF10 00129F90 2D98A002 */  daddu      $s3, $s5, $zero
    /* 2AF14 00129F94 2DA04002 */  daddu      $s4, $s2, $zero
.align 2
  .L00129F98:
    /* 2AF18 00129F98 5808278E */  lw         $a3, 0x858($s1)
    /* 2AF1C 00129F9C 2D202002 */  daddu      $a0, $s1, $zero
    /* 2AF20 00129FA0 2D286002 */  daddu      $a1, $s3, $zero
    /* 2AF24 00129FA4 01001024 */  addiu      $s0, $zero, 0x1
    /* 2AF28 00129FA8 2000E824 */  addiu      $t0, $a3, 0x20
    /* 2AF2C 00129FAC 1000E624 */  addiu      $a2, $a3, 0x10
    /* 2AF30 00129FB0 28A7040C */  jal        func_00129CA0
    /* 2AF34 00129FB4 1800E724 */   addiu     $a3, $a3, 0x18
    /* 2AF38 00129FB8 5808278E */  lw         $a3, 0x858($s1)
    /* 2AF3C 00129FBC 2D202002 */  daddu      $a0, $s1, $zero
    /* 2AF40 00129FC0 2D288002 */  daddu      $a1, $s4, $zero
    /* 2AF44 00129FC4 1000E28C */  lw         $v0, 0x10($a3)
    /* 2AF48 00129FC8 3800E824 */  addiu      $t0, $a3, 0x38
    /* 2AF4C 00129FCC 2800E624 */  addiu      $a2, $a3, 0x28
    /* 2AF50 00129FD0 880030FE */  sd         $s0, 0x88($s1)
    /* 2AF54 00129FD4 800022AE */  sw         $v0, 0x80($s1)
    /* 2AF58 00129FD8 28A7040C */  jal        func_00129CA0
    /* 2AF5C 00129FDC 3000E724 */   addiu     $a3, $a3, 0x30
    /* 2AF60 00129FE0 5808278E */  lw         $a3, 0x858($s1)
    /* 2AF64 00129FE4 2D40C002 */  daddu      $t0, $s6, $zero
    /* 2AF68 00129FE8 2D202002 */  daddu      $a0, $s1, $zero
    /* 2AF6C 00129FEC 2D284002 */  daddu      $a1, $s2, $zero
    /* 2AF70 00129FF0 2800E38C */  lw         $v1, 0x28($a3)
    /* 2AF74 00129FF4 880030FE */  sd         $s0, 0x88($s1)
    /* 2AF78 00129FF8 800023AE */  sw         $v1, 0x80($s1)
    /* 2AF7C 00129FFC 2000E2DC */  ld         $v0, 0x20($a3)
    /* 2AF80 0012A000 5C00668E */  lw         $a2, 0x5C($s3)
    /* 2AF84 0012A004 25104800 */  or         $v0, $v0, $t0
    /* 2AF88 0012A008 3800E3DC */  ld         $v1, 0x38($a3)
    /* 2AF8C 0012A00C CC0026AE */  sw         $a2, 0xCC($s1)
    /* 2AF90 0012A010 2000E2FC */  sd         $v0, 0x20($a3)
    /* 2AF94 0012A014 25186800 */  or         $v1, $v1, $t0
    /* 2AF98 0012A018 6000668E */  lw         $a2, 0x60($s3)
    /* 2AF9C 0012A01C 3800E3FC */  sd         $v1, 0x38($a3)
    /* 2AFA0 0012A020 D00026AE */  sw         $a2, 0xD0($s1)
    /* 2AFA4 0012A024 4400628E */  lw         $v0, 0x44($s3)
    /* 2AFA8 0012A028 B40022AE */  sw         $v0, 0xB4($s1)
    /* 2AFAC 0012A02C 4800838E */  lw         $v1, 0x48($s4)
    /* 2AFB0 0012A030 B80023AE */  sw         $v1, 0xB8($s1)
    /* 2AFB4 0012A034 5000628E */  lw         $v0, 0x50($s3)
    /* 2AFB8 0012A038 C00022AE */  sw         $v0, 0xC0($s1)
    /* 2AFBC 0012A03C 5400838E */  lw         $v1, 0x54($s4)
    /* 2AFC0 0012A040 52A6040C */  jal        func_00129948
    /* 2AFC4 0012A044 C40023AE */   sw        $v1, 0xC4($s1)
    /* 2AFC8 0012A048 21004010 */  beqz       $v0, .L0012A0D0
    /* 2AFCC 0012A04C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2AFD0 0012A050 2800438E */  lw         $v1, 0x28($s2)
    /* 2AFD4 0012A054 1F006214 */  bne        $v1, $v0, .L0012A0D4
    /* 2AFD8 0012A058 7000BFDF */   ld        $ra, 0x70($sp)
    /* 2AFDC 0012A05C 2800A28E */  lw         $v0, 0x28($s5)
    /* 2AFE0 0012A060 1D004314 */  bne        $v0, $v1, .L0012A0D8
    /* 2AFE4 0012A064 6000B6DF */   ld        $s6, 0x60($sp)
    /* 2AFE8 0012A068 1000428E */  lw         $v0, 0x10($s2)
    /* 2AFEC 0012A06C 40100200 */  sll        $v0, $v0, 1
    /* 2AFF0 0012A070 100042AE */  sw         $v0, 0x10($s2)
    /* 2AFF4 0012A074 B000238E */  lw         $v1, 0xB0($s1)
    /* 2AFF8 0012A078 05006010 */  beqz       $v1, .L0012A090
    /* 2AFFC 0012A07C 2D202002 */   daddu     $a0, $s1, $zero
    /* 2B000 0012A080 FAA9040C */  jal        func_0012A7E8
    /* 2B004 0012A084 2D284002 */   daddu     $a1, $s2, $zero
    /* 2B008 0012A088 04000010 */  b          .L0012A09C
    /* 2B00C 0012A08C 1000428E */   lw        $v0, 0x10($s2)
.align 2
  .L0012A090:
    /* 2B010 0012A090 7AA6040C */  jal        func_001299E8
    /* 2B014 0012A094 2D284002 */   daddu     $a1, $s2, $zero
    /* 2B018 0012A098 1000428E */  lw         $v0, 0x10($s2)
.align 2
  .L0012A09C:
    /* 2B01C 0012A09C 2D202002 */  daddu      $a0, $s1, $zero
    /* 2B020 0012A0A0 7000BFDF */  ld         $ra, 0x70($sp)
    /* 2B024 0012A0A4 43100200 */  sra        $v0, $v0, 1
    /* 2B028 0012A0A8 6000B6DF */  ld         $s6, 0x60($sp)
    /* 2B02C 0012A0AC 100042AE */  sw         $v0, 0x10($s2)
    /* 2B030 0012A0B0 5000B5DF */  ld         $s5, 0x50($sp)
    /* 2B034 0012A0B4 4000B4DF */  ld         $s4, 0x40($sp)
    /* 2B038 0012A0B8 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2B03C 0012A0BC 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2B040 0012A0C0 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2B044 0012A0C4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2B048 0012A0C8 1EA70408 */  j          func_00129C78
    /* 2B04C 0012A0CC 8000BD27 */   addiu     $sp, $sp, 0x80
.align 2
  .L0012A0D0:
    /* 2B050 0012A0D0 7000BFDF */  ld         $ra, 0x70($sp)
.align 2
  .L0012A0D4:
    /* 2B054 0012A0D4 6000B6DF */  ld         $s6, 0x60($sp)
.align 2
  .L0012A0D8:
    /* 2B058 0012A0D8 5000B5DF */  ld         $s5, 0x50($sp)
    /* 2B05C 0012A0DC 4000B4DF */  ld         $s4, 0x40($sp)
    /* 2B060 0012A0E0 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2B064 0012A0E4 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2B068 0012A0E8 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2B06C 0012A0EC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2B070 0012A0F0 0800E003 */  jr         $ra
    /* 2B074 0012A0F4 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_00129F40
