.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$WhatsAppSupport$nQb_axsFTr5UUaDO3OsT7labUCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/WhatsAppSupport;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$WhatsAppSupport$nQb_axsFTr5UUaDO3OsT7labUCw;->f$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$WhatsAppSupport$nQb_axsFTr5UUaDO3OsT7labUCw;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$WhatsAppSupport$nQb_axsFTr5UUaDO3OsT7labUCw;->f$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$WhatsAppSupport$nQb_axsFTr5UUaDO3OsT7labUCw;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->lambda$showOriginalWhatsAppRequiredMessage$0$WhatsAppSupport(Landroid/content/Context;)V

    return-void
.end method
