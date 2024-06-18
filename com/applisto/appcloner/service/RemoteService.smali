.class public Lcom/applisto/appcloner/service/RemoteService;
.super Landroid/app/Service;
.source "RemoteService.java"


# static fields
.field public static final INTERFACE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/applisto/appcloner/service/IRemoteService$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/applisto/appcloner/service/RemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/service/RemoteService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Lcom/applisto/appcloner/service/RemoteService$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/service/RemoteService$1;-><init>(Lcom/applisto/appcloner/service/RemoteService;)V

    iput-object v0, p0, Lcom/applisto/appcloner/service/RemoteService;->mBinder:Lcom/applisto/appcloner/service/IRemoteService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/applisto/appcloner/service/RemoteService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 32
    iget-object p1, p0, Lcom/applisto/appcloner/service/RemoteService;->mBinder:Lcom/applisto/appcloner/service/IRemoteService$Stub;

    return-object p1
.end method
