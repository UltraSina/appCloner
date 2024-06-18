.class public abstract Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "OnAppExitListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->mActivities:Ljava/util/Set;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityDestroyed$0$OnAppExitListener(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onAppExit(Landroid/content/Context;)V

    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 5

    .line 25
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->mActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6

    .line 33
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityDestroyed; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->mActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->mActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ch.iAgentur.i20Mio.MainActivity"

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "com.facebook.messenger."

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_4d

    .line 46
    :cond_40
    iget-object p1, p0, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/util/activity/-$$Lambda$OnAppExitListener$ieziqKgQTJCB_DjkbY94zZ6yIwg;

    invoke-direct {v1, p0, v0}, Lcom/applisto/appcloner/classes/util/activity/-$$Lambda$OnAppExitListener$ieziqKgQTJCB_DjkbY94zZ6yIwg;-><init>(Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 44
    :cond_4d
    :goto_4d
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onAppExit(Landroid/content/Context;)V

    :cond_50
    :goto_50
    return-void
.end method

.method protected abstract onAppExit(Landroid/content/Context;)V
.end method
