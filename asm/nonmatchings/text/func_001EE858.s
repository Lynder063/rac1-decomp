.align 3
nonmatching func_001EE858, 0x18C

glabel func_001EE858
    /* EF7D8 001EE858 C0FFBD27 */  addiu      $29, $29, -0x40
    /* EF7DC 001EE85C 2000BF7F */  sq         $31, 0x20($29)
    /* EF7E0 001EE860 2D28A003 */  daddu      $5, $29, $0
    /* EF7E4 001EE864 1000B07F */  sq         $16, 0x10($29)
    /* EF7E8 001EE868 0400A637 */  ori        $6, $29, 0x4
    /* EF7EC 001EE86C 9E4E080C */  jal        func_00213A78
    /* EF7F0 001EE870 3000B4E7 */   swc1      $f20, 0x30($29)
    /* EF7F4 001EE874 56004010 */  beqz       $2, .L001EE9D0
    /* EF7F8 001EE878 0400A48F */   lw        $4, 0x4($29)
    /* EF7FC 001EE87C 1A00033C */  lui        $3, %hi(D_0019AEC0)
    /* EF800 001EE880 C0AE6324 */  addiu      $3, $3, %lo(D_0019AEC0)
    /* EF804 001EE884 C0210400 */  sll        $4, $4, 7
    /* EF808 001EE888 21808300 */  addu       $16, $4, $3
    /* EF80C 001EE88C 5000028E */  lw         $2, 0x50($16)
    /* EF810 001EE890 02004230 */  andi       $2, $2, 0x2
    /* EF814 001EE894 4F004010 */  beqz       $2, .L001EE9D4
    /* EF818 001EE898 2000BF7B */   lq        $31, 0x20($29)
    /* EF81C 001EE89C 7F43013C */  lui        $1, (0x437F0000 >> 16)
    /* EF820 001EE8A0 00A08144 */  mtc1       $1, $f20
    /* EF824 001EE8A4 0000ACC7 */  lwc1       $f12, 0x0($29)
    /* EF828 001EE8A8 26EA070C */  jal        func_001FA898
    /* EF82C 001EE8AC 02631446 */   mul.s     $f12, $f12, $f20
    /* EF830 001EE8B0 0000A7C7 */  lwc1       $f7, 0x0($29)
    /* EF834 001EE8B4 FF000924 */  addiu      $9, $0, 0xFF
    /* EF838 001EE8B8 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* EF83C 001EE8BC 00088144 */  mtc1       $1, $f1
    /* EF840 001EE8C0 23482201 */  subu       $9, $9, $2
    /* EF844 001EE8C4 680004C6 */  lwc1       $f4, 0x68($16)
    /* EF848 001EE8C8 41080746 */  sub.s      $f1, $f1, $f7
    /* EF84C 001EE8CC 780002C6 */  lwc1       $f2, 0x78($16)
    /* EF850 001EE8D0 700005C6 */  lwc1       $f5, 0x70($16)
    /* EF854 001EE8D4 600000C6 */  lwc1       $f0, 0x60($16)
    /* EF858 001EE8D8 82100746 */  mul.s      $f2, $f2, $f7
    /* EF85C 001EE8DC 02210146 */  mul.s      $f4, $f4, $f1
    /* EF860 001EE8E0 6C0006C6 */  lwc1       $f6, 0x6C($16)
    /* EF864 001EE8E4 02000146 */  mul.s      $f0, $f0, $f1
    /* EF868 001EE8E8 5C0008C6 */  lwc1       $f8, 0x5C($16)
    /* EF86C 001EE8EC 42290746 */  mul.s      $f5, $f5, $f7
    /* EF870 001EE8F0 740003C6 */  lwc1       $f3, 0x74($16)
    /* EF874 001EE8F4 640009C6 */  lwc1       $f9, 0x64($16)
    /* EF878 001EE8F8 80100446 */  add.s      $f2, $f2, $f4
    /* EF87C 001EE8FC 5800058E */  lw         $5, 0x58($16)
    /* EF880 001EE900 82310746 */  mul.s      $f6, $f6, $f7
    /* EF884 001EE904 5400068E */  lw         $6, 0x54($16)
    /* EF888 001EE908 40290046 */  add.s      $f5, $f5, $f0
    /* EF88C 001EE90C 02420146 */  mul.s      $f8, $f8, $f1
    /* EF890 001EE910 031C0500 */  sra        $3, $5, 16
    /* EF894 001EE914 C2180746 */  mul.s      $f3, $f3, $f7
    /* EF898 001EE918 033C0600 */  sra        $7, $6, 16
    /* EF89C 001EE91C 424A0146 */  mul.s      $f9, $f9, $f1
    /* EF8A0 001EE920 03220500 */  sra        $4, $5, 8
    /* EF8A4 001EE924 03420600 */  sra        $8, $6, 8
    /* EF8A8 001EE928 82101446 */  mul.s      $f2, $f2, $f20
    /* EF8AC 001EE92C FF008430 */  andi       $4, $4, 0xFF
    /* EF8B0 001EE930 FF006330 */  andi       $3, $3, 0xFF
    /* EF8B4 001EE934 FF000831 */  andi       $8, $8, 0xFF
    /* EF8B8 001EE938 FF00E730 */  andi       $7, $7, 0xFF
    /* EF8BC 001EE93C FF00A530 */  andi       $5, $5, 0xFF
    /* EF8C0 001EE940 FF00C630 */  andi       $6, $6, 0xFF
    /* EF8C4 001EE944 18186200 */  mult       $3, $3, $2
    /* EF8C8 001EE948 1838E900 */  mult       $7, $7, $9
    /* EF8CC 001EE94C 80310846 */  add.s      $f6, $f6, $f8
    /* EF8D0 001EE950 8044013C */  lui        $1, (0x44800000 >> 16)
    /* EF8D4 001EE954 00008144 */  mtc1       $1, $f0
    /* EF8D8 001EE958 1828A200 */  mult       $5, $5, $2
    /* EF8DC 001EE95C 18208200 */  mult       $4, $4, $2
    /* EF8E0 001EE960 C0180946 */  add.s      $f3, $f3, $f9
    /* EF8E4 001EE964 1830C900 */  mult       $6, $6, $9
    /* EF8E8 001EE968 18400901 */  mult       $8, $8, $9
    /* EF8EC 001EE96C 42291446 */  mul.s      $f5, $f5, $f20
    /* EF8F0 001EE970 21186700 */  addu       $3, $3, $7
    /* EF8F4 001EE974 81A00246 */  sub.s      $f2, $f20, $f2
    /* EF8F8 001EE978 031A0300 */  sra        $3, $3, 8
    /* EF8FC 001EE97C C2180046 */  mul.s      $f3, $f3, $f0
    /* EF900 001EE980 1600013C */  lui        $1, %hi(D_0015F586)
    /* EF904 001EE984 86F523A0 */  sb         $3, %lo(D_0015F586)($1)
    /* EF908 001EE988 82310046 */  mul.s      $f6, $f6, $f0
    /* EF90C 001EE98C 2128A600 */  addu       $5, $5, $6
    /* EF910 001EE990 01A50546 */  sub.s      $f20, $f20, $f5
    /* EF914 001EE994 21208800 */  addu       $4, $4, $8
    /* EF918 001EE998 032A0500 */  sra        $5, $5, 8
    /* EF91C 001EE99C 03220400 */  sra        $4, $4, 8
    /* EF920 001EE9A0 1600013C */  lui        $1, %hi(D_0015F584)
    /* EF924 001EE9A4 84F525A0 */  sb         $5, %lo(D_0015F584)($1)
    /* EF928 001EE9A8 1600013C */  lui        $1, %hi(D_0015F585)
    /* EF92C 001EE9AC 85F524A0 */  sb         $4, %lo(D_0015F585)($1)
    /* EF930 001EE9B0 1600013C */  lui        $1, %hi(D_0015F588)
    /* EF934 001EE9B4 88F526E4 */  swc1       $f6, %lo(D_0015F588)($1)
    /* EF938 001EE9B8 1600013C */  lui        $1, %hi(D_0015F58C)
    /* EF93C 001EE9BC 8CF523E4 */  swc1       $f3, %lo(D_0015F58C)($1)
    /* EF940 001EE9C0 1600013C */  lui        $1, %hi(D_0015F590)
    /* EF944 001EE9C4 90F534E4 */  swc1       $f20, %lo(D_0015F590)($1)
    /* EF948 001EE9C8 1600013C */  lui        $1, %hi(D_0015F594)
    /* EF94C 001EE9CC 94F522E4 */  swc1       $f2, %lo(D_0015F594)($1)
.align 2
  .L001EE9D0:
    /* EF950 001EE9D0 2000BF7B */  lq         $31, 0x20($29)
.align 2
  .L001EE9D4:
    /* EF954 001EE9D4 1000B07B */  lq         $16, 0x10($29)
    /* EF958 001EE9D8 3000B4C7 */  lwc1       $f20, 0x30($29)
    /* EF95C 001EE9DC 0800E003 */  jr         $31
    /* EF960 001EE9E0 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_001EE858
    /* EF964 001EE9E4 00000000 */  nop
