.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$DataDirectoryFtpServer$UpJdbCtrYxLd2xRLShZFusSzt_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$DataDirectoryFtpServer$UpJdbCtrYxLd2xRLShZFusSzt_o;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$DataDirectoryFtpServer$UpJdbCtrYxLd2xRLShZFusSzt_o;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->lambda$startFtpServer$0(Landroid/content/Context;)V

    return-void
.end method
