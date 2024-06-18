.class final Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1;
.super Landroid/media/Image;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/FakeCamera$Hook4;->getImage()Landroid/media/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public getFormat()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 237
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/Image$Plane;

    .line 255
    new-instance v1, Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1$1;-><init>(Lcom/applisto/appcloner/classes/FakeCamera$Hook4$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getScalingMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 242
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$600()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransform()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 232
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$400()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
