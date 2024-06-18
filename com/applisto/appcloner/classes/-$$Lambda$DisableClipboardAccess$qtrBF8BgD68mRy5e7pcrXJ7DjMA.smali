.class public final synthetic Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$qtrBF8BgD68mRy5e7pcrXJ7DjMA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/ClipboardManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ClipboardManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$qtrBF8BgD68mRy5e7pcrXJ7DjMA;->f$0:Landroid/content/ClipboardManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applisto/appcloner/classes/-$$Lambda$DisableClipboardAccess$qtrBF8BgD68mRy5e7pcrXJ7DjMA;->f$0:Landroid/content/ClipboardManager;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/DisableClipboardAccess;->lambda$startClipboardTimeout$2(Landroid/content/ClipboardManager;)V

    return-void
.end method
