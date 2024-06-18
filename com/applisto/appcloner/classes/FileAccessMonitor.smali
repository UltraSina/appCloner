.class public Lcom/applisto/appcloner/classes/FileAccessMonitor;
.super Ljava/lang/Object;
.source "FileAccessMonitor.java"


# static fields
.field private static final MAX_SIZE:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final sIndex:Ljava/util/concurrent/atomic/AtomicLong;

.field private static sMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;->sIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 19
    sget-object v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;->sIndex:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/TreeMap;
    .registers 1

    .line 19
    sget-object v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;->sMap:Ljava/util/TreeMap;

    return-object v0
.end method

.method public static getFileAccessMonitorEntries(J)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;->sMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_15

    .line 66
    monitor-enter v0

    .line 67
    :try_start_5
    sget-object v1, Lcom/applisto/appcloner/classes/FileAccessMonitor;->sMap:Ljava/util/TreeMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static install()V
    .registers 2

    .line 29
    sget-object v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :try_start_7
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/FileAccessMonitor;->sMap:Ljava/util/TreeMap;

    .line 34
    new-instance v0, Lcom/applisto/appcloner/classes/FileAccessMonitor$1;

    invoke-direct {v0}, Lcom/applisto/appcloner/classes/FileAccessMonitor$1;-><init>()V

    .line 56
    invoke-static {v0}, Lcom/applisto/appcloner/classes/AppClonerNative;->registerFilenameFilter(Ljava/io/FilenameFilter;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_1d

    :catchall_17
    move-exception v0

    .line 59
    sget-object v1, Lcom/applisto/appcloner/classes/FileAccessMonitor;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method
