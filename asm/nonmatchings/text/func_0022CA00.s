.align 3
nonmatching func_0022CA00, 0x23C

glabel func_0022CA00
    /* 12D980 0022CA00 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 12D984 0022CA04 A000BE7F */  sq         $fp, 0xA0($sp)
    /* 12D988 0022CA08 8000B67F */  sq         $s6, 0x80($sp)
    /* 12D98C 0022CA0C 2DF0A003 */  daddu      $fp, $sp, $zero
    /* 12D990 0022CA10 6000B47F */  sq         $s4, 0x60($sp)
    /* 12D994 0022CA14 B000BF7F */  sq         $ra, 0xB0($sp)
    /* 12D998 0022CA18 2DA08000 */  daddu      $s4, $a0, $zero
    /* 12D99C 0022CA1C 9000B77F */  sq         $s7, 0x90($sp)
    /* 12D9A0 0022CA20 7000B57F */  sq         $s5, 0x70($sp)
    /* 12D9A4 0022CA24 5000B37F */  sq         $s3, 0x50($sp)
    /* 12D9A8 0022CA28 4000B27F */  sq         $s2, 0x40($sp)
    /* 12D9AC 0022CA2C 3000B17F */  sq         $s1, 0x30($sp)
    /* 12D9B0 0022CA30 2000B07F */  sq         $s0, 0x20($sp)
    /* 12D9B4 0022CA34 0000858E */  lw         $a1, 0x0($s4)
    /* 12D9B8 0022CA38 C0100500 */  sll        $v0, $a1, 3
    /* 12D9BC 0022CA3C C2100200 */  srl        $v0, $v0, 3
    /* 12D9C0 0022CA40 0F004224 */  addiu      $v0, $v0, 0xF
    /* 12D9C4 0022CA44 02110200 */  srl        $v0, $v0, 4
    /* 12D9C8 0022CA48 00110200 */  sll        $v0, $v0, 4
    /* 12D9CC 0022CA4C 23E8A203 */  subu       $sp, $sp, $v0
    /* 12D9D0 0022CA50 6D00A010 */  beqz       $a1, .L0022CC08
    /* 12D9D4 0022CA54 2DB0A003 */   daddu     $s6, $sp, $zero
    /* 12D9D8 0022CA58 10008426 */  addiu      $a0, $s4, 0x10
    /* 12D9DC 0022CA5C F8B5080C */  jal        func_0022D7E0
    /* 12D9E0 0022CA60 2D30A003 */   daddu     $a2, $sp, $zero
    /* 12D9E4 0022CA64 1600043C */  lui        $a0, %hi(D_00161000)
    /* 12D9E8 0022CA68 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* 12D9EC 0022CA6C 0030023C */  lui        $v0, (0x30000007 >> 16)
    /* 12D9F0 0022CA70 07004234 */  ori        $v0, $v0, (0x30000007 & 0xFFFF)
    /* 12D9F4 0022CA74 1400033C */  lui        $v1, %hi(D_0013D260)
    /* 12D9F8 0022CA78 000082AC */  sw         $v0, 0x0($a0)
    /* 12D9FC 0022CA7C 60D26324 */  addiu      $v1, $v1, %lo(D_0013D260)
    /* 12DA00 0022CA80 0050043C */  lui        $a0, (0x50000007 >> 16)
    /* 12DA04 0022CA84 01000624 */  addiu      $a2, $zero, 0x1
    /* 12DA08 0022CA88 1600053C */  lui        $a1, %hi(D_00161000)
    /* 12DA0C 0022CA8C 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* 12DA10 0022CA90 07008434 */  ori        $a0, $a0, (0x50000007 & 0xFFFF)
    /* 12DA14 0022CA94 0400A3AC */  sw         $v1, 0x4($a1)
    /* 12DA18 0022CA98 1600023C */  lui        $v0, %hi(D_00161000)
    /* 12DA1C 0022CA9C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 12DA20 0022CAA0 080040AC */  sw         $zero, 0x8($v0)
    /* 12DA24 0022CAA4 1600033C */  lui        $v1, %hi(D_00161000)
    /* 12DA28 0022CAA8 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* 12DA2C 0022CAAC 0C0064AC */  sw         $a0, 0xC($v1)
    /* 12DA30 0022CAB0 1600023C */  lui        $v0, %hi(D_00161000)
    /* 12DA34 0022CAB4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 12DA38 0022CAB8 1098838F */  lw         $v1, -0x67F0($gp)
    /* 12DA3C 0022CABC 0000A493 */  lbu        $a0, 0x0($sp)
    /* 12DA40 0022CAC0 10004224 */  addiu      $v0, $v0, 0x10
    /* 12DA44 0022CAC4 2318C300 */  subu       $v1, $a2, $v1
    /* 12DA48 0022CAC8 1600013C */  lui        $at, %hi(D_00161000)
    /* 12DA4C 0022CACC 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* 12DA50 0022CAD0 0A008614 */  bne        $a0, $a2, .L0022CAFC
    /* 12DA54 0022CAD4 109883AF */   sw        $v1, -0x67F0($gp)
    /* 12DA58 0022CAD8 80100300 */  sll        $v0, $v1, 2
    /* 12DA5C 0022CADC 2E008596 */  lhu        $a1, 0x2E($s4)
    /* 12DA60 0022CAE0 08988327 */  addiu      $v1, $gp, -0x67F8
    /* 12DA64 0022CAE4 2000848E */  lw         $a0, 0x20($s4)
    /* 12DA68 0022CAE8 21104300 */  addu       $v0, $v0, $v1
    /* 12DA6C 0022CAEC 002C0500 */  sll        $a1, $a1, 16
    /* 12DA70 0022CAF0 0000468C */  lw         $a2, 0x0($v0)
    /* 12DA74 0022CAF4 8430080C */  jal        func_0020C210
    /* 12DA78 0022CAF8 032D0500 */   sra       $a1, $a1, 20
.align 2
  .L0022CAFC:
    /* 12DA7C 0022CAFC 0000828E */  lw         $v0, 0x0($s4)
    /* 12DA80 0022CB00 41004018 */  blez       $v0, .L0022CC08
    /* 12DA84 0022CB04 2D800000 */   daddu     $s0, $zero, $zero
    /* 12DA88 0022CB08 01001524 */  addiu      $s5, $zero, 0x1
    /* 12DA8C 0022CB0C 08989727 */  addiu      $s7, $gp, -0x67F8
    /* 12DA90 0022CB10 2118D002 */  addu       $v1, $s6, $s0
    /* 12DA94 0022CB14 00000000 */  nop
.align 2
  .L0022CB18:
    /* 12DA98 0022CB18 00006290 */  lbu        $v0, 0x0($v1)
    /* 12DA9C 0022CB1C 03005514 */  bne        $v0, $s5, .L0022CB2C
    /* 12DAA0 0022CB20 2D886000 */   daddu     $s1, $v1, $zero
    /* 12DAA4 0022CB24 8C30080C */  jal        func_0020C230
    /* 12DAA8 0022CB28 00000000 */   nop
.align 2
  .L0022CB2C:
    /* 12DAAC 0022CB2C 1098828F */  lw         $v0, -0x67F0($gp)
    /* 12DAB0 0022CB30 01000326 */  addiu      $v1, $s0, 0x1
    /* 12DAB4 0022CB34 0000848E */  lw         $a0, 0x0($s4)
    /* 12DAB8 0022CB38 2D986000 */  daddu      $s3, $v1, $zero
    /* 12DABC 0022CB3C 2328A202 */  subu       $a1, $s5, $v0
    /* 12DAC0 0022CB40 2A186400 */  slt        $v1, $v1, $a0
    /* 12DAC4 0022CB44 0F006010 */  beqz       $v1, .L0022CB84
    /* 12DAC8 0022CB48 109885AF */   sw        $a1, -0x67F0($gp)
    /* 12DACC 0022CB4C 2110D302 */  addu       $v0, $s6, $s3
    /* 12DAD0 0022CB50 00004390 */  lbu        $v1, 0x0($v0)
    /* 12DAD4 0022CB54 0C007554 */  bnel       $v1, $s5, .L0022CB88
    /* 12DAD8 0022CB58 00002492 */   lbu       $a0, 0x0($s1)
    /* 12DADC 0022CB5C 40111300 */  sll        $v0, $s3, 5
    /* 12DAE0 0022CB60 80180500 */  sll        $v1, $a1, 2
    /* 12DAE4 0022CB64 21108202 */  addu       $v0, $s4, $v0
    /* 12DAE8 0022CB68 21187700 */  addu       $v1, $v1, $s7
    /* 12DAEC 0022CB6C 2E004594 */  lhu        $a1, 0x2E($v0)
    /* 12DAF0 0022CB70 2000448C */  lw         $a0, 0x20($v0)
    /* 12DAF4 0022CB74 002C0500 */  sll        $a1, $a1, 16
    /* 12DAF8 0022CB78 0000668C */  lw         $a2, 0x0($v1)
    /* 12DAFC 0022CB7C 8430080C */  jal        func_0020C210
    /* 12DB00 0022CB80 032D0500 */   sra       $a1, $a1, 20
.align 2
  .L0022CB84:
    /* 12DB04 0022CB84 00002492 */  lbu        $a0, 0x0($s1)
.align 2
  .L0022CB88:
    /* 12DB08 0022CB88 1B009554 */  bnel       $a0, $s5, .L0022CBF8
    /* 12DB0C 0022CB8C 0000828E */   lw        $v0, 0x0($s4)
    /* 12DB10 0022CB90 1098838F */  lw         $v1, -0x67F0($gp)
    /* 12DB14 0022CB94 40111000 */  sll        $v0, $s0, 5
    /* 12DB18 0022CB98 21808202 */  addu       $s0, $s4, $v0
    /* 12DB1C 0022CB9C 0070053C */  lui        $a1, (0x70002000 >> 16)
    /* 12DB20 0022CBA0 23188300 */  subu       $v1, $a0, $v1
    /* 12DB24 0022CBA4 2C000786 */  lh         $a3, 0x2C($s0)
    /* 12DB28 0022CBA8 80180300 */  sll        $v1, $v1, 2
    /* 12DB2C 0022CBAC 2A000286 */  lh         $v0, 0x2A($s0)
    /* 12DB30 0022CBB0 21187700 */  addu       $v1, $v1, $s7
    /* 12DB34 0022CBB4 28000886 */  lh         $t0, 0x28($s0)
    /* 12DB38 0022CBB8 0000648C */  lw         $a0, 0x0($v1)
    /* 12DB3C 0022CBBC 0020A534 */  ori        $a1, $a1, (0x70002000 & 0xFFFF)
    /* 12DB40 0022CBC0 24000686 */  lh         $a2, 0x24($s0)
    /* 12DB44 0022CBC4 21888700 */  addu       $s1, $a0, $a3
    /* 12DB48 0022CBC8 21908200 */  addu       $s2, $a0, $v0
    /* 12DB4C 0022CBCC ABB4080C */  jal        func_0022D2AC
    /* 12DB50 0022CBD0 21208800 */   addu      $a0, $a0, $t0
    /* 12DB54 0022CBD4 08004054 */  bnel       $v0, $zero, .L0022CBF8
    /* 12DB58 0022CBD8 0000828E */   lw        $v0, 0x0($s4)
    /* 12DB5C 0022CBDC 0070073C */  lui        $a3, (0x70002000 >> 16)
    /* 12DB60 0022CBE0 26000486 */  lh         $a0, 0x26($s0)
    /* 12DB64 0022CBE4 2D282002 */  daddu      $a1, $s1, $zero
    /* 12DB68 0022CBE8 2D304002 */  daddu      $a2, $s2, $zero
    /* 12DB6C 0022CBEC 48B5080C */  jal        func_0022D520
    /* 12DB70 0022CBF0 0020E734 */   ori       $a3, $a3, (0x70002000 & 0xFFFF)
    /* 12DB74 0022CBF4 0000828E */  lw         $v0, 0x0($s4)
.align 2
  .L0022CBF8:
    /* 12DB78 0022CBF8 2D806002 */  daddu      $s0, $s3, $zero
    /* 12DB7C 0022CBFC 2A100202 */  slt        $v0, $s0, $v0
    /* 12DB80 0022CC00 C5FF4014 */  bnez       $v0, .L0022CB18
    /* 12DB84 0022CC04 2118D002 */   addu      $v1, $s6, $s0
.align 2
  .L0022CC08:
    /* 12DB88 0022CC08 2DE8C003 */  daddu      $sp, $fp, $zero
    /* 12DB8C 0022CC0C B000BF7B */  lq         $ra, 0xB0($sp)
    /* 12DB90 0022CC10 A000BE7B */  lq         $fp, 0xA0($sp)
    /* 12DB94 0022CC14 9000B77B */  lq         $s7, 0x90($sp)
    /* 12DB98 0022CC18 8000B67B */  lq         $s6, 0x80($sp)
    /* 12DB9C 0022CC1C 7000B57B */  lq         $s5, 0x70($sp)
    /* 12DBA0 0022CC20 6000B47B */  lq         $s4, 0x60($sp)
    /* 12DBA4 0022CC24 5000B37B */  lq         $s3, 0x50($sp)
    /* 12DBA8 0022CC28 4000B27B */  lq         $s2, 0x40($sp)
    /* 12DBAC 0022CC2C 3000B17B */  lq         $s1, 0x30($sp)
    /* 12DBB0 0022CC30 2000B07B */  lq         $s0, 0x20($sp)
    /* 12DBB4 0022CC34 0800E003 */  jr         $ra
    /* 12DBB8 0022CC38 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_0022CA00
    /* 12DBBC 0022CC3C 00000000 */  nop
