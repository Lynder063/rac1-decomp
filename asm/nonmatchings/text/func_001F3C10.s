.align 3
nonmatching func_001F3C10, 0xEC

glabel func_001F3C10
    /* F4B90 001F3C10 1600043C */  lui        $a0, %hi(D_00161000)
    /* F4B94 001F3C14 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* F4B98 001F3C18 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* F4B9C 001F3C1C 0030023C */  lui        $v0, (0x30000013 >> 16)
    /* F4BA0 001F3C20 0000BF7F */  sq         $ra, 0x0($sp)
    /* F4BA4 001F3C24 13004234 */  ori        $v0, $v0, (0x30000013 & 0xFFFF)
    /* F4BA8 001F3C28 1400033C */  lui        $v1, %hi(D_0013D0C0)
    /* F4BAC 001F3C2C 000082AC */  sw         $v0, 0x0($a0)
    /* F4BB0 001F3C30 C0D06324 */  addiu      $v1, $v1, %lo(D_0013D0C0)
    /* F4BB4 001F3C34 0050053C */  lui        $a1, (0x50000013 >> 16)
    /* F4BB8 001F3C38 0030093C */  lui        $t1, (0x3000000B >> 16)
    /* F4BBC 001F3C3C 1600023C */  lui        $v0, %hi(D_00161000)
    /* F4BC0 001F3C40 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F4BC4 001F3C44 1300A534 */  ori        $a1, $a1, (0x50000013 & 0xFFFF)
    /* F4BC8 001F3C48 0B002935 */  ori        $t1, $t1, (0x3000000B & 0xFFFF)
    /* F4BCC 001F3C4C 1400063C */  lui        $a2, %hi(D_0013D010)
    /* F4BD0 001F3C50 040043AC */  sw         $v1, 0x4($v0)
    /* F4BD4 001F3C54 10D0C624 */  addiu      $a2, $a2, %lo(D_0013D010)
    /* F4BD8 001F3C58 0050083C */  lui        $t0, (0x5000000B >> 16)
    /* F4BDC 001F3C5C 1900073C */  lui        $a3, %hi(D_0018CE00)
    /* F4BE0 001F3C60 1600033C */  lui        $v1, %hi(D_00161000)
    /* F4BE4 001F3C64 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F4BE8 001F3C68 0B000835 */  ori        $t0, $t0, (0x5000000B & 0xFFFF)
    /* F4BEC 001F3C6C 00CEE724 */  addiu      $a3, $a3, %lo(D_0018CE00)
    /* F4BF0 001F3C70 3D000424 */  addiu      $a0, $zero, 0x3D
    /* F4BF4 001F3C74 080060AC */  sw         $zero, 0x8($v1)
    /* F4BF8 001F3C78 1600023C */  lui        $v0, %hi(D_00161000)
    /* F4BFC 001F3C7C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F4C00 001F3C80 0C0045AC */  sw         $a1, 0xC($v0)
    /* F4C04 001F3C84 1600033C */  lui        $v1, %hi(D_00161000)
    /* F4C08 001F3C88 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F4C0C 001F3C8C 10006224 */  addiu      $v0, $v1, 0x10
    /* F4C10 001F3C90 1600013C */  lui        $at, %hi(D_00161000)
    /* F4C14 001F3C94 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* F4C18 001F3C98 100069AC */  sw         $t1, 0x10($v1)
    /* F4C1C 001F3C9C 1600023C */  lui        $v0, %hi(D_00161000)
    /* F4C20 001F3CA0 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F4C24 001F3CA4 040046AC */  sw         $a2, 0x4($v0)
    /* F4C28 001F3CA8 1600033C */  lui        $v1, %hi(D_00161000)
    /* F4C2C 001F3CAC 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* F4C30 001F3CB0 080060AC */  sw         $zero, 0x8($v1)
    /* F4C34 001F3CB4 1600023C */  lui        $v0, %hi(D_00161000)
    /* F4C38 001F3CB8 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F4C3C 001F3CBC 0C0048AC */  sw         $t0, 0xC($v0)
    /* F4C40 001F3CC0 3402E38C */  lw         $v1, 0x234($a3)
    /* F4C44 001F3CC4 3802E68C */  lw         $a2, 0x238($a3)
    /* F4C48 001F3CC8 3002E58C */  lw         $a1, 0x230($a3)
    /* F4C4C 001F3CCC 381A0300 */  dsll       $v1, $v1, 8
    /* F4C50 001F3CD0 1600023C */  lui        $v0, %hi(D_00161000)
    /* F4C54 001F3CD4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* F4C58 001F3CD8 38340600 */  dsll       $a2, $a2, 16
    /* F4C5C 001F3CDC 2528A300 */  or         $a1, $a1, $v1
    /* F4C60 001F3CE0 10004224 */  addiu      $v0, $v0, 0x10
    /* F4C64 001F3CE4 2528A600 */  or         $a1, $a1, $a2
    /* F4C68 001F3CE8 26D3080C */  jal        func_00234C98
    /* F4C6C 001F3CEC 00A382AF */   sw        $v0, -0x5D00($gp)
    /* F4C70 001F3CF0 0000BF7B */  lq         $ra, 0x0($sp)
    /* F4C74 001F3CF4 0800E003 */  jr         $ra
    /* F4C78 001F3CF8 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001F3C10
    /* F4C7C 001F3CFC 00000000 */  nop
