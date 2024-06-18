.class public Lcom/applisto/appcloner/classes/AutoRotateControls;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "AutoRotateControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoRotate:Ljava/lang/Boolean;

.field private mAutoRotateSet:Z

.field private mOldAutoRotate:I

.field private mRestoreAutoRotateOnExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/applisto/appcloner/classes/AutoRotateControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mOldAutoRotate:I

    const-string v0, "autoRotate"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "restoreAutoRotateOnExit"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    .line 31
    sget-object p1, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRotateControls; mAutoRotate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object p1, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRotateControls; mRestoreAutoRotateOnExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public install()V
    .registers 3

    .line 36
    sget-object v0, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/AutoRotateControls;->onCreate()Z

    :cond_e
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "accelerometer_rotation"

    .line 45
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 47
    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mAutoRotateSet:Z

    if-nez v1, :cond_48

    const/4 v1, 0x1

    .line 51
    :try_start_a
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x1

    .line 50
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mOldAutoRotate:I

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mAutoRotate:Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 53
    :goto_24
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception p1

    .line 59
    sget-object v0, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_2e
    sget-object p1, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; mOldAutoRotate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mOldAutoRotate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v1, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mAutoRotateSet:Z

    :cond_48
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 5

    .line 71
    sget-object v0, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreAutoRotateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldAutoRotate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mOldAutoRotate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mRestoreAutoRotateOnExit:Z

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mOldAutoRotate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    .line 79
    :try_start_2b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accelerometer_rotation"

    iget v1, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mOldAutoRotate:I

    .line 78
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_37

    goto :goto_3d

    :catch_37
    move-exception p1

    .line 84
    sget-object v0, Lcom/applisto/appcloner/classes/AutoRotateControls;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/AutoRotateControls;->mAutoRotateSet:Z

    :cond_40
    return-void
.end method
