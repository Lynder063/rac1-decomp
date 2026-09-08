.align 3
nonmatching func_0022FD20, 0xA0

glabel func_0022FD20
    /* 130CA0 0022FD20 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 130CA4 0022FD24 0300053C */  lui        $a1, (0x31801 >> 16)
    /* 130CA8 0022FD28 0118A534 */  ori        $a1, $a1, (0x31801 & 0xFFFF)
    /* 130CAC 0022FD2C 1000B07F */  sq         $s0, 0x10($sp)
    /* 130CB0 0022FD30 2D808000 */  daddu      $s0, $a0, $zero
    /* 130CB4 0022FD34 2000BF7F */  sq         $ra, 0x20($sp)
    /* 130CB8 0022FD38 26D3080C */  jal        func_00234C98
    /* 130CBC 0022FD3C 47000424 */   addiu     $a0, $zero, 0x47
    /* 130CC0 0022FD40 00800534 */  ori        $a1, $zero, 0x8000
    /* 130CC4 0022FD44 382E0500 */  dsll       $a1, $a1, 24
    /* 130CC8 0022FD48 4400A534 */  ori        $a1, $a1, 0x44
    /* 130CCC 0022FD4C 26D3080C */  jal        func_00234C98
    /* 130CD0 0022FD50 42000424 */   addiu     $a0, $zero, 0x42
    /* 130CD4 0022FD54 1400033C */  lui        $v1, %hi(D_0013E604)
    /* 130CD8 0022FD58 8000023C */  lui        $v0, (0x808080 >> 16)
    /* 130CDC 0022FD5C 04E6658C */  lw         $a1, %lo(D_0013E604)($v1)
    /* 130CE0 0022FD60 00861000 */  sll        $s0, $s0, 24
    /* 130CE4 0022FD64 1600033C */  lui        $v1, %hi(D_00160688)
    /* 130CE8 0022FD68 880663DC */  ld         $v1, %lo(D_00160688)($v1)
    /* 130CEC 0022FD6C 80804234 */  ori        $v0, $v0, (0x808080 & 0xFFFF)
    /* 130CF0 0022FD70 25100202 */  or         $v0, $s0, $v0
    /* 130CF4 0022FD74 00010624 */  addiu      $a2, $zero, 0x100
    /* 130CF8 0022FD78 20000724 */  addiu      $a3, $zero, 0x20
    /* 130CFC 0022FD7C 2D400000 */  daddu      $t0, $zero, $zero
    /* 130D00 0022FD80 2D480000 */  daddu      $t1, $zero, $zero
    /* 130D04 0022FD84 00010A24 */  addiu      $t2, $zero, 0x100
    /* 130D08 0022FD88 20000B24 */  addiu      $t3, $zero, 0x20
    /* 130D0C 0022FD8C A8FFA524 */  addiu      $a1, $a1, -0x58
    /* 130D10 0022FD90 0000A2FF */  sd         $v0, 0x0($sp)
    /* 130D14 0022FD94 20000424 */  addiu      $a0, $zero, 0x20
    /* 130D18 0022FD98 00D6070C */  jal        func_001F5800
    /* 130D1C 0022FD9C 0800A3FF */   sd        $v1, 0x8($sp)
    /* 130D20 0022FDA0 0500053C */  lui        $a1, (0x5360B >> 16)
    /* 130D24 0022FDA4 0B36A534 */  ori        $a1, $a1, (0x5360B & 0xFFFF)
    /* 130D28 0022FDA8 26D3080C */  jal        func_00234C98
    /* 130D2C 0022FDAC 47000424 */   addiu     $a0, $zero, 0x47
    /* 130D30 0022FDB0 2000BF7B */  lq         $ra, 0x20($sp)
    /* 130D34 0022FDB4 1000B07B */  lq         $s0, 0x10($sp)
    /* 130D38 0022FDB8 0800E003 */  jr         $ra
    /* 130D3C 0022FDBC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0022FD20
