.class Lcom/applisto/appcloner/classes/ApplicationWrapper$1;
.super Landroid/content/ContextWrapper;
.source "ApplicationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/ApplicationWrapper;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/ApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Landroid/content/Context;)V
    .registers 3

    .line 65
    iput-object p1, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper$1;->this$0:Lcom/applisto/appcloner/classes/ApplicationWrapper;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/applisto/appcloner/classes/ApplicationWrapper$1;->this$0:Lcom/applisto/appcloner/classes/ApplicationWrapper;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->access$000(Lcom/applisto/appcloner/classes/ApplicationWrapper;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
