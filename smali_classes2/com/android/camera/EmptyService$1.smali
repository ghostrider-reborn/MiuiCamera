.class Lcom/android/camera/EmptyService$1;
.super Landroid/content/BroadcastReceiver;
.source "EmptyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EmptyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EmptyService;


# direct methods
.method constructor <init>(Lcom/android/camera/EmptyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/EmptyService$1;->this$0:Lcom/android/camera/EmptyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/EmptyService$1;->this$0:Lcom/android/camera/EmptyService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/IntentService;->stopForeground(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/EmptyService$1;->this$0:Lcom/android/camera/EmptyService;

    invoke-virtual {p0}, Landroid/app/IntentService;->stopSelf()V

    return-void
.end method
