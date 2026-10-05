/* NON_MATCHING func_L00_00277A88 -- src/overlays/shared/pause_00277208.c
 * Best so far: BYTES 3/1868 (99.8% of the bytes match), checked 2026-10-05.
 * Not built into anything: the retail assembly stays in the source file
 * until a candidate is EXACT (docs/NONMATCHING.md). Start from this one.
 * What the last attempts found:
 *   Page-menu update (Lombyte port, p5.c is best, BYTES 3/1868 differ). Only the last test 'if (GS.unkC != 0) func
 */
typedef unsigned int PQ __attribute__((mode(TI), aligned(16)));
typedef union { PQ q; float f[4]; } V;

typedef struct Mth Mth;
typedef struct NO NO;
typedef struct HEnt HEnt;
typedef struct Own Own;
struct Ent3;

struct Mth {
    unsigned char pad0[8];
    void (*f8)(Mth *, int);
    void (*fC)(Mth *, int);
};
struct NO {
    int (*f0)(NO *);
    int f4;
    void (*f8)(NO *, int);
    void (*fC)(NO *, int);
    unsigned char pad10[4];
    HEnt *f14;
};
struct Own {
    int ids[14];
    Own *unk38;
    int unk3C;
    Mth *unk40;
    NO *objs[14];
    unsigned char pad7C[4];
    Mth *unk80;
};
typedef struct {
    int state;
    Own *owner;
    Own *unk8;
    int unkC;
    int unk10;
    int unk14;
    unsigned char pad18[0x28];
    V v40;
    V v50;
    unsigned char pad60[0x70];
    Own *unkD0;
    unsigned char padD4[0x10];
    void *unkE4;
    float unkE8;
    unsigned char padEC[0x104 - 0xEC];
    int unk104;
    int unk108;
    int unk10C;
    int progress;
    unsigned char pad114[0x130 - 0x114];
    int unk130;
    unsigned char pad134[0x140 - 0x134];
    int unk140;
    int unk144;
    int unk148;
    int unk14C;
    int unk150;
    int unk154;
} GS_t;

typedef struct Ent2 { unsigned char pad0[0x48]; struct Ent3 *unk48[1]; } Ent2;
struct Ent3 { unsigned char pad0[0x10]; unsigned char unk10; };
struct HEnt { unsigned char pad0[0x24]; Ent2 *unk24; unsigned char pad28[0x30]; float unk58; };

extern GS_t GS __asm__("D_L00_001BA070");
extern HEnt *D_L00_001BA220[];
extern float D_L00_00166EC0[];
extern Own D_L00_001B7570;
extern Own D_L00_001B8150;
extern Own D_L00_001B8460;
extern Own D_L00_001B6778;
extern Own D_L00_001B7C70;
extern Own D_L00_001B6BA0;
extern char D_L00_001842F0[];
extern unsigned char D_0014171B_h[] __asm__("D_0014171B") NOT_SDA;
extern char D_0013D355[];
extern int D_0015EFD8 MACRO_ADDR;
extern int D_0015EFB4_m __asm__("D_0015EFB4") MACRO_ADDR;
extern int D_L00_0015F690 MACRO_ADDR;
extern short D_L00_0015F658;
extern short D_L00_001600CC;
extern short D_L00_0015F6AC;
extern int D_L00_0015F6BC MACRO_ADDR;
extern int D_L00_0015F6A8 MACRO_ADDR;
extern float D_L00_0016CBF0;
extern unsigned char D_L00_001E9530[];

extern void func_002348B8(void);
extern void func_L00_00235FF8(int);
extern void func_00205270(int, int);
extern void func_001F2930(void);
extern int func_001E9730();
extern void func_L00_00290030(int);
extern int func_001F9850(int);
extern void func_001F4E08(int);
extern void func_L00_0029A7D0(int);
extern void func_L00_0029A8D0(int);
extern void func_L00_0029A868(int);
extern void func_L00_00299B68(int);
extern void func_L00_0029ADD8(void);
extern void func_0012E558(int);
extern void func_00216F28(void);
extern int func_0012DDC0(void);
extern void func_0022DD68(void);
extern void func_L00_00277208(void);
extern void func_001FBC80(int, void *, int);
extern void func_L00_00284410(void);
extern void func_0022ED80(int, int, void *);
extern void func_00213D28(void *, int, int);
extern void func_00213C78(void);
extern void func_L00_002777C0(void);

// Page-menu (pause/map/planet-select) per-frame update: state machine over the menu pages.
// Adapted from Lombyte (MIT) for PAL: src/overlays/shared/audio_voices_00276368.c, FUN_L00_00276bd0.
void func_L00_00277A88(void) {
    Own *u8p;
    Mth *m;
    NO *obj;
    int v;
    int i, tmp;
    int flag;
    int k;
    int j;
    NO **objs;
    char *q;

    GS.progress = GS.progress + 1;
    if (GS.progress >= 0x7D01) {
        GS.progress = 0x7D00;
    }
    if (GS.unk148 != 0) {
        GS.unk148 = GS.unk148 - 1;
    }
    q = D_0013D355 + 0x3B;
    if (*(int *)(q + 0xDC) < 3 && *(int *)(q + 0xE4) < 0) {
        GS.unk154 = GS.unk154 + 1;
    } else {
        GS.unk154 = 0;
    }
    switch (GS.state) {
    case 2:
    case 0x1A:
    case 0x1E:
    case 0x1F:
        D_L00_0015F690 = 1;
        break;
    }
    if (GS.state == 0x14) {
        if (GS.unk14 != 0) {
            GS.unk14 = GS.unk14 - 1;
            if (GS.unk14 != 0) {
                return;
            }
        }
        if (*(short *)(D_0014171B_h + 0x100BD) != 0) {
            return;
        }
        *(int *)&D_L00_0015F658 = 0x1E000;
        func_002348B8();
        qcopy(D_L00_00166EC0, &GS.v40);
        qcopy(D_L00_00166EC0 + 4, &GS.v50);
        D_L00_0016CBF0 = GS.unkE8;
        func_L00_00235FF8(0);
        if (GS.unk140 != 0) {
            *(int *)&D_L00_001600CC = -1;
            func_00205270(GS.unk140, GS.unk144);
        }
        func_001F2930();
        D_L00_0015F6BC = 1;
        GS.unk108 = 0;
        GS.unk10C = 0;
        GS.unk104 = 0;
        GS.unk10 = 0;
        if (GS.unkC == 2) {
            char *w = D_L00_001842F0;
            func_001E9730(D_L00_001E9530, *(int *)(w + 0x224));
            func_L00_00290030(*(int *)(w + 0x224));
        } else if (GS.unkC == 3) {
            tmp = D_0015EFD8;
            D_0015EFD8 = 2;
            GS.unk130 = tmp;
            func_001F4E08(func_001F9850(0x10));
            D_L00_0015F6A8 = 0;
            func_L00_0029A7D0((int)GS.unkE4);
        } else if (GS.unkC == 4) {
            tmp = D_0015EFD8;
            D_0015EFD8 = 1;
            GS.unk130 = tmp;
            func_001F4E08(func_001F9850(0x10));
            D_L00_0015F6A8 = 0;
            func_L00_0029A8D0((int)GS.unkE4);
        } else if (GS.unkC == 6) {
            tmp = D_0015EFD8;
            D_0015EFD8 = 1;
            GS.unk130 = tmp;
            func_001F4E08(func_001F9850(0x10));
            D_L00_0015F6A8 = 0;
            func_L00_0029A868((int)GS.unkE4);
        } else if (GS.unkC == 5) {
            tmp = D_0015EFD8;
            D_0015EFD8 = 1;
            GS.unk130 = tmp;
            func_001F4E08(func_001F9850(0x10));
            D_L00_0015F6A8 = 0;
            func_L00_00299B68((int)GS.unkE4);
        } else if (GS.unkC == 7) {
            tmp = D_0015EFD8;
            GS.unk130 = tmp;
            func_001F4E08(func_001F9850(0x10));
            D_L00_0015F6A8 = 0;
            func_L00_0029ADD8();
        } else {
            D_L00_0015F6A8 = 0;
        }
        func_0012E558(0x1D);
        if (GS.unkC != 2) {
            func_00216F28();
        }
        func_0012DDC0();
        func_0022DD68();
        return;
    }
    v = GS.state;
    if (v == 0 || v == 0xA || v == 0xE || v == 0x11 || v == 0x21 || v == 0x2D ||
        v == 0x23) {
        func_L00_00277208();
    }
    if ((D_0015EFB4_m & 1) && !(*(int *)&D_L00_0015F6AC < 8)) {
        func_001FBC80(3, GS.owner, 0);
        return;
    }
    func_L00_00284410();
    if (GS.state == 1) {
        GS.unk14 = (GS.unk14 < 1) ? 0 : GS.unk14 - 1;
        if (GS.unk14 == 0) {
            u8p = GS.unk8;
            GS.unk8 = 0;
            GS.owner = u8p;
            GS.state = u8p->unk3C;
            for (i = 0; i < 14; i++) {
                obj = GS.owner->objs[i];
                if (obj != 0 && obj->f8 != 0) {
                    obj->f8(obj, 0);
                }
            }
            goto L2;
        }
    } else if (GS.unk8 != 0) {
        if (GS.owner == GS.unk8) {
            func_0022ED80(3, 0x11, D_L00_001BA220[0]);
        } else {
            func_0022ED80(4, 0x11, D_L00_001BA220[0]);
        }
        for (i = 0; i < 14; i++) {
            obj = GS.owner->objs[i];
            if (obj != 0 && obj->fC != 0) {
                obj->fC(obj, 0);
            }
        }
        flag = (GS.unk8 == GS.owner->unk38);
        if (GS.owner == GS.unk8 && GS.owner != &D_L00_001B7570 &&
            GS.owner != &D_L00_001B8150 && GS.owner != &D_L00_001B8460 &&
            GS.owner != &D_L00_001B6778 && GS.owner != &D_L00_001B7C70 &&
            GS.owner != &D_L00_001B6BA0) {
            if (GS.state != 0x23) {
                flag = flag ^ 1;
            }
        }
        for (j = 0; j < 14; j++) {
            if (GS.unk8->objs[j] != 0) {
                GS.unk8->objs[j]->f14 = D_L00_001BA220[j];
            }
            if (flag) {
                int n = GS.owner->ids[j];
                HEnt *e = D_L00_001BA220[j];
                func_00213D28(e, n, e->unk24->unk48[n]->unk10 - 1);
                D_L00_001BA220[j]->unk58 = -1.0f;
            } else {
                func_00213D28(D_L00_001BA220[j], GS.unk8->ids[j], 0);
                D_L00_001BA220[j]->unk58 = 1.0f;
            }
        }
        GS.state = 1;
        GS.unk14 = 12;
        GS.unkD0 = GS.owner;
        GS.owner = 0;
    }
L2:
    if (GS.owner != 0) {
        objs = GS.owner->objs;
        for (k = 0; k < 14; k++) {
            if (objs != 0 && objs[k] != 0 && objs[k]->f0 != 0) {
                if (objs[k]->f0(objs[k]) != 0) {
                    GS.unkC = ((unsigned int)(GS.state - 15) < 2) ? 2 : 1;
                }
            }
        }
        if (GS.owner != 0 && GS.owner->unk80 != 0) {
            m = GS.owner->unk40;
            if (m->fC != 0) {
                m->fC(m, 1);
            }
            GS.owner->unk40 = GS.owner->unk80;
            GS.owner->unk80 = 0;
            m = GS.owner->unk40;
            if (m->f8 != 0) {
                m->f8(m, 1);
            }
        }
    }
    func_00213C78();
    func_0022DD68();
    if (GS.unkC != 0) {
        func_L00_002777C0();
    }
}
