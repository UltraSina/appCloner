.class public Lcom/applisto/appcloner/classes/GmailSupport$Hook;
.super Ljava/lang/Object;
.source "GmailSupport.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookReflectClass;
    value = ".MailIntentReceiver"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/GmailSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onReceiveHook(Ljava/lang/Object;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "onReceive"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/content/Context;,
            Landroid/content/Intent;
        }
    .end annotation

    .line 317
    invoke-static {}, Lcom/applisto/appcloner/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceiveHook; "

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
