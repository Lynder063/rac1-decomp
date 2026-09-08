.align 3
nonmatching func_0023CAF8, 0xE4

glabel func_0023CAF8
    /* 13DA78 0023CAF8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 13DA7C 0023CAFC 0500023C */  lui        $v0, (0x50008 >> 16)
    /* 13DA80 0023CB00 4000B37F */  sq         $s3, 0x40($sp)
    /* 13DA84 0023CB04 0800A737 */  ori        $a3, $sp, 0x8
    /* 13DA88 0023CB08 6000BF7F */  sq         $ra, 0x60($sp)
    /* 13DA8C 0023CB0C 2D98C000 */  daddu      $s3, $a2, $zero
    /* 13DA90 0023CB10 5000B47F */  sq         $s4, 0x50($sp)
    /* 13DA94 0023CB14 21106202 */  addu       $v0, $s3, $v0
    /* 13DA98 0023CB18 1000B07F */  sq         $s0, 0x10($sp)
    /* 13DA9C 0023CB1C 0D00143C */  lui        $s4, (0xD9100 >> 16)
    /* 13DAA0 0023CB20 3000B27F */  sq         $s2, 0x30($sp)
    /* 13DAA4 0023CB24 00919436 */  ori        $s4, $s4, (0xD9100 & 0xFFFF)
    /* 13DAA8 0023CB28 2000B17F */  sq         $s1, 0x20($sp)
    /* 13DAAC 0023CB2C 0400A637 */  ori        $a2, $sp, 0x4
    /* 13DAB0 0023CB30 0C00B18C */  lw         $s1, 0xC($a1)
    /* 13DAB4 0023CB34 0C00A837 */  ori        $t0, $sp, 0xC
    /* 13DAB8 0023CB38 0800438C */  lw         $v1, (0x50008 & 0xFFFF)($v0)
    /* 13DABC 0023CB3C 0800B28C */  lw         $s2, 0x8($a1)
    /* 13DAC0 0023CB40 FCFF3126 */  addiu      $s1, $s1, -0x4
    /* 13DAC4 0023CB44 21806302 */  addu       $s0, $s3, $v1
    /* 13DAC8 0023CB48 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13DACC 0023CB4C 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13DAD0 0023CB50 04005226 */  addiu      $s2, $s2, 0x4
    /* 13DAD4 0023CB54 2D28A003 */  daddu      $a1, $sp, $zero
    /* 13DAD8 0023CB58 23184302 */  subu       $v1, $s2, $v1
    /* 13DADC 0023CB5C 2B105002 */  sltu       $v0, $s2, $s0
    /* 13DAE0 0023CB60 0A906200 */  movz       $s2, $v1, $v0
    /* 13DAE4 0023CB64 21209400 */  addu       $a0, $a0, $s4
    /* 13DAE8 0023CB68 23801202 */  subu       $s0, $s0, $s2
    /* 13DAEC 0023CB6C 2A103002 */  slt        $v0, $s1, $s0
    /* 13DAF0 0023CB70 0B802202 */  movn       $s0, $s1, $v0
    /* 13DAF4 0023CB74 4AF0080C */  jal        func_0023C128
    /* 13DAF8 0023CB78 23883002 */   subu      $s1, $s1, $s0
    /* 13DAFC 0023CB7C 0000A48F */  lw         $a0, 0x0($sp)
    /* 13DB00 0023CB80 2D480002 */  daddu      $t1, $s0, $zero
    /* 13DB04 0023CB84 0400A58F */  lw         $a1, 0x4($sp)
    /* 13DB08 0023CB88 2D506002 */  daddu      $t2, $s3, $zero
    /* 13DB0C 0023CB8C 0800A68F */  lw         $a2, 0x8($sp)
    /* 13DB10 0023CB90 2D582002 */  daddu      $t3, $s1, $zero
    /* 13DB14 0023CB94 0C00A78F */  lw         $a3, 0xC($sp)
    /* 13DB18 0023CB98 F8F2080C */  jal        func_0023CBE0
    /* 13DB1C 0023CB9C 2D404002 */   daddu     $t0, $s2, $zero
    /* 13DB20 0023CBA0 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13DB24 0023CBA4 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13DB28 0023CBA8 2D804000 */  daddu      $s0, $v0, $zero
    /* 13DB2C 0023CBAC 2D280002 */  daddu      $a1, $s0, $zero
    /* 13DB30 0023CBB0 7EF0080C */  jal        func_0023C1F8
    /* 13DB34 0023CBB4 21209400 */   addu      $a0, $a0, $s4
    /* 13DB38 0023CBB8 2A101000 */  slt        $v0, $zero, $s0
    /* 13DB3C 0023CBBC 6000BF7B */  lq         $ra, 0x60($sp)
    /* 13DB40 0023CBC0 5000B47B */  lq         $s4, 0x50($sp)
    /* 13DB44 0023CBC4 4000B37B */  lq         $s3, 0x40($sp)
    /* 13DB48 0023CBC8 3000B27B */  lq         $s2, 0x30($sp)
    /* 13DB4C 0023CBCC 2000B17B */  lq         $s1, 0x20($sp)
    /* 13DB50 0023CBD0 1000B07B */  lq         $s0, 0x10($sp)
    /* 13DB54 0023CBD4 0800E003 */  jr         $ra
    /* 13DB58 0023CBD8 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0023CAF8
    /* 13DB5C 0023CBDC 00000000 */  nop
