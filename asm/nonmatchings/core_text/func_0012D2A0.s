.align 3
nonmatching func_0012D2A0, 0x9C

glabel func_0012D2A0
    /* 2E220 0012D2A0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2E224 0012D2A4 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2E228 0012D2A8 1300113C */  lui        $s1, %hi(D_001331D8)
    /* 2E22C 0012D2AC 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2E230 0012D2B0 D8312282 */  lb         $v0, %lo(D_001331D8)($s1)
    /* 2E234 0012D2B4 D8313326 */  addiu      $s3, $s1, %lo(D_001331D8)
    /* 2E238 0012D2B8 4000BFFF */  sd         $ra, 0x40($sp)
    /* 2E23C 0012D2BC 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2E240 0012D2C0 16004014 */  bnez       $v0, .L0012D31C
    /* 2E244 0012D2C4 0000B0FF */   sd        $s0, 0x0($sp)
    /* 2E248 0012D2C8 1500043C */  lui        $a0, %hi(D_00153D00)
    /* 2E24C 0012D2CC 01000524 */  addiu      $a1, $zero, 0x1
    /* 2E250 0012D2D0 003D8424 */  addiu      $a0, $a0, %lo(D_00153D00)
    /* 2E254 0012D2D4 E06F040C */  jal        func_0011BF80
    /* 2E258 0012D2D8 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* 2E25C 0012D2DC 2D804000 */  daddu      $s0, $v0, $zero
    /* 2E260 0012D2E0 05001216 */  bne        $s0, $s2, .L0012D2F8
    /* 2E264 0012D2E4 2D286002 */   daddu     $a1, $s3, $zero
    /* 2E268 0012D2E8 1500043C */  lui        $a0, %hi(D_00153D10)
    /* 2E26C 0012D2EC B269040C */  jal        func_0011A6C8
    /* 2E270 0012D2F0 103D8424 */   addiu     $a0, $a0, %lo(D_00153D10)
    /* 2E274 0012D2F4 2D286002 */  daddu      $a1, $s3, $zero
.align 2
  .L0012D2F8:
    /* 2E278 0012D2F8 2D200002 */  daddu      $a0, $s0, $zero
    /* 2E27C 0012D2FC 7071040C */  jal        func_0011C5C0
    /* 2E280 0012D300 0E000624 */   addiu     $a2, $zero, 0xE
    /* 2E284 0012D304 03005214 */  bne        $v0, $s2, .L0012D314
    /* 2E288 0012D308 1500043C */   lui       $a0, %hi(D_00153D28)
    /* 2E28C 0012D30C B269040C */  jal        func_0011A6C8
    /* 2E290 0012D310 283D8424 */   addiu     $a0, $a0, %lo(D_00153D28)
.align 2
  .L0012D314:
    /* 2E294 0012D314 8270040C */  jal        func_0011C208
    /* 2E298 0012D318 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L0012D31C:
    /* 2E29C 0012D31C D8312226 */  addiu      $v0, $s1, %lo(D_001331D8)
    /* 2E2A0 0012D320 4000BFDF */  ld         $ra, 0x40($sp)
    /* 2E2A4 0012D324 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2E2A8 0012D328 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2E2AC 0012D32C 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2E2B0 0012D330 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2E2B4 0012D334 0800E003 */  jr         $ra
    /* 2E2B8 0012D338 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012D2A0
    /* 2E2BC 0012D33C 00000000 */  nop
