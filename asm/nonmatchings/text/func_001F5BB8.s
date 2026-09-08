.align 3
nonmatching func_001F5BB8, 0x2A8

glabel func_001F5BB8
    /* F6B38 001F5BB8 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* F6B3C 001F5BBC C000B6E7 */  swc1       $f22, 0xC0($sp)
    /* F6B40 001F5BC0 B000B4E7 */  swc1       $f20, 0xB0($sp)
    /* F6B44 001F5BC4 8041013C */  lui        $at, (0x41800000 >> 16)
    /* F6B48 001F5BC8 00B08144 */  mtc1       $at, $f22
    /* F6B4C 001F5BCC 06650046 */  mov.s      $f20, $f12
    /* F6B50 001F5BD0 9000BE7F */  sq         $fp, 0x90($sp)
    /* F6B54 001F5BD4 02A31646 */  mul.s      $f12, $f20, $f22
    /* F6B58 001F5BD8 8000B77F */  sq         $s7, 0x80($sp)
    /* F6B5C 001F5BDC 7000B67F */  sq         $s6, 0x70($sp)
    /* F6B60 001F5BE0 2DB8E000 */  daddu      $s7, $a3, $zero
    /* F6B64 001F5BE4 3000B27F */  sq         $s2, 0x30($sp)
    /* F6B68 001F5BE8 2DB0C000 */  daddu      $s6, $a2, $zero
    /* F6B6C 001F5BEC 2000B17F */  sq         $s1, 0x20($sp)
    /* F6B70 001F5BF0 2D90A000 */  daddu      $s2, $a1, $zero
    /* F6B74 001F5BF4 D000B8E7 */  swc1       $f24, 0xD0($sp)
    /* F6B78 001F5BF8 2D888000 */  daddu      $s1, $a0, $zero
    /* F6B7C 001F5BFC C800B7E7 */  swc1       $f23, 0xC8($sp)
    /* F6B80 001F5C00 067E0046 */  mov.s      $f24, $f15
    /* F6B84 001F5C04 B800B5E7 */  swc1       $f21, 0xB8($sp)
    /* F6B88 001F5C08 C6750046 */  mov.s      $f23, $f14
    /* F6B8C 001F5C0C 466D0046 */  mov.s      $f21, $f13
    /* F6B90 001F5C10 6000B57F */  sq         $s5, 0x60($sp)
    /* F6B94 001F5C14 5000B47F */  sq         $s4, 0x50($sp)
    /* F6B98 001F5C18 4000B37F */  sq         $s3, 0x40($sp)
    /* F6B9C 001F5C1C 1000B07F */  sq         $s0, 0x10($sp)
    /* F6BA0 001F5C20 0000A8FF */  sd         $t0, 0x0($sp)
    /* F6BA4 001F5C24 A000BF7F */  sq         $ra, 0xA0($sp)
    /* F6BA8 001F5C28 26EA070C */  jal        func_001FA898
    /* F6BAC 001F5C2C 2DF02001 */   daddu     $fp, $t1, $zero
    /* F6BB0 001F5C30 00A51746 */  add.s      $f20, $f20, $f23
    /* F6BB4 001F5C34 1400103C */  lui        $s0, %hi(D_0013E600)
    /* F6BB8 001F5C38 00E61026 */  addiu      $s0, $s0, %lo(D_0013E600)
    /* F6BBC 001F5C3C 1000038E */  lw         $v1, 0x10($s0)
    /* F6BC0 001F5C40 02A31646 */  mul.s      $f12, $f20, $f22
    /* F6BC4 001F5C44 21104300 */  addu       $v0, $v0, $v1
    /* F6BC8 001F5C48 26EA070C */  jal        func_001FA898
    /* F6BCC 001F5C4C F8FF5524 */   addiu     $s5, $v0, -0x8
    /* F6BD0 001F5C50 1000038E */  lw         $v1, 0x10($s0)
    /* F6BD4 001F5C54 02AB1646 */  mul.s      $f12, $f21, $f22
    /* F6BD8 001F5C58 21104300 */  addu       $v0, $v0, $v1
    /* F6BDC 001F5C5C 26EA070C */  jal        func_001FA898
    /* F6BE0 001F5C60 F8FF5424 */   addiu     $s4, $v0, -0x8
    /* F6BE4 001F5C64 40AD1846 */  add.s      $f21, $f21, $f24
    /* F6BE8 001F5C68 1400038E */  lw         $v1, 0x14($s0)
    /* F6BEC 001F5C6C 21104300 */  addu       $v0, $v0, $v1
    /* F6BF0 001F5C70 02AB1646 */  mul.s      $f12, $f21, $f22
    /* F6BF4 001F5C74 26EA070C */  jal        func_001FA898
    /* F6BF8 001F5C78 F8FF5324 */   addiu     $s3, $v0, -0x8
    /* F6BFC 001F5C7C 1400038E */  lw         $v1, 0x14($s0)
    /* F6C00 001F5C80 00900534 */  ori        $a1, $zero, 0x9000
    /* F6C04 001F5C84 2A20B500 */  slt        $a0, $a1, $s5
    /* F6C08 001F5C88 21104300 */  addu       $v0, $v0, $v1
    /* F6C0C 001F5C8C 63008014 */  bnez       $a0, .L001F5E1C
    /* F6C10 001F5C90 F8FF4824 */   addiu     $t0, $v0, -0x8
    /* F6C14 001F5C94 0070822A */  slti       $v0, $s4, 0x7000
    /* F6C18 001F5C98 61004014 */  bnez       $v0, .L001F5E20
    /* F6C1C 001F5C9C A000BF7B */   lq        $ra, 0xA0($sp)
    /* F6C20 001F5CA0 2A10B300 */  slt        $v0, $a1, $s3
    /* F6C24 001F5CA4 5F004054 */  bnel       $v0, $zero, .L001F5E24
    /* F6C28 001F5CA8 9000BE7B */   lq        $fp, 0x90($sp)
    /* F6C2C 001F5CAC 00700229 */  slti       $v0, $t0, 0x7000
    /* F6C30 001F5CB0 5C004054 */  bnel       $v0, $zero, .L001F5E24
    /* F6C34 001F5CB4 9000BE7B */   lq        $fp, 0x90($sp)
    /* F6C38 001F5CB8 1600033C */  lui        $v1, %hi(D_00161000)
    /* F6C3C 001F5CBC 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F6C40 001F5CC0 0010023C */  lui        $v0, (0x10000008 >> 16)
    /* F6C44 001F5CC4 08004234 */  ori        $v0, $v0, (0x10000008 & 0xFFFF)
    /* F6C48 001F5CC8 0050053C */  lui        $a1, (0x50000008 >> 16)
    /* F6C4C 001F5CCC 000062AC */  sw         $v0, 0x0($v1)
    /* F6C50 001F5CD0 0800A534 */  ori        $a1, $a1, (0x50000008 & 0xFFFF)
    /* F6C54 001F5CD4 21203602 */  addu       $a0, $s1, $s6
    /* F6C58 001F5CD8 1600063C */  lui        $a2, %hi(D_00160960)
    /* F6C5C 001F5CDC 1600023C */  lui        $v0, %hi(D_00161000)
    /* F6C60 001F5CE0 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F6C64 001F5CE4 21705702 */  addu       $t6, $s2, $s7
    /* F6C68 001F5CE8 00811100 */  sll        $s0, $s1, 4
    /* F6C6C 001F5CEC 00790400 */  sll        $t7, $a0, 4
    /* F6C70 001F5CF0 040040AC */  sw         $zero, 0x4($v0)
    /* F6C74 001F5CF4 6009C624 */  addiu      $a2, $a2, %lo(D_00160960)
    /* F6C78 001F5CF8 1600023C */  lui        $v0, %hi(D_00161000)
    /* F6C7C 001F5CFC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F6C80 001F5D00 080040AC */  sw         $zero, 0x8($v0)
    /* F6C84 001F5D04 1600033C */  lui        $v1, %hi(D_00161000)
    /* F6C88 001F5D08 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F6C8C 001F5D0C 0C0065AC */  sw         $a1, 0xC($v1)
    /* F6C90 001F5D10 16000C3C */  lui        $t4, %hi(D_00161000)
    /* F6C94 001F5D14 00108C8D */  lw         $t4, %lo(D_00161000)($t4)
    /* F6C98 001F5D18 10008325 */  addiu      $v1, $t4, 0x10
    /* F6C9C 001F5D1C 1600013C */  lui        $at, %hi(D_00161000)
    /* F6CA0 001F5D20 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* F6CA4 001F5D24 0000C278 */  lq         $v0, 0x0($a2)
    /* F6CA8 001F5D28 0000627C */  sq         $v0, 0x0($v1)
    /* F6CAC 001F5D2C 0A000224 */  addiu      $v0, $zero, 0xA
    /* F6CB0 001F5D30 B8230400 */  dsll       $a0, $a0, 14
    /* F6CB4 001F5D34 2D282002 */  daddu      $a1, $s1, $zero
    /* F6CB8 001F5D38 25208200 */  or         $a0, $a0, $v0
    /* F6CBC 001F5D3C 2D300001 */  daddu      $a2, $t0, $zero
    /* F6CC0 001F5D40 38290500 */  dsll       $a1, $a1, 4
    /* F6CC4 001F5D44 2D104002 */  daddu      $v0, $s2, $zero
    /* F6CC8 001F5D48 20008325 */  addiu      $v1, $t4, 0x20
    /* F6CCC 001F5D4C 005D0E00 */  sll        $t3, $t6, 20
    /* F6CD0 001F5D50 2528A400 */  or         $a1, $a1, $a0
    /* F6CD4 001F5D54 2D488002 */  daddu      $t1, $s4, $zero
    /* F6CD8 001F5D58 38340600 */  dsll       $a2, $a2, 16
    /* F6CDC 001F5D5C 38160200 */  dsll       $v0, $v0, 24
    /* F6CE0 001F5D60 1600013C */  lui        $at, %hi(D_00161000)
    /* F6CE4 001F5D64 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* F6CE8 001F5D68 25682601 */  or         $t5, $t1, $a2
    /* F6CEC 001F5D6C 2D40A002 */  daddu      $t0, $s5, $zero
    /* F6CF0 001F5D70 2528A200 */  or         $a1, $a1, $v0
    /* F6CF4 001F5D74 2D386002 */  daddu      $a3, $s3, $zero
    /* F6CF8 001F5D78 BC700E00 */  dsll32     $t6, $t6, 2
    /* F6CFC 001F5D7C 20009EFD */  sd         $fp, 0x20($t4)
    /* F6D00 001F5D80 383C0700 */  dsll       $a3, $a3, 16
    /* F6D04 001F5D84 25300601 */  or         $a2, $t0, $a2
    /* F6D08 001F5D88 2528AE00 */  or         $a1, $a1, $t6
    /* F6D0C 001F5D8C 100065FC */  sd         $a1, 0x10($v1)
    /* F6D10 001F5D90 25482701 */  or         $t1, $t1, $a3
    /* F6D14 001F5D94 25400701 */  or         $t0, $t0, $a3
    /* F6D18 001F5D98 54010424 */  addiu      $a0, $zero, 0x154
    /* F6D1C 001F5D9C FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* F6D20 001F5DA0 38140200 */  dsll       $v0, $v0, 16
    /* F6D24 001F5DA4 00F04234 */  ori        $v0, $v0, 0xF000
    /* F6D28 001F5DA8 38160200 */  dsll       $v0, $v0, 24
    /* F6D2C 001F5DAC 21386F01 */  addu       $a3, $t3, $t7
    /* F6D30 001F5DB0 080064FC */  sd         $a0, 0x8($v1)
    /* F6D34 001F5DB4 00551200 */  sll        $t2, $s2, 20
    /* F6D38 001F5DB8 0000A4DF */  ld         $a0, 0x0($sp)
    /* F6D3C 001F5DBC 2568A201 */  or         $t5, $t5, $v0
    /* F6D40 001F5DC0 25400201 */  or         $t0, $t0, $v0
    /* F6D44 001F5DC4 21784F01 */  addu       $t7, $t2, $t7
    /* F6D48 001F5DC8 25482201 */  or         $t1, $t1, $v0
    /* F6D4C 001F5DCC 2530C200 */  or         $a2, $a2, $v0
    /* F6D50 001F5DD0 05000224 */  addiu      $v0, $zero, 0x5
    /* F6D54 001F5DD4 21587001 */  addu       $t3, $t3, $s0
    /* F6D58 001F5DD8 21505001 */  addu       $t2, $t2, $s0
    /* F6D5C 001F5DDC 180064FC */  sd         $a0, 0x18($v1)
    /* F6D60 001F5DE0 20006AFC */  sd         $t2, 0x20($v1)
    /* F6D64 001F5DE4 280068FC */  sd         $t0, 0x28($v1)
    /* F6D68 001F5DE8 30006FFC */  sd         $t7, 0x30($v1)
    /* F6D6C 001F5DEC 380069FC */  sd         $t1, 0x38($v1)
    /* F6D70 001F5DF0 40006BFC */  sd         $t3, 0x40($v1)
    /* F6D74 001F5DF4 480066FC */  sd         $a2, 0x48($v1)
    /* F6D78 001F5DF8 500067FC */  sd         $a3, 0x50($v1)
    /* F6D7C 001F5DFC 58006DFC */  sd         $t5, 0x58($v1)
    /* F6D80 001F5E00 600062FC */  sd         $v0, 0x60($v1)
    /* F6D84 001F5E04 680060FC */  sd         $zero, 0x68($v1)
    /* F6D88 001F5E08 1600023C */  lui        $v0, %hi(D_00161000)
    /* F6D8C 001F5E0C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F6D90 001F5E10 70004224 */  addiu      $v0, $v0, 0x70
    /* F6D94 001F5E14 1600013C */  lui        $at, %hi(D_00161000)
    /* F6D98 001F5E18 001022AC */  sw         $v0, %lo(D_00161000)($at)
.align 2
  .L001F5E1C:
    /* F6D9C 001F5E1C A000BF7B */  lq         $ra, 0xA0($sp)
.align 2
  .L001F5E20:
    /* F6DA0 001F5E20 9000BE7B */  lq         $fp, 0x90($sp)
.align 2
  .L001F5E24:
    /* F6DA4 001F5E24 8000B77B */  lq         $s7, 0x80($sp)
    /* F6DA8 001F5E28 7000B67B */  lq         $s6, 0x70($sp)
    /* F6DAC 001F5E2C 6000B57B */  lq         $s5, 0x60($sp)
    /* F6DB0 001F5E30 5000B47B */  lq         $s4, 0x50($sp)
    /* F6DB4 001F5E34 4000B37B */  lq         $s3, 0x40($sp)
    /* F6DB8 001F5E38 3000B27B */  lq         $s2, 0x30($sp)
    /* F6DBC 001F5E3C 2000B17B */  lq         $s1, 0x20($sp)
    /* F6DC0 001F5E40 1000B07B */  lq         $s0, 0x10($sp)
    /* F6DC4 001F5E44 D000B8C7 */  lwc1       $f24, 0xD0($sp)
    /* F6DC8 001F5E48 C800B7C7 */  lwc1       $f23, 0xC8($sp)
    /* F6DCC 001F5E4C C000B6C7 */  lwc1       $f22, 0xC0($sp)
    /* F6DD0 001F5E50 B800B5C7 */  lwc1       $f21, 0xB8($sp)
    /* F6DD4 001F5E54 B000B4C7 */  lwc1       $f20, 0xB0($sp)
    /* F6DD8 001F5E58 0800E003 */  jr         $ra
    /* F6DDC 001F5E5C E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_001F5BB8
