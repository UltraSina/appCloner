.class Lcom/applisto/appcloner/classes/LogcatViewer$2;
.super Ljava/lang/Thread;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/LogcatViewer;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/LogcatViewer;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/LogcatViewer;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$2;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 110
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_0

    .line 111
    :try_start_5
    invoke-static {}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 112
    iget-object v1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$2;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$400(Lcom/applisto/appcloner/classes/LogcatViewer;)V

    .line 113
    monitor-exit v0

    goto :goto_0

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    :try_start_15
    goto :goto_17
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_16} :catch_0

    :goto_16
    throw v1

    :goto_17
    goto :goto_16
.end method
