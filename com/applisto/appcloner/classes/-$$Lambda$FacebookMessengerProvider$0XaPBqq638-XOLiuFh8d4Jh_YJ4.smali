.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$FacebookMessengerProvider$0XaPBqq638-XOLiuFh8d4Jh_YJ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FacebookMessengerProvider$0XaPBqq638-XOLiuFh8d4Jh_YJ4;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$FacebookMessengerProvider$0XaPBqq638-XOLiuFh8d4Jh_YJ4;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Lcom/applisto/appcloner/classes/FacebookMessengerProvider;->lambda$onCreate$0(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
