.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/PasswordActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4;->f$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4;->f$0:Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applisto/appcloner/classes/PasswordActivity;->lambda$showDialog$1$PasswordActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
