.class public Lcom/android/systemui/recent/RecentsHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 63
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 64
    .local v1, pagingTouchSlop:F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 65
    invoke-static {p1, p2, p0, v4}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    .line 66
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "i"

    .prologue
    .line 318
    return-void
.end method

.method private update()V
    .locals 15

    .prologue
    .line 99
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_0

    .line 100
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 101
    .local v11, v:Landroid/view/View;
    invoke-direct {p0, v11}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 102
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v13, v11}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v11           #v:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v9

    .line 105
    .local v9, transitioner:Landroid/animation/LayoutTransition;
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 107
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 109
    .local v7, recycledViews:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_1
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v13}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, old:Landroid/view/View;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #old:Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .line 113
    .restart local v6       #old:Landroid/view/View;
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 114
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_1
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v14, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2, v6, v14}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 119
    .local v12, view:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v13, :cond_2

    .line 120
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    .line 123
    :cond_2
    new-instance v5, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 130
    .local v5, noOpListener:Landroid/view/View$OnTouchListener;
    new-instance v13, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;

    invoke-direct {v13, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 138
    new-instance v3, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;

    invoke-direct {v3, p0, v12}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    .line 144
    .local v3, launchAppListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 145
    .local v1, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v8, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    .line 146
    .local v8, thumbnailView:Landroid/view/View;
    new-instance v4, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;

    invoke-direct {v4, p0, v12, v8}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 153
    .local v4, longClickListener:Landroid/view/View$OnLongClickListener;
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/view/View;->setClickable(Z)V

    .line 154
    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v8, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    const v13, 0x7f070089

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, appTitle:Landroid/view/View;
    const-string v13, " "

    invoke-virtual {v0, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 163
    iget-object v13, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v0           #appTitle:Landroid/view/View;
    .end local v1           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v3           #launchAppListener:Landroid/view/View$OnClickListener;
    .end local v4           #longClickListener:Landroid/view/View$OnLongClickListener;
    .end local v5           #noOpListener:Landroid/view/View$OnTouchListener;
    .end local v6           #old:Landroid/view/View;
    .end local v8           #thumbnailView:Landroid/view/View;
    .end local v12           #view:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 169
    new-instance v10, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;

    invoke-direct {v10, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 179
    .local v10, updateScroll:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 180
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 205
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "canvas"

    .prologue
    .line 246
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    .line 249
    iget v14, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingLeft:I

    .line 250
    .local v14, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isPaddingOffsetRequired()Z

    move-result v13

    .line 251
    .local v13, offsetRequired:Z
    if-eqz v13, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v14, v0

    .line 255
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    add-int v2, v0, v14

    .line 256
    .local v2, left:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v14

    .line 257
    .local v3, right:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 258
    .local v4, top:I
    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 260
    .local v5, bottom:I
    if-eqz v13, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getLeftFadingEdgeStrength()F

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getRightFadingEdgeStrength()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPaddingTop:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V

    .line 269
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #bottom:I
    .end local v13           #offsetRequired:Z
    .end local v14           #paddingLeft:I
    :cond_2
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .parameter "persistentTaskId"

    .prologue
    .line 88
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 91
    .local v0, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    .line 95
    .end local v0           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 88
    .restart local v0       #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v0           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .parameter "ev"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 229
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 230
    .local v3, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 232
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 237
    .end local v1           #item:Landroid/view/View;
    :goto_1
    return-object v1

    .line 230
    .restart local v1       #item:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v1           #item:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "v"

    .prologue
    .line 241
    const v0, 0x7f070088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    .line 285
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    .line 276
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    .line 305
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 222
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 209
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, contentView:Landroid/view/View;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 216
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 311
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 312
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 313
    .local v1, pagingTouchSlop:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 314
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 225
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 292
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 293
    const v1, 0x7f070093

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 294
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 296
    .local v0, leftPadding:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setOverScrollEffectPadding(II)V

    .line 297
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 322
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 327
    .local v0, transition:Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    .line 335
    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->dismissChild(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8
    .parameter "adapter"

    .prologue
    const/high16 v7, -0x8000

    .line 348
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 349
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 359
    .local v3, dm:Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 361
    .local v1, childWidthMeasureSpec:I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 363
    .local v2, childheightMeasureSpec:I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 364
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 365
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    .line 367
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 369
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 370
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 386
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 382
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 71
    return-void
.end method
