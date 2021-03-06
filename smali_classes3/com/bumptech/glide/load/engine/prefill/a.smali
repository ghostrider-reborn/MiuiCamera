.class public final Lcom/bumptech/glide/load/engine/prefill/a;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final Cp:Lcom/bumptech/glide/load/DecodeFormat;

.field private final Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private final Yi:Lcom/bumptech/glide/load/engine/a/o;

.field private current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/a;->handler:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Cp:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/engine/prefill/c;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/c;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/c;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/c;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bumptech/glide/util/l;->g(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs b([Lcom/bumptech/glide/load/engine/prefill/c$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/a;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    .line 3
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/prefill/c;

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 5
    aget-object v2, p1, v1

    .line 6
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c$a;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_3

    .line 7
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Cp:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->Gx:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->Hx:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9
    :goto_2
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/engine/prefill/c$a;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/c$a;

    .line 10
    :cond_3
    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/prefill/c$a;->build()Lcom/bumptech/glide/load/engine/prefill/c;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/prefill/a;->generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/c;)Lcom/bumptech/glide/load/engine/prefill/b;

    move-result-object p1

    .line 12
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/prefill/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/a;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    .line 13
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/a;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/prefill/a;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method varargs generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/c;)Lcom/bumptech/glide/load/engine/prefill/b;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    .line 2
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/o;->getMaxSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Yi:Lcom/bumptech/glide/load/engine/a/o;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/a/o;->da()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/prefill/a;->Xi:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->getMaxSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 3
    array-length p0, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p0, :cond_0

    aget-object v5, p1, v3

    .line 4
    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/prefill/c;->getWeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    long-to-float p0, v0

    int-to-float v0, v4

    div-float/2addr p0, v0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 7
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/prefill/c;->getWeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 8
    invoke-static {v3}, Lcom/bumptech/glide/load/engine/prefill/a;->a(Lcom/bumptech/glide/load/engine/prefill/c;)I

    move-result v5

    .line 9
    div-int/2addr v4, v5

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p0, Lcom/bumptech/glide/load/engine/prefill/b;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/prefill/b;-><init>(Ljava/util/Map;)V

    return-object p0
.end method
