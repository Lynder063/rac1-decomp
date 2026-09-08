.align 3
nonmatching func_0020BD70, 0x254

glabel func_0020BD70
    /* 10CCF0 0020BD70 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 10CCF4 0020BD74 3000B27F */  sq         $s2, 0x30($sp)
    /* 10CCF8 0020BD78 5000B47F */  sq         $s4, 0x50($sp)
    /* 10CCFC 0020BD7C 2D908000 */  daddu      $s2, $a0, $zero
    /* 10CD00 0020BD80 A000BF7F */  sq         $ra, 0xA0($sp)
    /* 10CD04 0020BD84 2DA0C000 */  daddu      $s4, $a2, $zero
    /* 10CD08 0020BD88 9000BE7F */  sq         $fp, 0x90($sp)
    /* 10CD0C 0020BD8C 8000B77F */  sq         $s7, 0x80($sp)
    /* 10CD10 0020BD90 7000B67F */  sq         $s6, 0x70($sp)
    /* 10CD14 0020BD94 6000B57F */  sq         $s5, 0x60($sp)
    /* 10CD18 0020BD98 4000B37F */  sq         $s3, 0x40($sp)
    /* 10CD1C 0020BD9C 2000B17F */  sq         $s1, 0x20($sp)
    /* 10CD20 0020BDA0 1000B07F */  sq         $s0, 0x10($sp)
    /* 10CD24 0020BDA4 E22E080C */  jal        func_0020BB88
    /* 10CD28 0020BDA8 0000A5AF */   sw        $a1, 0x0($sp)
    /* 10CD2C 0020BDAC 03004054 */  bnel       $v0, $zero, .L0020BDBC
    /* 10CD30 0020BDB0 0000828E */   lw        $v0, 0x0($s4)
    /* 10CD34 0020BDB4 77000010 */  b          .L0020BF94
    /* 10CD38 0020BDB8 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020BDBC:
    /* 10CD3C 0020BDBC 08005226 */  addiu      $s2, $s2, 0x8
    /* 10CD40 0020BDC0 2DA80000 */  daddu      $s5, $zero, $zero
    /* 10CD44 0020BDC4 0B004010 */  beqz       $v0, .L0020BDF4
    /* 10CD48 0020BDC8 08001624 */   addiu     $s6, $zero, 0x8
    /* 10CD4C 0020BDCC 2D188002 */  daddu      $v1, $s4, $zero
    /* 10CD50 0020BDD0 0C0060AC */  sw         $zero, 0xC($v1)
    /* 10CD54 0020BDD4 00000000 */  nop
.align 2
  .L0020BDD8:
    /* 10CD58 0020BDD8 10006324 */  addiu      $v1, $v1, 0x10
    /* 10CD5C 0020BDDC 0000628C */  lw         $v0, 0x0($v1)
    /* 10CD60 0020BDE0 00000000 */  nop
    /* 10CD64 0020BDE4 00000000 */  nop
    /* 10CD68 0020BDE8 00000000 */  nop
    /* 10CD6C 0020BDEC FAFF4054 */  bnel       $v0, $zero, .L0020BDD8
    /* 10CD70 0020BDF0 0C0060AC */   sw        $zero, 0xC($v1)
.align 2
  .L0020BDF4:
    /* 10CD74 0020BDF4 0000438E */  lw         $v1, 0x0($s2)
    /* 10CD78 0020BDF8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 10CD7C 0020BDFC 45006210 */  beq        $v1, $v0, .L0020BF14
    /* 10CD80 0020BE00 2D208002 */   daddu     $a0, $s4, $zero
    /* 10CD84 0020BE04 FFFF1E24 */  addiu      $fp, $zero, -0x1
    /* 10CD88 0020BE08 FCFF1724 */  addiu      $s7, $zero, -0x4
    /* 10CD8C 0020BE0C 0000828E */  lw         $v0, 0x0($s4)
.align 2
  .L0020BE10:
    /* 10CD90 0020BE10 36004010 */  beqz       $v0, .L0020BEEC
    /* 10CD94 0020BE14 2D280000 */   daddu     $a1, $zero, $zero
    /* 10CD98 0020BE18 0800828E */  lw         $v0, 0x8($s4)
    /* 10CD9C 0020BE1C 0000438E */  lw         $v1, 0x0($s2)
    /* 10CDA0 0020BE20 0A004310 */  beq        $v0, $v1, .L0020BE4C
    /* 10CDA4 0020BE24 2D206000 */   daddu     $a0, $v1, $zero
    /* 10CDA8 0020BE28 2D188002 */  daddu      $v1, $s4, $zero
    /* 10CDAC 0020BE2C 10006324 */  addiu      $v1, $v1, 0x10
.align 2
  .L0020BE30:
    /* 10CDB0 0020BE30 0000628C */  lw         $v0, 0x0($v1)
    /* 10CDB4 0020BE34 2D004010 */  beqz       $v0, .L0020BEEC
    /* 10CDB8 0020BE38 0100A524 */   addiu     $a1, $a1, 0x1
    /* 10CDBC 0020BE3C 0800628C */  lw         $v0, 0x8($v1)
    /* 10CDC0 0020BE40 00000000 */  nop
    /* 10CDC4 0020BE44 FAFF4414 */  bne        $v0, $a0, .L0020BE30
    /* 10CDC8 0020BE48 10006324 */   addiu     $v1, $v1, 0x10
.align 2
  .L0020BE4C:
    /* 10CDCC 0020BE4C 00110500 */  sll        $v0, $a1, 4
    /* 10CDD0 0020BE50 21285400 */  addu       $a1, $v0, $s4
    /* 10CDD4 0020BE54 0000A48C */  lw         $a0, 0x0($a1)
    /* 10CDD8 0020BE58 24008010 */  beqz       $a0, .L0020BEEC
    /* 10CDDC 0020BE5C 0000A28F */   lw        $v0, 0x0($sp)
    /* 10CDE0 0020BE60 0400A38C */  lw         $v1, 0x4($a1)
    /* 10CDE4 0020BE64 0400468E */  lw         $a2, 0x4($s2)
    /* 10CDE8 0020BE68 18104300 */  mult       $v0, $v0, $v1
    /* 10CDEC 0020BE6C 0500C314 */  bne        $a2, $v1, .L0020BE84
    /* 10CDF0 0020BE70 21984400 */   addu      $s3, $v0, $a0
    /* 10CDF4 0020BE74 01000624 */  addiu      $a2, $zero, 0x1
    /* 10CDF8 0020BE78 2D806000 */  daddu      $s0, $v1, $zero
    /* 10CDFC 0020BE7C 09000010 */  b          .L0020BEA4
    /* 10CE00 0020BE80 0C00A6AC */   sw        $a2, 0xC($a1)
.align 2
  .L0020BE84:
    /* 10CE04 0020BE84 2A10C300 */  slt        $v0, $a2, $v1
    /* 10CE08 0020BE88 03004010 */  beqz       $v0, .L0020BE98
    /* 10CE0C 0020BE8C 2D80C000 */   daddu     $s0, $a2, $zero
    /* 10CE10 0020BE90 04000010 */  b          .L0020BEA4
    /* 10CE14 0020BE94 0C00BEAC */   sw        $fp, 0xC($a1)
.align 2
  .L0020BE98:
    /* 10CE18 0020BE98 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 10CE1C 0020BE9C 2D806000 */  daddu      $s0, $v1, $zero
    /* 10CE20 0020BEA0 0C00A2AC */  sw         $v0, 0xC($a1)
.align 2
  .L0020BEA4:
    /* 10CE24 0020BEA4 08005126 */  addiu      $s1, $s2, 0x8
    /* 10CE28 0020BEA8 2D206002 */  daddu      $a0, $s3, $zero
    /* 10CE2C 0020BEAC 2D282002 */  daddu      $a1, $s1, $zero
    /* 10CE30 0020BEB0 6D54040C */  jal        func_001151B4
    /* 10CE34 0020BEB4 2D300002 */   daddu     $a2, $s0, $zero
    /* 10CE38 0020BEB8 03004010 */  beqz       $v0, .L0020BEC8
    /* 10CE3C 0020BEBC 5092828F */   lw        $v0, -0x6DB0($gp)
    /* 10CE40 0020BEC0 01004224 */  addiu      $v0, $v0, 0x1
    /* 10CE44 0020BEC4 509282AF */  sw         $v0, -0x6DB0($gp)
.align 2
  .L0020BEC8:
    /* 10CE48 0020BEC8 2D206002 */  daddu      $a0, $s3, $zero
    /* 10CE4C 0020BECC 2D282002 */  daddu      $a1, $s1, $zero
    /* 10CE50 0020BED0 80E6070C */  jal        func_001F9A00
    /* 10CE54 0020BED4 2D300002 */   daddu     $a2, $s0, $zero
    /* 10CE58 0020BED8 03000226 */  addiu      $v0, $s0, 0x3
    /* 10CE5C 0020BEDC 0800C326 */  addiu      $v1, $s6, 0x8
    /* 10CE60 0020BEE0 24105700 */  and        $v0, $v0, $s7
    /* 10CE64 0020BEE4 02000010 */  b          .L0020BEF0
    /* 10CE68 0020BEE8 21B06200 */   addu      $s6, $v1, $v0
.align 2
  .L0020BEEC:
    /* 10CE6C 0020BEEC 0100B526 */  addiu      $s5, $s5, 0x1
.align 2
  .L0020BEF0:
    /* 10CE70 0020BEF0 0400428E */  lw         $v0, 0x4($s2)
    /* 10CE74 0020BEF4 03004224 */  addiu      $v0, $v0, 0x3
    /* 10CE78 0020BEF8 24105700 */  and        $v0, $v0, $s7
    /* 10CE7C 0020BEFC 08004224 */  addiu      $v0, $v0, 0x8
    /* 10CE80 0020BF00 21904202 */  addu       $s2, $s2, $v0
    /* 10CE84 0020BF04 0000438E */  lw         $v1, 0x0($s2)
    /* 10CE88 0020BF08 C1FF7E54 */  bnel       $v1, $fp, .L0020BE10
    /* 10CE8C 0020BF0C 0000828E */   lw        $v0, 0x0($s4)
    /* 10CE90 0020BF10 2D208002 */  daddu      $a0, $s4, $zero
.align 2
  .L0020BF14:
    /* 10CE94 0020BF14 B62E080C */  jal        func_0020BAD8
    /* 10CE98 0020BF18 0800D626 */   addiu     $s6, $s6, 0x8
    /* 10CE9C 0020BF1C 08005226 */  addiu      $s2, $s2, 0x8
    /* 10CEA0 0020BF20 2610C202 */  xor        $v0, $s6, $v0
    /* 10CEA4 0020BF24 0100A326 */  addiu      $v1, $s5, 0x1
    /* 10CEA8 0020BF28 0000848E */  lw         $a0, 0x0($s4)
    /* 10CEAC 0020BF2C 11008010 */  beqz       $a0, .L0020BF74
    /* 10CEB0 0020BF30 0BA86200 */   movn      $s5, $v1, $v0
    /* 10CEB4 0020BF34 0000438E */  lw         $v1, 0x0($s2)
    /* 10CEB8 0020BF38 0800828E */  lw         $v0, 0x8($s4)
    /* 10CEBC 0020BF3C 0D004310 */  beq        $v0, $v1, .L0020BF74
    /* 10CEC0 0020BF40 2D286000 */   daddu     $a1, $v1, $zero
    /* 10CEC4 0020BF44 2D308002 */  daddu      $a2, $s4, $zero
    /* 10CEC8 0020BF48 2D380000 */  daddu      $a3, $zero, $zero
    /* 10CECC 0020BF4C 0C00C28C */  lw         $v0, 0xC($a2)
.align 2
  .L0020BF50:
    /* 10CED0 0020BF50 0100A426 */  addiu      $a0, $s5, 0x1
    /* 10CED4 0020BF54 1000C624 */  addiu      $a2, $a2, 0x10
    /* 10CED8 0020BF58 2A10E200 */  slt        $v0, $a3, $v0
    /* 10CEDC 0020BF5C 0000C38C */  lw         $v1, 0x0($a2)
    /* 10CEE0 0020BF60 04006010 */  beqz       $v1, .L0020BF74
    /* 10CEE4 0020BF64 0AA88200 */   movz      $s5, $a0, $v0
    /* 10CEE8 0020BF68 0800C28C */  lw         $v0, 0x8($a2)
    /* 10CEEC 0020BF6C F8FF4554 */  bnel       $v0, $a1, .L0020BF50
    /* 10CEF0 0020BF70 0C00C28C */   lw        $v0, 0xC($a2)
.align 2
  .L0020BF74:
    /* 10CEF4 0020BF74 1400033C */  lui        $v1, %hi(D_0013D390)
    /* 10CEF8 0020BF78 C0000524 */  addiu      $a1, $zero, 0xC0
    /* 10CEFC 0020BF7C 90D36324 */  addiu      $v1, $v1, %lo(D_0013D390)
    /* 10CF00 0020BF80 2D10A002 */  daddu      $v0, $s5, $zero
    /* 10CF04 0020BF84 CC00648C */  lw         $a0, 0xCC($v1)
    /* 10CF08 0020BF88 18308500 */  mult       $a2, $a0, $a1
    /* 10CF0C 0020BF8C 2120C300 */  addu       $a0, $a2, $v1
    /* 10CF10 0020BF90 B40095AC */  sw         $s5, 0xB4($a0)
.align 2
  .L0020BF94:
    /* 10CF14 0020BF94 A000BF7B */  lq         $ra, 0xA0($sp)
    /* 10CF18 0020BF98 9000BE7B */  lq         $fp, 0x90($sp)
    /* 10CF1C 0020BF9C 8000B77B */  lq         $s7, 0x80($sp)
    /* 10CF20 0020BFA0 7000B67B */  lq         $s6, 0x70($sp)
    /* 10CF24 0020BFA4 6000B57B */  lq         $s5, 0x60($sp)
    /* 10CF28 0020BFA8 5000B47B */  lq         $s4, 0x50($sp)
    /* 10CF2C 0020BFAC 4000B37B */  lq         $s3, 0x40($sp)
    /* 10CF30 0020BFB0 3000B27B */  lq         $s2, 0x30($sp)
    /* 10CF34 0020BFB4 2000B17B */  lq         $s1, 0x20($sp)
    /* 10CF38 0020BFB8 1000B07B */  lq         $s0, 0x10($sp)
    /* 10CF3C 0020BFBC 0800E003 */  jr         $ra
    /* 10CF40 0020BFC0 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_0020BD70
    /* 10CF44 0020BFC4 00000000 */  nop
