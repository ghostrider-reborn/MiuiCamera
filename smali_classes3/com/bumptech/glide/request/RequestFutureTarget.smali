.class public Lcom/bumptech/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/b;
.implements Lcom/bumptech/glide/request/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/b<",
        "TR;>;",
        "Lcom/bumptech/glide/request/e<",
        "TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final Ls:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final Hs:Z

.field private Il:Z

.field private final Is:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private Js:Z

.field private Ks:Z

.field private final La:Landroid/os/Handler;

.field private exception:Lcom/bumptech/glide/load/engine/GlideException;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final height:I

.field private request:Lcom/bumptech/glide/request/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private resource:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->Ls:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 6

    .line 1
    sget-object v5, Lcom/bumptech/glide/request/RequestFutureTarget;->Ls:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->La:Landroid/os/Handler;

    .line 4
    iput p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    .line 5
    iput p3, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    .line 6
    iput-boolean p4, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Hs:Z

    .line 7
    iput-object p5, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Is:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method private Sn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->La:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Hs:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bumptech/glide/util/l;->Kk()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Il:Z

    if-nez v0, :cond_9

    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Ks:Z

    if-nez v0, :cond_8

    .line 5
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Js:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const-wide/16 v0, 0x0

    if-nez p1, :cond_2

    .line 7
    :try_start_1
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Is:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->a(Ljava/lang/Object;J)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Is:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    sub-long v0, v2, v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->a(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-nez p1, :cond_7

    .line 15
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Ks:Z

    if-nez p1, :cond_6

    .line 16
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Il:Z

    if-nez p1, :cond_5

    .line 17
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Js:Z

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 19
    :cond_4
    :try_start_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 20
    :cond_5
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1

    .line 21
    :cond_6
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 22
    :cond_7
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    .line 23
    :cond_8
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 24
    :cond_9
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/request/target/n;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/target/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/a/f<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/o;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/o<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 2
    :try_start_0
    iput-boolean p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Ks:Z

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Is:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/o;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/o<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 6
    :try_start_0
    iput-boolean p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Js:Z

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Is:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 9
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public b(Lcom/bumptech/glide/request/target/n;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    iget p0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    invoke-interface {p1, v0, p0}, Lcom/bumptech/glide/request/target/n;->a(II)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_1
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Il:Z

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Is:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->n(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->Sn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public f(Lcom/bumptech/glide/request/c;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/c;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRequest()Lcom/bumptech/glide/request/c;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/c;

    return-object p0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Il:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Il:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Js:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->Ks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bumptech/glide/request/c;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/c;

    :cond_0
    return-void
.end method
