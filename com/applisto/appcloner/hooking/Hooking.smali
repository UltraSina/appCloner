.class public Lcom/applisto/appcloner/hooking/Hooking;
.super Ljava/lang/Object;
.source "Hooking.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sHookExecutor:Ljava/util/concurrent/ExecutorService;

.field private static sHookingInited:Z

.field private static sUseDelayedHooking:Z

.field private static sUseSandHook:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/applisto/appcloner/hooking/Hooking;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHookClass(Ljava/lang/Class;)V
    .registers 7

    .line 107
    sget-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHookClass; hookWrapperClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_16
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_27

    new-array v0, v1, [Ljava/lang/Class;

    aput-object p0, v0, v2

    .line 112
    invoke-static {v0}, Lcom/swift/sandhook/SandHook;->addHookClass([Ljava/lang/Class;)V

    goto/16 :goto_f1

    :cond_27
    const/4 v0, 0x0

    .line 115
    invoke-static {v0, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->getTargetHookClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_b3

    .line 119
    invoke-static {v3}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 121
    invoke-static {v0, v3, p0}, Lcom/swift/sandhook/wrapper/HookWrapper;->getHookMethods(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 123
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    .line 124
    iget-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 125
    invoke-static {v3}, Landhook/lib/AndHook;->ensureClassInitialized(Ljava/lang/Class;)Z

    .line 128
    iget-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    instance-of v3, v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_9c

    .line 129
    iget-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    check-cast v3, Ljava/lang/reflect/Method;

    .line 130
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4
    :try_end_64
    .catchall {:try_start_16 .. :try_end_64} :catchall_ce

    if-eqz v4, :cond_9c

    .line 132
    :try_start_66
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    const-class v3, Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Class;

    .line 135
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    .line 136
    iget-object v4, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    .line 137
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 138
    iput-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_92} :catch_93
    .catchall {:try_start_66 .. :try_end_92} :catchall_ce

    goto :goto_9c

    :catch_93
    move-exception v3

    .line 140
    :try_start_94
    sget-object v4, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 146
    :cond_9c
    :goto_9c
    sget-object v3, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_ab

    .line 147
    sget-object v3, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/applisto/appcloner/hooking/-$$Lambda$Hooking$RIeOXO-ttSLkTwf33vBcEr3zvM0;

    invoke-direct {v4, v0}, Lcom/applisto/appcloner/hooking/-$$Lambda$Hooking$RIeOXO-ttSLkTwf33vBcEr3zvM0;-><init>(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_3d

    .line 152
    :cond_ab
    iget-object v3, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    iget-object v0, v0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    invoke-static {v3, v0}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    goto :goto_3d

    .line 117
    :cond_b3
    new-instance v0, Lcom/swift/sandhook/wrapper/HookErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find target hook class for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/swift/sandhook/wrapper/HookErrorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ce
    .catchall {:try_start_94 .. :try_end_ce} :catchall_ce

    :catchall_ce
    move-exception p0

    .line 157
    sget-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHookClass; t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    :goto_f1
    return-void
.end method

.method public static varargs callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 178
    invoke-static {p0, p1, p2}, Lcom/swift/sandhook/SandHook;->callOriginByBackup(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 181
    :cond_b
    invoke-static {p1, p2}, Landhook/lib/HookHelper;->invokeObjectOrigin(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs callStaticOrigin(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 166
    invoke-static {p0, v1, p1}, Lcom/swift/sandhook/SandHook;->callOriginByBackup(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 169
    :cond_c
    invoke-static {v1, p1}, Landhook/lib/HookHelper;->invokeObjectOrigin(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized initHooking(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/applisto/appcloner/hooking/Hooking;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-boolean v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookingInited:Z

    if-nez v1, :cond_58

    const/4 v1, 0x1

    .line 75
    sput-boolean v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookingInited:Z

    .line 77
    invoke-static {}, Lcom/applisto/appcloner/hooking/Hooking;->useSandHook()Z

    move-result v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_5a

    if-eqz v1, :cond_40

    const/4 v1, 0x0

    .line 80
    :try_start_11
    sget-object v2, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    const-string v3, "initHooking; SandHook"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/swift/sandhook/SandHook;->disableVMInline()Z

    .line 83
    sget-object v2, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v2}, Lcom/swift/sandhook/SandHook;->tryDisableProfile(Ljava/lang/String;)Z

    .line 84
    invoke-static {v1}, Lcom/swift/sandhook/SandHook;->disableDex2oatInline(Z)Z

    .line 85
    sget v2, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_32

    .line 86
    invoke-static {}, Lcom/swift/sandhook/SandHook;->passApiCheck()Z
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_34

    .line 88
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception v2

    .line 90
    :try_start_35
    sget-object v3, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_5a

    .line 97
    :cond_40
    :try_start_40
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    const-string v2, "initHooking; AndHook"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/swift/sandhook/SandHookConfig;->SELF_PACKAGE_NAME:Ljava/lang/String;

    const/4 p0, 0x0

    .line 99
    invoke-static {p0}, Landhook/lib/AndHook;->ensureNativeLibraryLoaded(Ljava/io/File;)V
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_52

    goto :goto_58

    :catchall_52
    move-exception p0

    .line 101
    :try_start_53
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_5a

    .line 104
    :cond_58
    :goto_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$addHookClass$0(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V
    .registers 3

    .line 148
    sget-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    const-string v1, "addHookClass; hooking using thread executor..."

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->target:Ljava/lang/reflect/Member;

    iget-object p0, p0, Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;->hook:Ljava/lang/reflect/Method;

    invoke-static {v0, p0}, Landhook/lib/HookHelper;->hook(Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static setUseDelayedHooking(Z)V
    .registers 4

    .line 41
    sget-object v0, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseDelayedHooking; useDelayedHooking: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sput-boolean p0, Lcom/applisto/appcloner/hooking/Hooking;->sUseDelayedHooking:Z

    return-void
.end method

.method public static declared-synchronized useSandHook()Z
    .registers 6

    const-class v0, Lcom/applisto/appcloner/hooking/Hooking;

    monitor-enter v0

    .line 48
    :try_start_3
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    if-nez v1, :cond_4d

    const/4 v1, 0x0

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    .line 50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4d

    .line 51
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->isX86()Z

    move-result v2

    .line 52
    sget-object v3, Lcom/applisto/appcloner/hooking/Hooking;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useSandHook; x86: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_31

    const/4 v1, 0x1

    .line 53
    :cond_31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    if-eqz v2, :cond_4d

    .line 55
    sget-boolean v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseDelayedHooking:Z

    if-eqz v1, :cond_4d

    .line 56
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    .line 57
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sHookExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/applisto/appcloner/hooking/Hooking$1;

    invoke-direct {v2}, Lcom/applisto/appcloner/hooking/Hooking$1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    :cond_4d
    sget-object v1, Lcom/applisto/appcloner/hooking/Hooking;->sUseSandHook:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_55

    monitor-exit v0

    return v1

    :catchall_55
    move-exception v1

    monitor-exit v0

    throw v1
.end method
