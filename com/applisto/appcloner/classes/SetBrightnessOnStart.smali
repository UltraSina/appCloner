.class public Lcom/applisto/appcloner/classes/SetBrightnessOnStart;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "SetBrightnessOnStart.java"


# static fields
.field private static final MAX_BRIGHTNESS:I = 0xff

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "screen_auto_brightness_adj"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBrightnessSet:Z

.field private mOldAutoBrightness:Z

.field private mOldBrightness:Ljava/lang/Integer;

.field private mRestoreBrightnessOnExit:Z

.field private mSetBrightnessOnStart:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    const-string v0, "setBrightnessOnStart"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "restoreBrightnessOnExit"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    .line 36
    sget-object p1, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBrightnessOnStart; mSetBrightnessOnStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object p1, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetBrightnessOnStart; mRestoreBrightnessOnExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBrightness(Landroid/content/Context;Z)Ljava/lang/Integer;
    .registers 3

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    if-eqz p2, :cond_16

    :try_start_6
    const-string p2, "screen_auto_brightness_adj"

    .line 109
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x43000000  # 128.0f

    mul-float p1, p1, p2

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1c

    :cond_16
    const-string p2, "screen_brightness"

    .line 112
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 115
    :goto_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-object p1

    :catchall_21
    move-exception p1

    .line 117
    sget-object p2, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private isAutoBrightness(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 81
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "screen_brightness_mode"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    :catchall_10
    move-exception p1

    .line 86
    sget-object v1, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private setAutoBrightness(Landroid/content/Context;Z)V
    .registers 4

    .line 94
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness_mode"

    if-eqz p2, :cond_a

    const/4 p2, 0x1

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception p1

    .line 99
    sget-object p2, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method private setBrightness(Landroid/content/Context;IZ)V
    .registers 9

    .line 123
    sget-object v0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness; newBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autoBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_1e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_49

    const-string v0, "screen_brightness"

    const/4 v1, 0x0

    const-string v2, "screen_brightness_mode"

    if-eqz p3, :cond_42

    :try_start_29
    const-string p3, "screen_auto_brightness_adj"

    add-int/lit8 v3, p2, -0x80

    int-to-float v3, v3

    const/high16 v4, 0x43000000  # 128.0f

    div-float/2addr v3, v4

    .line 129
    invoke-static {p1, p3, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_35
    .catchall {:try_start_29 .. :try_end_34} :catchall_49

    goto :goto_4f

    :catch_35
    move-exception p3

    .line 132
    :try_start_36
    sget-object v3, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {v3, p3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4f

    .line 141
    :cond_42
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_49

    goto :goto_4f

    :catchall_49
    move-exception p1

    .line 148
    sget-object p2, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4f
    return-void
.end method


# virtual methods
.method public install()V
    .registers 3

    .line 41
    sget-object v0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    if-eqz v0, :cond_e

    .line 44
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->onCreate()Z

    :cond_e
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    .line 50
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 52
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mBrightnessSet:Z

    if-nez v0, :cond_4c

    .line 54
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->isAutoBrightness(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    .line 55
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->getBrightness(Landroid/content/Context;Z)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldBrightness:Ljava/lang/Integer;

    .line 56
    sget-object v0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; mOldAutoBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldBrightness:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mSetBrightnessOnStart:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->setBrightness(Landroid/content/Context;IZ)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mBrightnessSet:Z

    :cond_4c
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 5

    .line 67
    sget-object v0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreBrightnessOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldAutoBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mRestoreBrightnessOnExit:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldBrightness:Ljava/lang/Integer;

    if-eqz v0, :cond_3b

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->setBrightness(Landroid/content/Context;IZ)V

    .line 73
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mOldAutoBrightness:Z

    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->setAutoBrightness(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->mBrightnessSet:Z

    :cond_3b
    return-void
.end method
