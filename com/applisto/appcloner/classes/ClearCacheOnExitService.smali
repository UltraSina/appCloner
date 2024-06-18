.class public Lcom/applisto/appcloner/classes/ClearCacheOnExitService;
.super Landroid/app/Service;
.source "ClearCacheOnExitService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/applisto/appcloner/classes/ClearCacheOnExitService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/ClearCacheOnExitService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 26
    sget-object p1, Lcom/applisto/appcloner/classes/ClearCacheOnExitService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand; "

    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 3

    .line 33
    sget-object p1, Lcom/applisto/appcloner/classes/ClearCacheOnExitService;->TAG:Ljava/lang/String;

    const-string v0, "onTaskRemoved; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ClearCacheOnExitService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/ClearCacheOnExitProvider;->clearCache(Landroid/content/Context;Z)V

    return-void
.end method
