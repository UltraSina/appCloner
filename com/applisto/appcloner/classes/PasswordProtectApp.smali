.class public Lcom/applisto/appcloner/classes/PasswordProtectApp;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "PasswordProtectApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/applisto/appcloner/classes/PasswordProtectApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PasswordProtectApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public install()V
    .registers 3

    .line 21
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordProtectApp;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordProtectApp;->onCreate()Z

    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    .line 28
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordProtectApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    instance-of v0, p1, Lcom/applisto/appcloner/classes/PasswordActivity;

    if-eqz v0, :cond_22

    .line 31
    sget-object p1, Lcom/applisto/appcloner/classes/PasswordProtectApp;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; ignoring"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_22
    sget-boolean v0, Lcom/applisto/appcloner/classes/PasswordActivity;->sUnlocked:Z

    if-nez v0, :cond_3d

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 39
    sget-object p1, Lcom/applisto/appcloner/classes/PasswordProtectApp;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; started PasswordActivity"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 41
    :cond_3d
    sget-object p1, Lcom/applisto/appcloner/classes/PasswordProtectApp;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; already unlocked"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method
