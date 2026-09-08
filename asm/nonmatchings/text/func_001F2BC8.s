.align 3
nonmatching func_001F2BC8, 0x3F0

glabel func_001F2BC8
    /* F3B48 001F2BC8 40FFBD27 */  addiu      $29, $29, -0xC0
    /* F3B4C 001F2BCC 1800023C */  lui        $2, %hi(D_00187040)
    /* F3B50 001F2BD0 8000B77F */  sq         $23, 0x80($29)
    /* F3B54 001F2BD4 40704224 */  addiu      $2, $2, %lo(D_00187040)
    /* F3B58 001F2BD8 7000B67F */  sq         $22, 0x70($29)
    /* F3B5C 001F2BDC 6000B57F */  sq         $21, 0x60($29)
    /* F3B60 001F2BE0 5000B47F */  sq         $20, 0x50($29)
    /* F3B64 001F2BE4 B000B4E7 */  swc1       $f20, 0xB0($29)
    /* F3B68 001F2BE8 A000BF7F */  sq         $31, 0xA0($29)
    /* F3B6C 001F2BEC 9000BE7F */  sq         $30, 0x90($29)
    /* F3B70 001F2BF0 4000B37F */  sq         $19, 0x40($29)
    /* F3B74 001F2BF4 3000B27F */  sq         $18, 0x30($29)
    /* F3B78 001F2BF8 2000B17F */  sq         $17, 0x20($29)
    /* F3B7C 001F2BFC 1000B07F */  sq         $16, 0x10($29)
    /* F3B80 001F2C00 803E013C */  lui        $1, (0x3E800000 >> 16)
    /* F3B84 001F2C04 00A08144 */  mtc1       $1, $f20
    /* F3B88 001F2C08 40014CC4 */  lwc1       $f12, 0x140($2)
    /* F3B8C 001F2C0C 26EA070C */  jal        func_001FA898
    /* F3B90 001F2C10 02631446 */   mul.s     $f12, $f12, $f20
    /* F3B94 001F2C14 1800043C */  lui        $4, %hi(D_00187040)
    /* F3B98 001F2C18 2DB04000 */  daddu      $22, $2, $0
    /* F3B9C 001F2C1C 40708424 */  addiu      $4, $4, %lo(D_00187040)
    /* F3BA0 001F2C20 44018CC4 */  lwc1       $f12, 0x144($4)
    /* F3BA4 001F2C24 26EA070C */  jal        func_001FA898
    /* F3BA8 001F2C28 02631446 */   mul.s     $f12, $f12, $f20
    /* F3BAC 001F2C2C 1800063C */  lui        $6, %hi(D_00187040)
    /* F3BB0 001F2C30 2DA84000 */  daddu      $21, $2, $0
    /* F3BB4 001F2C34 4070C624 */  addiu      $6, $6, %lo(D_00187040)
    /* F3BB8 001F2C38 4801CCC4 */  lwc1       $f12, 0x148($6)
    /* F3BBC 001F2C3C 26EA070C */  jal        func_001FA898
    /* F3BC0 001F2C40 02631446 */   mul.s     $f12, $f12, $f20
    /* F3BC4 001F2C44 2DA04000 */  daddu      $20, $2, $0
    /* F3BC8 001F2C48 2D20C002 */  daddu      $4, $22, $0
    /* F3BCC 001F2C4C 2D28A002 */  daddu      $5, $21, $0
    /* F3BD0 001F2C50 8ECA070C */  jal        func_001F2A38
    /* F3BD4 001F2C54 2D308002 */   daddu     $6, $20, $0
    /* F3BD8 001F2C58 2DB84000 */  daddu      $23, $2, $0
    /* F3BDC 001F2C5C 0900E012 */  beqz       $23, .L001F2C84
    /* F3BE0 001F2C60 1900023C */   lui       $2, %hi(D_001940C0)
    /* F3BE4 001F2C64 1600013C */  lui        $1, %hi(D_0015F72C)
    /* F3BE8 001F2C68 2CF720AC */  sw         $0, %lo(D_0015F72C)($1)
    /* F3BEC 001F2C6C C0404424 */  addiu      $4, $2, %lo(D_001940C0)
    /* F3BF0 001F2C70 2D28E002 */  daddu      $5, $23, $0
    /* F3BF4 001F2C74 A6E6070C */  jal        func_001F9A98
    /* F3BF8 001F2C78 80000624 */   addiu     $6, $0, 0x80
    /* F3BFC 001F2C7C BC000010 */  b          .L001F2F70
    /* F3C00 001F2C80 308A97AF */   sw        $23, -0x75D0($28)
.align 2
  .L001F2C84:
    /* F3C04 001F2C84 01000224 */  addiu      $2, $0, 0x1
    /* F3C08 001F2C88 1600033C */  lui        $3, %hi(D_0015F728)
    /* F3C0C 001F2C8C 28F7638C */  lw         $3, %lo(D_0015F728)($3)
    /* F3C10 001F2C90 58006014 */  bnez       $3, .L001F2DF4
    /* F3C14 001F2C94 2C8A82AF */   sw        $2, -0x75D4($28)
    /* F3C18 001F2C98 2D20C002 */  daddu      $4, $22, $0
    /* F3C1C 001F2C9C 22EA070C */  jal        func_001FA888
    /* F3C20 001F2CA0 FFFFD026 */   addiu     $16, $22, -0x1
    /* F3C24 001F2CA4 0100B126 */  addiu      $17, $21, 0x1
    /* F3C28 001F2CA8 1800023C */  lui        $2, %hi(D_00187040)
    /* F3C2C 001F2CAC 0100C726 */  addiu      $7, $22, 0x1
    /* F3C30 001F2CB0 40704224 */  addiu      $2, $2, %lo(D_00187040)
    /* F3C34 001F2CB4 2D200002 */  daddu      $4, $16, $0
    /* F3C38 001F2CB8 40014CC4 */  lwc1       $f12, 0x140($2)
    /* F3C3C 001F2CBC 2D28A002 */  daddu      $5, $21, $0
    /* F3C40 001F2CC0 01008226 */  addiu      $2, $20, 0x1
    /* F3C44 001F2CC4 2D308002 */  daddu      $6, $20, $0
    /* F3C48 001F2CC8 02631446 */  mul.s      $f12, $f12, $f20
    /* F3C4C 001F2CCC 0000A2AF */  sw         $2, 0x0($29)
    /* F3C50 001F2CD0 2D40A002 */  daddu      $8, $21, $0
    /* F3C54 001F2CD4 2D488002 */  daddu      $9, $20, $0
    /* F3C58 001F2CD8 FFFFB026 */  addiu      $16, $21, -0x1
    /* F3C5C 001F2CDC FFFF9226 */  addiu      $18, $20, -0x1
    /* F3C60 001F2CE0 C4CA070C */  jal        func_001F2B10
    /* F3C64 001F2CE4 01630046 */   sub.s     $f12, $f12, $f0
    /* F3C68 001F2CE8 2D20A002 */  daddu      $4, $21, $0
    /* F3C6C 001F2CEC 22EA070C */  jal        func_001FA888
    /* F3C70 001F2CF0 2D984000 */   daddu     $19, $2, $0
    /* F3C74 001F2CF4 1800043C */  lui        $4, %hi(D_00187040)
    /* F3C78 001F2CF8 2D402002 */  daddu      $8, $17, $0
    /* F3C7C 001F2CFC 40708424 */  addiu      $4, $4, %lo(D_00187040)
    /* F3C80 001F2D00 2D308002 */  daddu      $6, $20, $0
    /* F3C84 001F2D04 44018CC4 */  lwc1       $f12, 0x144($4)
    /* F3C88 001F2D08 2D280002 */  daddu      $5, $16, $0
    /* F3C8C 001F2D0C 2D38C002 */  daddu      $7, $22, $0
    /* F3C90 001F2D10 2D488002 */  daddu      $9, $20, $0
    /* F3C94 001F2D14 02631446 */  mul.s      $f12, $f12, $f20
    /* F3C98 001F2D18 2D20C002 */  daddu      $4, $22, $0
    /* F3C9C 001F2D1C C4CA070C */  jal        func_001F2B10
    /* F3CA0 001F2D20 01630046 */   sub.s     $f12, $f12, $f0
    /* F3CA4 001F2D24 2DF04000 */  daddu      $30, $2, $0
    /* F3CA8 001F2D28 22EA070C */  jal        func_001FA888
    /* F3CAC 001F2D2C 2D208002 */   daddu     $4, $20, $0
    /* F3CB0 001F2D30 1800063C */  lui        $6, %hi(D_00187040)
    /* F3CB4 001F2D34 2D20C002 */  daddu      $4, $22, $0
    /* F3CB8 001F2D38 4070C624 */  addiu      $6, $6, %lo(D_00187040)
    /* F3CBC 001F2D3C 2D28A002 */  daddu      $5, $21, $0
    /* F3CC0 001F2D40 4801CCC4 */  lwc1       $f12, 0x148($6)
    /* F3CC4 001F2D44 2D388000 */  daddu      $7, $4, $0
    /* F3CC8 001F2D48 0000A98F */  lw         $9, 0x0($29)
    /* F3CCC 001F2D4C 2D304002 */  daddu      $6, $18, $0
    /* F3CD0 001F2D50 02631446 */  mul.s      $f12, $f12, $f20
    /* F3CD4 001F2D54 2D40A000 */  daddu      $8, $5, $0
    /* F3CD8 001F2D58 C4CA070C */  jal        func_001F2B10
    /* F3CDC 001F2D5C 01630046 */   sub.s     $f12, $f12, $f0
    /* F3CE0 001F2D60 05006016 */  bnez       $19, .L001F2D78
    /* F3CE4 001F2D64 2D884000 */   daddu     $17, $2, $0
    /* F3CE8 001F2D68 0400C057 */  bnel       $30, $0, .L001F2D7C
    /* F3CEC 001F2D6C 1900023C */   lui       $2, %hi(D_00194140)
    /* F3CF0 001F2D70 20002012 */  beqz       $17, .L001F2DF4
    /* F3CF4 001F2D74 00000000 */   nop
.align 2
  .L001F2D78:
    /* F3CF8 001F2D78 1900023C */  lui        $2, %hi(D_00194140)
.align 2
  .L001F2D7C:
    /* F3CFC 001F2D7C 80000524 */  addiu      $5, $0, 0x80
    /* F3D00 001F2D80 40415024 */  addiu      $16, $2, %lo(D_00194140)
    /* F3D04 001F2D84 76E6070C */  jal        func_001F99D8
    /* F3D08 001F2D88 2D200002 */   daddu     $4, $16, $0
    /* F3D0C 001F2D8C 05006012 */  beqz       $19, .L001F2DA4
    /* F3D10 001F2D90 2D306002 */   daddu     $6, $19, $0
    /* F3D14 001F2D94 2D200002 */  daddu      $4, $16, $0
    /* F3D18 001F2D98 2D280002 */  daddu      $5, $16, $0
    /* F3D1C 001F2D9C B0E6070C */  jal        func_001F9AC0
    /* F3D20 001F2DA0 80000724 */   addiu     $7, $0, 0x80
.align 2
  .L001F2DA4:
    /* F3D24 001F2DA4 0500C013 */  beqz       $30, .L001F2DBC
    /* F3D28 001F2DA8 2D30C003 */   daddu     $6, $30, $0
    /* F3D2C 001F2DAC 2D200002 */  daddu      $4, $16, $0
    /* F3D30 001F2DB0 2D280002 */  daddu      $5, $16, $0
    /* F3D34 001F2DB4 B0E6070C */  jal        func_001F9AC0
    /* F3D38 001F2DB8 80000724 */   addiu     $7, $0, 0x80
.align 2
  .L001F2DBC:
    /* F3D3C 001F2DBC 05002012 */  beqz       $17, .L001F2DD4
    /* F3D40 001F2DC0 2D302002 */   daddu     $6, $17, $0
    /* F3D44 001F2DC4 2D200002 */  daddu      $4, $16, $0
    /* F3D48 001F2DC8 2D280002 */  daddu      $5, $16, $0
    /* F3D4C 001F2DCC B0E6070C */  jal        func_001F9AC0
    /* F3D50 001F2DD0 80000724 */   addiu     $7, $0, 0x80
.align 2
  .L001F2DD4:
    /* F3D54 001F2DD4 2DB80002 */  daddu      $23, $16, $0
    /* F3D58 001F2DD8 80000624 */  addiu      $6, $0, 0x80
    /* F3D5C 001F2DDC 1900103C */  lui        $16, %hi(D_001940C0)
    /* F3D60 001F2DE0 1600013C */  lui        $1, %hi(D_0015F730)
    /* F3D64 001F2DE4 30F737AC */  sw         $23, %lo(D_0015F730)($1)
    /* F3D68 001F2DE8 C0400426 */  addiu      $4, $16, %lo(D_001940C0)
    /* F3D6C 001F2DEC A6E6070C */  jal        func_001F9A98
    /* F3D70 001F2DF0 2D28E002 */   daddu     $5, $23, $0
.align 2
  .L001F2DF4:
    /* F3D74 001F2DF4 5F00E016 */  bnez       $23, .L001F2F74
    /* F3D78 001F2DF8 1900023C */   lui       $2, %hi(D_001940C0)
    /* F3D7C 001F2DFC 1600033C */  lui        $3, %hi(D_0015F728)
    /* F3D80 001F2E00 28F7638C */  lw         $3, %lo(D_0015F728)($3)
    /* F3D84 001F2E04 01000224 */  addiu      $2, $0, 0x1
    /* F3D88 001F2E08 15006210 */  beq        $3, $2, .L001F2E60
    /* F3D8C 001F2E0C 02006228 */   slti      $2, $3, 0x2
    /* F3D90 001F2E10 05004010 */  beqz       $2, .L001F2E28
    /* F3D94 001F2E14 02000224 */   addiu     $2, $0, 0x2
    /* F3D98 001F2E18 07006010 */  beqz       $3, .L001F2E38
    /* F3D9C 001F2E1C 1900023C */   lui       $2, %hi(D_001940C0)
    /* F3DA0 001F2E20 55000010 */  b          .L001F2F78
    /* F3DA4 001F2E24 A000BF7B */   lq        $31, 0xA0($29)
.align 2
  .L001F2E28:
    /* F3DA8 001F2E28 15006210 */  beq        $3, $2, .L001F2E80
    /* F3DAC 001F2E2C 1900023C */   lui       $2, %hi(D_001940C0)
    /* F3DB0 001F2E30 51000010 */  b          .L001F2F78
    /* F3DB4 001F2E34 A000BF7B */   lq        $31, 0xA0($29)
.align 2
  .L001F2E38:
    /* F3DB8 001F2E38 1900023C */  lui        $2, %hi(D_0018C42C)
    /* F3DBC 001F2E3C 2CC4438C */  lw         $3, %lo(D_0018C42C)($2)
    /* F3DC0 001F2E40 08006014 */  bnez       $3, .L001F2E64
    /* F3DC4 001F2E44 1900063C */   lui       $6, (0x190000 >> 16)
    /* F3DC8 001F2E48 1600053C */  lui        $5, %hi(D_0015F730)
    /* F3DCC 001F2E4C 30F7A58C */  lw         $5, %lo(D_0015F730)($5)
    /* F3DD0 001F2E50 3E00A014 */  bnez       $5, .L001F2F4C
    /* F3DD4 001F2E54 1900023C */   lui       $2, %hi(D_001940C0)
    /* F3DD8 001F2E58 03000010 */  b          .L001F2E68
    /* F3DDC 001F2E5C FFFF0524 */   addiu     $5, $0, -0x1
.align 2
  .L001F2E60:
    /* F3DE0 001F2E60 1900023C */  lui        $2, (0x190000 >> 16)
.align 2
  .L001F2E64:
    /* F3DE4 001F2E64 FFFF0524 */  addiu      $5, $0, -0x1
.align 2
  .L001F2E68:
    /* F3DE8 001F2E68 1900043C */  lui        $4, %hi(D_001940C0)
    /* F3DEC 001F2E6C C0408424 */  addiu      $4, $4, %lo(D_001940C0)
    /* F3DF0 001F2E70 6CE6070C */  jal        func_001F99B0
    /* F3DF4 001F2E74 80000624 */   addiu     $6, $0, 0x80
    /* F3DF8 001F2E78 3E000010 */  b          .L001F2F74
    /* F3DFC 001F2E7C 1900023C */   lui       $2, %hi(D_001940C0)
.align 2
  .L001F2E80:
    /* F3E00 001F2E80 1600033C */  lui        $3, %hi(D_0015F724)
    /* F3E04 001F2E84 24F7638C */  lw         $3, %lo(D_0015F724)($3)
    /* F3E08 001F2E88 28006010 */  beqz       $3, .L001F2F2C
    /* F3E0C 001F2E8C 1800043C */   lui       $4, %hi(D_00187040)
    /* F3E10 001F2E90 000061C4 */  lwc1       $f1, 0x0($3)
    /* F3E14 001F2E94 40708224 */  addiu      $2, $4, %lo(D_00187040)
    /* F3E18 001F2E98 00108044 */  mtc1       $0, $f2
    /* F3E1C 001F2E9C 400140C4 */  lwc1       $f0, 0x140($2)
    /* F3E20 001F2EA0 01000146 */  sub.s      $f0, $f0, $f1
    /* F3E24 001F2EA4 34100046 */  c.lt.s     $f2, $f0
    /* F3E28 001F2EA8 00000000 */  nop
    /* F3E2C 001F2EAC 02000145 */  bc1t       .L001F2EB8
    /* F3E30 001F2EB0 01000624 */   addiu     $6, $0, 0x1
    /* F3E34 001F2EB4 2D300000 */  daddu      $6, $0, $0
.align 2
  .L001F2EB8:
    /* F3E38 001F2EB8 440140C4 */  lwc1       $f0, 0x144($2)
    /* F3E3C 001F2EBC 040061C4 */  lwc1       $f1, 0x4($3)
    /* F3E40 001F2EC0 01000146 */  sub.s      $f0, $f0, $f1
    /* F3E44 001F2EC4 34100046 */  c.lt.s     $f2, $f0
    /* F3E48 001F2EC8 00000000 */  nop
    /* F3E4C 001F2ECC 02000145 */  bc1t       .L001F2ED8
    /* F3E50 001F2ED0 01000524 */   addiu     $5, $0, 0x1
    /* F3E54 001F2ED4 2D280000 */  daddu      $5, $0, $0
.align 2
  .L001F2ED8:
    /* F3E58 001F2ED8 480140C4 */  lwc1       $f0, 0x148($2)
    /* F3E5C 001F2EDC 080061C4 */  lwc1       $f1, 0x8($3)
    /* F3E60 001F2EE0 01000146 */  sub.s      $f0, $f0, $f1
    /* F3E64 001F2EE4 34100046 */  c.lt.s     $f2, $f0
    /* F3E68 001F2EE8 00000000 */  nop
    /* F3E6C 001F2EEC 02000145 */  bc1t       .L001F2EF8
    /* F3E70 001F2EF0 01000424 */   addiu     $4, $0, 0x1
    /* F3E74 001F2EF4 2D200000 */  daddu      $4, $0, $0
.align 2
  .L001F2EF8:
    /* F3E78 001F2EF8 40280500 */  sll        $5, $5, 1
    /* F3E7C 001F2EFC 80100600 */  sll        $2, $6, 2
    /* F3E80 001F2F00 21288500 */  addu       $5, $4, $5
    /* F3E84 001F2F04 1900063C */  lui        $6, %hi(D_001940C0)
    /* F3E88 001F2F08 2128A200 */  addu       $5, $5, $2
    /* F3E8C 001F2F0C C040C424 */  addiu      $4, $6, %lo(D_001940C0)
    /* F3E90 001F2F10 C0290500 */  sll        $5, $5, 7
    /* F3E94 001F2F14 80000624 */  addiu      $6, $0, 0x80
    /* F3E98 001F2F18 1000A524 */  addiu      $5, $5, 0x10
    /* F3E9C 001F2F1C A6E6070C */  jal        func_001F9A98
    /* F3EA0 001F2F20 21286500 */   addu      $5, $3, $5
    /* F3EA4 001F2F24 13000010 */  b          .L001F2F74
    /* F3EA8 001F2F28 1900023C */   lui       $2, %hi(D_001940C0)
.align 2
  .L001F2F2C:
    /* F3EAC 001F2F2C 1900023C */  lui        $2, %hi(D_0018C42C)
    /* F3EB0 001F2F30 2CC4438C */  lw         $3, %lo(D_0018C42C)($2)
    /* F3EB4 001F2F34 0A006014 */  bnez       $3, .L001F2F60
    /* F3EB8 001F2F38 1900063C */   lui       $6, %hi(D_001940C0)
    /* F3EBC 001F2F3C 1600053C */  lui        $5, %hi(D_0015F730)
    /* F3EC0 001F2F40 30F7A58C */  lw         $5, %lo(D_0015F730)($5)
    /* F3EC4 001F2F44 0600A010 */  beqz       $5, .L001F2F60
    /* F3EC8 001F2F48 1900023C */   lui       $2, %hi(D_001940C0)
.align 2
  .L001F2F4C:
    /* F3ECC 001F2F4C 80000624 */  addiu      $6, $0, 0x80
    /* F3ED0 001F2F50 A6E6070C */  jal        func_001F9A98
    /* F3ED4 001F2F54 C0404424 */   addiu     $4, $2, %lo(D_001940C0)
    /* F3ED8 001F2F58 06000010 */  b          .L001F2F74
    /* F3EDC 001F2F5C 1900023C */   lui       $2, %hi(D_001940C0)
.align 2
  .L001F2F60:
    /* F3EE0 001F2F60 FFFF0524 */  addiu      $5, $0, -0x1
    /* F3EE4 001F2F64 C040C424 */  addiu      $4, $6, %lo(D_001940C0)
    /* F3EE8 001F2F68 6CE6070C */  jal        func_001F99B0
    /* F3EEC 001F2F6C 80000624 */   addiu     $6, $0, 0x80
.align 2
  .L001F2F70:
    /* F3EF0 001F2F70 1900023C */  lui        $2, %hi(D_001940C0)
.align 2
  .L001F2F74:
    /* F3EF4 001F2F74 A000BF7B */  lq         $31, 0xA0($29)
.align 2
  .L001F2F78:
    /* F3EF8 001F2F78 C0404324 */  addiu      $3, $2, %lo(D_001940C0)
    /* F3EFC 001F2F7C 9000BE7B */  lq         $30, 0x90($29)
    /* F3F00 001F2F80 7F006290 */  lbu        $2, 0x7F($3)
    /* F3F04 001F2F84 8000B77B */  lq         $23, 0x80($29)
    /* F3F08 001F2F88 80004234 */  ori        $2, $2, 0x80
    /* F3F0C 001F2F8C 7000B67B */  lq         $22, 0x70($29)
    /* F3F10 001F2F90 6000B57B */  lq         $21, 0x60($29)
    /* F3F14 001F2F94 5000B47B */  lq         $20, 0x50($29)
    /* F3F18 001F2F98 4000B37B */  lq         $19, 0x40($29)
    /* F3F1C 001F2F9C 3000B27B */  lq         $18, 0x30($29)
    /* F3F20 001F2FA0 2000B17B */  lq         $17, 0x20($29)
    /* F3F24 001F2FA4 1000B07B */  lq         $16, 0x10($29)
    /* F3F28 001F2FA8 B000B4C7 */  lwc1       $f20, 0xB0($29)
    /* F3F2C 001F2FAC 7F0062A0 */  sb         $2, 0x7F($3)
    /* F3F30 001F2FB0 0800E003 */  jr         $31
    /* F3F34 001F2FB4 C000BD27 */   addiu     $29, $29, 0xC0
endlabel func_001F2BC8
