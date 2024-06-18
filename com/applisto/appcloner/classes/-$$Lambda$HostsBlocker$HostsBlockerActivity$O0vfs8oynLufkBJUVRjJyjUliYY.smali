.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$O0vfs8oynLufkBJUVRjJyjUliYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:[Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$O0vfs8oynLufkBJUVRjJyjUliYY;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$O0vfs8oynLufkBJUVRjJyjUliYY;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$O0vfs8oynLufkBJUVRjJyjUliYY;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$O0vfs8oynLufkBJUVRjJyjUliYY;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, p1, p2}, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;->lambda$onCreate$0([Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;I)V

    return-void
.end method
