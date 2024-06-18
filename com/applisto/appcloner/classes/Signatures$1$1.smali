.class Lcom/applisto/appcloner/classes/Signatures$1$1;
.super Ljava/lang/Object;
.source "Signatures.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/Signatures$1;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applisto/appcloner/classes/Signatures$1;

.field final synthetic val$originalPackageManager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/Signatures$1;Ljava/lang/Object;)V
    .registers 3

    .line 84
    iput-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->val$originalPackageManager:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getResolveInfos(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "android.content.pm.ParceledListSlice"

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1f

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_23
    const-string v1, "mList"

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_36

    .line 238
    :cond_34
    check-cast p1, Ljava/util/List;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    :goto_36
    return-object p1

    :catch_37
    move-exception p1

    .line 242
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "checkSignatures"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 101
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 102
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalPackageName:Ljava/lang/String;

    aput-object p1, p3, v1

    goto :goto_36

    .line 103
    :cond_20
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$uid:Ljava/lang/Integer;

    aget-object v0, p3, v1

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 104
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    .line 107
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 108
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalPackageName:Ljava/lang/String;

    aput-object p1, p3, v0

    goto :goto_7d

    .line 109
    :cond_4a
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$uid:Ljava/lang/Integer;

    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 110
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget p1, p1, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    goto :goto_7d

    :cond_61
    const-string v0, "getInstallerPackageName"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 116
    new-instance p1, Ljava/lang/String;

    const-string v0, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_75

    return-object p1

    :catch_75
    move-exception p1

    .line 119
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_7d
    :goto_7d
    iget-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->val$originalPackageManager:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 125
    :try_start_83
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getPackageInfo"

    .line 126
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8d} :catch_21f

    const-string v0, "com.facebook.services"

    const-string v1, "com.twitter.android"

    const-string v2, "com.facebook.lite"

    const-string v3, "com.facebook.katana"

    const/4 v4, 0x0

    const-string v5, "WEB_ONLY"

    if-eqz p3, :cond_10c

    if-eqz p1, :cond_227

    .line 128
    :try_start_9c
    move-object p2, p1

    check-cast p2, Landroid/content/pm/PackageInfo;

    .line 129
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_cf

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 130
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c5

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c5

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_cf

    .line 133
    :cond_c5
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getPackageInfo; returning null for Facebook packages"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 135
    :cond_cf
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$200(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ef

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ef

    .line 137
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getPackageInfo; returning null for Twitter package"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 139
    :cond_ef
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_227

    .line 140
    iget-object p3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p3, :cond_227

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p3, p3

    if-lez p3, :cond_227

    .line 143
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalSignatures:[Landroid/content/pm/Signature;

    iput-object p3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto/16 :goto_227

    :cond_10c
    const-string p3, "getApplicationInfo"

    .line 151
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_171

    if-eqz p1, :cond_227

    .line 153
    move-object p2, p1

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 154
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_149

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 155
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13f

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13f

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_149

    .line 158
    :cond_13f
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getApplicationInfo; returning null for Facebook packages"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 160
    :cond_149
    iget-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p3, p3, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p3}, Lcom/applisto/appcloner/classes/Signatures;->access$200(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_169

    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_169

    .line 162
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; getApplicationInfo; returning null for Twitter package"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 166
    :cond_169
    iget p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, -0x3

    iput p3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_227

    :cond_171
    const-string p3, "queryIntentActivities"

    .line 168
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_177} :catch_21f

    const-string v0, "com.facebook.katana/.ProxyAuth"

    const-string v1, "WEB_ONLY_ALT"

    if-eqz p3, :cond_1d9

    .line 170
    :try_start_17d
    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$300(Lcom/applisto/appcloner/classes/Signatures;)Z

    move-result p2

    if-eqz p2, :cond_190

    .line 171
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/Signatures$1$1;->getResolveInfos(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 172
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto/16 :goto_227

    .line 174
    :cond_190
    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1ac

    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    .line 175
    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_227

    .line 178
    :cond_1ac
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/Signatures$1$1;->getResolveInfos(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b4
    :goto_1b4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_227

    .line 181
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_1b4

    .line 184
    invoke-virtual {p3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1b4

    .line 185
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_1cf
    .catchall {:try_start_17d .. :try_end_1cf} :catchall_1d0

    goto :goto_1b4

    :catchall_1d0
    move-exception p2

    .line 192
    :try_start_1d1
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_227

    :cond_1d9
    const-string p3, "resolveIntent"

    .line 194
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1df} :catch_21f

    if-eqz p2, :cond_227

    .line 196
    :try_start_1e1
    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1fd

    iget-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1$1;->this$1:Lcom/applisto/appcloner/classes/Signatures$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    .line 197
    invoke-static {p2}, Lcom/applisto/appcloner/classes/Signatures;->access$100(Lcom/applisto/appcloner/classes/Signatures;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_227

    .line 200
    :cond_1fd
    move-object p2, p1

    check-cast p2, Landroid/content/pm/ResolveInfo;

    if-eqz p2, :cond_227

    .line 203
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_227

    .line 204
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string p3, "invoke; resolveIntent; returning no resolved intent for Facebook"

    invoke-static {p2, p3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_215
    .catchall {:try_start_1e1 .. :try_end_215} :catchall_216

    return-object v4

    :catchall_216
    move-exception p2

    .line 210
    :try_start_217
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_21e} :catch_21f

    goto :goto_227

    :catch_21f
    move-exception p2

    .line 214
    invoke-static {}, Lcom/applisto/appcloner/classes/Signatures;->access$000()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_227
    :goto_227
    return-object p1
.end method
