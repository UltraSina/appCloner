.class public Lcom/swift/sandhook/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# static fields
.field static addWhiteListMethod:Ljava/lang/reflect/Method;

.field public static forNameMethod:Ljava/lang/reflect/Method;

.field public static getMethodMethod:Ljava/lang/reflect/Method;

.field static vmRuntime:Ljava/lang/Object;

.field static vmRuntimeClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 25
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getDeclaredMethod"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->getMethodMethod:Ljava/lang/reflect/Method;

    .line 26
    const-class v0, Ljava/lang/Class;

    const-string v1, "forName"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->forNameMethod:Ljava/lang/reflect/Method;

    .line 27
    sget-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->forNameMethod:Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v3, "dalvik.system.VMRuntime"

    aput-object v3, v1, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntimeClass:Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->getMethodMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntimeClass:Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "setHiddenApiExemptions"

    aput-object v7, v4, v5

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v5

    aput-object v7, v4, v6

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->addWhiteListMethod:Ljava/lang/reflect/Method;

    .line 29
    sget-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->getMethodMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntimeClass:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "getRuntime"

    aput-object v4, v2, v5

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntime:Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_75

    :catch_6d
    move-exception v0

    const-string v1, "ReflectionUtils"

    const-string v2, "error get methods"

    .line 32
    invoke-static {v1, v2, v0}, Lcom/applisto/appcloner/classes/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_75
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addReflectionWhiteList([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/swift/sandhook/utils/ReflectionUtils;->addWhiteListMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/swift/sandhook/utils/ReflectionUtils;->vmRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static passApiCheck()Z
    .registers 5

    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "Landroid/"

    aput-object v2, v0, v1

    const-string v2, "Lcom/android/"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "Ljava/lang/"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "Ldalvik/system/"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "Llibcore/io/"

    aput-object v4, v0, v2

    .line 38
    invoke-static {v0}, Lcom/swift/sandhook/utils/ReflectionUtils;->addReflectionWhiteList([Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_20

    return v3

    :catchall_20
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
