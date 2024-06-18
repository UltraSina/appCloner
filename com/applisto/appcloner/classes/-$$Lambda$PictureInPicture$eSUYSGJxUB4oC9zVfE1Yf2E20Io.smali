.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/PictureInPicture;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/PictureInPicture;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io;->f$0:Lcom/applisto/appcloner/classes/PictureInPicture;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io;->f$0:Lcom/applisto/appcloner/classes/PictureInPicture;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$PictureInPicture$eSUYSGJxUB4oC9zVfE1Yf2E20Io;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/applisto/appcloner/classes/PictureInPicture;->lambda$startPictureInPictureDelayed$0$PictureInPicture(Landroid/app/Activity;)V

    return-void
.end method
