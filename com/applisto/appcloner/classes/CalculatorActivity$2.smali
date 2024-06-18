.class Lcom/applisto/appcloner/classes/CalculatorActivity$2;
.super Ljava/lang/Object;
.source "CalculatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/CalculatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/CalculatorActivity;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$2;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$2;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$2;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->access$400(Lcom/applisto/appcloner/classes/CalculatorActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 152
    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 153
    iget v4, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    const v4, 0x3ea8f5c3  # 0.33f

    mul-float v3, v3, v4

    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextSize(F)V

    .line 155
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$2;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-static {v2}, Lcom/applisto/appcloner/classes/CalculatorActivity;->access$300(Lcom/applisto/appcloner/classes/CalculatorActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    goto :goto_14

    :catch_3a
    move-exception v0

    .line 158
    invoke-static {}, Lcom/applisto/appcloner/classes/CalculatorActivity;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_42
    return-void
.end method
