.class public abstract Lcom/applisto/appcloner/service/IRemoteService$Stub;
.super Landroid/os/Binder;
.source "IRemoteService.java"

# interfaces
.implements Lcom/applisto/appcloner/service/IRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/service/IRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.applisto.appcloner.service.IRemoteService"

.field static final TRANSACTION_clearAppDataAndExit:I = 0xb

.field static final TRANSACTION_clearCache:I = 0xc

.field static final TRANSACTION_getActivityMonitorEntries:I = 0xd

.field static final TRANSACTION_getAllowedBlockedHosts:I = 0x6

.field static final TRANSACTION_getAppClonerInterfaceVersion:I = 0x1

.field static final TRANSACTION_getFileAccessMonitorEntries:I = 0x8

.field static final TRANSACTION_getPreferenceFiles:I = 0x3

.field static final TRANSACTION_getPreferences:I = 0x4

.field static final TRANSACTION_inspectLayout:I = 0x9

.field static final TRANSACTION_killAppProcesses:I = 0x2

.field static final TRANSACTION_performViewAction:I = 0xa

.field static final TRANSACTION_setAllowedBlockedHosts:I = 0x7

.field static final TRANSACTION_setPreference:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.applisto.appcloner.service.IRemoteService"

    .line 69
    invoke-virtual {p0, p0, v0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/applisto/appcloner/service/IRemoteService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.applisto.appcloner.service.IRemoteService"

    .line 80
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 81
    instance-of v1, v0, Lcom/applisto/appcloner/service/IRemoteService;

    if-eqz v1, :cond_13

    .line 82
    check-cast v0, Lcom/applisto/appcloner/service/IRemoteService;

    return-object v0

    .line 84
    :cond_13
    new-instance v0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/applisto/appcloner/service/IRemoteService;
    .registers 1

    .line 529
    sget-object v0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/applisto/appcloner/service/IRemoteService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/applisto/appcloner/service/IRemoteService;)Z
    .registers 2

    .line 522
    sget-object v0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/applisto/appcloner/service/IRemoteService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 523
    sput-object p0, Lcom/applisto/appcloner/service/IRemoteService$Stub$Proxy;->sDefaultImpl:Lcom/applisto/appcloner/service/IRemoteService;

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.applisto.appcloner.service.IRemoteService"

    if-eq p1, v0, :cond_e2

    packed-switch p1, :pswitch_data_e6

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 212
    :pswitch_10  #0xd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getActivityMonitorEntries(J)Ljava/util/Map;

    move-result-object p1

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 205
    :pswitch_22  #0xc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->clearCache()V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 198
    :pswitch_2c  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->clearAppDataAndExit()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_36  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 191
    invoke-virtual {p0, p1, p4, p2}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->performViewAction(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 176
    :pswitch_50  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->inspectLayout()Ljava/util/List;

    move-result-object p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return v1

    .line 166
    :pswitch_5e  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getFileAccessMonitorEntries(J)Ljava/util/Map;

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 156
    :pswitch_70  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->setAllowedBlockedHosts(Ljava/util/Map;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 148
    :pswitch_86  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getAllowedBlockedHosts()Ljava/util/Map;

    move-result-object p1

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 135
    :pswitch_94  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {p0, p1, p4, p2}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->setPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 125
    :pswitch_aa  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getPreferences(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 117
    :pswitch_bc  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getPreferenceFiles()[Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 110
    :pswitch_ca  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->killAppProcesses()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_d4  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/applisto/appcloner/service/IRemoteService$Stub;->getAppClonerInterfaceVersion()I

    move-result p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 97
    :cond_e2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_d4  #00000001
        :pswitch_ca  #00000002
        :pswitch_bc  #00000003
        :pswitch_aa  #00000004
        :pswitch_94  #00000005
        :pswitch_86  #00000006
        :pswitch_70  #00000007
        :pswitch_5e  #00000008
        :pswitch_50  #00000009
        :pswitch_36  #0000000a
        :pswitch_2c  #0000000b
        :pswitch_22  #0000000c
        :pswitch_10  #0000000d
    .end packed-switch
.end method
