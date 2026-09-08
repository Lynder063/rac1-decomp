.align 3
nonmatching func_0021DB30, 0x2D4

glabel func_0021DB30
    /* 11EAB0 0021DB30 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 11EAB4 0021DB34 1400033C */  lui        $3, %hi(D_0013CA40)
    /* 11EAB8 0021DB38 1000B17F */  sq         $17, 0x10($29)
    /* 11EABC 0021DB3C 0000B07F */  sq         $16, 0x0($29)
    /* 11EAC0 0021DB40 2D886000 */  daddu      $17, $3, $0
    /* 11EAC4 0021DB44 2000BF7F */  sq         $31, 0x20($29)
    /* 11EAC8 0021DB48 40CA6324 */  addiu      $3, $3, %lo(D_0013CA40)
    /* 11EACC 0021DB4C C401628C */  lw         $2, 0x1C4($3)
    /* 11EAD0 0021DB50 000D4230 */  andi       $2, $2, 0xD00
    /* 11EAD4 0021DB54 07004010 */  beqz       $2, .L0021DB74
    /* 11EAD8 0021DB58 2D808000 */   daddu     $16, $4, $0
    /* 11EADC 0021DB5C 1D00023C */  lui        $2, %hi(D_001D6094)
    /* 11EAE0 0021DB60 9460438C */  lw         $3, %lo(D_001D6094)($2)
    /* 11EAE4 0021DB64 04006014 */  bnez       $3, .L0021DB78
    /* 11EAE8 0021DB68 40CA2326 */   addiu     $3, $17, %lo(D_0013CA40)
    /* 11EAEC 0021DB6C A0000010 */  b          .L0021DDF0
    /* 11EAF0 0021DB70 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0021DB74:
    /* 11EAF4 0021DB74 40CA2326 */  addiu      $3, $17, %lo(D_0013CA40)
.align 2
  .L0021DB78:
    /* 11EAF8 0021DB78 C401628C */  lw         $2, 0x1C4($3)
    /* 11EAFC 0021DB7C 10004230 */  andi       $2, $2, 0x10
    /* 11EB00 0021DB80 0C004010 */  beqz       $2, .L0021DBB4
    /* 11EB04 0021DB84 1D00023C */   lui       $2, %hi(D_001D5F70)
    /* 11EB08 0021DB88 705F4224 */  addiu      $2, $2, %lo(D_001D5F70)
    /* 11EB0C 0021DB8C 0400438C */  lw         $3, 0x4($2)
    /* 11EB10 0021DB90 3800638C */  lw         $3, 0x38($3)
    /* 11EB14 0021DB94 03006050 */  beql       $3, $0, .L0021DBA4
    /* 11EB18 0021DB98 2401428C */   lw        $2, 0x124($2)
    /* 11EB1C 0021DB9C 93000010 */  b          .L0021DDEC
    /* 11EB20 0021DBA0 080043AC */   sw        $3, 0x8($2)
.align 2
  .L0021DBA4:
    /* 11EB24 0021DBA4 04004014 */  bnez       $2, .L0021DBB8
    /* 11EB28 0021DBA8 40CA2626 */   addiu     $6, $17, %lo(D_0013CA40)
    /* 11EB2C 0021DBAC 90000010 */  b          .L0021DDF0
    /* 11EB30 0021DBB0 FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0021DBB4:
    /* 11EB34 0021DBB4 40CA2626 */  addiu      $6, $17, %lo(D_0013CA40)
.align 2
  .L0021DBB8:
    /* 11EB38 0021DBB8 C401C28C */  lw         $2, 0x1C4($6)
    /* 11EB3C 0021DBBC 00104230 */  andi       $2, $2, 0x1000
    /* 11EB40 0021DBC0 08004010 */  beqz       $2, .L0021DBE4
    /* 11EB44 0021DBC4 4000058E */   lw        $5, 0x40($16)
    /* 11EB48 0021DBC8 03000324 */  addiu      $3, $0, 0x3
    /* 11EB4C 0021DBCC 0200A224 */  addiu      $2, $5, 0x2
    /* 11EB50 0021DBD0 1A004300 */  div        $0, $2, $3
    /* 11EB54 0021DBD4 01006050 */  beql       $3, $0, .L0021DBDC
    /* 11EB58 0021DBD8 CD010000 */   break     0, 7
.align 2
  .L0021DBDC:
    /* 11EB5C 0021DBDC 10200000 */  mfhi       $4
    /* 11EB60 0021DBE0 400004AE */  sw         $4, 0x40($16)
.align 2
  .L0021DBE4:
    /* 11EB64 0021DBE4 C401C28C */  lw         $2, 0x1C4($6)
    /* 11EB68 0021DBE8 00404230 */  andi       $2, $2, 0x4000
    /* 11EB6C 0021DBEC 08004010 */  beqz       $2, .L0021DC10
    /* 11EB70 0021DBF0 03000224 */   addiu     $2, $0, 0x3
    /* 11EB74 0021DBF4 4000038E */  lw         $3, 0x40($16)
    /* 11EB78 0021DBF8 01004050 */  beql       $2, $0, .L0021DC00
    /* 11EB7C 0021DBFC CD010000 */   break     0, 7
.align 2
  .L0021DC00:
    /* 11EB80 0021DC00 01006324 */  addiu      $3, $3, 0x1
    /* 11EB84 0021DC04 1A006200 */  div        $0, $3, $2
    /* 11EB88 0021DC08 10200000 */  mfhi       $4
    /* 11EB8C 0021DC0C 400004AE */  sw         $4, 0x40($16)
.align 2
  .L0021DC10:
    /* 11EB90 0021DC10 4000028E */  lw         $2, 0x40($16)
    /* 11EB94 0021DC14 07004554 */  bnel       $2, $5, .L0021DC34
    /* 11EB98 0021DC18 1400068E */   lw        $6, 0x14($16)
    /* 11EB9C 0021DC1C 1D00023C */  lui        $2, %hi(D_001D5F74)
    /* 11EBA0 0021DC20 745F438C */  lw         $3, %lo(D_001D5F74)($2)
    /* 11EBA4 0021DC24 8000648C */  lw         $4, 0x80($3)
    /* 11EBA8 0021DC28 10008010 */  beqz       $4, .L0021DC6C
    /* 11EBAC 0021DC2C 40CA2326 */   addiu     $3, $17, %lo(D_0013CA40)
    /* 11EBB0 0021DC30 1400068E */  lw         $6, 0x14($16)
.align 2
  .L0021DC34:
    /* 11EBB4 0021DC34 01000424 */  addiu      $4, $0, 0x1
    /* 11EBB8 0021DC38 60BB080C */  jal        func_0022ED80
    /* 11EBBC 0021DC3C 11000524 */   addiu     $5, $0, 0x11
    /* 11EBC0 0021DC40 3000038E */  lw         $3, 0x30($16)
    /* 11EBC4 0021DC44 20006330 */  andi       $3, $3, 0x20
    /* 11EBC8 0021DC48 07006010 */  beqz       $3, .L0021DC68
    /* 11EBCC 0021DC4C 1A00053C */   lui       $5, %hi(D_001A0414)
    /* 11EBD0 0021DC50 4000028E */  lw         $2, 0x40($16)
    /* 11EBD4 0021DC54 E095848F */  lw         $4, -0x6A20($28)
    /* 11EBD8 0021DC58 80100200 */  sll        $2, $2, 2
    /* 11EBDC 0021DC5C 21104400 */  addu       $2, $2, $4
    /* 11EBE0 0021DC60 0000438C */  lw         $3, 0x0($2)
    /* 11EBE4 0021DC64 1404A3AC */  sw         $3, %lo(D_001A0414)($5)
.align 2
  .L0021DC68:
    /* 11EBE8 0021DC68 40CA2326 */  addiu      $3, $17, %lo(D_0013CA40)
.align 2
  .L0021DC6C:
    /* 11EBEC 0021DC6C 1600083C */  lui        $8, %hi(D_0015EEEC)
    /* 11EBF0 0021DC70 ECEE088D */  lw         $8, %lo(D_0015EEEC)($8)
    /* 11EBF4 0021DC74 C001628C */  lw         $2, 0x1C0($3)
    /* 11EBF8 0021DC78 00204230 */  andi       $2, $2, 0x2000
    /* 11EBFC 0021DC7C 13004010 */  beqz       $2, .L0021DCCC
    /* 11EC00 0021DC80 F081868F */   lw        $6, -0x7E10($28)
    /* 11EC04 0021DC84 4000058E */  lw         $5, 0x40($16)
    /* 11EC08 0021DC88 0800A014 */  bnez       $5, .L0021DCAC
    /* 11EC0C 0021DC8C 01000224 */   addiu     $2, $0, 0x1
    /* 11EC10 0021DC90 0300C224 */  addiu      $2, $6, 0x3
    /* 11EC14 0021DC94 00040324 */  addiu      $3, $0, 0x400
    /* 11EC18 0021DC98 01044428 */  slti       $4, $2, 0x401
    /* 11EC1C 0021DC9C 0B184400 */  movn       $3, $2, $4
    /* 11EC20 0021DCA0 1600013C */  lui        $1, %hi(D_0015EEF0)
    /* 11EC24 0021DCA4 F0EE23AC */  sw         $3, %lo(D_0015EEF0)($1)
    /* 11EC28 0021DCA8 01000224 */  addiu      $2, $0, 0x1
.align 2
  .L0021DCAC:
    /* 11EC2C 0021DCAC 0800A214 */  bne        $5, $2, .L0021DCD0
    /* 11EC30 0021DCB0 40CA2326 */   addiu     $3, $17, %lo(D_0013CA40)
    /* 11EC34 0021DCB4 03000225 */  addiu      $2, $8, 0x3
    /* 11EC38 0021DCB8 00040324 */  addiu      $3, $0, 0x400
    /* 11EC3C 0021DCBC 01044428 */  slti       $4, $2, 0x401
    /* 11EC40 0021DCC0 0B184400 */  movn       $3, $2, $4
    /* 11EC44 0021DCC4 1600013C */  lui        $1, %hi(D_0015EEEC)
    /* 11EC48 0021DCC8 ECEE23AC */  sw         $3, %lo(D_0015EEEC)($1)
.align 2
  .L0021DCCC:
    /* 11EC4C 0021DCCC 40CA2326 */  addiu      $3, $17, %lo(D_0013CA40)
.align 2
  .L0021DCD0:
    /* 11EC50 0021DCD0 C001628C */  lw         $2, 0x1C0($3)
    /* 11EC54 0021DCD4 00804230 */  andi       $2, $2, 0x8000
    /* 11EC58 0021DCD8 19004010 */  beqz       $2, .L0021DD40
    /* 11EC5C 0021DCDC EC81858F */   lw        $5, -0x7E14($28)
    /* 11EC60 0021DCE0 4000048E */  lw         $4, 0x40($16)
    /* 11EC64 0021DCE4 0A008014 */  bnez       $4, .L0021DD10
    /* 11EC68 0021DCE8 01000224 */   addiu     $2, $0, 0x1
    /* 11EC6C 0021DCEC 1600023C */  lui        $2, %hi(D_0015EEF0)
    /* 11EC70 0021DCF0 F0EE428C */  lw         $2, %lo(D_0015EEF0)($2)
    /* 11EC74 0021DCF4 FFFF0324 */  addiu      $3, $0, -0x1
    /* 11EC78 0021DCF8 FDFF4224 */  addiu      $2, $2, -0x3
    /* 11EC7C 0021DCFC 2A186200 */  slt        $3, $3, $2
    /* 11EC80 0021DD00 0A100300 */  movz       $2, $0, $3
    /* 11EC84 0021DD04 1600013C */  lui        $1, %hi(D_0015EEF0)
    /* 11EC88 0021DD08 F0EE22AC */  sw         $2, %lo(D_0015EEF0)($1)
    /* 11EC8C 0021DD0C 01000224 */  addiu      $2, $0, 0x1
.align 2
  .L0021DD10:
    /* 11EC90 0021DD10 0B008214 */  bne        $4, $2, .L0021DD40
    /* 11EC94 0021DD14 EC81858F */   lw        $5, -0x7E14($28)
    /* 11EC98 0021DD18 1600023C */  lui        $2, %hi(D_0015EEEC)
    /* 11EC9C 0021DD1C ECEE428C */  lw         $2, %lo(D_0015EEEC)($2)
    /* 11ECA0 0021DD20 FFFF0324 */  addiu      $3, $0, -0x1
    /* 11ECA4 0021DD24 FDFF4224 */  addiu      $2, $2, -0x3
    /* 11ECA8 0021DD28 2A186200 */  slt        $3, $3, $2
    /* 11ECAC 0021DD2C 0A100300 */  movz       $2, $0, $3
    /* 11ECB0 0021DD30 1600013C */  lui        $1, %hi(D_0015EEEC)
    /* 11ECB4 0021DD34 ECEE22AC */  sw         $2, %lo(D_0015EEEC)($1)
    /* 11ECB8 0021DD38 1600053C */  lui        $5, %hi(D_0015EEEC)
    /* 11ECBC 0021DD3C ECEEA58C */  lw         $5, %lo(D_0015EEEC)($5)
.align 2
  .L0021DD40:
    /* 11ECC0 0021DD40 03000515 */  bne        $8, $5, .L0021DD50
    /* 11ECC4 0021DD44 F081878F */   lw        $7, -0x7E10($28)
    /* 11ECC8 0021DD48 1400C710 */  beq        $6, $7, .L0021DD9C
    /* 11ECCC 0021DD4C 40CA2326 */   addiu     $3, $17, %lo(D_0013CA40)
.align 2
  .L0021DD50:
    /* 11ECD0 0021DD50 0A000424 */  addiu      $4, $0, 0xA
    /* 11ECD4 0021DD54 C0180700 */  sll        $3, $7, 3
    /* 11ECD8 0021DD58 1A006400 */  div        $0, $3, $4
    /* 11ECDC 0021DD5C 1400023C */  lui        $2, %hi(D_0013E650)
    /* 11ECE0 0021DD60 23186700 */  subu       $3, $3, $7
    /* 11ECE4 0021DD64 50E64224 */  addiu      $2, $2, %lo(D_0013E650)
    /* 11ECE8 0021DD68 01008050 */  beql       $4, $0, .L0021DD70
    /* 11ECEC 0021DD6C CD010000 */   break     0, 7
.align 2
  .L0021DD70:
    /* 11ECF0 0021DD70 500045AC */  sw         $5, 0x50($2)
    /* 11ECF4 0021DD74 4C0045AC */  sw         $5, 0x4C($2)
    /* 11ECF8 0021DD78 0A000524 */  addiu      $5, $0, 0xA
    /* 11ECFC 0021DD7C 12300000 */  mflo       $6
    /* 11ED00 0021DD80 1A006400 */  div        $0, $3, $4
    /* 11ED04 0021DD84 480046AC */  sw         $6, 0x48($2)
    /* 11ED08 0021DD88 12180000 */  mflo       $3
    /* 11ED0C 0021DD8C 540043AC */  sw         $3, 0x54($2)
    /* 11ED10 0021DD90 5C0047AC */  sw         $7, 0x5C($2)
    /* 11ED14 0021DD94 580043AC */  sw         $3, 0x58($2)
    /* 11ED18 0021DD98 40CA2326 */  addiu      $3, $17, %lo(D_0013CA40)
.align 2
  .L0021DD9C:
    /* 11ED1C 0021DD9C C401628C */  lw         $2, 0x1C4($3)
    /* 11ED20 0021DDA0 40004230 */  andi       $2, $2, 0x40
    /* 11ED24 0021DDA4 11004010 */  beqz       $2, .L0021DDEC
    /* 11ED28 0021DDA8 02000224 */   addiu     $2, $0, 0x2
    /* 11ED2C 0021DDAC 4000038E */  lw         $3, 0x40($16)
    /* 11ED30 0021DDB0 08006254 */  bnel       $3, $2, .L0021DDD4
    /* 11ED34 0021DDB4 E881848F */   lw        $4, -0x7E18($28)
    /* 11ED38 0021DDB8 1600023C */  lui        $2, %hi(D_0015EEE8)
    /* 11ED3C 0021DDBC E8EE428C */  lw         $2, %lo(D_0015EEE8)($2)
    /* 11ED40 0021DDC0 0100422C */  sltiu      $2, $2, 0x1
    /* 11ED44 0021DDC4 1600013C */  lui        $1, %hi(D_0015EEE8)
    /* 11ED48 0021DDC8 E8EE22AC */  sw         $2, %lo(D_0015EEE8)($1)
    /* 11ED4C 0021DDCC 1600043C */  lui        $4, %hi(D_0015EEE8)
    /* 11ED50 0021DDD0 E8EE848C */  lw         $4, %lo(D_0015EEE8)($4)
.align 2
  .L0021DDD4:
    /* 11ED54 0021DDD4 E0B8040C */  jal        func_0012E380
    /* 11ED58 0021DDD8 0100842C */   sltiu     $4, $4, 0x1
    /* 11ED5C 0021DDDC 1400068E */  lw         $6, 0x14($16)
    /* 11ED60 0021DDE0 2D200000 */  daddu      $4, $0, $0
    /* 11ED64 0021DDE4 60BB080C */  jal        func_0022ED80
    /* 11ED68 0021DDE8 11000524 */   addiu     $5, $0, 0x11
.align 2
  .L0021DDEC:
    /* 11ED6C 0021DDEC 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0021DDF0:
    /* 11ED70 0021DDF0 2000BF7B */  lq         $31, 0x20($29)
    /* 11ED74 0021DDF4 1000B17B */  lq         $17, 0x10($29)
    /* 11ED78 0021DDF8 0000B07B */  lq         $16, 0x0($29)
    /* 11ED7C 0021DDFC 0800E003 */  jr         $31
    /* 11ED80 0021DE00 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0021DB30
    /* 11ED84 0021DE04 00000000 */  nop
