.class Lcom/bumptech/glide/load/engine/c;
.super Ljava/lang/Object;
.source "DataCacheGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/a/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final cb:Lcom/bumptech/glide/load/engine/f$a;

.field private final im:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c;",
            ">;"
        }
    .end annotation
.end field

.field private final jm:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field private km:I

.field private lm:Lcom/bumptech/glide/load/c;

.field private mm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/t<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private nm:I

.field private volatile om:Lcom/bumptech/glide/load/model/t$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/t$a<",
            "*>;"
        }
    .end annotation
.end field

.field private pm:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->gj()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/load/engine/c;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c;",
            ">;",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/bumptech/glide/load/engine/c;->km:I

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c;->im:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 6
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/c;->cb:Lcom/bumptech/glide/load/engine/f$a;

    return-void
.end method

.method private in()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/c;->nm:I

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/c;->mm:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public K()Z
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->mm:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c;->in()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/c;->in()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->mm:Ljava/util/List;

    iget v3, p0, Lcom/bumptech/glide/load/engine/c;->nm:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/c;->nm:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/t;

    .line 5
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->pm:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 6
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 7
    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/g;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v6

    .line 8
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/bumptech/glide/load/model/t;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/d;->ga()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/load/engine/g;->e(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    move v1, v2

    goto :goto_1

    :cond_3
    return v1

    .line 11
    :cond_4
    :goto_2
    iget v0, p0, Lcom/bumptech/glide/load/engine/c;->km:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bumptech/glide/load/engine/c;->km:I

    .line 12
    iget v0, p0, Lcom/bumptech/glide/load/engine/c;->km:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->im:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->im:Ljava/util/List;

    iget v2, p0, Lcom/bumptech/glide/load/engine/c;->km:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c;

    .line 14
    new-instance v2, Lcom/bumptech/glide/load/engine/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->getSignature()Lcom/bumptech/glide/load/c;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;)V

    .line 15
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->H()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/bumptech/glide/load/engine/a/a;->b(Lcom/bumptech/glide/load/c;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/bumptech/glide/load/engine/c;->pm:Ljava/io/File;

    .line 16
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->pm:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 17
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->lm:Lcom/bumptech/glide/load/c;

    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/g;->e(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c;->mm:Ljava/util/List;

    .line 19
    iput v1, p0, Lcom/bumptech/glide/load/engine/c;->nm:I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->lm:Lcom/bumptech/glide/load/c;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->Dx:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, p0, v2}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c;->lm:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->Dx:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/c;->lm:Lcom/bumptech/glide/load/c;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/c;->om:Lcom/bumptech/glide/load/model/t$a;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    :cond_0
    return-void
.end method
