.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/Application$OnProvideAssistDataListener;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/ApplicationWrapper;

.field private final synthetic f$1:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/ApplicationWrapper;Ljava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;->f$0:Lcom/applisto/appcloner/classes/ApplicationWrapper;

    iput-object p2, p0, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;->f$1:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final onProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;->f$0:Lcom/applisto/appcloner/classes/ApplicationWrapper;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$ApplicationWrapper$JMjZM7ZHXH__w4XaWplbTFBHDOA;->f$1:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applisto/appcloner/classes/ApplicationWrapper;->lambda$onCreate$0$ApplicationWrapper(Ljava/lang/reflect/Field;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
