.class Lcom/applisto/appcloner/classes/PictureInPicture$1;
.super Ljava/lang/Object;
.source "PictureInPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PictureInPicture;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/PictureInPicture;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PictureInPicture;Landroid/app/Activity;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1;->this$0:Lcom/applisto/appcloner/classes/PictureInPicture;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PictureInPicture$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/applisto/appcloner/classes/PictureInPicture$1$1;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/applisto/appcloner/classes/PictureInPicture$1$1;-><init>(Lcom/applisto/appcloner/classes/PictureInPicture$1;Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 88
    invoke-static {}, Lcom/applisto/appcloner/classes/PictureInPicture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run; window callback installed"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    .line 90
    invoke-static {}, Lcom/applisto/appcloner/classes/PictureInPicture;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method
