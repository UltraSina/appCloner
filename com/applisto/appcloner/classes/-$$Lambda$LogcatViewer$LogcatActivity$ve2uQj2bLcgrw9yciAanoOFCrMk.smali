.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$LogcatActivity$ve2uQj2bLcgrw9yciAanoOFCrMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$LogcatActivity$ve2uQj2bLcgrw9yciAanoOFCrMk;->f$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$LogcatViewer$LogcatActivity$ve2uQj2bLcgrw9yciAanoOFCrMk;->f$0:Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/LogcatViewer$LogcatActivity;->lambda$showLogs$0$LogcatViewer$LogcatActivity()V

    return-void
.end method
