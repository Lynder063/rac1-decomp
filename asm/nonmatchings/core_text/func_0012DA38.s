.align 3
nonmatching func_0012DA38, 0xDC

glabel func_0012DA38
    /* 2E9B8 0012DA38 1600033C */  lui        $v1, %hi(D_0015EF4C)
    /* 2E9BC 0012DA3C 4CEF638C */  lw         $v1, %lo(D_0015EF4C)($v1)
    /* 2E9C0 0012DA40 2D480000 */  daddu      $t1, $zero, $zero
    /* 2E9C4 0012DA44 0000628C */  lw         $v0, 0x0($v1)
    /* 2E9C8 0012DA48 26000010 */  b          .L0012DAE4
    /* 2E9CC 0012DA4C 21404300 */   addu      $t0, $v0, $v1
.align 2
  .L0012DA50:
    /* 2E9D0 0012DA50 0400E28C */  lw         $v0, 0x4($a3)
.align 2
  .L0012DA54:
    /* 2E9D4 0012DA54 2D184000 */  daddu      $v1, $v0, $zero
    /* 2E9D8 0012DA58 07004230 */  andi       $v0, $v0, 0x7
    /* 2E9DC 0012DA5C 15004054 */  bnel       $v0, $zero, .L0012DAB4
    /* 2E9E0 0012DA60 2118A300 */   addu      $v1, $a1, $v1
    /* 2E9E4 0012DA64 07000231 */  andi       $v0, $t0, 0x7
    /* 2E9E8 0012DA68 12004054 */  bnel       $v0, $zero, .L0012DAB4
    /* 2E9EC 0012DA6C 2118A300 */   addu      $v1, $a1, $v1
    /* 2E9F0 0012DA70 0700A230 */  andi       $v0, $a1, 0x7
    /* 2E9F4 0012DA74 0F004054 */  bnel       $v0, $zero, .L0012DAB4
    /* 2E9F8 0012DA78 2118A300 */   addu      $v1, $a1, $v1
    /* 2E9FC 0012DA7C 2130A300 */  addu       $a2, $a1, $v1
    /* 2EA00 0012DA80 2D200001 */  daddu      $a0, $t0, $zero
    /* 2EA04 0012DA84 1500A610 */  beq        $a1, $a2, .L0012DADC
    /* 2EA08 0012DA88 2D18A000 */   daddu     $v1, $a1, $zero
    /* 2EA0C 0012DA8C 00000000 */  nop
.align 2
  .L0012DA90:
    /* 2EA10 0012DA90 000082DC */  ld         $v0, 0x0($a0)
    /* 2EA14 0012DA94 000062FC */  sd         $v0, 0x0($v1)
    /* 2EA18 0012DA98 08006324 */  addiu      $v1, $v1, 0x8
    /* 2EA1C 0012DA9C 00000000 */  nop
    /* 2EA20 0012DAA0 00000000 */  nop
    /* 2EA24 0012DAA4 FAFF6614 */  bne        $v1, $a2, .L0012DA90
    /* 2EA28 0012DAA8 08008424 */   addiu     $a0, $a0, 0x8
    /* 2EA2C 0012DAAC 0C000010 */  b          .L0012DAE0
    /* 2EA30 0012DAB0 0400E28C */   lw        $v0, 0x4($a3)
.align 2
  .L0012DAB4:
    /* 2EA34 0012DAB4 0A00A350 */  beql       $a1, $v1, .L0012DAE0
    /* 2EA38 0012DAB8 0400E28C */   lw        $v0, 0x4($a3)
    /* 2EA3C 0012DABC 00000000 */  nop
.align 2
  .L0012DAC0:
    /* 2EA40 0012DAC0 0000828C */  lw         $v0, 0x0($a0)
    /* 2EA44 0012DAC4 0000A2AC */  sw         $v0, 0x0($a1)
    /* 2EA48 0012DAC8 0400A524 */  addiu      $a1, $a1, 0x4
    /* 2EA4C 0012DACC 00000000 */  nop
    /* 2EA50 0012DAD0 00000000 */  nop
    /* 2EA54 0012DAD4 FAFFA314 */  bne        $a1, $v1, .L0012DAC0
    /* 2EA58 0012DAD8 04008424 */   addiu     $a0, $a0, 0x4
.align 2
  .L0012DADC:
    /* 2EA5C 0012DADC 0400E28C */  lw         $v0, 0x4($a3)
.align 2
  .L0012DAE0:
    /* 2EA60 0012DAE0 21400201 */  addu       $t0, $t0, $v0
.align 2
  .L0012DAE4:
    /* 2EA64 0012DAE4 2D380001 */  daddu      $a3, $t0, $zero
    /* 2EA68 0012DAE8 1000E824 */  addiu      $t0, $a3, 0x10
    /* 2EA6C 0012DAEC 0000E58C */  lw         $a1, 0x0($a3)
    /* 2EA70 0012DAF0 03002015 */  bnez       $t1, .L0012DB00
    /* 2EA74 0012DAF4 2D200001 */   daddu     $a0, $t0, $zero
    /* 2EA78 0012DAF8 D5FF0010 */  b          .L0012DA50
    /* 2EA7C 0012DAFC 0C00E98C */   lw        $t1, 0xC($a3)
.align 2
  .L0012DB00:
    /* 2EA80 0012DB00 0C00E28C */  lw         $v0, 0xC($a3)
    /* 2EA84 0012DB04 D3FF2251 */  beql       $t1, $v0, .L0012DA54
    /* 2EA88 0012DB08 0400E28C */   lw        $v0, 0x4($a3)
    /* 2EA8C 0012DB0C 0800E003 */  jr         $ra
    /* 2EA90 0012DB10 2D102001 */   daddu     $v0, $t1, $zero
endlabel func_0012DA38
    /* 2EA94 0012DB14 00000000 */  nop
