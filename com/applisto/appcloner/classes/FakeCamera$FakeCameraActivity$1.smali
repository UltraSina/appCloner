.class Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;
.super Ljava/lang/Thread;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;Ljava/lang/String;)V
    .registers 3

    .line 460
    iput-object p1, p0, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;->this$0:Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/applisto/appcloner/classes/FakeCamera;->access$402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 467
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v0

    .line 468
    invoke-static {v0}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->isJpeg([B)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 469
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResult; JPEG detected"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {v0}, Lcom/applisto/appcloner/classes/FakeCamera;->access$502([B)[B

    .line 471
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->normalizeImageOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/applisto/appcloner/classes/FakeCamera;->access$402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_34
    const-wide/16 v0, 0x3e8

    .line 474
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 475
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$800()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_45

    :catch_3d
    move-exception v0

    .line 478
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_45
    return-void
.end method
