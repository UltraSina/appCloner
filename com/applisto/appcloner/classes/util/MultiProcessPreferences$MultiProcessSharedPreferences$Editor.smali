.class public Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
.super Ljava/lang/Object;
.source "MultiProcessPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;


# direct methods
.method private constructor <init>(Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;Landroid/content/Context;)V
    .registers 3

    .line 316
    iput-object p1, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->this$0:Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    .line 317
    iput-object p2, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;Landroid/content/Context;Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$1;)V
    .registers 4

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;-><init>(Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->this$0:Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;

    const-string v2, "key"

    const-string v3, "type"

    invoke-static {v1, v2, v3}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->access$600(Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public bridge synthetic clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->clear()Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->this$0:Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;

    const-string v2, "key"

    const-string v3, "type"

    invoke-static {v1, v2, v3}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;->access$600(Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-object p0
.end method

.method public commit()Z
    .registers 2

    .line 325
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public bridge synthetic putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    return-object p0
.end method

.method public bridge synthetic putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->putInt(Ljava/lang/String;I)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putInt(Ljava/lang/String;I)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public bridge synthetic putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putLong(Ljava/lang/String;J)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 373
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/applisto/appcloner/classes/util/MultiProcessPreferences$MultiProcessSharedPreferences$Editor;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    return-object p0
.end method
