.class Lcom/applisto/appcloner/classes/PasswordActivity$3;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/PasswordActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$PasswordActivity$3()V
    .registers 2

    const/4 v0, 0x0

    .line 400
    iput v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    return-void
.end method

.method public run()V
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 395
    iget v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    .line 397
    iget v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    .line 398
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$400(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    goto :goto_23

    .line 400
    :cond_17
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$3;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$3$dtKTXKLiCIp97MWlz7ZSfdVOtDc;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$3$dtKTXKLiCIp97MWlz7ZSfdVOtDc;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_23
    return-void
.end method
