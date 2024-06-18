.class Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;
.super Ljava/lang/Object;
.source "LogcatViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V
    .registers 4

    .line 270
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance p1, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    new-instance v1, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1$1;-><init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 290
    iget-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$1;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
