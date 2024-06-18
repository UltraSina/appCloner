.class public final Lcom/swift/sandhook/utils/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Unsafe"

.field private static arrayBaseOffsetMethod:Ljava/lang/reflect/Method; = null

.field private static arrayIndexScaleMethod:Ljava/lang/reflect/Method; = null

.field private static getIntMethod:Ljava/lang/reflect/Method; = null

.field private static getLongMethod:Ljava/lang/reflect/Method; = null

.field private static objectArrayClass:Ljava/lang/Class; = null

.field private static volatile supported:Z = false

.field private static unsafe:Ljava/lang/Object;

.field private static unsafeClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 39
    const-class v0, [Ljava/lang/Object;

    sput-object v0, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_6
    const-string v2, "sun.misc.Unsafe"

    .line 43
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    .line 44
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    const-string v3, "theUnsafe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_39

    .line 49
    :catch_20
    :try_start_20
    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    const-string v3, "THE_ONE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_32

    goto :goto_39

    :catch_32
    const-string v0, "Unsafe"

    const-string v2, "Unsafe not found o.O"

    .line 53
    invoke-static {v0, v2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_39
    sget-object v0, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    if-eqz v0, :cond_89

    .line 58
    :try_start_3d
    sget-object v0, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    const-string v2, "arrayBaseOffset"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffsetMethod:Ljava/lang/reflect/Method;

    .line 59
    sget-object v0, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    const-string v2, "arrayIndexScale"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/Unsafe;->arrayIndexScaleMethod:Ljava/lang/reflect/Method;

    .line 60
    sget-object v0, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/Unsafe;->getIntMethod:Ljava/lang/reflect/Method;

    .line 61
    sget-object v0, Lcom/swift/sandhook/utils/Unsafe;->unsafeClass:Ljava/lang/Class;

    const-string v2, "getLong"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/Unsafe;->getLongMethod:Ljava/lang/reflect/Method;

    .line 62
    sput-boolean v1, Lcom/swift/sandhook/utils/Unsafe;->supported:Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_89} :catch_89

    :catch_89
    :cond_89
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayBaseOffset(Ljava/lang/Class;)I
    .registers 5

    const/4 v0, 0x0

    .line 78
    :try_start_1
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffsetMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    return p0

    :catch_15
    return v0
.end method

.method public static arrayIndexScale(Ljava/lang/Class;)I
    .registers 5

    const/4 v0, 0x0

    .line 87
    :try_start_1
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->arrayIndexScaleMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    return p0

    :catch_15
    return v0
.end method

.method public static getInt(Ljava/lang/Object;J)I
    .registers 7

    const/4 v0, 0x0

    .line 96
    :try_start_1
    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->getIntMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    return v0
.end method

.method public static getLong(Ljava/lang/Object;J)J
    .registers 7

    .line 105
    :try_start_0
    sget-object v0, Lcom/swift/sandhook/utils/Unsafe;->getLongMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/swift/sandhook/utils/Unsafe;->unsafe:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-wide p0

    :catch_1c
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getObjectAddress(Ljava/lang/Object;)J
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 114
    sget-object p0, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    invoke-static {p0}, Lcom/swift/sandhook/utils/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1c

    .line 115
    sget-object p0, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    invoke-static {p0}, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/swift/sandhook/utils/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0

    :cond_1c
    const-wide v1, 0xffffffffL

    .line 117
    sget-object p0, Lcom/swift/sandhook/utils/Unsafe;->objectArrayClass:Ljava/lang/Class;

    invoke-static {p0}, Lcom/swift/sandhook/utils/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    int-to-long v3, p0

    invoke-static {v0, v3, v4}, Lcom/swift/sandhook/utils/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2f

    int-to-long v3, p0

    and-long/2addr v1, v3

    return-wide v1

    :catch_2f
    move-exception p0

    const-string v0, "get object address error"

    .line 120
    invoke-static {v0, p0}, Lcom/swift/sandhook/HookLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static support()Z
    .registers 1

    .line 69
    sget-boolean v0, Lcom/swift/sandhook/utils/Unsafe;->supported:Z

    return v0
.end method
