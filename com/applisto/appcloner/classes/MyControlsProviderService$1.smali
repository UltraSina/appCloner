.class Lcom/applisto/appcloner/classes/MyControlsProviderService$1;
.super Ljava/lang/Object;
.source "MyControlsProviderService.java"

# interfaces
.implements Ljava/util/concurrent/Flow$Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/MyControlsProviderService;->lambda$createPublisherFor$1(Ljava/util/List;Ljava/util/concurrent/Flow$Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/MyControlsProviderService;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/applisto/appcloner/classes/MyControlsProviderService$1;->this$0:Lcom/applisto/appcloner/classes/MyControlsProviderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const-string v0, "ControlsProviderService"

    const-string v1, "cancel; "

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public request(J)V
    .registers 3

    const-string p1, "ControlsProviderService"

    const-string p2, "request; "

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
