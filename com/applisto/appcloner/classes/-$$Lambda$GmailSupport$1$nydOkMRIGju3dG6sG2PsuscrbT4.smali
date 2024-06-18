.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$nydOkMRIGju3dG6sG2PsuscrbT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/GmailSupport$1;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/GmailSupport$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$nydOkMRIGju3dG6sG2PsuscrbT4;->f$0:Lcom/applisto/appcloner/classes/GmailSupport$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$1$nydOkMRIGju3dG6sG2PsuscrbT4;->f$0:Lcom/applisto/appcloner/classes/GmailSupport$1;

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/GmailSupport$1;->lambda$onContentChanged$1$GmailSupport$1()V

    return-void
.end method
