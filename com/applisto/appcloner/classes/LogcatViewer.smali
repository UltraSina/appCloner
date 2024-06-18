.class public Lcom/applisto/appcloner/classes/LogcatViewer;
.super Ljava/lang/Object;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;
    }
.end annotation


# static fields
.field private static final ACTION_SWITCH_LOGCAT_LEVEL:Ljava/lang/String; = "com.applisto.appcloner.action.SWITCH_LOGCAT_LEVEL"

.field private static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field private static final MAX_LINES:I = 0x3e8

.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "logcat_viewer"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Logcat viewer"

.field private static sAutoScroll:Z

.field private static final sLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLevel:Ljava/lang/String;

.field private final mLogcatViewer:Z

.field private mProcess:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/applisto/appcloner/classes/LogcatViewer;->sAutoScroll:Z

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mHandler:Landroid/os/Handler;

    const-string v0, "V"

    .line 59
    iput-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mLevel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "logcatViewer"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mLogcatViewer:Z

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LogcatViewer; mLogcatViewer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mLogcatViewer:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentValues"

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/applisto/appcloner/classes/LogcatViewer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mLevel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 43
    sget-boolean v0, Lcom/applisto/appcloner/classes/LogcatViewer;->sAutoScroll:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 43
    sput-boolean p0, Lcom/applisto/appcloner/classes/LogcatViewer;->sAutoScroll:Z

    return p0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/LogcatViewer;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/LogcatViewer;->startReadLogs()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/List;
    .registers 1

    .line 43
    sget-object v0, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/applisto/appcloner/classes/LogcatViewer;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/LogcatViewer;->showLogsDelayed()V

    return-void
.end method

.method static synthetic access$800(I)Ljava/lang/String;
    .registers 1

    .line 43
    invoke-static {p0}, Lcom/applisto/appcloner/classes/LogcatViewer;->getLogs(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLogs(I)Ljava/lang/String;
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    sget-object v1, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    monitor-enter v1

    .line 201
    :try_start_8
    sget-object v2, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    sget-object v3, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p0

    const/4 p0, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sget-object v3, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, p0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 202
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3b

    const-string v3, "\n"

    .line 204
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 208
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_45

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_45
    move-exception p0

    .line 208
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    goto :goto_49

    :goto_48
    throw p0

    :goto_49
    goto :goto_48
.end method

.method public static synthetic lambda$G1hxUXqz9ZrdlGGcqLP5MzIBnRk(Lcom/applisto/appcloner/classes/LogcatViewer;)V
    .registers 1

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/LogcatViewer;->showLogs()V

    return-void
.end method

.method private showLogs()V
    .registers 11

    const-string v0, "level"

    const-string v1, "com.applisto.appcloner.action.SWITCH_LOGCAT_LEVEL"

    .line 147
    :try_start_4
    iget-object v2, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    .line 148
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x5

    .line 150
    invoke-static {v3}, Lcom/applisto/appcloner/classes/LogcatViewer;->getLogs(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const-class v6, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    iget-object v5, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v5, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 156
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "V"

    .line 157
    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v7, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v7, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 161
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "D"

    .line 162
    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v8, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v8, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v8, v9, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 166
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "I"

    .line 167
    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1, v8, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 173
    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 176
    invoke-static {v1}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    .line 179
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_a8

    const-string v3, "logcat_viewer"

    .line 180
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 183
    :cond_a8
    new-instance v3, Landroid/app/Notification$Action;

    const-string v4, "VERBOSE"

    invoke-direct {v3, v6, v4, v5}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 184
    new-instance v3, Landroid/app/Notification$Action;

    const-string v4, "DEBUG"

    invoke-direct {v3, v6, v4, v7}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 185
    new-instance v3, Landroid/app/Notification$Action;

    const-string v4, "INFO"

    invoke-direct {v3, v6, v4, v0}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 187
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    .line 188
    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 189
    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    const v1, 0x56880

    .line 190
    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d9} :catch_da

    goto :goto_e0

    :catch_da
    move-exception v0

    const-string v1, "ContentValues"

    .line 193
    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e0
    return-void
.end method

.method private showLogsDelayed()V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$G1hxUXqz9ZrdlGGcqLP5MzIBnRk;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$G1hxUXqz9ZrdlGGcqLP5MzIBnRk;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startReadLogs()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    .line 129
    :cond_a
    new-instance v0, Lcom/applisto/appcloner/classes/LogcatViewer$3;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/LogcatViewer$3;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer;)V

    .line 134
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/LogcatViewer$3;->start()V

    return-void
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .registers 8

    const-string v0, "ContentValues"

    const-string v1, "install; "

    .line 69
    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mLogcatViewer:Z

    if-eqz v1, :cond_49

    .line 72
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mContext:Landroid/content/Context;

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2f

    :try_start_13
    const-string v1, "notification"

    .line 78
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_2f

    .line 80
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "logcat_viewer"

    const-string v4, "Logcat viewer"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v1

    .line 87
    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_2f
    :goto_2f
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/LogcatViewer;->startReadLogs()V

    .line 93
    new-instance v0, Lcom/applisto/appcloner/classes/LogcatViewer$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/LogcatViewer$1;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.applisto.appcloner.action.SWITCH_LOGCAT_LEVEL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    new-instance p1, Lcom/applisto/appcloner/classes/LogcatViewer$2;

    invoke-direct {p1, p0}, Lcom/applisto/appcloner/classes/LogcatViewer$2;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer;)V

    .line 118
    invoke-virtual {p1}, Lcom/applisto/appcloner/classes/LogcatViewer$2;->start()V

    :cond_49
    return-void
.end method

.method public readLogs()V
    .registers 5

    .line 215
    :try_start_0
    sget-object v0, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_82

    .line 216
    :try_start_3
    sget-object v1, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 217
    sget-object v1, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 218
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_7f

    .line 219
    :try_start_e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat -v time *:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    .line 220
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/LogcatViewer;->mProcess:Ljava/lang/Process;

    .line 221
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3b} :catch_82

    .line 224
    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    .line 225
    sget-object v2, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    monitor-enter v2
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_7a

    :try_start_44
    const-string v3, "--------- beginning of"

    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "OverScrollerOptimization"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_71

    .line 229
    :cond_55
    sget-object v3, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_6a

    .line 231
    sget-object v1, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 233
    :cond_6a
    sget-object v1, Lcom/applisto/appcloner/classes/LogcatViewer;->sLines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v2

    goto :goto_3b

    .line 227
    :cond_71
    :goto_71
    monitor-exit v2

    goto :goto_3b

    :catchall_73
    move-exception v1

    .line 234
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_44 .. :try_end_75} :catchall_73

    :try_start_75
    throw v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_7a

    .line 238
    :cond_76
    :try_start_76
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_82
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_82

    goto :goto_82

    :catchall_7a
    move-exception v1

    :try_start_7b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_82

    .line 241
    :catch_7e
    :try_start_7e
    throw v1
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7f} :catch_82

    :catchall_7f
    move-exception v1

    .line 218
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v1
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_82} :catch_82

    :catch_82
    :goto_82
    return-void
.end method
