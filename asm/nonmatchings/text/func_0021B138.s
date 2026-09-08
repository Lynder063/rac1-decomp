.align 3
nonmatching func_0021B138, 0x13C

glabel func_0021B138
    /* 11C0B8 0021B138 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 11C0BC 0021B13C 1F00023C */  lui        $v0, %hi(D_001E8A58)
    /* 11C0C0 0021B140 588A4724 */  addiu      $a3, $v0, %lo(D_001E8A58)
    /* 11C0C4 0021B144 0700E468 */  ldl        $a0, 0x7($a3)
    /* 11C0C8 0021B148 0000E46C */  ldr        $a0, 0x0($a3)
    /* 11C0CC 0021B14C 0F00E568 */  ldl        $a1, 0xF($a3)
    /* 11C0D0 0021B150 0800E56C */  ldr        $a1, 0x8($a3)
    /* 11C0D4 0021B154 1700E668 */  ldl        $a2, 0x17($a3)
    /* 11C0D8 0021B158 1000E66C */  ldr        $a2, 0x10($a3)
    /* 11C0DC 0021B15C 0700A4B3 */  sdl        $a0, 0x7($sp)
    /* 11C0E0 0021B160 0000A4B7 */  sdr        $a0, 0x0($sp)
    /* 11C0E4 0021B164 0F00A5B3 */  sdl        $a1, 0xF($sp)
    /* 11C0E8 0021B168 0800A5B7 */  sdr        $a1, 0x8($sp)
    /* 11C0EC 0021B16C 1700A6B3 */  sdl        $a2, 0x17($sp)
    /* 11C0F0 0021B170 1000A6B7 */  sdr        $a2, 0x10($sp)
    /* 11C0F4 0021B174 1F00E468 */  ldl        $a0, 0x1F($a3)
    /* 11C0F8 0021B178 1800E46C */  ldr        $a0, 0x18($a3)
    /* 11C0FC 0021B17C 1F00A4B3 */  sdl        $a0, 0x1F($sp)
    /* 11C100 0021B180 1800A4B7 */  sdr        $a0, 0x18($sp)
    /* 11C104 0021B184 1F00033C */  lui        $v1, %hi(D_001E8A78)
    /* 11C108 0021B188 788A6624 */  addiu      $a2, $v1, %lo(D_001E8A78)
    /* 11C10C 0021B18C 0700C268 */  ldl        $v0, 0x7($a2)
    /* 11C110 0021B190 0000C26C */  ldr        $v0, 0x0($a2)
    /* 11C114 0021B194 0F00C468 */  ldl        $a0, 0xF($a2)
    /* 11C118 0021B198 0800C46C */  ldr        $a0, 0x8($a2)
    /* 11C11C 0021B19C 1700C568 */  ldl        $a1, 0x17($a2)
    /* 11C120 0021B1A0 1000C56C */  ldr        $a1, 0x10($a2)
    /* 11C124 0021B1A4 2700A2B3 */  sdl        $v0, 0x27($sp)
    /* 11C128 0021B1A8 2000A2B7 */  sdr        $v0, 0x20($sp)
    /* 11C12C 0021B1AC 2F00A4B3 */  sdl        $a0, 0x2F($sp)
    /* 11C130 0021B1B0 2800A4B7 */  sdr        $a0, 0x28($sp)
    /* 11C134 0021B1B4 3700A5B3 */  sdl        $a1, 0x37($sp)
    /* 11C138 0021B1B8 3000A5B7 */  sdr        $a1, 0x30($sp)
    /* 11C13C 0021B1BC 1800C28C */  lw         $v0, 0x18($a2)
    /* 11C140 0021B1C0 3800A2AF */  sw         $v0, 0x38($sp)
    /* 11C144 0021B1C4 2D380000 */  daddu      $a3, $zero, $zero
    /* 11C148 0021B1C8 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 11C14C 0021B1CC 0000A28F */  lw         $v0, 0x0($sp)
    /* 11C150 0021B1D0 20004410 */  beq        $v0, $a0, .L0021B254
    /* 11C154 0021B1D4 1D000E3C */   lui       $t6, %hi(D_001D3E90)
    /* 11C158 0021B1D8 16000D3C */  lui        $t5, %hi(D_0015EEC0)
    /* 11C15C 0021B1DC C0EEAD25 */  addiu      $t5, $t5, %lo(D_0015EEC0)
    /* 11C160 0021B1E0 16000C3C */  lui        $t4, %hi(D_0015EEB0)
    /* 11C164 0021B1E4 B0EE8C25 */  addiu      $t4, $t4, %lo(D_0015EEB0)
    /* 11C168 0021B1E8 5A4F0B24 */  addiu      $t3, $zero, 0x4F5A
    /* 11C16C 0021B1EC 5B4F0A24 */  addiu      $t2, $zero, 0x4F5B
    /* 11C170 0021B1F0 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 11C174 0021B1F4 2D28A003 */  daddu      $a1, $sp, $zero
    /* 11C178 0021B1F8 3000A827 */  addiu      $t0, $sp, 0x30
    /* 11C17C 0021B1FC 903EC625 */  addiu      $a2, $t6, %lo(D_001D3E90)
    /* 11C180 0021B200 0000A48C */  lw         $a0, 0x0($a1)
    /* 11C184 0021B204 00000000 */  nop
.align 2
  .L0021B208:
    /* 11C188 0021B208 21108D00 */  addu       $v0, $a0, $t5
    /* 11C18C 0021B20C 00004390 */  lbu        $v1, 0x0($v0)
    /* 11C190 0021B210 09006010 */  beqz       $v1, .L0021B238
    /* 11C194 0021B214 21108C00 */   addu      $v0, $a0, $t4
    /* 11C198 0021B218 2000A38C */  lw         $v1, 0x20($a1)
    /* 11C19C 0021B21C 0400C2AC */  sw         $v0, 0x4($a2)
    /* 11C1A0 0021B220 0100E724 */  addiu      $a3, $a3, 0x1
    /* 11C1A4 0021B224 0000C3AC */  sw         $v1, 0x0($a2)
    /* 11C1A8 0021B228 0800CBAC */  sw         $t3, 0x8($a2)
    /* 11C1AC 0021B22C 0C00CAAC */  sw         $t2, 0xC($a2)
    /* 11C1B0 0021B230 1000C0AC */  sw         $zero, 0x10($a2)
    /* 11C1B4 0021B234 1400C624 */  addiu      $a2, $a2, 0x14
.align 2
  .L0021B238:
    /* 11C1B8 0021B238 0400A524 */  addiu      $a1, $a1, 0x4
    /* 11C1BC 0021B23C 2A10A800 */  slt        $v0, $a1, $t0
    /* 11C1C0 0021B240 05004010 */  beqz       $v0, .L0021B258
    /* 11C1C4 0021B244 14000324 */   addiu     $v1, $zero, 0x14
    /* 11C1C8 0021B248 0000A28C */  lw         $v0, 0x0($a1)
    /* 11C1CC 0021B24C EEFF4954 */  bnel       $v0, $t1, .L0021B208
    /* 11C1D0 0021B250 0000A48C */   lw        $a0, 0x0($a1)
.align 2
  .L0021B254:
    /* 11C1D4 0021B254 14000324 */  addiu      $v1, $zero, 0x14
.align 2
  .L0021B258:
    /* 11C1D8 0021B258 903EC425 */  addiu      $a0, $t6, %lo(D_001D3E90)
    /* 11C1DC 0021B25C 1818E300 */  mult       $v1, $a3, $v1
    /* 11C1E0 0021B260 2D100000 */  daddu      $v0, $zero, $zero
    /* 11C1E4 0021B264 21186400 */  addu       $v1, $v1, $a0
    /* 11C1E8 0021B268 000060AC */  sw         $zero, 0x0($v1)
    /* 11C1EC 0021B26C 0800E003 */  jr         $ra
    /* 11C1F0 0021B270 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0021B138
    /* 11C1F4 0021B274 00000000 */  nop
