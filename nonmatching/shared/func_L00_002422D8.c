/* NON_MATCHING func_L00_002422D8 -- src/overlays/shared/loaders_00240398.c
 * Best so far: BYTES 85/9264 (99.1% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   - run 16: BYTES 156/9264. Moby field stores written vis, uid, mission, b2, b1 (order derived from the schedule
 *   - run 17: BYTES 119/9264, 22 unaligned, 33 register-only. Ship moby: ship[3] read into a local right after the
 *   - Left: first max-of-three pair in tie and shrub loops (save/arg order), sound alloc (zero arg before the poin
 *   - run 18 (diagnostic only, p17.c): the table clear called with another symbol, so its argument pseudo no longe
 *   - run 19: BYTES 85/9264, 22 unaligned, 3 register-only. Function-scope scratch 'tmp' holds the level number be
 *   - run 20 (p19.c): SIZE 9272, rejected. Bump+align as one expression after the call is not moved above the call
 *   - run 21 (p20.c): func_001F9CB8 declared __attribute__((const)): byte-identical to p18.c, no effect; not kept.
 *   - Stopped after run 21 (9 runs unused): no hypothesis left for the remaining four spots that the last runs hav
 */
typedef struct {
    int f0;
    int f4;
    int f8;
    int fC;
    int f10[9];
    int f34;
    int f38;
    int f3C;
    int f40;
    int f44;
    int f48;
    int f4C;
    int f50;
    int f54;
    int f58;
    int f5C;
    int f60;
    int f64;
    int f68;
    int f6C;
    int f70;
    int f74;
    int f78;
    int f7C;
    int f80;
    int f84;
    int f88;
    int f8C;
} Hdr_422D8;
typedef struct {
    char pad0[4];
    Hdr_422D8 *f4;
    char pad8[0x10];
    char *f18;
} Lvl173F00_422D8;
typedef struct {
    int f0;
    char *f4;
    char *f8;
    int fC;
    int f10;
    int f14;
} Lvl173F40_422D8;
typedef struct {
    char pad0[0x23C];
    int f23C;
    int f240;
    int f244;
} Lvl16CB40_422D8;
typedef struct {
    int f0;
    int f4;
} PvarEnt_422D8;
typedef int u128_422D8 __attribute__((mode(TI)));
typedef struct {
    char pad0[0x2970];
    int f2970;
    int f2974;
    int f2978;
    int f297C;
} G137C80_422D8;
typedef struct TieMtx_422D8 {
    float m0[3];
    float fC;
    float m1[3];
    float f1C;
    float m2[3];
    float f2C;
    float m3[3];
    float f3C;
    char pad40[0x100];
    char f140[0x80];
} TieMtx_422D8;
typedef struct TieInst_422D8 {
    float f0[3];
    float fC;
    TieMtx_422D8 *f10;
    float f14;
    unsigned short f18;
    unsigned char f1A;
    unsigned char f1B;
    unsigned short f1C;
    unsigned short f1E;
} TieInst_422D8;
typedef struct {
    char pad0[0x26];
    unsigned short f26;
    TieInst_422D8 *f28;
    char pad2C[4];
    float f30[3];
    float f3C;
    float f40;
} TieClass_422D8;
typedef struct ShrubMtx_422D8 {
    float m0[3];
    int fC;
    float m1[3];
    int f1C;
    float m2[3];
    int f2C;
    float m3[3];
    float f3C;
} ShrubMtx_422D8;
typedef struct ShrubInst_422D8 {
    float f0[3];
    float fC;
    float f10;
    char pad14[3];
    unsigned char f17;
    short f18;
    unsigned char f1A;
    unsigned char f1B;
    unsigned short f1C;
    unsigned short f1E;
} ShrubInst_422D8;
typedef struct {
    char pad0[0xC];
    float fC;
    char pad10[6];
    unsigned short f16;
    ShrubInst_422D8 *f18;
    float *f1C;
    float f20;
} ShrubClass_422D8;
typedef struct {
    char pad0[0x24];
    float f24;
    char pad28[0x1C];
    unsigned short f44;
} MobyClass_422D8;
typedef struct Moby_422D8 {
    char pad0[0x10];
    float f10;
    float f14;
    float f18;
    char pad1C[4];
    unsigned char f20;
    unsigned char f21;
    char pad22[2];
    MobyClass_422D8 *f24;
    char pad28[4];
    float f2C;
    unsigned char f30;
    char pad31;
    unsigned short f32;
    unsigned short f34;
    unsigned short f36;
    int f38;
    char pad3C[4];
    float f40;
    float f44;
    float f48;
    char pad4C[0x28];
    void *f74;
    int f78;
    char pad7C[4];
    int f80;
    char pad84[0x22];
    short fA6;
    char padA8[8];
    unsigned char fB0;
    unsigned char fB1;
    short fB2;
    short fB4;
    short fB6;
    char padB8[0x48];
} Moby_422D8;
typedef struct {
    char pad0[0x36];
    unsigned short f36;
    char pad38[2];
    unsigned short f3A;
    char pad3C;
    unsigned char f3D;
    char pad3E[2];
} Tfrag_422D8;
typedef struct {
    char pad0[0x48];
    int f48;
    int f4C;
    char pad50[0x30];
} Light_422D8;
typedef struct {
    int f0;
    int pad4[3];
} Text_422D8;
typedef struct {
    char pad0[0x2C];
    int f2C;
} TextHdr_422D8;
typedef struct {
    float f0;
    float f4;
    float f8;
    int fC;
    float f10;
    float f14;
    float f18;
    int f1C;
} Cuboid_422D8;
typedef struct {
    char pad0[8];
    int f8;
    char padC[0x84];
} SndInst_422D8;
typedef struct {
    char pad0[0xD90];
    int fD90;
    SndInst_422D8 *fD94;
} SndGlob_422D8;
typedef struct {
    u128_422D8 f0;
    char *f10;
    int f14;
    char pad18[8];
} Spline_422D8;
typedef struct {
    Moby_422D8 *f0;
    char pad4[0x22];
    short f26;
    char pad28[8];
    int f30;
    int f34;
    int f38;
} Ship_422D8;
typedef struct {
    char pad0[0x2080];
    Moby_422D8 *f2080;
    char pad2084[0x28C];
} Hero_422D8;

extern void func_002176C8_422D8(void *, int, int) __asm__("func_002176C8");
extern void func_00118D80(int);
extern void func_0020C468(void *, void *);
extern void func_001F99B0(void *, int, int);
extern void func_001160C8(int);
extern void func_L00_002623D0(int);
extern void func_001F99D8(void *, int);
extern void func_001F2930();
extern void func_001FB448(int, int, int);
extern void func_002347F0(void *);
extern int func_001E9730();
extern void func_L00_001FF040(void *, void *, int);
extern void func_002362B0(void *);
extern void func_001F9EC0(void *, void *, void *);
extern float func_001F9CB8(void *);
extern float func_001F9B90(float, float);
extern void func_001F9C48(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_00238688(void *);
extern int func_001FA898(float);
extern float func_001FA888(int);
extern void func_0022B8F8(void *);
extern void func_L00_0028F230(short *);
extern int func_L00_00286068(int, int);
extern void func_0020D440(void *, int);
extern float func_00214358(void *, int, float);
extern void func_L00_00251E30(void *);
extern void func_0020E340(void *, int, int, int, int);
extern void func_L00_0024B1B0(int, int);
extern void func_001F9A98(void *, void *, int);
extern void func_L00_0028FB78(char *);
extern void func_00213D28(void *, int, int);
extern void *func_0020D348(int);
extern void func_L00_001F8750(void);
extern void func_L00_00205278(void);
extern void func_L00_00205598(void);
extern void func_L00_001ED6D8(void);
extern void func_L00_001ED428(void);
extern void func_00217EC0(void);
extern void func_001F6598(void);
extern void func_L00_0028F458();

extern Lvl173F00_422D8 D_L00_00173F00;
extern int D_0015EE80 MACRO_ADDR;
extern G137C80_422D8 D_00137C80_422D8 __asm__("D_00137C80");
extern char *D_0015EF4C_422D8[2] __asm__("D_0015EF4C") MACRO_ADDR;
extern Hero_422D8 D_0013F450;
extern char D_L00_00166D80[];
extern char D_L00_0018EEC0[];
extern float D_0015EE60 MACRO_ADDR;
extern Lvl173F40_422D8 D_L00_00173F40;
extern char D_L00_00173FC0[];
extern char D_L00_00174000[];
extern char D_L00_0019BB60[];
extern char D_L00_001ABB60[];
extern Lvl16CB40_422D8 D_L00_0016CB40;
extern int D_L00_0015F544 MACRO_ADDR;
extern int D_L00_0015F545 MACRO_ADDR;
extern int D_L00_0015F546 MACRO_ADDR;
extern float D_L00_0015F548 MACRO_ADDR;
extern float D_L00_0015F54C MACRO_ADDR;
extern float D_L00_0015F550 MACRO_ADDR;
extern float D_L00_0015F554 MACRO_ADDR;
extern float D_L00_0015F718 MACRO_ADDR;
extern Ship_422D8 D_0013E130;
extern float D_L00_00161040 MACRO_ADDR;
extern float D_L00_001610A0 MACRO_ADDR;
extern float D_L00_00160564 MACRO_ADDR;
extern int D_L00_001600B0 MACRO_ADDR;
extern int D_L00_0016023C MACRO_ADDR;
extern u8 D_00100AE0[];
extern unsigned char D_L00_001803C0[];
extern unsigned char D_L00_001805C0[];
extern char D_L00_0017FFC0[];
extern char D_L00_001E89D8[];
extern char D_L00_0017EDC0[];
extern int D_L00_0015FC84 MACRO_ADDR;
extern Light_422D8 D_L00_0017EFC0[];
extern int D_L00_00161010 MACRO_ADDR;
extern Tfrag_422D8 *D_L00_0016100C MACRO_ADDR;
extern int D_0015EE88 MACRO_ADDR;
extern TextHdr_422D8 D_L00_00179510;
extern Text_422D8 *D_L00_0015F740 MACRO_ADDR;
extern TieInst_422D8 *D_L00_00161080 MACRO_ADDR;
extern TieInst_422D8 *D_L00_00161084 MACRO_ADDR;
extern TieMtx_422D8 *D_L00_00161088 MACRO_ADDR;
extern int D_L00_0016108C MACRO_ADDR;
extern unsigned char D_L00_001C5E00[];
extern TieClass_422D8 *D_L00_001C5B00[];
extern ShrubInst_422D8 *D_L00_00160554 MACRO_ADDR;
extern ShrubInst_422D8 *D_L00_00160558 MACRO_ADDR;
extern ShrubMtx_422D8 *D_L00_0016055C MACRO_ADDR;
extern unsigned char *D_L00_00160560 MACRO_ADDR;
extern int D_L00_00160550 MACRO_ADDR;
extern int D_L00_00160C30[];
extern unsigned char D_L00_001BC540[];
extern ShrubClass_422D8 *D_L00_001BC3C0[];
extern Cuboid_422D8 *D_L00_0015F050 MACRO_ADDR;
extern int D_L00_0015F054 MACRO_ADDR;
extern SndGlob_422D8 D_0013E650;
extern Moby_422D8 *D_L00_00160098 MACRO_ADDR;
extern Moby_422D8 *D_L00_0016009C MACRO_ADDR;
extern Moby_422D8 *D_L00_001600A0 MACRO_ADDR;
extern char *D_L00_001600A8 MACRO_ADDR;
extern short D_L00_001ACB00[];
extern unsigned char D_L00_001BBA14[];
extern unsigned char D_L00_0015FD48[] MACRO_ADDR;
extern int D_L00_001BA860[];
extern int D_0014C290[][64];
extern int D_0015EE84 MACRO_ADDR;
extern int D_L00_001ABBC0[];
extern int D_L00_001600B4 MACRO_ADDR;
extern int D_L00_001601C4 MACRO_ADDR;
extern char *D_L00_001601C8 MACRO_ADDR;
extern char *D_L00_001B0830[];
extern int D_L00_0015F7F0 MACRO_ADDR;
extern Spline_422D8 *D_L00_0015F7EC MACRO_ADDR;
extern char *D_L00_001601A4 MACRO_ADDR;
extern int D_L00_001601A8 MACRO_ADDR;
extern char *D_L00_001601AC MACRO_ADDR;
extern int D_L00_001601B0 MACRO_ADDR;
extern char *D_L00_001601B4 MACRO_ADDR;
extern int D_L00_001601B8 MACRO_ADDR;
extern char *D_L00_001601BC MACRO_ADDR;
extern int D_L00_001601C0 MACRO_ADDR;
extern char *D_L00_0015F080 MACRO_ADDR;
extern char *D_L00_0015FC80 MACRO_ADDR;
extern char *D_L00_0015FC40 MACRO_ADDR;
extern int D_L00_0015FC10 MACRO_ADDR;
extern char *D_L00_00160100 MACRO_ADDR;
extern int D_L00_001600D4 MACRO_ADDR;
extern char *D_L00_0016022C MACRO_ADDR;
extern char D_L00_001B1C00[];
extern int D_L00_00160234 MACRO_ADDR;
extern int D_L00_00160230 MACRO_ADDR;
extern int D_L00_00160238 MACRO_ADDR;
extern int D_L00_00160600 MACRO_ADDR;
extern int D_L00_00160608[];
extern int D_L00_0015F6E0 MACRO_ADDR;
extern char D_L00_001E8A28[];
extern char D_L00_001E8A60[];
extern char D_L00_001E8A88[];
extern char D_L00_001E8AC0[];
extern int D_L00_0016C158[];
extern int D_L00_001DD400[];
extern short D_L00_001B0AF0[];
extern short D_L00_001B0B30[];
extern short D_L00_001B0BB0[];
extern int D_L00_0015F6B0 MACRO_ADDR;
extern int D_L00_0015F71C MACRO_ADDR;
extern int D_L00_0016190C MACRO_ADDR;
extern char D_L00_0016C880[];
extern char D_L00_0016C8B0[];
extern char *D_L00_0015F418 MACRO_ADDR;
extern char *D_L00_0015F410 MACRO_ADDR;

/* Loads a level's gameplay file into the level heap: settings, lights, ties, shrubs, mobys, paths and the occlusion tables; returns the heap cursor. */
char *func_L00_002422D8(int arg0) {
    Hdr_422D8 *hdr;
    char *mem;
    float *ship;
    short *idx = D_L00_001ACB00;
    int pvoff;
    int tmp;

    hdr = D_L00_00173F00.f4;
    mem = D_L00_00173F00.f18;
    if (arg0 == 0) {
        if (D_0015EE80 != 0) {
            func_002176C8_422D8(mem, D_00137C80_422D8.f2978, D_00137C80_422D8.f297C);
        } else {
            func_002176C8_422D8(mem, D_00137C80_422D8.f2970, D_00137C80_422D8.f2974);
        }
        D_0015EF4C_422D8[1] = mem;
    }
    func_00118D80(0);
    func_0020C468(D_0015EF4C_422D8[1], hdr);
    func_00118D80(0);
    func_001F99B0(&D_0013F450, 0, 0x2310);
    func_001F99B0(D_L00_00166D80, 0, 0x3A0);
    func_001F99B0(D_L00_0018EEC0, 0, 0x180);
    func_001160C8(0x4D2);
    if (D_0015EE80 != 0) {
        if (D_0015EE60 == 1.0f) {
            func_L00_002623D0(1);
        }
    } else {
        if (D_0015EE60 != 1.0f) {
            func_L00_002623D0(0);
        }
    }
    D_L00_00173F40.f4 = D_L00_00174000;
    D_L00_00173F40.f8 = D_L00_00173FC0;
    D_L00_00173F40.fC = 0;
    D_L00_00173F40.f10 = 0;
    D_L00_00173F40.f14 = 0;
    func_001F99D8(D_L00_0019BB60, 0x10000);
    func_001F99D8(D_L00_001ABB60, 0x60);
    {
        int *p = (int *)((char *)hdr + hdr->f0);
        int *c;

        D_L00_0016CB40.f23C = *p++;
        D_L00_0016CB40.f240 = *p++;
        D_L00_0016CB40.f244 = *p++;
        *(unsigned char *)&D_L00_0015F544 = *p++;
        *(unsigned char *)&D_L00_0015F545 = *p++;
        *(unsigned char *)&D_L00_0015F546 = *p++;
        D_L00_0015F548 = ((float *)p)[0];
        D_L00_0015F54C = ((float *)p)[1];
        D_L00_0015F550 = ((float *)p)[2];
        D_L00_0015F554 = ((float *)p)[3];
        D_L00_0015F718 = ((float *)p)[4];
        ship = (float *)(p + 5);
        c = p + 9;
        p += 12;
        D_0013E130.f30 = c[0];
        D_0013E130.f34 = c[1];
        D_0013E130.f38 = c[2];
    }
    func_001F2930();
    D_L00_00161040 = 512000.0f;
    D_L00_001610A0 = 720.0f;
    D_L00_00160564 = 500.0f;
    D_L00_001600B0 = 500;
    D_L00_0016023C = 0x1F4000;
    func_001FB448(D_L00_0016CB40.f23C, D_L00_0016CB40.f240, D_L00_0016CB40.f244);
    func_002347F0(D_00100AE0);
    func_001F99D8(D_L00_001803C0, 0x100);
    func_001F99D8(D_L00_001805C0, 0x180);
    func_001F99D8(D_L00_0017FFC0, 0x400);
    {
        char *p = (char *)hdr + hdr->f4;
        int n = *(int *)p;

        p += 0x10;
        if (n >= 12) {
            func_001E9730(D_L00_001E89D8);
            n = 12;
        }
        if (n != 0) {
            func_L00_001FF040(D_L00_0017FFC0, p, n << 6);
        }
    }
    if (hdr->f80 != 0) {
        char *p = (char *)hdr + hdr->f80;

        D_L00_0015FC84 = *(int *)p;
        p += 0x10;
        if (D_L00_0015FC84 != 0) {
            Light_422D8 *l;
            int i;

            func_L00_001FF040(D_L00_0017EDC0, p, D_L00_0015FC84 << 4);
            func_L00_001FF040(D_L00_0017EFC0, p + (D_L00_0015FC84 << 4), D_L00_0015FC84 << 7);
            for (i = 0; i < D_L00_0015FC84; i++) {
                l = &D_L00_0017EFC0[i];
                if (l->f48 < 0) {
                    l->f48 = 11;
                }
                if (l->f4C < 0) {
                    l->f4C = 11;
                }
            }
        }
    } else {
        D_L00_0015FC84 = 0;
    }
    {
        int i;

        for (i = 0; i < D_L00_00161010; i++) {
            D_L00_0016100C[i].f36 = 0xFFFF;
        }
    }
    {
        int i = 0;

        while (i < D_L00_00161010) {
            unsigned short *q = (unsigned short *)0x70003000;
            int j;

            for (j = 0; j < 0x3FF && i < D_L00_00161010; j++) {
                *q = i;
                q++;
                i++;
            }
            *q = 0xFFFF;
            func_002362B0((void *)0x70003000);
        }
    }
    if (hdr->f10[0] != 0) {
        int lang = D_0015EE88 * 4;
        char *p = (char *)hdr + *(int *)((char *)hdr + lang + 0x10);
        int size;
        int i;

        D_L00_00179510.f2C = *(int *)p;
        p += 4;
        size = *(int *)p;
        p += 4;
        D_L00_0015F740 = (Text_422D8 *)mem;
        size += 3;
        size &= ~3;
        size -= 8;
        func_L00_001FF040(mem, p, size);
        for (i = 0; i < D_L00_00179510.f2C; i++) {
            int delta = (int)D_L00_0015F740 - 8;

            D_L00_0015F740[i].f0 += delta;
        }
        mem = (char *)(((u32)mem + size + 0x3F) & 0xFFFFFFC0);
    }
    {
        char *p = (char *)hdr + hdr->f34;
        int n = *(int *)p;
        int i;
        int last;

        D_L00_00161080 = (TieInst_422D8 *)mem;
        p += 0x10;
        D_L00_0016108C = n;
        mem += n << 5;
        if (n != 0) {
            func_001F99B0(D_L00_00161080, 0, n << 5);
        }
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        D_L00_00161088 = (TieMtx_422D8 *)mem;
        mem += D_L00_0016108C * 0x1C0;
        if (D_L00_0016108C != 0) {
            func_001F99B0(D_L00_00161088, 0, D_L00_0016108C * 0x1C0);
        }
        last = -1;
        D_L00_00161084 = D_L00_00161080 + D_L00_0016108C;
        for (i = 0; i < D_L00_0016108C; i++) {
            TieInst_422D8 *inst = D_L00_00161080 + i;
            TieMtx_422D8 *mtx = D_L00_00161088 + i;
            int id;
            float x;
            float s;

            inst->f1A = D_L00_001C5E00[*(int *)p];
            if (inst->f1A != last) {
                D_L00_001C5B00[inst->f1A]->f28 = inst;
                D_L00_001C5B00[inst->f1A]->f26 = 0;
                last = inst->f1A;
            }
            D_L00_001C5B00[inst->f1A]->f26++;
            inst->f10 = mtx;
            inst->f14 = (float)*(int *)(p + 4);
            inst->f1E = 0xFFFF;
            inst->f1B = 0;
            inst->f1C = 0;
            id = *(int *)(p + 0xC);
            qcopy(mtx, p + 0x10);
            qcopy(mtx->m1, p + 0x20);
            qcopy(mtx->m2, p + 0x30);
            qcopy(mtx->m3, p + 0x40);
            inst->f18 = id;
            p += 0x50;
            mtx->f3C = D_L00_001C5B00[inst->f1A]->f40;
            func_001F9EC0(inst, D_L00_001C5B00[inst->f1A]->f30, mtx);
            x = func_001F9CB8(mtx);
            s = func_001F9B90(func_001F9B90(x, func_001F9CB8(mtx->m1)), func_001F9CB8(mtx->m2));
            inst->fC = D_L00_001C5B00[inst->f1A]->f3C * s;
            func_001F9C48(inst, inst, mtx->f3C);
            func_001F9BD8(inst, inst, mtx->m3);
            D_L00_00161088[i].fC = 1.0f / func_001F9CB8(&D_L00_00161088[i]);
            D_L00_00161088[i].f1C = 1.0f / func_001F9CB8(D_L00_00161088[i].m1);
            D_L00_00161088[i].f2C = 1.0f / func_001F9CB8(D_L00_00161088[i].m2);
            func_L00_001FF040(mtx->f140, p, 0x80);
            p += 0x80;
            inst->f1C = *(unsigned short *)p;
            p += 0x10;
        }
    }
    {
        unsigned short *q = (unsigned short *)0x70000000;
        int i;

        for (i = 0; i < D_L00_0016108C; i++) {
            *q++ = i;
        }
        *q = 0xFFFF;
        func_00238688((void *)0x70000000);
    }
    {
        char *p = (char *)hdr + hdr->f3C;
        int n = *(int *)p;
        int last;
        int i;

        D_L00_00160554 = (ShrubInst_422D8 *)mem;
        p += 0x10;
        D_L00_00160550 = n;
        mem += n << 5;
        if (n != 0) {
            func_001F99B0(D_L00_00160554, 0, n << 5);
        }
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        D_L00_0016055C = (ShrubMtx_422D8 *)mem;
        mem += D_L00_00160550 << 6;
        if (D_L00_00160550 != 0) {
            func_001F99B0(D_L00_0016055C, 0, D_L00_00160550 << 6);
        }
        D_L00_00160560 = (unsigned char *)mem;
        mem += D_L00_00160550 * 0x60;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (D_L00_00160550 != 0) {
            func_001F99B0(D_L00_00160560, 0, D_L00_00160550 * 0x60);
        }
        last = -1;
        D_L00_00160C30[1] = (int)D_L00_00160560;
        D_L00_00160558 = D_L00_00160554 + D_L00_00160550;
        for (i = 0; i < D_L00_00160550; i++) {
            ShrubInst_422D8 *inst = D_L00_00160554 + i;
            ShrubMtx_422D8 *mtx = D_L00_0016055C + i;
            int cls = D_L00_001BC540[*(int *)p];
            float x;
            float s;

            inst->f1A = cls;
            if (cls != last) {
                last = cls;
                D_L00_001BC3C0[cls]->f18 = inst;
                D_L00_001BC3C0[cls]->f16 = 0;
            }
            D_L00_001BC3C0[cls]->f16++;
            inst->f18 = i;
            inst->f10 = *(float *)(p + 4);
            if (inst->f10 < 16.0f) {
                inst->f10 = 16.0f;
            }
            inst->f1B = 0;
            inst->f1E = 0xFFFF;
            if (D_L00_001BC3C0[cls]->f1C != 0) {
                float d;

                inst->f17 = func_001FA898(*D_L00_001BC3C0[cls]->f1C);
                d = func_001FA888(inst->f17) + 24.0f;
                if (inst->f10 < d) {
                    inst->f10 = d;
                }
            }
            qcopy(mtx, p + 0x10);
            qcopy(mtx->m1, p + 0x20);
            qcopy(mtx->m2, p + 0x30);
            qcopy(mtx->m3, p + 0x40);
            p += 0x50;
            mtx->f3C = D_L00_001BC3C0[cls]->f20;
            {
                float a = (func_001F9CB8(mtx) + func_001F9CB8(mtx->m1)) * 0.5f;
                float b = func_001F9CB8(mtx->m2);
                int ia = func_001FA898(a * 4096.0f);
                int ib = func_001FA898(b * 4096.0f);

                if (ib > 0x10000) {
                    ib = 0x10000;
                }
                if (ia > 0x10000) {
                    ia = 0x10000;
                }
                mtx->f2C = ia | (ib << 16);
            }
            {
                int r;
                int g;
                int b;

                r = *(int *)p;
                p += 4;
                g = *(int *)p;
                p += 4;
                b = *(int *)p;
                p += 8;
                g = (g << 8) | 0x80000000;
                mtx->fC = (b << 16) | g | r;
            }
            inst->f1C = *(unsigned short *)p;
            p += 0x10;
            func_001F9EC0(inst, D_L00_001BC3C0[cls], mtx);
            x = func_001F9CB8(mtx);
            s = func_001F9B90(func_001F9B90(x, func_001F9CB8(mtx->m1)), func_001F9CB8(mtx->m2));
            inst->fC = D_L00_001BC3C0[cls]->fC * s;
            func_001F9C48(inst, inst, mtx->f3C);
            func_001F9BD8(inst, inst, mtx->m3);
        }
    }
    {
        unsigned short *q = (unsigned short *)0x70000000;
        int i;

        for (i = 0; i < D_L00_00160550; i++) {
            *q++ = i;
        }
        *q = 0xFFFF;
        func_0022B8F8((void *)0x70000000);
    }
    {
        int i;

        for (i = 0; i < D_L00_00160550; i++) {
            unsigned char *q = D_L00_00160560 + i * 0x60;
            int r = 0;
            int g = 0;
            int b = 0;
            int n = 24;
            int j;

            for (j = 0; j < n; j++) {
                r += q[0];
                g += q[1];
                b += q[2];
                q += 4;
            }
            g /= n;
            b /= n;
            r /= n;
            *(int *)((char *)D_L00_0016055C + i * 0x40 + 0x1C) = (b << 16) | (g << 8) | r;
        }
    }
    if (hdr->f8 != 0) {
        char *p = (char *)hdr + hdr->f8;
        int n = *(int *)p;
        int i;

        D_L00_0015F050 = (Cuboid_422D8 *)mem;
        p += 0x10;
        D_L00_0015F054 = n;
        mem += n << 5;
        if (n != 0) {
            func_001F99B0(D_L00_0015F050, 0, n << 5);
        }
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        for (i = 0; i < D_L00_0015F054; i++) {
            D_L00_0015F050[i].fC = *(int *)p;
            p += 4;
            D_L00_0015F050[i].f0 = ((float *)p)[0];
            D_L00_0015F050[i].f4 = ((float *)p)[1];
            D_L00_0015F050[i].f8 = ((float *)p)[2];
            p += 0xC;
            D_L00_0015F050[i].f10 = ((float *)p)[0];
            D_L00_0015F050[i].f14 = ((float *)p)[1];
            D_L00_0015F050[i].f18 = ((float *)p)[2];
            p += 0xC;
            D_L00_0015F050[i].f1C = *(int *)p;
            p += 4;
        }
    }
    if (hdr->fC != 0) {
        char *p = (char *)hdr + hdr->fC;
        int n = *(int *)p;

        p += 0x10;
        D_0013E650.fD90 = n;
        if (n != 0) {
            int size = n * 0x90;
            char *old;
            int i;

            D_0013E650.fD94 = (SndInst_422D8 *)mem;
            old = mem;
            mem += size;
            mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
            func_001F99B0(old, 0, size);
            for (i = 0; i < D_0013E650.fD90; i++) {
                SndInst_422D8 *e = D_0013E650.fD94 + i;

                func_L00_001FF040(e, p, 0x90);
                p += 0x90;
                func_L00_0028F230((short *)e);
            }
        } else {
            D_0013E650.fD94 = 0;
        }
    }
    {
        char *p = (char *)hdr + hdr->f44;
        int n2;
        int count = 0;
        int n;
        char *next;
        int i;
        int hidden = 1;

        n = *(int *)p;
        p += 4;
        n2 = *(int *)p;
        p += 0xC;
        D_L00_00160098 = (Moby_422D8 *)mem;
        func_001F99B0(mem, 0, (n + n2) << 8);
        for (i = 0; i < n; i++) {
            int mission;
            int flags;
            int uid;
            int bolts;
            int bolts2;
            int b1;
            int b2;
            unsigned char vis = 0xFE;
            int skip = 0;

            next = p + ((*(int *)p >> 2) << 2);
            p += 4;
            mission = *(int *)p;
            p += 4;
            flags = *(int *)p;
            p += 4;
            uid = *(int *)p;
            p += 4;
            bolts = *(int *)p;
            p += 4;
            bolts2 = *(int *)p;
            p += 4;
            b1 = bolts;
            b2 = b1;
            if (flags != 0) {
                tmp = D_0015EE84;
                if (flags & 0x10) {
                    vis = func_L00_00286068(tmp, uid);
                } else {
                    vis = 0xFF;
                }
                if (D_L00_001BBA14[uid] != 0) {
                    skip = 1;
                } else if (flags & 3) {
                    if (D_L00_0015FD48[mission] == 0xFF) {
                        if (flags & 2) {
                            b1 = bolts2;
                            if ((D_L00_001BA860[uid >> 5] >> (uid & 0x1F)) & 1) {
                                b2 = (b1 + 1) / 2;
                            } else {
                                b2 = b1;
                            }
                        } else {
                            skip = 1;
                        }
                    } else {
                        if (flags & 1) {
                            if ((D_0014C290[D_0015EE84][uid >> 5] >> (uid & 0x1F)) & 1) {
                                b2 = (bolts + 1) / 2;
                            }
                        } else {
                            skip = 1;
                        }
                    }
                } else if (flags & 8) {
                    if ((D_L00_001BA860[uid >> 5] >> (uid & 0x1F)) & 1) {
                        skip = hidden;
                    }
                } else if ((flags & 0xC) == 4) {
                    if ((D_0014C290[D_0015EE84][uid >> 5] >> (uid & 0x1F)) & 1) {
                        skip = hidden;
                    }
                }
            }
            if (skip) {
                idx[i] = -1;
            } else {
                Moby_422D8 *m;
                int a;
                float h;
                int pv;
                int c0;
                int c1;
                int c2;
                int upd;

                idx[i] = count;
                m = D_L00_00160098 + count;
                func_0020D440(m, *(int *)p);
                p += 4;
                m->fB1 = vis;
                m->fB2 = uid;
                m->fB0 = mission;
                m->fB4 = b2;
                m->fB6 = b1;
                if (m->f24 != 0) {
                    m->f2C = m->f24->f24 * *(float *)p;
                }
                p += 4;
                m->f32 = *(unsigned short *)p;
                p += 4;
                m->f30 = *(unsigned char *)p;
                p += 0xC;
                m->f10 = ((float *)p)[0];
                m->f14 = ((float *)p)[1];
                m->f18 = ((float *)p)[2];
                p += 0xC;
                m->f40 = ((float *)p)[0];
                m->f44 = ((float *)p)[1];
                m->f48 = ((float *)p)[2];
                p += 0xC;
                m->f21 = *(unsigned char *)p;
                p += 4;
                a = *(int *)p;
                p += 4;
                h = *(float *)p;
                p += 4;
                if (a != 0) {
                    float z = func_00214358(&m->f10, 0, 0.5f);

                    if (0.0f < z) {
                        m->f18 = z + h;
                    }
                }
                p += 4;
                pv = *(int *)p;
                m->f36 = 0x7F80;
                p += 4;
                m->f78 = pv;
                if (*(int *)p == 0) {
                    m->f36 = 0;
                }
                p += 4;
                if (m->f24 != 0) {
                    m->f24->f44 |= *(unsigned short *)p;
                }
                m->f34 |= *(unsigned short *)p;
                p += 4;
                if (m->f24 != 0) {
                    func_L00_00251E30(m);
                }
                c0 = *(int *)p;
                p += 4;
                c1 = *(int *)p;
                p += 4;
                c2 = *(int *)p;
                p += 4;
                upd = *(int *)p;
                p += 4;
                m->f80 = (c2 << 16) + (c1 << 8) + c0;
                func_0020E340(m, m->f80, 0, 0, 0);
                m->f38 = upd;
                if (*(int *)p != -1) {
                    func_L00_0024B1B0((int)m, *(int *)p);
                }
                count++;
            }
            p = next;
        }
        D_L00_0016009C = D_L00_00160098 + count;
        D_L00_0016009C->f20 = 0xFF;
        mem += (count + n2) << 8;
        D_L00_001600A8 = mem;
        pvoff = hdr->f58;
        mem += n2 << 7;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        D_L00_001600A0 = (Moby_422D8 *)((int)D_L00_00160098 + ((count + n2) << 8) - 0x100);
    }
    if (pvoff != 0) {
        char *pv = (char *)hdr + pvoff;
        PvarEnt_422D8 *tbl = (PvarEnt_422D8 *)((char *)hdr + hdr->f54);
        int i;
        Moby_422D8 *m;

        for (i = 0; i < D_L00_0015F054; i++) {
            int k = D_L00_0015F050[i].f1C;

            if (k < 0) {
                D_L00_0015F050[i].f1C = 0;
            } else {
                int size = tbl[k].f4;
                char *src = pv + tbl[k].f0;

                D_L00_0015F050[i].f1C = (int)mem;
                func_001F9A98(mem, src, size);
                tbl[k].f0 = (int)mem;
                mem += size;
            }
        }
        for (i = 0; i < D_0013E650.fD90; i++) {
            int k = D_0013E650.fD94[i].f8;

            if (k < 0) {
                D_0013E650.fD94[i].f8 = 0;
            } else {
                int size = tbl[k].f4;
                char *src = pv + tbl[k].f0;

                D_0013E650.fD94[i].f8 = (int)mem;
                func_001F9A98(mem, src, size);
                tbl[k].f0 = (int)mem;
                mem += size;
            }
        }
        for (m = D_L00_00160098; m != D_L00_0016009C; m++) {
            int k = m->f78;

            if (k < 0) {
                m->f78 = 0;
            } else {
                int size = tbl[k].f4;
                char *src = pv + tbl[k].f0;

                m->f78 = (int)mem;
                func_001F9A98(mem, src, size);
                tbl[k].f0 = (int)mem;
                mem += size;
            }
        }
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
    }
    {
        int *q = (int *)((char *)hdr + hdr->f50);

        if (hdr->f50 != 0) {
            PvarEnt_422D8 *tbl = (PvarEnt_422D8 *)((char *)hdr + hdr->f54);

            while (q[0] >= 0) {
                int x = tbl[q[0]].f0;
                int off = q[1];

                if (x >= (int)hdr) {
                    int *r = (int *)(x + off);

                    if (*r >= 0) {
                        *r = idx[*r];
                    }
                }
                q += 2;
            }
        }
    }
    {
        int *q = (int *)((char *)hdr + hdr->f5C);

        if (hdr->f5C != 0) {
            PvarEnt_422D8 *tbl = (PvarEnt_422D8 *)((char *)hdr + hdr->f54);

            while (q[0] >= 0) {
                int x = tbl[q[0]].f0;
                int off = q[1];

                if (x >= (int)hdr) {
                    int *r = (int *)(x + off);

                    *r += x;
                }
                q += 2;
            }
        }
    }
    if (hdr->f48 != 0) {
        char *q = (char *)hdr + hdr->f48;
        char *base = mem;
        int *offs;
        int n;
        int size;
        int i;

        n = *(int *)q;
        q += 4;
        size = *(int *)q;
        offs = (int *)(q + 0xC);
        mem += size;
        q = (char *)offs + (n << 2);
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (size != 0) {
            func_001F9A98(base, q, size);
        }
        func_001F99B0(D_L00_001ABBC0, 0, 0x1C0);
        for (i = 0; i < n; i++, offs++) {
            tmp = *offs;
            if (tmp >= 0) {
                int id = i << 2;
                int g = (int)(base + tmp);
                unsigned short *src;
                short *dst;

                *(int *)(id + (int)D_L00_001ABBC0) = g;
                src = (unsigned short *)g;
                dst = (short *)src;
                D_L00_001600B4 = i + 1;
                do {
                    short t;

                    id = *src;
                    tmp = *(short *)src;
                    g = (id & 0x7FFF) << 1;
                    g += (int)idx;
                    tmp &= 0x8000;
                    t = *(short *)g;
                    if (t >= 0) {
                        *dst++ = t;
                    }
                    if (tmp) {
                        if (D_L00_001ABBC0[i] < (int)dst) {
                            dst[-1] |= 0x8000;
                        } else {
                            D_L00_001ABBC0[i] = 0;
                        }
                        break;
                    }
                    src++;
                } while (!tmp);
            }
        }
    }
    if (hdr->f4C != 0) {
        char *q = (char *)hdr + hdr->f4C;
        char *base = mem;
        PvarEnt_422D8 *tbl;
        int size;
        int n;
        int i;

        size = *(int *)q;
        q += 4;
        n = *(int *)q;
        q += 0xC;
        mem += size;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (size != 0) {
            func_001F9A98(base, q, size);
        }
        q += size;
        tbl = (PvarEnt_422D8 *)((char *)hdr + hdr->f54);
        for (i = 0; i < n; i++) {
            int w = *(int *)q;
            int hi = w >> 16;
            int x = tbl[w & 0xFFFF].f0;

            if (x >= (int)hdr) {
                *(int *)(x + hi) = (int)(base + *(int *)(q + 4));
            }
            q += 8;
        }
    }
    if (hdr->f70 != 0) {
        char *q = (char *)hdr + hdr->f70;
        char *src;
        int size;
        int i;

        D_L00_001601C4 = *(int *)q;
        src = q + *(int *)(q + 4);
        size = *(int *)(q + 8);
        D_L00_001601C8 = mem;
        mem += size;
        q += 0x10;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (size != 0) {
            func_001F9A98(D_L00_001601C8, src, size);
        }
        for (i = 0; i < D_L00_001601C4; i++) {
            D_L00_001B0830[i] = D_L00_001601C8 + *(int *)q;
            q += 4;
        }
    }
    if (hdr->f74 != 0) {
        char *q = (char *)hdr + hdr->f74;
        char *src;
        char *base;
        int n;
        int size;
        int i;

        n = *(int *)q;
        D_L00_0015F7F0 = n;
        src = q + *(int *)(q + 4);
        size = *(int *)(q + 8);
        D_L00_0015F7EC = (Spline_422D8 *)mem;
        mem += n << 5;
        q += 0x10;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (n > 0) {
            Spline_422D8 *e = D_L00_0015F7EC;

            i = n;
            do {
                qcopy(e, q);
                q += 0x10;
                e->f14 = *(int *)q;
                q += 0x10;
                e++;
            } while (--i != 0);
        }
        base = mem;
        mem += size;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (size != 0) {
            func_001F9A98(base, src, size);
        }
        for (i = 0; i < D_L00_0015F7F0; i++) {
            D_L00_0015F7EC[i].f10 = base + *(int *)q;
            q += 4;
        }
    }
    if (hdr->f6C != 0) {
        char *q = (char *)hdr + hdr->f6C;
        int n = *(int *)q;
        int i;

        D_L00_001601A4 = mem;
        D_L00_001601A8 = n;
        q += 0x10;
        mem += n * 0x90;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (n != 0) {
            func_001F99B0(D_L00_001601A4, 0, n * 0x90);
        }
        for (i = 0; i < D_L00_001601A8; i++) {
            func_L00_001FF040(D_L00_001601A4 + i * 0x90, q, 0x90);
            q += 0x80;
        }
    }
    if (hdr->f60 != 0) {
        char *q = (char *)hdr + hdr->f60;
        int n = *(int *)q;
        int i;

        D_L00_001601AC = mem;
        q += 0x10;
        D_L00_001601B0 = n;
        mem += n << 7;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (n != 0) {
            func_001F99B0(D_L00_001601AC, 0, n << 7);
        }
        for (i = 0; i < D_L00_001601B0; i++) {
            func_L00_001FF040(D_L00_001601AC + (i << 7), q, 0x80);
            q += 0x80;
        }
    }
    if (hdr->f64 != 0) {
        char *q = (char *)hdr + hdr->f64;
        int n = *(int *)q;
        int i;

        D_L00_001601B4 = mem;
        q += 0x10;
        D_L00_001601B8 = n;
        mem += n << 7;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (n != 0) {
            func_001F99B0(D_L00_001601B4, 0, n << 7);
        }
        for (i = 0; i < D_L00_001601B8; i++) {
            func_L00_001FF040(D_L00_001601B4 + (i << 7), q, 0x80);
            q += 0x80;
        }
    }
    if (hdr->f68 != 0) {
        char *q = (char *)hdr + hdr->f68;
        int n = *(int *)q;
        int i;

        D_L00_001601BC = mem;
        q += 0x10;
        D_L00_001601C0 = n;
        mem += n << 7;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (n != 0) {
            func_001F99B0(D_L00_001601BC, 0, n << 7);
        }
        for (i = 0; i < D_L00_001601C0; i++) {
            func_L00_001FF040(D_L00_001601BC + (i << 7), q, 0x80);
            q += 0x80;
        }
    }
    {
        char *q = (char *)hdr + hdr->f84;

        if (hdr->f84 != 0) {
            int size = *(int *)q;

            D_L00_0015F080 = mem;
            q += 0x10;
            size += 0x4000;
            func_L00_001FF040(mem, q, size);
            mem += size;
            mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        }
    }
    {
        char *q = (char *)hdr + hdr->f78;

        if (hdr->f78 != 0) {
            int size = *(int *)q;

            D_L00_0015FC80 = mem;
            q += 0x10;
            size += 0x4000;
            func_L00_001FF040(mem, q, size);
            mem += size;
            mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        }
    }
    if (hdr->f7C != 0) {
        char *q = (char *)hdr + hdr->f7C;
        int n = *(int *)q;

        D_L00_0015FC40 = mem;
        q += 0x10;
        D_L00_0015FC10 = n;
        mem += n << 5;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (n != 0) {
            func_L00_001FF040(D_L00_0015FC40, q, n << 5);
        }
    }
    if (hdr->f88 != 0) {
        char *q = (char *)hdr + hdr->f88;
        int n = *(int *)q;

        D_L00_00160100 = mem;
        D_L00_001600D4 = n;
        q += 0x10;
        mem += n * 0x30;
        mem = (char *)(((u32)mem + 0x3F) & 0xFFFFFFC0);
        if (n != 0) {
            func_L00_001FF040(D_L00_00160100, q, n * 0x30);
        }
    }
    D_L00_0016022C = mem;
    mem += 0x20000;
    D_L00_00160234 = -1;
    D_L00_00160230 = 0;
    D_L00_00160238 = 0;
    func_001F99D8(D_L00_001B1C00, 0x200);
    D_0013E130.f0 = 0;
    if (0.0f < ship[0]) {
        Moby_422D8 *m;

        if (D_0015EE84 == 13 && D_0013E130.f26 == 2) {
            if (D_L00_00160600 != 0) {
                for (m = D_L00_00160098; m->f20 != 0xFF; m++) {
                    if (m->fA6 == D_L00_00160608[D_0013E130.f26]) {
                        func_L00_0028FB78((char *)m);
                        func_00213D28(m, 1, 0);
                        break;
                    }
                }
            }
        }
        if (D_0013E130.f0 == 0) {
            float rot;

            m = func_0020D348(D_L00_00160608[D_0013E130.f26]);
            m->f10 = ship[0];
            m->f14 = ship[1];
            m->f18 = ship[2];
            rot = ship[3];
            m->f74 = func_L00_0028F458;
            m->f32 = 0xFF;
            m->f48 = rot;
            m->f30 = 0x10;
            m->f34 &= ~2;
            func_00213D28(m, 1, 0);
            func_L00_00251E30(m);
            D_0013E130.f0 = m;
            func_L00_0024B1B0((int)m, 0);
        }
    }
    if (D_L00_0015F6E0 != 0 && hdr->f8C != 0) {
        int *q = (int *)((char *)hdr + hdr->f8C);
        int *q0;
        int n1;
        int n2;
        int n3;
        int bad1 = 1;
        int bad2;

        q0 = q;
        n1 = q[0];
        n2 = q[1];
        n3 = q[2];
        q += 4;
        if (D_L00_00161010 == n1) {
            int i;

            bad1 = 0;
            for (i = 0; i < n1; i++) {
                if (D_L00_0016100C[i].f3D != q[1]) {
                    bad1 = 1;
                }
                q += 2;
            }
        } else {
            q += n1 * 2;
        }
        bad2 = 1;
        if (D_L00_00161084 - D_L00_00161080 == n2) {
            int i;

            bad2 = 0;
            for (i = 0; i < n2; i++) {
                int id = (unsigned short)q[1];

                if (D_L00_00161080[i].f18 != id) {
                    bad2 = 1;
                }
                q += 2;
            }
        } else {
            q += n2 * 2;
        }
        {
            Moby_422D8 *m;
            int flag = 0;
            int cnt = 0;
            int k = 0;

            for (m = D_L00_00160098; m->f20 != 0xFF; m++) {
                if (m->f36 != 0x7F80) {
                    int uid = m->fB2;
                    int j;

                    k++;
                    for (j = 0; j < n3; j++) {
                        if (q[j * 2 + 1] == uid) {
                            break;
                        }
                    }
                    if (j == n3) {
                        m->f36 = 0x7F80;
                        flag = 1;
                        cnt++;
                    } else {
                        int w = q[j * 2];

                        m->f36 = ((w >> 3) << 8) | (1 << (w & 7));
                    }
                }
            }
            if (flag) {
                func_001E9730(D_L00_001E8A28, cnt, k);
            }
        }
        if (bad1) {
            int i;

            func_001E9730(D_L00_001E8A60);
            for (i = 0; i < D_L00_00161010; i++) {
                D_L00_0016100C[i].f3A = 0x7F80;
            }
        } else {
            int i;

            q = q0 + 4;
            for (i = 0; i < n1; i++) {
                int w = q[0];

                D_L00_0016100C[i].f3A = ((w >> 3) << 8) | (1 << (w & 7));
                q += 2;
            }
        }
        if (bad2) {
            TieInst_422D8 *t;
            int cnt = 0;
            int k = 0;

            q = &q0[n1 * 2 + 4];
            for (t = D_L00_00161080; t != D_L00_00161084; t++) {
                int id = t->f18;
                int j;

                k++;
                for (j = 0; j < n2; j++) {
                    if (q[j * 2 + 1] == id) {
                        break;
                    }
                }
                if (j == n2) {
                    t->f18 = 0x7F80;
                    cnt++;
                } else {
                    int w = q[j * 2];

                    t->f18 = ((w >> 3) << 8) | (1 << (w & 7));
                }
            }
            func_001E9730(D_L00_001E8A88, cnt, k);
        } else {
            int i;

            q = &q0[n1 * 2 + 4];
            for (i = 0; i < n2; i++) {
                int w = q[0];

                D_L00_00161080[i].f18 = ((w >> 3) << 8) | (1 << (w & 7));
                q += 2;
            }
        }
        D_L00_0016C158[7] = 2;
    } else {
        Moby_422D8 *m;
        TieInst_422D8 *t;
        int i;

        func_001E9730(D_L00_001E8AC0);
        for (m = D_L00_00160098; m != D_L00_001600A0; m++) {
            m->f36 = 0x7F80;
        }
        for (t = D_L00_00161080; t != D_L00_00161084; t++) {
            t->f18 = 0x7F80;
        }
        for (i = 0; i < D_L00_00161010; i++) {
            D_L00_0016100C[i].f3A = 0x7F80;
        }
        D_L00_0016C158[7] = 0;
    }
    func_L00_001F8750();
    func_L00_00205278();
    func_L00_00205598();
    func_L00_001ED6D8();
    func_L00_001ED428();
    func_00217EC0();
    func_001F6598();
    D_L00_001B0AF0[0] = 0;
    D_L00_001B0B30[0] = 0;
    D_L00_001B0BB0[0] = 0;
    D_L00_0015F6B0 = 0;
    D_L00_0015F71C = 0;
    {
        int i;

        for (i = 19; i >= 0; i--) {
            D_L00_001DD400[i] = 0;
        }
    }
    D_L00_0016190C = 0;
    if (D_0013E130.f0 != 0) {
        *(long *)&D_0013E130.f0->f38 = *(long *)&D_0013F450.f2080->f38;
    }
    switch (D_0015EE84) {
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 10:
        D_L00_0015F418 = D_L00_0016C8B0;
        break;
    default:
        D_L00_0015F418 = D_L00_0016C880;
        break;
    }
    D_L00_0015F410 = D_L00_0015F418;
    return mem;
}
