.class public abstract Landroid/media/Image;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Image$Plane;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getFormat()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getPlanes()[Landroid/media/Image$Plane;
.end method

.method public abstract getScalingMode()I
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getTransform()I
.end method

.method public abstract getWidth()I
.end method
