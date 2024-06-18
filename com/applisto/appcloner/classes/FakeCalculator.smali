.class public Lcom/applisto/appcloner/classes/FakeCalculator;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "FakeCalculator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/applisto/appcloner/classes/FakeCalculator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    return-void
.end method


# virtual methods
.method public install()V
    .registers 3

    .line 23
    sget-object v0, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/FakeCalculator;->onCreate()Z

    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 4

    .line 30
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 32
    instance-of v0, p1, Lcom/applisto/appcloner/classes/CalculatorActivity;

    if-nez v0, :cond_2f

    instance-of v0, p1, Lcom/applisto/appcloner/classes/SplashScreenActivity;

    if-eqz v0, :cond_c

    goto :goto_2f

    .line 37
    :cond_c
    sget-boolean v0, Lcom/applisto/appcloner/classes/CalculatorActivity;->sUnlocked:Z

    if-nez v0, :cond_27

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 41
    sget-object p1, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; started CalculatorActivity"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 43
    :cond_27
    sget-object p1, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; already unlocked"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void

    .line 33
    :cond_2f
    :goto_2f
    sget-object p1, Lcom/applisto/appcloner/classes/FakeCalculator;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated; ignoring"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 2

    const/4 p1, 0x0

    .line 49
    sput-boolean p1, Lcom/applisto/appcloner/classes/CalculatorActivity;->sUnlocked:Z

    return-void
.end method
