.class public Lcom/swift/sandhook/ClassNeverCall;
.super Ljava/lang/Object;
.source "ClassNeverCall.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private neverCall()V
    .registers 1

    return-void
.end method

.method private neverCall2()V
    .registers 3

    const-string v0, "ClassNeverCall"

    const-string v1, "ClassNeverCall2"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native neverCallNative()V
.end method

.method private native neverCallNative2()V
.end method

.method private static neverCallStatic()V
    .registers 0

    return-void
.end method
