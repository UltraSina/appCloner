.class public Lcom/applisto/appcloner/classes/PersistentAppAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "PersistentAppAccessibilityService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/applisto/appcloner/classes/PersistentAppAccessibilityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PersistentAppAccessibilityService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onInterrupt()V
    .registers 1

    return-void
.end method

.method protected onServiceConnected()V
    .registers 3

    .line 20
    sget-object v0, Lcom/applisto/appcloner/classes/PersistentAppAccessibilityService;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
