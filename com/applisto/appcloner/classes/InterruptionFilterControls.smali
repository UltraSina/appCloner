.class public Lcom/applisto/appcloner/classes/InterruptionFilterControls;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "InterruptionFilterControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInterruptionFilter:Ljava/lang/Integer;

.field private mInterruptionFilterSet:Z

.field private mOldInterruptionFilter:I

.field private mRestoreInterruptionFilterOnExit:Z

.field private mStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    const-string v0, "interruptionFilter"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "restoreInterruptionFilterOnExit"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    .line 39
    sget-object p1, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiControls; mInterruptionFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object p1, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiControls; mRestoreInterruptionFilterOnExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public install(Ljava/util/Properties;)V
    .registers 4

    .line 44
    sget-object v0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-object p1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mStringsProperties:Ljava/util/Properties;

    .line 48
    iget-object p1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    if-eqz p1, :cond_10

    .line 49
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->onCreate()Z

    :cond_10
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 7

    .line 55
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a0

    :try_start_9
    const-string v0, "notification"

    .line 61
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_a0

    .line 64
    invoke-virtual {v0}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    .line 65
    sget-object v2, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated; accessGranted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez v1, :cond_54

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object v0, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mStringsProperties:Ljava/util/Properties;

    const-string v1, "do_not_disturb_enable_access_message"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    .line 72
    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_a0

    .line 74
    :cond_54
    iget-boolean p1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilterSet:Z

    if-nez p1, :cond_a0

    .line 76
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result p1

    iput p1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    .line 77
    iget-object p1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 78
    sget-object p1, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated: interruption filter set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilter:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object p1, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated; mOldInterruptionFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-boolean v2, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilterSet:Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_99} :catch_9a

    goto :goto_a0

    :catch_9a
    move-exception p1

    .line 85
    sget-object v0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a0
    :goto_a0
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 5

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5d

    .line 95
    sget-object v0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreInterruptionFilterOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldInterruptionFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mRestoreInterruptionFilterOnExit:Z

    if-eqz v0, :cond_5d

    :try_start_2c
    const-string v0, "notification"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_5a

    .line 105
    iget v0, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 106
    sget-object p1, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppExit: interruption filter set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mOldInterruptionFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    move-exception p1

    .line 109
    sget-object v0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5a
    :goto_5a
    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/InterruptionFilterControls;->mInterruptionFilterSet:Z

    :cond_5d
    return-void
.end method
