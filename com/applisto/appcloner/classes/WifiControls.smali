.class public Lcom/applisto/appcloner/classes/WifiControls;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "WifiControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOldWifiState:Ljava/lang/Boolean;

.field private mRestoreWifiStateOnExit:Z

.field private mWifiState:Ljava/lang/Boolean;

.field private mWifiStateSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/applisto/appcloner/classes/WifiControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    const-string v0, "wifiState"

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "restoreWifiStateOnExit"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    .line 32
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiControls; mWifiState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiControls; mRestoreWifiStateOnExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .registers 3

    .line 37
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v0, "install; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcom/applisto/appcloner/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    if-eqz p1, :cond_e

    .line 40
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/WifiControls;->onCreate()Z

    :cond_e
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    .line 46
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 48
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/WifiControls;->mWifiStateSet:Z

    if-nez v0, :cond_5d

    const/4 v0, 0x1

    .line 52
    :try_start_8
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 53
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/applisto/appcloner/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    .line 54
    iget-object v1, p0, Lcom/applisto/appcloner/classes/WifiControls;->mWifiState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 55
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 56
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated; enabled Wi-Fi"

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_31
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 59
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated; disabled Wi-Fi"

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception p1

    .line 62
    sget-object v1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_43
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; mOldWifiState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/WifiControls;->mWifiStateSet:Z

    :cond_5d
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 5

    .line 74
    sget-object v0, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppExit; mRestoreWifiStateOnExit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/applisto/appcloner/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mOldWifiState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/WifiControls;->mRestoreWifiStateOnExit:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/applisto/appcloner/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    .line 82
    :try_start_2b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 83
    iget-object v1, p0, Lcom/applisto/appcloner/classes/WifiControls;->mOldWifiState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    .line 84
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 85
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v1, "onAppExit; enabled Wi-Fi"

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 87
    :cond_4b
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 88
    sget-object p1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    const-string v1, "onAppExit; disabled Wi-Fi"

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_55} :catch_56

    goto :goto_5c

    :catch_56
    move-exception p1

    .line 91
    sget-object v1, Lcom/applisto/appcloner/classes/WifiControls;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_5c
    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/WifiControls;->mWifiStateSet:Z

    :cond_5e
    return-void
.end method
