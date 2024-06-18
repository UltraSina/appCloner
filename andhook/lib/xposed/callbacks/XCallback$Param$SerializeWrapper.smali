.class Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landhook/lib/xposed/callbacks/XCallback$Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializeWrapper"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;->object:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;)Ljava/lang/Object;
    .registers 1

    .line 90
    iget-object p0, p0, Landhook/lib/xposed/callbacks/XCallback$Param$SerializeWrapper;->object:Ljava/lang/Object;

    return-object p0
.end method
