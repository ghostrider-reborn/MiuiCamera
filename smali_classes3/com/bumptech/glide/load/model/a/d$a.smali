.class public Lcom/bumptech/glide/load/model/a/d$a;
.super Ljava/lang/Object;
.source "MediaStoreImageThumbLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/u<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/model/a/d$a;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public X()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/model/x;)Lcom/bumptech/glide/load/model/t;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/x;",
            ")",
            "Lcom/bumptech/glide/load/model/t<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/bumptech/glide/load/model/a/d;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/a/d$a;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/model/a/d;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
