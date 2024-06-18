.class public Lcom/applisto/appcloner/classes/DefaultProvider;
.super Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;
.source "DefaultProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;,
        Lcom/applisto/appcloner/classes/DefaultProvider$DefaultReceiver;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0xa

.field private static final PREF_KEY_COUNT:Ljava/lang/String; = "com.applisto.appcloner.classes.DefaultProvider.count"

.field private static final PREF_KEY_ORIGINAL_INSTALL_VERSION_CODE:Ljava/lang/String; = "com.applisto.appcloner.classes.originalInstallVersionCode"

.field public static final PREF_KEY_PREFIX:Ljava/lang/String; = "com.applisto.appcloner.classes."

.field private static final PREF_KEY_PREFIX_IDENTITY_INDEX:Ljava/lang/String; = "com.applisto.appcloner.classes.identityIndex_"

.field private static final PREF_KEY_PREFIX_IDENTITY_SEED:Ljava/lang/String; = "com.applisto.appcloner.classes.identitySeed_"

.field private static final TAG:Ljava/lang/String;

.field public static sAppClonerPackageName:Ljava/lang/String;

.field public static sOriginalPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/applisto/appcloner/classes/DefaultProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 47
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/DefaultProvider;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/applisto/appcloner/classes/DefaultProvider;->sendBroadcastOnStart(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static checkMultiAccountApp(Landroid/content/Context;Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 10

    const-string v0, "com.android.vending"

    .line 1817
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1818
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMultiAccountApp; installerPackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_103

    const-string v3, "com.sec.android.app.samsungapps"

    const-string v4, "com.amazon.venezia"

    if-nez v2, :cond_62

    .line 1821
    :try_start_2e
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 1822
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "com.excelliance.multiaccount"

    .line 1824
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "com.excelliance.multiaccounts"

    .line 1826
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "com.trendmicro.tmas"

    .line 1828
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "com.trendmicro.tmas64"

    .line 1829
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "com.excean.parallelspace"

    .line 1831
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 1834
    :cond_62
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2}, Lcom/applisto/appcloner/classes/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.lbe.doubleagent.client"

    .line 1840
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_a8

    const-string v5, "com.lody.virtual.client"

    .line 1845
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "com.excelliance.kxqp.platform"

    .line 1850
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "com.trendmicro.tmmssandbox"

    .line 1852
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "com.estrongs.vbox.client"

    .line 1854
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "com.polestar.clone.client"

    .line 1858
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "com.prism.gaia.client"

    .line 1860
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a6

    goto :goto_a8

    :cond_a6
    const/4 v2, 0x0

    goto :goto_a9

    :cond_a8
    :goto_a8
    const/4 v2, 0x1

    :goto_a9
    if-nez v2, :cond_c9

    .line 1863
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    const-string v0, "com.huawei.appmarket"

    .line 1864
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1865
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 1866
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    :cond_c5
    const/4 v0, 0x2

    .line 1867
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_c9
    const-string v0, "allowInMultiAccountApps"

    .line 1870
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1871
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMultiAccountApp; multiAccountApp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", allowInMultiAccountApps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_fd

    const-string p1, "Enable the cloning option \'Allow in multi-account apps\'."

    .line 1875
    invoke-static {p0, p1, v6}, Lcom/applisto/appcloner/classes/Utils;->showNotificationMessage(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    const/4 v2, 0x0

    :cond_fd
    if-nez v2, :cond_109

    .line 1880
    invoke-static {v7}, Ljava/lang/System;->exit(I)V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_102} :catch_103

    goto :goto_109

    :catch_103
    move-exception p0

    .line 1884
    sget-object p1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_109
    :goto_109
    return-void
.end method

.method public static varargs invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2011
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.applisto.appcloner.classes.secondary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2012
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 2013
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2014
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2023
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.applisto.appcloner.classes.secondary."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2024
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1f
    const/4 v2, 0x0

    if-ge v1, v0, :cond_36

    aget-object v3, p0, v1

    .line 2025
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2026
    invoke-virtual {v3, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_36
    return-object v2
.end method

.method public static loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2006
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private sendBroadcastOnStart(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 1889
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastOnStart; componentName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :try_start_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1893
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1894
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_2c

    :catch_26
    move-exception p1

    .line 1896
    sget-object p2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2c
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .registers 40

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    const-string v9, ""

    const-string v10, "init"

    const-string v11, "NONE"

    const-string v12, "NO_CHANGE"

    const-string v13, "install"

    .line 110
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate; hostContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", context: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "io.virtualapp.XApp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 113
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v3, "onCreate; aborting for host app"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    const/4 v15, 0x0

    .line 121
    :try_start_47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4f} :catch_85

    const/16 v5, 0x80

    .line 123
    :try_start_51
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 125
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_82

    .line 126
    :try_start_57
    new-instance v5, Ljava/lang/String;

    const-string v6, "com.applisto.appcloner.originalPackageName"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_66} :catch_7c

    :try_start_66
    const-string v6, "com.applisto.appcloner.appClonerPackageName"

    .line 128
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_79

    :try_start_6c
    const-string v7, "com.applisto.appcloner.appClonerDevDevice"

    .line 129
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_72} :catch_76

    move-object/from16 v16, v2

    move v14, v7

    goto :goto_93

    :catch_76
    move-exception v0

    move-object v7, v2

    goto :goto_80

    :catch_79
    move-exception v0

    move-object v7, v2

    goto :goto_7f

    :catch_7c
    move-exception v0

    move-object v7, v2

    const/4 v5, 0x0

    :goto_7f
    const/4 v6, 0x0

    :goto_80
    move-object v2, v0

    goto :goto_8b

    :catch_82
    move-exception v0

    move-object v2, v0

    goto :goto_88

    :catch_85
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x0

    :goto_88
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 133
    :goto_8b
    sget-object v14, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v16, v7

    const/4 v14, 0x0

    :goto_93
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    const/4 v4, 0x1

    if-eqz v14, :cond_a1

    .line 137
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/applisto/appcloner/classes/Utils;->sDevDevice:Ljava/lang/Boolean;

    .line 138
    sput-boolean v4, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    .line 141
    :cond_a1
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getBuildSerial()Ljava/lang/String;

    move-result-object v2

    .line 142
    sget-object v4, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate; packageName: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originalPackageName: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appClonerPackageName: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", devDevice: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", buildSerial: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sput-object v6, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    .line 150
    sput-object v7, Lcom/applisto/appcloner/classes/DefaultProvider;->sAppClonerPackageName:Ljava/lang/String;

    .line 152
    invoke-static/range {p1 .. p1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getStringsProperties()Ljava/util/Properties;

    move-result-object v15

    const-string v2, "com.android.chrome"

    .line 157
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fa

    const-string v2, "com.chrome.beta"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    goto :goto_fa

    :cond_f8
    const/4 v2, 0x0

    goto :goto_fb

    :cond_fa
    :goto_fa
    const/4 v2, 0x1

    .line 156
    :goto_fb
    invoke-static {v2}, Lcom/applisto/appcloner/hooking/Hooking;->setUseDelayedHooking(Z)V

    if-ne v3, v8, :cond_103

    .line 163
    invoke-static {v8, v1}, Lcom/applisto/appcloner/classes/DefaultProvider;->checkMultiAccountApp(Landroid/content/Context;Lcom/applisto/appcloner/classes/CloneSettings;)V

    :cond_103
    :try_start_103
    const-string v2, "bundleAppData"

    const/16 v18, 0x0

    .line 167
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "restoreAppDataOnEveryStart"

    .line 168
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "AppData"
    :try_end_123
    .catchall {:try_start_103 .. :try_end_123} :catchall_148

    move-object/from16 v23, v7

    move/from16 v24, v14

    const/4 v7, 0x5

    :try_start_128
    new-array v14, v7, [Ljava/lang/Object;

    aput-object v8, v14, v18

    .line 170
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v14, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v14, v3

    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v14, v3

    const/4 v2, 0x4

    aput-object v15, v14, v2

    .line 169
    invoke-static {v4, v10, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_145
    .catchall {:try_start_128 .. :try_end_145} :catchall_146

    goto :goto_153

    :catchall_146
    move-exception v0

    goto :goto_14d

    :catchall_148
    move-exception v0

    move-object/from16 v23, v7

    move/from16 v24, v14

    :goto_14d
    move-object v2, v0

    .line 172
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :goto_153
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 179
    :try_start_157
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "MontserratSans.otf"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x1

    .line 178
    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object v3

    const/4 v4, 0x2

    .line 180
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAkUKNyxB+D5EkRPw+KHangPP7ZaCQFF7A0HzrsT5qQ+vOejCW2jofBcJe2auLrMdVG+sIwGzAXYPzO3PAWz70ErVPl3DfHoogawb87D5zk2M8LTVQ6FxvR43LeMIm4qvtLAomA05X7VFbusGEDsCI3B7SAIAhrsBoenvjEdUSIgtK0AKC/Bzm4/p9tXDEGHEQyR4D38YQB2jsPS6asWlzyeX6ceJTahQPjBG3pwm8g9/wt0TWdk8lLYk2LKNqQlONbmao/xOc+OB+ZrSOQehGRtDGQ9ZlrvR9hEkWDoNPe4uPEhg8ITCVHgouc/jvmHL+n2aX2XwxyquMm+D3oy3lewIDAQAB"

    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    goto :goto_1a8

    .line 182
    :cond_174
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_17a} :catch_17a

    :catch_17a
    :try_start_17a
    const-string v3, "com.applisto.appcloner.classes.DefaultProvider.count"

    const/4 v4, 0x0

    .line 187
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 188
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "com.applisto.appcloner.classes.DefaultProvider.count"

    invoke-interface {v4, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_190} :catch_1a8

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1a8

    .line 192
    :try_start_194
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/applisto/appcloner/classes/DefaultProvider$MyActivity;

    invoke-direct {v3, v8, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    .line 193
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1a3} :catch_1a4

    goto :goto_1a8

    :catch_1a4
    const/4 v3, 0x1

    .line 196
    :try_start_1a5
    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1a8} :catch_1a8

    :catch_1a8
    :cond_1a8
    :goto_1a8
    :try_start_1a8
    const-string v3, "com.applisto.appcloner.classes.originalInstallVersionCode"

    const/4 v4, 0x0

    .line 204
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 205
    sget-object v4, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCreate; originalInstallVersionCode: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1e0

    .line 207
    invoke-static/range {p2 .. p2}, Lcom/applisto/appcloner/classes/Utils;->getApplicationVersionCode(Landroid/content/Context;)I

    move-result v3

    .line 208
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "com.applisto.appcloner.classes.originalInstallVersionCode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1d8} :catch_1d9

    goto :goto_1e0

    :catch_1d9
    move-exception v0

    move-object v2, v0

    .line 211
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e0
    :goto_1e0
    const/4 v2, 0x0

    .line 214
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "hideSimOperatorInfo"

    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 215
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "newIdentity"

    invoke-virtual {v1, v7, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 216
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v2, "hideEmulator"

    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    .line 217
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate; newIdentity: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_229

    if-eqz v25, :cond_226

    goto :goto_229

    :cond_226
    move/from16 v26, v4

    goto :goto_22b

    :cond_229
    :goto_229
    const/16 v26, 0x1

    :goto_22b
    const/high16 v27, 0x3f800000  # 1.0f

    :try_start_22d
    const-string v2, "language"

    .line 224
    invoke-virtual {v1, v2, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "densityDpiScale"

    .line 225
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v4, "fontScale"

    .line 226
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 227
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26c

    cmpl-float v7, v3, v27

    if-nez v7, :cond_26c

    cmpl-float v7, v4, v27

    if-nez v7, :cond_26c

    if-eqz v26, :cond_260

    goto :goto_26c

    :cond_260
    move-object/from16 v28, v12

    move/from16 v22, v14

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v12, 0x5

    const/16 v17, 0x1

    const/16 v19, 0x4

    goto :goto_2b7

    :cond_26c
    :goto_26c
    const-string v7, "UpdateConfiguration"
    :try_end_26e
    .catchall {:try_start_22d .. :try_end_26e} :catchall_2a5

    move-object/from16 v28, v12

    move/from16 v22, v14

    const/4 v12, 0x5

    :try_start_273
    new-array v14, v12, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v14, v18
    :try_end_279
    .catchall {:try_start_273 .. :try_end_279} :catchall_2a1

    const/16 v17, 0x1

    :try_start_27b
    aput-object v2, v14, v17

    .line 231
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_281
    .catchall {:try_start_27b .. :try_end_281} :catchall_29d

    const/4 v3, 0x2

    :try_start_282
    aput-object v2, v14, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_288
    .catchall {:try_start_282 .. :try_end_288} :catchall_29b

    const/4 v4, 0x3

    :try_start_289
    aput-object v2, v14, v4

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_28f
    .catchall {:try_start_289 .. :try_end_28f} :catchall_299

    const/16 v19, 0x4

    :try_start_291
    aput-object v2, v14, v19

    invoke-static {v7, v13, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_296
    .catchall {:try_start_291 .. :try_end_296} :catchall_297

    goto :goto_2b7

    :catchall_297
    move-exception v0

    goto :goto_2b1

    :catchall_299
    move-exception v0

    goto :goto_2af

    :catchall_29b
    move-exception v0

    goto :goto_29f

    :catchall_29d
    move-exception v0

    const/4 v3, 0x2

    :goto_29f
    const/4 v4, 0x3

    goto :goto_2af

    :catchall_2a1
    move-exception v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    goto :goto_2ad

    :catchall_2a5
    move-exception v0

    move-object/from16 v28, v12

    move/from16 v22, v14

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v12, 0x5

    :goto_2ad
    const/16 v17, 0x1

    :goto_2af
    const/16 v19, 0x4

    :goto_2b1
    move-object v2, v0

    .line 234
    sget-object v7, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :goto_2b7
    new-instance v2, Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/CrashHandler;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/CrashHandler;->install(Landroid/content/Context;)V

    .line 238
    new-instance v2, Lcom/applisto/appcloner/classes/ToastFilter;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/ToastFilter;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/ToastFilter;->install(Landroid/content/Context;)V

    .line 239
    new-instance v2, Lcom/applisto/appcloner/classes/BundleFilesDirectories;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/BundleFilesDirectories;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/BundleFilesDirectories;->install(Landroid/content/Context;)V

    .line 240
    new-instance v2, Lcom/applisto/appcloner/classes/BundleObb;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/BundleObb;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/BundleObb;->install(Landroid/content/Context;)V

    .line 241
    new-instance v2, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/SetBrightnessOnStart;->install()V

    .line 242
    new-instance v2, Lcom/applisto/appcloner/classes/WifiControls;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/WifiControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/WifiControls;->install(Landroid/content/Context;)V

    .line 243
    new-instance v2, Lcom/applisto/appcloner/classes/BluetoothControls;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/BluetoothControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/BluetoothControls;->install()V

    .line 244
    new-instance v2, Lcom/applisto/appcloner/classes/InterruptionFilterControls;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/InterruptionFilterControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v15}, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->install(Ljava/util/Properties;)V

    .line 245
    new-instance v2, Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/NotificationOptions;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/NotificationOptions;->install(Landroid/content/Context;)V

    .line 246
    new-instance v2, Lcom/applisto/appcloner/classes/AutoRotateControls;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/AutoRotateControls;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/AutoRotateControls;->install()V

    .line 247
    new-instance v2, Lcom/applisto/appcloner/classes/FacebookLoginBehavior;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/FacebookLoginBehavior;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/FacebookLoginBehavior;->install()V

    .line 249
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    const-string v7, "com.tokopedia.tkpd"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32f

    .line 250
    new-instance v2, Lcom/applisto/appcloner/classes/Signatures;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/Signatures;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    const/4 v4, 0x2

    const/4 v7, 0x3

    const/4 v14, 0x4

    move-object/from16 v3, p1

    const/4 v12, 0x2

    const/4 v14, 0x1

    move-object/from16 v4, p2

    move-object/from16 v17, v23

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lcom/applisto/appcloner/classes/Signatures;->install(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_333

    :cond_32f
    move-object/from16 v17, v23

    const/4 v12, 0x2

    const/4 v14, 0x1

    .line 253
    :goto_333
    new-instance v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8, v15}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->install(Landroid/content/Context;Ljava/util/Properties;)V

    .line 254
    new-instance v2, Lcom/applisto/appcloner/classes/ShowOnLockScreen;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/ShowOnLockScreen;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/ShowOnLockScreen;->install()V

    .line 255
    new-instance v2, Lcom/applisto/appcloner/classes/PersistentApp;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/PersistentApp;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/PersistentApp;->install(Landroid/content/Context;)V

    .line 256
    new-instance v2, Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/AutoPressButtons;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/AutoPressButtons;->install()V

    .line 257
    new-instance v2, Lcom/applisto/appcloner/classes/PictureInPicture;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/PictureInPicture;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/PictureInPicture;->install()V

    .line 258
    new-instance v2, Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-direct {v2, v1}, Lcom/applisto/appcloner/classes/LogcatViewer;-><init>(Lcom/applisto/appcloner/classes/CloneSettings;)V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/LogcatViewer;->install(Landroid/content/Context;)V

    :try_start_363
    const-string v2, "longPressTimeout"

    const/4 v3, 0x0

    .line 263
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_384

    const-string v3, "LongPressTimeout"

    new-array v4, v12, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v14

    invoke-static {v3, v13, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_384
    const-string v2, "passwordProtectApp"

    const/4 v3, 0x0

    .line 269
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3a5

    const-string v2, "stealthMode"

    .line 270
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3ad

    .line 271
    :cond_3a5
    new-instance v2, Lcom/applisto/appcloner/classes/PasswordProtectApp;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/PasswordProtectApp;-><init>()V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/PasswordProtectApp;->install()V

    :cond_3ad
    const-string v2, "rotationLock"

    .line 275
    invoke-virtual {v1, v2, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LANDSCAPE"

    .line 276
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c6

    const-string v3, "PORTRAIT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c4

    goto :goto_3c6

    :cond_3c4
    const/4 v5, 0x0

    goto :goto_3d2

    :cond_3c6
    :goto_3c6
    const-string v3, "RotationLock"

    new-array v4, v12, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    aput-object v2, v4, v14

    .line 277
    invoke-static {v3, v13, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3d2
    const-string v3, "forceRotationLockUsingOverlay"

    .line 281
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_414

    const-string v3, "LANDSCAPE"

    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f2

    const-string v3, "PORTRAIT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_414

    :cond_3f2
    const-string v3, "com.applisto.appcloner.classes.secondary.ForceRotationLockUsingOverlay"

    .line 284
    invoke-static {v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 285
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v14

    invoke-virtual {v4, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v8, v5, v7

    aput-object v2, v5, v14

    .line 286
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_414
    const-string v2, "floatingApp"

    const/4 v3, 0x0

    .line 290
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v7, 0x6

    if-eqz v2, :cond_47d

    const-string v2, "statusBarColor"

    const/4 v3, 0x0

    .line 292
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "densityDpiScale"

    .line 293
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v4, "floatingAppOpacity"

    .line 294
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v5, "floatingAppNotchMargin"

    const/4 v6, 0x0

    .line 295
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v12, "floating.FloatingApp"

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v8, v14, v6

    const/4 v6, 0x1

    aput-object v2, v14, v6

    .line 297
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v14, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v14, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v14, v3

    const/4 v2, 0x5

    aput-object v15, v14, v2

    .line 296
    invoke-static {v12, v13, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47e

    :cond_47d
    const/4 v6, 0x3

    :goto_47e
    const-string v2, "multiWindowNoPause"

    const/4 v3, 0x0

    .line 301
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4ac

    const-string v2, "com.applisto.appcloner.classes.secondary.MultiWindowNoPause"

    .line 303
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v12, v5, v14

    invoke-virtual {v3, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v14

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4ac
    const-string v2, "immersiveMode"

    const/4 v3, 0x0

    .line 308
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "immersiveModeIgnoreNotch"

    .line 309
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "transparentNavigationBar"

    .line 310
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v12, "preventImmersiveMode"

    .line 311
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_4e9

    if-eqz v3, :cond_50c

    :cond_4e9
    const-string v12, "ImmersiveMode"

    const/4 v14, 0x4

    new-array v7, v14, [Ljava/lang/Object;

    .line 314
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v14, 0x0

    aput-object v2, v7, v14

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v7, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v7, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v6

    .line 313
    invoke-static {v12, v13, v7}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50c
    const-string v2, "taskerStartTaskName"

    const/4 v3, 0x0

    .line 318
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "taskerStopTaskName"

    .line 319
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_528

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_526

    goto :goto_528

    :cond_526
    const/4 v12, 0x0

    goto :goto_555

    :cond_528
    :goto_528
    const-string v3, "com.applisto.appcloner.classes.secondary.ExecuteTaskerTasks"

    .line 321
    invoke-static {v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v12, v7, v14

    const-class v12, Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v12, v7, v14

    const-class v12, Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v12, v7, v14

    invoke-virtual {v5, v10, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const/16 v16, 0x1

    aput-object v2, v7, v16

    aput-object v4, v7, v14

    .line 323
    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_555
    const-string v2, "makeDebuggable"

    .line 327
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_584

    const-string v2, "waitForDebugger"

    .line 329
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "MakeDebuggable"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v13, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_584
    const-string v2, "disableAccountsAccess"

    const/4 v3, 0x0

    .line 334
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v2, "com.insightly.droid"

    .line 335
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59e

    const/4 v4, 0x1

    :cond_59e
    if-eqz v4, :cond_5ab

    const-string v2, "DisableAccountsAccess"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 339
    invoke-static {v2, v13, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5ab
    const-string v2, "disableShareActions"

    const/4 v3, 0x0

    .line 343
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5ca

    const-string v2, "DisableShareActions"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v15, v4, v3

    .line 344
    invoke-static {v2, v13, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5ca
    const-string v2, "disableWakeLocks"

    const/4 v3, 0x0

    .line 348
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5f8

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableWakeLocks"

    .line 350
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v7, v5, v12

    invoke-virtual {v3, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 352
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f8
    const-string v2, "disableContactsAccess"

    const/4 v3, 0x0

    .line 356
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_626

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableContactsAccess"

    .line 358
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v7, v5, v12

    invoke-virtual {v3, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 360
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_626
    const-string v2, "disableCalendarAccess"

    const/4 v3, 0x0

    .line 364
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_654

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableCalendarAccess"

    .line 366
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v7, v5, v12

    invoke-virtual {v3, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 368
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_654
    const-string v2, "disableCallLogSmsAccess"

    const/4 v3, 0x0

    .line 372
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_69f

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableCallLogAccess"

    .line 375
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v7, v5, v12

    invoke-virtual {v3, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 377
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableSmsAccess"

    .line 380
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v7, v5, v12

    invoke-virtual {v3, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v12

    .line 382
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69f
    const-string v2, "deviceLockDeviceIdentifiers"

    .line 387
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6c4

    .line 388
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6c4

    const-string v3, "deviceLockCustomErrorMessage"

    .line 389
    invoke-virtual {v1, v3, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceLock"

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v15, v5, v2

    .line 390
    invoke-static {v4, v13, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d2

    :cond_6c4
    const-string v2, "ForceDeviceLock"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v15, v4, v3

    .line 392
    invoke-static {v2, v13, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d2
    .catchall {:try_start_363 .. :try_end_6d2} :catchall_28db

    :goto_6d2
    if-eqz v22, :cond_797

    .line 398
    :try_start_6d4
    invoke-static/range {p2 .. p2}, Lcom/applisto/appcloner/classes/Utils;->getAppClonerClassesPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "com.applisto.appcloner.classes.cloneTimestamp"

    const-wide/16 v4, 0x0

    .line 399
    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_6e0
    .catch Ljava/lang/Exception; {:try_start_6d4 .. :try_end_6e0} :catch_78b
    .catchall {:try_start_6d4 .. :try_end_6e0} :catchall_28db

    long-to-int v3, v2

    .line 400
    :try_start_6e1
    invoke-static/range {p2 .. p2}, Lcom/applisto/appcloner/classes/Utils;->getPublicSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.applisto.appcloner.classes.identitySeed_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.applisto.appcloner.classes.identityIndex_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_718
    .catch Ljava/lang/Exception; {:try_start_6e1 .. :try_end_718} :catch_788
    .catchall {:try_start_6e1 .. :try_end_718} :catchall_28db

    .line 403
    :try_start_718
    sget-object v4, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate; identitySeed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", identityIndex: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "newIdentityShowNotification"

    const/4 v5, 0x1

    .line 404
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_782

    const-string v4, "newIdentityClearCache"

    const/4 v5, 0x0

    .line 406
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v7, "newIdentityDeleteAppData"

    .line 407
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v12, "NewIdentity"

    const/4 v14, 0x5

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v8, v6, v5

    .line 408
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v6, v5

    const/4 v4, 0x3

    aput-object v17, v6, v4

    const/4 v4, 0x4

    aput-object v15, v6, v4

    invoke-static {v12, v13, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_782
    .catch Ljava/lang/Exception; {:try_start_718 .. :try_end_782} :catch_784
    .catchall {:try_start_718 .. :try_end_782} :catchall_28db

    :cond_782
    move v12, v3

    goto :goto_799

    :catch_784
    move-exception v0

    move v4, v2

    move-object v2, v0

    goto :goto_78f

    :catch_788
    move-exception v0

    move-object v2, v0

    goto :goto_78e

    :catch_78b
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_78e
    const/4 v4, 0x0

    .line 411
    :goto_78f
    :try_start_78f
    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v12, v3

    move v2, v4

    goto :goto_799

    :cond_797
    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_799
    const-string v3, "changeAndroidId"

    const/4 v4, 0x0

    .line 416
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v5, "changeAndroidIdSeed"

    .line 417
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "randomAndroidId"

    .line 418
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v6, "customAndroidId"

    const/4 v7, 0x0

    .line 419
    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v22, :cond_7d2

    move v5, v12

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x0

    goto :goto_7d6

    :cond_7d2
    if-eqz v25, :cond_7d6

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_7d6
    :goto_7d6
    if-eqz v3, :cond_7f4

    const-string v3, "ChangeAndroidId"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v7, v6

    .line 431
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v7, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const/4 v4, 0x3

    aput-object v14, v7, v4

    .line 430
    invoke-static {v3, v13, v7}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7f4
    const-string v3, "changeImei"

    move-object/from16 v14, v28

    .line 435
    invoke-virtual {v1, v3, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "changeImsi"

    .line 436
    invoke-virtual {v1, v4, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v22, :cond_809

    const-string v3, "RANDOM"

    const-string v4, "RANDOM"

    goto :goto_80f

    :cond_809
    if-eqz v25, :cond_80f

    const-string v3, "RANDOM"

    const-string v4, "RANDOM"

    .line 444
    :cond_80f
    :goto_80f
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_825

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_825

    if-eqz v26, :cond_81e

    goto :goto_825

    :cond_81e
    move/from16 v28, v2

    move-object/from16 v30, v10

    move-object/from16 v23, v11

    goto :goto_88b

    :cond_825
    :goto_825
    const-string v5, "changeImeiRandomizeClone"

    const/4 v6, 0x0

    .line 445
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v7, "changeImsiRandomizeClone"

    move-object/from16 v23, v11

    .line 446
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "customImei"

    .line 447
    invoke-virtual {v1, v7, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "customImsi"

    .line 448
    invoke-virtual {v1, v11, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v28, v2

    const-string v2, "ChangeImeiImsiHideSimOperatorInfo"

    move-object/from16 v30, v10

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v10, v18

    const/16 v16, 0x1

    aput-object v3, v10, v16

    .line 450
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v10, v5

    const/4 v3, 0x3

    aput-object v7, v10, v3

    const/4 v3, 0x4

    aput-object v4, v10, v3

    .line 451
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v10, v4

    const/4 v3, 0x6

    aput-object v11, v10, v3

    .line 452
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v10, v4

    const/16 v3, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v3

    .line 449
    invoke-static {v2, v13, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_88b
    const-string v2, "changeWifiMacAddress"

    .line 456
    invoke-virtual {v1, v2, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v22, :cond_895

    const-string v2, "RANDOM"

    .line 460
    :cond_895
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d8

    const-string v3, "customWifiMacAddress"

    .line 461
    invoke-virtual {v1, v3, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChangeWifiMacAddress"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    .line 463
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    .line 462
    invoke-static {v4, v13, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hideWifiInfo"

    const/4 v3, 0x0

    .line 464
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v22, :cond_8cb

    const/4 v4, 0x1

    :cond_8cb
    if-eqz v4, :cond_8d8

    const-string v2, "HideWifiInfo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 469
    invoke-static {v2, v13, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d8
    const-string v2, "changeBluetoothMacAddress"

    .line 474
    invoke-virtual {v1, v2, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v22, :cond_8e2

    const-string v2, "RANDOM"

    .line 478
    :cond_8e2
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_906

    const-string v3, "customBluetoothMacAddress"

    .line 479
    invoke-virtual {v1, v3, v9}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChangeBluetoothMacAddress"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    .line 481
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    .line 480
    invoke-static {v4, v13, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_906
    const-string v2, "spoofLocationLatitude"

    const/4 v3, 0x0

    .line 485
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v2

    const-string v4, "spoofLocationLongitude"

    .line 486
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    if-eqz v2, :cond_9c6

    if-eqz v4, :cond_9c6

    const-string v3, "spoofLocationInterval"

    const/16 v5, 0xa

    .line 488
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "SpoofLocation"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v7, v6

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x2

    aput-object v4, v7, v2

    .line 489
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    invoke-static {v5, v13, v7}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gpsJoystick"

    const/4 v3, 0x0

    .line 492
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9c6

    const-string v2, "gpsJoystickHorizontalAlignment"

    const-string v3, "LEFT"

    .line 493
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gpsJoystickVerticalAlignment"

    const-string v4, "BOTTOM"

    .line 494
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gpsJoystickSize"

    const-string v5, "MEDIUM"

    .line 495
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gpsJoystickColor"

    const v6, -0x777778

    .line 496
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "gpsJoystickOpacity"

    .line 497
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const-string v7, "gpsJoystickMaxSpeed"

    const/high16 v10, 0x3fc00000  # 1.5f

    .line 498
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v1, v7, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const-string v10, "GpsJoystick"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v11, v18

    const/16 v16, 0x1

    aput-object v2, v11, v16

    const/4 v2, 0x2

    aput-object v3, v11, v2

    const/4 v2, 0x3

    aput-object v4, v11, v2

    .line 501
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v11, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v11, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v11, v3

    const/4 v2, 0x7

    aput-object v15, v11, v2

    .line 499
    invoke-static {v10, v13, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c6
    const-string v2, "androidVersionSdk"

    const/4 v3, 0x0

    .line 506
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "androidVersionSdkInt"

    .line 507
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "androidVersionPreviewSdkInt"

    .line 508
    invoke-virtual {v1, v5, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "androidVersionCodename"

    .line 509
    invoke-virtual {v1, v6, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "androidVersionIncremental"

    .line 510
    invoke-virtual {v1, v7, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "androidVersionRelease"

    .line 511
    invoke-virtual {v1, v10, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "androidVersionBaseOs"

    .line 512
    invoke-virtual {v1, v11, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v26, v9

    const-string v9, "androidVersionSecurityPatch"

    .line 513
    invoke-virtual {v1, v9, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 515
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    move-object/from16 v31, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v15

    const-string v15, "onCreate; androidVersionSdk: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", androidVersionSdkInt: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", androidVersionPreviewSdkInt: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", androidVersionCodename: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", androidVersionIncremental: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", androidVersionRelease: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", androidVersionBaseOs: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", androidVersionSecurityPatch: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a81

    .line 527
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a81

    .line 528
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a81

    .line 529
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a81

    .line 530
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a81

    .line 531
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a81

    .line 532
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a81

    .line 533
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7c

    goto :goto_a81

    :cond_a7c
    move-object/from16 v33, v13

    move-object/from16 v13, v30

    goto :goto_af2

    :cond_a81
    :goto_a81
    const-string v3, "com.applisto.appcloner.classes.secondary.AndroidVersion"

    .line 535
    invoke-static {v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 536
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Class;

    const-class v33, Landroid/content/Context;

    const/16 v18, 0x0

    aput-object v33, v15, v18

    const-class v33, Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v33, v15, v16

    const-class v33, Ljava/lang/String;

    const/16 v21, 0x2

    aput-object v33, v15, v21

    const-class v33, Ljava/lang/String;

    const/16 v29, 0x3

    aput-object v33, v15, v29

    const-class v33, Ljava/lang/String;

    const/16 v19, 0x4

    aput-object v33, v15, v19

    const-class v33, Ljava/lang/String;

    const/16 v34, 0x5

    aput-object v33, v15, v34

    const-class v33, Ljava/lang/String;

    const/16 v20, 0x6

    aput-object v33, v15, v20

    const-class v33, Ljava/lang/String;

    const/16 v17, 0x7

    aput-object v33, v15, v17

    const/16 v33, 0x8

    const-class v34, Ljava/lang/String;

    aput-object v34, v15, v33

    move-object/from16 v33, v13

    move-object/from16 v13, v30

    invoke-virtual {v14, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/16 v15, 0x9

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v15, v18

    const/16 v16, 0x1

    aput-object v2, v15, v16

    const/4 v2, 0x2

    aput-object v4, v15, v2

    const/4 v2, 0x3

    aput-object v5, v15, v2

    const/4 v2, 0x4

    aput-object v6, v15, v2

    const/4 v2, 0x5

    aput-object v7, v15, v2

    const/4 v2, 0x6

    aput-object v10, v15, v2

    const/4 v2, 0x7

    aput-object v11, v15, v2

    const/16 v2, 0x8

    aput-object v9, v15, v2

    .line 538
    invoke-virtual {v14, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_af2
    const-string v2, "buildPropsManufacturer"

    const/4 v3, 0x0

    .line 551
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "buildPropsBrand"

    .line 552
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buildPropsModel"

    .line 553
    invoke-virtual {v1, v5, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "buildPropsProduct"

    .line 554
    invoke-virtual {v1, v6, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "buildPropsDevice"

    .line 555
    invoke-virtual {v1, v7, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "buildPropsBoard"

    .line 556
    invoke-virtual {v1, v9, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "buildPropsHardware"

    .line 557
    invoke-virtual {v1, v10, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "buildPropsBootloader"

    .line 558
    invoke-virtual {v1, v11, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "buildPropsFingerprint"

    .line 559
    invoke-virtual {v1, v14, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "randomizeBuildProps"

    move-object/from16 v30, v2

    const/4 v15, 0x0

    .line 561
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b42

    if-eqz v25, :cond_b3f

    goto :goto_b42

    :cond_b3f
    move-object/from16 v2, v30

    goto :goto_b78

    :cond_b42
    :goto_b42
    const-string v2, "buildPropsManufacturer"

    .line 563
    invoke-static {v8, v2, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buildPropsBrand"

    .line 564
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "buildPropsModel"

    .line 565
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "buildPropsProduct"

    .line 566
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "buildPropsDevice"

    .line 567
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "buildPropsBoard"

    .line 568
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "buildPropsHardware"

    .line 569
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "buildPropsBootloader"

    .line 570
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "buildPropsFingerprint"

    .line 571
    invoke-static {v8, v3, v12}, Lcom/applisto/appcloner/classes/Utils;->getPackageSeededRandomString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 574
    :goto_b78
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v12

    const-string v12, "onCreate; buildPropsManufacturer: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsBrand: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsModel: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsProduct: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsDevice: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsBoard: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsHardware: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsBootloader: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", buildPropsFingerprint: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 586
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 587
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 588
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 589
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 590
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 591
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 592
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c0a

    .line 593
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c07

    goto :goto_c0a

    :cond_c07
    move-object/from16 v9, v33

    goto :goto_c35

    :cond_c0a
    :goto_c0a
    const-string v3, "BuildProps"

    const/16 v12, 0xa

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v12, v15

    const/4 v15, 0x1

    aput-object v2, v12, v15

    const/4 v2, 0x2

    aput-object v4, v12, v2

    const/4 v2, 0x3

    aput-object v5, v12, v2

    const/4 v2, 0x4

    aput-object v6, v12, v2

    const/4 v2, 0x5

    aput-object v7, v12, v2

    const/4 v2, 0x6

    aput-object v9, v12, v2

    const/4 v2, 0x7

    aput-object v10, v12, v2

    const/16 v2, 0x8

    aput-object v11, v12, v2

    const/16 v2, 0x9

    aput-object v14, v12, v2

    move-object/from16 v9, v33

    .line 594
    invoke-static {v3, v9, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c35
    const-string v2, "httpProxy"

    const/4 v3, 0x0

    .line 608
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c8c

    const-string v2, "httpProxyHost"

    const/4 v3, 0x0

    .line 610
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "httpProxyPort"

    const/4 v4, 0x0

    .line 611
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 612
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c8c

    if-eqz v3, :cond_c8c

    const-string v4, "httpProxyUsername"

    const/4 v5, 0x0

    .line 613
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "httpProxyPassword"

    .line 614
    invoke-virtual {v1, v6, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "HttpProxy"

    const/4 v7, 0x5

    new-array v10, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v10, v7

    const/4 v7, 0x1

    aput-object v2, v10, v7

    .line 616
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v10, v3

    const/4 v2, 0x3

    aput-object v4, v10, v2

    const/4 v2, 0x4

    aput-object v6, v10, v2

    .line 615
    invoke-static {v5, v9, v10}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8c
    const-string v2, "socksProxy"

    const/4 v3, 0x0

    .line 621
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v2, 0x438

    if-eqz v4, :cond_cc9

    const-string v2, "socksProxyHost"

    const/4 v3, 0x0

    .line 627
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "socksProxyPort"

    const/4 v3, 0x0

    .line 628
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "socksProxyUsername"

    const/4 v5, 0x0

    .line 629
    invoke-virtual {v1, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "socksProxyPassword"

    .line 630
    invoke-virtual {v1, v6, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v36, v6

    move-object v6, v3

    move-object/from16 v3, v36

    goto/16 :goto_d94

    :cond_cc9
    const-string v3, "socksProxyList"

    .line 632
    invoke-virtual {v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d91

    .line 633
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_cd5
    .catchall {:try_start_78f .. :try_end_cd5} :catchall_28db

    if-nez v5, :cond_d91

    :try_start_cd7
    const-string v5, "cloneNumber"

    const/4 v6, 0x1

    .line 636
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    add-int v6, v6, v28

    .line 637
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v6, v7

    .line 638
    sget-object v7, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate; socksProxyList.size(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", cloneNumber: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", identityIndex: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v28

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 642
    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate; uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v14
    :try_end_d47
    .catch Ljava/lang/Exception; {:try_start_cd7 .. :try_end_d47} :catch_d83
    .catchall {:try_start_cd7 .. :try_end_d47} :catchall_28db

    .line 645
    :try_start_d47
    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v2
    :try_end_d4b
    .catch Ljava/lang/Exception; {:try_start_d47 .. :try_end_d4b} :catch_d7d
    .catchall {:try_start_d47 .. :try_end_d4b} :catchall_28db

    const/4 v5, -0x1

    if-ne v2, v5, :cond_d50

    const/16 v2, 0x438

    .line 649
    :cond_d50
    :try_start_d50
    invoke-virtual {v3}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d74

    const-string v5, ":"

    .line 651
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d74

    .line 652
    array-length v5, v3

    if-lez v5, :cond_d74

    const/4 v5, 0x0

    .line 653
    aget-object v6, v3, v5
    :try_end_d68
    .catch Ljava/lang/Exception; {:try_start_d50 .. :try_end_d68} :catch_d78
    .catchall {:try_start_d50 .. :try_end_d68} :catchall_28db

    .line 654
    :try_start_d68
    array-length v5, v3

    const/4 v7, 0x1

    if-le v5, v7, :cond_d6f

    .line 655
    aget-object v3, v3, v7
    :try_end_d6e
    .catch Ljava/lang/Exception; {:try_start_d68 .. :try_end_d6e} :catch_d71
    .catchall {:try_start_d68 .. :try_end_d6e} :catchall_28db

    goto :goto_d76

    :cond_d6f
    const/4 v3, 0x0

    goto :goto_d76

    :catch_d71
    move-exception v0

    move v3, v2

    goto :goto_d7b

    :cond_d74
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_d76
    const/4 v4, 0x1

    goto :goto_d94

    :catch_d78
    move-exception v0

    move v3, v2

    const/4 v6, 0x0

    :goto_d7b
    move-object v2, v0

    goto :goto_d89

    :catch_d7d
    move-exception v0

    move-object v2, v0

    const/16 v3, 0x438

    const/4 v6, 0x0

    goto :goto_d89

    :catch_d83
    move-exception v0

    move-object v2, v0

    const/16 v3, 0x438

    const/4 v6, 0x0

    const/4 v14, 0x0

    .line 661
    :goto_d89
    :try_start_d89
    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    const/4 v3, 0x0

    goto :goto_d94

    :cond_d91
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_d94
    if-eqz v4, :cond_db9

    .line 666
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_db9

    if-eqz v2, :cond_db9

    const-string v4, "SocksProxy"

    const/4 v5, 0x5

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v7, v5

    const/4 v5, 0x1

    aput-object v14, v7, v5

    .line 668
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v7, v5

    const/4 v2, 0x3

    aput-object v6, v7, v2

    const/4 v2, 0x4

    aput-object v3, v7, v2

    .line 667
    invoke-static {v4, v9, v7}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_db9
    const-string v2, "showIpInfo"

    const/4 v3, 0x0

    .line 672
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_dd8

    const-string v2, "ShowIpInfo"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 673
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dd8
    const-string v2, "disableAllNetworking"

    const/4 v3, 0x0

    .line 677
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e20

    const-string v2, "disableAllNetworkingDisableDelay"

    .line 679
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "disableAllNetworkingEnableDelay"

    .line 680
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "DisableAllNetworking"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v8, v7, v3

    .line 681
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v7, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v7, v3

    const/4 v2, 0x3

    aput-object v32, v7, v2

    invoke-static {v5, v9, v7}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e20
    const-string v2, "disableBackgroundNetworking"

    const/4 v3, 0x0

    .line 685
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e4e

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableBackgroundNetworking"

    .line 687
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 688
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v7

    .line 689
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e4e
    const-string v2, "disableNetworkingWhenScreenOff"

    const/4 v3, 0x0

    .line 693
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e6d

    const-string v2, "DisableNetworkingWhenScreenOff"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 694
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e6d
    const-string v2, "disableNetworkingWithoutVpn"

    const/4 v3, 0x0

    .line 698
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e8c

    const-string v2, "DisableNetworkingWithoutVpn"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 699
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e8c
    const-string v2, "disableMobileData"

    const/4 v3, 0x0

    .line 703
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_eab

    const-string v2, "DisableMobileData"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 705
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_eab
    const-string v2, "disableInAppSearch"

    const/4 v3, 0x0

    .line 709
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v2, "com.contextlogic.wish"

    .line 710
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec5

    const/4 v4, 0x1

    :cond_ec5
    if-eqz v4, :cond_ee4

    const-string v2, "com.applisto.appcloner.classes.secondary.DisableInAppSearch"

    .line 714
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v7

    .line 716
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ee4
    const-string v2, "makeWatchApp"

    const/4 v3, 0x0

    .line 720
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f12

    const-string v2, "com.applisto.appcloner.classes.secondary.NullSearchManager"

    .line 722
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 723
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v7

    .line 724
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f12
    const-string v2, "activityTransitions"

    move-object/from16 v10, v31

    .line 728
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2b

    const-string v2, "ActivityTransitions"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 729
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f2b
    const-string v2, "longPressBackAction"

    move-object/from16 v3, v23

    .line 733
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f4e

    const-string v4, "longPressBackActionParam"

    const/4 v5, 0x0

    .line 735
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LongPressBackAction"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/4 v2, 0x1

    aput-object v4, v7, v2

    .line 736
    invoke-static {v5, v9, v7}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f4e
    const-string v2, "longPressBackForOptionsMenu"

    const/4 v4, 0x0

    .line 742
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f70

    const-string v2, "LongPressBackAction"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v4, "OPEN_OPTIONS_MENU"

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 743
    invoke-static {v2, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f70
    const-string v2, "shakeAction"

    .line 749
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f9f

    const-string v4, "shakeActionParam"

    const/4 v5, 0x0

    .line 751
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shakeSensitivity"

    const-string v6, "NORMAL"

    .line 752
    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ShakeAction"

    const/4 v7, 0x4

    new-array v11, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v11, v7

    const/4 v7, 0x1

    aput-object v2, v11, v7

    const/4 v2, 0x2

    aput-object v4, v11, v2

    const/4 v2, 0x3

    aput-object v5, v11, v2

    .line 753
    invoke-static {v6, v9, v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f9f
    const-string v2, "backAlwaysFinishes"

    const/4 v4, 0x0

    .line 759
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_fb7

    const-string v2, "BackAlwaysFinishes"

    new-array v5, v4, [Ljava/lang/Object;

    .line 760
    invoke-static {v2, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fb7
    const-string v2, "fingerprintTapAction"

    .line 764
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "fingerprintLongTapAction"

    .line 765
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 766
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fcf

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ff3

    :cond_fcf
    const-string v5, "fingerprintTapActionParam"

    const/4 v6, 0x0

    .line 767
    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "fingerprintLongTapActionParam"

    .line 769
    invoke-virtual {v1, v7, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "FingerprintTapAction"

    const/4 v11, 0x5

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v12, v11

    const/4 v11, 0x1

    aput-object v2, v12, v11

    const/4 v2, 0x2

    aput-object v5, v12, v2

    const/4 v2, 0x3

    aput-object v4, v12, v2

    const/4 v2, 0x4

    aput-object v7, v12, v2

    .line 771
    invoke-static {v6, v9, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ff3
    const-string v2, "volumeUpKeyAction"

    .line 779
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "volumeDownKeyAction"

    .line 780
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "volumeUpDownKeyAction"

    .line 781
    invoke-virtual {v1, v5, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 782
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101b

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101b

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1018

    goto :goto_101b

    :cond_1018
    move-object/from16 v23, v14

    goto :goto_104a

    :cond_101b
    :goto_101b
    const-string v6, "volumeUpKeyActionParam"

    const/4 v7, 0x0

    .line 783
    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "volumeDownKeyActionParam"

    .line 785
    invoke-virtual {v1, v11, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "volumeUpDownKeyActionParam"

    .line 787
    invoke-virtual {v1, v12, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "VolumeUpDownKeyAction"

    move-object/from16 v23, v14

    const/4 v15, 0x6

    new-array v14, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v2, 0x1

    aput-object v6, v14, v2

    const/4 v2, 0x2

    aput-object v4, v14, v2

    const/4 v2, 0x3

    aput-object v11, v14, v2

    const/4 v2, 0x4

    aput-object v5, v14, v2

    const/4 v2, 0x5

    aput-object v12, v14, v2

    .line 789
    invoke-static {v7, v9, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_104a
    const-string v2, "SecurityExceptionWorkaround"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    .line 797
    invoke-static {v2, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CordovaAntiTamperingPluginWorkaround"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v6

    .line 800
    invoke-static {v2, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/applisto/appcloner/classes/LoadLibraryWorkaround;->install(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "googlePlayServicesWorkaround"

    .line 806
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v2, "com.fiverr.fiverr"

    .line 807
    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a3

    const-string v2, "com.instagram.android"

    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    .line 808
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a3

    const-string v2, "com.viber.voip"

    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    .line 809
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a3

    const-string v2, "com.waze"

    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    .line 810
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a3

    const-string v2, "com.amazon.mShop.android"

    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    .line 811
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a4

    :cond_10a3
    const/4 v4, 0x1

    :cond_10a4
    if-eqz v4, :cond_10b1

    const-string v2, "GooglePlayServicesWorkaround"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    .line 816
    invoke-static {v2, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10b1
    const-string v2, "hideGooglePlayServices"

    const/4 v4, 0x0

    .line 820
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10df

    const-string v2, "com.applisto.appcloner.classes.secondary.HideGooglePlayServices"

    .line 822
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 823
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v7, v6, v11

    invoke-virtual {v4, v13, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v8, v6, v11

    .line 824
    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10df
    const-string v2, "welcomeMessageHtml"

    const/4 v4, 0x0

    .line 828
    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "remoteWelcomeMessageUrl"

    .line 829
    invoke-virtual {v1, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 830
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10f8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_115a

    :cond_10f8
    const-string v4, "welcomeMessageMode"

    const-string v6, "DIALOG"

    .line 831
    invoke-virtual {v1, v4, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "welcomeMessageShowDialogAlways"

    const/4 v7, 0x0

    .line 832
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v11, "remoteWelcomeMessageBlock"

    .line 833
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v11, "welcomeMessageDelay"

    const/16 v12, 0x7d0

    .line 834
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "WelcomeMessage"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const/4 v2, 0x2

    aput-object v5, v14, v2

    const/4 v2, 0x3

    aput-object v4, v14, v2

    .line 836
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v14, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v14, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v14, v4

    const/4 v2, 0x7

    aput-object v32, v14, v2

    .line 835
    invoke-static {v12, v9, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_115a
    const-string v2, "incognitoMode"

    const/4 v4, 0x0

    .line 840
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string v2, "autoIncognitoMode"

    .line 841
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v11, :cond_118e

    const-string v2, "IncognitoMode"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    .line 843
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    aput-object v32, v5, v4

    invoke-static {v2, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_118e
    const-string v2, "volumeRockerLocker"

    .line 847
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 848
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11bf

    const-string v4, "com.applisto.appcloner.classes.secondary.VolumeRockerLocker"

    .line 849
    invoke-static {v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 850
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v14, 0x0

    aput-object v6, v7, v14

    const-class v6, Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v6, v7, v15

    invoke-virtual {v5, v13, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v8, v7, v14

    aput-object v2, v7, v15

    .line 851
    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11bf
    const-string v4, "floatingBackButton"

    const/4 v5, 0x0

    .line 855
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_128b

    const-string v4, "floatingBackButtonSize"

    const-string v5, "MEDIUM"

    .line 857
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "floatingBackButtonLongPressAction"

    .line 858
    invoke-virtual {v1, v5, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "floatingBackButtonDoubleBackTap"

    const/4 v7, 0x0

    .line 859
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v1, v6, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v14, "floatingBackButtonPositionPerScreen"

    .line 860
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v14, "floatingBackButtonColor"

    const v15, -0x777778

    .line 861
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "floatingBackButtonOpacity"

    const/high16 v28, 0x3f000000  # 0.5f

    move/from16 v31, v12

    .line 862
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v1, v15, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const-string v15, "com.applisto.appcloner.classes.secondary.FloatingBackButton"

    .line 863
    invoke-static {v15}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    move/from16 v28, v11

    .line 864
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v33, v2

    move-object/from16 v34, v3

    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/16 v18, 0x0

    aput-object v2, v3, v18

    const-class v2, Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v2, v3, v16

    const-class v2, Ljava/lang/String;

    const/16 v21, 0x2

    aput-object v2, v3, v21

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x3

    aput-object v2, v3, v29

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x4

    aput-object v2, v3, v19

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x5

    aput-object v2, v3, v35

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x6

    aput-object v2, v3, v20

    invoke-virtual {v11, v13, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x7

    new-array v11, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v11, v3

    const/4 v3, 0x1

    aput-object v4, v11, v3

    const/4 v3, 0x2

    aput-object v5, v11, v3

    .line 866
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v11, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v11, v4

    .line 867
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v11, v4

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v11, v4

    .line 865
    invoke-virtual {v2, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1293

    :cond_128b
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move/from16 v28, v11

    move/from16 v31, v12

    :goto_1293
    const-string v2, "joystickPointer"

    const/4 v3, 0x0

    .line 871
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1361

    const-string v2, "joystickPointerSize"

    const-string v3, "MEDIUM"

    .line 873
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "joystickPointerColor"

    const v4, -0x777778

    .line 874
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "joystickPointerOpacity"

    .line 875
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v5, "joystickPointerToggleKeyCode"

    const/4 v6, 0x0

    .line 876
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "joystickPointerToggleLongPress"

    .line 877
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "joystickPointerShowInitially"

    const/4 v11, 0x1

    .line 878
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v11, "com.applisto.appcloner.classes.secondary.JoystickPointer"

    .line 879
    invoke-static {v11}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 880
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/4 v14, 0x7

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/16 v18, 0x0

    aput-object v14, v15, v18

    const-class v14, Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v14, v15, v16

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x2

    aput-object v14, v15, v21

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v29, 0x3

    aput-object v14, v15, v29

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x4

    aput-object v14, v15, v19

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v35, 0x5

    aput-object v14, v15, v35

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x6

    aput-object v14, v15, v20

    invoke-virtual {v12, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v14, 0x7

    new-array v15, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v15, v14

    const/4 v14, 0x1

    aput-object v2, v15, v14

    .line 883
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v15, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v15, v3

    .line 884
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v15, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v15, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v15, v3

    .line 882
    invoke-virtual {v12, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1361
    const-string v2, "showTouches"

    const/4 v3, 0x0

    .line 888
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_138f

    const-string v2, "com.applisto.appcloner.classes.secondary.ShowTouches"

    .line 889
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 890
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_138f
    const-string v2, "localBroadcastsServices"

    const/4 v3, 0x0

    .line 894
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13b0

    const-string v2, "LocalBroadcastsServices"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 895
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13b0
    const-string v2, "localActivities"

    const/4 v3, 0x0

    .line 899
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13d1

    const-string v2, "LocalActivities"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 900
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13d1
    const-string v2, "showAppInfoNotification"

    const/4 v3, 0x0

    .line 904
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13f0

    const-string v2, "ShowAppInfoNotification"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 905
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13f0
    const-string v2, "pictureInPictureNotification"

    const/4 v3, 0x0

    .line 909
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_140f

    const-string v2, "PictureInPictureNotification"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 910
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_140f
    const-string v2, "hidePasswordCharacters"

    const/4 v3, 0x0

    .line 914
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_143d

    const-string v2, "com.applisto.appcloner.classes.secondary.HidePasswordCharacters"

    .line 915
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 916
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_143d
    const-string v2, "incognitoKeyboard"

    const/4 v3, 0x0

    .line 920
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1459

    const-string v2, "IncognitoKeyboard"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 921
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1459
    const-string v2, "makeDebuggable"

    const/4 v3, 0x0

    .line 925
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1499

    const-string v2, "debugUtils"

    .line 926
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1499

    const-string v2, "autoStartProfiling"

    .line 927
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "DebugUtils"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v8, v6, v3

    .line 928
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1499
    const-string v2, "noBackgroundServices"

    const/4 v3, 0x0

    .line 932
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14b8

    const-string v2, "NoBackgroundServices"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 933
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14b8
    const-string v2, "disableLogcatLogging"

    const/4 v3, 0x0

    .line 937
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14d4

    const-string v2, "DisableLogcatLogging"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 938
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14d4
    const-string v2, "flushLogcatBufferOnExit"

    const/4 v3, 0x0

    .line 942
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14f0

    const-string v2, "FlushLogcatBufferOnExit"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v32, v4, v3

    .line 943
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14f0
    const-string v2, "logGetPackageName"

    const/4 v3, 0x0

    .line 947
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_150a

    if-eqz v24, :cond_150a

    const-string v2, "LogGetPackageNameHook"

    new-array v4, v3, [Ljava/lang/Object;

    .line 948
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_150a
    const-string v2, "statusBarColor"

    const/4 v3, 0x0

    .line 952
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "navigationBarColor"

    .line 953
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    const-string v3, "navigationBarColorUseStatusBarColor"

    const/4 v5, 0x0

    .line 954
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1529

    move-object v4, v2

    :cond_1529
    if-nez v2, :cond_152d

    if-eqz v4, :cond_153b

    :cond_152d
    const-string v3, "StatusNavigationBarColor"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    const/4 v5, 0x1

    aput-object v4, v6, v5

    .line 958
    invoke-static {v3, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_153b
    const-string v3, "toolbarColor"

    const/4 v4, 0x0

    .line 962
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "toolbarColorUseStatusBarColor"

    const/4 v5, 0x0

    .line 963
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1554

    goto :goto_1555

    :cond_1554
    move-object v2, v3

    :goto_1555
    if-eqz v2, :cond_1562

    const-string v3, "ToolbarColor"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 967
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1562
    const-string v2, "muteOnStart"

    const/4 v3, 0x0

    .line 971
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_157e

    const-string v2, "MuteOnStart"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v32, v4, v3

    .line 972
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_157e
    const-string v2, "muteWhileInForeground"

    const/4 v3, 0x0

    .line 976
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_159a

    const-string v2, "MuteWhileInForeground"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v32, v4, v3

    .line 977
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_159a
    const-string v2, "allowTextSelection"

    const/4 v3, 0x0

    .line 981
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "longPressToCopyText"

    .line 982
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "allowSharingImages"

    .line 983
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_15cb

    if-nez v4, :cond_15cb

    if-eqz v3, :cond_1637

    :cond_15cb
    const-string v5, "saveImagesToGallery"

    const/4 v6, 0x0

    .line 985
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v7, "saveImagesToGalleryMaxWidth"

    .line 986
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v7, v11}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v11, "saveImagesToGalleryMaxHeight"

    .line 987
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v11, "saveImagesToGalleryScaleType"

    const-string v12, "CENTER_CROP"

    .line 988
    invoke-virtual {v1, v11, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "AllowTextSelectionSharingImages"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    .line 990
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v15, 0x0

    aput-object v2, v14, v15

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v14, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v14, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v14, v3

    .line 991
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v14, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v14, v3

    const/4 v2, 0x6

    aput-object v11, v14, v2

    const/4 v2, 0x7

    aput-object v32, v14, v2

    .line 989
    invoke-static {v12, v9, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1637
    const-string v2, "keepScreenOn"

    const/4 v3, 0x0

    .line 995
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_164f

    const-string v2, "KeepScreenOn"

    new-array v4, v3, [Ljava/lang/Object;

    .line 996
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_164f
    const-string v2, "exitAppOnScreenOff"

    const/4 v3, 0x0

    .line 1000
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_167d

    const-string v2, "exitAppOnScreenOffDelaySeconds"

    .line 1001
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "ExitAppOnScreenOff"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 1002
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v5, v4

    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_167d
    const-string v2, "requestAllPermissions"

    const/4 v3, 0x0

    .line 1006
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1695

    const-string v2, "RequestAllPermissions"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1007
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1695
    const-string v2, "allowScreenshots"

    const/4 v3, 0x0

    .line 1011
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "preventScreenshots"

    .line 1012
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_16b6

    if-eqz v3, :cond_16cf

    :cond_16b6
    const-string v4, "AllowPreventScreenshots"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    .line 1015
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v6, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    .line 1014
    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16cf
    const-string v2, "changeWebViewUserAgent"

    .line 1019
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "webViewSafeBrowsing"

    const/4 v4, 0x0

    .line 1020
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 1021
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16e4

    if-eqz v3, :cond_1706

    :cond_16e4
    const-string v4, "customWebViewUserAgent"

    const/4 v5, 0x0

    .line 1022
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WebViewHooks"

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v7, v6

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x2

    aput-object v4, v7, v2

    .line 1024
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v7, v4

    const/4 v2, 0x4

    aput-object v3, v7, v2

    .line 1023
    invoke-static {v5, v9, v7}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1706
    const-string v2, "clearCacheWhenNotUsed"

    const/4 v3, 0x0

    .line 1028
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1715
    .catchall {:try_start_d89 .. :try_end_1715} :catchall_28db

    if-eqz v2, :cond_174c

    :try_start_1717
    const-string v2, "clearCacheWhenNotUsedValue"

    const/4 v3, 0x3

    .line 1030
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "clearCacheWhenNotUsedTimeUnit"

    const-string v4, "DAYS"

    .line 1031
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v3

    const-string v4, "ClearCacheWhenNotUsed"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 1033
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v6, v5

    const/4 v2, 0x1

    aput-object v3, v6, v2

    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1744
    .catch Ljava/lang/Exception; {:try_start_1717 .. :try_end_1744} :catch_1745
    .catchall {:try_start_1717 .. :try_end_1744} :catchall_28db

    goto :goto_174c

    :catch_1745
    move-exception v0

    move-object v2, v0

    .line 1035
    :try_start_1747
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_174c
    .catchall {:try_start_1747 .. :try_end_174c} :catchall_28db

    :cond_174c
    :goto_174c
    :try_start_174c
    const-string v2, "com.amazon.mas.kiwi.util.ApkHelpers"

    .line 1041
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "AmazonAppstoreWorkaround"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1042
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_175c
    .catchall {:try_start_174c .. :try_end_175c} :catchall_175c

    :catchall_175c
    :try_start_175c
    const-string v2, "BrazeAppboyWorkaround"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1047
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "FabricWorkaround"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v3

    const/4 v4, 0x1

    aput-object v32, v5, v4

    .line 1050
    invoke-static {v2, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "removeLauncherIcon"

    .line 1053
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1797

    const-string v2, "removeLauncherIconShortcuts"

    .line 1054
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1795

    goto :goto_1797

    :cond_1795
    const/4 v3, 0x0

    goto :goto_17a2

    :cond_1797
    :goto_1797
    const-string v2, "RemoveLauncherIconShortcuts"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1055
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17a2
    const-string v2, "bringAppToFrontNotification"

    .line 1059
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17c0

    const-string v2, "BringAppToFrontNotification"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v32, v4, v3

    .line 1060
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17c0
    const-string v2, "penDetachedEventAction"

    move-object/from16 v3, v34

    .line 1064
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "penInsertedEventAction"

    .line 1065
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXIT_APP"

    .line 1066
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17de

    const-string v2, "EXIT_APP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17e1

    .line 1067
    :cond_17de
    invoke-static {}, Lcom/applisto/appcloner/classes/PenEventReceiver;->install()V

    :cond_17e1
    const-string v2, "powerConnectedEventAction"

    .line 1071
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "powerDisconnectedEventAction"

    .line 1072
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "EXIT_APP"

    .line 1073
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17fd

    const-string v2, "EXIT_APP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1800

    .line 1074
    :cond_17fd
    invoke-static {}, Lcom/applisto/appcloner/classes/PowerEventReceiver;->install()V

    :cond_1800
    const-string v2, "headphonesPluggedEventAction"

    .line 1078
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "headphonesUnpluggedEventAction"

    .line 1079
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1080
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1818

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_181b

    .line 1081
    :cond_1818
    invoke-static/range {p2 .. p2}, Lcom/applisto/appcloner/classes/HeadphonesEventReceiver;->install(Landroid/content/Context;)V

    :cond_181b
    const-string v2, "disableCameras"

    const/4 v3, 0x0

    .line 1085
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1837

    .line 1086
    new-instance v2, Lcom/applisto/appcloner/classes/DisableCameras;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/DisableCameras;-><init>()V

    move-object/from16 v11, v32

    invoke-virtual {v2, v11}, Lcom/applisto/appcloner/classes/DisableCameras;->install(Ljava/util/Properties;)V

    goto :goto_1839

    :cond_1837
    move-object/from16 v11, v32

    :goto_1839
    const-string v2, "muteMic"

    const/4 v3, 0x0

    .line 1090
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1855

    const-string v2, "MuteMic"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v4, v3

    .line 1091
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1855
    const-string v2, "disableAutoFill"

    const/4 v3, 0x0

    .line 1095
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_186d

    const-string v2, "DisableAutoFill"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1096
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_186d
    const-string v2, "disablePermissionPrompts"

    const/4 v3, 0x0

    .line 1100
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1889

    const-string v2, "DisablePermissionPrompts"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1101
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1889
    const-string v2, "requestIgnoreBatteryOptimizations"

    const/4 v3, 0x0

    .line 1105
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18a1

    const-string v2, "RequestIgnoreBatteryOptimizations"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1106
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18a1
    const-string v2, "trustAllCertificates"

    const/4 v3, 0x0

    .line 1110
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18bd

    const-string v2, "TrustAllCertificates"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1111
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18bd
    const-string v2, "fakeCalculator"

    const/4 v3, 0x0

    .line 1115
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18d6

    .line 1116
    new-instance v2, Lcom/applisto/appcloner/classes/FakeCalculator;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/FakeCalculator;-><init>()V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/FakeCalculator;->install()V

    :cond_18d6
    const-string v2, "hideNotch"

    const/4 v3, 0x0

    .line 1120
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18ee

    const-string v2, "HideNotch"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1121
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18ee
    const-string v2, "appValidFrom"

    const-wide/16 v3, 0x0

    .line 1125
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "appValidUntil"

    const-wide/16 v5, 0x0

    .line 1126
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v12, v2, v6

    if-nez v12, :cond_191a

    const-wide/16 v6, 0x0

    cmp-long v12, v4, v6

    if-eqz v12, :cond_1946

    :cond_191a
    const-string v6, "appValidFromErrorMessage"

    const/4 v7, 0x0

    .line 1128
    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "appValidUntilErrorMessage"

    .line 1129
    invoke-virtual {v1, v12, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v7, "AppValidity"

    const/4 v14, 0x5

    new-array v15, v14, [Ljava/lang/Object;

    .line 1131
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v15, v3

    const/4 v2, 0x1

    aput-object v6, v15, v2

    .line 1132
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v15, v3

    const/4 v2, 0x3

    aput-object v12, v15, v2

    const/4 v2, 0x4

    aput-object v11, v15, v2

    .line 1130
    invoke-static {v7, v9, v15}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1946
    const-string v2, "accessibleDataDirectory"

    const/4 v3, 0x0

    .line 1137
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1962

    const-string v2, "AccessibleDataDirectory"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1138
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1962
    const-string v2, "dataDirectoryFtpServer"

    const/4 v3, 0x0

    .line 1142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_197b

    .line 1143
    new-instance v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;-><init>()V

    invoke-virtual {v2, v11}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->install(Ljava/util/Properties;)V

    .line 1146
    :cond_197b
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->allowHiddenApiAccess()V

    const-string v2, "hostsBlocker"

    const/4 v3, 0x0

    .line 1149
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19b1

    const-string v2, "blockByDefault"

    .line 1150
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "hostsBlockerAllowAllOtherHosts"

    .line 1151
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v14, v23

    .line 1152
    invoke-static {v8, v2, v14, v3, v11}, Lcom/applisto/appcloner/classes/HostsBlocker;->install(Landroid/content/Context;ZLjava/lang/String;ZLjava/util/Properties;)V

    goto :goto_19b3

    :cond_19b1
    move-object/from16 v14, v23

    :goto_19b3
    const-string v2, "mappedHosts"

    .line 1156
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_19d3

    .line 1157
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19d3

    const-string v3, "hostMapperSilent"

    const/4 v4, 0x0

    .line 1158
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1159
    invoke-static {v8, v2, v3, v14, v11}, Lcom/applisto/appcloner/classes/HostMapper;->install(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/util/Properties;)V

    :cond_19d3
    const-string v2, "overrideSharedPreferences"

    .line 1163
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_19ef

    .line 1164
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19ef

    const-string v3, "OverrideSharedPreferences"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1165
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19ef
    const-string v2, "enableTvVersion"

    const/4 v3, 0x0

    .line 1169
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a0b

    const-string v2, "EnableTvVersion"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1170
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a0b
    const-string v2, "hideRoot"

    const/4 v3, 0x0

    .line 1174
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a27

    const-string v2, "HideRoot"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1175
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a27
    const-string v2, "hideOtherApps"

    .line 1179
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a43

    .line 1180
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a43

    const-string v3, "HideOtherApps"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1181
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a43
    const-string v2, "hideAllInstalledApps"

    const/4 v3, 0x0

    .line 1185
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a63

    const-string v2, "HideOtherApps"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 1186
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a63
    const-string v2, "disablePhotoMediaAccess"

    const/4 v3, 0x0

    .line 1190
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a7b

    const-string v2, "DisablePhotoMediaAccess"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1191
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a7b
    const-string v2, "fileAccessMonitor"

    const/4 v3, 0x0

    .line 1195
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a8f

    .line 1196
    invoke-static {}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->install()V

    :cond_1a8f
    const-string v2, "dismissableDialogs"

    const/4 v3, 0x0

    .line 1200
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1aa6

    const-string v3, "DismissableDialogs"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1202
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1aa6
    const-string v2, "volumeControlIndicator"

    .line 1206
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1207
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1adc

    const-string v3, "volumeControlIndicatorStep"

    const/4 v4, 0x1

    .line 1208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "VolumeControlIndicator"

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v2, v6, v5

    .line 1210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    const/4 v2, 0x3

    aput-object v33, v6, v2

    const/4 v2, 0x4

    aput-object v11, v6, v2

    .line 1209
    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1adc
    const-string v2, "screenTextReplacements"

    .line 1214
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getMapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1af5

    .line 1215
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1af5

    const-string v3, "ReplaceTextOnScreen"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 1216
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1af5
    const-string v2, "viewModifications"

    .line 1220
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getMapList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b0e

    .line 1221
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1b0e

    const-string v3, "ModifyViews"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 1222
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b0e
    const-string v2, "disableNestedScrolling"

    const/4 v3, 0x0

    .line 1226
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b26

    const-string v2, "DisableNestedScrolling"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1227
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b26
    const-string v2, "sendBroadcastOnStart"

    const/4 v3, 0x0

    .line 1231
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "processName"

    .line 1233
    invoke-virtual {v1, v4, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1b37
    .catchall {:try_start_175c .. :try_end_1b37} :catchall_28db

    if-nez v3, :cond_1b56

    .line 1235
    :try_start_1b39
    new-instance v3, Lcom/applisto/appcloner/classes/DefaultProvider$1;

    const-string v4, "ContextClassLoaderThread"
    :try_end_1b3d
    .catchall {:try_start_1b39 .. :try_end_1b3d} :catchall_1b51

    move-object/from16 v12, p0

    :try_start_1b3f
    invoke-direct {v3, v12, v4, v2, v8}, Lcom/applisto/appcloner/classes/DefaultProvider$1;-><init>(Lcom/applisto/appcloner/classes/DefaultProvider;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 1255
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1b61

    :catchall_1b51
    move-exception v0

    move-object/from16 v12, p0

    goto/16 :goto_28dc

    :cond_1b56
    move-object/from16 v12, p0

    .line 1258
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b61

    .line 1259
    invoke-direct {v12, v8, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->sendBroadcastOnStart(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1b61
    :goto_1b61
    const-string v2, "fakeDateYear"

    const/4 v3, 0x0

    .line 1264
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "fakeDateMonth"

    .line 1265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "fakeDateDay"

    .line 1266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "fakeTimeHour"

    const/4 v6, 0x0

    .line 1267
    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "fakeTimeMinute"

    .line 1268
    invoke-virtual {v1, v7, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    const-string v6, "freezeTime"

    const/4 v14, 0x0

    .line 1269
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v1, v6, v15}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v2, :cond_1bae

    if-eqz v4, :cond_1bae

    if-nez v3, :cond_1bb4

    :cond_1bae
    if-eqz v5, :cond_1bb2

    if-nez v7, :cond_1bb4

    :cond_1bb2
    if-eqz v6, :cond_1be9

    :cond_1bb4
    const-string v14, "FakeDateTime"

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v15, v18

    .line 1271
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v15, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v15, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v15, v3

    const/4 v2, 0x4

    aput-object v5, v15, v2

    const/4 v2, 0x5

    aput-object v7, v15, v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v15, v7

    const/16 v17, 0x7

    aput-object v11, v15, v17

    invoke-static {v14, v9, v15}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bec

    :cond_1be9
    const/4 v7, 0x6

    const/16 v17, 0x7

    :goto_1bec
    const-string v2, "disableChromecastButton"

    const/4 v3, 0x0

    .line 1275
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c08

    const-string v2, "DisableChromecastButton"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1276
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c08
    const-string v2, "ignoreCrashes"

    const/4 v3, 0x0

    .line 1280
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c24

    const-string v2, "IgnoreCrashes"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1281
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c24
    const-string v2, "fakeCamera"

    const/4 v3, 0x0

    .line 1285
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c38

    .line 1286
    invoke-static {v8, v11}, Lcom/applisto/appcloner/classes/FakeCamera;->install(Landroid/content/Context;Ljava/util/Properties;)V

    :cond_1c38
    const-string v2, "audioPlaybackCapture"

    .line 1290
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c4f

    const-string v2, "AudioPlaybackCapture"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1291
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c4f
    const-string v2, "keyboardAdjust"

    .line 1295
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1296
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c66

    const-string v3, "KeyboardAdjust"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 1297
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c66
    const-string v2, "inAppFloatingKeyboard"

    const/4 v3, 0x0

    .line 1301
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c81

    const-string v3, "InAppFloatingKeyboard"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1303
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c81
    const-string v2, "disableHapticFeedback"

    const/4 v3, 0x0

    .line 1307
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c9d

    const-string v2, "DisableHapticFeedback"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1308
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c9d
    const-string v2, "hideDeveloperMode"

    const/4 v3, 0x0

    .line 1312
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1cb9

    const-string v2, "HideDeveloperMode"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1313
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1cb9
    const-string v2, "hideVpnConnection"

    const/4 v3, 0x0

    .line 1317
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1cd5

    const-string v2, "HideVpnConnection"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1318
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1cd5
    const-string v2, "noKill"

    const/4 v3, 0x0

    .line 1322
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1cf1

    const-string v2, "NoKill"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1323
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1cf1
    const-string v2, "showOnSecondaryDisplay"

    const/4 v3, 0x0

    .line 1327
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d16

    const-string v2, "showOnSecondaryDisplayActivitiesNames"

    .line 1328
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "ShowOnSecondaryDisplay"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1329
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d16
    const-string v2, "hideScreenMirroring"

    const/4 v3, 0x0

    .line 1333
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d32

    const-string v2, "HideScreenMirroring"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1334
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d32
    const-string v2, "palmRejectionWidthPercentage"

    const/4 v3, 0x0

    .line 1338
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1d55

    const-string v3, "PalmRejection"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    .line 1340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d55
    const-string v2, "fakeBatteryLevel"

    const/4 v3, 0x0

    .line 1344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1d8c

    const-string v4, "hidePowerSavingMode"

    .line 1346
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "FakeBatteryLevel"

    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v8, v14, v3

    .line 1347
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v14, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v14, v3

    invoke-static {v5, v9, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d8c
    const-string v2, "startSound"

    const/4 v3, 0x0

    .line 1351
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1da4

    const-string v2, "StartSound"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1352
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1da4
    const-string v2, "muteForTextOnScreen"

    move-object/from16 v14, v26

    .line 1356
    invoke-virtual {v1, v2, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1357
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1dc3

    const-string v3, "MuteForTextOnScreen"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x2

    aput-object v11, v5, v2

    .line 1358
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1dc3
    const-string v2, "deleteFilesDirectoriesOnExit"

    .line 1362
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1ddc

    .line 1363
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1ddc

    const-string v3, "DeleteFilesDirectoriesOnExit"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 1364
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ddc
    const-string v2, "flashlightWhileAppOpen"

    const/4 v3, 0x0

    .line 1368
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1df4

    const-string v2, "FlashlightWhileAppOpen"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1369
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1df4
    const-string v2, "toastPosition"

    const/4 v3, 0x0

    .line 1373
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "toastDuration"

    .line 1374
    invoke-virtual {v1, v3, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_1e14

    .line 1375
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e12

    goto :goto_1e14

    :cond_1e12
    const/4 v6, 0x3

    goto :goto_1e40

    :cond_1e14
    :goto_1e14
    if-eqz v2, :cond_1e1f

    const-string v4, "toastHorizontalAlignment"

    const-string v5, "CENTER"

    .line 1377
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e20

    :cond_1e1f
    const/4 v4, 0x0

    :goto_1e20
    if-eqz v2, :cond_1e2b

    const-string v2, "toastVerticalAlignment"

    const-string v5, "BOTTOM"

    .line 1379
    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e2c

    :cond_1e2b
    const/4 v2, 0x0

    :goto_1e2c
    const-string v5, "ToastPositionDuration"

    const/4 v6, 0x4

    new-array v15, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v8, v15, v6

    const/4 v6, 0x1

    aput-object v4, v15, v6

    const/4 v4, 0x2

    aput-object v2, v15, v4

    const/4 v6, 0x3

    aput-object v3, v15, v6

    .line 1380
    invoke-static {v5, v9, v15}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e40
    const-string v2, "screenSaverDelayMinutes"

    const/4 v3, 0x0

    .line 1385
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1e7f

    const-string v2, "screenSaverExitApp"

    .line 1387
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "screenSaverMuteVolume"

    .line 1388
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v1, v5, v15}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 1389
    new-instance v5, Lcom/applisto/appcloner/classes/ScreenSaver;

    invoke-direct {v5}, Lcom/applisto/appcloner/classes/ScreenSaver;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    move-object v2, v5

    move-object/from16 v3, p2

    move v5, v15

    const/4 v15, 0x3

    move/from16 v6, v20

    const/4 v15, 0x6

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/applisto/appcloner/classes/ScreenSaver;->install(Landroid/content/Context;IZZLjava/util/Properties;)V

    goto :goto_1e80

    :cond_1e7f
    const/4 v15, 0x6

    :goto_1e80
    const-string v2, "databaseEditor"

    const/4 v3, 0x0

    .line 1393
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e99

    .line 1394
    new-instance v2, Lcom/applisto/appcloner/classes/DatabaseEditor;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/DatabaseEditor;-><init>()V

    invoke-virtual {v2, v11}, Lcom/applisto/appcloner/classes/DatabaseEditor;->install(Ljava/util/Properties;)V

    :cond_1e99
    const-string v2, "fpsMonitor"

    const/4 v3, 0x0

    .line 1398
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f04

    const-string v2, "fpsMonitorHorizontalAlignment"

    const-string v3, "RIGHT"

    .line 1399
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fpsMonitorVerticalAlignment"

    const-string v4, "BOTTOM"

    .line 1400
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fpsMonitorSize"

    const-string v5, "MEDIUM"

    .line 1401
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fpsMonitorColor"

    const v6, -0x777778

    .line 1402
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "fpsMonitorOpacity"

    .line 1403
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const-string v7, "FpsMonitor"

    new-array v12, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v12, v18

    const/16 v16, 0x1

    aput-object v2, v12, v16

    const/4 v2, 0x2

    aput-object v3, v12, v2

    const/4 v2, 0x3

    aput-object v4, v12, v2

    .line 1406
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v12, v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v12, v3

    .line 1404
    invoke-static {v7, v9, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f04
    const-string v2, "sneezeToExitThreshold"

    const/4 v3, 0x0

    .line 1410
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1f27

    const-string v3, "SneezeToExit"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    .line 1412
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f27
    const-string v2, "fakeTimeZoneId"

    const/4 v3, 0x0

    .line 1416
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1417
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f42

    const-string v3, "FakeTimeZone"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1418
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f42
    const-string v2, "makeWebViewsDebuggable"

    const/4 v3, 0x0

    .line 1422
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f5e

    const-string v2, "MakeWebViewsDebuggable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1423
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f5e
    const-string v2, "hideMockLocation"

    const/4 v3, 0x0

    .line 1427
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f7a

    const-string v2, "HideMockLocation"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1428
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f7a
    const-string v2, "disableAudioFocus"

    const/4 v3, 0x0

    .line 1432
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f96

    const-string v2, "DisableAudioFocus"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1433
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f96
    const-string v2, "kioskMode"

    const-string v3, "DISABLED"

    .line 1437
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DISABLED"

    .line 1438
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1fc1

    const-string v3, "START_IMMEDIATELY"

    .line 1439
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "KioskMode"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    .line 1440
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x2

    aput-object v11, v5, v2

    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fc1
    const-string v2, "flipScreenHorizontally"

    const/4 v3, 0x0

    .line 1444
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "flipScreenVertically"

    .line 1445
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v2, :cond_1fe2

    if-eqz v3, :cond_2027

    :cond_1fe2
    const-string v4, "flipScreenUsingNotification"

    const/4 v5, 0x0

    .line 1447
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v6, "flipScreenUsingNfcTag"

    .line 1448
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "FlipScreen"

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v8, v12, v5

    .line 1450
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v12, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v12, v3

    .line 1451
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v12, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v12, v3

    const/4 v2, 0x5

    aput-object v11, v12, v2

    .line 1449
    invoke-static {v7, v9, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2027
    const-string v2, "swipeToGoBack"

    const/4 v3, 0x0

    .line 1455
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_206d

    const-string v2, "swipeToGoBackDirection"

    const-string v3, "RIGHT"

    .line 1456
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "swipeToGoBackBorder"

    const/4 v4, 0x0

    .line 1457
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "swipeToGoBackDoubleBack"

    const/4 v5, 0x0

    .line 1458
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v6, "SwipeToGoBack"

    const/4 v7, 0x4

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v8, v12, v5

    const/4 v5, 0x1

    aput-object v2, v12, v5

    const/4 v2, 0x2

    aput-object v3, v12, v2

    .line 1459
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v12, v3

    invoke-static {v6, v9, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_206d
    const-string v2, "inAppLiveChat"

    const/4 v3, 0x0

    .line 1463
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20d5

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const-string v3, "inAppLiveChatPrivateRoomName"

    const/4 v4, 0x0

    .line 1465
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1466
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20ab

    .line 1467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_20ab
    const-string v3, "inAppLiveChatOpacity"

    .line 1469
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v4, "InAppLiveChat"

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x0

    const/4 v5, 0x2

    aput-object v2, v6, v5

    .line 1470
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    const/4 v2, 0x4

    aput-object v11, v6, v2

    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20d5
    const-string v2, "removeAppClonerBranding"

    const/4 v3, 0x0

    .line 1474
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20ed

    const-string v2, "AppClonerBranding"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1475
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20ed
    const-string v2, "longPressToRevealPassword"

    const/4 v3, 0x0

    .line 1479
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2105

    const-string v2, "LongPressToRevealPassword"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1480
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2105
    const-string v2, "invertColorsDarkMode"

    const/4 v3, 0x0

    .line 1484
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2161

    const-string v2, "invertColorsDarkModeExcludeWebViews"

    .line 1485
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "invertColorsDarkModeSchedule"

    .line 1486
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "invertColorsDarkModeStartTime"

    const-string v5, "21:00"

    .line 1487
    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "invertColorsDarkModeEndTime"

    const-string v6, "07:00"

    .line 1488
    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "InvertColorsDarkMode"

    const/4 v7, 0x5

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v12, v7

    .line 1489
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v12, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v12, v3

    const/4 v2, 0x3

    aput-object v4, v12, v2

    const/4 v2, 0x4

    aput-object v5, v12, v2

    invoke-static {v6, v9, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2161
    const-string v2, "invertToasts"

    const/4 v3, 0x0

    .line 1493
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_217d

    const-string v2, "InvertToasts"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1494
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_217d
    const-string v2, "toastOpacity"

    .line 1498
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v3, v2, v27

    if-gez v3, :cond_21a1

    const-string v3, "ToastOpacity"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    .line 1500
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21a1
    const-string v2, "skipDialogsStrings"

    .line 1504
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_21bd

    .line 1505
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21bd

    const-string v3, "SkipDialogs"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1506
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21bd
    const-string v2, "disableFullscreenEditing"

    const/4 v3, 0x0

    .line 1510
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_21d5

    const-string v2, "DisableFullscreenEditing"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1511
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21d5
    const-string v2, "changeGoogleAdvertisingId"

    .line 1515
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v22, :cond_21df

    const-string v2, "RANDOM"

    .line 1519
    :cond_21df
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2203

    const-string v3, "customGoogleAdvertisingId"

    .line 1520
    invoke-virtual {v1, v3, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChangeGoogleAdvertisingId"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    .line 1521
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2203
    const-string v2, "changeGoogleServiceFrameworkId"

    .line 1525
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v22, :cond_220d

    const-string v2, "RANDOM"

    .line 1529
    :cond_220d
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2231

    const-string v3, "customGoogleServiceFrameworkId"

    .line 1530
    invoke-virtual {v1, v3, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChangeGoogleServiceFrameworkId"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    .line 1531
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2231
    const-string v2, "overrideBindAddress"

    .line 1535
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1536
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2258

    const-string v3, "OverrideBindAddress"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const-string v4, "LOCAL_INTERFACE"

    .line 1537
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2250

    const-string v2, "127.0.0.1"

    goto :goto_2252

    :cond_2250
    const-string v2, "0.0.0.0"

    :goto_2252
    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2258
    const-string v2, "enableDisableNetworkingNotification"

    const/4 v3, 0x0

    .line 1541
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2277

    const-string v2, "EnableDisableNetworkingNotification"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v11, v4, v3

    .line 1542
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2277
    const-string v2, "addPadding"

    .line 1546
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v2

    if-eqz v2, :cond_2302

    const-string v3, "enabled"

    const/4 v4, 0x0

    .line 1547
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2302

    const-string v3, "leftPadding"

    .line 1548
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "topPadding"

    .line 1549
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "rightPadding"

    .line 1550
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "bottomPadding"

    .line 1551
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v7, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v12, "inversePadding"

    .line 1552
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v2, v12, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v12, "AddPadding"

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v8, v14, v4

    .line 1553
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v14, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v14, v4

    .line 1554
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v14, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v14, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v14, v3

    .line 1553
    invoke-static {v12, v9, v14}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2302
    const-string v2, "jobSchedulingMonitor"

    const/4 v3, 0x0

    .line 1558
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "jobSchedulingMultiplier"

    .line 1559
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    if-nez v2, :cond_2325

    cmpl-float v4, v3, v27

    if-eqz v4, :cond_2341

    :cond_2325
    const-string v4, "JobScheduling"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    .line 1561
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v6, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    const/4 v2, 0x3

    aput-object v11, v6, v2

    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2341
    const-string v2, "mappedKeys"

    .line 1565
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_235d

    .line 1566
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_235d

    const-string v3, "KeyMapper"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1567
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_235d
    const-string v2, "colorFilterBrightness"

    const/4 v3, 0x0

    .line 1571
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "colorFilterContrast"

    .line 1572
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "colorFilterSaturation"

    .line 1573
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "colorFilterHue"

    .line 1574
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "colorFilterRed"

    .line 1575
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v7, v12}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v12, "colorFilterGreen"

    .line 1576
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v14, "colorFilterBlue"

    .line 1577
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v14, "colorFilterBlackWhite"

    const/4 v15, 0x0

    .line 1578
    invoke-virtual {v1, v14, v15}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v14

    if-nez v2, :cond_23db

    if-nez v4, :cond_23db

    if-nez v5, :cond_23db

    if-nez v6, :cond_23db

    if-nez v7, :cond_23db

    if-nez v12, :cond_23db

    if-nez v3, :cond_23db

    if-eqz v14, :cond_23d8

    goto :goto_23db

    :cond_23d8
    move-object/from16 v30, v13

    goto :goto_241f

    :cond_23db
    :goto_23db
    const-string v15, "ColorFilter"

    move-object/from16 v30, v13

    const/16 v13, 0x9

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v8, v13, v18

    .line 1580
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v13, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v13, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v13, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v13, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v13, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v13, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v13, v17

    const/16 v2, 0x8

    aput-object v14, v13, v2

    invoke-static {v15, v9, v13}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_241f
    const-string v2, "selectAllOnFocus"

    const/4 v3, 0x0

    .line 1584
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2437

    const-string v2, "SelectAllOnFocus"

    new-array v4, v3, [Ljava/lang/Object;

    .line 1585
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2437
    const-string v2, "packageNameCheckWorkaround"

    const/4 v3, 0x0

    .line 1589
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2458

    const-string v2, "PackageNameCheckWorkaround"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1590
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2458
    const-string v2, "notificationDots"

    const/4 v3, 0x0

    .line 1594
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2471

    .line 1595
    new-instance v2, Lcom/applisto/appcloner/classes/NotificationDots;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/NotificationDots;-><init>()V

    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/NotificationDots;->install()V

    :cond_2471
    const-string v2, "zoomableImageViews"

    const/4 v3, 0x0

    .line 1599
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_24a4

    const-string v2, "zoomableImageViewsMaxScale"

    const/high16 v3, 0x40400000  # 3.0f

    .line 1600
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "ZoomableImageViews"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    .line 1601
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24a4
    const-string v2, "blurImageViews"

    .line 1605
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v2

    if-eqz v2, :cond_24cd

    const-string v3, "strength"

    const-string v4, "LOW"

    .line 1607
    invoke-virtual {v2, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mode"

    const-string v5, "TAP"

    .line 1608
    invoke-virtual {v2, v4, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BlurImageViews"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v3, v6, v5

    const/4 v3, 0x2

    aput-object v2, v6, v3

    .line 1609
    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24cd
    const-string v2, "COPY_STARTING"

    const-string v3, "expansionFiles"

    const/4 v4, 0x0

    .line 1613
    invoke-virtual {v1, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2504

    const-string v2, "preserveExpansionFiles"

    const/4 v3, 0x0

    .line 1614
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "ExpansionFilesCopyWhenStarting"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v8, v6, v3

    .line 1615
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v6, v5

    .line 1616
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    const/4 v2, 0x3

    aput-object v11, v6, v2

    .line 1615
    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2504
    const-string v2, "alwaysAllowCopyPaste"

    const/4 v3, 0x0

    .line 1620
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2520

    const-string v2, "AlwaysAllowCopyPaste"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1621
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2520
    const-string v2, "startOtherApp"

    .line 1625
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v2

    if-eqz v2, :cond_2570

    const-string v3, "onStartPackageName"

    const/4 v4, 0x0

    .line 1627
    invoke-virtual {v2, v3, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onStartDelaySeconds"

    const/4 v5, 0x3

    .line 1628
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "onStartExitApp"

    const/4 v6, 0x0

    .line 1629
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "onExitPackageName"

    const/4 v7, 0x0

    .line 1630
    invoke-virtual {v2, v6, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "StartOtherApp"

    const/4 v7, 0x4

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v12, v7

    .line 1632
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v12, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v12, v4

    const/4 v3, 0x3

    aput-object v2, v12, v3

    .line 1631
    invoke-static {v6, v9, v12}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2570
    const-string v2, "setVolumeOnStart"

    const/4 v3, 0x0

    .line 1636
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2584

    const-string v3, "SetVolumeOnStart"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 1638
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2584
    const-string v2, "disableAccessibilityAccess"

    const/4 v3, 0x0

    .line 1642
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25a0

    const-string v2, "DisableAccessibilityAccess"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1643
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25a0
    const-string v2, "confirmExit"

    const/4 v3, 0x0

    .line 1647
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25bc

    const-string v2, "ConfirmExit"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v4, v3

    .line 1648
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25bc
    const-string v2, "pressBackAgainToExit"

    const/4 v3, 0x0

    .line 1652
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25db

    const-string v2, "PressBackAgainToExit"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v11, v4, v3

    .line 1653
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25db
    const-string v2, "minimizeOnBack"

    .line 1657
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v28, :cond_25e7

    if-eqz v31, :cond_25e7

    const-string v2, "DISABLED"

    :cond_25e7
    const-string v3, "ENABLED"

    .line 1661
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2605

    const-string v2, "MinimizeOnBack"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    .line 1662
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object v11, v4, v3

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2622

    :cond_2605
    const-string v3, "DISABLED"

    .line 1663
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2622

    const-string v2, "MinimizeOnBack"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1664
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v3, 0x1

    aput-object v5, v4, v3

    const/4 v3, 0x2

    aput-object v11, v4, v3

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2622
    :goto_2622
    const-string v2, "lightStatusBar"

    .line 1668
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ENABLED"

    .line 1669
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2643

    const-string v2, "LightStatusBar"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    .line 1670
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_265d

    :cond_2643
    const-string v3, "DISABLED"

    .line 1671
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_265d

    const-string v2, "LightStatusBar"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1672
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v3, 0x1

    aput-object v5, v4, v3

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_265d
    :goto_265d
    if-eqz v25, :cond_266a

    const-string v2, "HideEmulator"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1677
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_266a
    const-string v2, "preferredCameraApp"

    .line 1681
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v2

    if-eqz v2, :cond_2687

    const-string v3, "PreferredCameraApp"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v5, v4

    const-string v4, "packageName"

    const/4 v6, 0x0

    .line 1684
    invoke-virtual {v2, v4, v6}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 1683
    invoke-static {v3, v9, v5}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2687
    const-string v2, "com.facebook.katana"

    .line 1688
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_269c

    const-string v2, "FacebookSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1689
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_269c
    const-string v2, "com.whatsapp"

    .line 1693
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26b0

    const-string v2, "com.whatsapp.w4b"

    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    .line 1694
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26bf

    .line 1695
    :cond_26b0
    new-instance v2, Lcom/applisto/appcloner/classes/WhatsAppSupport;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/WhatsAppSupport;-><init>()V

    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->install(Ljava/lang/String;)V

    .line 1696
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-static {v8, v2}, Ljava/io/ByteArrayOutputStrean;->init(Landroid/content/Context;Ljava/lang/String;)V

    :cond_26bf
    const-string v2, "com.google.android.gm"

    .line 1700
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26d1

    .line 1701
    new-instance v2, Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-direct {v2}, Lcom/applisto/appcloner/classes/GmailSupport;-><init>()V

    invoke-virtual {v2, v8}, Lcom/applisto/appcloner/classes/GmailSupport;->install(Landroid/content/Context;)V

    :cond_26d1
    const-string v2, "com.paypal.android.p2pmobile"

    .line 1705
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26fa

    const-string v2, "com.applisto.appcloner.classes.secondary.PayPalSupport"

    .line 1706
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->loadSecondaryClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1707
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v6, v30

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v8, v5, v7

    .line 1708
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26fa
    const-string v2, "com.yahoo.mobile.client.android.flickr"

    .line 1712
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_270f

    const-string v2, "FlickrSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1713
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_270f
    const-string v2, "com.bukalapak.android"

    .line 1717
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2724

    const-string v2, "BukalapakSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1718
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2724
    const-string v2, "com.tokopedia.tkpd"

    .line 1722
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2739

    const-string v2, "TokopediaSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1723
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2739
    const-string v2, "com.facebook.mlite"

    .line 1727
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_274e

    const-string v2, "MessengerLiteSupport"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1728
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_274e
    const-string v2, "ClassLoaderWorkaround"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1731
    sget-object v5, Lcom/applisto/appcloner/classes/DefaultProvider;->sOriginalPackageName:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "popupBlocker"

    .line 1734
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_277c

    const-string v2, "PopupBlocker"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v11, v4, v3

    .line 1735
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_277c
    const-string v2, "blockActivitiesNames"

    .line 1739
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "activityMonitor"

    const/4 v4, 0x0

    .line 1740
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v2, :cond_27b1

    .line 1741
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_27b1

    const-string v4, "BlockActivities"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v6, v5

    const/4 v5, 0x1

    aput-object v2, v6, v5

    .line 1742
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v6, v5

    const/4 v2, 0x3

    aput-object v11, v6, v2

    invoke-static {v4, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27b1
    if-eqz v3, :cond_27c6

    const-string v2, "ActivityMonitor"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1747
    sget-object v3, Lcom/applisto/appcloner/classes/DefaultProvider;->sAppClonerPackageName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object v11, v4, v3

    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27c6
    const-string v2, "disableSignatureVerification"

    const/4 v3, 0x0

    .line 1751
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27e2

    const-string v2, "DisableSignatureVerification"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1752
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27e2
    const-string v2, "autoScroller"

    const/4 v3, 0x0

    .line 1756
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2801

    const-string v2, "AutoScroller"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    const/4 v3, 0x1

    aput-object v11, v4, v3

    .line 1757
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2801
    const-string v2, "mockWifiConnection"

    .line 1761
    invoke-virtual {v1, v2, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mockMobileConnection"

    .line 1762
    invoke-virtual {v1, v3, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mockEthernetConnection"

    .line 1763
    invoke-virtual {v1, v4, v10}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v25, :cond_2817

    const-string v4, "DISCONNECTED"

    .line 1767
    :cond_2817
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2829

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2829

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_283d

    :cond_2829
    const-string v5, "MockNetworkConnection"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v4, v6, v2

    .line 1768
    invoke-static {v5, v9, v6}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_283d
    const-string v2, "preventAppFromChangingVolume"

    const/4 v3, 0x0

    .line 1772
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2859

    const-string v2, "PreventAppFromChangingVolume"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1773
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2859
    const-string v2, "disableSensorsAccess"

    const/4 v3, 0x0

    .line 1777
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2875

    const-string v2, "DisableSensorsAccess"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1778
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2875
    const-string v2, "disableScreenOnOffEvents"

    const/4 v3, 0x0

    .line 1782
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2891

    const-string v2, "DisableScreenOnOffEvents"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v4, v3

    .line 1783
    invoke-static {v2, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2891
    const-string v2, "openLinksWith"

    const/4 v3, 0x0

    .line 1787
    invoke-virtual {v1, v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1788
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28ac

    const-string v3, "OpenLinksWith"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 1789
    invoke-static {v3, v9, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28ac
    const-string v2, "startForOutgoingCall"

    .line 1793
    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_28c5

    .line 1794
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28c5

    const-string v1, "StartForOutgoingCall"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v3, v2

    .line 1795
    invoke-static {v1, v9, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28c5
    .catchall {:try_start_1b3f .. :try_end_28c5} :catchall_28db

    :cond_28c5
    if-eqz v24, :cond_28e2

    :try_start_28c7
    const-string v1, "Test"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    .line 1801
    invoke-static {v1, v9, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28d2
    .catch Ljava/lang/Exception; {:try_start_28c7 .. :try_end_28d2} :catch_28d3
    .catchall {:try_start_28c7 .. :try_end_28d2} :catchall_28db

    goto :goto_28e2

    :catch_28d3
    move-exception v0

    move-object v1, v0

    .line 1803
    :try_start_28d5
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28da
    .catchall {:try_start_28d5 .. :try_end_28da} :catchall_28db

    goto :goto_28e2

    :catchall_28db
    move-exception v0

    :goto_28dc
    move-object v1, v0

    .line 1808
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1811
    :cond_28e2
    :goto_28e2
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->closeAndroidPieApiCompatibilityDialog()V

    return-void
.end method

.method public onCreate()Z
    .registers 9

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_13

    .line 72
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate; no context"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 77
    :cond_13
    :try_start_13
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 78
    new-instance v4, Ljava/util/zip/ZipFile;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_62

    .line 80
    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "META-INF/CERT.SF"

    .line 81
    invoke-virtual {v4, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_5d

    .line 83
    :try_start_34
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 84
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Created-By: App Cloner"

    .line 85
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    const-string v5, "assets/x8zs/classes.dex"

    .line 87
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-nez v5, :cond_51

    :goto_4b
    const-wide/16 v5, 0x3e8

    .line 89
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_58

    goto :goto_4b

    .line 94
    :cond_51
    :try_start_51
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5d

    .line 97
    :try_start_54
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_62

    goto :goto_68

    :catchall_58
    move-exception v5

    .line 94
    :try_start_59
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 95
    throw v5
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v3

    .line 97
    :try_start_5e
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 98
    throw v3
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_62

    :catch_62
    move-exception v3

    .line 100
    sget-object v4, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_68
    invoke-virtual {p0, v2, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 105
    sget-object v2, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate; took: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " millis"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_27

    .line 1904
    :try_start_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assets/.notificationSoundFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1905
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ".notificationSoundFile"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception v0

    .line 1908
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    :cond_27
    invoke-super {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1917
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile; uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DefaultProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1920
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/Image.png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x10000000

    const-string v3, "r"

    if-eqz v1, :cond_56

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1921
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 1922
    new-instance p2, Ljava/io/File;

    const-string v0, "share_image.png"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1923
    sget-object p1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFile; returning share image file descriptor; file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-static {p2, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 1927
    :cond_56
    invoke-static {v0}, Lcom/applisto/appcloner/classes/Utils;->checkCaller(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a1

    :try_start_5c
    const-string v1, "/cloneSettings"

    .line 1929
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1930
    invoke-static {v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getCloneSettingsFile()Ljava/io/File;

    move-result-object v0

    .line 1931
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1932
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v3, "openFile; returning clone settings file MODE_READ_ONLY file descriptor..."

    invoke-static {v1, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_82
    const-string v1, "w"

    .line 1935
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1936
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    const-string v2, "openFile; returning clone settings file MODE_WRITE_ONLY file descriptor..."

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x2c000000

    .line 1937
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_97} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_97} :catch_98

    return-object p1

    :catch_98
    move-exception v0

    .line 1945
    sget-object v1, Lcom/applisto/appcloner/classes/DefaultProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a1

    :catch_9f
    move-exception p1

    .line 1943
    throw p1

    .line 1949
    :cond_a1
    :goto_a1
    invoke-super {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method
