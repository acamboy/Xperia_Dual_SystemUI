.class Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
.super Ljava/lang/Object;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    }
.end annotation


# static fields
.field static sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;


# instance fields
.field final DECAY:F

.field final MAX_EVENTS:I

.field mEventBuf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;",
            ">;"
        }
    .end annotation
.end field

.field mVX:F

.field mVY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->MAX_EVENTS:I

    .line 93
    const/high16 v0, 0x3f40

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->DECAY:F

    .line 94
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 106
    return-void
.end method

.method static obtain()Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 188
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public computeCurrentVelocity(J)V
    .locals 13
    .parameter "timebase"

    .prologue
    .line 117
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, last:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    const/4 v4, 0x0

    .line 120
    .local v4, i:I
    const/4 v7, 0x0

    .line 121
    .local v7, totalweight:F
    const/high16 v8, 0x4120

    .line 122
    .local v8, weight:F
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 123
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 124
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;

    .line 125
    .local v3, event:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    if-eqz v6, :cond_0

    .line 126
    iget-wide v9, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    iget-wide v11, v6, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    sub-long/2addr v9, v11

    long-to-float v9, v9

    long-to-float v10, p1

    div-float v0, v9, v10

    .line 127
    .local v0, dt:F
    iget v9, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    iget v10, v6, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    sub-float v1, v9, v10

    .line 128
    .local v1, dx:F
    iget v9, v3, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    iget v10, v6, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    sub-float v2, v9, v10

    .line 137
    .local v2, dy:F
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    mul-float v10, v8, v1

    div-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 138
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    mul-float v10, v8, v2

    div-float/2addr v10, v0

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 139
    add-float/2addr v7, v8

    .line 140
    const/high16 v9, 0x3f40

    mul-float/2addr v8, v9

    .line 142
    .end local v0           #dt:F
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_0
    move-object v6, v3

    .line 143
    add-int/lit8 v4, v4, 0x1

    .line 144
    goto :goto_0

    .line 145
    .end local v3           #event:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    :cond_1
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_2

    .line 146
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    div-float/2addr v9, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 147
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    div-float/2addr v9, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 160
    :goto_1
    return-void

    .line 150
    :cond_2
    const-string v9, "FlingTracker"

    const-string v10, "computeCurrentVelocity warning: totalweight=0"

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9, v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    goto :goto_1
.end method

.method public getXVelocity()F
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "FlingTracker"

    const-string v1, "warning: vx=NaN"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 168
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    return v0
.end method

.method public getYVelocity()F
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "FlingTracker"

    const-string v1, "warning: vx=NaN"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 177
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 181
    return-void
.end method
