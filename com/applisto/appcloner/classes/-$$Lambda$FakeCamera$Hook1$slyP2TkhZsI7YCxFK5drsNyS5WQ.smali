.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/Camera$ShutterCallback;

.field private final synthetic f$1:Landroid/hardware/Camera$PictureCallback;

.field private final synthetic f$2:Landroid/hardware/Camera;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;->f$0:Landroid/hardware/Camera$ShutterCallback;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;->f$1:Landroid/hardware/Camera$PictureCallback;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;->f$2:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;->f$0:Landroid/hardware/Camera$ShutterCallback;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;->f$1:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FakeCamera$Hook1$slyP2TkhZsI7YCxFK5drsNyS5WQ;->f$2:Landroid/hardware/Camera;

    invoke-static {v0, v1, v2}, Lcom/applisto/appcloner/classes/FakeCamera$Hook1;->lambda$takePictureHook$0(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera;)V

    return-void
.end method
