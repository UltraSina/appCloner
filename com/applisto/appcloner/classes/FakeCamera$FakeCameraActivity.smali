.class public Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;
.super Landroid/app/Activity;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/FakeCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FakeCameraActivity"
.end annotation


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field private static final REQUEST_CODE_SELECT_PICTURE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 402
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/4 v7, 0x0

    .line 554
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_33

    if-eqz p0, :cond_2d

    .line 555
    :try_start_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 556
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 557
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_2b

    if-eqz p0, :cond_2a

    .line 561
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2a
    return-object p1

    :catchall_2b
    move-exception p1

    goto :goto_35

    :cond_2d
    if-eqz p0, :cond_32

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_32
    return-object v7

    :catchall_33
    move-exception p1

    move-object p0, v7

    :goto_35
    if-eqz p0, :cond_3a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_3a
    throw p1
.end method

.method public static getImageOrientation(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 615
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p0, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_27

    const/4 v1, 0x3

    if-eq p0, v1, :cond_22

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1d

    const/16 v1, 0x8

    if-eq p0, v1, :cond_18

    goto :goto_2f

    :cond_18
    const/16 p0, 0x10e

    const/16 v0, 0x10e

    goto :goto_2f

    :cond_1d
    const/16 p0, 0x5a

    const/16 v0, 0x5a

    goto :goto_2f

    :cond_22
    const/16 p0, 0xb4

    const/16 v0, 0xb4

    goto :goto_2f

    :catch_27
    move-exception p0

    .line 629
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2f
    return v0
.end method

.method private static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 7

    .line 499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_a2

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 501
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_44

    .line 502
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 503
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 504
    aget-object p1, p0, v4

    const-string v0, "primary"

    .line 505
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cf

    .line 506
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 510
    :cond_44
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 511
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://downloads/public_downloads"

    .line 512
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 513
    invoke-static {p0, p1, v1, v1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 516
    :cond_65
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 517
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 519
    aget-object v0, p1, v4

    const-string v2, "image"

    .line 521
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 522
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_95

    :cond_80
    const-string v2, "video"

    .line 523
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 524
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_95

    :cond_8b
    const-string v2, "audio"

    .line 525
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 526
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_95
    :goto_95
    new-array v0, v3, [Ljava/lang/String;

    .line 529
    aget-object p1, p1, v3

    aput-object p1, v0, v4

    const-string p1, "_id=?"

    .line 530
    invoke-static {p0, v1, p1, v0}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 534
    :cond_a2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 536
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 537
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 538
    :cond_b9
    invoke-static {p0, p1, v1, v1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 541
    :cond_be
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_cf

    .line 542
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_cf
    return-object v1
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 571
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 567
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isGooglePhotosUri(Landroid/net/Uri;)Z
    .registers 2

    .line 579
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isJpeg([B)Z
    .registers 6

    const/4 v0, 0x0

    .line 583
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_13

    aget-byte v1, p0, v2

    const/16 v4, -0x28

    if-ne v1, v4, :cond_13

    const/4 v1, 0x2

    aget-byte p0, p0, v1

    if-ne p0, v3, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 575
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static normalizeImageOrientation(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11

    .line 591
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->getImageOrientation(Ljava/lang/String;)I

    move-result p1

    .line 592
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizeImageOrientation; orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_46

    .line 594
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 595
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 597
    :try_start_29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_3e

    .line 599
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 600
    invoke-static {}, Ljava/lang/System;->gc()V

    return-object p1

    :catchall_3e
    move-exception p1

    .line 599
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 600
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 601
    throw p1

    :cond_46
    return-object p0
.end method

.method private onSelectPicture()V
    .registers 3

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 425
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 426
    invoke-virtual {p0, v0, v1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 448
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult; requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6f

    const/4 p1, 0x0

    .line 452
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera;->access$402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 453
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera;->access$502([B)[B

    const/4 v0, -0x1

    if-ne p2, v0, :cond_69

    .line 457
    :try_start_2d
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$700()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 458
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult; path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance p3, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;

    invoke-direct {p3, p0, p2}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;-><init>(Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p3}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity$1;->start()V
    :try_end_59
    .catchall {:try_start_2d .. :try_end_59} :catchall_5a

    goto :goto_6c

    :catchall_5a
    move-exception p2

    .line 484
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera;->access$402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 486
    invoke-static {p1}, Lcom/applisto/appcloner/classes/FakeCamera;->access$502([B)[B

    goto :goto_6c

    .line 489
    :cond_69
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$800()V

    .line 492
    :goto_6c
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->finish()V

    :cond_6f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 410
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 412
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1b

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 413
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 414
    invoke-virtual {p0, v0, v1}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 419
    :cond_1b
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->onSelectPicture()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .line 431
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult; permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", grantResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_42

    array-length p1, p3

    if-ne p1, v0, :cond_42

    const/4 p1, 0x0

    aget-object p2, p2, p1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    aget p1, p3, p1

    if-nez p1, :cond_42

    .line 437
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->onSelectPicture()V

    return-void

    .line 441
    :cond_42
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->access$900()Ljava/util/Properties;

    move-result-object p1

    const-string p2, "permission_not_granted_message"

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 443
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;->finish()V

    return-void
.end method
