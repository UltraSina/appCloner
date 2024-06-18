.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$_USfTmCXNR_6TuWfuzd6lXwjP6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$_USfTmCXNR_6TuWfuzd6lXwjP6c;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$_USfTmCXNR_6TuWfuzd6lXwjP6c;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/HostsBlocker;->lambda$checkHost$0(Ljava/lang/String;)V

    return-void
.end method
