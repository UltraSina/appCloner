.class public Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;
.super Landroid/content/ContentProvider;
.source "MultiProcessPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;
    }
.end annotation


# static fields
.field public static BASE_URI:Landroid/net/Uri; = null

.field private static final BOOLEAN_TYPE:Ljava/lang/String; = "boolean"

.field private static final FLOAT_TYPE:Ljava/lang/String; = "float"

.field private static final INT_TYPE:Ljava/lang/String; = "integer"

.field private static final KEY:Ljava/lang/String; = "key"

.field private static final LONG_TYPE:Ljava/lang/String; = "long"

.field private static final MATCH_DATA:I = 0x10000

.field private static final META_DATA_KEY_PREFERENCES_NAME:Ljava/lang/String; = "PREFERENCES_NAME"

.field public static PREFERENCES_AUTHORITY:Ljava/lang/String; = null

.field public static PREFERENCES_NAME:Ljava/lang/String; = null

.field private static final STRING_TYPE:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static matcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->TAG:Ljava/lang/String;

    const-string v0, "MultiProcessPreferences"

    .line 37
    sput-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/database/Cursor;J)J
    .registers 3

    .line 31
    invoke-static {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getLongValue(Landroid/database/Cursor;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Landroid/database/Cursor;F)F
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getFloatValue(Landroid/database/Cursor;F)F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/database/Cursor;Z)Z
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getBooleanValue(Landroid/database/Cursor;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroid/database/Cursor;I)I
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getIntValue(Landroid/database/Cursor;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static getBooleanValue(Landroid/database/Cursor;Z)Z
    .registers 3

    if-nez p0, :cond_3

    return p1

    .line 195
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    .line 196
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_11

    const/4 p1, 0x1

    .line 198
    :cond_11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1
.end method

.method private static getFloatValue(Landroid/database/Cursor;F)F
    .registers 3

    if-nez p0, :cond_3

    return p1

    .line 231
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 232
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    .line 234
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1
.end method

.method private static getIntValue(Landroid/database/Cursor;I)I
    .registers 3

    if-nez p0, :cond_3

    return p1

    .line 207
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 208
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 210
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1
.end method

.method private static getLongValue(Landroid/database/Cursor;J)J
    .registers 4

    if-nez p0, :cond_3

    return-wide p1

    .line 219
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 220
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 222
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide p1
.end method

.method private static getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_3

    return-object p1

    .line 183
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    .line 184
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_5

    .line 60
    :cond_3
    sput-object p1, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_AUTHORITY:Ljava/lang/String;

    .line 62
    :goto_5
    sget-object p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init; PREFERENCES_AUTHORITY: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_AUTHORITY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p0, Landroid/content/UriMatcher;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->matcher:Landroid/content/UriMatcher;

    .line 65
    sget-object p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->matcher:Landroid/content/UriMatcher;

    sget-object p1, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_AUTHORITY:Ljava/lang/String;

    const/high16 v0, 0x10000

    const-string v1, "*/*"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "content://"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_AUTHORITY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->BASE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 96
    sget-object p2, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/high16 p3, 0x10000

    if-ne p2, p3, :cond_21

    .line 97
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_NAME:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p3

    .line 100
    :cond_21
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported uri "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.item/vnd."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_AUTHORITY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".item"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    .line 110
    sget-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_9b

    .line 111
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v2, :cond_3d

    .line 117
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_21

    .line 118
    :cond_3d
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_47

    .line 119
    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_21

    .line 120
    :cond_47
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_55

    .line 121
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_21

    .line 122
    :cond_55
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_63

    .line 123
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_21

    .line 124
    :cond_63
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_71

    .line 125
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_21

    .line 126
    :cond_71
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_7f

    .line 127
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_21

    .line 129
    :cond_7f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 132
    :cond_96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    return-object p1

    .line 134
    :cond_9b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b3

    :goto_b2
    throw p2

    :goto_b3
    goto :goto_b2
.end method

.method public onCreate()Z
    .registers 4

    .line 73
    sget-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->matcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_40

    .line 74
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_AUTHORITY:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 79
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_28

    .line 80
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "PREFERENCES_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_NAME:Ljava/lang/String;

    .line 83
    :cond_28
    sget-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate; PREFERENCES_NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    .line 144
    sget-object p2, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/high16 p3, 0x10000

    if-ne p2, p3, :cond_ad

    .line 145
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p4

    const/4 p5, 0x1

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 147
    new-instance v0, Landroid/database/MatrixCursor;

    new-array p5, p5, [Ljava/lang/String;

    aput-object p2, p5, p3

    invoke-direct {v0, p5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->getContext()Landroid/content/Context;

    move-result-object p5

    sget-object v1, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->PREFERENCES_NAME:Ljava/lang/String;

    invoke-virtual {p5, v1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p5

    .line 149
    invoke-interface {p5, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    return-object v0

    .line 151
    :cond_3a
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v2, "string"

    .line 153
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 p1, 0x0

    .line 154
    invoke-interface {p5, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_92

    :cond_4c
    const-string v2, "boolean"

    .line 155
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 156
    invoke-interface {p5, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_92

    :cond_5d
    const-string v2, "long"

    .line 157
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const-wide/16 p3, 0x0

    .line 158
    invoke-interface {p5, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_92

    :cond_70
    const-string v2, "integer"

    .line 159
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 160
    invoke-interface {p5, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_92

    :cond_81
    const-string p3, "float"

    .line 161
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_96

    const/4 p1, 0x0

    .line 162
    invoke-interface {p5, p2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 166
    :goto_92
    invoke-virtual {v1, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0

    .line 164
    :cond_96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 168
    :cond_ad
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported uri "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 175
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
