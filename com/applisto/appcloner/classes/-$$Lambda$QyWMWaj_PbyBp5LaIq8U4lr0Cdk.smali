.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;->f$0:Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$QyWMWaj_PbyBp5LaIq8U4lr0Cdk;->f$0:Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;

    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;->finish()V

    return-void
.end method
