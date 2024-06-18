.class public Lcom/applisto/appcloner/classes/PowerEventReceiver;
.super Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;
.source "PowerEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/applisto/appcloner/classes/PowerEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;-><init>()V

    return-void
.end method

.method public static install()V
    .registers 2

    .line 21
    sget-object v0, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->init()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 28
    sget-object v0, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive; intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_16
    invoke-static {p1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v0

    const-string v1, "powerEventsDockUndockEvents"

    const/4 v2, 0x0

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 33
    invoke-virtual {v0, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 35
    sget-object v3, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive; powerEventsDockUndockEvents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_49} :catch_be

    const-string v5, "powerConnectedEventAction"

    const-string v6, "NONE"

    if-eqz v4, :cond_60

    if-nez v1, :cond_60

    .line 39
    :try_start_51
    sget-object p2, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive; ACTION_POWER_CONNECTED"

    invoke-static {p2, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v0, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c4

    :cond_60
    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_66} :catch_be

    const-string v7, "powerDisconnectedEventAction"

    if-eqz v4, :cond_7b

    if-nez v1, :cond_7b

    .line 46
    :try_start_6c
    sget-object p2, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive; ACTION_POWER_DISCONNECTED"

    invoke-static {p2, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v0, v7, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c4

    :cond_7b
    const-string v4, "android.intent.action.DOCK_EVENT"

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    if-eqz v1, :cond_c4

    .line 53
    sget-object v1, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    const-string v3, "onReceive; ACTION_DOCK_EVENT"

    invoke-static {v1, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v3, -0x1

    .line 55
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_96

    const/4 v2, 0x1

    .line 57
    :cond_96
    sget-object p2, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive; isDocked: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b6

    .line 60
    invoke-virtual {v0, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c4

    .line 64
    :cond_b6
    invoke-virtual {v0, v7, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_bd} :catch_be

    goto :goto_c4

    :catch_be
    move-exception p1

    .line 70
    sget-object p2, Lcom/applisto/appcloner/classes/PowerEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c4
    :goto_c4
    return-void
.end method
