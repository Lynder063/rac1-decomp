.align 3
nonmatching func_00204C60, 0x360

glabel func_00204C60
    /* 105BE0 00204C60 1400033C */  lui        $v1, %hi(D_0013E156)
    /* 105BE4 00204C64 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 105BE8 00204C68 56E16284 */  lh         $v0, %lo(D_0013E156)($v1)
    /* 105BEC 00204C6C 01000424 */  addiu      $a0, $zero, 0x1
    /* 105BF0 00204C70 0000B07F */  sq         $s0, 0x0($sp)
    /* 105BF4 00204C74 1000BF7F */  sq         $ra, 0x10($sp)
    /* 105BF8 00204C78 CC83040C */  jal        func_00120F30
    /* 105BFC 00204C7C 01005024 */   addiu     $s0, $v0, 0x1
    /* 105C00 00204C80 19004010 */  beqz       $v0, .L00204CE8
    /* 105C04 00204C84 BC82828F */   lw        $v0, -0x7D44($gp)
    /* 105C08 00204C88 01000324 */  addiu      $v1, $zero, 0x1
    /* 105C0C 00204C8C 1600043C */  lui        $a0, %hi(D_0015EE58)
    /* 105C10 00204C90 58EE848C */  lw         $a0, %lo(D_0015EE58)($a0)
    /* 105C14 00204C94 01004224 */  addiu      $v0, $v0, 0x1
    /* 105C18 00204C98 C4008314 */  bne        $a0, $v1, .L00204FAC
    /* 105C1C 00204C9C BC8282AF */   sw        $v0, -0x7D44($gp)
    /* 105C20 00204CA0 D1024228 */  slti       $v0, $v0, 0x2D1
    /* 105C24 00204CA4 C2004014 */  bnez       $v0, .L00204FB0
    /* 105C28 00204CA8 2D100000 */   daddu     $v0, $zero, $zero
    /* 105C2C 00204CAC 1600023C */  lui        $v0, %hi(D_0015EF48)
    /* 105C30 00204CB0 48EF4294 */  lhu        $v0, %lo(D_0015EF48)($v0)
    /* 105C34 00204CB4 1600013C */  lui        $at, %hi(D_0015EFC0)
    /* 105C38 00204CB8 C0EF24AC */  sw         $a0, %lo(D_0015EFC0)($at)
    /* 105C3C 00204CBC FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 105C40 00204CC0 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 105C44 00204CC4 0300422C */  sltiu      $v0, $v0, 0x3
    /* 105C48 00204CC8 03004010 */  beqz       $v0, .L00204CD8
    /* 105C4C 00204CCC 588180AF */   sw        $zero, -0x7EA8($gp)
    /* 105C50 00204CD0 1600013C */  lui        $at, %hi(D_0015EF48)
    /* 105C54 00204CD4 48EF23A4 */  sh         $v1, %lo(D_0015EF48)($at)
.align 2
  .L00204CD8:
    /* 105C58 00204CD8 7286040C */  jal        func_001219C8
    /* 105C5C 00204CDC 00000000 */   nop
    /* 105C60 00204CE0 B3000010 */  b          .L00204FB0
    /* 105C64 00204CE4 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L00204CE8:
    /* 105C68 00204CE8 4C86040C */  jal        func_00121930
    /* 105C6C 00204CEC 00000000 */   nop
    /* 105C70 00204CF0 0F004010 */  beqz       $v0, .L00204D30
    /* 105C74 00204CF4 C082828F */   lw        $v0, -0x7D40($gp)
    /* 105C78 00204CF8 0F004014 */  bnez       $v0, .L00204D38
    /* 105C7C 00204CFC 48828387 */   lh        $v1, -0x7DB8($gp)
    /* 105C80 00204D00 1600033C */  lui        $v1, %hi(D_0015EF48)
    /* 105C84 00204D04 48EF6394 */  lhu        $v1, %lo(D_0015EF48)($v1)
    /* 105C88 00204D08 01000224 */  addiu      $v0, $zero, 0x1
    /* 105C8C 00204D0C 1600013C */  lui        $at, %hi(D_0015EFC0)
    /* 105C90 00204D10 C0EF22AC */  sw         $v0, %lo(D_0015EFC0)($at)
    /* 105C94 00204D14 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 105C98 00204D18 FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* 105C9C 00204D1C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 105CA0 00204D20 03004010 */  beqz       $v0, .L00204D30
    /* 105CA4 00204D24 588180AF */   sw        $zero, -0x7EA8($gp)
    /* 105CA8 00204D28 1600013C */  lui        $at, %hi(D_0015EF48)
    /* 105CAC 00204D2C 48EF23A4 */  sh         $v1, %lo(D_0015EF48)($at)
.align 2
  .L00204D30:
    /* 105CB0 00204D30 1600033C */  lui        $v1, %hi(D_0015EF48)
    /* 105CB4 00204D34 48EF6384 */  lh         $v1, %lo(D_0015EF48)($v1)
.align 2
  .L00204D38:
    /* 105CB8 00204D38 0800622C */  sltiu      $v0, $v1, 0x8
    /* 105CBC 00204D3C 9B004010 */  beqz       $v0, .L00204FAC
    /* 105CC0 00204D40 1F00023C */   lui       $v0, %hi(jtbl_001E8010)
    /* 105CC4 00204D44 80180300 */  sll        $v1, $v1, 2
    /* 105CC8 00204D48 10804224 */  addiu      $v0, $v0, %lo(jtbl_001E8010)
    /* 105CCC 00204D4C 21186200 */  addu       $v1, $v1, $v0
    /* 105CD0 00204D50 0000648C */  lw         $a0, 0x0($v1)
    /* 105CD4 00204D54 08008000 */  jr         $a0
    /* 105CD8 00204D58 00000000 */   nop
    /* 105CDC 00204D5C 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* 105CE0 00204D60 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* 105CE4 00204D64 06004010 */  beqz       $v0, .L00204D80
    /* 105CE8 00204D68 1300053C */   lui       $a1, %hi(D_00137C80)
    /* 105CEC 00204D6C FFFF033C */  lui        $v1, (0xFFFFF000 >> 16)
    /* 105CF0 00204D70 807CA424 */  addiu      $a0, $a1, %lo(D_00137C80)
    /* 105CF4 00204D74 00F06334 */  ori        $v1, $v1, (0xFFFFF000 & 0xFFFF)
    /* 105CF8 00204D78 05000010 */  b          .L00204D90
    /* 105CFC 00204D7C 7C29828C */   lw        $v0, 0x297C($a0)
.align 2
  .L00204D80:
    /* 105D00 00204D80 FFFF033C */  lui        $v1, (0xFFFFF000 >> 16)
    /* 105D04 00204D84 807CA424 */  addiu      $a0, $a1, %lo(D_00137C80)
    /* 105D08 00204D88 00F06334 */  ori        $v1, $v1, (0xFFFFF000 & 0xFFFF)
    /* 105D0C 00204D8C 7429828C */  lw         $v0, 0x2974($a0)
.align 2
  .L00204D90:
    /* 105D10 00204D90 C0120200 */  sll        $v0, $v0, 11
    /* 105D14 00204D94 FF0F4224 */  addiu      $v0, $v0, 0xFFF
    /* 105D18 00204D98 24484300 */  and        $t1, $v0, $v1
    /* 105D1C 00204D9C 807CA824 */  addiu      $t0, $a1, %lo(D_00137C80)
    /* 105D20 00204DA0 C0101000 */  sll        $v0, $s0, 3
    /* 105D24 00204DA4 21100201 */  addu       $v0, $t0, $v0
    /* 105D28 00204DA8 0002073C */  lui        $a3, %hi(D_1FF8000)
    /* 105D2C 00204DAC CC12438C */  lw         $v1, 0x12CC($v0)
    /* 105D30 00204DB0 0080E724 */  addiu      $a3, $a3, %lo(D_1FF8000)
    /* 105D34 00204DB4 6C29068D */  lw         $a2, 0x296C($t0)
    /* 105D38 00204DB8 FFFF043C */  lui        $a0, (0xFFFFF000 >> 16)
    /* 105D3C 00204DBC C01A0300 */  sll        $v1, $v1, 11
    /* 105D40 00204DC0 2338E900 */  subu       $a3, $a3, $t1
    /* 105D44 00204DC4 00F08434 */  ori        $a0, $a0, (0xFFFFF000 & 0xFFFF)
    /* 105D48 00204DC8 FF0F6324 */  addiu      $v1, $v1, 0xFFF
    /* 105D4C 00204DCC 24486400 */  and        $t1, $v1, $a0
    /* 105D50 00204DD0 C0120600 */  sll        $v0, $a2, 11
    /* 105D54 00204DD4 2318E900 */  subu       $v1, $a3, $t1
    /* 105D58 00204DD8 FF0F4224 */  addiu      $v0, $v0, 0xFFF
    /* 105D5C 00204DDC 24484400 */  and        $t1, $v0, $a0
    /* 105D60 00204DE0 6829058D */  lw         $a1, 0x2968($t0)
    /* 105D64 00204DE4 23106900 */  subu       $v0, $v1, $t1
    /* 105D68 00204DE8 1600013C */  lui        $at, %hi(D_0015EF54)
    /* 105D6C 00204DEC 54EF23AC */  sw         $v1, %lo(D_0015EF54)($at)
    /* 105D70 00204DF0 1600013C */  lui        $at, %hi(D_0015EF50)
    /* 105D74 00204DF4 50EF27AC */  sw         $a3, %lo(D_0015EF50)($at)
    /* 105D78 00204DF8 1600013C */  lui        $at, %hi(D_0015EF4C)
    /* 105D7C 00204DFC 4CEF22AC */  sw         $v0, %lo(D_0015EF4C)($at)
    /* 105D80 00204E00 0A000010 */  b          .L00204E2C
    /* 105D84 00204E04 2D204000 */   daddu     $a0, $v0, $zero
    /* 105D88 00204E08 1300023C */  lui        $v0, %hi(D_00137C80)
    /* 105D8C 00204E0C C0181000 */  sll        $v1, $s0, 3
    /* 105D90 00204E10 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* 105D94 00204E14 1600043C */  lui        $a0, %hi(D_0015EF54)
    /* 105D98 00204E18 54EF848C */  lw         $a0, %lo(D_0015EF54)($a0)
    /* 105D9C 00204E1C 21384300 */  addu       $a3, $v0, $v1
    /* 105DA0 00204E20 2D10E000 */  daddu      $v0, $a3, $zero
    /* 105DA4 00204E24 CC12E68C */  lw         $a2, 0x12CC($a3)
    /* 105DA8 00204E28 C812458C */  lw         $a1, 0x12C8($v0)
.align 2
  .L00204E2C:
    /* 105DAC 00204E2C 725D080C */  jal        func_002175C8
    /* 105DB0 00204E30 00000000 */   nop
    /* 105DB4 00204E34 1600033C */  lui        $v1, %hi(D_0015EF48)
    /* 105DB8 00204E38 48EF6394 */  lhu        $v1, %lo(D_0015EF48)($v1)
    /* 105DBC 00204E3C 01006324 */  addiu      $v1, $v1, 0x1
    /* 105DC0 00204E40 5A000010 */  b          .L00204FAC
    /* 105DC4 00204E44 488283A7 */   sh        $v1, -0x7DB8($gp)
    /* 105DC8 00204E48 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* 105DCC 00204E4C 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* 105DD0 00204E50 09004010 */  beqz       $v0, .L00204E78
    /* 105DD4 00204E54 1300023C */   lui       $v0, %hi(D_00137C80)
    /* 105DD8 00204E58 1600043C */  lui        $a0, %hi(D_0015EF50)
    /* 105DDC 00204E5C 50EF848C */  lw         $a0, %lo(D_0015EF50)($a0)
    /* 105DE0 00204E60 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* 105DE4 00204E64 7C29468C */  lw         $a2, 0x297C($v0)
    /* 105DE8 00204E68 725D080C */  jal        func_002175C8
    /* 105DEC 00204E6C 7829458C */   lw        $a1, 0x2978($v0)
    /* 105DF0 00204E70 3D000010 */  b          .L00204F68
    /* 105DF4 00204E74 48828297 */   lhu       $v0, -0x7DB8($gp)
.align 2
  .L00204E78:
    /* 105DF8 00204E78 1600043C */  lui        $a0, %hi(D_0015EF50)
    /* 105DFC 00204E7C 50EF848C */  lw         $a0, %lo(D_0015EF50)($a0)
    /* 105E00 00204E80 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* 105E04 00204E84 7429468C */  lw         $a2, 0x2974($v0)
    /* 105E08 00204E88 725D080C */  jal        func_002175C8
    /* 105E0C 00204E8C 7029458C */   lw        $a1, 0x2970($v0)
    /* 105E10 00204E90 35000010 */  b          .L00204F68
    /* 105E14 00204E94 48828297 */   lhu       $v0, -0x7DB8($gp)
    /* 105E18 00204E98 1600023C */  lui        $v0, %hi(D_0015EF4A)
    /* 105E1C 00204E9C 4AEF4284 */  lh         $v0, %lo(D_0015EF4A)($v0)
    /* 105E20 00204EA0 43004014 */  bnez       $v0, .L00204FB0
    /* 105E24 00204EA4 2D100000 */   daddu     $v0, $zero, $zero
    /* 105E28 00204EA8 3EB9040C */  jal        func_0012E4F8
    /* 105E2C 00204EAC 00000000 */   nop
    /* 105E30 00204EB0 1600023C */  lui        $v0, %hi(D_0015EE5C)
    /* 105E34 00204EB4 5CEE428C */  lw         $v0, %lo(D_0015EE5C)($v0)
    /* 105E38 00204EB8 2B004014 */  bnez       $v0, .L00204F68
    /* 105E3C 00204EBC 48828297 */   lhu       $v0, -0x7DB8($gp)
    /* 105E40 00204EC0 06000224 */  addiu      $v0, $zero, 0x6
    /* 105E44 00204EC4 39000010 */  b          .L00204FAC
    /* 105E48 00204EC8 488282A7 */   sh        $v0, -0x7DB8($gp)
    /* 105E4C 00204ECC 70B7040C */  jal        func_0012DDC0
    /* 105E50 00204ED0 00000000 */   nop
    /* 105E54 00204ED4 36004014 */  bnez       $v0, .L00204FB0
    /* 105E58 00204ED8 2D100000 */   daddu     $v0, $zero, $zero
    /* 105E5C 00204EDC C6B8040C */  jal        func_0012E318
    /* 105E60 00204EE0 5C81848F */   lw        $a0, -0x7EA4($gp)
    /* 105E64 00204EE4 1600023C */  lui        $v0, %hi(D_0015EF48)
    /* 105E68 00204EE8 48EF4294 */  lhu        $v0, %lo(D_0015EF48)($v0)
    /* 105E6C 00204EEC 1E000010 */  b          .L00204F68
    /* 105E70 00204EF0 5C8180AF */   sw        $zero, -0x7EA4($gp)
    /* 105E74 00204EF4 70B7040C */  jal        func_0012DDC0
    /* 105E78 00204EF8 00000000 */   nop
    /* 105E7C 00204EFC 2C004014 */  bnez       $v0, .L00204FB0
    /* 105E80 00204F00 2D100000 */   daddu     $v0, $zero, $zero
    /* 105E84 00204F04 BAB8040C */  jal        func_0012E2E8
    /* 105E88 00204F08 00000000 */   nop
    /* 105E8C 00204F0C 16000010 */  b          .L00204F68
    /* 105E90 00204F10 48828297 */   lhu       $v0, -0x7DB8($gp)
    /* 105E94 00204F14 70B7040C */  jal        func_0012DDC0
    /* 105E98 00204F18 00000000 */   nop
    /* 105E9C 00204F1C 24004014 */  bnez       $v0, .L00204FB0
    /* 105EA0 00204F20 2D100000 */   daddu     $v0, $zero, $zero
    /* 105EA4 00204F24 1600033C */  lui        $v1, %hi(D_0015EF4C)
    /* 105EA8 00204F28 4CEF638C */  lw         $v1, %lo(D_0015EF4C)($v1)
    /* 105EAC 00204F2C FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 105EB0 00204F30 1600063C */  lui        $a2, %hi(D_0015EE5C)
    /* 105EB4 00204F34 5CEEC624 */  addiu      $a2, $a2, %lo(D_0015EE5C)
    /* 105EB8 00204F38 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 105EBC 00204F3C 0800648C */  lw         $a0, 0x8($v1)
    /* 105EC0 00204F40 3C300600 */  dsll32     $a2, $a2, 0
    /* 105EC4 00204F44 2300053C */  lui        $a1, %hi(func_0022F090)
    /* 105EC8 00204F48 1600013C */  lui        $at, %hi(D_0015EE5C)
    /* 105ECC 00204F4C 5CEE22AC */  sw         $v0, %lo(D_0015EE5C)($at)
    /* 105ED0 00204F50 21208300 */  addu       $a0, $a0, $v1
    /* 105ED4 00204F54 90F0A524 */  addiu      $a1, $a1, %lo(func_0022F090)
    /* 105ED8 00204F58 72B8040C */  jal        func_0012E1C8
    /* 105EDC 00204F5C 3E300600 */   dsrl32    $a2, $a2, 0
    /* 105EE0 00204F60 1600023C */  lui        $v0, %hi(D_0015EF48)
    /* 105EE4 00204F64 48EF4294 */  lhu        $v0, %lo(D_0015EF48)($v0)
.align 2
  .L00204F68:
    /* 105EE8 00204F68 01004224 */  addiu      $v0, $v0, 0x1
    /* 105EEC 00204F6C 0F000010 */  b          .L00204FAC
    /* 105EF0 00204F70 488282A7 */   sh        $v0, -0x7DB8($gp)
    /* 105EF4 00204F74 70B7040C */  jal        func_0012DDC0
    /* 105EF8 00204F78 00000000 */   nop
    /* 105EFC 00204F7C 0C004014 */  bnez       $v0, .L00204FB0
    /* 105F00 00204F80 2D100000 */   daddu     $v0, $zero, $zero
    /* 105F04 00204F84 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 105F08 00204F88 1600033C */  lui        $v1, %hi(D_0015EE5C)
    /* 105F0C 00204F8C 5CEE638C */  lw         $v1, %lo(D_0015EE5C)($v1)
    /* 105F10 00204F90 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 105F14 00204F94 06006210 */  beq        $v1, $v0, .L00204FB0
    /* 105F18 00204F98 2D100000 */   daddu     $v0, $zero, $zero
    /* 105F1C 00204F9C BAB8040C */  jal        func_0012E2E8
    /* 105F20 00204FA0 00000000 */   nop
    /* 105F24 00204FA4 02000010 */  b          .L00204FB0
    /* 105F28 00204FA8 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00204FAC:
    /* 105F2C 00204FAC 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00204FB0:
    /* 105F30 00204FB0 1000BF7B */  lq         $ra, 0x10($sp)
    /* 105F34 00204FB4 0000B07B */  lq         $s0, 0x0($sp)
    /* 105F38 00204FB8 0800E003 */  jr         $ra
    /* 105F3C 00204FBC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00204C60
