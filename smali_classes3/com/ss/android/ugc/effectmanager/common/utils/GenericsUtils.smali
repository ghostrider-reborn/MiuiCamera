.class public Lcom/ss/android/ugc/effectmanager/common/utils/GenericsUtils;
.super Ljava/lang/Object;
.source "GenericsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSuperClassGenericType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/GenericsUtils;->getSuperClassGenericType(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperClassGenericType(Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 3
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 4
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 6
    array-length v0, p0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget-object v0, p0, p1

    instance-of v0, v0, Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 8
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 9
    :cond_2
    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 10
    :cond_3
    :goto_0
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method
