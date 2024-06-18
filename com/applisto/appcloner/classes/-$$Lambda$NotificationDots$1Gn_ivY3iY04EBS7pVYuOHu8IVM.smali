.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/NotificationDots;

.field private final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/NotificationDots;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM;->f$0:Lcom/applisto/appcloner/classes/NotificationDots;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM;->f$0:Lcom/applisto/appcloner/classes/NotificationDots;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applisto/appcloner/classes/NotificationDots;->lambda$onActivityCreated$0$NotificationDots(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
