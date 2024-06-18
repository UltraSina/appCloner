.class public Lcom/applisto/appcloner/classes/FakeCamera$Hook2;
.super Ljava/lang/Object;
.source "FakeCamera.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookReflectClass;
    value = "android.hardware.camera2.CameraManager"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/FakeCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook2"
.end annotation


# static fields
.field static openCameraForUidBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "openCameraForUid"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Ljava/lang/String;,
            Landroid/hardware/camera2/CameraDevice$StateCallback;,
            Ljava/util/concurrent/Executor;,
            I
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openCameraForUidHook(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V
    .registers 8
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "openCameraForUid"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Ljava/lang/String;,
            Landroid/hardware/camera2/CameraDevice$StateCallback;,
            Ljava/util/concurrent/Executor;,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openCameraForUidHook; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera$Hook2;->openCameraForUidBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$100()V

    return-void
.end method
