.class Lcom/applisto/appcloner/classes/GmailSupport$1;
.super Lcom/applisto/appcloner/classes/util/WindowCallbackWrapper;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/GmailSupport;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/GmailSupport;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/GmailSupport;Landroid/view/Window$Callback;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-direct {p0, p2}, Lcom/applisto/appcloner/classes/util/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onContentChanged$0$GmailSupport$1()V
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$100(Lcom/applisto/appcloner/classes/GmailSupport;)V

    return-void
.end method

.method public synthetic lambda$onContentChanged$1$GmailSupport$1()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$100(Lcom/applisto/appcloner/classes/GmailSupport;)V

    return-void
.end method

.method public synthetic lambda$onContentChanged$2$GmailSupport$1()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$100(Lcom/applisto/appcloner/classes/GmailSupport;)V

    return-void
.end method

.method public onContentChanged()V
    .registers 5

    .line 74
    invoke-static {}, Lcom/applisto/appcloner/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onContentChanged; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Lcom/applisto/appcloner/classes/util/WindowCallbackWrapper;->onContentChanged()V

    .line 77
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$100(Lcom/applisto/appcloner/classes/GmailSupport;)V

    .line 78
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$200(Lcom/applisto/appcloner/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$gv5_EVymIpta_xgA09olrJWegxo;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$gv5_EVymIpta_xgA09olrJWegxo;-><init>(Lcom/applisto/appcloner/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$200(Lcom/applisto/appcloner/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$nydOkMRIGju3dG6sG2PsuscrbT4;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$nydOkMRIGju3dG6sG2PsuscrbT4;-><init>(Lcom/applisto/appcloner/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$1;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/GmailSupport;->access$200(Lcom/applisto/appcloner/classes/GmailSupport;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$a70tR4JnAuwFKEjGwTRCyhXKKuU;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$a70tR4JnAuwFKEjGwTRCyhXKKuU;-><init>(Lcom/applisto/appcloner/classes/GmailSupport$1;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
