.align 3
nonmatching func_0022CC40, 0x274

glabel func_0022CC40
    /* 12DBC0 0022CC40 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 12DBC4 0022CC44 A000BE7F */  sq         $fp, 0xA0($sp)
    /* 12DBC8 0022CC48 8000B67F */  sq         $s6, 0x80($sp)
    /* 12DBCC 0022CC4C 2DF0A003 */  daddu      $fp, $sp, $zero
    /* 12DBD0 0022CC50 6000B47F */  sq         $s4, 0x60($sp)
    /* 12DBD4 0022CC54 B000BF7F */  sq         $ra, 0xB0($sp)
    /* 12DBD8 0022CC58 2DA08000 */  daddu      $s4, $a0, $zero
    /* 12DBDC 0022CC5C 9000B77F */  sq         $s7, 0x90($sp)
    /* 12DBE0 0022CC60 7000B57F */  sq         $s5, 0x70($sp)
    /* 12DBE4 0022CC64 5000B37F */  sq         $s3, 0x50($sp)
    /* 12DBE8 0022CC68 4000B27F */  sq         $s2, 0x40($sp)
    /* 12DBEC 0022CC6C 3000B17F */  sq         $s1, 0x30($sp)
    /* 12DBF0 0022CC70 2000B07F */  sq         $s0, 0x20($sp)
    /* 12DBF4 0022CC74 0000858E */  lw         $a1, 0x0($s4)
    /* 12DBF8 0022CC78 C0100500 */  sll        $v0, $a1, 3
    /* 12DBFC 0022CC7C C2100200 */  srl        $v0, $v0, 3
    /* 12DC00 0022CC80 0F004224 */  addiu      $v0, $v0, 0xF
    /* 12DC04 0022CC84 02110200 */  srl        $v0, $v0, 4
    /* 12DC08 0022CC88 00110200 */  sll        $v0, $v0, 4
    /* 12DC0C 0022CC8C 23E8A203 */  subu       $sp, $sp, $v0
    /* 12DC10 0022CC90 7B00A010 */  beqz       $a1, .L0022CE80
    /* 12DC14 0022CC94 2DB0A003 */   daddu     $s6, $sp, $zero
    /* 12DC18 0022CC98 10008426 */  addiu      $a0, $s4, 0x10
    /* 12DC1C 0022CC9C F8B5080C */  jal        func_0022D7E0
    /* 12DC20 0022CCA0 2D30A003 */   daddu     $a2, $sp, $zero
    /* 12DC24 0022CCA4 1600043C */  lui        $a0, %hi(D_00161000)
    /* 12DC28 0022CCA8 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* 12DC2C 0022CCAC 0030023C */  lui        $v0, (0x30000007 >> 16)
    /* 12DC30 0022CCB0 07004234 */  ori        $v0, $v0, (0x30000007 & 0xFFFF)
    /* 12DC34 0022CCB4 1400033C */  lui        $v1, %hi(D_0013D1F0)
    /* 12DC38 0022CCB8 000082AC */  sw         $v0, 0x0($a0)
    /* 12DC3C 0022CCBC F0D16324 */  addiu      $v1, $v1, %lo(D_0013D1F0)
    /* 12DC40 0022CCC0 0050043C */  lui        $a0, (0x50000007 >> 16)
    /* 12DC44 0022CCC4 01000624 */  addiu      $a2, $zero, 0x1
    /* 12DC48 0022CCC8 1600053C */  lui        $a1, %hi(D_00161000)
    /* 12DC4C 0022CCCC 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* 12DC50 0022CCD0 07008434 */  ori        $a0, $a0, (0x50000007 & 0xFFFF)
    /* 12DC54 0022CCD4 0400A3AC */  sw         $v1, 0x4($a1)
    /* 12DC58 0022CCD8 1600023C */  lui        $v0, %hi(D_00161000)
    /* 12DC5C 0022CCDC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 12DC60 0022CCE0 080040AC */  sw         $zero, 0x8($v0)
    /* 12DC64 0022CCE4 1600033C */  lui        $v1, %hi(D_00161000)
    /* 12DC68 0022CCE8 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* 12DC6C 0022CCEC 0C0064AC */  sw         $a0, 0xC($v1)
    /* 12DC70 0022CCF0 1600023C */  lui        $v0, %hi(D_00161000)
    /* 12DC74 0022CCF4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 12DC78 0022CCF8 1098838F */  lw         $v1, -0x67F0($gp)
    /* 12DC7C 0022CCFC 0000A493 */  lbu        $a0, 0x0($sp)
    /* 12DC80 0022CD00 10004224 */  addiu      $v0, $v0, 0x10
    /* 12DC84 0022CD04 2318C300 */  subu       $v1, $a2, $v1
    /* 12DC88 0022CD08 1600013C */  lui        $at, %hi(D_00161000)
    /* 12DC8C 0022CD0C 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* 12DC90 0022CD10 0A008614 */  bne        $a0, $a2, .L0022CD3C
    /* 12DC94 0022CD14 109883AF */   sw        $v1, -0x67F0($gp)
    /* 12DC98 0022CD18 80100300 */  sll        $v0, $v1, 2
    /* 12DC9C 0022CD1C 2E008596 */  lhu        $a1, 0x2E($s4)
    /* 12DCA0 0022CD20 08988327 */  addiu      $v1, $gp, -0x67F8
    /* 12DCA4 0022CD24 2000848E */  lw         $a0, 0x20($s4)
    /* 12DCA8 0022CD28 21104300 */  addu       $v0, $v0, $v1
    /* 12DCAC 0022CD2C 002C0500 */  sll        $a1, $a1, 16
    /* 12DCB0 0022CD30 0000468C */  lw         $a2, 0x0($v0)
    /* 12DCB4 0022CD34 8430080C */  jal        func_0020C210
    /* 12DCB8 0022CD38 032D0500 */   sra       $a1, $a1, 20
.align 2
  .L0022CD3C:
    /* 12DCBC 0022CD3C 0000828E */  lw         $v0, 0x0($s4)
    /* 12DCC0 0022CD40 41004018 */  blez       $v0, .L0022CE48
    /* 12DCC4 0022CD44 2D800000 */   daddu     $s0, $zero, $zero
    /* 12DCC8 0022CD48 01001524 */  addiu      $s5, $zero, 0x1
    /* 12DCCC 0022CD4C 08989727 */  addiu      $s7, $gp, -0x67F8
    /* 12DCD0 0022CD50 2118D002 */  addu       $v1, $s6, $s0
    /* 12DCD4 0022CD54 00000000 */  nop
.align 2
  .L0022CD58:
    /* 12DCD8 0022CD58 00006290 */  lbu        $v0, 0x0($v1)
    /* 12DCDC 0022CD5C 03005514 */  bne        $v0, $s5, .L0022CD6C
    /* 12DCE0 0022CD60 2D886000 */   daddu     $s1, $v1, $zero
    /* 12DCE4 0022CD64 8C30080C */  jal        func_0020C230
    /* 12DCE8 0022CD68 00000000 */   nop
.align 2
  .L0022CD6C:
    /* 12DCEC 0022CD6C 1098828F */  lw         $v0, -0x67F0($gp)
    /* 12DCF0 0022CD70 01000326 */  addiu      $v1, $s0, 0x1
    /* 12DCF4 0022CD74 0000848E */  lw         $a0, 0x0($s4)
    /* 12DCF8 0022CD78 2D986000 */  daddu      $s3, $v1, $zero
    /* 12DCFC 0022CD7C 2328A202 */  subu       $a1, $s5, $v0
    /* 12DD00 0022CD80 2A186400 */  slt        $v1, $v1, $a0
    /* 12DD04 0022CD84 0F006010 */  beqz       $v1, .L0022CDC4
    /* 12DD08 0022CD88 109885AF */   sw        $a1, -0x67F0($gp)
    /* 12DD0C 0022CD8C 2110D302 */  addu       $v0, $s6, $s3
    /* 12DD10 0022CD90 00004390 */  lbu        $v1, 0x0($v0)
    /* 12DD14 0022CD94 0C007554 */  bnel       $v1, $s5, .L0022CDC8
    /* 12DD18 0022CD98 00002492 */   lbu       $a0, 0x0($s1)
    /* 12DD1C 0022CD9C 40111300 */  sll        $v0, $s3, 5
    /* 12DD20 0022CDA0 80180500 */  sll        $v1, $a1, 2
    /* 12DD24 0022CDA4 21108202 */  addu       $v0, $s4, $v0
    /* 12DD28 0022CDA8 21187700 */  addu       $v1, $v1, $s7
    /* 12DD2C 0022CDAC 2E004594 */  lhu        $a1, 0x2E($v0)
    /* 12DD30 0022CDB0 2000448C */  lw         $a0, 0x20($v0)
    /* 12DD34 0022CDB4 002C0500 */  sll        $a1, $a1, 16
    /* 12DD38 0022CDB8 0000668C */  lw         $a2, 0x0($v1)
    /* 12DD3C 0022CDBC 8430080C */  jal        func_0020C210
    /* 12DD40 0022CDC0 032D0500 */   sra       $a1, $a1, 20
.align 2
  .L0022CDC4:
    /* 12DD44 0022CDC4 00002492 */  lbu        $a0, 0x0($s1)
.align 2
  .L0022CDC8:
    /* 12DD48 0022CDC8 1B009554 */  bnel       $a0, $s5, .L0022CE38
    /* 12DD4C 0022CDCC 0000828E */   lw        $v0, 0x0($s4)
    /* 12DD50 0022CDD0 1098838F */  lw         $v1, -0x67F0($gp)
    /* 12DD54 0022CDD4 40111000 */  sll        $v0, $s0, 5
    /* 12DD58 0022CDD8 21808202 */  addu       $s0, $s4, $v0
    /* 12DD5C 0022CDDC 0070053C */  lui        $a1, (0x70002000 >> 16)
    /* 12DD60 0022CDE0 23188300 */  subu       $v1, $a0, $v1
    /* 12DD64 0022CDE4 2C000786 */  lh         $a3, 0x2C($s0)
    /* 12DD68 0022CDE8 80180300 */  sll        $v1, $v1, 2
    /* 12DD6C 0022CDEC 2A000286 */  lh         $v0, 0x2A($s0)
    /* 12DD70 0022CDF0 21187700 */  addu       $v1, $v1, $s7
    /* 12DD74 0022CDF4 28000886 */  lh         $t0, 0x28($s0)
    /* 12DD78 0022CDF8 0000648C */  lw         $a0, 0x0($v1)
    /* 12DD7C 0022CDFC 0020A534 */  ori        $a1, $a1, (0x70002000 & 0xFFFF)
    /* 12DD80 0022CE00 24000686 */  lh         $a2, 0x24($s0)
    /* 12DD84 0022CE04 21888700 */  addu       $s1, $a0, $a3
    /* 12DD88 0022CE08 21908200 */  addu       $s2, $a0, $v0
    /* 12DD8C 0022CE0C ABB4080C */  jal        func_0022D2AC
    /* 12DD90 0022CE10 21208800 */   addu      $a0, $a0, $t0
    /* 12DD94 0022CE14 08004054 */  bnel       $v0, $zero, .L0022CE38
    /* 12DD98 0022CE18 0000828E */   lw        $v0, 0x0($s4)
    /* 12DD9C 0022CE1C 0070073C */  lui        $a3, (0x70002000 >> 16)
    /* 12DDA0 0022CE20 26000486 */  lh         $a0, 0x26($s0)
    /* 12DDA4 0022CE24 2D282002 */  daddu      $a1, $s1, $zero
    /* 12DDA8 0022CE28 2D304002 */  daddu      $a2, $s2, $zero
    /* 12DDAC 0022CE2C FEB4080C */  jal        func_0022D3F8
    /* 12DDB0 0022CE30 0020E734 */   ori       $a3, $a3, (0x70002000 & 0xFFFF)
    /* 12DDB4 0022CE34 0000828E */  lw         $v0, 0x0($s4)
.align 2
  .L0022CE38:
    /* 12DDB8 0022CE38 2D806002 */  daddu      $s0, $s3, $zero
    /* 12DDBC 0022CE3C 2A100202 */  slt        $v0, $s0, $v0
    /* 12DDC0 0022CE40 C5FF4014 */  bnez       $v0, .L0022CD58
    /* 12DDC4 0022CE44 2118D002 */   addu      $v1, $s6, $s0
.align 2
  .L0022CE48:
    /* 12DDC8 0022CE48 0300053C */  lui        $a1, (0x3180B >> 16)
    /* 12DDCC 0022CE4C 0B18A534 */  ori        $a1, $a1, (0x3180B & 0xFFFF)
    /* 12DDD0 0022CE50 26D3080C */  jal        func_00234C98
    /* 12DDD4 0022CE54 47000424 */   addiu     $a0, $zero, 0x47
    /* 12DDD8 0022CE58 1600053C */  lui        $a1, %hi(D_0015EF88)
    /* 12DDDC 0022CE5C 88EFA58C */  lw         $a1, %lo(D_0015EF88)($a1)
    /* 12DDE0 0022CE60 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 12DDE4 0022CE64 00800334 */  ori        $v1, $zero, 0x8000
    /* 12DDE8 0022CE68 781C0300 */  dsll       $v1, $v1, 17
    /* 12DDEC 0022CE6C 4E000424 */  addiu      $a0, $zero, 0x4E
    /* 12DDF0 0022CE70 432B0500 */  sra        $a1, $a1, 13
    /* 12DDF4 0022CE74 2528A200 */  or         $a1, $a1, $v0
    /* 12DDF8 0022CE78 26D3080C */  jal        func_00234C98
    /* 12DDFC 0022CE7C 2528A300 */   or        $a1, $a1, $v1
.align 2
  .L0022CE80:
    /* 12DE00 0022CE80 2DE8C003 */  daddu      $sp, $fp, $zero
    /* 12DE04 0022CE84 B000BF7B */  lq         $ra, 0xB0($sp)
    /* 12DE08 0022CE88 A000BE7B */  lq         $fp, 0xA0($sp)
    /* 12DE0C 0022CE8C 9000B77B */  lq         $s7, 0x90($sp)
    /* 12DE10 0022CE90 8000B67B */  lq         $s6, 0x80($sp)
    /* 12DE14 0022CE94 7000B57B */  lq         $s5, 0x70($sp)
    /* 12DE18 0022CE98 6000B47B */  lq         $s4, 0x60($sp)
    /* 12DE1C 0022CE9C 5000B37B */  lq         $s3, 0x50($sp)
    /* 12DE20 0022CEA0 4000B27B */  lq         $s2, 0x40($sp)
    /* 12DE24 0022CEA4 3000B17B */  lq         $s1, 0x30($sp)
    /* 12DE28 0022CEA8 2000B07B */  lq         $s0, 0x20($sp)
    /* 12DE2C 0022CEAC 0800E003 */  jr         $ra
    /* 12DE30 0022CEB0 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_0022CC40
    /* 12DE34 0022CEB4 00000000 */  nop
