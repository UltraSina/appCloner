.class public Lcom/applisto/appcloner/classes/ApplicationWrapper;
.super Landroid/app/Application;
.source "ApplicationWrapper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBaseApp:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/ApplicationWrapper;)Landroid/app/Application;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 28
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.applisto.appcloner.applicationClassName"

    const-string v1, "android.app.Application"

    .line 260
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createApplication; applicationClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    return-object p1
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public synthetic lambda$onCreate$0$ApplicationWrapper(Ljava/lang/reflect/Field;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$OnProvideAssistDataListener;

    .line 242
    invoke-interface {v0, p2, p3}, Landroid/app/Application$OnProvideAssistDataListener;->onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_c

    :catch_1c
    move-exception p1

    .line 245
    sget-object p2, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 279
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged; newConfig.locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 9

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 47
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.applisto.appcloner.sandboxExternalStorage"

    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 50
    sget-object v2, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate; sandboxExternalStorage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz v1, :cond_4d

    const-string v1, "com.applisto.appcloner.classes.secondary.SandboxExternalStorage"

    .line 53
    invoke-static {v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "init"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_4d
    invoke-direct {p0, v0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->createApplication(Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    .line 59
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 65
    new-instance v3, Lcom/applisto/appcloner/classes/ApplicationWrapper$1;

    invoke-direct {v3, p0, v1}, Lcom/applisto/appcloner/classes/ApplicationWrapper$1;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Landroid/content/Context;)V

    .line 71
    iget-object v1, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 79
    const-class v1, Landroid/app/Application;

    const-string v4, "mComponentCallbacks"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    new-instance v4, Lcom/applisto/appcloner/classes/ApplicationWrapper$2;

    invoke-direct {v4, p0, v1}, Lcom/applisto/appcloner/classes/ApplicationWrapper$2;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v4}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 117
    const-class v1, Landroid/app/Application;

    const-string v4, "mActivityLifecycleCallbacks"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    new-instance v4, Lcom/applisto/appcloner/classes/ApplicationWrapper$3;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/applisto/appcloner/classes/ApplicationWrapper$3;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_ae

    .line 233
    const-class v0, Landroid/app/Application;

    const-string v1, "mAssistCallbacks"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 236
    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;

    invoke-direct {v1, p0, v0}, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;-><init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v1}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->registerOnProvideAssistDataListener(Landroid/app/Application$OnProvideAssistDataListener;)V

    .line 250
    :cond_ae
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b3} :catch_b4

    return-void

    :catch_b4
    move-exception v0

    .line 253
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onLowMemory()V
    .registers 3

    .line 287
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onLowMemory; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 290
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .registers 3

    .line 270
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 273
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 5

    .line 295
    sget-object v0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory; level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 298
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper;->mBaseApp:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
