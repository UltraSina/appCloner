.class public abstract Landhook/lib/xposed/callbacks/XCallback;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/xposed/callbacks/XCallback$Param;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landhook/lib/xposed/callbacks/XCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_DEFAULT:I = 0x32

.field public static final PRIORITY_HIGHEST:I = 0x2710

.field public static final PRIORITY_LOWEST:I = -0x2710


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 30
    iput v0, p0, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    return-void
.end method

.method public static callAll(Landhook/lib/xposed/callbacks/XCallback$Param;)V
    .registers 3

    .line 104
    iget-object v0, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 107
    :goto_5
    iget-object v1, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 109
    :try_start_a
    iget-object v1, p0, Landhook/lib/xposed/callbacks/XCallback$Param;->callbacks:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Landhook/lib/xposed/callbacks/XCallback;

    invoke-virtual {v1, p0}, Landhook/lib/xposed/callbacks/XCallback;->call(Landhook/lib/xposed/callbacks/XCallback$Param;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_13

    :catchall_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    return-void

    .line 105
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This object was not created for use with callAll"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_20

    :goto_1f
    throw p0

    :goto_20
    goto :goto_1f
.end method


# virtual methods
.method protected call(Landhook/lib/xposed/callbacks/XCallback$Param;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public compareTo(Landhook/lib/xposed/callbacks/XCallback;)I
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 131
    :cond_4
    iget v0, p1, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    iget v1, p0, Landhook/lib/xposed/callbacks/XCallback;->priority:I

    if-eq v0, v1, :cond_c

    sub-int/2addr v0, v1

    return v0

    .line 134
    :cond_c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ge v0, p1, :cond_18

    const/4 p1, -0x1

    return p1

    :cond_18
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 14
    check-cast p1, Landhook/lib/xposed/callbacks/XCallback;

    invoke-virtual {p0, p1}, Landhook/lib/xposed/callbacks/XCallback;->compareTo(Landhook/lib/xposed/callbacks/XCallback;)I

    move-result p1

    return p1
.end method
