.class public Lcom/applisto/appcloner/classes/FakeCamera;
.super Ljava/lang/Object;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraActivity;,
        Lcom/applisto/appcloner/classes/FakeCamera$FakeCameraReceiver;,
        Lcom/applisto/appcloner/classes/FakeCamera$Hook4;,
        Lcom/applisto/appcloner/classes/FakeCamera$Hook3;,
        Lcom/applisto/appcloner/classes/FakeCamera$Hook2;,
        Lcom/applisto/appcloner/classes/FakeCamera$Hook1;
    }
.end annotation


# static fields
.field private static final ACTION_FAKE_CAMERA_ROTATE_ANTI_CLOCKWISE:Ljava/lang/String; = "com.applisto.appcloner.action.FAKE_CAMERA_ROTATE_ANTI_CLOCKWISE"

.field private static final ACTION_FAKE_CAMERA_ROTATE_CLOCKWISE:Ljava/lang/String; = "com.applisto.appcloner.action.FAKE_CAMERA_ROTATE_CLOCKWISE"

.field private static final ACTION_FAKE_CAMERA_SELECT_CAMERA_PICTURE:Ljava/lang/String; = "com.applisto.appcloner.action.FAKE_CAMERA_SELECT_CAMERA_PICTURE"

.field private static final NOTIFICATION_ID:I = 0x212ec208

.field private static final TAG:Ljava/lang/String;

.field private static sBitmap:Landroid/graphics/Bitmap;

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sJpegBytes:[B

.field private static sPictureTakenTimestamp:J

.field private static sStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    const-class v0, Lcom/applisto/appcloner/classes/FakeCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 55
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->showNotificationDelayed()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 55
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->hideNotification()V

    return-void
.end method

.method static synthetic access$400()Landroid/graphics/Bitmap;
    .registers 1

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1

    .line 55
    sput-object p0, Lcom/applisto/appcloner/classes/FakeCamera;->sBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$500()[B
    .registers 1

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sJpegBytes:[B

    return-object v0
.end method

.method static synthetic access$502([B)[B
    .registers 1

    .line 55
    sput-object p0, Lcom/applisto/appcloner/classes/FakeCamera;->sJpegBytes:[B

    return-object p0
.end method

.method static synthetic access$600()J
    .registers 2

    .line 55
    sget-wide v0, Lcom/applisto/appcloner/classes/FakeCamera;->sPictureTakenTimestamp:J

    return-wide v0
.end method

.method static synthetic access$602(J)J
    .registers 2

    .line 55
    sput-wide p0, Lcom/applisto/appcloner/classes/FakeCamera;->sPictureTakenTimestamp:J

    return-wide p0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .registers 1

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()V
    .registers 0

    .line 55
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->showNotification()V

    return-void
.end method

.method static synthetic access$900()Ljava/util/Properties;
    .registers 1

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sStringsProperties:Ljava/util/Properties;

    return-object v0
.end method

.method private static hideNotification()V
    .registers 2

    .line 352
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->TAG:Ljava/lang/String;

    const-string v1, "hideNotification; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :try_start_7
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_20

    const v1, 0x212ec208

    .line 358
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v0

    .line 361
    sget-object v1, Lcom/applisto/appcloner/classes/FakeCamera;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public static install(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 4

    .line 75
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput-object p0, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    .line 78
    sput-object p1, Lcom/applisto/appcloner/classes/FakeCamera;->sStringsProperties:Ljava/util/Properties;

    .line 80
    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 81
    const-class p0, Lcom/applisto/appcloner/classes/FakeCamera$Hook1;

    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 82
    const-class p0, Lcom/applisto/appcloner/classes/FakeCamera$Hook2;

    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 83
    const-class p0, Lcom/applisto/appcloner/classes/FakeCamera$Hook3;

    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 84
    const-class p0, Lcom/applisto/appcloner/classes/FakeCamera$Hook4;

    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$SGuMuPS15NjagKFwg9XezCXwjVE()V
    .registers 0

    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->showNotification()V

    return-void
.end method

.method private static showNotification()V
    .registers 10

    .line 295
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->TAG:Ljava/lang/String;

    const-string v1, "showNotification; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/applisto/appcloner/classes/FakeCamera;->hideNotification()V

    .line 300
    :try_start_a
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_fc

    .line 306
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.applisto.appcloner.action.FAKE_CAMERA_SELECT_CAMERA_PICTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    sget-object v2, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    sget-object v2, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 310
    sget-object v2, Lcom/applisto/appcloner/classes/FakeCamera;->sStringsProperties:Ljava/util/Properties;

    const-string v4, "fake_camera_title"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    sget-object v4, Lcom/applisto/appcloner/classes/FakeCamera;->sBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_42

    sget-object v4, Lcom/applisto/appcloner/classes/FakeCamera;->sStringsProperties:Ljava/util/Properties;

    const-string v5, "fake_camera_use_picture_message"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4a

    :cond_42
    sget-object v4, Lcom/applisto/appcloner/classes/FakeCamera;->sStringsProperties:Ljava/util/Properties;

    const-string v5, "fake_camera_select_picture_message"

    .line 312
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    :goto_4a
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 315
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 316
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v5, 0x1

    .line 317
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v6, 0x0

    .line 318
    invoke-virtual {v1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 319
    sget-object v6, Lcom/applisto/appcloner/classes/FakeCamera;->sBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_da

    .line 320
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_da

    .line 322
    new-instance v6, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 323
    invoke-virtual {v6, v2}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    .line 324
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    sget-object v4, Lcom/applisto/appcloner/classes/FakeCamera;->sBitmap:Landroid/graphics/Bitmap;

    .line 325
    invoke-virtual {v2, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    .line 322
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 327
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_da

    .line 329
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.applisto.appcloner.action.FAKE_CAMERA_ROTATE_CLOCKWISE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    sget-object v4, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    sget-object v4, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    invoke-static {v4, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 333
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.applisto.appcloner.action.FAKE_CAMERA_ROTATE_ANTI_CLOCKWISE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    sget-object v6, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    sget-object v6, Lcom/applisto/appcloner/classes/FakeCamera;->sContext:Landroid/content/Context;

    invoke-static {v6, v3, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 337
    new-instance v6, Landroid/app/Notification$Action;

    sget-object v7, Lcom/applisto/appcloner/classes/FakeCamera;->sStringsProperties:Ljava/util/Properties;

    const-string v8, "fake_camera_rotate_right_label"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7, v2}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 338
    new-instance v2, Landroid/app/Notification$Action;

    sget-object v6, Lcom/applisto/appcloner/classes/FakeCamera;->sStringsProperties:Ljava/util/Properties;

    const-string v7, "fake_camera_rotate_left_label"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6, v4}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 343
    :cond_da
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/applisto/appcloner/classes/FakeCamera;->sPictureTakenTimestamp:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v2, v6, v8

    if-lez v2, :cond_e8

    const/4 v3, 0x1

    :cond_e8
    invoke-static {v1, v3}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;Z)V

    const v2, 0x212ec208

    .line 344
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f5} :catch_f6

    goto :goto_fc

    :catch_f6
    move-exception v0

    .line 347
    sget-object v1, Lcom/applisto/appcloner/classes/FakeCamera;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_fc
    :goto_fc
    return-void
.end method

.method private static showNotificationDelayed()V
    .registers 4

    .line 291
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCamera;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$SGuMuPS15NjagKFwg9XezCXwjVE;->INSTANCE:Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$SGuMuPS15NjagKFwg9XezCXwjVE;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
