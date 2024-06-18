.class public Lcom/applisto/appcloner/classes/CloneSettings;
.super Ljava/lang/Object;
.source "CloneSettings.java"


# static fields
.field public static final PREF_KEY_CLONE_TIMESTAMP:Ljava/lang/String; = "com.applisto.appcloner.classes.cloneTimestamp"

.field private static final TAG:Ljava/lang/String;

.field private static sCloneSettings:Lcom/applisto/appcloner/classes/CloneSettings;


# instance fields
.field private mCloneSettingsFile:Ljava/io/File;

.field private mJsonObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/applisto/appcloner/classes/CloneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/CloneSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-string v0, "com.applisto.appcloner.classes.cloneTimestamp"

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    .line 83
    :try_start_c
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "cloneSettings.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 86
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 88
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.applisto.appcloner.originalCloneTimestamp"

    .line 91
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    const-string v2, "com.applisto.appcloner.cloneTimestamp"

    .line 93
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_44

    .line 95
    :cond_40
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 98
    :goto_44
    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getAppClonerClassesPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 99
    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_6c

    .line 101
    iget-object v3, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 102
    sget-object v3, Lcom/applisto/appcloner/classes/CloneSettings;->TAG:Ljava/lang/String;

    const-string v4, "CloneSettings; deleted old clone settings file"

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_61
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    :cond_6c
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_80

    .line 109
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CloneSettings;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9a

    .line 111
    :cond_80
    invoke-static {}, Lcom/applisto/appcloner/classes/CloneSettings;->getDefaultCloneSettingsJson()Ljava/lang/String;

    move-result-object p1
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_84} :catch_a2

    .line 113
    :try_start_84
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_93} :catch_94

    goto :goto_9a

    :catch_94
    move-exception v0

    .line 117
    :try_start_95
    sget-object v1, Lcom/applisto/appcloner/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :goto_9a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a1} :catch_a2

    goto :goto_a8

    :catch_a2
    move-exception p1

    .line 123
    sget-object v0, Lcom/applisto/appcloner/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    .line 142
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public static getDefaultCloneSettingsJson()Ljava/lang/String;
    .registers 3

    .line 283
    sget-object v0, Lcom/applisto/appcloner/classes/CloneSettings;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultCloneSettingsJson; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :try_start_7
    const-class v0, Lcom/applisto/appcloner/classes/CloneSettings;

    const-string v1, "cloneSettings.json"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_27

    .line 288
    :try_start_f
    new-instance v1, Lcom/applisto/appcloner/classes/util/SimpleCrypt;

    const-string v2, "UYGy723!Po-efjve"

    invoke-direct {v1, v2}, Lcom/applisto/appcloner/classes/util/SimpleCrypt;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/applisto/appcloner/classes/CloneSettings;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applisto/appcloner/classes/util/SimpleCrypt;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 291
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_21

    :catch_21
    return-object v1

    :catchall_22
    move-exception v1

    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_26

    .line 294
    :catch_26
    :try_start_26
    throw v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    .line 296
    sget-object v1, Lcom/applisto/appcloner/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2d
    :goto_2d
    const-wide/16 v0, 0x3e8

    .line 300
    :try_start_2f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_2d

    goto :goto_2d
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;
    .registers 4

    const-class v0, Lcom/applisto/appcloner/classes/CloneSettings;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lcom/applisto/appcloner/classes/CloneSettings;->sCloneSettings:Lcom/applisto/appcloner/classes/CloneSettings;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_38

    if-nez v1, :cond_34

    .line 58
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object p0, v1

    .line 63
    :cond_e
    nop

    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_2d

    .line 64
    const-class v1, Landroid/content/ContextWrapper;

    const-string v2, "mBase"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_27

    move-object p0, v1

    goto :goto_2d

    :catchall_27
    move-exception v1

    .line 69
    :try_start_28
    sget-object v2, Lcom/applisto/appcloner/classes/CloneSettings;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_2d
    :goto_2d
    new-instance v1, Lcom/applisto/appcloner/classes/CloneSettings;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/CloneSettings;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/applisto/appcloner/classes/CloneSettings;->sCloneSettings:Lcom/applisto/appcloner/classes/CloneSettings;

    .line 75
    :cond_34
    sget-object p0, Lcom/applisto/appcloner/classes/CloneSettings;->sCloneSettings:Lcom/applisto/appcloner/classes/CloneSettings;
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_38

    monitor-exit v0

    return-object p0

    :catchall_38
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 312
    :try_start_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 316
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 318
    :cond_20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_28

    .line 321
    :try_start_24
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_27

    :catch_27
    return-object p0

    :catchall_28
    move-exception p0

    :try_start_29
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2c

    .line 324
    :catch_2c
    goto :goto_2e

    :goto_2d
    throw p0

    :goto_2e
    goto :goto_2d
.end method


# virtual methods
.method public forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;
    .registers 4

    .line 210
    :try_start_0
    new-instance v0, Lcom/applisto/appcloner/classes/CloneSettings;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/applisto/appcloner/classes/CloneSettings;-><init>(Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public forObjectArray(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/applisto/appcloner/classes/CloneSettings;",
            ">;"
        }
    .end annotation

    .line 219
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 221
    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 222
    new-instance v2, Lcom/applisto/appcloner/classes/CloneSettings;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/applisto/appcloner/classes/CloneSettings;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_22

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_21
    return-object v0

    :catch_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 4

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    return-object p2
.end method

.method public getCloneSettingsFile()Ljava/io/File;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mCloneSettingsFile:Ljava/io/File;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .registers 5

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    return-object p2
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 5

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-object p1

    :catch_c
    return-object p2
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    return-object p2
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    return-object p2
.end method

.method public getMapList(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 263
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 265
    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 266
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 267
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 268
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 269
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 270
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 271
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 273
    :cond_33
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_3a

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_39
    return-object v0

    :catch_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    return-object p2
.end method

.method public getStringList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 235
    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 236
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1d

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    return-object v0

    :catch_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStringMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    goto :goto_f

    :cond_23
    return-object v0

    :catch_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CloneSettings;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
