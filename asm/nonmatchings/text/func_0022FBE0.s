.align 3
nonmatching func_0022FBE0, 0x13C

glabel func_0022FBE0
    /* 130B60 0022FBE0 00FFBD27 */  addiu      $sp, $sp, -0x100
    /* 130B64 0022FBE4 0300053C */  lui        $a1, (0x31801 >> 16)
    /* 130B68 0022FBE8 0118A534 */  ori        $a1, $a1, (0x31801 & 0xFFFF)
    /* 130B6C 0022FBEC F000B4E7 */  swc1       $f20, 0xF0($sp)
    /* 130B70 0022FBF0 47000424 */  addiu      $a0, $zero, 0x47
    /* 130B74 0022FBF4 E000BF7F */  sq         $ra, 0xE0($sp)
    /* 130B78 0022FBF8 D000B47F */  sq         $s4, 0xD0($sp)
    /* 130B7C 0022FBFC C000B37F */  sq         $s3, 0xC0($sp)
    /* 130B80 0022FC00 B000B27F */  sq         $s2, 0xB0($sp)
    /* 130B84 0022FC04 A000B17F */  sq         $s1, 0xA0($sp)
    /* 130B88 0022FC08 26D3080C */  jal        func_00234C98
    /* 130B8C 0022FC0C 9000B07F */   sq        $s0, 0x90($sp)
    /* 130B90 0022FC10 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 130B94 0022FC14 00A08144 */  mtc1       $at, $f20
    /* 130B98 0022FC18 1600023C */  lui        $v0, %hi(D_00160680)
    /* 130B9C 0022FC1C 800642DC */  ld         $v0, %lo(D_00160680)($v0)
    /* 130BA0 0022FC20 00800634 */  ori        $a2, $zero, 0x8000
    /* 130BA4 0022FC24 38360600 */  dsll       $a2, $a2, 24
    /* 130BA8 0022FC28 4400C634 */  ori        $a2, $a2, 0x44
    /* 130BAC 0022FC2C 90FF0334 */  ori        $v1, $zero, 0xFF90
    /* 130BB0 0022FC30 3C180300 */  dsll32     $v1, $v1, 0
    /* 130BB4 0022FC34 60026334 */  ori        $v1, $v1, 0x260
    /* 130BB8 0022FC38 8800A6FF */  sd         $a2, 0x88($sp)
    /* 130BBC 0022FC3C 1E00053C */  lui        $a1, %hi(D_001D9B40)
    /* 130BC0 0022FC40 7800A2FF */  sd         $v0, 0x78($sp)
    /* 130BC4 0022FC44 8000A3FF */  sd         $v1, 0x80($sp)
    /* 130BC8 0022FC48 409BA524 */  addiu      $a1, $a1, %lo(D_001D9B40)
    /* 130BCC 0022FC4C 5000A427 */  addiu      $a0, $sp, 0x50
    /* 130BD0 0022FC50 20000624 */  addiu      $a2, $zero, 0x20
    /* 130BD4 0022FC54 A6E6070C */  jal        func_001F9A98
    /* 130BD8 0022FC58 7000A0FF */   sd        $zero, 0x70($sp)
    /* 130BDC 0022FC5C 1600033C */  lui        $v1, %hi(D_0015EE84)
    /* 130BE0 0022FC60 84EE638C */  lw         $v1, %lo(D_0015EE84)($v1)
    /* 130BE4 0022FC64 1300622C */  sltiu      $v0, $v1, 0x13
    /* 130BE8 0022FC68 05004010 */  beqz       $v0, .L0022FC80
    /* 130BEC 0022FC6C 1E00023C */   lui       $v0, %hi(D_001D9E20)
    /* 130BF0 0022FC70 80180300 */  sll        $v1, $v1, 2
    /* 130BF4 0022FC74 209E4224 */  addiu      $v0, $v0, %lo(D_001D9E20)
    /* 130BF8 0022FC78 21186200 */  addu       $v1, $v1, $v0
    /* 130BFC 0022FC7C 000074C4 */  lwc1       $f20, 0x0($v1)
.align 2
  .L0022FC80:
    /* 130C00 0022FC80 8080123C */  lui        $s2, (0x80808080 >> 16)
    /* 130C04 0022FC84 1E00023C */  lui        $v0, %hi(D_001D9DE0)
    /* 130C08 0022FC88 E09D5424 */  addiu      $s4, $v0, %lo(D_001D9DE0)
    /* 130C0C 0022FC8C 80805236 */  ori        $s2, $s2, (0x80808080 & 0xFFFF)
    /* 130C10 0022FC90 2D80A003 */  daddu      $s0, $sp, $zero
    /* 130C14 0022FC94 4000B127 */  addiu      $s1, $sp, 0x40
    /* 130C18 0022FC98 03001324 */  addiu      $s3, $zero, 0x3
    /* 130C1C 0022FC9C 00000000 */  nop
.align 2
  .L0022FCA0:
    /* 130C20 0022FCA0 2D200002 */  daddu      $a0, $s0, $zero
    /* 130C24 0022FCA4 2D288002 */  daddu      $a1, $s4, $zero
    /* 130C28 0022FCA8 000032AE */  sw         $s2, 0x0($s1)
    /* 130C2C 0022FCAC 0CE7070C */  jal        func_001F9C30
    /* 130C30 0022FCB0 06A30046 */   mov.s     $f12, $f20
    /* 130C34 0022FCB4 10009426 */  addiu      $s4, $s4, 0x10
    /* 130C38 0022FCB8 2D200002 */  daddu      $a0, $s0, $zero
    /* 130C3C 0022FCBC 2D280002 */  daddu      $a1, $s0, $zero
    /* 130C40 0022FCC0 F0988627 */  addiu      $a2, $gp, -0x6710
    /* 130C44 0022FCC4 F6E6070C */  jal        func_001F9BD8
    /* 130C48 0022FCC8 10001026 */   addiu     $s0, $s0, 0x10
    /* 130C4C 0022FCCC FFFF7326 */  addiu      $s3, $s3, -0x1
    /* 130C50 0022FCD0 F3FF6106 */  bgez       $s3, .L0022FCA0
    /* 130C54 0022FCD4 04003126 */   addiu     $s1, $s1, 0x4
    /* 130C58 0022FCD8 2D20A003 */  daddu      $a0, $sp, $zero
    /* 130C5C 0022FCDC 2D280000 */  daddu      $a1, $zero, $zero
    /* 130C60 0022FCE0 BEDF070C */  jal        func_001F7EF8
    /* 130C64 0022FCE4 2D300000 */   daddu     $a2, $zero, $zero
    /* 130C68 0022FCE8 0500053C */  lui        $a1, (0x5360B >> 16)
    /* 130C6C 0022FCEC 0B36A534 */  ori        $a1, $a1, (0x5360B & 0xFFFF)
    /* 130C70 0022FCF0 26D3080C */  jal        func_00234C98
    /* 130C74 0022FCF4 47000424 */   addiu     $a0, $zero, 0x47
    /* 130C78 0022FCF8 E000BF7B */  lq         $ra, 0xE0($sp)
    /* 130C7C 0022FCFC D000B47B */  lq         $s4, 0xD0($sp)
    /* 130C80 0022FD00 C000B37B */  lq         $s3, 0xC0($sp)
    /* 130C84 0022FD04 B000B27B */  lq         $s2, 0xB0($sp)
    /* 130C88 0022FD08 A000B17B */  lq         $s1, 0xA0($sp)
    /* 130C8C 0022FD0C 9000B07B */  lq         $s0, 0x90($sp)
    /* 130C90 0022FD10 F000B4C7 */  lwc1       $f20, 0xF0($sp)
    /* 130C94 0022FD14 0800E003 */  jr         $ra
    /* 130C98 0022FD18 0001BD27 */   addiu     $sp, $sp, 0x100
endlabel func_0022FBE0
    /* 130C9C 0022FD1C 00000000 */  nop
