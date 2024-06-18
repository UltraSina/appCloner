.class public Lcom/applisto/appcloner/classes/GmailSupport;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/GmailSupport$Hook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/GmailSupport;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/GmailSupport;->checkForDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/GmailSupport;)Landroid/os/Handler;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized checkForDialog()V
    .registers 7

    monitor-enter p0

    .line 100
    :try_start_1
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getViewRoots()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewParent;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_90
    .catchall {:try_start_1 .. :try_end_15} :catchall_8e

    .line 103
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 106
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    const v3, 0x102000b

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    .line 109
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 111
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 114
    iget-object v5, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_64

    iget-object v5, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mAppName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "Google Play"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 115
    :cond_64
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget-object v3, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForDialog; view hidden; viewRoot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_85} :catch_86
    .catchall {:try_start_15 .. :try_end_85} :catchall_8e

    goto :goto_9

    :catch_86
    move-exception v1

    .line 123
    :try_start_87
    sget-object v2, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8c} :catch_90
    .catchall {:try_start_87 .. :try_end_8c} :catchall_8e

    goto/16 :goto_9

    :catchall_8e
    move-exception v0

    goto :goto_98

    :catch_90
    move-exception v0

    .line 127
    :try_start_91
    sget-object v1, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    .line 129
    :cond_96
    monitor-exit p0

    return-void

    :goto_98
    monitor-exit p0

    goto :goto_9b

    :goto_9a
    throw v0

    :goto_9b
    goto :goto_9a
.end method

.method private installContextHook(Landroid/content/Context;)V
    .registers 7

    .line 242
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installContextHook; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_16
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v1, p1

    .line 249
    :goto_23
    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_31

    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_23

    .line 254
    :cond_31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 255
    new-instance v3, Lcom/applisto/appcloner/classes/GmailSupport$3;

    invoke-direct {v3, p0, p1, v2}, Lcom/applisto/appcloner/classes/GmailSupport$3;-><init>(Lcom/applisto/appcloner/classes/GmailSupport;Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    sget-object p1, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v0, "installed; installed context wrapper"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_44} :catch_45

    goto :goto_4b

    :catch_45
    move-exception p1

    .line 299
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4b
    return-void
.end method

.method private installMailIntentReceiverHook(Landroid/content/Context;)V
    .registers 4

    .line 304
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v1, "installMailIntentReceiverHook; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {p1}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 307
    const-class p1, Lcom/applisto/appcloner/classes/GmailSupport$Hook;

    invoke-static {p1}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 308
    sget-object p1, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v0, "installMailIntentReceiverHook; hooks installed"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private installPackageManagerHook(Landroid/content/Context;)V
    .registers 5

    .line 132
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installPackageManagerHook; context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_16
    new-instance v0, Lcom/applisto/appcloner/classes/GmailSupport$2;

    invoke-direct {v0, p0, p1}, Lcom/applisto/appcloner/classes/GmailSupport$2;-><init>(Lcom/applisto/appcloner/classes/GmailSupport;Landroid/content/Context;)V

    .line 164
    invoke-virtual {v0, p1}, Lcom/applisto/appcloner/classes/GmailSupport$2;->install(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception p1

    .line 167
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .registers 2

    const/16 v0, 0x1f4

    return v0
.end method

.method install(Landroid/content/Context;)V
    .registers 6

    .line 46
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_7
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/GmailSupport;->onCreate()Z

    .line 50
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/GmailSupport;->installPackageManagerHook(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/GmailSupport;->installMailIntentReceiverHook(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mAppName:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; mAppName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_google_play_services_unknown_issue"

    const-string v2, "string"

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mAppName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    .line 59
    sget-object p1, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install; mErrorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/GmailSupport;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_7 .. :try_end_6c} :catchall_6d

    goto :goto_73

    :catchall_6d
    move-exception p1

    .line 62
    sget-object v0, Lcom/applisto/appcloner/classes/GmailSupport;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_73
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/applisto/appcloner/classes/GmailSupport$1;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/applisto/appcloner/classes/GmailSupport$1;-><init>(Lcom/applisto/appcloner/classes/GmailSupport;Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/GmailSupport;->installContextHook(Landroid/content/Context;)V

    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/GmailSupport;->checkForDialog()V

    return-void
.end method
