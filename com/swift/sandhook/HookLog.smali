.class public Lcom/swift/sandhook/HookLog;
.super Ljava/lang/Object;
.source "HookLog.java"


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "SandHook"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    sget-boolean v0, Lcom/swift/sandhook/SandHookConfig;->DEBUG:Z

    sput-boolean v0, Lcom/swift/sandhook/HookLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .registers 2

    const-string v0, "SandHook"

    .line 21
    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;)I
    .registers 2

    const-string v0, "SandHook"

    .line 29
    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    const-string v0, "SandHook"

    .line 33
    invoke-static {v0, p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)I
    .registers 2

    const-string v0, "SandHook"

    .line 17
    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;)I
    .registers 2

    const-string v0, "SandHook"

    .line 13
    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;)I
    .registers 2

    const-string v0, "SandHook"

    .line 25
    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
