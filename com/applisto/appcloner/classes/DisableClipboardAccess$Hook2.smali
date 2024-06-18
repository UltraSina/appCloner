.class public Lcom/applisto/appcloner/classes/DisableClipboardAccess$Hook2;
.super Ljava/lang/Object;
.source "DisableClipboardAccess.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookReflectClass;
    value = "com.samsung.android.content.clipboard.SemClipboardManager"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/DisableClipboardAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook2"
.end annotation


# static fields
.field static constructorBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/content/Context;,
            Landroid/os/Handler;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructorHook(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/content/Context;,
            Landroid/os/Handler;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructorHook; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess$Hook2;->constructorBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->access$200(Ljava/lang/Object;)V

    return-void
.end method
