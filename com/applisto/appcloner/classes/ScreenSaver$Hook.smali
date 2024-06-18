.class public Lcom/applisto/appcloner/classes/ScreenSaver$Hook;
.super Ljava/lang/Object;
.source "ScreenSaver.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/ScreenSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook"
.end annotation


# static fields
.field static dispatchKeyEventBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "dispatchKeyEvent"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/view/KeyEvent;
        }
    .end annotation
.end field

.field static dispatchTouchEventBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "dispatchTouchEvent"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/view/MotionEvent;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchKeyEventHook(Ljava/lang/Object;Landroid/view/KeyEvent;)Z
    .registers 5
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "dispatchKeyEvent"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/view/KeyEvent;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$000()V

    .line 176
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver$Hook;->dispatchKeyEventBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static dispatchTouchEventHook(Ljava/lang/Object;Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "dispatchTouchEvent"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/view/MotionEvent;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->access$000()V

    .line 163
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver$Hook;->dispatchTouchEventBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
