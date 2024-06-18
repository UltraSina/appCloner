.class Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 276
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    iget-object v1, v1, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->access$500(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->access$502(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;Z)Z

    .line 277
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->access$500(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 278
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    const-string v2, "Paused"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3e

    .line 280
    :cond_2a
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    const-string v2, "Resumed"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 281
    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;

    iget-object v0, v0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->access$600(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V

    .line 284
    :goto_3e
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
