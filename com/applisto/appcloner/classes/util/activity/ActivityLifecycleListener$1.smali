.class Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
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

    .line 29
    iput-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$000(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 36
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$000(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_42

    .line 38
    :try_start_22
    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v2, v1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onActivityTimer(Landroid/app/Activity;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_16

    :catch_28
    move-exception v1

    .line 40
    :try_start_29
    invoke-static {}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 43
    :cond_31
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$200(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;->this$0:Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v1}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->getActivityTimerDelayMillis()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception v0

    .line 46
    invoke-static {}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    return-void
.end method
