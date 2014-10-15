.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_4G:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_H_PLUS:[[I

.field static final DATA_LTE:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final QS_TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 25
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 38
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 51
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 69
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 80
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 91
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 103
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 115
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    .line 128
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 140
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 152
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    return-void

    .line 25
    :array_0
    .array-data 0x4
        0x61t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
        0x65t 0x1t 0x2t 0x7ft
        0x67t 0x1t 0x2t 0x7ft
        0x69t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x62t 0x1t 0x2t 0x7ft
        0x64t 0x1t 0x2t 0x7ft
        0x66t 0x1t 0x2t 0x7ft
        0x68t 0x1t 0x2t 0x7ft
        0x6at 0x1t 0x2t 0x7ft
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x65t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 51
    :array_4
    .array-data 0x4
        0x61t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
        0x65t 0x1t 0x2t 0x7ft
        0x67t 0x1t 0x2t 0x7ft
        0x69t 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x62t 0x1t 0x2t 0x7ft
        0x64t 0x1t 0x2t 0x7ft
        0x66t 0x1t 0x2t 0x7ft
        0x68t 0x1t 0x2t 0x7ft
        0x6at 0x1t 0x2t 0x7ft
    .end array-data

    .line 69
    :array_6
    .array-data 0x4
        0x3bt 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
        0x3bt 0x1t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x46t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
        0x46t 0x1t 0x2t 0x7ft
    .end array-data

    .line 80
    :array_8
    .array-data 0x4
        0x37t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x43t 0x1t 0x2t 0x7ft
        0x43t 0x1t 0x2t 0x7ft
        0x43t 0x1t 0x2t 0x7ft
        0x43t 0x1t 0x2t 0x7ft
    .end array-data

    .line 91
    :array_a
    .array-data 0x4
        0x3at 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x45t 0x1t 0x2t 0x7ft
        0x45t 0x1t 0x2t 0x7ft
        0x45t 0x1t 0x2t 0x7ft
        0x45t 0x1t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_c
    .array-data 0x4
        0x3ct 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
        0x3ct 0x1t 0x2t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x47t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
        0x47t 0x1t 0x2t 0x7ft
    .end array-data

    .line 115
    :array_e
    .array-data 0x4
        0x3dt 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
        0x3dt 0x1t 0x2t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x48t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
        0x48t 0x1t 0x2t 0x7ft
    .end array-data

    .line 128
    :array_10
    .array-data 0x4
        0x36t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x42t 0x1t 0x2t 0x7ft
        0x42t 0x1t 0x2t 0x7ft
        0x42t 0x1t 0x2t 0x7ft
        0x42t 0x1t 0x2t 0x7ft
    .end array-data

    .line 140
    :array_12
    .array-data 0x4
        0x39t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x44t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
        0x44t 0x1t 0x2t 0x7ft
    .end array-data

    .line 152
    :array_14
    .array-data 0x4
        0x40t 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
        0x40t 0x1t 0x2t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0x49t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
        0x49t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
