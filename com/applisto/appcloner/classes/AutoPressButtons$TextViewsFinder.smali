.class Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewsFinder;
.super Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextViewsFinder"
.end annotation


# instance fields
.field private mScreenText:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 321
    invoke-direct {p0, p1, v0}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;-><init>(Landroid/view/View;Z)V

    .line 323
    iput-object p2, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewsFinder;->mScreenText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method matchesView(Landroid/view/View;)Z
    .registers 3

    .line 330
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 331
    check-cast p1, Landroid/widget/TextView;

    .line 332
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 334
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 335
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewsFinder;->mScreenText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method
