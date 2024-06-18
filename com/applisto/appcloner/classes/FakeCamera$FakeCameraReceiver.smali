.class public Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/FakeCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeCameraReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private rotateBitmap(I)V
    .registers 10

    .line 389
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateBitmap; degrees: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 392
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 393
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 394
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera;->access$402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 395
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera;->access$502([B)[B

    .line 396
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$800()V

    :cond_4c
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 369
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive; intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :try_start_18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applisto.appcloner.action.FAKE_CAMERA_SELECT_CAMERA_PICTURE"

    .line 373
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 374
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$700()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 375
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$700()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_60

    :cond_3c
    const-string p2, "com.applisto.appcloner.action.FAKE_CAMERA_ROTATE_CLOCKWISE"

    .line 377
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    const/16 p1, 0x5a

    .line 378
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraReceiver;->rotateBitmap(I)V

    goto :goto_60

    :cond_4a
    const-string p2, "com.applisto.appcloner.action.FAKE_CAMERA_ROTATE_ANTI_CLOCKWISE"

    .line 379
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/16 p1, -0x5a

    .line 380
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraReceiver;->rotateBitmap(I)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_57} :catch_58

    goto :goto_60

    :catch_58
    move-exception p1

    .line 384
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_60
    :goto_60
    return-void
.end method
