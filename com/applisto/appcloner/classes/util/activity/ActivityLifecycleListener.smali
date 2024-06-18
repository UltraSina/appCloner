.class public abstract Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.super Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;
.source "ActivityLifecycleListener.java"


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

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/AbstractContentProvider;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->mActivities:Ljava/util/Set;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$1;-><init>(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Ljava/util/Set;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->mActivities:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 21
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Landroid/os/Handler;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)Ljava/lang/Runnable;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .registers 2

    const/16 v0, 0xbb8

    return v0
.end method

.method protected getActivityTimerInitialDelayMillis()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getRootView(Landroid/app/Activity;)Landroid/view/View;
    .registers 2

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method protected onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method protected onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method protected onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method protected onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method protected onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onCreate()Z
    .registers 3

    .line 87
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 90
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;->onInit(Landroid/app/Application;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 91
    new-instance v1, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener$2;-><init>(Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method protected onInit(Landroid/app/Application;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
