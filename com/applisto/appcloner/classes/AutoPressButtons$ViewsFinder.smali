.class abstract Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;
.super Ljava/lang/Object;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewsFinder"
.end annotation


# instance fields
.field mFindAll:Z

.field mRootView:Landroid/view/View;

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .registers 4

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mViews:Ljava/util/List;

    .line 209
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mRootView:Landroid/view/View;

    .line 210
    iput-boolean p2, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mFindAll:Z

    return-void
.end method


# virtual methods
.method findViews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 216
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->findViews(Landroid/view/View;)Z

    .line 217
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mViews:Ljava/util/List;

    return-object v0
.end method

.method findViews(Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x1

    .line 223
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->matchesView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 224
    iget-object v1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mFindAll:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_11

    if-nez v1, :cond_19

    return v0

    :catch_11
    move-exception v1

    .line 230
    invoke-static {}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :cond_19
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 234
    check-cast p1, Landroid/view/ViewGroup;

    .line 235
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v1, :cond_39

    .line 237
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->findViews(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 238
    iget-boolean v4, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;->mFindAll:Z

    if-nez v4, :cond_36

    return v0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_39
    return v2
.end method

.method abstract matchesView(Landroid/view/View;)Z
.end method
