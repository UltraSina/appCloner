.class public Lcom/applisto/appcloner/classes/CrashHandler$Hook;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookClass;
    value = Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultUncaughtExceptionHandlerHook(Ljava/lang/Class;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2

    .line 134
    invoke-static {}, Lcom/applisto/appcloner/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setDefaultUncaughtExceptionHandlerHook; "

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setDefaultUncaughtExceptionHandlerHook(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "setDefaultUncaughtExceptionHandler"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Ljava/lang/Thread$UncaughtExceptionHandler;
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/applisto/appcloner/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setDefaultUncaughtExceptionHandlerHook; "

    invoke-static {p0, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
