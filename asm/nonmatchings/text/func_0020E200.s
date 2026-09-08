.align 3
nonmatching func_0020E200, 0xAC

glabel func_0020E200
    /* 10F180 0020E200 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 10F184 0020E204 03000524 */  addiu      $a1, $zero, 0x3
    /* 10F188 0020E208 0000B07F */  sq         $s0, 0x0($sp)
    /* 10F18C 0020E20C 1600103C */  lui        $s0, %hi(D_0015FFE0)
    /* 10F190 0020E210 1000BF7F */  sq         $ra, 0x10($sp)
    /* 10F194 0020E214 E0FF1026 */  addiu      $s0, $s0, %lo(D_0015FFE0)
    /* 10F198 0020E218 58C9070C */  jal        func_001F2560
    /* 10F19C 0020E21C 2D200002 */   daddu     $a0, $s0, $zero
    /* 10F1A0 0020E220 1037080C */  jal        func_0020DC40
    /* 10F1A4 0020E224 00000000 */   nop
    /* 10F1A8 0020E228 2D200002 */  daddu      $a0, $s0, $zero
    /* 10F1AC 0020E22C 56C9070C */  jal        func_001F2558
    /* 10F1B0 0020E230 05000524 */   addiu     $a1, $zero, 0x5
    /* 10F1B4 0020E234 1900023C */  lui        $v0, %hi(D_0018A3B0)
    /* 10F1B8 0020E238 2D804000 */  daddu      $s0, $v0, $zero
    /* 10F1BC 0020E23C B0A34224 */  addiu      $v0, $v0, %lo(D_0018A3B0)
    /* 10F1C0 0020E240 2800438C */  lw         $v1, 0x28($v0)
    /* 10F1C4 0020E244 0A006010 */  beqz       $v1, .L0020E270
    /* 10F1C8 0020E248 1600043C */   lui       $a0, %hi(D_0015FFF0)
    /* 10F1CC 0020E24C FE37080C */  jal        func_0020DFF8
    /* 10F1D0 0020E250 00000000 */   nop
    /* 10F1D4 0020E254 1600023C */  lui        $v0, %hi(D_00160038)
    /* 10F1D8 0020E258 3800428C */  lw         $v0, %lo(D_00160038)($v0)
    /* 10F1DC 0020E25C 04004050 */  beql       $v0, $zero, .L0020E270
    /* 10F1E0 0020E260 1600043C */   lui       $a0, %hi(D_0015FFF0)
    /* 10F1E4 0020E264 4249080C */  jal        func_00212508
    /* 10F1E8 0020E268 00000000 */   nop
    /* 10F1EC 0020E26C 1600043C */  lui        $a0, %hi(D_0015FFF0)
.align 2
  .L0020E270:
    /* 10F1F0 0020E270 03000524 */  addiu      $a1, $zero, 0x3
    /* 10F1F4 0020E274 56C9070C */  jal        func_001F2558
    /* 10F1F8 0020E278 F0FF8424 */   addiu     $a0, $a0, %lo(D_0015FFF0)
    /* 10F1FC 0020E27C B0A30226 */  addiu      $v0, $s0, %lo(D_0018A3B0)
    /* 10F200 0020E280 2800438C */  lw         $v1, 0x28($v0)
    /* 10F204 0020E284 05006010 */  beqz       $v1, .L0020E29C
    /* 10F208 0020E288 4093828F */   lw        $v0, -0x6CC0($gp)
    /* 10F20C 0020E28C 04004010 */  beqz       $v0, .L0020E2A0
    /* 10F210 0020E290 1000BF7B */   lq        $ra, 0x10($sp)
    /* 10F214 0020E294 AC37080C */  jal        func_0020DEB0
    /* 10F218 0020E298 00000000 */   nop
.align 2
  .L0020E29C:
    /* 10F21C 0020E29C 1000BF7B */  lq         $ra, 0x10($sp)
.align 2
  .L0020E2A0:
    /* 10F220 0020E2A0 0000B07B */  lq         $s0, 0x0($sp)
    /* 10F224 0020E2A4 0800E003 */  jr         $ra
    /* 10F228 0020E2A8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0020E200
    /* 10F22C 0020E2AC 00000000 */  nop
