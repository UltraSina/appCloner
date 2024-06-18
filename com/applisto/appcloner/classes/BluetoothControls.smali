.class public Lcom/applisto/appcloner/classes/BluetoothControls;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "BluetoothControls.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothState:Ljava/lang/Boolean;

.field private mBluetoothStateSet:Z

.field private mOldBluetoothState:Ljava/lang/Boolean;

.field private mRestoreBluetoothStateOnExit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/applisto/appcloner/classes/BluetoothControls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    const-string v0, "bluetoothState"

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "restoreBluetoothStateOnExit"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

    .line 31
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothControls; mBluetoothState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothControls; mRestoreBluetoothStateOnExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public install()V
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/BluetoothControls;->onCreate()Z

    :cond_7
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 4

    .line 44
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 46
    iget-boolean p1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mBluetoothStateSet:Z

    if-nez p1, :cond_54

    .line 49
    :try_start_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    .line 51
    iget-object v0, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 52
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 53
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; enabled bluetooth"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 55
    :cond_28
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 56
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; disabled bluetooth"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception p1

    .line 59
    sget-object v0, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_39
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated; mOldBluetoothState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mBluetoothStateSet:Z

    :cond_54
    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 4

    .line 71
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppExit; mRestoreBluetoothStateOnExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOldBluetoothState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean p1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mRestoreBluetoothStateOnExit:Z

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    if-eqz p1, :cond_55

    .line 78
    :try_start_2a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mOldBluetoothState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 80
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 81
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v0, "onAppExit; enabled bluetooth"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 83
    :cond_41
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 84
    sget-object p1, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    const-string v0, "onAppExit; disabled bluetooth"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4b} :catch_4c

    goto :goto_52

    :catch_4c
    move-exception p1

    .line 87
    sget-object v0, Lcom/applisto/appcloner/classes/BluetoothControls;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/BluetoothControls;->mBluetoothStateSet:Z

    :cond_55
    return-void
.end method
