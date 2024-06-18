.class public Landhook/lib/xposed/XC_MethodHook;
.super Landhook/lib/xposed/callbacks/XCallback;
.source "XC_MethodHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/xposed/XC_MethodHook$Unhook;,
        Landhook/lib/xposed/XC_MethodHook$MethodHookParam;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landhook/lib/xposed/callbacks/XCallback;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landhook/lib/xposed/callbacks/XCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method protected beforeHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method
