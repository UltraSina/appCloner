.class Lcom/applisto/appcloner/classes/LogcatViewer$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 93
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 96
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$002(Lcom/applisto/appcloner/classes/LogcatViewer;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 97
    invoke-static {p1}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$102(Z)Z

    .line 98
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$200(Lcom/applisto/appcloner/classes/LogcatViewer;)V

    return-void
.end method
