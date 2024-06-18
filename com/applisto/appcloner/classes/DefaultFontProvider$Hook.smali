.class public Lcom/applisto/appcloner/classes/DefaultFontProvider$Hook;
.super Ljava/lang/Object;
.source "DefaultFontProvider.java"


# annotations
.annotation runtime Lcom/swift/sandhook/annotation/HookReflectClass;
    value = "android.graphics.Paint"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/DefaultFontProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Hook"
.end annotation


# static fields
.field static setTypefaceBackup:Ljava/lang/reflect/Method;
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethodBackup;
        value = "setTypeface"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/graphics/Typeface;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTypefaceHook(Ljava/lang/Object;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 6
    .annotation runtime Lcom/swift/sandhook/annotation/HookMethod;
        value = "setTypeface"
    .end annotation

    .annotation runtime Lcom/swift/sandhook/annotation/MethodParams;
        value = {
            Landroid/graphics/Typeface;
        }
    .end annotation

    .line 82
    :try_start_0
    sget-object v0, Lcom/applisto/appcloner/classes/DefaultFontProvider$Hook;->setTypefaceBackup:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/applisto/appcloner/classes/DefaultFontProvider;->access$000()Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/applisto/appcloner/hooking/Hooking;->callInstanceOrigin(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/applisto/appcloner/classes/DefaultFontProvider;->access$000()Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-object p0

    :catchall_14
    move-exception p0

    .line 85
    invoke-static {}, Lcom/applisto/appcloner/classes/DefaultFontProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
