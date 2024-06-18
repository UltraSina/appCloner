.class public abstract Landhook/lib/xposed/XC_MethodReplacement;
.super Landhook/lib/xposed/XC_MethodHook;
.source "XC_MethodReplacement.java"


# static fields
.field public static final DO_NOTHING:Landhook/lib/xposed/XC_MethodReplacement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Landhook/lib/xposed/XC_MethodReplacement$1;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Landhook/lib/xposed/XC_MethodReplacement$1;-><init>(I)V

    sput-object v0, Landhook/lib/xposed/XC_MethodReplacement;->DO_NOTHING:Landhook/lib/xposed/XC_MethodReplacement;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landhook/lib/xposed/XC_MethodHook;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Landhook/lib/xposed/XC_MethodHook;-><init>(I)V

    return-void
.end method

.method public static returnConstant(ILjava/lang/Object;)Landhook/lib/xposed/XC_MethodReplacement;
    .registers 3

    .line 81
    new-instance v0, Landhook/lib/xposed/XC_MethodReplacement$2;

    invoke-direct {v0, p0, p1}, Landhook/lib/xposed/XC_MethodReplacement$2;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static returnConstant(Ljava/lang/Object;)Landhook/lib/xposed/XC_MethodReplacement;
    .registers 2

    const/16 v0, 0x32

    .line 71
    invoke-static {v0, p0}, Landhook/lib/xposed/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Landhook/lib/xposed/XC_MethodReplacement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final afterHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method protected final beforeHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Landhook/lib/xposed/XC_MethodReplacement;->replaceHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    .line 31
    invoke-virtual {p1, v0}, Landhook/lib/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :goto_c
    return-void
.end method

.method protected abstract replaceHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
