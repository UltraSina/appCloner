.class public Lcom/swift/sandhook/SandHookMethodResolver;
.super Ljava/lang/Object;
.source "SandHookMethodResolver.java"


# static fields
.field public static artMethodField:Ljava/lang/reflect/Field; = null

.field public static canResolvedInJava:Z = false

.field public static dexCacheField:Ljava/lang/reflect/Field; = null

.field public static dexMethodIndex:I = 0x0

.field public static dexMethodIndexField:Ljava/lang/reflect/Field; = null

.field public static entryPointFromCompiledCode:J = 0x0L

.field public static entryPointFromInterpreter:J = 0x0L

.field public static fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field; = null

.field public static fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field; = null

.field public static isArtMethod:Z = false

.field public static resolvedMethodsAddress:J

.field public static resolvedMethodsField:Ljava/lang/reflect/Field;

.field public static testArtMethod:Ljava/lang/Object;

.field public static testMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSupport()V
    .registers 2

    .line 39
    :try_start_0
    const-class v0, Ljava/lang/reflect/Method;

    const-string v1, "artMethod"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    .line 41
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    .line 43
    invoke-static {}, Lcom/swift/sandhook/SandHook;->hasJavaArtMethod()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_2b

    .line 44
    invoke-static {}, Lcom/swift/sandhook/SandHookMethodResolver;->checkSupportForArtMethod()V

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->isArtMethod:Z

    goto :goto_3a

    .line 46
    :cond_2b
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 47
    invoke-static {}, Lcom/swift/sandhook/SandHookMethodResolver;->checkSupportForArtMethodId()V

    .line 48
    sput-boolean v1, Lcom/swift/sandhook/SandHookMethodResolver;->isArtMethod:Z

    goto :goto_3a

    .line 50
    :cond_38
    sput-boolean v1, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    :goto_3a
    return-void
.end method

.method private static checkSupportForArtMethod()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    :try_start_0
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    const-string v1, "dexMethodIndex"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;
    :try_end_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_15

    .line 73
    :catch_b
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    const-string v1, "methodDexIndex"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    .line 75
    :goto_15
    const-class v0, Ljava/lang/Class;

    const-string v1, "dexCache"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    .line 76
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "resolvedMethods"

    invoke-static {v1, v2}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    .line 78
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    .line 79
    sput-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    .line 83
    :cond_44
    :try_start_44
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndex:I
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_54

    .line 87
    :catchall_54
    :try_start_54
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    const-string v1, "entryPointFromQuickCompiledCode"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5f

    goto :goto_69

    .line 89
    :catchall_5f
    :try_start_5f
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    const-string v1, "entryPointFromCompiledCode"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    .line 91
    :goto_69
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7f

    .line 92
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromCompiledCode:J

    goto :goto_93

    .line 93
    :cond_7f
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_93

    .line 94
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromCompiledCode:J

    .line 96
    :cond_93
    :goto_93
    sget-object v0, Lcom/swift/sandhook/SandHook;->artMethodClass:Ljava/lang/Class;

    const-string v1, "entryPointFromInterpreter"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

    .line 97
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_b3

    .line 98
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromInterpreter:J

    goto :goto_c7

    .line 99
    :cond_b3
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromCompiledCode:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_c7

    .line 100
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->fieldEntryPointFromInterpreter:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testArtMethod:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->entryPointFromInterpreter:J
    :try_end_c7
    .catchall {:try_start_5f .. :try_end_c7} :catchall_c7

    :catchall_c7
    :cond_c7
    :goto_c7
    return-void
.end method

.method private static checkSupportForArtMethodId()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    const-class v0, Ljava/lang/reflect/Method;

    const-string v1, "dexMethodIndex"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    .line 109
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndex:I

    .line 110
    const-class v0, Ljava/lang/Class;

    const-string v1, "dexCache"

    invoke-static {v0, v1}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    .line 111
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "resolvedMethods"

    invoke-static {v1, v2}, Lcom/swift/sandhook/SandHook;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    .line 113
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    .line 115
    sput-boolean v1, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    .line 116
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsAddress:J

    goto :goto_60

    .line 117
    :cond_52
    instance-of v1, v0, [J

    const/4 v2, 0x1

    if-eqz v1, :cond_5a

    .line 119
    sput-boolean v2, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    goto :goto_60

    .line 120
    :cond_5a
    instance-of v0, v0, [I

    if-eqz v0, :cond_60

    .line 122
    sput-boolean v2, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    :cond_60
    :goto_60
    return-void
.end method

.method public static getArtMethod(Ljava/lang/reflect/Member;)J
    .registers 4

    .line 58
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    return-wide v1

    .line 61
    :cond_7
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_11} :catch_12

    return-wide v0

    :catch_12
    return-wide v1
.end method

.method public static init()V
    .registers 1

    .line 33
    sget-object v0, Lcom/swift/sandhook/SandHook;->testOffsetMethod1:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->testMethod:Ljava/lang/reflect/Method;

    .line 34
    invoke-static {}, Lcom/swift/sandhook/SandHookMethodResolver;->checkSupport()V

    return-void
.end method

.method private static resolveInJava(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 143
    sget-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->isArtMethod:Z

    if-eqz v0, :cond_2d

    .line 144
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 145
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 147
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aput-object p1, p0, v0

    goto :goto_74

    .line 149
    :cond_2d
    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->dexMethodIndexField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->resolvedMethodsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 151
    instance-of v1, p0, [J

    if-eqz v1, :cond_56

    .line 152
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 153
    check-cast p0, [J

    check-cast p0, [J

    aput-wide v1, p0, v0

    goto :goto_74

    .line 154
    :cond_56
    instance-of v1, p0, [I

    if-eqz v1, :cond_75

    .line 155
    sget-object v1, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    .line 156
    check-cast p0, [I

    check-cast p0, [I

    aput p1, p0, v0

    :goto_74
    return-void

    .line 158
    :cond_75
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "un support"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static resolveInNative(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 2

    .line 164
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHook;->ensureMethodCached(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static resolveMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 127
    sget-boolean v0, Lcom/swift/sandhook/SandHookMethodResolver;->canResolvedInJava:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/swift/sandhook/SandHookMethodResolver;->artMethodField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_10

    .line 130
    :try_start_8
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveInJava(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_13

    .line 133
    :catch_c
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveInNative(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 137
    :cond_10
    invoke-static {p0, p1}, Lcom/swift/sandhook/SandHookMethodResolver;->resolveInNative(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_13
    return-void
.end method
