.class public final Landhook/lib/AndHook;
.super Ljava/lang/Object;
.source "AndHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landhook/lib/AndHook$Dalvik;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "AK"

.field public static final LOG_TAG:Ljava/lang/String; = "AndHook"

.field private static final PREF_KEY_MODDING_OPTIONS_WARNING_SHOWN:Ljava/lang/String; = "modding_options_warning_shown"

.field public static final VERSION:Ljava/lang/String; = "3.6.2"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public static native backup(Ljava/lang/reflect/Member;)I
.end method

.method public static native deoptimizeMethod(Ljava/lang/reflect/Member;)V
.end method

.method public static native disableLogging(Z)V
.end method

.method public static dumpClassMethods(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, v0}, Landhook/lib/AndHook;->dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static native dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public static dumpClassMethods(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 184
    invoke-static {v0, p0}, Landhook/lib/AndHook;->dumpClassMethods(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static native enableFastDexLoad(Z)V
.end method

.method public static ensureClassInitialized(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_16

    .line 165
    :cond_11
    invoke-static {p0}, Landhook/lib/AndHook;->initializeClass(Ljava/lang/Class;)Z

    move-result p0

    return p0

    .line 161
    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interface or abstract class `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "` cannot be initialized!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AndHook"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static ensureNativeLibraryLoaded(Ljava/io/File;)V
    .registers 14

    const-string v0, "modding_options_warning_shown"

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_95

    .line 31
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ensureNativeLibraryLoaded; Android 10 not supported"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_f
    const-string p0, "android.app.ActivityThread"

    .line 35
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2f

    const-string v1, "currentApplication"

    new-array v2, v4, [Ljava/lang/Class;

    .line 37
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v4, [Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    goto :goto_71

    .line 41
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v2, :cond_71

    aget-object v6, v1, v5

    const-string v7, "currentActivityThread"

    .line 42
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    new-array v7, v4, [Ljava/lang/Object;

    .line 43
    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 44
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_51
    if-ge v9, v8, :cond_6e

    aget-object v10, v7, v9

    const-string v11, "getApplication"

    .line 45
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    new-array p0, v4, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v10, v6, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    goto :goto_71

    :cond_6b
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    :cond_6e
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_71
    :goto_71
    if-eqz v3, :cond_94

    const-string p0, "com.applisto.appcloner.classes"

    .line 54
    invoke-virtual {v3, p0, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 56
    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_94

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "One or more enabled modding options are no longer supported on Android 10."

    .line 58
    invoke-static {v3, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_94
    .catchall {:try_start_f .. :try_end_94} :catchall_94

    :catchall_94
    :cond_94
    return-void

    .line 68
    :cond_95
    :try_start_95
    invoke-static {}, Landhook/lib/AndHook;->getVersionInfo()Ljava/lang/String;
    :try_end_98
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_95 .. :try_end_98} :catch_99

    return-void

    .line 74
    :catch_99
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    const-string v2, "/data/local/tmp/"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v1

    if-nez v1, :cond_c8

    .line 77
    :cond_b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing cache directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndHook"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    if-nez p0, :cond_d0

    :try_start_ca
    const-string v0, "AK"

    .line 81
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_f6

    .line 83
    :cond_d0
    new-instance v0, Ljava/io/File;

    const-string v1, "libAK.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_ca .. :try_end_de} :catch_df

    goto :goto_f6

    :catch_df
    move-exception v0

    if-nez p0, :cond_e8

    :try_start_e2
    const-string p0, "AKCompat"

    .line 90
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_f6

    .line 92
    :cond_e8
    new-instance v1, Ljava/io/File;

    const-string v2, "libAKCompat.so"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e2 .. :try_end_f6} :catch_f7

    :goto_f6
    return-void

    .line 96
    :catch_f7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible platform "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_111

    :goto_110
    throw p0

    :goto_111
    goto :goto_110
.end method

.method public static native getVersionInfo()Ljava/lang/String;
.end method

.method public static hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 127
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->backup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 129
    invoke-static {p0, p1, p2, p3, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 v0, -0x1

    :cond_e
    return v0
.end method

.method public static hook(Ljava/lang/reflect/Member;Ljava/lang/Object;)I
    .registers 4

    .line 117
    invoke-static {p0}, Landhook/lib/AndHook;->backup(Ljava/lang/reflect/Member;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 119
    invoke-static {p0, p1, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 v0, -0x1

    :cond_e
    return v0
.end method

.method public static native hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation
.end method

.method public static native hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z
.end method

.method public static hookNoBackup(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 141
    invoke-static {p0, p1, p2, p3, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z

    return-void
.end method

.method public static hookNoBackup(Ljava/lang/reflect/Member;Ljava/lang/Object;)V
    .registers 3

    const/4 v0, -0x1

    .line 136
    invoke-static {p0, p1, v0}, Landhook/lib/AndHook;->hook(Ljava/lang/reflect/Member;Ljava/lang/Object;I)Z

    return-void
.end method

.method private static native initializeClass(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public static varargs native invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static varargs invokeBooleanMethod(ILjava/lang/Object;[Ljava/lang/Object;)Z
    .registers 5

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 202
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeBooleanMethod(ILjava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 204
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static varargs invokeByteMethod(ILjava/lang/Object;[Ljava/lang/Object;)B
    .registers 5

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 211
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeByteMethod(ILjava/lang/Object;[Ljava/lang/Object;)B

    move-result p0

    return p0

    .line 213
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public static varargs invokeCharMethod(ILjava/lang/Object;[Ljava/lang/Object;)C
    .registers 5

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 229
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeCharMethod(ILjava/lang/Object;[Ljava/lang/Object;)C

    move-result p0

    return p0

    .line 231
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method public static varargs invokeDoubleMethod(ILjava/lang/Object;[Ljava/lang/Object;)D
    .registers 5

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 265
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeDoubleMethod(ILjava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0

    .line 267
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs invokeFloatMethod(ILjava/lang/Object;[Ljava/lang/Object;)F
    .registers 5

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 256
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeFloatMethod(ILjava/lang/Object;[Ljava/lang/Object;)F

    move-result p0

    return p0

    .line 258
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static varargs invokeIntMethod(ILjava/lang/Object;[Ljava/lang/Object;)I
    .registers 5

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 238
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeIntMethod(ILjava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 240
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static varargs invokeLongMethod(ILjava/lang/Object;[Ljava/lang/Object;)J
    .registers 5

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 247
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeLongMethod(ILjava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    .line 249
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static varargs invokeMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 297
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeObjectMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 275
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeObjectMethod(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 277
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeShortMethod(ILjava/lang/Object;[Ljava/lang/Object;)S
    .registers 5

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    .line 220
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeShortMethod(ILjava/lang/Object;[Ljava/lang/Object;)S

    move-result p0

    return p0

    .line 222
    :cond_b
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public static varargs invokeVoidMethod(ILjava/lang/Object;[Ljava/lang/Object;)V
    .registers 5

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_a

    .line 193
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook$Dalvik;->invokeVoidMethod(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_d

    .line 195
    :cond_a
    invoke-static {p0, p1, p2}, Landhook/lib/AndHook;->invoke(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void
.end method

.method public static native jitCompile(Ljava/lang/reflect/Member;)V
.end method

.method public static native optimizeMethod(Ljava/lang/reflect/Member;)V
.end method

.method public static native restore(ILjava/lang/reflect/Member;)Z
.end method

.method public static native resumeAll()V
.end method

.method public static native startDaemons()V
.end method

.method public static native stopDaemons()V
.end method

.method public static native suspendAll()Z
.end method
