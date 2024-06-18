.class public Lcom/applisto/appcloner/classes/NotificationDots;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "NotificationDots.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/NotificationDots$MyNotificationListenerService;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_LISTENER_SETTINGS:Ljava/lang/String; = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

.field private static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"

.field private static final TAG:Ljava/lang/String;

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/applisto/appcloner/classes/NotificationDots;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/applisto/appcloner/classes/NotificationDots;->update(Landroid/content/Context;)V

    return-void
.end method

.method private static getLauncherComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 154
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hideNotificationDots(Landroid/content/Context;)V
    .registers 5

    .line 128
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    const-string v1, "hideNotificationDots; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/applisto/appcloner/classes/StartActivity1;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 133
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/applisto/appcloner/classes/StartActivity2;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static isNotificationServiceEnabled(Landroid/content/Context;)Z
    .registers 6

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_notification_listeners"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_36

    const-string v1, ":"

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 95
    array-length v1, p0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_36

    aget-object v4, p0, v3

    .line 96
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 98
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_36
    return v2
.end method

.method static synthetic lambda$update$1(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    const-string v0, "notification"

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_21

    .line 114
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 115
    array-length v0, v0

    if-lez v0, :cond_17

    .line 116
    invoke-static {p0}, Lcom/applisto/appcloner/classes/NotificationDots;->showNotificationDots(Landroid/content/Context;)V

    goto :goto_21

    .line 118
    :cond_17
    invoke-static {p0}, Lcom/applisto/appcloner/classes/NotificationDots;->hideNotificationDots(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception p0

    .line 122
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void
.end method

.method public static showNotificationDots(Landroid/content/Context;)V
    .registers 5

    .line 139
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    const-string v1, "showNotificationDots; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/applisto/appcloner/classes/StartActivity1;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 144
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/applisto/appcloner/classes/StartActivity2;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static update(Landroid/content/Context;)V
    .registers 3

    .line 108
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    const-string v1, "update; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$uk8drYgxXE00G7nLrqFytUIYsRA;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$uk8drYgxXE00G7nLrqFytUIYsRA;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public install()V
    .registers 3

    .line 44
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    .line 47
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/NotificationDots;->onCreate()Z

    :cond_10
    return-void
.end method

.method public synthetic lambda$onActivityCreated$0$NotificationDots(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 65
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/NotificationDots;->mRequested:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception p1

    .line 68
    sget-object p2, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 6

    .line 53
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; mRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/NotificationDots;->mRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationDots;->mRequested:Z

    if-nez v0, :cond_5f

    .line 56
    invoke-static {p1}, Lcom/applisto/appcloner/classes/NotificationDots;->isNotificationServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 57
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated; notificationServiceEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5f

    .line 60
    :try_start_38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "App Cloner"

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Please enable notification access to enable notification dots."

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM;

    invoke-direct {v2, p0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM;-><init>(Lcom/applisto/appcloner/classes/NotificationDots;Landroid/app/Activity;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_58} :catch_59

    goto :goto_5f

    :catch_59
    move-exception p1

    .line 73
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationDots;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5f
    :goto_5f
    return-void
.end method

.method protected onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 81
    invoke-static {p1}, Lcom/applisto/appcloner/classes/NotificationDots;->update(Landroid/content/Context;)V

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 2

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/NotificationDots;->mRequested:Z

    return-void
.end method
