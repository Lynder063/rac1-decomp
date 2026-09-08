.align 3
nonmatching func_00222B98, 0x1D4

glabel func_00222B98
    /* 123B18 00222B98 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 123B1C 00222B9C 44000524 */  addiu      $a1, $zero, 0x44
    /* 123B20 00222BA0 4000B07F */  sq         $s0, 0x40($sp)
    /* 123B24 00222BA4 2D808000 */  daddu      $s0, $a0, $zero
    /* 123B28 00222BA8 5000B17F */  sq         $s1, 0x50($sp)
    /* 123B2C 00222BAC 6000BF7F */  sq         $ra, 0x60($sp)
    /* 123B30 00222BB0 26D3080C */  jal        func_00234C98
    /* 123B34 00222BB4 42000424 */   addiu     $a0, $zero, 0x42
    /* 123B38 00222BB8 0200053C */  lui        $a1, (0x2004B >> 16)
    /* 123B3C 00222BBC 4B00A534 */  ori        $a1, $a1, (0x2004B & 0xFFFF)
    /* 123B40 00222BC0 26D3080C */  jal        func_00234C98
    /* 123B44 00222BC4 47000424 */   addiu     $a0, $zero, 0x47
    /* 123B48 00222BC8 8CD1070C */  jal        func_001F4630
    /* 123B4C 00222BCC 2D200000 */   daddu     $a0, $zero, $zero
    /* 123B50 00222BD0 1D00023C */  lui        $v0, %hi(D_001D6044)
    /* 123B54 00222BD4 1600033C */  lui        $v1, %hi(D_001603E8)
    /* 123B58 00222BD8 4460448C */  lw         $a0, %lo(D_001D6044)($v0)
    /* 123B5C 00222BDC 0B008004 */  bltz       $a0, .L00222C0C
    /* 123B60 00222BE0 E8037124 */   addiu     $s1, $v1, %lo(D_001603E8)
    /* 123B64 00222BE4 03008228 */  slti       $v0, $a0, 0x3
    /* 123B68 00222BE8 05004054 */  bnel       $v0, $zero, .L00222C00
    /* 123B6C 00222BEC B34F0424 */   addiu     $a0, $zero, 0x4FB3
    /* 123B70 00222BF0 03000224 */  addiu      $v0, $zero, 0x3
    /* 123B74 00222BF4 06008214 */  bne        $a0, $v0, .L00222C10
    /* 123B78 00222BF8 2000A427 */   addiu     $a0, $sp, 0x20
    /* 123B7C 00222BFC B54F0424 */  addiu      $a0, $zero, 0x4FB5
.align 2
  .L00222C00:
    /* 123B80 00222C00 50F9070C */  jal        func_001FE540
    /* 123B84 00222C04 00000000 */   nop
    /* 123B88 00222C08 2D884000 */  daddu      $s1, $v0, $zero
.align 2
  .L00222C0C:
    /* 123B8C 00222C0C 2000A427 */  addiu      $a0, $sp, 0x20
.align 2
  .L00222C10:
    /* 123B90 00222C10 18000624 */  addiu      $a2, $zero, 0x18
    /* 123B94 00222C14 FF54040C */  jal        func_001153FC
    /* 123B98 00222C18 2D280000 */   daddu     $a1, $zero, $zero
    /* 123B9C 00222C1C 24000396 */  lhu        $v1, 0x24($s0)
    /* 123BA0 00222C20 01000924 */  addiu      $t1, $zero, 0x1
    /* 123BA4 00222C24 20000296 */  lhu        $v0, 0x20($s0)
    /* 123BA8 00222C28 05000824 */  addiu      $t0, $zero, 0x5
    /* 123BAC 00222C2C 2000068E */  lw         $a2, 0x20($s0)
    /* 123BB0 00222C30 01006324 */  addiu      $v1, $v1, 0x1
    /* 123BB4 00222C34 01004224 */  addiu      $v0, $v0, 0x1
    /* 123BB8 00222C38 10000724 */  addiu      $a3, $zero, 0x10
    /* 123BBC 00222C3C 43300600 */  sra        $a2, $a2, 1
    /* 123BC0 00222C40 2200A3A7 */  sh         $v1, 0x22($sp)
    /* 123BC4 00222C44 2400A9A7 */  sh         $t1, 0x24($sp)
    /* 123BC8 00222C48 2D20A003 */  daddu      $a0, $sp, $zero
    /* 123BCC 00222C4C 2600A2A7 */  sh         $v0, 0x26($sp)
    /* 123BD0 00222C50 00800534 */  ori        $a1, $zero, 0x8000
    /* 123BD4 00222C54 382C0500 */  dsll       $a1, $a1, 16
    /* 123BD8 00222C58 2800A6A7 */  sh         $a2, 0x28($sp)
    /* 123BDC 00222C5C 3000A7A7 */  sh         $a3, 0x30($sp)
    /* 123BE0 00222C60 2D302002 */  daddu      $a2, $s1, $zero
    /* 123BE4 00222C64 3200A8A7 */  sh         $t0, 0x32($sp)
    /* 123BE8 00222C68 2000A9A7 */  sh         $t1, 0x20($sp)
    /* 123BEC 00222C6C 2A00A8A7 */  sh         $t0, 0x2A($sp)
    /* 123BF0 00222C70 2700A26B */  ldl        $v0, 0x27($sp)
    /* 123BF4 00222C74 2000A26F */  ldr        $v0, 0x20($sp)
    /* 123BF8 00222C78 2F00A36B */  ldl        $v1, 0x2F($sp)
    /* 123BFC 00222C7C 2800A36F */  ldr        $v1, 0x28($sp)
    /* 123C00 00222C80 3700A86B */  ldl        $t0, 0x37($sp)
    /* 123C04 00222C84 3000A86F */  ldr        $t0, 0x30($sp)
    /* 123C08 00222C88 0700A2B3 */  sdl        $v0, 0x7($sp)
    /* 123C0C 00222C8C 0000A2B7 */  sdr        $v0, 0x0($sp)
    /* 123C10 00222C90 0F00A3B3 */  sdl        $v1, 0xF($sp)
    /* 123C14 00222C94 0800A3B7 */  sdr        $v1, 0x8($sp)
    /* 123C18 00222C98 1700A8B3 */  sdl        $t0, 0x17($sp)
    /* 123C1C 00222C9C 1000A8B7 */  sdr        $t0, 0x10($sp)
    /* 123C20 00222CA0 74DD070C */  jal        func_001F75D0
    /* 123C24 00222CA4 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 123C28 00222CA8 0E00A297 */  lhu        $v0, 0xE($sp)
    /* 123C2C 00222CAC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 123C30 00222CB0 2400078E */  lw         $a3, 0x24($s0)
    /* 123C34 00222CB4 00800534 */  ori        $a1, $zero, 0x8000
    /* 123C38 00222CB8 382C0500 */  dsll       $a1, $a1, 16
    /* 123C3C 00222CBC 00140200 */  sll        $v0, $v0, 16
    /* 123C40 00222CC0 1200A397 */  lhu        $v1, 0x12($sp)
    /* 123C44 00222CC4 03140200 */  sra        $v0, $v0, 16
    /* 123C48 00222CC8 2D302002 */  daddu      $a2, $s1, $zero
    /* 123C4C 00222CCC 2338E200 */  subu       $a3, $a3, $v0
    /* 123C50 00222CD0 04006338 */  xori       $v1, $v1, 0x4
    /* 123C54 00222CD4 43380700 */  sra        $a3, $a3, 1
    /* 123C58 00222CD8 1200A3A7 */  sh         $v1, 0x12($sp)
    /* 123C5C 00222CDC 0A00A7A7 */  sh         $a3, 0xA($sp)
    /* 123C60 00222CE0 74DD070C */  jal        func_001F75D0
    /* 123C64 00222CE4 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 123C68 00222CE8 0000A597 */  lhu        $a1, 0x0($sp)
    /* 123C6C 00222CEC 2D302002 */  daddu      $a2, $s1, $zero
    /* 123C70 00222CF0 0600A797 */  lhu        $a3, 0x6($sp)
    /* 123C74 00222CF4 2D20A003 */  daddu      $a0, $sp, $zero
    /* 123C78 00222CF8 0200A997 */  lhu        $t1, 0x2($sp)
    /* 123C7C 00222CFC FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 123C80 00222D00 0400A397 */  lhu        $v1, 0x4($sp)
    /* 123C84 00222D04 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 123C88 00222D08 0800A897 */  lhu        $t0, 0x8($sp)
    /* 123C8C 00222D0C FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 123C90 00222D10 0A00A297 */  lhu        $v0, 0xA($sp)
    /* 123C94 00222D14 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 123C98 00222D18 FFFF0825 */  addiu      $t0, $t0, -0x1
    /* 123C9C 00222D1C 0000A5A7 */  sh         $a1, 0x0($sp)
    /* 123CA0 00222D20 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 123CA4 00222D24 0600A7A7 */  sh         $a3, 0x6($sp)
    /* 123CA8 00222D28 0A00A2A7 */  sh         $v0, 0xA($sp)
    /* 123CAC 00222D2C FF800534 */  ori        $a1, $zero, 0x80FF
    /* 123CB0 00222D30 382C0500 */  dsll       $a1, $a1, 16
    /* 123CB4 00222D34 88A8A534 */  ori        $a1, $a1, 0xA888
    /* 123CB8 00222D38 0200A9A7 */  sh         $t1, 0x2($sp)
    /* 123CBC 00222D3C FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 123CC0 00222D40 0400A3A7 */  sh         $v1, 0x4($sp)
    /* 123CC4 00222D44 74DD070C */  jal        func_001F75D0
    /* 123CC8 00222D48 0800A8A7 */   sh        $t0, 0x8($sp)
    /* 123CCC 00222D4C D2D1070C */  jal        func_001F4748
    /* 123CD0 00222D50 00000000 */   nop
    /* 123CD4 00222D54 6000BF7B */  lq         $ra, 0x60($sp)
    /* 123CD8 00222D58 02000224 */  addiu      $v0, $zero, 0x2
    /* 123CDC 00222D5C 5000B17B */  lq         $s1, 0x50($sp)
    /* 123CE0 00222D60 4000B07B */  lq         $s0, 0x40($sp)
    /* 123CE4 00222D64 0800E003 */  jr         $ra
    /* 123CE8 00222D68 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_00222B98
    /* 123CEC 00222D6C 00000000 */  nop
