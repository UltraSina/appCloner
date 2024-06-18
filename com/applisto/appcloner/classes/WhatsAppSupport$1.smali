.class Lcom/applisto/appcloner/classes/WhatsAppSupport$1;
.super Landroid/content/ContextWrapper;
.source "WhatsAppSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/WhatsAppSupport;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/WhatsAppSupport;Landroid/content/Context;Landroid/content/Context;)V
    .registers 4

    .line 63
    iput-object p1, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->this$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->val$finalContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPackageCodePath()Ljava/lang/String;
    .registers 5

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->this$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->access$000(Lcom/applisto/appcloner/classes/WhatsAppSupport;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->this$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->access$100(Lcom/applisto/appcloner/classes/WhatsAppSupport;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 71
    iget-object v1, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->this$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->val$finalContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->access$200(Lcom/applisto/appcloner/classes/WhatsAppSupport;Landroid/content/Context;)V

    .line 74
    :cond_24
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageCodePath; publicSourceDir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_40} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    return-object v0

    :catch_41
    move-exception v0

    .line 81
    invoke-static {}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catch_4a
    move-exception v0

    .line 78
    invoke-static {}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    iget-object v0, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->this$0:Lcom/applisto/appcloner/classes/WhatsAppSupport;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/WhatsAppSupport$1;->val$finalContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/WhatsAppSupport;->access$200(Lcom/applisto/appcloner/classes/WhatsAppSupport;Landroid/content/Context;)V

    .line 84
    :goto_59
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
