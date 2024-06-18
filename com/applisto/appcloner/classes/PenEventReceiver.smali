.class public Lcom/applisto/appcloner/classes/PenEventReceiver;
.super Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;
.source "PenEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/applisto/appcloner/classes/PenEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;-><init>()V

    return-void
.end method

.method public static install()V
    .registers 2

    .line 19
    sget-object v0, Lcom/applisto/appcloner/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/applisto/appcloner/classes/PenEventReceiver;->init()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 26
    sget-object v0, Lcom/applisto/appcloner/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.pen.INSERT"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_7d

    const/4 v2, 0x0

    const-string v3, "NONE"

    if-eqz v1, :cond_5f

    :try_start_25
    const-string v0, "penInsert"

    .line 31
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 32
    sget-object v0, Lcom/applisto/appcloner/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; penInsert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_51

    .line 36
    invoke-static {p1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p2

    const-string v0, "penInsertedEventAction"

    .line 37
    invoke-virtual {p2, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/PenEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_83

    .line 43
    :cond_51
    invoke-static {p1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p2

    const-string v0, "penDetachedEventAction"

    .line 44
    invoke-virtual {p2, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/PenEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_83

    :cond_5f
    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "isShow"

    .line 49
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_83

    .line 51
    invoke-static {p1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p2

    const-string v0, "penButtonPressedEventAction"

    .line 52
    invoke-virtual {p2, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/PenEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_7c} :catch_7d

    goto :goto_83

    :catch_7d
    move-exception p1

    .line 57
    sget-object p2, Lcom/applisto/appcloner/classes/PenEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_83
    :goto_83
    return-void
.end method
