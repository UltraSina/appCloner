.class public abstract Landhook/lib/xposed/callbacks/XCallback$Param;
.super Ljava/lang/Object;
.source "XCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/callbacks/XCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;
    }
.end annotation


# instance fields
.field public final callbacks:[Ljava/lang/Object;

.field private extra:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized getExtra()Landroid/os/Bundle;
    .registers 2

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    if-nez v0, :cond_c

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;

    .line 69
    :cond_c
    iget-object v0, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->extra:Landroid/os/Bundle;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 76
    invoke-virtual {p0}, Landhook/lib/xposed/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 77
    instance-of v0, p1, Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;

    if-eqz v0, :cond_13

    .line 78
    check-cast p1, Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;

    invoke-static {p1}, Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;->access$000(Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 87
    invoke-virtual {p0}, Landhook/lib/xposed/callbacks/XCallback$Param;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;

    invoke-direct {v1, p2}, Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
