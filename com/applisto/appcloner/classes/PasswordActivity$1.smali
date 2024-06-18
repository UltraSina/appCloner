.class Lcom/applisto/appcloner/classes/PasswordActivity$1;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V
    .registers 4

    .line 264
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->val$alertDialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .line 269
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$000(Lcom/applisto/appcloner/classes/PasswordActivity;)Ljava/lang/Runnable;

    move-result-object p1

    .line 272
    :try_start_6
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 274
    new-instance v2, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity$1;Landroid/view/Window$Callback;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 294
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$200(Lcom/applisto/appcloner/classes/PasswordActivity;)Z

    move-result p1

    if-eqz p1, :cond_36

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_36

    .line 295
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$300(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception p1

    .line 299
    invoke-static {}, Lcom/applisto/appcloner/classes/PasswordActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    return-void
.end method
