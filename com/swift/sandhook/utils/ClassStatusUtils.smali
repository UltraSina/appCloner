.class public Lcom/swift/sandhook/utils/ClassStatusUtils;
.super Ljava/lang/Object;
.source "ClassStatusUtils.java"


# static fields
.field static fieldStatusOfClass:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/utils/ClassStatusUtils;->fieldStatusOfClass:Ljava/lang/reflect/Field;

    .line 17
    sget-object v0, Lcom/swift/sandhook/utils/ClassStatusUtils;->fieldStatusOfClass:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassStatus(Ljava/lang/Class;Z)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 28
    :cond_4
    :try_start_4
    sget-object v1, Lcom/swift/sandhook/utils/ClassStatusUtils;->fieldStatusOfClass:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_c

    :catchall_b
    nop

    :goto_c
    if-eqz p1, :cond_16

    .line 32
    invoke-static {v0}, Lcom/swift/sandhook/utils/ClassStatusUtils;->toUnsignedLong(I)J

    move-result-wide p0

    const/16 v0, 0x1c

    shr-long/2addr p0, v0

    long-to-int v0, p0

    :cond_16
    return v0
.end method

.method public static isInitialized(Ljava/lang/Class;)Z
    .registers 5

    .line 48
    sget-object v0, Lcom/swift/sandhook/utils/ClassStatusUtils;->fieldStatusOfClass:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 50
    :cond_6
    sget v0, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-lt v0, v2, :cond_18

    .line 51
    invoke-static {p0, v1}, Lcom/swift/sandhook/utils/ClassStatusUtils;->getClassStatus(Ljava/lang/Class;Z)I

    move-result p0

    const/16 v0, 0xe

    if-ne p0, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 52
    :cond_18
    sget v0, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_29

    .line 53
    invoke-static {p0, v3}, Lcom/swift/sandhook/utils/ClassStatusUtils;->getClassStatus(Ljava/lang/Class;Z)I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    return v1

    .line 55
    :cond_29
    invoke-static {p0, v3}, Lcom/swift/sandhook/utils/ClassStatusUtils;->getClassStatus(Ljava/lang/Class;Z)I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_32

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    return v1
.end method

.method public static isStaticAndNoInited(Ljava/lang/reflect/Member;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 60
    instance-of v1, p0, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_8

    goto :goto_1d

    .line 63
    :cond_8
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 64
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 65
    invoke-static {v1}, Lcom/swift/sandhook/utils/ClassStatusUtils;->isInitialized(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static toUnsignedLong(I)J
    .registers 5

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
