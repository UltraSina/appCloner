.class Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$2;
.super Landroid/widget/ScrollView;
.source "LogcatViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;Landroid/content/Context;)V
    .registers 3

    .line 296
    iput-object p1, p0, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity$2;->this$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 5

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    const/4 p1, 0x0

    .line 300
    invoke-static {p1}, Lcom/applisto/appcloner/classes/LogcatViewer;->access$102(Z)Z

    return-void
.end method
