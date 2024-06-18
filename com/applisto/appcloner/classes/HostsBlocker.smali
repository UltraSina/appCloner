.class public Lcom/applisto/appcloner/classes/HostsBlocker;
.super Ljava/lang/Object;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;,
        Lcom/applisto/appcloner/classes/HostsBlocker$CancelReceiver;,
        Lcom/applisto/appcloner/classes/HostsBlocker$IgnoreReceiver;,
        Lcom/applisto/appcloner/classes/HostsBlocker$BlockReceiver;,
        Lcom/applisto/appcloner/classes/HostsBlocker$AllowReceiver;,
        Lcom/applisto/appcloner/classes/HostsBlocker$ContentReceiver;,
        Lcom/applisto/appcloner/classes/HostsBlocker$HostReceiver;,
        Lcom/applisto/appcloner/classes/HostsBlocker$Hook;
    }
.end annotation


# static fields
.field private static final PREF_KEY_PREFIX:Ljava/lang/String; = "com.applisto.appcloner.host_"

.field private static final TAG:Ljava/lang/String;

.field private static sAllowAllOtherHosts:Z

.field private static sAllowLabel:Ljava/lang/String;

.field private static sBlockByDefault:Z

.field private static sBlockLabel:Ljava/lang/String;

.field private static sContentText:Ljava/lang/String;

.field private static sContentTitle:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sHostBlockedMessage:Ljava/lang/String;

.field private static final sHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sHostsBlockerTitle:Ljava/lang/String;

.field private static sHostsFileHosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreLabel:Ljava/lang/String;

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

.field private static sPreferences:Landroid/content/SharedPreferences;

.field private static sSocksProxyHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    const-class v0, Lcom/applisto/appcloner/classes/HostsBlocker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostsFileHosts:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/InetAddress;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->checkHost(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->whois(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1

    .line 53
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->addAllowedHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .registers 1

    .line 53
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->hideNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    .line 53
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->addBlockedHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .registers 1

    .line 53
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->addIgnoredHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/Map;
    .registers 1

    .line 53
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostsBlockerTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .registers 1

    .line 53
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;

    return-object v0
.end method

.method private static addAllowedHost(Ljava/lang/String;)V
    .registers 6

    .line 331
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAllowedHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 334
    :try_start_19
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.applisto.appcloner.host_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_43

    throw p0
.end method

.method private static addBlockedHost(Ljava/lang/String;)V
    .registers 6

    .line 340
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBlockedHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 343
    :try_start_19
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.applisto.appcloner.host_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_43

    throw p0
.end method

.method private static addIgnoredHost(Ljava/lang/String;)V
    .registers 5

    .line 349
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIgnoredHost; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 352
    :try_start_19
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.applisto.appcloner.host_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 354
    monitor-exit v0

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_19 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private static checkHost(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p0, :cond_e5

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e5

    .line 179
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sSocksProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    const-string v0, "127.0.0.1"

    .line 193
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    const-string v0, "localhost"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    const-string v0, "192.168."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto/16 :goto_e5

    .line 197
    :cond_2d
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->splitHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Blocked"

    const-string v4, "checkHost; blocked; host: "

    if-eqz v2, :cond_8f

    .line 200
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_78

    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_78

    .line 204
    :cond_5e
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_78
    :goto_78
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkHost; ignored/allowed; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_8f
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostsFileHosts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 212
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostsFileHosts:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 214
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->addAllowedHost(Ljava/lang/String;)V

    return-void

    .line 217
    :cond_a9
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->addBlockedHost(Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$_USfTmCXNR_6TuWfuzd6lXwjP6c;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$_USfTmCXNR_6TuWfuzd6lXwjP6c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_d0
    sget-boolean v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sAllowAllOtherHosts:Z

    if-eqz v0, :cond_d5

    return-void

    .line 231
    :cond_d5
    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->showNotification(Ljava/lang/String;)V

    .line 233
    sget-boolean p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sBlockByDefault:Z

    if-nez p0, :cond_dd

    goto :goto_e5

    .line 234
    :cond_dd
    new-instance p0, Ljava/net/UnknownHostException;

    const-string v0, "Blocked by default"

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e5
    :goto_e5
    return-void
.end method

.method private static checkHost(Ljava/net/InetAddress;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 170
    :cond_3
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->checkHost(Ljava/lang/String;)V

    return-void
.end method

.method public static getAllowedBlockedHosts()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 378
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    monitor-enter v1

    .line 384
    :try_start_e
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1c

    const-string v4, "com.applisto.appcloner.host_"

    .line 385
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/16 v4, 0x1c

    .line 386
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    sget-object v5, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 388
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 391
    :cond_47
    monitor-exit v1

    return-object v0

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_49

    goto :goto_4d

    :goto_4c
    throw v0

    :goto_4d
    goto :goto_4c
.end method

.method private static hideNotification(Ljava/lang/String;)V
    .registers 5

    .line 554
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideNotification; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :try_start_16
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "*."

    .line 559
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x2

    .line 560
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 563
    :cond_2c
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    monitor-enter v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2f} :catch_62

    .line 564
    :try_start_2f
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 565
    sget-object v3, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 566
    invoke-virtual {v3, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 567
    sget-object v3, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_39

    .line 570
    :cond_5d
    monitor-exit v0

    goto :goto_68

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_2f .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 572
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    return-void
.end method

.method public static install(Landroid/content/Context;ZLjava/lang/String;ZLjava/util/Properties;)V
    .registers 10

    .line 84
    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    .line 85
    sput-boolean p1, Lcom/applisto/appcloner/classes/HostsBlocker;->sBlockByDefault:Z

    .line 86
    sput-object p2, Lcom/applisto/appcloner/classes/HostsBlocker;->sSocksProxyHost:Ljava/lang/String;

    .line 87
    sput-boolean p3, Lcom/applisto/appcloner/classes/HostsBlocker;->sAllowAllOtherHosts:Z

    const-string p1, "notification"

    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    sput-object p1, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    .line 92
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    .line 94
    sget-object p1, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    monitor-enter p1

    .line 97
    :try_start_1b
    new-instance p2, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ".blockedHostsFile"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_2f} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2f} :catch_9d
    .catchall {:try_start_1b .. :try_end_2f} :catchall_9a

    :try_start_2f
    const-string p3, "(0.0.0.0|127.0.0.1|# x.x.x.x)\\s+(\\S*)"

    .line 100
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p3

    .line 102
    :cond_35
    :goto_35
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "# x.x.x.x"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 105
    :cond_4f
    invoke-virtual {p3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "# x.x.x.x"

    const/4 v3, 0x1

    .line 108
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install; host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", allowedBlocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostsFileHosts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_2f .. :try_end_90} :catchall_95

    goto :goto_35

    .line 116
    :cond_91
    :try_start_91
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_94} :catch_a3
    .catchall {:try_start_91 .. :try_end_94} :catchall_9a

    goto :goto_a3

    :catchall_95
    move-exception p3

    :try_start_96
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_99
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_99} :catch_a3
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    .line 119
    :catch_99
    :try_start_99
    throw p3
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_9a} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9d
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception p0

    goto/16 :goto_13f

    :catch_9d
    move-exception p2

    .line 122
    :try_start_9e
    sget-object p3, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :catch_a3
    :goto_a3
    sget-object p2, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b1
    :goto_b1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_de

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_b1

    const-string v0, "com.applisto.appcloner.host_"

    .line 126
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 127
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    const/16 v2, 0x1c

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    .line 131
    :cond_de
    sget-object p2, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "install; sHosts: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHosts:Ljava/util/Map;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    monitor-exit p1
    :try_end_f7
    .catchall {:try_start_9e .. :try_end_f7} :catchall_9a

    .line 134
    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 135
    const-class p0, Lcom/applisto/appcloner/classes/HostsBlocker$Hook;

    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 136
    sget-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    const-string p1, "install; hooks installed"

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "hosts_blocker_title"

    .line 138
    invoke-virtual {p4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostsBlockerTitle:Ljava/lang/String;

    const-string p0, "hosts_blocker_app_is_accessing_title"

    .line 139
    invoke-virtual {p4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sContentTitle:Ljava/lang/String;

    const-string p0, "hosts_blocker_touch_to_block_title"

    .line 140
    invoke-virtual {p4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sContentText:Ljava/lang/String;

    const-string p0, "label_allow"

    .line 141
    invoke-virtual {p4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;

    const-string p0, "label_block"

    .line 142
    invoke-virtual {p4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;

    const-string p0, "label_ignore"

    .line 143
    invoke-virtual {p4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sIgnoreLabel:Ljava/lang/String;

    const-string p0, "hosts_blocker_host_blocked_message"

    .line 144
    invoke-virtual {p4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostBlockedMessage:Ljava/lang/String;

    return-void

    .line 132
    :goto_13f
    :try_start_13f
    monitor-exit p1
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_9a

    goto :goto_142

    :goto_141
    throw p0

    :goto_142
    goto :goto_141
.end method

.method static synthetic lambda$checkHost$0(Ljava/lang/String;)V
    .registers 4

    .line 218
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sHostBlockedMessage:Ljava/lang/String;

    const-string v2, "%s"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static setAllowedBlockedHosts(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 398
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_20

    .line 402
    invoke-static {v1}, Lcom/applisto/appcloner/classes/HostsBlocker;->addIgnoredHost(Ljava/lang/String;)V

    goto :goto_8

    .line 403
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 404
    invoke-static {v1}, Lcom/applisto/appcloner/classes/HostsBlocker;->addAllowedHost(Ljava/lang/String;)V

    goto :goto_8

    .line 406
    :cond_2a
    invoke-static {v1}, Lcom/applisto/appcloner/classes/HostsBlocker;->addBlockedHost(Ljava/lang/String;)V

    goto :goto_8

    :cond_2e
    return-void
.end method

.method private static showNotification(Ljava/lang/String;)V
    .registers 15

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 274
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    monitor-enter v1

    .line 275
    :try_start_7
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 276
    monitor-exit v1

    return-void

    .line 278
    :cond_15
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotifications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_104

    .line 281
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNotification; host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 285
    sget-object v2, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/applisto/appcloner/classes/HostsBlocker$ContentReceiver;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x8000000

    invoke-static {v2, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 288
    sget-object v3, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v4, v1, 0x1

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/applisto/appcloner/classes/HostsBlocker$AllowReceiver;

    invoke-direct {v6, p0, v5, v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v7, 0x40000000  # 2.0f

    invoke-static {v3, v4, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 291
    sget-object v4, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v6, v1, 0x2

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/applisto/appcloner/classes/HostsBlocker$BlockReceiver;

    invoke-direct {v8, p0, v5, v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v6, v8, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 294
    sget-object v6, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v8, v1, 0x3

    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/applisto/appcloner/classes/HostsBlocker$IgnoreReceiver;

    invoke-direct {v9, p0, v5, v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v6, v8, v9, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 297
    sget-object v8, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    add-int/lit8 v9, v1, 0x4

    new-instance v10, Landroid/content/Intent;

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    const-class v13, Lcom/applisto/appcloner/classes/HostsBlocker$CancelReceiver;

    invoke-direct {v10, v11, v5, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    invoke-static {v8, v9, v10, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 300
    sget-object v8, Lcom/applisto/appcloner/classes/HostsBlocker;->sContentTitle:Ljava/lang/String;

    sget-object v9, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 301
    new-instance v9, Landroid/app/Notification$Builder;

    sget-object v10, Lcom/applisto/appcloner/classes/HostsBlocker;->sContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x1080027

    .line 302
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 303
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 304
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 305
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v7, 0x0

    .line 306
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 308
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_d6

    .line 309
    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget-object v7, Lcom/applisto/appcloner/classes/HostsBlocker;->sAllowLabel:Ljava/lang/String;

    .line 310
    invoke-virtual {p0, v1, v7, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget-object v3, Lcom/applisto/appcloner/classes/HostsBlocker;->sBlockLabel:Ljava/lang/String;

    .line 311
    invoke-virtual {p0, v1, v3, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget-object v3, Lcom/applisto/appcloner/classes/HostsBlocker;->sIgnoreLabel:Ljava/lang/String;

    .line 312
    invoke-virtual {p0, v1, v3, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_e5

    .line 314
    :cond_d6
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sContentText:Ljava/lang/String;

    const-string v3, "%s"

    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 318
    :goto_e5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p0, v1, :cond_ef

    const/4 p0, -0x1

    .line 319
    invoke-virtual {v2, p0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 322
    :cond_ef
    invoke-static {v2}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    .line 324
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 325
    iput-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 326
    iget v1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Landroid/app/Notification;->defaults:I

    .line 327
    sget-object v1, Lcom/applisto/appcloner/classes/HostsBlocker;->sNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_104
    move-exception p0

    .line 279
    :try_start_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw p0
.end method

.method static splitHost(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    const/16 v4, 0x2e

    if-ge v3, v1, :cond_23

    .line 247
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_20

    .line 248
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_20

    const/4 v2, 0x1

    goto :goto_23

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_23
    :goto_23
    if-eqz v2, :cond_4f

    .line 256
    :goto_25
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2d

    goto :goto_4f

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    .line 260
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_3a

    goto :goto_4f

    .line 264
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_4f
    :goto_4f
    return-object v0
.end method

.method private static whois(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 358
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whois; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "*."

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x2

    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 365
    :cond_23
    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://whois.domaintools.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 367
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 368
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4a} :catch_4b

    goto :goto_5b

    :catch_4b
    move-exception p1

    .line 371
    sget-object v0, Lcom/applisto/appcloner/classes/HostsBlocker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    const-string v0, "Failed to open browser."

    .line 372
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_5b
    return-void
.end method
