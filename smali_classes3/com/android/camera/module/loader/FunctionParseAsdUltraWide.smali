.class public Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;
.super Ljava/lang/Object;
.source "FunctionParseAsdUltraWide.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final ULTRA_WIDE_RECOM:[I

.field public static final ULTRA_WIDE_SIDEFACE_TYPE:I = 0x2

.field public static final ULTRA_WIDE_TOWER_BUILDING_TYPE:I = 0x1


# instance fields
.field private mEnable:Z

.field private mIsOpenUltraWide:Z

.field private mMiAsdDetectProtocol:Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;

.field private mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/BaseModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->ULTRA_WIDE_RECOM:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(ILcom/android/camera/module/BaseModule;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->isSupportUltraWide()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa5

    if-ne p1, v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isUltraWideConfigOpen(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x40400000    # 3.0f

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mEnable:Z

    .line 6
    iget-boolean p1, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mEnable:Z

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private isOpenUltraWide(I)Z
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    .line 1
    :goto_0
    sget-object v2, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->ULTRA_WIDE_RECOM:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 2
    aget v1, v2, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, p0

    :goto_1
    if-eqz v1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mEnable:Z

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    if-nez v0, :cond_1

    return-object p1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mMiAsdDetectProtocol:Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;

    if-nez v1, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xeb

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;

    iput-object v1, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mMiAsdDetectProtocol:Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getUltraWideDetectedResult(Landroid/hardware/camera2/CaptureResult;)I

    move-result v1

    .line 7
    invoke-direct {p0, v1}, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->isOpenUltraWide(I)Z

    move-result v2

    .line 8
    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isZoomRatioBetweenUltraAndWide()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mIsOpenUltraWide:Z

    if-ne v0, v2, :cond_4

    return-object p1

    .line 11
    :cond_4
    iput-boolean v2, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mIsOpenUltraWide:Z

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mMiAsdDetectProtocol:Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;

    if-eqz v0, :cond_6

    .line 13
    invoke-static {}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->isAlreadyTip()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p1

    .line 14
    :cond_5
    iget-object p0, p0, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->mMiAsdDetectProtocol:Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;

    invoke-interface {p0, v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MiAsdDetect;->updateUltraWide(ZI)V

    :cond_6
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionParseAsdUltraWide;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method
