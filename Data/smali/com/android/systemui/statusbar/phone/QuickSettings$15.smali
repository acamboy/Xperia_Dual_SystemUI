.class Lcom/android/systemui/statusbar/phone/QuickSettings$15;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 6
    .parameter "unused"
    .parameter "state"

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 534
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0a0065

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, airplaneState:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0088

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 540
    return-void

    .line 534
    .end local v0           #airplaneState:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a0066

    goto :goto_0
.end method
