.class Lcom/applisto/appcloner/classes/GmailSupport$2;
.super Lcom/applisto/appcloner/classes/util/IPackageManagerHook;
.source "GmailSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/GmailSupport;->installPackageManagerHook(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/GmailSupport;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/GmailSupport;Landroid/content/Context;)V
    .registers 3

    .line 136
    iput-object p1, p0, Lcom/applisto/appcloner/classes/GmailSupport$2;->this$0:Lcom/applisto/appcloner/classes/GmailSupport;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/GmailSupport$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/IPackageManagerHook;-><init>()V

    return-void
.end method

.method static synthetic lambda$getInvocationHandler$0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getPackageInfo"

    .line 143
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_89

    const-string v1, "com.google.android.gms"

    const-string v2, "s"

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    .line 145
    :try_start_11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p2, p4, v3

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_91

    .line 146
    invoke-static {}, Lcom/applisto/appcloner/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke; getPackageInfo; fixing args[0]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p4, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    aput-object v1, p4, v3

    goto :goto_91

    :cond_49
    const-string v0, "getApplicationInfo"

    .line 150
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_91

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p2, p4, v3

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_91

    .line 153
    invoke-static {}, Lcom/applisto/appcloner/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke; getApplicationInfo; fixing args[0]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p4, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    aput-object v1, p4, v3
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_88} :catch_89

    goto :goto_91

    :catch_89
    move-exception p0

    .line 158
    invoke-static {}, Lcom/applisto/appcloner/classes/GmailSupport;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :cond_91
    :goto_91
    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/applisto/appcloner/classes/GmailSupport$2;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo;

    invoke-direct {v1, v0, p1}, Lcom/applisto/appcloner/classes/-$$Lambda$GmailSupport$2$k7j-zUI7FoPUNbSJ4i25zoHrZxo;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-object v1
.end method
