.class public Lcom/applisto/appcloner/classes/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/CrashHandler$Hook;
    }
.end annotation


# static fields
.field public static final CRASH_HANDLER_NOTIFICATION_ID:I = 0x60a40a2e

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppBundle:Z

.field private mContext:Landroid/content/Context;

.field private mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mIgnoreCrashes:Z

.field private final mIgnoreCrashesShowCrashMessages:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/CrashHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/applisto/appcloner/classes/CrashHandler$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/CrashHandler$1;-><init>(Lcom/applisto/appcloner/classes/CrashHandler;)V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ignoreCrashes"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mIgnoreCrashes:Z

    const-string v1, "ignoreCrashesShowCrashMessages"

    .line 92
    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mIgnoreCrashesShowCrashMessages:Z

    .line 93
    sget-object p1, Lcom/applisto/appcloner/classes/CrashHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrashHandler; mIgnoreCrashes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mIgnoreCrashes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoreCrashesShowCrashMessages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mIgnoreCrashesShowCrashMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/applisto/appcloner/classes/CrashHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mIgnoreCrashes:Z

    return p0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/CrashHandler;)Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mIgnoreCrashesShowCrashMessages:Z

    return p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/CrashHandler;)Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .registers 5

    .line 100
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mContext:Landroid/content/Context;

    .line 103
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 103
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 105
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.applisto.appcloner.appBundle"

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mAppBundle:Z

    .line 107
    sget-object v0, Lcom/applisto/appcloner/classes/CrashHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; mAppBundle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mAppBundle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v0

    .line 109
    sget-object v1, Lcom/applisto/appcloner/classes/CrashHandler;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_39
    :try_start_39
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CrashHandler;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 114
    invoke-static {p1}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 115
    const-class p1, Lcom/applisto/appcloner/classes/CrashHandler$Hook;

    invoke-static {p1}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 116
    sget-object p1, Lcom/applisto/appcloner/classes/CrashHandler;->TAG:Ljava/lang/String;

    const-string v0, "install; hooks installed"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_4e

    goto :goto_54

    :catchall_4e
    move-exception p1

    .line 118
    sget-object v0, Lcom/applisto/appcloner/classes/CrashHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    return-void
.end method
