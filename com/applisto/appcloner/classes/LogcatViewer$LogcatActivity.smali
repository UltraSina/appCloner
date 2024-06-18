.class public Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;
.super Landroid/app/Activity;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/LogcatViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogcatActivity"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 248
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$500(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)Z
    .registers 1

    .line 248
    iget-boolean p0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mPaused:Z

    return p0
.end method

.method static synthetic access$502(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;Z)Z
    .registers 2

    .line 248
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mPaused:Z

    return p1
.end method

.method static synthetic access$600(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V
    .registers 1

    .line 248
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->showLogsDelayed()V

    return-void
.end method

.method static synthetic access$700(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)Ljava/lang/Thread;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static synthetic lambda$mk6zMzpU5MiXY_P8Lp3VUDktEtg(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->showLogs()V

    return-void
.end method

.method private showLogs()V
    .registers 5

    .line 348
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mPaused:Z

    if-nez v0, :cond_26

    const/16 v0, 0x3e8

    .line 349
    invoke-static {v0}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$800(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 352
    invoke-static {}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$100()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 353
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$LogcatActivity$ve2uQj2bLcgrw9yciAanoOFCrMk;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$LogcatActivity$ve2uQj2bLcgrw9yciAanoOFCrMk;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    return-void
.end method

.method private showLogsDelayed()V
    .registers 5

    .line 342
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$LogcatActivity$mk6zMzpU5MiXY_P8Lp3VUDktEtg;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$LogcatActivity$mk6zMzpU5MiXY_P8Lp3VUDktEtg;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$showLogs$0$LogcatViewer$LogcatActivity()V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    const-string v0, "ContentValues"

    const-string v1, "run; scrolled"

    .line 355
    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logcat of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    .line 264
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    const-string v1, "monospace"

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 265
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41400000  # 12.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 266
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const v1, -0xa0a0b

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    const v1, -0xf2b85f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 p1, 0x41800000  # 16.0f

    .line 268
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 269
    iget-object v1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0, p1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 270
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string p1, "Double-tap to pause"

    const/4 v1, 0x1

    .line 294
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 296
    new-instance p1, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$2;

    invoke-direct {p1, p0, p0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$2;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 303
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 304
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->setContentView(Landroid/view/View;)V

    .line 309
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->showLogs()V

    .line 311
    new-instance p1, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$3;

    invoke-direct {p1, p0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$3;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    .line 327
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 334
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->mThread:Ljava/lang/Thread;

    :cond_d
    return-void
.end method
