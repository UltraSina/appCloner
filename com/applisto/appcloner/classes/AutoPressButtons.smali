.class public Lcom/applisto/appcloner/classes/AutoPressButtons;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewsFinder;,
        Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;,
        Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;,
        Lcom/applisto/appcloner/classes/AutoPressButtons$Info;
    }
.end annotation


# static fields
.field private static final KEY_TAG_DELAY_SECONDS:I = 0x14a7e9fb

.field private static final KEY_TAG_RUNNABLE:I = 0x14a7e9fc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoPressButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applisto/appcloner/classes/AutoPressButtons$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mReady:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 9

    .line 59
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    const-string v0, "autoPressButtons"

    .line 61
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 62
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoPressButtons; autoPressButtons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_aa

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_33
    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applisto/appcloner/classes/CloneSettings;

    const/4 v1, 0x0

    const-string v2, "buttonId"

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buttonLabel"

    .line 67
    invoke-virtual {v0, v3, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 69
    :cond_58
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;

    invoke-direct {v4, v1}, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons$1;)V

    const-string v5, "screenText"

    .line 72
    invoke-virtual {v0, v5, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 74
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->screenText:Ljava/lang/String;

    :cond_7f
    const-string v5, "delaySeconds"

    .line 76
    invoke-virtual {v0, v5, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->delaySeconds:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v5, "pressOnceOnly"

    invoke-virtual {v0, v5, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9f

    const/4 v0, 0x1

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->enabled:Ljava/lang/Boolean;

    .line 80
    :cond_9f
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 84
    :cond_aa
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoPressButtons; mAutoPressButtons: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized checkForButtons()V
    .registers 8

    monitor-enter p0

    .line 144
    :try_start_1
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "checkForButtons; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    if-nez v0, :cond_15

    .line 147
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "checkForButtons; not ready"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_b6

    .line 148
    monitor-exit p0

    return-void

    .line 152
    :cond_15
    :try_start_15
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getViewRoots()Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewParent;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_ae
    .catchall {:try_start_15 .. :try_end_29} :catchall_b6

    .line 156
    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 164
    new-instance v2, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;

    invoke-direct {v2, p0, v1}, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V

    .line 165
    invoke-virtual {v2}, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;->findViews()Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x14a7e9fb

    .line 167
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 168
    sget-object v4, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForButtons; button: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", delaySeconds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a2

    .line 170
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_86

    goto :goto_a2

    :cond_86
    const v4, 0x14a7e9fc

    .line 173
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4a

    .line 174
    new-instance v5, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$No7Vz19UzTa0qAUcAvMBrJNiYy0;

    invoke-direct {v5, p0, v2}, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$No7Vz19UzTa0qAUcAvMBrJNiYy0;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V

    .line 178
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 179
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4a

    .line 171
    :cond_a2
    :goto_a2
    invoke-direct {p0, v2}, Lcom/applisto/appcloner/classes/AutoPressButtons;->performClick(Landroid/view/View;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_a5} :catch_a6
    .catchall {:try_start_29 .. :try_end_a5} :catchall_b6

    goto :goto_4a

    :catch_a6
    move-exception v1

    .line 184
    :try_start_a7
    sget-object v2, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_ae
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_b6

    goto/16 :goto_1d

    :catch_ae
    move-exception v0

    .line 188
    :try_start_af
    sget-object v1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_b6

    .line 190
    :cond_b4
    monitor-exit p0

    return-void

    :catchall_b6
    move-exception v0

    monitor-exit p0

    goto :goto_ba

    :goto_b9
    throw v0

    :goto_ba
    goto :goto_b9
.end method

.method private performClick(Landroid/view/View;)V
    .registers 5

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, 0x14a7e9fb

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performClick; button clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 198
    :cond_2b
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performClick; button not clicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return-void
.end method


# virtual methods
.method protected getActivityTimerDelayMillis()I
    .registers 2

    const/16 v0, 0x1f4

    return v0
.end method

.method public install()V
    .registers 3

    .line 88
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 91
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->onCreate()Z

    :cond_12
    return-void
.end method

.method public synthetic lambda$checkForButtons$2$AutoPressButtons(Landroid/view/View;)V
    .registers 4

    .line 175
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/AutoPressButtons;->performClick(Landroid/view/View;)V

    const v0, 0x14a7e9fc

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$null$0$AutoPressButtons(Z)V
    .registers 3

    .line 105
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v0, "onWindowFocusChanged; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->checkForButtons()V

    return-void
.end method

.method public synthetic lambda$onActivityCreated$1$AutoPressButtons(Landroid/app/Activity;)V
    .registers 5

    const v0, 0x1020002

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 102
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run; rootView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_35

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$lIlimpYQIWc-cpThJE2A5QfdhKs;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$lIlimpYQIWc-cpThJE2A5QfdhKs;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    .line 109
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v0, "run; now ready"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 6

    .line 97
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_15

    .line 100
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;

    invoke-direct {v1, p0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/app/Activity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    return-void
.end method

.method protected onActivityTimer(Landroid/app/Activity;)V
    .registers 5

    .line 122
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityTimer; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->checkForButtons()V

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 4

    .line 129
    sget-object p1, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    const-string v0, "onAppExit; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 132
    :try_start_8
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mReady:Z

    .line 133
    iget-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons;->mAutoPressButtons:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;

    .line 134
    iget-object v1, v0, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->enabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->enabled:Ljava/lang/Boolean;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_2c

    goto :goto_14

    :catch_2c
    move-exception p1

    .line 139
    sget-object v0, Lcom/applisto/appcloner/classes/AutoPressButtons;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    return-void
.end method
