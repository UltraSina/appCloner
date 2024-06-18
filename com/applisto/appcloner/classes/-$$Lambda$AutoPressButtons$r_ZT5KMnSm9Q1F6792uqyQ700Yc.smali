.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;->f$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;->f$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$AutoPressButtons$r_ZT5KMnSm9Q1F6792uqyQ700Yc;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/applisto/appcloner/classes/AutoPressButtons;->lambda$onActivityCreated$1$AutoPressButtons(Landroid/app/Activity;)V

    return-void
.end method
