.class public Lcom/applisto/appcloner/classes/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static sEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->isDevDevice()Z

    move-result v0

    sput-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 29
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 34
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 35
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 64
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 69
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 74
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 39
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 40
    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 44
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 19
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 20
    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 24
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 25
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 49
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    .line 54
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 55
    :cond_6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    .line 59
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/Log;->sEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
