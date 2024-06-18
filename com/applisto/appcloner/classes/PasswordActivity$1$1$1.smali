.class Lcom/applisto/appcloner/classes/PasswordActivity$1$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/PasswordActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/applisto/appcloner/classes/PasswordActivity$1$1;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity$1$1;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1$1$1;->this$2:Lcom/applisto/appcloner/classes/PasswordActivity$1$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 280
    :try_start_0
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1$1$1;->this$2:Lcom/applisto/appcloner/classes/PasswordActivity$1$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;->val$longPressRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p1

    .line 282
    invoke-static {}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method
