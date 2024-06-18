.class Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;
.super Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonViewsFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V
    .registers 3

    .line 252
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    const/4 p1, 0x1

    .line 253
    invoke-direct {p0, p2, p1}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewsFinder;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private checkIdLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9

    .line 293
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$200(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 294
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 295
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 296
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    :cond_2f
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 298
    :cond_3b
    iget-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/AutoPressButtons;->access$200(Lcom/applisto/appcloner/classes/AutoPressButtons;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;

    .line 299
    iget-object p2, p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->enabled:Ljava/lang/Boolean;

    if-eqz p2, :cond_53

    iget-object p2, p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->enabled:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6f

    .line 300
    :cond_53
    iget-object p2, p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->screenText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_70

    new-instance p2, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewsFinder;

    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;->mRootView:Landroid/view/View;

    iget-object v1, p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->screenText:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewsFinder;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewsFinder;->findViews()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6f

    goto :goto_70

    :cond_6f
    return-object v2

    .line 302
    :cond_70
    :goto_70
    iget-object p2, p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->enabled:Ljava/lang/Boolean;

    if-eqz p2, :cond_7b

    const/4 p2, 0x0

    .line 303
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->enabled:Ljava/lang/Boolean;

    .line 305
    :cond_7b
    iget-object p1, p1, Lcom/applisto/appcloner/classes/AutoPressButtons$Info;->delaySeconds:Ljava/lang/Integer;

    return-object p1

    :cond_7e
    return-object v2
.end method


# virtual methods
.method matchesView(Landroid/view/View;)Z
    .registers 5

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    .line 267
    :try_start_e
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    :cond_17
    move-object v0, v2

    .line 272
    :goto_18
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_33

    .line 273
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 275
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_33
    invoke-direct {p0, v0, v2}, Lcom/applisto/appcloner/classes/AutoPressButtons$ButtonViewsFinder;->checkIdLabel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_41

    const v1, 0x14a7e9fb

    .line 281
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_41
    const/4 p1, 0x0

    return p1
.end method
