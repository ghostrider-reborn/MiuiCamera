.class Lcom/xiaomi/stat/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/stat/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/stat/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/s;->a:Lcom/xiaomi/stat/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c/i;->a()Lcom/xiaomi/stat/c/i;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/stat/c/i;->a(Z)V

    return-void
.end method