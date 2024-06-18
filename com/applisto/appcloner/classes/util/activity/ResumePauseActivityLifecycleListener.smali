.class public abstract Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "ResumePauseActivityLifecycleListener.java"


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

.field private mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mActivities:Ljava/util/Set;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onActivityPaused$0$ResumePauseActivityLifecycleListener(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->onPaused(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mResumed:Z

    return-void
.end method

.method protected onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    .line 40
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityPaused; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/util/activity/-$$Lambda$ResumePauseActivityLifecycleListener$7tqTc6qJhzTG1_84iLl08h9pnaM;

    invoke-direct {v1, p0, p1}, Lcom/applisto/appcloner/classes/util/activity/-$$Lambda$ResumePauseActivityLifecycleListener$7tqTc6qJhzTG1_84iLl08h9pnaM;-><init>(Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_33
    return-void
.end method

.method protected onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 26
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResumed; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mResumed:Z

    if-nez v0, :cond_30

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.applisto.appcloner.classes.PasswordActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 30
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->onResumed(Landroid/app/Activity;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mResumed:Z

    .line 34
    :cond_30
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;->mActivities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract onPaused(Landroid/content/Context;)V
.end method

.method protected abstract onResumed(Landroid/app/Activity;)V
.end method
