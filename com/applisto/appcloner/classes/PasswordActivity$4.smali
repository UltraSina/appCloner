.class Lcom/applisto/appcloner/classes/PasswordActivity$4;
.super Ljava/lang/Thread;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/PasswordActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$4;->this$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0xfa

    .line 514
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    const/4 v0, 0x0

    .line 517
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
