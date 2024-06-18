.class public Lcom/applisto/appcloner/classes/PictureInPicture;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "PictureInPicture.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPictureInPictureKeyCode:I

.field private mPictureInPictureLongPress:Z

.field private mPictureInPictureSupport:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/applisto/appcloner/classes/PictureInPicture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "pictureInPictureSupport"

    invoke-virtual {p1, v2, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureSupport:Z

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "pictureInPictureKeyCode"

    invoke-virtual {p1, v2, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureKeyCode:I

    const-string v0, "pictureInPictureLongPress"

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureLongPress:Z

    .line 38
    sget-object p1, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureInPicture; mPictureInPictureSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPictureInPictureKeyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPictureInPictureLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureLongPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/PictureInPicture;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureKeyCode:I

    return p0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/PictureInPicture;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureLongPress:Z

    return p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/PictureInPicture;Landroid/app/Activity;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/PictureInPicture;->startPictureInPictureDelayed(Landroid/app/Activity;)V

    return-void
.end method

.method private startPictureInPicture(Landroid/app/Activity;)V
    .registers 6

    .line 104
    sget-object v0, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPictureInPicture; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enterPictureInPictureMode"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 108
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_29

    goto :goto_39

    :catchall_29
    move-exception v0

    .line 110
    sget-object v1, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const-string v1, "Failed to start picture-in-picture mode."

    .line 111
    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_39
    return-void
.end method

.method private startPictureInPictureDelayed(Landroid/app/Activity;)V
    .registers 6

    .line 98
    sget-object v0, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPictureInPictureDelayed; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io;

    invoke-direct {v1, p0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io;-><init>(Lcom/applisto/appcloner/classes/PictureInPicture;Landroid/app/Activity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public install()V
    .registers 3

    .line 45
    sget-object v0, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureSupport:Z

    if-eqz v0, :cond_15

    .line 48
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PictureInPicture;->onCreate()Z

    .line 49
    sget-object v0, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    const-string v1, "init; created"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method public synthetic lambda$startPictureInPictureDelayed$0$PictureInPicture(Landroid/app/Activity;)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/PictureInPicture;->startPictureInPicture(Landroid/app/Activity;)V

    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 6

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/PictureInPicture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mPictureInPictureSupport:Z

    if-eqz v0, :cond_26

    .line 58
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PictureInPicture;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/PictureInPicture$1;

    invoke-direct {v1, p0, p1}, Lcom/applisto/appcloner/classes/PictureInPicture$1;-><init>(Lcom/applisto/appcloner/classes/PictureInPicture;Landroid/app/Activity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    return-void
.end method
