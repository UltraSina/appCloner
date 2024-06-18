.class Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$3;
.super Ljava/lang/Thread;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V
    .registers 2

    .line 311
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$3;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$3;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->access$700(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 317
    :try_start_8
    invoke-static {}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_1e

    .line 318
    :try_start_d
    invoke-static {}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 319
    iget-object v1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$3;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->access$600(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V

    .line 320
    monitor-exit v0

    goto :goto_0

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    :cond_1e
    return-void
.end method
