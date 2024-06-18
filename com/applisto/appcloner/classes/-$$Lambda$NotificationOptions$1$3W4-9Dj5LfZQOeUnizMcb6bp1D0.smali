.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/NotificationManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/app/Notification;


# direct methods
.method public synthetic constructor <init>(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;->f$0:Landroid/app/NotificationManager;

    iput p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;->f$1:I

    iput-object p3, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;->f$2:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;->f$0:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;->f$1:I

    iget-object v2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$1$3W4-9Dj5LfZQOeUnizMcb6bp1D0;->f$2:Landroid/app/Notification;

    invoke-static {v0, v1, v2}, Lcom/applisto/appcloner/classes/NotificationOptions$1;->lambda$onReceive$0(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method
