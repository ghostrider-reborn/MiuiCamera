.class public Lcom/ss/android/medialib/camera/ImageFrame;
.super Ljava/lang/Object;
.source "ImageFrame.java"


# static fields
.field public static final BMP:I = 0x2

.field public static final JPEG:I = 0x1

.field public static final NV21:I = -0x3

.field public static final PNG:I = 0x0

.field public static final UNKNOW:I = -0x1

.field public static final YUV_888:I = -0x2


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field format:I

.field height:I

.field mBuf:[B

.field mPlans:[Landroid/media/Image$Plane;

.field width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 13
    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    .line 3
    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    .line 4
    iput p3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    .line 5
    iput p4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method

.method public constructor <init>([Landroid/media/Image$Plane;III)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mPlans:[Landroid/media/Image$Plane;

    .line 8
    iput p2, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    .line 9
    iput p3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    .line 10
    iput p4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBuf()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return p0
.end method

.method public getPlans()[Landroid/media/Image$Plane;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mPlans:[Landroid/media/Image$Plane;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    return p0
.end method

.method public setBuf([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->mBuf:[B

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    return-void
.end method
