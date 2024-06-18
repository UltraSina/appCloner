.class Lcom/applisto/appcloner/service/RemoteService$1;
.super Lcom/applisto/appcloner/service/IRemoteService$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/service/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/service/RemoteService;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/service/RemoteService;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-direct {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;-><init>()V

    return-void
.end method

.method private checkCaller()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/Utils;->checkCaller(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 39
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method


# virtual methods
.method public clearAppDataAndExit()V
    .registers 6

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-virtual {v0}, Lcom/applisto/appcloner/service/RemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "util.Utils"

    const-string v2, "clearAppDataAndExit"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 131
    invoke-static {v1, v2, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception v0

    .line 133
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public clearCache()V
    .registers 6

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-virtual {v0}, Lcom/applisto/appcloner/service/RemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "util.Utils"

    const-string v2, "clearCache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 142
    invoke-static {v1, v2, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception v0

    .line 144
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public getActivityMonitorEntries(J)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    :try_start_3
    const-string v0, "ActivityMonitor"

    const-string v1, "getActivityMonitorEntries"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 153
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    .line 155
    new-instance p2, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getAllowedBlockedHosts()Ljava/util/Map;
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 86
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->getAllowedBlockedHosts()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAppClonerInterfaceVersion()I
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    const/4 v0, 0x5

    return v0
.end method

.method public getFileAccessMonitorEntries(J)Ljava/util/Map;
    .registers 3

    .line 98
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 100
    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/FileAccessMonitor;->getFileAccessMonitorEntries(J)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceFiles()[Ljava/lang/String;
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 65
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/PreferenceEditor;->getPreferenceFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences(Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 72
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/PreferenceEditor;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public inspectLayout()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    :try_start_3
    const-string v0, "LayoutInspector"

    const-string v1, "inspectLayout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    invoke-static {v0, v1, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v0

    .line 110
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public killAppProcesses()V
    .registers 6

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-virtual {v0}, Lcom/applisto/appcloner/service/RemoteService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "util.Utils"

    const-string v2, "killAppProcesses"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 55
    invoke-static {v1, v2, v3}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception v0

    .line 57
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public performViewAction(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    const-string v0, "LayoutInspector"

    const-string v1, "performViewAction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception p1

    .line 121
    invoke-static {}, Lcom/applisto/appcloner/service/RemoteService;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance p2, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAllowedBlockedHosts(Ljava/util/Map;)V
    .registers 2

    .line 91
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 93
    invoke-static {p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->setAllowedBlockedHosts(Ljava/util/Map;)V

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Lcom/applisto/appcloner/service/RemoteService$1;->checkCaller()V

    .line 79
    iget-object v0, p0, Lcom/applisto/appcloner/service/RemoteService$1;->this$0:Lcom/applisto/appcloner/service/RemoteService;

    invoke-static {v0, p1, p2, p3}, Lcom/applisto/appcloner/classes/PreferenceEditor;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
