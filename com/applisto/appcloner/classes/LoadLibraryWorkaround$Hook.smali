.class public Lcom/applisto/appcloner/classes/LoadLibraryWorkaround$Hook;
.super Ljava/lang/Object;
.source "LoadLibraryWorkaround.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookClass;
    value = Ljava/lang/Runtime;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook"
.end annotation


# static fields
.field static loadLibrary0Backup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "loadLibrary0"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Ljava/lang/ClassLoader;,
            Ljava/lang/String;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadLibrary0Hook(Ljava/lang/Runtime;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "loadLibrary0"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Ljava/lang/ClassLoader;,
            Ljava/lang/String;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 53
    :try_start_3
    sget-object v3, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround$Hook;->loadLibrary0Backup:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-static {v3, p0, v4}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_51

    :catchall_f
    move-exception v3

    .line 55
    invoke-static {}, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_52

    .line 59
    invoke-static {}, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-static {}, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLibrary0Hook; new libname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v3, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround$Hook;->loadLibrary0Backup:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    invoke-static {v3, p0, v2}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_51
    return-void

    .line 63
    :cond_52
    throw v3
.end method
