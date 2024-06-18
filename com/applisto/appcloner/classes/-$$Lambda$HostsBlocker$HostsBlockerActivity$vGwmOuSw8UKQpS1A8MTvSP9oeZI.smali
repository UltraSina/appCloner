.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$vGwmOuSw8UKQpS1A8MTvSP9oeZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$vGwmOuSw8UKQpS1A8MTvSP9oeZI;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$vGwmOuSw8UKQpS1A8MTvSP9oeZI;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1, p2}, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;->lambda$onCreate$4(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;I)V

    return-void
.end method
