.class Lcom/applisto/appcloner/classes/CalculatorActivity$1;
.super Ljava/lang/Object;
.source "CalculatorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 132
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$1;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 136
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$1;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->access$002(Lcom/applisto/appcloner/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$1;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->access$102(Lcom/applisto/appcloner/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$1;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->access$202(Lcom/applisto/appcloner/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity$1;->this$0:Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->access$300(Lcom/applisto/appcloner/classes/CalculatorActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method
