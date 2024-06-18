.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$faiAKkD_BFjHM0W_5Z6KfJjxteI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Flow$Publisher;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/MyControlsProviderService;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$faiAKkD_BFjHM0W_5Z6KfJjxteI;->f$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$faiAKkD_BFjHM0W_5Z6KfJjxteI;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$faiAKkD_BFjHM0W_5Z6KfJjxteI;->f$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$faiAKkD_BFjHM0W_5Z6KfJjxteI;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/applisto/appcloner/classes/MyControlsProviderService;->lambda$createPublisherFor$1$MyControlsProviderService(Ljava/util/List;Ljava/util/concurrent/Flow$Subscriber;)V

    return-void
.end method
