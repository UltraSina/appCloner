.class Lcom/applisto/appcloner/classes/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/CrashHandler;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/CrashHandler;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    .line 42
    :try_start_0
    invoke-static {}, Lcom/applisto/appcloner/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$200(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p1

    if-eqz p1, :cond_d6

    .line 46
    :cond_17
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$300(Lcom/applisto/appcloner/classes/CrashHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " crash"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4e

    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " crashed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 48
    :goto_4e
    invoke-static {p2}, Lcom/applisto/appcloner/classes/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "dlopen failed"

    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "java.lang.UnsatisfiedLinkError"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_82

    :cond_63
    const-string v0, "java.lang.NullPointerException: Attempt to read from field \'java.lang.String android.content.pm.PackageItemInfo.packageName\' on a null object reference"

    .line 53
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 55
    iget-object p2, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p2

    if-eqz p2, :cond_74

    return-void

    :cond_74
    const-string p2, "Please try enabling \'Ignore crashes\' under \'Cloning options\'."

    goto :goto_84

    :cond_77
    const-string v0, "java.lang.ClassNotFoundException: Didn\'t find class"

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string p2, "Please try enabling \'Increase compatibility\' under \'Cloning options\' or use the manifest cloning mode."

    goto :goto_84

    :cond_82
    :goto_82
    const-string p2, "Please try enabling \'Skip native libraries\' under \'Cloning options\' or use the manifest cloning mode."

    .line 63
    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    .line 64
    invoke-static {v0}, Lcom/applisto/appcloner/classes/CrashHandler;->access$300(Lcom/applisto/appcloner/classes/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 66
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {v2}, Lcom/applisto/appcloner/classes/CrashHandler;->access$300(Lcom/applisto/appcloner/classes/CrashHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 71
    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;Z)V

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_c3

    .line 74
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_c3
    const p2, 0x60a40a2e

    .line 77
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cd} :catch_ce

    goto :goto_d6

    :catch_ce
    move-exception p1

    .line 80
    invoke-static {}, Lcom/applisto/appcloner/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_d6
    :goto_d6
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p1

    if-nez p1, :cond_e2

    const/4 p1, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_e2
    return-void
.end method
