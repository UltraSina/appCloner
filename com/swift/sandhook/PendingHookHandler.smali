.class public Lcom/swift/sandhook/PendingHookHandler;
.super Ljava/lang/Object;
.source "PendingHookHandler.java"


# static fields
.field private static canUsePendingHook:Z

.field private static pendingHooks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Vector<",
            "Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/swift/sandhook/PendingHookHandler;->pendingHooks:Ljava/util/Map;

    .line 20
    sget-boolean v0, Lcom/swift/sandhook/SandHookConfig;->delayHook:Z

    if-eqz v0, :cond_11

    .line 21
    invoke-static {}, Lcom/swift/sandhook/SandHook;->initForPendingHook()Z

    move-result v0

    sput-boolean v0, Lcom/swift/sandhook/PendingHookHandler;->canUsePendingHook:Z

    :cond_11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addPendingHook(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V
    .registers 5

    const-class v0, Lcom/swift/sandhook/PendingHookHandler;

    monitor-enter v0

    .line 30
    :try_start_3
    sget-object v1, Lcom/swift/sandhook/PendingHookHandler;->pendingHooks:Ljava/util/Map;

    iget-object v2, p0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    invoke-interface {v2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-nez v1, :cond_23

    .line 32
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 33
    sget-object v2, Lcom/swift/sandhook/PendingHookHandler;->pendingHooks:Ljava/util/Map;

    iget-object v3, p0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_23
    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 36
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static canWork()Z
    .registers 1

    .line 26
    sget-boolean v0, Lcom/swift/sandhook/PendingHookHandler;->canUsePendingHook:Z

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/swift/sandhook/SandHook;->canGetObject()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/swift/sandhook/SandHookConfig;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static onClassInit(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_7

    return-void

    .line 41
    :cond_7
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHook;->getObject(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-nez p0, :cond_10

    return-void

    .line 44
    :cond_10
    sget-object p1, Lcom/swift/sandhook/PendingHookHandler;->pendingHooks:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    if-nez p1, :cond_1b

    return-void

    .line 47
    :cond_1b
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do pending hook for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swift/sandhook/HookLog;->w(Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 50
    :try_start_46
    iput-boolean v1, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->initClass:Z

    .line 51
    invoke-static {v0}, Lcom/swift/sandhook/SandHook;->hook(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V
    :try_end_4b
    .catch Lcom/swift/sandhook/wrapper/HookErrorException; {:try_start_46 .. :try_end_4b} :catch_4c

    goto :goto_1f

    :catch_4c
    move-exception v0

    const-string v1, "Pending Hook Error!"

    .line 53
    invoke-static {v1, v0}, Lcom/swift/sandhook/HookLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 56
    :cond_53
    sget-object p1, Lcom/swift/sandhook/PendingHookHandler;->pendingHooks:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
