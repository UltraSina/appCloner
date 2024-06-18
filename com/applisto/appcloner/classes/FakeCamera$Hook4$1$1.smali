.class Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1$1;
.super Landroid/media/Image$Plane;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1;->getPlanes()[Landroid/media/Image$Plane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1$1;->this$0:Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 5

    .line 269
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBuffer; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$500()[B

    move-result-object v0

    if-eqz v0, :cond_18

    .line 272
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$500()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 274
    :cond_18
    new-instance v0, Ljava/io/ByteArrayOutputStrean;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStrean;-><init>()V

    .line 275
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 276
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStrean;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getPixelStride()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRowStride()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
