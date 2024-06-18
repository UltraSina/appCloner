.class Lcom/applisto/appcloner/classes/LogcatViewer$3;
.super Ljava/lang/Thread;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/LogcatViewer;->startReadLogs()V
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

    .line 129
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$3;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$3;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/LogcatViewer;->readLogs()V

    return-void
.end method
