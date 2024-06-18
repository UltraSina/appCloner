.class public Lcom/applisto/appcloner/classes/HostMapper;
.super Ljava/lang/Object;
.source "HostMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/HostMapper$Hook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sMappedHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationManager:Landroid/app/NotificationManager;

.field private static final sNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSilent:Z

.field private static sSocksProxyHost:Ljava/lang/String;

.field private static sStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/applisto/appcloner/classes/HostMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/HostMapper;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/HostMapper;->sNotifications:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/applisto/appcloner/classes/HostMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/applisto/appcloner/classes/HostMapper;->sSocksProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .line 32
    sget-object v0, Lcom/applisto/appcloner/classes/HostMapper;->sMappedHosts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/applisto/appcloner/classes/HostMapper;->sSilent:Z

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/HostMapper;->showNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static install(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/util/Properties;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ")V"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/applisto/appcloner/classes/HostMapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; mappedHosts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", silent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", socksProxyHost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sput-object p0, Lcom/applisto/appcloner/classes/HostMapper;->sContext:Landroid/content/Context;

    .line 50
    sput-object p1, Lcom/applisto/appcloner/classes/HostMapper;->sMappedHosts:Ljava/util/Map;

    .line 51
    sput-boolean p2, Lcom/applisto/appcloner/classes/HostMapper;->sSilent:Z

    .line 52
    sput-object p3, Lcom/applisto/appcloner/classes/HostMapper;->sSocksProxyHost:Ljava/lang/String;

    .line 53
    sput-object p4, Lcom/applisto/appcloner/classes/HostMapper;->sStringsProperties:Ljava/util/Properties;

    const-string p1, "notification"

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sput-object p1, Lcom/applisto/appcloner/classes/HostMapper;->sNotificationManager:Landroid/app/NotificationManager;

    .line 58
    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 59
    const-class p0, Lcom/applisto/appcloner/classes/HostMapper$Hook;

    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 60
    sget-object p0, Lcom/applisto/appcloner/classes/HostMapper;->TAG:Ljava/lang/String;

    const-string p1, "install; hooks installed"

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static showNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 134
    sget-object v1, Lcom/applisto/appcloner/classes/HostMapper;->sNotifications:Ljava/util/Map;

    monitor-enter v1

    .line 135
    :try_start_7
    sget-object v2, Lcom/applisto/appcloner/classes/HostMapper;->sNotifications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 136
    monitor-exit v1

    return-void

    .line 138
    :cond_15
    sget-object v2, Lcom/applisto/appcloner/classes/HostMapper;->sNotifications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_a8

    .line 141
    sget-object v1, Lcom/applisto/appcloner/classes/HostMapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNotification; host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mappedHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/applisto/appcloner/classes/HostMapper;->sStringsProperties:Ljava/util/Properties;

    const-string v2, "hosts_mapper_not_mapped_notification_title"

    .line 146
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    :cond_4f
    sget-object v1, Lcom/applisto/appcloner/classes/HostMapper;->sStringsProperties:Ljava/util/Properties;

    const-string v2, "hosts_mapper_mapped_notification_title"

    .line 147
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_72

    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " → "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    :goto_72
    new-instance p1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/applisto/appcloner/classes/HostMapper;->sContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    .line 151
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 155
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_92

    const/4 p1, -0x1

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 159
    :cond_92
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 163
    iget p1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/app/Notification;->defaults:I

    .line 164
    sget-object p1, Lcom/applisto/appcloner/classes/HostMapper;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_a8
    move-exception p0

    .line 139
    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p0
.end method
