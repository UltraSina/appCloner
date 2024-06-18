.class public Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "ClearCacheOnExitProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearCache(Landroid/content/Context;Z)V
    .registers 7

    const-class v0, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;

    monitor-enter v0

    :try_start_3
    const-string v1, "util.Utils"

    const-string v2, "clearCache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 45
    invoke-static {v1, v2, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2a

    .line 47
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getStringsProperties()Ljava/util/Properties;

    move-result-object p1

    const-string v1, "cache_cleared_message"

    .line 48
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_24

    goto :goto_2a

    :catchall_24
    move-exception p0

    .line 51
    :try_start_25
    sget-object p1, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2c

    .line 53
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected onAppExit(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    .line 39
    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;->clearCache(Landroid/content/Context;Z)V

    return-void
.end method

.method protected onInit(Landroid/app/Application;)Z
    .registers 5

    .line 26
    sget-object v0, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit; application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applisto/appcloner/classes/ClearCacheOnExitService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception p1

    .line 31
    sget-object v0, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    const/4 p1, 0x1

    return p1
.end method
