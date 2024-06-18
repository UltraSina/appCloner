.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$luIUy2oGcJKQHTsjy3oamdtHsqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Flow$Publisher;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/MyControlsProviderService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$luIUy2oGcJKQHTsjy3oamdtHsqc;->f$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;

    return-void
.end method


# virtual methods
.method public final subscribe(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 3

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$luIUy2oGcJKQHTsjy3oamdtHsqc;->f$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;

    invoke-virtual {v0, p1}, Lcom/applisto/appcloner/classes/MyControlsProviderService;->lambda$createPublisherForAllAvailable$0$MyControlsProviderService(Ljava/util/concurrent/Flow$Subscriber;)V

    return-void
.end method
