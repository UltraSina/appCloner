.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/applisto/appcloner/classes/GmailSupport$2;->lambda$getInvocationHandler$0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
