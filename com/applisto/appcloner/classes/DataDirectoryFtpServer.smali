.class public Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "DataDirectoryFtpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/DataDirectoryFtpServer$StopFtpServerReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1ec649a0

.field private static final PASSWORD:Ljava/lang/String; = "appcloner"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_NAME:Ljava/lang/String; = "appcloner"

.field private static sPort:I

.field private static sStarted:Ljava/lang/Boolean;

.field private static sStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->stopFtpServer(Landroid/content/Context;)V

    return-void
.end method

.method private static getFreePort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 164
    :try_start_6
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 166
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    return v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 167
    throw v1
.end method

.method static synthetic lambda$startFtpServer$0(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 100
    invoke-static {p0, v0}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->showNotification(Landroid/content/Context;Z)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;Z)V
    .registers 11

    .line 111
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    const-string v1, "showNotification; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_7
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    if-eqz v0, :cond_d0

    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 116
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStringsProperties:Ljava/util/Properties;

    const-string v1, "data_directory_ftp_server_started_message"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-class v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/Utils;->getWifiInetAddress(Ljava/lang/Class;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ftp://appcloner:appcloner@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_34
    const-string v1, "localhost"

    :goto_36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification"

    .line 120
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_ac

    .line 123
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 125
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 126
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 128
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_75

    .line 129
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 130
    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 133
    :cond_75
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x0

    if-lt v5, v6, :cond_8d

    .line 134
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer$StopFtpServerReceiver;

    invoke-direct {v5, v7, v7, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x40000000  # 2.0f

    const/4 v8, 0x0

    invoke-static {p0, v8, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "Stop FTP server"

    .line 136
    invoke-virtual {v4, v8, v6, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 139
    :cond_8d
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_97

    const/4 v5, -0x1

    .line 140
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 143
    :cond_97
    invoke-static {v4, v3}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;Z)V

    .line 145
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 146
    iput-object v7, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 147
    iget v5, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v4, Landroid/app/Notification;->defaults:I

    const v5, 0x1ec649a0

    .line 148
    invoke-virtual {v2, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_ac
    if-eqz p1, :cond_d0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c9} :catch_ca

    goto :goto_d0

    :catch_ca
    move-exception p0

    .line 156
    sget-object p1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d0
    :goto_d0
    return-void
.end method

.method private static startFtpServer(Landroid/content/Context;)V
    .registers 13

    const-string v0, "appcloner"

    .line 75
    sget-object v1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFtpServer; sStarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    if-nez v1, :cond_e9

    const/4 v1, 0x0

    .line 80
    :try_start_1f
    sget v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_ce

    const-string v3, "startFtpServer; generated new port; sPort: "

    if-nez v2, :cond_41

    .line 81
    :try_start_25
    invoke-static {}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->getFreePort()I

    move-result v2

    sput v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    .line 82
    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.applisto.appcloner.ftpserver.AppClonerFtpServer"

    .line 86
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "startFtpServer"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    .line 87
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_6b
    .catchall {:try_start_25 .. :try_end_6b} :catchall_ce

    const/4 v5, 0x0

    :try_start_6c
    new-array v7, v6, [Ljava/lang/Object;

    .line 89
    sget v8, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v0, v7, v9

    aput-object v0, v7, v10

    aput-object v2, v7, v11

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_7f} :catch_80
    .catchall {:try_start_6c .. :try_end_7f} :catchall_ce

    goto :goto_b5

    :catch_80
    move-exception v7

    .line 91
    :try_start_81
    sget-object v8, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-static {}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->getFreePort()I

    move-result v7

    sput v7, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    .line 93
    sget-object v7, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v6, [Ljava/lang/Object;

    .line 94
    sget v6, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    aput-object v0, v3, v9

    aput-object v0, v3, v10

    aput-object v2, v3, v11

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_b5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    .line 99
    invoke-static {p0, v9}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->showNotification(Landroid/content/Context;Z)V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/applisto/appcloner/classes/-$$Lambda$DataDirectoryFtpServer$UpJdbCtrYxLd2xRLShZFusSzt_o;

    invoke-direct {v2, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$DataDirectoryFtpServer$UpJdbCtrYxLd2xRLShZFusSzt_o;-><init>(Landroid/content/Context;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_cd
    .catchall {:try_start_81 .. :try_end_cd} :catchall_ce

    goto :goto_e9

    :catchall_ce
    move-exception v0

    .line 103
    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStringsProperties:Ljava/util/Properties;

    const-string v2, "data_directory_ftp_server_started_error_message"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    :cond_e9
    :goto_e9
    return-void
.end method

.method private static stopFtpServer(Landroid/content/Context;)V
    .registers 5

    .line 171
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFtpServer; sStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    :try_start_23
    const-string v1, "com.applisto.appcloner.ftpserver.AppClonerFtpServer"

    .line 176
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopFtpServer"

    new-array v3, v0, [Ljava/lang/Class;

    .line 177
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 178
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception v1

    .line 182
    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Failed to stop FTP server."

    .line 183
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4d
    :goto_4d
    const-string v0, "notification"

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_5d

    const v0, 0x1ec649a0

    .line 189
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_5d
    return-void
.end method


# virtual methods
.method public install(Ljava/util/Properties;)V
    .registers 4

    .line 44
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sput-object p1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStringsProperties:Ljava/util/Properties;

    .line 47
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->onCreate()Z

    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 2

    .line 52
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 54
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->startFtpServer(Landroid/content/Context;)V

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 2

    .line 60
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->stopFtpServer(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 61
    sput-object p1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    return-void
.end method
