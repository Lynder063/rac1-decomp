.align 3
nonmatching func_001F54E8, 0xD8

glabel func_001F54E8
    /* F6468 001F54E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* F646C 001F54EC 1000B17F */  sq         $s1, 0x10($sp)
    /* F6470 001F54F0 2000BF7F */  sq         $ra, 0x20($sp)
    /* F6474 001F54F4 2D888000 */  daddu      $s1, $a0, $zero
    /* F6478 001F54F8 0000B07F */  sq         $s0, 0x0($sp)
    /* F647C 001F54FC 080022DE */  ld         $v0, 0x8($s1)
    /* F6480 001F5500 06004010 */  beqz       $v0, .L001F551C
    /* F6484 001F5504 42000424 */   addiu     $a0, $zero, 0x42
    /* F6488 001F5508 00FF0534 */  ori        $a1, $zero, 0xFF00
    /* F648C 001F550C 382E0500 */  dsll       $a1, $a1, 24
    /* F6490 001F5510 FF00A534 */  ori        $a1, $a1, 0xFF
    /* F6494 001F5514 26D3080C */  jal        func_00234C98
    /* F6498 001F5518 24284500 */   and       $a1, $v0, $a1
.align 2
  .L001F551C:
    /* F649C 001F551C 0400228E */  lw         $v0, 0x4($s1)
    /* F64A0 001F5520 00FF033C */  lui        $v1, (0xFF000000 >> 16)
    /* F64A4 001F5524 24104300 */  and        $v0, $v0, $v1
    /* F64A8 001F5528 18004010 */  beqz       $v0, .L001F558C
    /* F64AC 001F552C 0001103C */   lui       $s0, (0x1000000 >> 16)
    /* F64B0 001F5530 1600053C */  lui        $a1, %hi(D_0015EF88)
    /* F64B4 001F5534 88EFA58C */  lw         $a1, %lo(D_0015EF88)($a1)
    /* F64B8 001F5538 00800234 */  ori        $v0, $zero, 0x8000
    /* F64BC 001F553C 78140200 */  dsll       $v0, $v0, 17
    /* F64C0 001F5540 4E000424 */  addiu      $a0, $zero, 0x4E
    /* F64C4 001F5544 432B0500 */  sra        $a1, $a1, 13
    /* F64C8 001F5548 2528B000 */  or         $a1, $a1, $s0
    /* F64CC 001F554C 26D3080C */  jal        func_00234C98
    /* F64D0 001F5550 2528A200 */   or        $a1, $a1, $v0
    /* F64D4 001F5554 1500023C */  lui        $v0, %hi(D_00151880)
    /* F64D8 001F5558 0400289E */  lwu        $t0, 0x4($s1)
    /* F64DC 001F555C 80184224 */  addiu      $v0, $v0, %lo(D_00151880)
    /* F64E0 001F5560 2D200000 */  daddu      $a0, $zero, $zero
    /* F64E4 001F5564 52014584 */  lh         $a1, 0x152($v0)
    /* F64E8 001F5568 2D300000 */  daddu      $a2, $zero, $zero
    /* F64EC 001F556C 94D5070C */  jal        func_001F5650
    /* F64F0 001F5570 50014784 */   lh        $a3, 0x150($v0)
    /* F64F4 001F5574 1600053C */  lui        $a1, %hi(D_0015EF88)
    /* F64F8 001F5578 88EFA58C */  lw         $a1, %lo(D_0015EF88)($a1)
    /* F64FC 001F557C 4E000424 */  addiu      $a0, $zero, 0x4E
    /* F6500 001F5580 432B0500 */  sra        $a1, $a1, 13
    /* F6504 001F5584 26D3080C */  jal        func_00234C98
    /* F6508 001F5588 25280502 */   or        $a1, $s0, $a1
.align 2
  .L001F558C:
    /* F650C 001F558C 080022DE */  ld         $v0, 0x8($s1)
    /* F6510 001F5590 07004010 */  beqz       $v0, .L001F55B0
    /* F6514 001F5594 2000BF7B */   lq        $ra, 0x20($sp)
    /* F6518 001F5598 00800534 */  ori        $a1, $zero, 0x8000
    /* F651C 001F559C 382E0500 */  dsll       $a1, $a1, 24
    /* F6520 001F55A0 4400A534 */  ori        $a1, $a1, 0x44
    /* F6524 001F55A4 26D3080C */  jal        func_00234C98
    /* F6528 001F55A8 42000424 */   addiu     $a0, $zero, 0x42
    /* F652C 001F55AC 2000BF7B */  lq         $ra, 0x20($sp)
.align 2
  .L001F55B0:
    /* F6530 001F55B0 1000B17B */  lq         $s1, 0x10($sp)
    /* F6534 001F55B4 0000B07B */  lq         $s0, 0x0($sp)
    /* F6538 001F55B8 0800E003 */  jr         $ra
    /* F653C 001F55BC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001F54E8
