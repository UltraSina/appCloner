.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/NotificationOptions;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/NotificationOptions;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;->f$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;->f$0:Lcom/applisto/appcloner/classes/NotificationOptions;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;->f$2:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/applisto/appcloner/classes/NotificationOptions;->lambda$install$1$NotificationOptions(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
