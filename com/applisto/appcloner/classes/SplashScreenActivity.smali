.class public Lcom/applisto/appcloner/classes/SplashScreenActivity;
.super Landroid/app/Activity;
.source "SplashScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOriginalActivityName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isGif([B)Z
    .registers 5

    const/4 v0, 0x0

    .line 137
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, 0x47

    if-ne v1, v3, :cond_16

    aget-byte v1, p0, v2

    const/16 v3, 0x49

    if-ne v1, v3, :cond_16

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    const/16 v1, 0x46

    if-ne p0, v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static synthetic lambda$yXLk1id2mEUWEr-fgdpI8_Zunbs(Lcom/applisto/appcloner/classes/SplashScreenActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->startApp()V

    return-void
.end method

.method private startApp()V
    .registers 4

    .line 122
    sget-object v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "startApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 126
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v0

    .line 130
    sget-object v1, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :goto_2d
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    :try_start_3
    invoke-static {p0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p1

    const-string v0, "splashScreenDuration"

    const/4 v1, 0x3

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_115

    const/4 v1, -0x1

    :try_start_17
    const-string v2, "splashScreenMargin"

    const v3, 0x3e99999a  # 0.3f

    .line 57
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    .line 58
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v3}, Lcom/applisto/appcloner/classes/Utils;->getRealScreenSize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v3

    .line 59
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 60
    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 63
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v5, ".splashScreenFile"

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v3

    .line 64
    invoke-static {v3}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->isGif([B)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 66
    new-instance v5, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, p0, v6}, Lcom/applisto/appcloner/classes/SplashScreenActivity$CustomGifView;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    .line 67
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x11

    invoke-direct {v6, v1, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_87

    :cond_78
    const/4 v5, 0x0

    .line 72
    array-length v6, v3

    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 73
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    .line 77
    :goto_87
    invoke-virtual {v3, v4, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->setContentView(Landroid/view/View;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8d} :catch_8e

    goto :goto_94

    :catch_8e
    move-exception v2

    .line 80
    :try_start_8f
    sget-object v3, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_115

    .line 84
    :goto_94
    :try_start_94
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_c5

    .line 85
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_c5

    const/high16 v3, -0x80000000

    .line 87
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const/high16 v3, 0x4000000

    .line 88
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    const-string v3, "splashScreenBackgroundColor"

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 90
    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 91
    invoke-virtual {v2, p1}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_be} :catch_bf

    goto :goto_c5

    :catch_bf
    move-exception p1

    .line 95
    :try_start_c0
    sget-object v1, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :cond_c5
    :goto_c5
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 100
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_11b

    const-string v1, "com.applisto.appcloner.originalActivityName"

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    if-eqz p1, :cond_11b

    .line 105
    iget-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_104

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SplashScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 109
    :cond_104
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$SplashScreenActivity$yXLk1id2mEUWEr-fgdpI8_Zunbs;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$SplashScreenActivity$yXLk1id2mEUWEr-fgdpI8_Zunbs;-><init>(Lcom/applisto/appcloner/classes/SplashScreenActivity;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_114} :catch_115

    goto :goto_11b

    :catch_115
    move-exception p1

    .line 113
    sget-object v0, Lcom/applisto/appcloner/classes/SplashScreenActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11b
    :goto_11b
    return-void
.end method
