.class public Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/r;
.implements Lcom/bumptech/glide/load/engine/a/o$a;
.implements Lcom/bumptech/glide/load/engine/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$a;,
        Lcom/bumptech/glide/load/engine/Engine$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"

.field private static final pn:I = 0x96

.field private static final qn:Z


# instance fields
.field private final cache:Lcom/bumptech/glide/load/engine/a/o;

.field private final hn:Lcom/bumptech/glide/load/engine/w;

.field private final jn:Lcom/bumptech/glide/load/engine/t;

.field private final kn:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final ln:Lcom/bumptech/glide/load/engine/D;

.field private final mn:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

.field private final nn:Lcom/bumptech/glide/load/engine/ActiveResources;

.field private final sm:Lcom/bumptech/glide/load/engine/Engine$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->qn:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/w;Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;Lcom/bumptech/glide/load/engine/D;Z)V
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    move-object v6, p0

    move-object v7, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v7, v6, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/a/o;

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$a;

    move-object v1, p2

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/Engine$a;-><init>(Lcom/bumptech/glide/load/engine/a/a$a;)V

    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->sm:Lcom/bumptech/glide/load/engine/Engine$a;

    if-nez p9, :cond_0

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/ActiveResources;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    .line 6
    :goto_0
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->nn:Lcom/bumptech/glide/load/engine/ActiveResources;

    .line 7
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->a(Lcom/bumptech/glide/load/engine/u$a;)V

    if-nez p8, :cond_1

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/t;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/t;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p8

    .line 9
    :goto_1
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->jn:Lcom/bumptech/glide/load/engine/t;

    if-nez p7, :cond_2

    .line 10
    new-instance v0, Lcom/bumptech/glide/load/engine/w;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/w;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    .line 11
    :goto_2
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->hn:Lcom/bumptech/glide/load/engine/w;

    if-nez p10, :cond_3

    .line 12
    new-instance v8, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move-object v0, v8

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/r;)V

    goto :goto_3

    :cond_3
    move-object/from16 v8, p10

    .line 13
    :goto_3
    iput-object v8, v6, Lcom/bumptech/glide/load/engine/Engine;->kn:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    if-nez p11, :cond_4

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    iget-object v1, v6, Lcom/bumptech/glide/load/engine/Engine;->sm:Lcom/bumptech/glide/load/engine/Engine$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p11

    .line 15
    :goto_4
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->mn:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    if-nez p12, :cond_5

    .line 16
    new-instance v0, Lcom/bumptech/glide/load/engine/D;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/D;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    .line 17
    :goto_5
    iput-object v0, v6, Lcom/bumptech/glide/load/engine/Engine;->ln:Lcom/bumptech/glide/load/engine/D;

    .line 18
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/a/o;->a(Lcom/bumptech/glide/load/engine/a/o$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Z)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/a/o;Lcom/bumptech/glide/load/engine/a/a$a;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/b/b;Lcom/bumptech/glide/load/engine/w;Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;Lcom/bumptech/glide/load/engine/D;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/e;->e(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->nn:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/u;->acquire()V

    :cond_1
    return-object p0
.end method

.method private c(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/Engine;->i(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/u;->acquire()V

    .line 3
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->nn:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/ActiveResources;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)V

    :cond_1
    return-object p2
.end method

.method private i(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/a/o;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/engine/a/o;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/A;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p0, Lcom/bumptech/glide/load/engine/u;

    if-eqz p1, :cond_1

    .line 3
    check-cast p0, Lcom/bumptech/glide/load/engine/u;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcom/bumptech/glide/load/engine/u;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0, v0}, Lcom/bumptech/glide/load/engine/u;-><init>(Lcom/bumptech/glide/load/engine/A;ZZ)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public Ei()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->sm:Lcom/bumptech/glide/load/engine/Engine$a;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine$a;->H()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object p0

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/a/a;->clear()V

    return-void
.end method

.method public a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/o;Ljava/util/Map;ZZLcom/bumptech/glide/load/g;ZZZZLcom/bumptech/glide/request/g;)Lcom/bumptech/glide/load/engine/Engine$b;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/o;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/g;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/g;",
            ")",
            "Lcom/bumptech/glide/load/engine/Engine$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v3, p14

    move-object/from16 v7, p18

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    sget-boolean v1, Lcom/bumptech/glide/load/engine/Engine;->qn:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bumptech/glide/util/e;->Jk()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v8, v1

    .line 3
    iget-object v10, v0, Lcom/bumptech/glide/load/engine/Engine;->jn:Lcom/bumptech/glide/load/engine/t;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p10

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p13

    invoke-virtual/range {v10 .. v18}, Lcom/bumptech/glide/load/engine/t;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/engine/s;

    move-result-object v10

    .line 4
    invoke-direct {v0, v10, v3}, Lcom/bumptech/glide/load/engine/Engine;->b(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->Fx:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v7, v1, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V

    .line 6
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->qn:Z

    if-eqz v0, :cond_1

    const-string v0, "Loaded resource from active resources"

    .line 7
    invoke-static {v0, v8, v9, v10}, Lcom/bumptech/glide/load/engine/Engine;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_1
    return-object v2

    .line 8
    :cond_2
    invoke-direct {v0, v10, v3}, Lcom/bumptech/glide/load/engine/Engine;->c(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/u;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->Fx:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v7, v1, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/load/engine/A;Lcom/bumptech/glide/load/DataSource;)V

    .line 10
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->qn:Z

    if-eqz v0, :cond_3

    const-string v0, "Loaded resource from cache"

    .line 11
    invoke-static {v0, v8, v9, v10}, Lcom/bumptech/glide/load/engine/Engine;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_3
    return-object v2

    .line 12
    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/Engine;->hn:Lcom/bumptech/glide/load/engine/w;

    move/from16 v15, p17

    invoke-virtual {v1, v10, v15}, Lcom/bumptech/glide/load/engine/w;->a(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/load/engine/EngineJob;->a(Lcom/bumptech/glide/request/g;)V

    .line 14
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->qn:Z

    if-eqz v0, :cond_5

    const-string v0, "Added to existing load"

    .line 15
    invoke-static {v0, v8, v9, v10}, Lcom/bumptech/glide/load/engine/Engine;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    .line 16
    :cond_5
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$b;

    invoke-direct {v0, v7, v1}, Lcom/bumptech/glide/load/engine/Engine$b;-><init>(Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v0

    .line 17
    :cond_6
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/Engine;->kn:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    move-object v2, v10

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v1

    move-object/from16 v27, v1

    .line 19
    iget-object v11, v0, Lcom/bumptech/glide/load/engine/Engine;->mn:Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v10

    move-object/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    move/from16 v23, p11

    move/from16 v24, p12

    move/from16 v25, p17

    move-object/from16 v26, p13

    .line 20
    invoke-virtual/range {v11 .. v27}, Lcom/bumptech/glide/load/engine/Engine$DecodeJobFactory;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/o;Ljava/util/Map;ZZZLcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/engine/DecodeJob$a;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v2

    .line 21
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->hn:Lcom/bumptech/glide/load/engine/w;

    invoke-virtual {v0, v10, v1}, Lcom/bumptech/glide/load/engine/w;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 22
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/load/engine/EngineJob;->a(Lcom/bumptech/glide/request/g;)V

    .line 23
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->c(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 24
    sget-boolean v0, Lcom/bumptech/glide/load/engine/Engine;->qn:Z

    if-eqz v0, :cond_7

    const-string v0, "Started new load"

    .line 25
    invoke-static {v0, v8, v9, v10}, Lcom/bumptech/glide/load/engine/Engine;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    .line 26
    :cond_7
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$b;

    invoke-direct {v0, v7, v1}, Lcom/bumptech/glide/load/engine/Engine$b;-><init>(Lcom/bumptech/glide/request/g;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->nn:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/ActiveResources;->d(Lcom/bumptech/glide/load/c;)V

    .line 37
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/u;->xj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/a/o;

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/o;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/A;)Lcom/bumptech/glide/load/engine/A;

    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->ln:Lcom/bumptech/glide/load/engine/D;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/engine/D;->g(Lcom/bumptech/glide/load/engine/A;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/bumptech/glide/load/c;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 34
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->hn:Lcom/bumptech/glide/load/engine/w;

    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/load/engine/w;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineJob<",
            "*>;",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;)V"
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    if-eqz p3, :cond_0

    .line 29
    invoke-virtual {p3, p2, p0}, Lcom/bumptech/glide/load/engine/u;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u$a;)V

    .line 30
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/u;->xj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->nn:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/ActiveResources;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/u;)V

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->hn:Lcom/bumptech/glide/load/engine/w;

    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/load/engine/w;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/A;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/A;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 4
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->ln:Lcom/bumptech/glide/load/engine/D;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/D;->g(Lcom/bumptech/glide/load/engine/A;)V

    return-void
.end method

.method public e(Lcom/bumptech/glide/load/engine/A;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/A<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/l;->Lk()V

    .line 2
    instance-of p0, p1, Lcom/bumptech/glide/load/engine/u;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Lcom/bumptech/glide/load/engine/u;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/u;->release()V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot release anything but an EngineResource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shutdown()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->kn:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->shutdown()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->sm:Lcom/bumptech/glide/load/engine/Engine$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$a;->clearDiskCacheIfCreated()V

    .line 3
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->nn:Lcom/bumptech/glide/load/engine/ActiveResources;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->shutdown()V

    return-void
.end method
