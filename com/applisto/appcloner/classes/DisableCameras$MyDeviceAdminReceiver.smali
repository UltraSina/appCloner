.class public Lcom/applisto/appcloner/classes/DisableCameras$MyDeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DisableCameras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/DisableCameras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDeviceAdminReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 126
    invoke-static {}, Lcom/applisto/appcloner/classes/DisableCameras;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onEnabled; "

    invoke-static {p2, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DisableCameras;->access$100(Landroid/content/Context;)V

    return-void
.end method
