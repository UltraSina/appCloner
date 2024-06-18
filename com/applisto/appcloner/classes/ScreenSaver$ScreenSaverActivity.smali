.class public Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;
.super Landroid/app/Activity;
.source "ScreenSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/ScreenSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenSaverActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 226
    new-instance p1, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;

    invoke-direct {p1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;-><init>(Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;)V

    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 219
    new-instance p1, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;

    invoke-direct {p1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;-><init>(Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;)V

    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public finish()V
    .registers 4

    .line 232
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "finish; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "unMute"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 236
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$200()V

    .line 239
    :cond_19
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 241
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$000()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->setContentView(Landroid/view/View;)V

    .line 191
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_43

    .line 193
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_33

    const/16 v0, 0x200

    .line 203
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/high16 v0, -0x80000000

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 208
    :cond_33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_43

    .line 209
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 210
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_43
    return-void
.end method
