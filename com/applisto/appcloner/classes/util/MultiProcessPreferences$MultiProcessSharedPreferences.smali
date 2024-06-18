.class public Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;
.super Ljava/lang/Object;
.source "MultiProcessPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiProcessSharedPreferences"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    }
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    .line 249
    iput-object p2, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$600(Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    .line 379
    sget-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->BASE_URI:Landroid/net/Uri;

    if-nez v0, :cond_b

    .line 380
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mAuthority:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->access$700(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    :cond_b
    sget-object v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 2

    .line 298
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 238
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->edit()Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 4

    .line 253
    new-instance v0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;-><init>(Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;Landroid/content/Context;Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$1;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 10

    .line 272
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "boolean"

    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 273
    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->access$400(Landroid/database/Cursor;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 10

    .line 267
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "float"

    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 268
    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->access$300(Landroid/database/Cursor;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 10

    .line 277
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "integer"

    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 278
    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->access$500(Landroid/database/Cursor;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 11

    .line 262
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "long"

    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 263
    invoke-static {p1, p2, p3}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->access$200(Landroid/database/Cursor;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 257
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "string"

    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 258
    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences;->access$100(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    .line 303
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    .line 308
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
