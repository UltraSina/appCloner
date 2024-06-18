.class public Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;
.super Landroid/app/Activity;
.source "FreeFormWindowActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sFreeFormWindow:Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultActivityBounds()Landroid/graphics/Rect;
    .registers 6

    .line 127
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/applisto/appcloner/classes/Utils;->getRealScreenSize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultActivityBounds; realScreenSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd  # 0.8f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 131
    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 132
    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 133
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    .line 137
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public loadActivityBounds()Landroid/graphics/Rect;
    .registers 9

    const/4 v0, 0x0

    .line 97
    :try_start_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "free_form_window_left"

    const/4 v3, 0x0

    .line 98
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "free_form_window_top"

    .line 99
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "free_form_window_right"

    .line 100
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "free_form_window_bottom"

    .line 101
    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 103
    sget-object v3, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadActivityBounds; left: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", right: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bottom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_58

    return-object v0

    .line 111
    :cond_58
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lcom/applisto/appcloner/classes/Utils;->getRealScreenSize(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    .line 112
    iget v2, v3, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_7d

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v4, v1, Landroid/graphics/Point;->x:I

    if-ne v2, v4, :cond_7d

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_7d

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v1, v1, Landroid/graphics/Point;->y:I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7a} :catch_7e

    if-ne v2, v1, :cond_7d

    return-object v0

    :cond_7d
    return-object v3

    :catch_7e
    move-exception v1

    .line 120
    sget-object v2, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget-object p1, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->sFreeFormWindow:Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;

    if-nez p1, :cond_e

    .line 39
    new-instance p1, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;

    invoke-direct {p1}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;-><init>()V

    sput-object p1, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->sFreeFormWindow:Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;

    .line 43
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 45
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_dc

    const-string v0, "com.applisto.appcloner.originalActivityName"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_43

    const-string v0, "."

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    :cond_43
    sget-object v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate; originalActivityName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p1, 0x1000

    .line 58
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 59
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    :cond_7e
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->loadActivityBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_88

    .line 67
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->getDefaultActivityBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_88
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v1, v1}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->overridePendingTransition(II)V

    .line 72
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->finish()V

    .line 73
    invoke-virtual {p0, v1, v1}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->overridePendingTransition(II)V

    .line 75
    sget-object v1, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate; activityBounds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 77
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 80
    sget-object v1, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate; intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", options: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_d5} :catch_d6

    goto :goto_dc

    :catch_d6
    move-exception p1

    .line 83
    sget-object v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_dc
    :goto_dc
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0, v0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindowActivity;->overridePendingTransition(II)V

    return-void
.end method
