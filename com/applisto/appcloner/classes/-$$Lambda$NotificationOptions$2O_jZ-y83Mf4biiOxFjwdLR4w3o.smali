.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;->f$0:I

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;->f$0:I

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/NotificationOptions;->lambda$null$0(ILandroid/content/Context;)V

    return-void
.end method
