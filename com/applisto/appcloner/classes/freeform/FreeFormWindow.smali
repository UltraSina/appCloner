.class public Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;
.super Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;
.source "FreeFormWindow.java"


# static fields
.field public static final PREF_KEY_FREE_FORM_WINDOW_BOTTOM:Ljava/lang/String; = "free_form_window_bottom"

.field public static final PREF_KEY_FREE_FORM_WINDOW_LEFT:Ljava/lang/String; = "free_form_window_left"

.field public static final PREF_KEY_FREE_FORM_WINDOW_RIGHT:Ljava/lang/String; = "free_form_window_right"

.field public static final PREF_KEY_FREE_FORM_WINDOW_TOP:Ljava/lang/String; = "free_form_window_top"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ActivityLifecycleListener;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->onCreate()Z

    return-void
.end method

.method private getActivityBounds(Landroid/app/Activity;)Landroid/graphics/Rect;
    .registers 6

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 77
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 78
    aget v0, v0, v2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 81
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v2, v1

    add-int/2addr p1, v0

    invoke-direct {v3, v1, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v3

    :catch_24
    move-exception p1

    .line 83
    sget-object v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private saveActivityBounds(Landroid/app/Activity;)V
    .registers 6

    .line 41
    sget-object v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveActivityBounds; activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.applisto.appcloner.classes"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 50
    :cond_27
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->getActivityBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_76

    .line 55
    :cond_34
    sget-object v1, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveActivityBounds; rect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "free_form_window_left"

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 60
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "free_form_window_top"

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 61
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "free_form_window_right"

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 62
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "free_form_window_bottom"

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 63
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_75} :catch_77

    goto :goto_7d

    :cond_76
    :goto_76
    return-void

    :catch_77
    move-exception p1

    .line 67
    sget-object v0, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7d
    return-void
.end method


# virtual methods
.method protected onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->saveActivityBounds(Landroid/app/Activity;)V

    return-void
.end method

.method protected onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/freeform/FreeFormWindow;->saveActivityBounds(Landroid/app/Activity;)V

    return-void
.end method
