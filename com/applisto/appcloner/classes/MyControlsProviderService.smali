.class public Lcom/applisto/appcloner/classes/MyControlsProviderService;
.super Landroid/service/controls/ControlsProviderService;
.source "MyControlsProviderService.java"


# static fields
.field private static final CONTROL_ID:Ljava/lang/String; = "button"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/service/controls/ControlsProviderService;-><init>()V

    return-void
.end method

.method private getControls()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/MyControlsProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/applisto/appcloner/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 94
    new-instance v2, Landroid/service/controls/Control$StatefulBuilder;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 96
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v3, "button"

    invoke-direct {v2, v3, v1}, Landroid/service/controls/Control$StatefulBuilder;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 101
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/service/controls/Control$StatefulBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/service/controls/Control$StatefulBuilder;

    const/16 v1, 0x34

    .line 102
    invoke-virtual {v2, v1}, Landroid/service/controls/Control$StatefulBuilder;->setDeviceType(I)Landroid/service/controls/Control$StatefulBuilder;

    .line 103
    invoke-virtual {v2, v3}, Landroid/service/controls/Control$StatefulBuilder;->setControlId(Ljava/lang/String;)Landroid/service/controls/Control$StatefulBuilder;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v2, v1}, Landroid/service/controls/Control$StatefulBuilder;->setStatus(I)Landroid/service/controls/Control$StatefulBuilder;

    .line 105
    new-instance v4, Landroid/service/controls/templates/ControlButton;

    invoke-direct {v4, v1, v3}, Landroid/service/controls/templates/ControlButton;-><init>(ZLjava/lang/CharSequence;)V

    .line 106
    new-instance v1, Landroid/service/controls/templates/ToggleTemplate;

    invoke-direct {v1, v3, v4}, Landroid/service/controls/templates/ToggleTemplate;-><init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;)V

    invoke-virtual {v2, v1}, Landroid/service/controls/Control$StatefulBuilder;->setControlTemplate(Landroid/service/controls/templates/ControlTemplate;)Landroid/service/controls/Control$StatefulBuilder;

    .line 107
    invoke-virtual {v2}, Landroid/service/controls/Control$StatefulBuilder;->build()Landroid/service/controls/Control;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    return-object v0
.end method


# virtual methods
.method public createPublisherFor(Ljava/util/List;)Ljava/util/concurrent/Flow$Publisher;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPublisherFor; controlIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsProviderService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$faiAKkD_BFjHM0W_5Z6KfJjxteI;

    invoke-direct {v0, p0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$faiAKkD_BFjHM0W_5Z6KfJjxteI;-><init>(Lcom/applisto/appcloner/classes/MyControlsProviderService;Ljava/util/List;)V

    return-object v0
.end method

.method public createPublisherForAllAvailable()Ljava/util/concurrent/Flow$Publisher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Flow$Publisher<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$luIUy2oGcJKQHTsjy3oamdtHsqc;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$MyControlsProviderService$luIUy2oGcJKQHTsjy3oamdtHsqc;-><init>(Lcom/applisto/appcloner/classes/MyControlsProviderService;)V

    return-object v0
.end method

.method public synthetic lambda$createPublisherFor$1$MyControlsProviderService(Ljava/util/List;Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/MyControlsProviderService;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/controls/Control;

    .line 49
    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 51
    new-instance v2, Lcom/applisto/appcloner/classes/MyControlsProviderService$1;

    invoke-direct {v2, p0}, Lcom/applisto/appcloner/classes/MyControlsProviderService$1;-><init>(Lcom/applisto/appcloner/classes/MyControlsProviderService;)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Flow$Subscriber;->onSubscribe(Ljava/util/concurrent/Flow$Subscription;)V

    .line 63
    invoke-interface {p2, v1}, Ljava/util/concurrent/Flow$Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_8

    :cond_2a
    return-void
.end method

.method public synthetic lambda$createPublisherForAllAvailable$0$MyControlsProviderService(Ljava/util/concurrent/Flow$Subscriber;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/MyControlsProviderService;->getControls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/controls/Control;

    .line 37
    invoke-interface {p1, v1}, Ljava/util/concurrent/Flow$Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_8

    .line 39
    :cond_18
    invoke-interface {p1}, Ljava/util/concurrent/Flow$Subscriber;->onComplete()V

    return-void
.end method

.method public performControlAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/controls/actions/ControlAction;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "performControlAction; controlId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ControlsProviderService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "button"

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 75
    :try_start_1e
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/MyControlsProviderService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performControlAction; i: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_49

    const/high16 p2, 0x10000000

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/MyControlsProviderService;->startActivity(Landroid/content/Intent;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p1

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    const/4 p1, 0x1

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
