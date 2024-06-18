.class final Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver$1;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "StartExitAppEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 3

    .line 35
    invoke-static {}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 40
    invoke-static {}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
