.class final Lcom/swift/sandhook/utils/ArtDexOptimizer$StreamConsumer$1;
.super Ljava/lang/Object;
.source "ArtDexOptimizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swift/sandhook/utils/ArtDexOptimizer$StreamConsumer;->consumeInputStream(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/swift/sandhook/utils/ArtDexOptimizer$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/swift/sandhook/utils/ArtDexOptimizer$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 85
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/swift/sandhook/utils/ArtDexOptimizer$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_12
    .catchall {:try_start_9 .. :try_end_f} :catchall_18

    if-lez v1, :cond_12

    goto :goto_9

    .line 92
    :catch_12
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/swift/sandhook/utils/ArtDexOptimizer$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_1f

    goto :goto_1f

    :catchall_18
    move-exception v0

    :try_start_19
    iget-object v1, p0, Lcom/swift/sandhook/utils/ArtDexOptimizer$StreamConsumer$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_1e

    .line 96
    :catch_1e
    throw v0

    :catch_1f
    :goto_1f
    return-void
.end method
