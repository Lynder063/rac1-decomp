.align 3
nonmatching func_0012E1B8, 0x120

glabel func_0012E1B8
    /* 2F138 0012E1B8 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 2F13C 0012E1BC 00000000 */  nop
    /* 2F140 0012E1C0 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 2F144 0012E1C4 00000000 */  nop
.align 2
  alabel func_0012E1C8
    /* 2F148 0012E1C8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2F14C 0012E1CC C880828F */  lw         $v0, -0x7F38($gp)
    /* 2F150 0012E1D0 3000B27F */  sq         $s2, 0x30($sp)
    /* 2F154 0012E1D4 2000B17F */  sq         $s1, 0x20($sp)
    /* 2F158 0012E1D8 2D90C000 */  daddu      $s2, $a2, $zero
    /* 2F15C 0012E1DC 1000B07F */  sq         $s0, 0x10($sp)
    /* 2F160 0012E1E0 2D88A000 */  daddu      $s1, $a1, $zero
    /* 2F164 0012E1E4 4000BF7F */  sq         $ra, 0x40($sp)
    /* 2F168 0012E1E8 2D808000 */  daddu      $s0, $a0, $zero
    /* 2F16C 0012E1EC 06004010 */  beqz       $v0, .L0012E208
    /* 2F170 0012E1F0 888080AF */   sw        $zero, -0x7F78($gp)
    /* 2F174 0012E1F4 1500043C */  lui        $a0, %hi(D_00153FC0)
    /* 2F178 0012E1F8 1E58040C */  jal        func_00116078
    /* 2F17C 0012E1FC C03F8424 */   addiu     $a0, $a0, %lo(D_00153FC0)
    /* 2F180 0012E200 30000010 */  b          .L0012E2C4
    /* 2F184 0012E204 4000BF7B */   lq        $ra, 0x40($sp)
.align 2
  .L0012E208:
    /* 2F188 0012E208 D2BB040C */  jal        func_0012EF48
    /* 2F18C 0012E20C 01000424 */   addiu     $a0, $zero, 0x1
    /* 2F190 0012E210 01000324 */  addiu      $v1, $zero, 0x1
    /* 2F194 0012E214 06004314 */  bne        $v0, $v1, .L0012E230
    /* 2F198 0012E218 1300033C */   lui       $v1, %hi(D_00137C40)
    /* 2F19C 0012E21C 1500043C */  lui        $a0, %hi(D_00153FF8)
    /* 2F1A0 0012E220 1E58040C */  jal        func_00116078
    /* 2F1A4 0012E224 F83F8424 */   addiu     $a0, $a0, %lo(D_00153FF8)
    /* 2F1A8 0012E228 26000010 */  b          .L0012E2C4
    /* 2F1AC 0012E22C 4000BF7B */   lq        $ra, 0x40($sp)
.align 2
  .L0012E230:
    /* 2F1B0 0012E230 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 2F1B4 0012E234 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 2F1B8 0012E238 407C70AC */  sw         $s0, %lo(D_00137C40)($v1)
    /* 2F1BC 0012E23C 1600013C */  lui        $at, %hi(D_0015EE00)
    /* 2F1C0 0012E240 00EE22AC */  sw         $v0, %lo(D_0015EE00)($at)
    /* 2F1C4 0012E244 D08091AF */  sw         $s1, -0x7F30($gp)
    /* 2F1C8 0012E248 1600013C */  lui        $at, %hi(D_0015EDD8)
    /* 2F1CC 0012E24C D8ED32FC */  sd         $s2, %lo(D_0015EDD8)($at)
    /* 2F1D0 0012E250 2D906000 */  daddu      $s2, $v1, $zero
    /* 2F1D4 0012E254 08000010 */  b          .L0012E278
    /* 2F1D8 0012E258 1600113C */   lui       $s1, %hi(D_0015ECE8)
    /* 2F1DC 0012E25C 00000000 */  nop
.align 2
  .L0012E260:
    /* 2F1E0 0012E260 1E58040C */  jal        func_00116078
    /* 2F1E4 0012E264 203E8424 */   addiu     $a0, $a0, %lo(D_00153E20)
    /* 2F1E8 0012E268 70B7040C */  jal        func_0012DDC0
    /* 2F1EC 0012E26C 00000000 */   nop
    /* 2F1F0 0012E270 6063040C */  jal        func_00118D80
    /* 2F1F4 0012E274 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012E278:
    /* 2F1F8 0012E278 E8EC3026 */  addiu      $s0, $s1, %lo(D_0015ECE8)
    /* 2F1FC 0012E27C AE6D040C */  jal        func_0011B6B8
    /* 2F200 0012E280 2D200002 */   daddu     $a0, $s0, $zero
    /* 2F204 0012E284 F6FF4014 */  bnez       $v0, .L0012E260
    /* 2F208 0012E288 1500043C */   lui       $a0, %hi(D_00153E20)
    /* 2F20C 0012E28C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F210 0012E290 2D200002 */  daddu      $a0, $s0, $zero
    /* 2F214 0012E294 C88082AF */  sw         $v0, -0x7F38($gp)
    /* 2F218 0012E298 407C4726 */  addiu      $a3, $s2, %lo(D_00137C40)
    /* 2F21C 0012E29C 0000A0AF */  sw         $zero, 0x0($sp)
    /* 2F220 0012E2A0 57000524 */  addiu      $a1, $zero, 0x57
    /* 2F224 0012E2A4 01000624 */  addiu      $a2, $zero, 0x1
    /* 2F228 0012E2A8 04000824 */  addiu      $t0, $zero, 0x4
    /* 2F22C 0012E2AC 1600093C */  lui        $t1, %hi(D_0015EE00)
    /* 2F230 0012E2B0 00EE2925 */  addiu      $t1, $t1, %lo(D_0015EE00)
    /* 2F234 0012E2B4 04000A24 */  addiu      $t2, $zero, 0x4
    /* 2F238 0012E2B8 326D040C */  jal        func_0011B4C8
    /* 2F23C 0012E2BC 2D580000 */   daddu     $t3, $zero, $zero
    /* 2F240 0012E2C0 4000BF7B */  lq         $ra, 0x40($sp)
.align 2
  .L0012E2C4:
    /* 2F244 0012E2C4 3000B27B */  lq         $s2, 0x30($sp)
    /* 2F248 0012E2C8 2000B17B */  lq         $s1, 0x20($sp)
    /* 2F24C 0012E2CC 1000B07B */  lq         $s0, 0x10($sp)
    /* 2F250 0012E2D0 0800E003 */  jr         $ra
    /* 2F254 0012E2D4 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012E1B8
