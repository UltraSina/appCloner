.class public abstract Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartExitAppEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sInited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .registers 1

    .line 19
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    return-object v0
.end method

.method private exitApp()V
    .registers 4

    .line 76
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "exitApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 80
    :try_start_19
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v1

    .line 82
    sget-object v2, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :cond_24
    return-void
.end method

.method protected static init()V
    .registers 2

    .line 29
    :try_start_0
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sInited:Z

    if-nez v0, :cond_1d

    .line 30
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "init; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver$1;

    invoke-direct {v0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver$1;-><init>()V

    .line 43
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver$1;->onCreate()Z

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sInited:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v0

    .line 47
    sget-object v1, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method private startApp(Landroid/content/Context;)V
    .registers 4

    .line 62
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "startApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    const/high16 v1, 0x14000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception p1

    .line 71
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method protected handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 52
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAction; eventAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "START_APP"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 55
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->startApp(Landroid/content/Context;)V

    goto :goto_2d

    :cond_22
    const-string p1, "EXIT_APP"

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 57
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->exitApp()V

    :cond_2d
    :goto_2d
    return-void
.end method
