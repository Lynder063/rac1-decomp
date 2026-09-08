.align 3
nonmatching func_0012B870, 0xA8

glabel func_0012B870
    /* 2C7F0 0012B870 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2C7F4 0012B874 0000BFFF */  sd         $ra, 0x0($sp)
    /* 2C7F8 0012B878 5876040C */  jal        func_0011D960
    /* 2C7FC 0012B87C 00000000 */   nop
    /* 2C800 0012B880 0010093C */  lui        $t1, (0x1000F520 >> 16)
    /* 2C804 0012B884 0100043C */  lui        $a0, (0x10000 >> 16)
    /* 2C808 0012B888 20F52935 */  ori        $t1, $t1, (0x1000F520 & 0xFFFF)
    /* 2C80C 0012B88C 00100A3C */  lui        $t2, (0x1000F590 >> 16)
    /* 2C810 0012B890 0000238D */  lw         $v1, 0x0($t1)
    /* 2C814 0012B894 90F54A35 */  ori        $t2, $t2, (0x1000F590 & 0xFFFF)
    /* 2C818 0012B898 0010063C */  lui        $a2, (0x1000B000 >> 16)
    /* 2C81C 0012B89C FFFF083C */  lui        $t0, (0xFFFFFEFF >> 16)
    /* 2C820 0012B8A0 25186400 */  or         $v1, $v1, $a0
    /* 2C824 0012B8A4 00B0C634 */  ori        $a2, $a2, (0x1000B000 & 0xFFFF)
    /* 2C828 0012B8A8 000043AD */  sw         $v1, 0x0($t2)
    /* 2C82C 0012B8AC FFFE0835 */  ori        $t0, $t0, (0xFFFFFEFF & 0xFFFF)
    /* 2C830 0012B8B0 0010053C */  lui        $a1, (0x1000B400 >> 16)
    /* 2C834 0012B8B4 FEFF073C */  lui        $a3, (0xFFFEFFFF >> 16)
    /* 2C838 0012B8B8 0000C48C */  lw         $a0, 0x0($a2)
    /* 2C83C 0012B8BC 00B4A534 */  ori        $a1, $a1, (0x1000B400 & 0xFFFF)
    /* 2C840 0012B8C0 FFFFE734 */  ori        $a3, $a3, (0xFFFEFFFF & 0xFFFF)
    /* 2C844 0012B8C4 24208800 */  and        $a0, $a0, $t0
    /* 2C848 0012B8C8 0000C4AC */  sw         $a0, 0x0($a2)
    /* 2C84C 0012B8CC 0000A38C */  lw         $v1, 0x0($a1)
    /* 2C850 0012B8D0 24186800 */  and        $v1, $v1, $t0
    /* 2C854 0012B8D4 0000A3AC */  sw         $v1, 0x0($a1)
    /* 2C858 0012B8D8 0000248D */  lw         $a0, 0x0($t1)
    /* 2C85C 0012B8DC 24208700 */  and        $a0, $a0, $a3
    /* 2C860 0012B8E0 000044AD */  sw         $a0, 0x0($t2)
    /* 2C864 0012B8E4 04004010 */  beqz       $v0, .L0012B8F8
    /* 2C868 0012B8E8 0010023C */   lui       $v0, (0x1000B020 >> 16)
    /* 2C86C 0012B8EC 6A76040C */  jal        func_0011D9A8
    /* 2C870 0012B8F0 00000000 */   nop
    /* 2C874 0012B8F4 0010023C */  lui        $v0, (0x1000B020 >> 16)
.align 2
  .L0012B8F8:
    /* 2C878 0012B8F8 0010033C */  lui        $v1, (0x1000B420 >> 16)
    /* 2C87C 0012B8FC 20B04234 */  ori        $v0, $v0, (0x1000B020 & 0xFFFF)
    /* 2C880 0012B900 20B46334 */  ori        $v1, $v1, (0x1000B420 & 0xFFFF)
    /* 2C884 0012B904 000040AC */  sw         $zero, 0x0($v0)
    /* 2C888 0012B908 0000BFDF */  ld         $ra, 0x0($sp)
    /* 2C88C 0012B90C 000060AC */  sw         $zero, 0x0($v1)
    /* 2C890 0012B910 1AB40408 */  j          func_0012D068
    /* 2C894 0012B914 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012B870
