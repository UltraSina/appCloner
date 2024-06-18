.class final Lcom/applisto/appcloner/classes/FileAccessMonitor$1;
.super Ljava/lang/Object;
.source "FileAccessMonitor.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/FileAccessMonitor;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mLastEntry:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8

    .line 41
    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->access$000()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 42
    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->access$100()Ljava/util/TreeMap;

    move-result-object p1

    monitor-enter p1

    .line 43
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    iget-object v2, p0, Lcom/applisto/appcloner/classes/FileAccessMonitor$1;->mLastEntry:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 45
    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->access$100()Ljava/util/TreeMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->access$100()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_53

    .line 47
    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->access$100()Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->access$100()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_53
    iput-object p2, p0, Lcom/applisto/appcloner/classes/FileAccessMonitor$1;->mLastEntry:Ljava/lang/String;

    .line 51
    :cond_55
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_58
    move-exception p2

    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_d .. :try_end_5a} :catchall_58

    throw p2
.end method
