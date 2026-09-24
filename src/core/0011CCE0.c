#include "common.h"
#include "structs.h"

/*
 * core_text object 0x11CCE0-0x11D0D0. Boundaries are retail's linker fill
 * (0xCDCDCDCD) between objects; see docs/DECOMP_PROGRESS.md.
 *
 * Sony's EE kernel library (libkernl), eeloadfile.o: _lf_bind,
 * _lf_version, _sceSifLoadModuleBuffer and sceSifLoadModuleBuffer. The
 * linker dead-stripped the rest of the member; func_0011D098 is the seven
 * one-word remnants it left. Built with Sony's 2.9-ee (Makefile.sn,
 * EE29_CORE), like the prebuilt libkernl.a.
 */

/* Declarations in scope here before the split. */
extern long func_00116F68(int arg0, int arg1, int arg2);
extern int D_0015ED10;
extern void *D_0012F86C NOT_SDA;
extern int func_001162B8(void *arg0, void *arg1, void *arg2);
extern int func_00116320(void *arg0, void *arg1, void *arg2);
extern long func_001163A0(void *arg0, void *arg1, void *arg2);
extern void func_00116408(void *arg0);
extern void func_00113968(void);
extern void func_00114438(void *, void *);
extern char D_00152470[];
extern int func_00119088();
extern int func_00119110();
extern long func_00116108_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00116108");
extern long func_001188C8_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_001188C8");
extern long func_00114518_wide(int *errOut, void *a, void *b, void *c)
    __asm__("func_00114518");
extern int func_00112468(int *errOut, int arg1);
extern int func_00114060(int, void *);
extern void func_00113AE0(void *);
extern void func_00117118(void *, void *, int, int);
extern int func_00119008();
extern int D_0012FCF0 NOT_SDA;
extern void func_00118E90(int arg0, void *arg1);
extern void *D_00154A40 NOT_SDA;
extern int D_00155080[];
extern void func_001193F8(int);
extern void func_00118AD0(int, int);
extern int D_00154F54;
extern int D_0012FD04;
extern int D_00154F64 NOT_SDA;
extern int D_00154F6C NOT_SDA;
extern void func_0011AA90(int, int, int, int, int, int, int);
extern void func_0011AA00(void);
extern int D_0012FD08 NOT_SDA;
extern int func_0011D960(void);
extern void func_0011D9A8(void);
extern int func_00118C70(void *);
extern int D_0012FDA0;
extern int D_0012FDA4;
extern char D_00157E80[];
extern int D_0012FD9C;
extern void func_0011BBF0(void);
extern int D_0012FD9C NOT_SDA;
extern int func_001151B4();
extern char D_0012FCEC[];
extern char D_001580A8[];
extern int D_0012FDA8;
extern void func_001153FC(void *, int, int);
extern int D_0012FD94;
extern int D_0012FDAC;
extern char D_00158140[];
extern int D_00158180;
extern int D_001581C0;
extern int func_0011BEB8(void);

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CCE0);

extern char D_00158528[];
extern int D_0012FDB4;

/* Twin of func_0011BEB8 on a different slot/handle pair. */
int func_0011CDE0(void) {
    char *buf = D_0012FCEC;
    char *slot = D_00158528;
    int r = 0;

    if (func_001151B4(slot, buf, 4) != 0 &&
        func_001151B4(slot, D_0012FDB4, 4) != 0) {
        r = func_001151B4(buf, D_0012FDB4, 4) != 0;
    }
    return r;
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011CE70);

extern int func_0011CE70(int arg0, int arg1, int arg2, void *arg3);

int func_0011D078(int arg0, int arg1, int arg2) {
    char buf[0x10];
    return func_0011CE70(arg0, arg1, arg2, buf);
}

INCLUDE_ASM("asm/nonmatchings/core_text", func_0011D098);
