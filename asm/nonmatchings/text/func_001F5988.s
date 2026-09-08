.align 3
nonmatching func_001F5988, 0x230

glabel func_001F5988
    /* F6908 001F5988 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* F690C 001F598C C000B6E7 */  swc1       $f22, 0xC0($sp)
    /* F6910 001F5990 B000B4E7 */  swc1       $f20, 0xB0($sp)
    /* F6914 001F5994 8041013C */  lui        $at, (0x41800000 >> 16)
    /* F6918 001F5998 00B08144 */  mtc1       $at, $f22
    /* F691C 001F599C 06650046 */  mov.s      $f20, $f12
    /* F6920 001F59A0 9000BE7F */  sq         $fp, 0x90($sp)
    /* F6924 001F59A4 02A31646 */  mul.s      $f12, $f20, $f22
    /* F6928 001F59A8 8000B77F */  sq         $s7, 0x80($sp)
    /* F692C 001F59AC 7000B67F */  sq         $s6, 0x70($sp)
    /* F6930 001F59B0 2DB88000 */  daddu      $s7, $a0, $zero
    /* F6934 001F59B4 6000B57F */  sq         $s5, 0x60($sp)
    /* F6938 001F59B8 2DB0A000 */  daddu      $s6, $a1, $zero
    /* F693C 001F59BC 5000B47F */  sq         $s4, 0x50($sp)
    /* F6940 001F59C0 2DA8E000 */  daddu      $s5, $a3, $zero
    /* F6944 001F59C4 D000B8E7 */  swc1       $f24, 0xD0($sp)
    /* F6948 001F59C8 2DA0C000 */  daddu      $s4, $a2, $zero
    /* F694C 001F59CC C800B7E7 */  swc1       $f23, 0xC8($sp)
    /* F6950 001F59D0 067E0046 */  mov.s      $f24, $f15
    /* F6954 001F59D4 B800B5E7 */  swc1       $f21, 0xB8($sp)
    /* F6958 001F59D8 C6750046 */  mov.s      $f23, $f14
    /* F695C 001F59DC 466D0046 */  mov.s      $f21, $f13
    /* F6960 001F59E0 4000B37F */  sq         $s3, 0x40($sp)
    /* F6964 001F59E4 3000B27F */  sq         $s2, 0x30($sp)
    /* F6968 001F59E8 2000B17F */  sq         $s1, 0x20($sp)
    /* F696C 001F59EC 1000B07F */  sq         $s0, 0x10($sp)
    /* F6970 001F59F0 0000A8FF */  sd         $t0, 0x0($sp)
    /* F6974 001F59F4 A000BF7F */  sq         $ra, 0xA0($sp)
    /* F6978 001F59F8 26EA070C */  jal        func_001FA898
    /* F697C 001F59FC 2DF02001 */   daddu     $fp, $t1, $zero
    /* F6980 001F5A00 00A51746 */  add.s      $f20, $f20, $f23
    /* F6984 001F5A04 1400103C */  lui        $s0, %hi(D_0013E600)
    /* F6988 001F5A08 00E61026 */  addiu      $s0, $s0, %lo(D_0013E600)
    /* F698C 001F5A0C 1000038E */  lw         $v1, 0x10($s0)
    /* F6990 001F5A10 02A31646 */  mul.s      $f12, $f20, $f22
    /* F6994 001F5A14 21984300 */  addu       $s3, $v0, $v1
    /* F6998 001F5A18 26EA070C */  jal        func_001FA898
    /* F699C 001F5A1C F8FF7326 */   addiu     $s3, $s3, -0x8
    /* F69A0 001F5A20 1000038E */  lw         $v1, 0x10($s0)
    /* F69A4 001F5A24 02AB1646 */  mul.s      $f12, $f21, $f22
    /* F69A8 001F5A28 21904300 */  addu       $s2, $v0, $v1
    /* F69AC 001F5A2C 26EA070C */  jal        func_001FA898
    /* F69B0 001F5A30 F8FF5226 */   addiu     $s2, $s2, -0x8
    /* F69B4 001F5A34 40AD1846 */  add.s      $f21, $f21, $f24
    /* F69B8 001F5A38 1400038E */  lw         $v1, 0x14($s0)
    /* F69BC 001F5A3C 21884300 */  addu       $s1, $v0, $v1
    /* F69C0 001F5A40 02AB1646 */  mul.s      $f12, $f21, $f22
    /* F69C4 001F5A44 26EA070C */  jal        func_001FA898
    /* F69C8 001F5A48 F8FF3126 */   addiu     $s1, $s1, -0x8
    /* F69CC 001F5A4C 1600043C */  lui        $a0, %hi(D_00161000)
    /* F69D0 001F5A50 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* F69D4 001F5A54 0010033C */  lui        $v1, (0x10000007 >> 16)
    /* F69D8 001F5A58 1400078E */  lw         $a3, 0x14($s0)
    /* F69DC 001F5A5C 07006334 */  ori        $v1, $v1, (0x10000007 & 0xFFFF)
    /* F69E0 001F5A60 000083AC */  sw         $v1, 0x0($a0)
    /* F69E4 001F5A64 0050063C */  lui        $a2, (0x50000007 >> 16)
    /* F69E8 001F5A68 21284700 */  addu       $a1, $v0, $a3
    /* F69EC 001F5A6C 0700C634 */  ori        $a2, $a2, (0x50000007 & 0xFFFF)
    /* F69F0 001F5A70 1600023C */  lui        $v0, %hi(D_00161000)
    /* F69F4 001F5A74 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F69F8 001F5A78 21A0F402 */  addu       $s4, $s7, $s4
    /* F69FC 001F5A7C 1600043C */  lui        $a0, %hi(D_00160940)
    /* F6A00 001F5A80 00A11400 */  sll        $s4, $s4, 4
    /* F6A04 001F5A84 040040AC */  sw         $zero, 0x4($v0)
    /* F6A08 001F5A88 00B91700 */  sll        $s7, $s7, 4
    /* F6A0C 001F5A8C F8FFA524 */  addiu      $a1, $a1, -0x8
    /* F6A10 001F5A90 21A8D502 */  addu       $s5, $s6, $s5
    /* F6A14 001F5A94 1600033C */  lui        $v1, %hi(D_00161000)
    /* F6A18 001F5A98 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F6A1C 001F5A9C 40098424 */  addiu      $a0, $a0, %lo(D_00160940)
    /* F6A20 001F5AA0 080060AC */  sw         $zero, 0x8($v1)
    /* F6A24 001F5AA4 1600023C */  lui        $v0, %hi(D_00161000)
    /* F6A28 001F5AA8 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F6A2C 001F5AAC 0C0046AC */  sw         $a2, 0xC($v0)
    /* F6A30 001F5AB0 1600073C */  lui        $a3, %hi(D_00161000)
    /* F6A34 001F5AB4 0010E78C */  lw         $a3, %lo(D_00161000)($a3)
    /* F6A38 001F5AB8 1000E324 */  addiu      $v1, $a3, 0x10
    /* F6A3C 001F5ABC 1600013C */  lui        $at, %hi(D_00161000)
    /* F6A40 001F5AC0 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* F6A44 001F5AC4 00008278 */  lq         $v0, 0x0($a0)
    /* F6A48 001F5AC8 0000627C */  sq         $v0, 0x0($v1)
    /* F6A4C 001F5ACC 2000E324 */  addiu      $v1, $a3, 0x20
    /* F6A50 001F5AD0 382C0500 */  dsll       $a1, $a1, 16
    /* F6A54 001F5AD4 1600013C */  lui        $at, %hi(D_00161000)
    /* F6A58 001F5AD8 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* F6A5C 001F5ADC 25304502 */  or         $a2, $s2, $a1
    /* F6A60 001F5AE0 2000FEFC */  sd         $fp, 0x20($a3)
    /* F6A64 001F5AE4 388C1100 */  dsll       $s1, $s1, 16
    /* F6A68 001F5AE8 25286502 */  or         $a1, $s3, $a1
    /* F6A6C 001F5AEC 54010424 */  addiu      $a0, $zero, 0x154
    /* F6A70 001F5AF0 FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* F6A74 001F5AF4 38140200 */  dsll       $v0, $v0, 16
    /* F6A78 001F5AF8 00F04234 */  ori        $v0, $v0, 0xF000
    /* F6A7C 001F5AFC 38160200 */  dsll       $v0, $v0, 24
    /* F6A80 001F5B00 080064FC */  sd         $a0, 0x8($v1)
    /* F6A84 001F5B04 00AD1500 */  sll        $s5, $s5, 20
    /* F6A88 001F5B08 25905102 */  or         $s2, $s2, $s1
    /* F6A8C 001F5B0C 25987102 */  or         $s3, $s3, $s1
    /* F6A90 001F5B10 2140B402 */  addu       $t0, $s5, $s4
    /* F6A94 001F5B14 2530C200 */  or         $a2, $a2, $v0
    /* F6A98 001F5B18 25986202 */  or         $s3, $s3, $v0
    /* F6A9C 001F5B1C 25904202 */  or         $s2, $s2, $v0
    /* F6AA0 001F5B20 2528A200 */  or         $a1, $a1, $v0
    /* F6AA4 001F5B24 00B51600 */  sll        $s6, $s6, 20
    /* F6AA8 001F5B28 0000A2DF */  ld         $v0, 0x0($sp)
    /* F6AAC 001F5B2C 21A0D402 */  addu       $s4, $s6, $s4
    /* F6AB0 001F5B30 21A8B702 */  addu       $s5, $s5, $s7
    /* F6AB4 001F5B34 21B0D702 */  addu       $s6, $s6, $s7
    /* F6AB8 001F5B38 200073FC */  sd         $s3, 0x20($v1)
    /* F6ABC 001F5B3C 180076FC */  sd         $s6, 0x18($v1)
    /* F6AC0 001F5B40 280074FC */  sd         $s4, 0x28($v1)
    /* F6AC4 001F5B44 300072FC */  sd         $s2, 0x30($v1)
    /* F6AC8 001F5B48 380075FC */  sd         $s5, 0x38($v1)
    /* F6ACC 001F5B4C 100062FC */  sd         $v0, 0x10($v1)
    /* F6AD0 001F5B50 400065FC */  sd         $a1, 0x40($v1)
    /* F6AD4 001F5B54 480068FC */  sd         $t0, 0x48($v1)
    /* F6AD8 001F5B58 500066FC */  sd         $a2, 0x50($v1)
    /* F6ADC 001F5B5C 580060FC */  sd         $zero, 0x58($v1)
    /* F6AE0 001F5B60 A000BF7B */  lq         $ra, 0xA0($sp)
    /* F6AE4 001F5B64 1600023C */  lui        $v0, %hi(D_00161000)
    /* F6AE8 001F5B68 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F6AEC 001F5B6C 9000BE7B */  lq         $fp, 0x90($sp)
    /* F6AF0 001F5B70 60004224 */  addiu      $v0, $v0, 0x60
    /* F6AF4 001F5B74 8000B77B */  lq         $s7, 0x80($sp)
    /* F6AF8 001F5B78 7000B67B */  lq         $s6, 0x70($sp)
    /* F6AFC 001F5B7C 6000B57B */  lq         $s5, 0x60($sp)
    /* F6B00 001F5B80 5000B47B */  lq         $s4, 0x50($sp)
    /* F6B04 001F5B84 4000B37B */  lq         $s3, 0x40($sp)
    /* F6B08 001F5B88 3000B27B */  lq         $s2, 0x30($sp)
    /* F6B0C 001F5B8C 2000B17B */  lq         $s1, 0x20($sp)
    /* F6B10 001F5B90 1000B07B */  lq         $s0, 0x10($sp)
    /* F6B14 001F5B94 D000B8C7 */  lwc1       $f24, 0xD0($sp)
    /* F6B18 001F5B98 C800B7C7 */  lwc1       $f23, 0xC8($sp)
    /* F6B1C 001F5B9C C000B6C7 */  lwc1       $f22, 0xC0($sp)
    /* F6B20 001F5BA0 B800B5C7 */  lwc1       $f21, 0xB8($sp)
    /* F6B24 001F5BA4 B000B4C7 */  lwc1       $f20, 0xB0($sp)
    /* F6B28 001F5BA8 1600013C */  lui        $at, %hi(D_00161000)
    /* F6B2C 001F5BAC 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* F6B30 001F5BB0 0800E003 */  jr         $ra
    /* F6B34 001F5BB4 E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_001F5988
