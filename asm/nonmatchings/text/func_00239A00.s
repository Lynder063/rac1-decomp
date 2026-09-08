.align 3
nonmatching func_00239A00, 0x2F4

glabel func_00239A00
    /* 13A980 00239A00 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 13A984 00239A04 2D200000 */  daddu      $a0, $zero, $zero
    /* 13A988 00239A08 1000B17F */  sq         $s1, 0x10($sp)
    /* 13A98C 00239A0C 2D280000 */  daddu      $a1, $zero, $zero
    /* 13A990 00239A10 0000B07F */  sq         $s0, 0x0($sp)
    /* 13A994 00239A14 00020624 */  addiu      $a2, $zero, 0x200
    /* 13A998 00239A18 9000BF7F */  sq         $ra, 0x90($sp)
    /* 13A99C 00239A1C 80000724 */  addiu      $a3, $zero, 0x80
    /* 13A9A0 00239A20 8000BE7F */  sq         $fp, 0x80($sp)
    /* 13A9A4 00239A24 00020824 */  addiu      $t0, $zero, 0x200
    /* 13A9A8 00239A28 7000B77F */  sq         $s7, 0x70($sp)
    /* 13A9AC 00239A2C 80000924 */  addiu      $t1, $zero, 0x80
    /* 13A9B0 00239A30 6000B67F */  sq         $s6, 0x60($sp)
    /* 13A9B4 00239A34 2D500000 */  daddu      $t2, $zero, $zero
    /* 13A9B8 00239A38 5000B57F */  sq         $s5, 0x50($sp)
    /* 13A9BC 00239A3C 4000B47F */  sq         $s4, 0x40($sp)
    /* 13A9C0 00239A40 3000B37F */  sq         $s3, 0x30($sp)
    /* 13A9C4 00239A44 AEEE070C */  jal        func_001FBAB8
    /* 13A9C8 00239A48 2000B27F */   sq        $s2, 0x20($sp)
    /* 13A9CC 00239A4C 1E00033C */  lui        $v1, %hi(D_001E66C0)
    /* 13A9D0 00239A50 C0667124 */  addiu      $s1, $v1, %lo(D_001E66C0)
    /* 13A9D4 00239A54 1002228E */  lw         $v0, 0x210($s1)
    /* 13A9D8 00239A58 08004228 */  slti       $v0, $v0, 0x8
    /* 13A9DC 00239A5C 43004010 */  beqz       $v0, .L00239B6C
    /* 13A9E0 00239A60 2D806000 */   daddu     $s0, $v1, $zero
    /* 13A9E4 00239A64 0400248E */  lw         $a0, 0x4($s1)
    /* 13A9E8 00239A68 38000224 */  addiu      $v0, $zero, 0x38
    /* 13A9EC 00239A6C 5800308E */  lw         $s0, 0x58($s1)
    /* 13A9F0 00239A70 0C001324 */  addiu      $s3, $zero, 0xC
    /* 13A9F4 00239A74 80200400 */  sll        $a0, $a0, 2
    /* 13A9F8 00239A78 2D900000 */  daddu      $s2, $zero, $zero
    /* 13A9FC 00239A7C 3F008430 */  andi       $a0, $a0, 0x3F
    /* 13AA00 00239A80 18800202 */  mult       $s0, $s0, $v0
    /* 13AA04 00239A84 DCE6070C */  jal        func_001F9B70
    /* 13AA08 00239A88 E0FF8424 */   addiu     $a0, $a0, -0x20
    /* 13AA0C 00239A8C 0100033C */  lui        $v1, (0x10202 >> 16)
    /* 13AA10 00239A90 40004224 */  addiu      $v0, $v0, 0x40
    /* 13AA14 00239A94 02026334 */  ori        $v1, $v1, (0x10202 & 0xFFFF)
    /* 13AA18 00239A98 00800A3C */  lui        $t2, (0x80000000 >> 16)
    /* 13AA1C 00239A9C 18104300 */  mult       $v0, $v0, $v1
    /* 13AA20 00239AA0 08000426 */  addiu      $a0, $s0, 0x8
    /* 13AA24 00239AA4 02000524 */  addiu      $a1, $zero, 0x2
    /* 13AA28 00239AA8 40000626 */  addiu      $a2, $s0, 0x40
    /* 13AA2C 00239AAC 3A000724 */  addiu      $a3, $zero, 0x3A
    /* 13AA30 00239AB0 00020824 */  addiu      $t0, $zero, 0x200
    /* 13AA34 00239AB4 80000924 */  addiu      $t1, $zero, 0x80
    /* 13AA38 00239AB8 AEEE070C */  jal        func_001FBAB8
    /* 13AA3C 00239ABC 25504A00 */   or        $t2, $v0, $t2
    /* 13AA40 00239AC0 3E000626 */  addiu      $a2, $s0, 0x3E
    /* 13AA44 00239AC4 0A000426 */  addiu      $a0, $s0, 0xA
    /* 13AA48 00239AC8 04000524 */  addiu      $a1, $zero, 0x4
    /* 13AA4C 00239ACC 38000724 */  addiu      $a3, $zero, 0x38
    /* 13AA50 00239AD0 00020824 */  addiu      $t0, $zero, 0x200
    /* 13AA54 00239AD4 00800A3C */  lui        $t2, (0x80000000 >> 16)
    /* 13AA58 00239AD8 AEEE070C */  jal        func_001FBAB8
    /* 13AA5C 00239ADC 80000924 */   addiu     $t1, $zero, 0x80
    /* 13AA60 00239AE0 1002228E */  lw         $v0, 0x210($s1)
    /* 13AA64 00239AE4 77004018 */  blez       $v0, .L00239CC4
    /* 13AA68 00239AE8 1800023C */   lui       $v0, %hi(D_001864D0)
    /* 13AA6C 00239AEC 4C001524 */  addiu      $s5, $zero, 0x4C
    /* 13AA70 00239AF0 D0645624 */  addiu      $s6, $v0, %lo(D_001864D0)
    /* 13AA74 00239AF4 01001424 */  addiu      $s4, $zero, 0x1
    /* 13AA78 00239AF8 D4003026 */  addiu      $s0, $s1, 0xD4
    /* 13AA7C 00239AFC 00000000 */  nop
.align 2
  .L00239B00:
    /* 13AA80 00239B00 FCFF028E */  lw         $v0, -0x4($s0)
    /* 13AA84 00239B04 0000038E */  lw         $v1, 0x0($s0)
    /* 13AA88 00239B08 18205500 */  mult       $a0, $v0, $s5
    /* 13AA8C 00239B0C 21109600 */  addu       $v0, $a0, $s6
    /* 13AA90 00239B10 05007414 */  bne        $v1, $s4, .L00239B28
    /* 13AA94 00239B14 38004494 */   lhu       $a0, 0x38($v0)
    /* 13AA98 00239B18 6600080C */  jal        func_00200198
    /* 13AA9C 00239B1C 02000524 */   addiu     $a1, $zero, 0x2
    /* 13AAA0 00239B20 04000010 */  b          .L00239B34
    /* 13AAA4 00239B24 2D204000 */   daddu     $a0, $v0, $zero
.align 2
  .L00239B28:
    /* 13AAA8 00239B28 6600080C */  jal        func_00200198
    /* 13AAAC 00239B2C 2D280000 */   daddu     $a1, $zero, $zero
    /* 13AAB0 00239B30 2D204000 */  daddu      $a0, $v0, $zero
.align 2
  .L00239B34:
    /* 13AAB4 00239B34 2D286002 */  daddu      $a1, $s3, $zero
    /* 13AAB8 00239B38 06000624 */  addiu      $a2, $zero, 0x6
    /* 13AABC 00239B3C 30000724 */  addiu      $a3, $zero, 0x30
    /* 13AAC0 00239B40 30000824 */  addiu      $t0, $zero, 0x30
    /* 13AAC4 00239B44 1A01080C */  jal        func_00200468
    /* 13AAC8 00239B48 80000924 */   addiu     $t1, $zero, 0x80
    /* 13AACC 00239B4C 01005226 */  addiu      $s2, $s2, 0x1
    /* 13AAD0 00239B50 1002228E */  lw         $v0, 0x210($s1)
    /* 13AAD4 00239B54 38007326 */  addiu      $s3, $s3, 0x38
    /* 13AAD8 00239B58 2A104202 */  slt        $v0, $s2, $v0
    /* 13AADC 00239B5C E8FF4014 */  bnez       $v0, .L00239B00
    /* 13AAE0 00239B60 14001026 */   addiu     $s0, $s0, 0x14
    /* 13AAE4 00239B64 58000010 */  b          .L00239CC8
    /* 13AAE8 00239B68 9000BF7B */   lq        $ra, 0x90($sp)
.align 2
  .L00239B6C:
    /* 13AAEC 00239B6C 4C00228E */  lw         $v0, 0x4C($s1)
    /* 13AAF0 00239B70 04004104 */  bgez       $v0, .L00239B84
    /* 13AAF4 00239B74 00000000 */   nop
    /* 13AAF8 00239B78 04004224 */  addiu      $v0, $v0, 0x4
    /* 13AAFC 00239B7C 1F000010 */  b          .L00239BFC
    /* 13AB00 00239B80 4C0022AE */   sw        $v0, 0x4C($s1)
.align 2
  .L00239B84:
    /* 13AB04 00239B84 03004018 */  blez       $v0, .L00239B94
    /* 13AB08 00239B88 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* 13AB0C 00239B8C 1B000010 */  b          .L00239BFC
    /* 13AB10 00239B90 4C0022AE */   sw        $v0, 0x4C($s1)
.align 2
  .L00239B94:
    /* 13AB14 00239B94 0400248E */  lw         $a0, 0x4($s1)
    /* 13AB18 00239B98 80200400 */  sll        $a0, $a0, 2
    /* 13AB1C 00239B9C 3F008430 */  andi       $a0, $a0, 0x3F
    /* 13AB20 00239BA0 DCE6070C */  jal        func_001F9B70
    /* 13AB24 00239BA4 E0FF8424 */   addiu     $a0, $a0, -0x20
    /* 13AB28 00239BA8 0100033C */  lui        $v1, (0x10202 >> 16)
    /* 13AB2C 00239BAC 40004224 */  addiu      $v0, $v0, 0x40
    /* 13AB30 00239BB0 02026334 */  ori        $v1, $v1, (0x10202 & 0xFFFF)
    /* 13AB34 00239BB4 00800A3C */  lui        $t2, (0x80000000 >> 16)
    /* 13AB38 00239BB8 18104300 */  mult       $v0, $v0, $v1
    /* 13AB3C 00239BBC B0000424 */  addiu      $a0, $zero, 0xB0
    /* 13AB40 00239BC0 02000524 */  addiu      $a1, $zero, 0x2
    /* 13AB44 00239BC4 E8000624 */  addiu      $a2, $zero, 0xE8
    /* 13AB48 00239BC8 3A000724 */  addiu      $a3, $zero, 0x3A
    /* 13AB4C 00239BCC 00020824 */  addiu      $t0, $zero, 0x200
    /* 13AB50 00239BD0 80000924 */  addiu      $t1, $zero, 0x80
    /* 13AB54 00239BD4 AEEE070C */  jal        func_001FBAB8
    /* 13AB58 00239BD8 23504A00 */   subu      $t2, $v0, $t2
    /* 13AB5C 00239BDC B2000424 */  addiu      $a0, $zero, 0xB2
    /* 13AB60 00239BE0 04000524 */  addiu      $a1, $zero, 0x4
    /* 13AB64 00239BE4 E6000624 */  addiu      $a2, $zero, 0xE6
    /* 13AB68 00239BE8 38000724 */  addiu      $a3, $zero, 0x38
    /* 13AB6C 00239BEC 00020824 */  addiu      $t0, $zero, 0x200
    /* 13AB70 00239BF0 00800A3C */  lui        $t2, (0x80000000 >> 16)
    /* 13AB74 00239BF4 AEEE070C */  jal        func_001FBAB8
    /* 13AB78 00239BF8 80000924 */   addiu     $t1, $zero, 0x80
.align 2
  .L00239BFC:
    /* 13AB7C 00239BFC C0660226 */  addiu      $v0, $s0, %lo(D_001E66C0)
    /* 13AB80 00239C00 1800043C */  lui        $a0, %hi(D_001864D0)
    /* 13AB84 00239C04 4C00438C */  lw         $v1, 0x4C($v0)
    /* 13AB88 00239C08 2D904000 */  daddu      $s2, $v0, $zero
    /* 13AB8C 00239C0C D0005E26 */  addiu      $fp, $s2, 0xD0
    /* 13AB90 00239C10 D4005726 */  addiu      $s7, $s2, 0xD4
    /* 13AB94 00239C14 D0649624 */  addiu      $s6, $a0, %lo(D_001864D0)
    /* 13AB98 00239C18 9CFF7024 */  addiu      $s0, $v1, -0x64
    /* 13AB9C 00239C1C FEFF1124 */  addiu      $s1, $zero, -0x2
    /* 13ABA0 00239C20 14001524 */  addiu      $s5, $zero, 0x14
    /* 13ABA4 00239C24 4C001424 */  addiu      $s4, $zero, 0x4C
    /* 13ABA8 00239C28 01001324 */  addiu      $s3, $zero, 0x1
    /* 13ABAC 00239C2C 00000000 */  nop
.align 2
  .L00239C30:
    /* 13ABB0 00239C30 1002458E */  lw         $a1, 0x210($s2)
    /* 13ABB4 00239C34 5800448E */  lw         $a0, 0x58($s2)
    /* 13ABB8 00239C38 40100500 */  sll        $v0, $a1, 1
    /* 13ABBC 00239C3C 0100A050 */  beql       $a1, $zero, .L00239C44
    /* 13ABC0 00239C40 CD010000 */   break     0, 7
.align 2
  .L00239C44:
    /* 13ABC4 00239C44 FDFF8424 */  addiu      $a0, $a0, -0x3
    /* 13ABC8 00239C48 21105100 */  addu       $v0, $v0, $s1
    /* 13ABCC 00239C4C 21104400 */  addu       $v0, $v0, $a0
    /* 13ABD0 00239C50 1A004500 */  div        $zero, $v0, $a1
    /* 13ABD4 00239C54 10180000 */  mfhi       $v1
    /* 13ABD8 00239C58 18187500 */  mult       $v1, $v1, $s5
    /* 13ABDC 00239C5C 21207E00 */  addu       $a0, $v1, $fp
    /* 13ABE0 00239C60 0000828C */  lw         $v0, 0x0($a0)
    /* 13ABE4 00239C64 21187700 */  addu       $v1, $v1, $s7
    /* 13ABE8 00239C68 0000658C */  lw         $a1, 0x0($v1)
    /* 13ABEC 00239C6C 18185400 */  mult       $v1, $v0, $s4
    /* 13ABF0 00239C70 21107600 */  addu       $v0, $v1, $s6
    /* 13ABF4 00239C74 0500B314 */  bne        $a1, $s3, .L00239C8C
    /* 13ABF8 00239C78 38004494 */   lhu       $a0, 0x38($v0)
    /* 13ABFC 00239C7C 6600080C */  jal        func_00200198
    /* 13AC00 00239C80 02000524 */   addiu     $a1, $zero, 0x2
    /* 13AC04 00239C84 03000010 */  b          .L00239C94
    /* 13AC08 00239C88 00000000 */   nop
.align 2
  .L00239C8C:
    /* 13AC0C 00239C8C 6600080C */  jal        func_00200198
    /* 13AC10 00239C90 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L00239C94:
    /* 13AC14 00239C94 8080093C */  lui        $t1, (0x80808080 >> 16)
    /* 13AC18 00239C98 2D204000 */  daddu      $a0, $v0, $zero
    /* 13AC1C 00239C9C 2D280002 */  daddu      $a1, $s0, $zero
    /* 13AC20 00239CA0 06000624 */  addiu      $a2, $zero, 0x6
    /* 13AC24 00239CA4 30000724 */  addiu      $a3, $zero, 0x30
    /* 13AC28 00239CA8 30000824 */  addiu      $t0, $zero, 0x30
    /* 13AC2C 00239CAC 80802935 */  ori        $t1, $t1, (0x80808080 & 0xFFFF)
    /* 13AC30 00239CB0 1A01080C */  jal        func_00200468
    /* 13AC34 00239CB4 01003126 */   addiu     $s1, $s1, 0x1
    /* 13AC38 00239CB8 0900222A */  slti       $v0, $s1, 0x9
    /* 13AC3C 00239CBC DCFF4014 */  bnez       $v0, .L00239C30
    /* 13AC40 00239CC0 38001026 */   addiu     $s0, $s0, 0x38
.align 2
  .L00239CC4:
    /* 13AC44 00239CC4 9000BF7B */  lq         $ra, 0x90($sp)
.align 2
  .L00239CC8:
    /* 13AC48 00239CC8 8000BE7B */  lq         $fp, 0x80($sp)
    /* 13AC4C 00239CCC 7000B77B */  lq         $s7, 0x70($sp)
    /* 13AC50 00239CD0 6000B67B */  lq         $s6, 0x60($sp)
    /* 13AC54 00239CD4 5000B57B */  lq         $s5, 0x50($sp)
    /* 13AC58 00239CD8 4000B47B */  lq         $s4, 0x40($sp)
    /* 13AC5C 00239CDC 3000B37B */  lq         $s3, 0x30($sp)
    /* 13AC60 00239CE0 2000B27B */  lq         $s2, 0x20($sp)
    /* 13AC64 00239CE4 1000B17B */  lq         $s1, 0x10($sp)
    /* 13AC68 00239CE8 0000B07B */  lq         $s0, 0x0($sp)
    /* 13AC6C 00239CEC 0800E003 */  jr         $ra
    /* 13AC70 00239CF0 A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_00239A00
    /* 13AC74 00239CF4 00000000 */  nop
