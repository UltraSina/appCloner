.class Lcom/applisto/appcloner/classes/DisableClipboardAccess;
.super Ljava/lang/Object;
.source "DisableClipboardAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/DisableClipboardAccess$ClearClipboardReceiver;,
        Lcom/applisto/appcloner/classes/DisableClipboardAccess$Hook2;,
        Lcom/applisto/appcloner/classes/DisableClipboardAccess$Hook1;
    }
.end annotation


# static fields
.field private static final CLEAR_CLIPBOARD_TIMEOUT_MILLIS:I = 0x7530

.field private static final EMPTY_CLIP_DATA:Landroid/content/ClipData;

.field private static final TAG:Ljava/lang/String;

.field private static sClearingClipDataToString:Ljava/lang/String;

.field private static sClipData:Landroid/content/ClipData;

.field private static sClipboardTimeout:Z

.field private static sContext:Landroid/content/Context;

.field private static sDisableClipboardReadAccess:Z

.field private static sDisableClipboardWriteAccess:Z

.field private static sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersistentClipboard:Z

.field private static sPreferences:Landroid/content/SharedPreferences;

.field private static sPrivateClipboard:Z

.field private static sStringsProperties:Ljava/util/Properties;

.field private static sTimeoutHandler:Landroid/os/Handler;


# instance fields
.field private mSetClipboardDataOnStart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-class v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sListeners:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sTimeoutHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 68
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    return-void
.end method

.method constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "privateClipboard"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPrivateClipboard:Z

    .line 74
    sget-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPrivateClipboard:Z

    if-eqz v1, :cond_25

    const-string v1, "persistentClipboard"

    .line 75
    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPersistentClipboard:Z

    goto :goto_3d

    :cond_25
    const-string v1, "disableClipboardReadAccess"

    .line 77
    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardReadAccess:Z

    const-string v1, "disableClipboardWriteAccess"

    .line 78
    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardWriteAccess:Z

    :goto_3d
    const-string v1, "clipboardTimeout"

    .line 80
    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipboardTimeout:Z

    const-string v0, "setClipboardDataOnStart"

    const-string v1, ""

    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->mSetClipboardDataOnStart:Ljava/lang/String;

    .line 83
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableClipboardAccess; mPrivateClipboard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPrivateClipboard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPersistentClipboard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPersistentClipboard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisableClipboardReadAccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardReadAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisableClipboardWriteAccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardWriteAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mClipboardTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipboardTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 45
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/ClipboardManager;)V
    .registers 1

    .line 45
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->installAndroidClipboardManagerHook(Landroid/content/ClipboardManager;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;)V
    .registers 1

    .line 45
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->installSamsungClipboardManagerHook(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->clearClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static clearClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 379
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "clearClipboard; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const-string v0, "clipboard"

    .line 383
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 386
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "clearClipboard; clearing clipboard"

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 388
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sStringsProperties:Ljava/util/Properties;

    const-string v0, "clipboard_timeout_cleared_message"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_55

    .line 390
    :cond_47
    sget-object p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string p1, "clearClipboard; not clearing clipboard; found other clip data"

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception p0

    .line 393
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_55
    return-void
.end method

.method private static cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 443
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 445
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 446
    const-class p0, Landroid/content/ClipData;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_21

    if-eqz v0, :cond_20

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_20
    return-object p0

    :catchall_21
    move-exception p0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    :cond_27
    throw p0
.end method

.method private static installAndroidClipboardManagerHook(Landroid/content/ClipboardManager;)V
    .registers 10

    const-string v0, "sService"

    const-string v1, "mService"

    .line 158
    sget-object v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installAndroidClipboardManagerHook; clipboardManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 164
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 166
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1c .. :try_end_2b} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2c

    goto :goto_3d

    :catch_2c
    move-exception p0

    goto :goto_82

    .line 168
    :catch_2e
    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 174
    :goto_3d
    new-instance v5, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$jboIqPywk0o46sztNpKo4f9FKuQ;

    invoke-direct {v5, p0, v4}, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$jboIqPywk0o46sztNpKo4f9FKuQ;-><init>(Landroid/content/ClipboardManager;Ljava/lang/Object;)V

    const-string v4, "android.content.IClipboard"

    .line 274
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 275
    const-class v6, Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 278
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_6c

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 281
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7a

    .line 283
    :cond_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 284
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 285
    invoke-virtual {p0, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    :goto_7a
    sget-object p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v0, "installClipboardManagerHook; installed proxy"

    invoke-static {p0, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_81} :catch_2c

    goto :goto_87

    .line 290
    :goto_82
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_87
    return-void
.end method

.method private static installSamsungClipboardManagerHook(Ljava/lang/Object;)V
    .registers 7

    .line 296
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installSamsungClipboardManagerHook; semClipboardManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 301
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    sget-object v3, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installSamsungClipboardManagerHook; originalService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v3, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$Owl4Jdj5hx0_3abwcv8tL8eRy8Y;

    invoke-direct {v3, v0}, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$Owl4Jdj5hx0_3abwcv8tL8eRy8Y;-><init>(Ljava/lang/Object;)V

    const-string v0, "android.sec.clipboard.IClipboardService"

    .line 314
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 315
    const-class v4, Lcom/applisto/appcloner/classes/DisableClipboardAccess;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v0, v5, v2

    invoke-static {v4, v5, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v2, "sService"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 319
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    sget-object p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v0, "installSamsungClipboardManagerHook; installed proxy"

    invoke-static {p0, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_74} :catch_75

    goto :goto_7b

    :catch_75
    move-exception p0

    .line 325
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7b
    return-void
.end method

.method static synthetic lambda$installAndroidClipboardManagerHook$0(Landroid/content/ClipboardManager;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p4

    .line 176
    sget-boolean v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPrivateClipboard:Z

    const-string v3, "removePrimaryClipChangedListener"

    const-string v4, "addPrimaryClipChangedListener"

    const-string v5, "getPrimaryClip"

    const-string v6, "getPrimaryClipDescription"

    const-string v7, "hasPrimaryClip"

    const-string v8, "hasClipboardText"

    const-string v9, "setPrimaryClip"

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    if-eqz v2, :cond_11a

    .line 177
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_39

    .line 178
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; hasClipboardText; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_34

    const/4 v12, 0x1

    :cond_34
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 181
    :cond_39
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 182
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; hasPrimaryClip; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_4f

    const/4 v12, 0x1

    :cond_4f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 185
    :cond_54
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 186
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; getPrimaryClipDescription; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_72

    .line 188
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-static {v0}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 190
    :cond_72
    new-instance v0, Landroid/content/ClipDescription;

    new-array v1, v12, [Ljava/lang/String;

    invoke-direct {v0, v10, v1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-object v0

    .line 193
    :cond_7a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 194
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; getPrimaryClip; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_94

    .line 196
    invoke-static {v0}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 198
    :cond_94
    new-instance v0, Landroid/content/ClipData;

    new-array v1, v12, [Ljava/lang/String;

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, v10}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v10, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v0

    .line 201
    :cond_a1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 202
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v2, "invoke; addPrimaryClipChangedListener; "

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    aget-object v0, v0, v12

    check-cast v0, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 205
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v11

    .line 208
    :cond_bc
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 209
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v2, "invoke; removePrimaryClipChangedListener; "

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    aget-object v0, v0, v12

    check-cast v0, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 212
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object v11

    .line 215
    :cond_d7
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 216
    sget-object v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v3, "invoke; setPrimaryClip; "

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    aget-object v0, v0, v12

    move-object v2, v0

    check-cast v2, Landroid/content/ClipData;

    .line 218
    invoke-static {v2}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->cloneParcelable(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    sput-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    .line 219
    invoke-static {}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->saveClipboardIfPersistent()V

    .line 220
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .line 222
    :try_start_10a
    invoke-interface {v0}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_10d} :catch_10e

    goto :goto_fe

    :catch_10e
    move-exception v0

    move-object v4, v0

    .line 224
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fe

    .line 227
    :cond_116
    invoke-static {p0, v2}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V

    return-object v11

    .line 232
    :cond_11a
    sget-boolean v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardReadAccess:Z

    if-eqz v2, :cond_191

    .line 233
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_130

    .line 234
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; hasClipboardText; disabled clipboard read access"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 237
    :cond_130
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 238
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; hasPrimaryClip; disabled clipboard read access"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 241
    :cond_142
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 242
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; getPrimaryClipDescription; disabled clipboard read access"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Landroid/content/ClipDescription;

    new-array v1, v12, [Ljava/lang/String;

    invoke-direct {v0, v10, v1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    return-object v0

    .line 245
    :cond_15b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 246
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; getPrimaryClip; disabled clipboard read access"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 249
    :cond_16d
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 250
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; addPrimaryClipChangedListener; disabled clipboard read access"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 253
    :cond_17f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_191

    .line 254
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; removePrimaryClipChangedListener; disabled clipboard read access"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 259
    :cond_191
    sget-boolean v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardWriteAccess:Z

    if-eqz v2, :cond_1a7

    .line 260
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bc

    .line 261
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "invoke; setPrimaryClip; disabled clipboard write access"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 264
    :cond_1a7
    sget-boolean v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipboardTimeout:Z

    if-eqz v2, :cond_1bc

    .line 265
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 266
    aget-object v2, v0, v12

    check-cast v2, Landroid/content/ClipData;

    .line 267
    invoke-static {p0, v2}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V

    :cond_1bc
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 271
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$installSamsungClipboardManagerHook$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 307
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "isEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p0, 0x0

    .line 308
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 311
    :cond_12
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$startClipboardTimeout$2(Landroid/content/ClipboardManager;)V
    .registers 7

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClearingClipDataToString:Ljava/lang/String;

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 344
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 345
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sContext:Landroid/content/Context;

    const-class v4, Lcom/applisto/appcloner/classes/DisableClipboardAccess$ClearClipboardReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    sget-object v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    sget-object v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClearingClipDataToString:Ljava/lang/String;

    const-string v3, "expected_clip_data_to_string"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    sget-object v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sContext:Landroid/content/Context;

    long-to-int v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, p0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 350
    sget-object v2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 351
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_5b

    .line 352
    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_68

    .line 353
    :cond_5b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_65

    .line 354
    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_68

    .line 356
    :cond_65
    invoke-virtual {v2, v4, v0, v1, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_68
    return-void
.end method

.method static synthetic lambda$startClipboardTimeout$3()V
    .registers 2

    .line 360
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClearingClipDataToString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->clearClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static loadClipboardIfPersistent()V
    .registers 4

    .line 399
    sget-boolean v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPersistentClipboard:Z

    if-eqz v0, :cond_46

    .line 401
    :try_start_4
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPreferences:Landroid/content/SharedPreferences;

    const-string v1, "persistent_clip_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 403
    new-instance v1, Lcom/applisto/appcloner/classes/util/SimpleCrypt;

    const-string v2, "gvdshfjry8wehu43"

    invoke-direct {v1, v2}, Lcom/applisto/appcloner/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/applisto/appcloner/classes/util/SimpleCrypt;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 404
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 406
    array-length v3, v0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 407
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 408
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    sput-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    .line 409
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "saveClipboardIfPersistent; clipboard loaded"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3f} :catch_40

    goto :goto_46

    :catch_40
    move-exception v0

    .line 412
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    :goto_46
    return-void
.end method

.method private static saveClipboardIfPersistent()V
    .registers 3

    .line 419
    sget-boolean v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPersistentClipboard:Z

    if-eqz v0, :cond_43

    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_43

    .line 421
    :try_start_8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipData:Landroid/content/ClipData;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 424
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/applisto/appcloner/classes/util/SimpleCrypt;

    const-string v2, "gvdshfjry8wehu43"

    invoke-direct {v1, v2}, Lcom/applisto/appcloner/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/applisto/appcloner/classes/util/SimpleCrypt;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "persistent_clip_data"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "saveClipboardIfPersistent; clipboard saved"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception v0

    .line 429
    sget-object v1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    return-void
.end method

.method private static startClipboardTimeout(Landroid/content/ClipboardManager;Landroid/content/ClipData;)V
    .registers 5

    .line 333
    :try_start_0
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->EMPTY_CLIP_DATA:Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 334
    sget-object p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string p1, "startClipboardTimeout; empty clip data"

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_10
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$qtrBF8BgD68mRy5e7pcrXJ7DjMA;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$qtrBF8BgD68mRy5e7pcrXJ7DjMA;-><init>(Landroid/content/ClipboardManager;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    sget-object p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sTimeoutHandler:Landroid/os/Handler;

    sget-object p1, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;->INSTANCE:Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$LcZv2Dm7xdFFqUJlZAKJLyma5zQ;

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    sget-object p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string p1, "startClipboardTimeout; started clipboard timeout"

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    goto :goto_39

    :catchall_33
    move-exception p0

    .line 365
    sget-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    return-void
.end method


# virtual methods
.method public install(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 5

    .line 92
    sget-object v0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sput-object p1, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sContext:Landroid/content/Context;

    .line 95
    sput-object p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sStringsProperties:Ljava/util/Properties;

    .line 97
    sget-boolean p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardReadAccess:Z

    if-nez p2, :cond_1b

    sget-boolean p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sDisableClipboardWriteAccess:Z

    if-nez p2, :cond_1b

    sget-boolean p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPrivateClipboard:Z

    if-nez p2, :cond_1b

    sget-boolean p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sClipboardTimeout:Z

    if-eqz p2, :cond_38

    .line 99
    :cond_1b
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->sPreferences:Landroid/content/SharedPreferences;

    .line 101
    invoke-static {}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->loadClipboardIfPersistent()V

    .line 103
    invoke-static {p1}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 104
    const-class p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess$Hook1;

    invoke-static {p2}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 105
    const-class p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess$Hook2;

    invoke-static {p2}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 106
    sget-object p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    const-string v0, "install; hooks installed"

    invoke-static {p2, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_38
    iget-object p2, p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->mSetClipboardDataOnStart:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5a

    :try_start_40
    const-string p2, "clipboard"

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string p2, ""

    .line 113
    iget-object v0, p0, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->mSetClipboardDataOnStart:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    move-exception p1

    .line 115
    sget-object p2, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5a
    :goto_5a
    return-void
.end method
