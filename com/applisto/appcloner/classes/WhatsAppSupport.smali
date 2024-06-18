.class public Lcom/applisto/appcloner/classes/WhatsAppSupport;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "WhatsAppSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOriginalPackageName:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/applisto/appcloner/classes/WhatsAppSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/WhatsAppSupport;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mOriginalPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/WhatsAppSupport;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/WhatsAppSupport;Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->showOriginalWhatsAppRequiredMessage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private install(Landroid/content/Context;)V
    .registers 6

    .line 45
    sget-object v0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    if-nez v0, :cond_24

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    .line 54
    :cond_24
    :try_start_24
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v1, p1

    .line 57
    :goto_31
    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_3f

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_31

    .line 63
    :cond_3f
    new-instance v2, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;

    invoke-direct {v2, p0, p1, p1}, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;-><init>(Lcom/applisto/appcloner/classes/WhatsAppSupport;Landroid/content/Context;Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    sget-object p1, Lcom/applisto/appcloner/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    const-string v0, "installed; installed context wrapper"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception p1

    .line 92
    sget-object v0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_55
    return-void
.end method

.method private showOriginalWhatsAppRequiredMessage(Landroid/content/Context;)V
    .registers 6

    .line 98
    iget-object v0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$WhatsAppSupport$nQb_axsFTr5UUaDO3OsT7labUCw;

    invoke-direct {v1, p0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$WhatsAppSupport$nQb_axsFTr5UUaDO3OsT7labUCw;-><init>(Lcom/applisto/appcloner/classes/WhatsAppSupport;Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method install(Ljava/lang/String;)V
    .registers 5

    .line 32
    sget-object v0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; originalPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mOriginalPackageName:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->onCreate()Z

    return-void
.end method

.method public synthetic lambda$showOriginalWhatsAppRequiredMessage$0$WhatsAppSupport(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    const-string v0, "WhatsApp"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The original WhatsApp app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be installed during the registration process."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/applisto/appcloner/classes/Utils;->showDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p1

    .line 103
    sget-object v0, Lcom/applisto/appcloner/classes/WhatsAppSupport;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->install(Landroid/content/Context;)V

    return-void
.end method
