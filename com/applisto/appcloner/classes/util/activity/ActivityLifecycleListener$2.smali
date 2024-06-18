.class Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 97
    iget-object p2, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {p2, p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityCreated(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v0, p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v0, p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityPaused(Landroid/app/Activity;)V

    .line 124
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$000(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v0, p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityResumed(Landroid/app/Activity;)V

    .line 113
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$000(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$200(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$200(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$300(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->getActivityTimerInitialDelayMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v0, p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v0, p1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
