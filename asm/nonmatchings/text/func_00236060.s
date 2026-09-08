.align 3
/* Handwritten function */
nonmatching func_00236060, 0x250

glabel func_00236060
    /* 136FE0 00236060 024A0400 */  srl        $t1, $a0, 8
    /* 136FE4 00236064 00A3988F */  lw         $t8, -0x5D00($gp)
    /* 136FE8 00236068 609B8B7B */  lq         $t3, -0x64A0($gp)
    /* 136FEC 0023606C 709B8C7B */  lq         $t4, -0x6490($gp)
    /* 136FF0 00236070 809B8D7B */  lq         $t5, -0x6480($gp)
    /* 136FF4 00236074 909B8E7B */  lq         $t6, -0x6470($gp)
    /* 136FF8 00236078 A09B8F7B */  lq         $t7, -0x6460($gp)
    /* 136FFC 0023607C 0070013C */  lui        $at, (0x70002000 >> 16)
    /* 137000 00236080 003C2720 */  addi       $a3, $at, (0x70003C00 & 0xFFFF) /* handwritten instruction */
    /* 137004 00236084 00202A20 */  addi       $t2, $at, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 137008 00236088 94A2868F */  lw         $a2, -0x5D6C($gp)
    /* 13700C 0023608C 1E00053C */  lui        $a1, %hi(D_001E0C00)
    /* 137010 00236090 000CA524 */  addiu      $a1, $a1, %lo(D_001E0C00)
    /* 137014 00236094 2030C700 */  add        $a2, $a2, $a3 /* handwritten instruction */
    /* 137018 00236098 00004121 */  addi       $at, $t2, 0x0 /* handwritten instruction */
    /* 13701C 0023609C 00034221 */  addi       $v0, $t2, 0x300 /* handwritten instruction */
.align 2
  .L002360A0:
    /* 137020 002360A0 0000207C */  sq         $zero, 0x0($at)
    /* 137024 002360A4 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 137028 002360A8 00000000 */  nop
    /* 13702C 002360AC 00000000 */  nop
    /* 137030 002360B0 00000000 */  nop
    /* 137034 002360B4 FAFF2214 */  bne        $at, $v0, .L002360A0
    /* 137038 002360B8 F0FF207C */   sq        $zero, -0x10($at)
.align 2
  alabel func_002360BC
    /* 13703C 002360BC 5D00E610 */  beq        $a3, $a2, func_00236234
    /* 137040 002360C0 04004A21 */   addi      $t2, $t2, 0x4 /* handwritten instruction */
    /* 137044 002360C4 0000E880 */  lb         $t0, 0x0($a3)
    /* 137048 002360C8 0100E720 */  addi       $a3, $a3, 0x1 /* handwritten instruction */
    /* 13704C 002360CC 0000A48C */  lw         $a0, 0x0($a1)
    /* 137050 002360D0 0400A520 */  addi       $a1, $a1, 0x4 /* handwritten instruction */
    /* 137054 002360D4 F9FF0011 */  beqz       $t0, func_002360BC
    /* 137058 002360D8 02000131 */   andi      $at, $t0, 0x2
    /* 13705C 002360DC 021F0400 */  srl        $v1, $a0, 28
    /* 137060 002360E0 00210400 */  sll        $a0, $a0, 4
    /* 137064 002360E4 27002010 */  beqz       $at, .L00236184
    /* 137068 002360E8 02210400 */   srl       $a0, $a0, 4
    /* 13706C 002360EC 00000B7F */  sq         $t3, 0x0($t8)
    /* 137070 002360F0 10000C7F */  sq         $t4, 0x10($t8)
    /* 137074 002360F4 20000D7F */  sq         $t5, 0x20($t8)
    /* 137078 002360F8 30000E7F */  sq         $t6, 0x30($t8)
    /* 13707C 002360FC 4000007F */  sq         $zero, 0x40($t8)
    /* 137080 00236100 53000120 */  addi       $at, $zero, 0x53 /* handwritten instruction */
    /* 137084 00236104 50000F7F */  sq         $t7, 0x50($t8)
    /* 137088 00236108 480001AF */  sw         $at, 0x48($t8)
    /* 13708C 0023610C 240009A7 */  sh         $t1, 0x24($t8)
    /* 137090 00236110 FAFF6220 */  addi       $v0, $v1, -0x6 /* handwritten instruction */
    /* 137094 00236114 03004018 */  blez       $v0, .L00236124
    /* 137098 00236118 01000120 */   addi      $at, $zero, 0x1 /* handwritten instruction */
    /* 13709C 0023611C 04104100 */  sllv       $v0, $at, $v0
    /* 1370A0 00236120 260002A3 */  sb         $v0, 0x26($t8)
.align 2
  .L00236124:
    /* 1370A4 00236124 04086100 */  sllv       $at, $at, $v1
    /* 1370A8 00236128 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 1370AC 0023612C 300001AF */  sw         $at, 0x30($t8)
    /* 1370B0 00236130 04106200 */  sllv       $v0, $v0, $v1
    /* 1370B4 00236134 340001AF */  sw         $at, 0x34($t8)
    /* 1370B8 00236138 04106200 */  sllv       $v0, $v0, $v1
    /* 1370BC 0023613C 00800134 */  ori        $at, $zero, 0x8000
    /* 1370C0 00236140 02110200 */  srl        $v0, $v0, 4
    /* 1370C4 00236144 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 1370C8 00236148 500001AF */  sw         $at, 0x50($t8)
    /* 1370CC 0023614C 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 1370D0 00236150 6000007F */  sq         $zero, 0x60($t8)
    /* 1370D4 00236154 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 1370D8 00236158 640004AF */  sw         $a0, 0x64($t8)
    /* 1370DC 0023615C 600001AF */  sw         $at, 0x60($t8)
    /* 1370E0 00236160 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 1370E4 00236164 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 1370E8 00236168 02110200 */  srl        $v0, $v0, 4
    /* 1370EC 0023616C FCFF49A5 */  sh         $t1, -0x4($t2)
    /* 1370F0 00236170 20482201 */  add        $t1, $t1, $v0 /* handwritten instruction */
    /* 1370F4 00236174 6C0001AF */  sw         $at, 0x6C($t8)
    /* 1370F8 00236178 05C02221 */  addi       $v0, $t1, -0x3FFB /* handwritten instruction */
    /* 1370FC 0023617C 4A00401C */  bgtz       $v0, .L002362A8
    /* 137100 00236180 70001823 */   addi      $t8, $t8, 0x70 /* handwritten instruction */
.align 2
  .L00236184:
    /* 137104 00236184 00000B7F */  sq         $t3, 0x0($t8)
    /* 137108 00236188 10000C7F */  sq         $t4, 0x10($t8)
    /* 13710C 0023618C 20000D7F */  sq         $t5, 0x20($t8)
    /* 137110 00236190 30000E7F */  sq         $t6, 0x30($t8)
    /* 137114 00236194 4000007F */  sq         $zero, 0x40($t8)
    /* 137118 00236198 53000120 */  addi       $at, $zero, 0x53 /* handwritten instruction */
    /* 13711C 0023619C 50000F7F */  sq         $t7, 0x50($t8)
    /* 137120 002361A0 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 137124 002361A4 480001AF */  sw         $at, 0x48($t8)
    /* 137128 002361A8 00000000 */  nop
    /* 13712C 002361AC 240009A7 */  sh         $t1, 0x24($t8)
    /* 137130 002361B0 FAFF6220 */  addi       $v0, $v1, -0x6 /* handwritten instruction */
    /* 137134 002361B4 03004018 */  blez       $v0, .L002361C4
    /* 137138 002361B8 01000120 */   addi      $at, $zero, 0x1 /* handwritten instruction */
    /* 13713C 002361BC 04104100 */  sllv       $v0, $at, $v0
    /* 137140 002361C0 260002A3 */  sb         $v0, 0x26($t8)
.align 2
  .L002361C4:
    /* 137144 002361C4 04086100 */  sllv       $at, $at, $v1
    /* 137148 002361C8 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 13714C 002361CC 300001AF */  sw         $at, 0x30($t8)
    /* 137150 002361D0 04106200 */  sllv       $v0, $v0, $v1
    /* 137154 002361D4 340001AF */  sw         $at, 0x34($t8)
    /* 137158 002361D8 04106200 */  sllv       $v0, $v0, $v1
    /* 13715C 002361DC 80080200 */  sll        $at, $v0, 2
    /* 137160 002361E0 02110200 */  srl        $v0, $v0, 4
    /* 137164 002361E4 20208100 */  add        $a0, $a0, $at /* handwritten instruction */
    /* 137168 002361E8 00800134 */  ori        $at, $zero, 0x8000
    /* 13716C 002361EC 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 137170 002361F0 500001AF */  sw         $at, 0x50($t8)
    /* 137174 002361F4 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 137178 002361F8 6000007F */  sq         $zero, 0x60($t8)
    /* 13717C 002361FC 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 137180 00236200 640004AF */  sw         $a0, 0x64($t8)
    /* 137184 00236204 600001AF */  sw         $at, 0x60($t8)
    /* 137188 00236208 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 13718C 0023620C 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 137190 00236210 02110200 */  srl        $v0, $v0, 4
    /* 137194 00236214 FEFF49A5 */  sh         $t1, -0x2($t2)
    /* 137198 00236218 20482201 */  add        $t1, $t1, $v0 /* handwritten instruction */
    /* 13719C 0023621C 6C0001AF */  sw         $at, 0x6C($t8)
    /* 1371A0 00236220 05C02221 */  addi       $v0, $t1, -0x3FFB /* handwritten instruction */
    /* 1371A4 00236224 2000401C */  bgtz       $v0, .L002362A8
    /* 1371A8 00236228 70001823 */   addi      $t8, $t8, 0x70 /* handwritten instruction */
    /* 1371AC 0023622C 2FD80808 */  j          func_002360BC
    /* 1371B0 00236230 00000000 */   nop
.align 2
  alabel func_00236234
    /* 1371B4 00236234 00A398AF */  sw         $t8, -0x5D00($gp)
    /* 1371B8 00236238 00000000 */  nop
    /* 1371BC 0023623C 0010043C */  lui        $a0, (0x1000D000 >> 16)
    /* 1371C0 00236240 1E00023C */  lui        $v0, %hi(D_001E0F00)
    /* 1371C4 00236244 000F4224 */  addiu      $v0, $v0, %lo(D_001E0F00)
    /* 1371C8 00236248 00D08434 */  ori        $a0, $a0, (0x1000D000 & 0xFFFF)
    /* 1371CC 0023624C 100082AC */  sw         $v0, 0x10($a0)
    /* 1371D0 00236250 00200220 */  addi       $v0, $zero, 0x2000 /* handwritten instruction */
    /* 1371D4 00236254 800082AC */  sw         $v0, 0x80($a0)
    /* 1371D8 00236258 30000220 */  addi       $v0, $zero, 0x30 /* handwritten instruction */
    /* 1371DC 0023625C 200082AC */  sw         $v0, 0x20($a0)
    /* 1371E0 00236260 00010234 */  ori        $v0, $zero, 0x100
    /* 1371E4 00236264 000082AC */  sw         $v0, 0x0($a0)
    /* 1371E8 00236268 00000000 */  nop
.align 2
  alabel func_0023626C
    /* 1371EC 0023626C 0000838C */  lw         $v1, 0x0($a0)
    /* 1371F0 00236270 00016330 */  andi       $v1, $v1, 0x100
    /* 1371F4 00236274 0A006010 */  beqz       $v1, .L002362A0
    /* 1371F8 00236278 10000320 */   addi      $v1, $zero, 0x10 /* handwritten instruction */
.align 2
  .L0023627C:
    /* 1371FC 0023627C 00000000 */  nop
    /* 137200 00236280 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 137204 00236284 00000000 */  nop
    /* 137208 00236288 00000000 */  nop
    /* 13720C 0023628C 00000000 */  nop
    /* 137210 00236290 FAFF6014 */  bnez       $v1, .L0023627C
    /* 137214 00236294 00000000 */   nop
    /* 137218 00236298 9BD80808 */  j          func_0023626C
    /* 13721C 0023629C 00000000 */   nop
.align 2
  .L002362A0:
    /* 137220 002362A0 0800E003 */  jr         $ra
    /* 137224 002362A4 00120900 */   sll       $v0, $t1, 8
.align 2
  .L002362A8:
    /* 137228 002362A8 8DD80808 */  j          func_00236234
    /* 13722C 002362AC 90FF1823 */   addi      $t8, $t8, -0x70 /* handwritten instruction */
endlabel func_00236060
