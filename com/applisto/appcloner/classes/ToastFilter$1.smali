.class Lcom/applisto/appcloner/classes/ToastFilter$1;
.super Ljava/lang/Object;
.source "ToastFilter.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/ToastFilter;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/ToastFilter;

.field final synthetic val$originalService:Ljava/lang/Object;

.field final synthetic val$toastFilterSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/ToastFilter;Ljava/util/Set;Ljava/lang/Object;)V
    .registers 4

    .line 68
    iput-object p1, p0, Lcom/applisto/appcloner/classes/ToastFilter$1;->this$0:Lcom/applisto/appcloner/classes/ToastFilter;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/ToastFilter$1;->val$toastFilterSet:Ljava/util/Set;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/ToastFilter$1;->val$originalService:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getToastText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNextView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_34

    const v0, 0x102000b

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_34

    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    .line 107
    invoke-static {}, Lcom/applisto/appcloner/classes/ToastFilter;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "enqueueToast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 74
    iget-object p1, p0, Lcom/applisto/appcloner/classes/ToastFilter$1;->this$0:Lcom/applisto/appcloner/classes/ToastFilter;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/ToastFilter;->access$000(Lcom/applisto/appcloner/classes/ToastFilter;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "invoke; enqueueToast blocked"

    if-eqz p1, :cond_1f

    .line 75
    invoke-static {}, Lcom/applisto/appcloner/classes/ToastFilter;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1f
    const/4 p1, 0x1

    .line 79
    aget-object p1, p3, p1

    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/ToastFilter$1;->getToastText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v2, p0, Lcom/applisto/appcloner/classes/ToastFilter$1;->val$toastFilterSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 82
    invoke-static {}, Lcom/applisto/appcloner/classes/ToastFilter;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 88
    :cond_4c
    iget-object p1, p0, Lcom/applisto/appcloner/classes/ToastFilter$1;->val$originalService:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
