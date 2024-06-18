.class public final synthetic Lcom/applisto/appcloner/hooking/-$$Lambda$Hooking$RIeOXO-ttSLkTwf33vBcEr3zvM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applisto/appcloner/hooking/-$$Lambda$Hooking$RIeOXO-ttSLkTwf33vBcEr3zvM0;->f$0:Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applisto/appcloner/hooking/-$$Lambda$Hooking$RIeOXO-ttSLkTwf33vBcEr3zvM0;->f$0:Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;

    invoke-static {v0}, Lcom/applisto/appcloner/hooking/Hooking;->lambda$addHookClass$0(Lcom/swift/sandhook/wrapper/HookWrapper$HookEntity;)V

    return-void
.end method
