.align 3
nonmatching func_0011B248, 0xB0

glabel func_0011B248
    /* 1C1C8 0011B248 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1C1CC 0011B24C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1C1D0 0011B250 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1C1D4 0011B254 2D88A000 */  daddu      $s1, $a1, $zero
    /* 1C1D8 0011B258 2D808000 */  daddu      $s0, $a0, $zero
    /* 1C1DC 0011B25C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1C1E0 0011B260 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1C1E4 0011B264 2C6C040C */  jal        func_0011B0B0
    /* 1C1E8 0011B268 2D202002 */   daddu     $a0, $s1, $zero
    /* 1C1EC 0011B26C 2D904000 */  daddu      $s2, $v0, $zero
    /* 1C1F0 0011B270 1C00048E */  lw         $a0, 0x1C($s0)
    /* 1C1F4 0011B274 1400038E */  lw         $v1, 0x14($s0)
    /* 1C1F8 0011B278 0080023C */  lui        $v0, (0x80000009 >> 16)
    /* 1C1FC 0011B27C 09004234 */  ori        $v0, $v0, (0x80000009 & 0xFFFF)
    /* 1C200 0011B280 1C0044AE */  sw         $a0, 0x1C($s2)
    /* 1C204 0011B284 140043AE */  sw         $v1, 0x14($s2)
    /* 1C208 0011B288 2D282002 */  daddu      $a1, $s1, $zero
    /* 1C20C 0011B28C 200042AE */  sw         $v0, 0x20($s2)
    /* 1C210 0011B290 7E6C040C */  jal        func_0011B1F8
    /* 1C214 0011B294 2000048E */   lw        $a0, 0x20($s0)
    /* 1C218 0011B298 2D184000 */  daddu      $v1, $v0, $zero
    /* 1C21C 0011B29C 05006054 */  bnel       $v1, $zero, .L0011B2B4
    /* 1C220 0011B2A0 240043AE */   sw        $v1, 0x24($s2)
    /* 1C224 0011B2A4 240040AE */  sw         $zero, 0x24($s2)
    /* 1C228 0011B2A8 280040AE */  sw         $zero, 0x28($s2)
    /* 1C22C 0011B2AC 05000010 */  b          .L0011B2C4
    /* 1C230 0011B2B0 2C0040AE */   sw        $zero, 0x2C($s2)
.align 2
  .L0011B2B4:
    /* 1C234 0011B2B4 0800628C */  lw         $v0, 0x8($v1)
    /* 1C238 0011B2B8 280042AE */  sw         $v0, 0x28($s2)
    /* 1C23C 0011B2BC 1400638C */  lw         $v1, 0x14($v1)
    /* 1C240 0011B2C0 2C0043AE */  sw         $v1, 0x2C($s2)
.align 2
  .L0011B2C4:
    /* 1C244 0011B2C4 2D284002 */  daddu      $a1, $s2, $zero
    /* 1C248 0011B2C8 0080043C */  lui        $a0, (0x80000008 >> 16)
    /* 1C24C 0011B2CC 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1C250 0011B2D0 08008434 */  ori        $a0, $a0, (0x80000008 & 0xFFFF)
    /* 1C254 0011B2D4 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1C258 0011B2D8 40000624 */  addiu      $a2, $zero, 0x40
    /* 1C25C 0011B2DC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1C260 0011B2E0 2D380000 */  daddu      $a3, $zero, $zero
    /* 1C264 0011B2E4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1C268 0011B2E8 2D400000 */  daddu      $t0, $zero, $zero
    /* 1C26C 0011B2EC 2D480000 */  daddu      $t1, $zero, $zero
    /* 1C270 0011B2F0 026B0408 */  j          func_0011AC08
    /* 1C274 0011B2F4 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011B248
