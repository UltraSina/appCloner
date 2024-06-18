.class public Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;
.super Ljava/lang/Object;
.source "LoadLibraryWorkaround.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/LoadLibraryWorkaround$Hook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sOriginalPackageName:Ljava/lang/String;

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->sOriginalPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static install(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 29
    sget-object v0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; originalPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->sPackageName:Ljava/lang/String;

    .line 32
    sput-object p1, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->sOriginalPackageName:Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 35
    const-class p0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround$Hook;

    invoke-static {p0}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 36
    sget-object p0, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->TAG:Ljava/lang/String;

    const-string p1, "install; hooks installed"

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
