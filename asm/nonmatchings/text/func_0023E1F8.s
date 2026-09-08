.align 3
nonmatching func_0023E1F8, 0x9C

glabel func_0023E1F8
    /* 13F178 0023E1F8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13F17C 0023E1FC 0000B07F */  sq         $s0, 0x0($sp)
    /* 13F180 0023E200 2D808000 */  daddu      $s0, $a0, $zero
    /* 13F184 0023E204 2000B27F */  sq         $s2, 0x20($sp)
    /* 13F188 0023E208 1000B17F */  sq         $s1, 0x10($sp)
    /* 13F18C 0023E20C 48000426 */  addiu      $a0, $s0, 0x48
    /* 13F190 0023E210 3000BF7F */  sq         $ra, 0x30($sp)
    /* 13F194 0023E214 24F4080C */  jal        func_0023D090
    /* 13F198 0023E218 0D00113C */   lui       $s1, (0xD8000 >> 16)
    /* 13F19C 0023E21C 00803136 */  ori        $s1, $s1, (0xD8000 & 0xFFFF)
    /* 13F1A0 0023E220 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13F1A4 0023E224 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13F1A8 0023E228 0D00043C */  lui        $a0, (0xD9168 >> 16)
    /* 13F1AC 0023E22C 68918434 */  ori        $a0, $a0, (0xD9168 & 0xFFFF)
    /* 13F1B0 0023E230 01001224 */  addiu      $s2, $zero, 0x1
    /* 13F1B4 0023E234 6EF9080C */  jal        func_0023E5B8
    /* 13F1B8 0023E238 21204400 */   addu      $a0, $v0, $a0
    /* 13F1BC 0023E23C A6F8080C */  jal        func_0023E298
    /* 13F1C0 0023E240 2D200002 */   daddu     $a0, $s0, $zero
    /* 13F1C4 0023E244 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13F1C8 0023E248 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13F1CC 0023E24C 00000000 */  nop
.align 2
  .L0023E250:
    /* 13F1D0 0023E250 21105100 */  addu       $v0, $v0, $s1
    /* 13F1D4 0023E254 7411438C */  lw         $v1, 0x1174($v0)
    /* 13F1D8 0023E258 06006010 */  beqz       $v1, .L0023E274
    /* 13F1DC 0023E25C 2D200002 */   daddu     $a0, $s0, $zero
    /* 13F1E0 0023E260 14F8080C */  jal        func_0023E050
    /* 13F1E4 0023E264 2D200002 */   daddu     $a0, $s0, $zero
    /* 13F1E8 0023E268 F9FF5214 */  bne        $v0, $s2, .L0023E250
    /* 13F1EC 0023E26C 0CA6828F */   lw        $v0, -0x59F4($gp)
    /* 13F1F0 0023E270 2D200002 */  daddu      $a0, $s0, $zero
.align 2
  .L0023E274:
    /* 13F1F4 0023E274 16F8080C */  jal        func_0023E058
    /* 13F1F8 0023E278 03000524 */   addiu     $a1, $zero, 0x3
    /* 13F1FC 0023E27C 3000BF7B */  lq         $ra, 0x30($sp)
    /* 13F200 0023E280 2000B27B */  lq         $s2, 0x20($sp)
    /* 13F204 0023E284 1000B17B */  lq         $s1, 0x10($sp)
    /* 13F208 0023E288 0000B07B */  lq         $s0, 0x0($sp)
    /* 13F20C 0023E28C 0800E003 */  jr         $ra
    /* 13F210 0023E290 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023E1F8
    /* 13F214 0023E294 00000000 */  nop
