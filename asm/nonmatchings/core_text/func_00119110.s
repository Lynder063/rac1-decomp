.align 3
/* Handwritten function */
nonmatching func_00119110, 0xAC

glabel func_00119110
    /* 1A090 00119110 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1A094 00119114 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1A098 00119118 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1A09C 0011911C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1A0A0 00119120 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1A0A4 00119124 00601140 */  mfc0       $s1, $12 /* handwritten instruction */
    /* 1A0A8 00119128 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1A0AC 0011912C 24882202 */  and        $s1, $s1, $v0
    /* 1A0B0 00119130 0A002012 */  beqz       $s1, .L0011915C
    /* 1A0B4 00119134 1300123C */   lui       $s2, %hi(D_0012FCF4)
.align 2
  .L00119138:
    /* 1A0B8 00119138 39000042 */  di /* handwritten instruction */
    /* 1A0BC 0011913C 0F040000 */  sync.p
    /* 1A0C0 00119140 00600240 */  mfc0       $v0, $12 /* handwritten instruction */
    /* 1A0C4 00119144 0100033C */  lui        $v1, (0x10000 >> 16)
    /* 1A0C8 00119148 24104300 */  and        $v0, $v0, $v1
    /* 1A0CC 0011914C FAFF4014 */  bnez       $v0, .L00119138
    /* 1A0D0 00119150 00000000 */   nop
    /* 1A0D4 00119154 02000010 */  b          .L00119160
    /* 1A0D8 00119158 F4FC428E */   lw        $v0, %lo(D_0012FCF4)($s2)
.align 2
  .L0011915C:
    /* 1A0DC 0011915C F4FC428E */  lw         $v0, %lo(D_0012FCF4)($s2)
.align 2
  .L00119160:
    /* 1A0E0 00119160 1863040C */  jal        func_00118C60
    /* 1A0E4 00119164 21804400 */   addu      $s0, $v0, $a0
    /* 1A0E8 00119168 2B105000 */  sltu       $v0, $v0, $s0
    /* 1A0EC 0011916C 0A004010 */  beqz       $v0, .L00119198
    /* 1A0F0 00119170 F4FC428E */   lw        $v0, %lo(D_0012FCF4)($s2)
    /* 1A0F4 00119174 2A4E040C */  jal        func_001138A8
    /* 1A0F8 00119178 00000000 */   nop
    /* 1A0FC 0011917C 0C000324 */  addiu      $v1, $zero, 0xC
    /* 1A100 00119180 02002012 */  beqz       $s1, .L0011918C
    /* 1A104 00119184 000043AC */   sw        $v1, 0x0($v0)
    /* 1A108 00119188 38000042 */  ei /* handwritten instruction */
.align 2
  .L0011918C:
    /* 1A10C 0011918C FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 1A110 00119190 04000010 */  b          .L001191A4
    /* 1A114 00119194 FFFF4234 */   ori       $v0, $v0, (0xFFFFFFFF & 0xFFFF)
.align 2
  .L00119198:
    /* 1A118 00119198 02002012 */  beqz       $s1, .L001191A4
    /* 1A11C 0011919C F4FC50AE */   sw        $s0, %lo(D_0012FCF4)($s2)
    /* 1A120 001191A0 38000042 */  ei /* handwritten instruction */
.align 2
  .L001191A4:
    /* 1A124 001191A4 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1A128 001191A8 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1A12C 001191AC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A130 001191B0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A134 001191B4 0800E003 */  jr         $ra
    /* 1A138 001191B8 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00119110
    /* 1A13C 001191BC 00000000 */  nop
