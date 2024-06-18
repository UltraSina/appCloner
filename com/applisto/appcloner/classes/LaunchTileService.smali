.class public Lcom/applisto/appcloner/classes/LaunchTileService;
.super Landroid/service/quicksettings/TileService;
.source "LaunchTileService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/applisto/appcloner/classes/LaunchTileService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/LaunchTileService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 28
    sget-object v0, Lcom/applisto/appcloner/classes/LaunchTileService;->TAG:Ljava/lang/String;

    const-string v1, "onClick; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/LaunchTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    :try_start_b
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v1}, Lcom/applisto/appcloner/classes/LaunchTileService;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_2c

    :catch_1c
    move-exception v1

    .line 36
    sget-object v2, Lcom/applisto/appcloner/classes/LaunchTileService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    const-string v2, "Failed to launch app."

    .line 37
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2c
    return-void
.end method

.method public onStartListening()V
    .registers 3

    .line 23
    sget-object v0, Lcom/applisto/appcloner/classes/LaunchTileService;->TAG:Ljava/lang/String;

    const-string v1, "onStartListening; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
