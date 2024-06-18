.class public Lcom/applisto/appcloner/classes/DatabaseEditor;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "DatabaseEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/DatabaseEditor$StopDatabaseEditorReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1ec649a1

.field private static final TAG:Ljava/lang/String;

.field private static sPort:I

.field private static sStarted:Ljava/lang/Boolean;

.field private static sStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/applisto/appcloner/classes/DatabaseEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DatabaseEditor;->stopDatabaseEditor(Landroid/content/Context;)V

    return-void
.end method

.method private static getFreePort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 150
    :try_start_6
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 152
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    return v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 153
    throw v1
.end method

.method private static startDatabaseEditor(Landroid/content/Context;)V
    .registers 10

    .line 74
    sget-object v0, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDatabaseEditor; sStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;

    if-nez v0, :cond_171

    const/4 v0, 0x0

    .line 80
    :try_start_1d
    sget v1, Lcom/applisto/appcloner/classes/DatabaseEditor;->sPort:I

    if-nez v1, :cond_3f

    .line 81
    invoke-static {}, Lcom/applisto/appcloner/classes/DatabaseEditor;->getFreePort()I

    move-result v1

    sput v1, Lcom/applisto/appcloner/classes/DatabaseEditor;->sPort:I

    .line 82
    sget-object v1, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDatabaseEditor; generated new port; sPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/applisto/appcloner/classes/DatabaseEditor;->sPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    const-string v1, "com.amitshekhar.debug.sqlite.DebugDBFactory"

    .line 85
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.amitshekhar.DebugDB"

    .line 88
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "initialize"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 89
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    const-string v6, "com.amitshekhar.sqlite.DBFactory"

    .line 90
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 89
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object v1, v3, v7

    .line 91
    sget v1, Lcom/applisto/appcloner/classes/DatabaseEditor;->sPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;

    .line 95
    sget-object v2, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStringsProperties:Ljava/util/Properties;

    const-string v3, "database_editor_started_message"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    const-class v3, Ljava/net/Inet4Address;

    invoke-static {v3}, Lcom/applisto/appcloner/classes/Utils;->getWifiInetAddress(Ljava/lang/Class;)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_ab

    invoke-virtual {v3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_ad

    :cond_ab
    const-string v3, "localhost"

    :goto_ad
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/applisto/appcloner/classes/DatabaseEditor;->sPort:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "notification"

    .line 99
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    if-eqz v4, :cond_13a

    .line 102
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 104
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 105
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 107
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v6, v8, :cond_eb

    .line 108
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 109
    invoke-virtual {v6, v2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 108
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 112
    :cond_eb
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    .line 115
    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 118
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_11a

    .line 119
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/applisto/appcloner/classes/DatabaseEditor$StopDatabaseEditorReceiver;

    invoke-direct {v2, v1, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "Stop database editor"

    .line 121
    invoke-virtual {v5, v0, v3, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 124
    :cond_11a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_124

    const/4 v2, -0x1

    .line 125
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 128
    :cond_124
    invoke-static {v5, v7}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;Z)V

    .line 130
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 131
    iput-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 132
    iget v1, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v2, Landroid/app/Notification;->defaults:I

    const v1, 0x1ec649a1

    .line 133
    invoke-virtual {v4, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_171

    .line 135
    :cond_13a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_155
    .catchall {:try_start_1d .. :try_end_155} :catchall_156

    goto :goto_171

    :catchall_156
    move-exception v1

    .line 139
    sget-object v2, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    sget-object v1, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStringsProperties:Ljava/util/Properties;

    const-string v2, "database_editor_started_error_message"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;

    :cond_171
    :goto_171
    return-void
.end method

.method private static stopDatabaseEditor(Landroid/content/Context;)V
    .registers 5

    .line 157
    sget-object v0, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDatabaseEditor; sStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    :try_start_23
    const-string v1, "com.amitshekhar.DebugDB"

    .line 163
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "shutDown"

    new-array v3, v0, [Ljava/lang/Class;

    .line 164
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 165
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception v1

    .line 170
    sget-object v2, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Failed to stop database editor."

    .line 171
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4d
    :goto_4d
    const-string v0, "notification"

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_5d

    const v0, 0x1ec649a1

    .line 177
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_5d
    return-void
.end method


# virtual methods
.method public install(Ljava/util/Properties;)V
    .registers 4

    .line 43
    sget-object v0, Lcom/applisto/appcloner/classes/DatabaseEditor;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sput-object p1, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStringsProperties:Ljava/util/Properties;

    .line 46
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DatabaseEditor;->onCreate()Z

    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 53
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DatabaseEditor;->startDatabaseEditor(Landroid/content/Context;)V

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DatabaseEditor;->stopDatabaseEditor(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 60
    sput-object p1, Lcom/applisto/appcloner/classes/DatabaseEditor;->sStarted:Ljava/lang/Boolean;

    return-void
.end method
