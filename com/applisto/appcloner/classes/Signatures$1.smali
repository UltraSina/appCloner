.class Lcom/applisto/appcloner/classes/Signatures$1;
.super Lcom/applisto/appcloner/classes/util/IPackageManagerHook;
.source "Signatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/Signatures;->install(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/Signatures;

.field final synthetic val$originalPackageName:Ljava/lang/String;

.field final synthetic val$originalSignatures:[Landroid/content/pm/Signature;

.field final synthetic val$originalUid:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/Signatures;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I[Landroid/content/pm/Signature;)V
    .registers 7

    .line 81
    iput-object p1, p0, Lcom/applisto/appcloner/classes/Signatures$1;->this$0:Lcom/applisto/appcloner/classes/Signatures;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/Signatures$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/applisto/appcloner/classes/Signatures$1;->val$uid:Ljava/lang/Integer;

    iput p5, p0, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalUid:I

    iput-object p6, p0, Lcom/applisto/appcloner/classes/Signatures$1;->val$originalSignatures:[Landroid/content/pm/Signature;

    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/IPackageManagerHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 3

    .line 84
    new-instance v0, Lcom/applisto/appcloner/classes/Signatures$1$1;

    invoke-direct {v0, p0, p1}, Lcom/applisto/appcloner/classes/Signatures$1$1;-><init>(Lcom/applisto/appcloner/classes/Signatures$1;Ljava/lang/Object;)V

    return-object v0
.end method
