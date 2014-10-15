.class public abstract Lcom/android/systemui/statusbar/phone/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    }
.end annotation


# instance fields
.field private mAdvanceTicker:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconScale:F

.field private mIconSwitcher:Landroid/widget/ImageSwitcher;

.field private mPaint:Landroid/text/TextPaint;

.field private mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/Ticker$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private mTextSwitcher:Landroid/widget/TextSwitcher;

.field private mTickerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 8
    .parameter "context"
    .parameter "sb"

    .prologue
    const v7, 0x10a0038

    const v6, 0x10a0037

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    .line 279
    new-instance v4, Lcom/android/systemui/statusbar/phone/Ticker$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/Ticker$1;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 179
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0017

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 180
    .local v1, outerBounds:I
    const v4, 0x7f0c001c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 181
    .local v0, imageBounds:I
    int-to-float v4, v0

    int-to-float v5, v1

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    .line 183
    const v4, 0x7f070047

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTickerView:Landroid/view/View;

    .line 185
    const v4, 0x7f070048

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageSwitcher;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    .line 186
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-static {p1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 190
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setScaleX(F)V

    .line 191
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconScale:F

    invoke-virtual {v4, v5}, Landroid/widget/ImageSwitcher;->setScaleY(F)V

    .line 193
    const v4, 0x7f070049

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextSwitcher;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    .line 194
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-static {p1, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 200
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 201
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/Ticker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/ImageSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/Ticker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    return-void
.end method

.method public static isGraphicOrEmoji(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 58
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 59
    .local v0, gc:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private scheduleAdvance()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void
.end method


# virtual methods
.method public addEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 17
    .parameter "n"

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 211
    .local v12, initialCount:I
    if-lez v12, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 213
    .local v14, seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-ne v2, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->iconLevel:I

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    if-ne v2, v3, :cond_1

    iget-object v2, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/android/internal/util/CharSequences;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    .end local v14           #seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    new-instance v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->icon:I

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 225
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v15, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 226
    .local v15, text:Ljava/lang/CharSequence;
    new-instance v13, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v11, v15}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;-><init>(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 229
    .local v13, newSegment:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 231
    .restart local v14       #seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    .end local v9           #i:I
    .local v10, i:I
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v9, v10

    .line 229
    .end local v10           #i:I
    .restart local v9       #i:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 237
    .end local v14           #seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 241
    .restart local v14       #seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setAnimateFirstView(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2}, Landroid/widget/ImageSwitcher;->reset()V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v3, v14, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setAnimateFirstView(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2}, Landroid/widget/TextSwitcher;->reset()V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerStarting()V

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/Ticker;->scheduleAdvance()V

    goto/16 :goto_0
.end method

.method public halt()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mAdvanceTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/Ticker;->tickerHalting()V

    .line 269
    return-void
.end method

.method public reflowText()V
    .locals 4

    .prologue
    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 274
    .local v0, seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 275
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 277
    .end local v0           #seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public removeEntry(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .parameter "n"

    .prologue
    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;

    .line 259
    .local v1, seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 257
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 263
    .end local v1           #seg:Lcom/android/systemui/statusbar/phone/Ticker$Segment;
    :cond_1
    return-void
.end method

.method public abstract tickerDone()V
.end method

.method public abstract tickerHalting()V
.end method

.method public abstract tickerStarting()V
.end method
