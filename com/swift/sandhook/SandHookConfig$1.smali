.class final Lcom/swift/sandhook/SandHookConfig$1;
.super Ljava/lang/Object;
.source "SandHookConfig.java"

# interfaces
.implements Lcom/swift/sandhook/SandHookConfig$LibLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swift/sandhook/SandHookConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLib()V
    .registers 2

    .line 23
    sget-object v0, Lcom/swift/sandhook/SandHookConfig;->libSandHookPath:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "sandhook"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_f

    .line 26
    :cond_a
    sget-object v0, Lcom/swift/sandhook/SandHookConfig;->libSandHookPath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_f
    return-void
.end method
