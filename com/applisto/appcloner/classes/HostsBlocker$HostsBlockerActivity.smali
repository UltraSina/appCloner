.class public Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;
.super Landroid/app/Activity;
.source "HostsBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/HostsBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostsBlockerActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 492
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreate$0([Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 509
    aget-object p0, p0, p3

    .line 510
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 516
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$200(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$300(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$2(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 520
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$400(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$300(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$3(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 527
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$200(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$300(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$4(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 531
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$400(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$300(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$5$HostsBlocker$HostsBlockerActivity(Landroid/content/DialogInterface;)V
    .registers 2

    .line 538
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$6$HostsBlocker$HostsBlockerActivity(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .registers 3

    .line 543
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$1000(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$7$HostsBlocker$HostsBlockerActivity(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .registers 3

    .line 545
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$1000(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 496
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 498
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "host"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate; host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-static {p1}, Lcom/applisto/appcloner/classes/HostsBlocker;->splitHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 502
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 504
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 506
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 507
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$O0vfs8oynLufkBJUVRjJyjUliYY;

    invoke-direct {v3, p1, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$O0vfs8oynLufkBJUVRjJyjUliYY;-><init>([Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 508
    invoke-virtual {v2, p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const-string v3, "Whois"

    const/16 v4, 0x15

    if-le v0, v4, :cond_75

    .line 514
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 515
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$900()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$xwX4UbsB94guR3MUPHjKfxODyBg;

    invoke-direct {v3, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$xwX4UbsB94guR3MUPHjKfxODyBg;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 519
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$GhW8LIlPObOrgtqj-t2hesBvbBY;

    invoke-direct {v3, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$GhW8LIlPObOrgtqj-t2hesBvbBY;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 525
    :cond_75
    invoke-virtual {p1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 526
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$900()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$MvDXewRy7CjKdu39aJdYCOiUFT4;

    invoke-direct {v3, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$MvDXewRy7CjKdu39aJdYCOiUFT4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 530
    invoke-static {}, Lcom/applisto/appcloner/classes/HostsBlocker;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$vGwmOuSw8UKQpS1A8MTvSP9oeZI;

    invoke-direct {v3, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$vGwmOuSw8UKQpS1A8MTvSP9oeZI;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    :goto_92
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 538
    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$MDtJtxB3eBafPfMMhbREgZlk7qs;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$MDtJtxB3eBafPfMMhbREgZlk7qs;-><init>(Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 540
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_b3

    const/4 v0, -0x3

    .line 543
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$G504BLbUiHhV46dpbVKtBe20M6s;

    invoke-direct {v2, p0, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$G504BLbUiHhV46dpbVKtBe20M6s;-><init>(Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c0

    :cond_b3
    const/4 v0, -0x2

    .line 545
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$RmDpLjz8j3kWM6u_GoiKg9gtl8w;

    invoke-direct {v2, p0, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$HostsBlocker$HostsBlockerActivity$RmDpLjz8j3kWM6u_GoiKg9gtl8w;-><init>(Lcom/applisto/appcloner/classes/HostsBlocker$HostsBlockerActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    :goto_c0
    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->keepDialogOpenOnOrientationChange(Landroid/app/Dialog;)V

    return-void
.end method
