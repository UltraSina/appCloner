.class public Lcom/applisto/appcloner/classes/FakeCamera$Hook1;
.super Ljava/lang/Object;
.source "FakeCamera.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookReflectClass;
    value = "android.hardware.Camera"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/FakeCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook1"
.end annotation


# static fields
.field static releaseBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "release"
    .end annotation
.end field

.field static startPreviewBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "startPreview"
    .end annotation
.end field

.field static takePictureBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "takePicture"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/hardware/Camera$ShutterCallback;,
            Landroid/hardware/Camera$PictureCallback;,
            Landroid/hardware/Camera$PictureCallback;,
            Landroid/hardware/Camera$PictureCallback;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$takePictureHook$0(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera;)V
    .registers 6

    if-eqz p0, :cond_e

    .line 129
    :try_start_2
    invoke-interface {p0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    .line 131
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_e
    if-eqz p1, :cond_35

    .line 136
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$500()[B

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 137
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$500()[B

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_35

    .line 139
    :cond_1e
    new-instance p0, Ljava/io/ByteArrayOutputStrean;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStrean;-><init>()V

    .line 140
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 141
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStrean;->toByteArray()[B

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 145
    :cond_35
    :goto_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/FakeCamera;->access$602(J)J

    return-void
.end method

.method public static releaseHook(Landroid/hardware/Camera;)V
    .registers 3
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "release"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseHook; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$200()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$300()V

    .line 111
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera$Hook1;->releaseBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static startPreviewHook(Landroid/hardware/Camera;)V
    .registers 3
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "startPreview"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startPreviewHook; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera$Hook1;->startPreviewBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$100()V

    return-void
.end method

.method public static takePictureHook(Landroid/hardware/Camera;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 8
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "takePicture"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/hardware/Camera$ShutterCallback;,
            Landroid/hardware/Camera$PictureCallback;,
            Landroid/hardware/Camera$PictureCallback;,
            Landroid/hardware/Camera$PictureCallback;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 124
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "takePictureHook; providing selected picture..."

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$200()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;

    invoke-direct {p3, p1, p4, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;-><init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_39

    .line 148
    :cond_1c
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "takePictureHook; calling backup..."

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera$Hook1;->takePictureBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_39
    return-void
.end method
