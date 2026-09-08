.align 3
nonmatching func_001EE858, 0x18C

glabel func_001EE858
    /* EF7D8 001EE858 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* EF7DC 001EE85C 2000BF7F */  sq         $ra, 0x20($sp)
    /* EF7E0 001EE860 2D28A003 */  daddu      $a1, $sp, $zero
    /* EF7E4 001EE864 1000B07F */  sq         $s0, 0x10($sp)
    /* EF7E8 001EE868 0400A637 */  ori        $a2, $sp, 0x4
    /* EF7EC 001EE86C 9E4E080C */  jal        func_00213A78
    /* EF7F0 001EE870 3000B4E7 */   swc1      $f20, 0x30($sp)
    /* EF7F4 001EE874 56004010 */  beqz       $v0, .L001EE9D0
    /* EF7F8 001EE878 0400A48F */   lw        $a0, 0x4($sp)
    /* EF7FC 001EE87C 1A00033C */  lui        $v1, %hi(D_0019AEC0)
    /* EF800 001EE880 C0AE6324 */  addiu      $v1, $v1, %lo(D_0019AEC0)
    /* EF804 001EE884 C0210400 */  sll        $a0, $a0, 7
    /* EF808 001EE888 21808300 */  addu       $s0, $a0, $v1
    /* EF80C 001EE88C 5000028E */  lw         $v0, 0x50($s0)
    /* EF810 001EE890 02004230 */  andi       $v0, $v0, 0x2
    /* EF814 001EE894 4F004010 */  beqz       $v0, .L001EE9D4
    /* EF818 001EE898 2000BF7B */   lq        $ra, 0x20($sp)
    /* EF81C 001EE89C 7F43013C */  lui        $at, (0x437F0000 >> 16)
    /* EF820 001EE8A0 00A08144 */  mtc1       $at, $f20
    /* EF824 001EE8A4 0000ACC7 */  lwc1       $f12, 0x0($sp)
    /* EF828 001EE8A8 26EA070C */  jal        func_001FA898
    /* EF82C 001EE8AC 02631446 */   mul.s     $f12, $f12, $f20
    /* EF830 001EE8B0 0000A7C7 */  lwc1       $f7, 0x0($sp)
    /* EF834 001EE8B4 FF000924 */  addiu      $t1, $zero, 0xFF
    /* EF838 001EE8B8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EF83C 001EE8BC 00088144 */  mtc1       $at, $f1
    /* EF840 001EE8C0 23482201 */  subu       $t1, $t1, $v0
    /* EF844 001EE8C4 680004C6 */  lwc1       $f4, 0x68($s0)
    /* EF848 001EE8C8 41080746 */  sub.s      $f1, $f1, $f7
    /* EF84C 001EE8CC 780002C6 */  lwc1       $f2, 0x78($s0)
    /* EF850 001EE8D0 700005C6 */  lwc1       $f5, 0x70($s0)
    /* EF854 001EE8D4 600000C6 */  lwc1       $f0, 0x60($s0)
    /* EF858 001EE8D8 82100746 */  mul.s      $f2, $f2, $f7
    /* EF85C 001EE8DC 02210146 */  mul.s      $f4, $f4, $f1
    /* EF860 001EE8E0 6C0006C6 */  lwc1       $f6, 0x6C($s0)
    /* EF864 001EE8E4 02000146 */  mul.s      $f0, $f0, $f1
    /* EF868 001EE8E8 5C0008C6 */  lwc1       $f8, 0x5C($s0)
    /* EF86C 001EE8EC 42290746 */  mul.s      $f5, $f5, $f7
    /* EF870 001EE8F0 740003C6 */  lwc1       $f3, 0x74($s0)
    /* EF874 001EE8F4 640009C6 */  lwc1       $f9, 0x64($s0)
    /* EF878 001EE8F8 80100446 */  add.s      $f2, $f2, $f4
    /* EF87C 001EE8FC 5800058E */  lw         $a1, 0x58($s0)
    /* EF880 001EE900 82310746 */  mul.s      $f6, $f6, $f7
    /* EF884 001EE904 5400068E */  lw         $a2, 0x54($s0)
    /* EF888 001EE908 40290046 */  add.s      $f5, $f5, $f0
    /* EF88C 001EE90C 02420146 */  mul.s      $f8, $f8, $f1
    /* EF890 001EE910 031C0500 */  sra        $v1, $a1, 16
    /* EF894 001EE914 C2180746 */  mul.s      $f3, $f3, $f7
    /* EF898 001EE918 033C0600 */  sra        $a3, $a2, 16
    /* EF89C 001EE91C 424A0146 */  mul.s      $f9, $f9, $f1
    /* EF8A0 001EE920 03220500 */  sra        $a0, $a1, 8
    /* EF8A4 001EE924 03420600 */  sra        $t0, $a2, 8
    /* EF8A8 001EE928 82101446 */  mul.s      $f2, $f2, $f20
    /* EF8AC 001EE92C FF008430 */  andi       $a0, $a0, 0xFF
    /* EF8B0 001EE930 FF006330 */  andi       $v1, $v1, 0xFF
    /* EF8B4 001EE934 FF000831 */  andi       $t0, $t0, 0xFF
    /* EF8B8 001EE938 FF00E730 */  andi       $a3, $a3, 0xFF
    /* EF8BC 001EE93C FF00A530 */  andi       $a1, $a1, 0xFF
    /* EF8C0 001EE940 FF00C630 */  andi       $a2, $a2, 0xFF
    /* EF8C4 001EE944 18186200 */  mult       $v1, $v1, $v0
    /* EF8C8 001EE948 1838E900 */  mult       $a3, $a3, $t1
    /* EF8CC 001EE94C 80310846 */  add.s      $f6, $f6, $f8
    /* EF8D0 001EE950 8044013C */  lui        $at, (0x44800000 >> 16)
    /* EF8D4 001EE954 00008144 */  mtc1       $at, $f0
    /* EF8D8 001EE958 1828A200 */  mult       $a1, $a1, $v0
    /* EF8DC 001EE95C 18208200 */  mult       $a0, $a0, $v0
    /* EF8E0 001EE960 C0180946 */  add.s      $f3, $f3, $f9
    /* EF8E4 001EE964 1830C900 */  mult       $a2, $a2, $t1
    /* EF8E8 001EE968 18400901 */  mult       $t0, $t0, $t1
    /* EF8EC 001EE96C 42291446 */  mul.s      $f5, $f5, $f20
    /* EF8F0 001EE970 21186700 */  addu       $v1, $v1, $a3
    /* EF8F4 001EE974 81A00246 */  sub.s      $f2, $f20, $f2
    /* EF8F8 001EE978 031A0300 */  sra        $v1, $v1, 8
    /* EF8FC 001EE97C C2180046 */  mul.s      $f3, $f3, $f0
    /* EF900 001EE980 1600013C */  lui        $at, %hi(D_0015F586)
    /* EF904 001EE984 86F523A0 */  sb         $v1, %lo(D_0015F586)($at)
    /* EF908 001EE988 82310046 */  mul.s      $f6, $f6, $f0
    /* EF90C 001EE98C 2128A600 */  addu       $a1, $a1, $a2
    /* EF910 001EE990 01A50546 */  sub.s      $f20, $f20, $f5
    /* EF914 001EE994 21208800 */  addu       $a0, $a0, $t0
    /* EF918 001EE998 032A0500 */  sra        $a1, $a1, 8
    /* EF91C 001EE99C 03220400 */  sra        $a0, $a0, 8
    /* EF920 001EE9A0 1600013C */  lui        $at, %hi(D_0015F584)
    /* EF924 001EE9A4 84F525A0 */  sb         $a1, %lo(D_0015F584)($at)
    /* EF928 001EE9A8 1600013C */  lui        $at, %hi(D_0015F585)
    /* EF92C 001EE9AC 85F524A0 */  sb         $a0, %lo(D_0015F585)($at)
    /* EF930 001EE9B0 1600013C */  lui        $at, %hi(D_0015F588)
    /* EF934 001EE9B4 88F526E4 */  swc1       $f6, %lo(D_0015F588)($at)
    /* EF938 001EE9B8 1600013C */  lui        $at, %hi(D_0015F58C)
    /* EF93C 001EE9BC 8CF523E4 */  swc1       $f3, %lo(D_0015F58C)($at)
    /* EF940 001EE9C0 1600013C */  lui        $at, %hi(D_0015F590)
    /* EF944 001EE9C4 90F534E4 */  swc1       $f20, %lo(D_0015F590)($at)
    /* EF948 001EE9C8 1600013C */  lui        $at, %hi(D_0015F594)
    /* EF94C 001EE9CC 94F522E4 */  swc1       $f2, %lo(D_0015F594)($at)
.align 2
  .L001EE9D0:
    /* EF950 001EE9D0 2000BF7B */  lq         $ra, 0x20($sp)
.align 2
  .L001EE9D4:
    /* EF954 001EE9D4 1000B07B */  lq         $s0, 0x10($sp)
    /* EF958 001EE9D8 3000B4C7 */  lwc1       $f20, 0x30($sp)
    /* EF95C 001EE9DC 0800E003 */  jr         $ra
    /* EF960 001EE9E0 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001EE858
    /* EF964 001EE9E4 00000000 */  nop
