.class public Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;
.super Ljava/lang/Object;
.source "MimojiTimbreInfo.java"


# static fields
.field public static final TIMBRE_BABY:I = 0x4

.field public static final TIMBRE_GENTLEMEN:I = 0x1

.field public static final TIMBRE_GIRL:I = 0x3

.field public static final TIMBRE_LADY:I = 0x2

.field public static final TIMBRE_ROBOT:I = 0x5

.field public static final timbreTypes:[I


# instance fields
.field private mIsSelected:Z

.field private mResourceId:I

.field private mTimbreId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->timbreTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mTimbreId:I

    .line 4
    iput p2, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getResourceId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mResourceId:I

    return p0
.end method

.method public getTimbreId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mTimbreId:I

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mIsSelected:Z

    return p0
.end method

.method public setResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mResourceId:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mIsSelected:Z

    return-void
.end method

.method public setTimbreId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiTimbreInfo;->mTimbreId:I

    return-void
.end method
