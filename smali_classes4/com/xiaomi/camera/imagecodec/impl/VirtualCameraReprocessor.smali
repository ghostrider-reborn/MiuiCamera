.class public Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;
.super Ljava/lang/Object;
.source "VirtualCameraReprocessor.java"

# interfaces
.implements Lcom/xiaomi/camera/imagecodec/Reprocessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$ReprocessHandler;
    }
.end annotation


# static fields
.field private static BACK_VT_CAMERA_ID_DEFAULT:Ljava/lang/String; = "100"

.field private static FRONT_VT_CAMERA_ID_DEFAULT:Ljava/lang/String; = "101"

.field private static final MAX_IMAGE_BUFFER_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VirtualCameraReprocessor"

.field public static final sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton<",
            "Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackVtCameraId:Ljava/lang/String;

.field private final mCameraLock:Ljava/lang/Object;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOperationHandler:Landroid/os/Handler;

.field private mCameraOperationThread:Landroid/os/HandlerThread;

.field private volatile mCreatingReprocessSession:Z

.field private mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field private mCurrentSessionId:I

.field private final mDataLock:Ljava/lang/Object;

.field private mFrontVtCameraId:Ljava/lang/String;

.field private mInitialized:Z

.field private mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

.field private mNeedReopenCamera:Z

.field private mPicImageReader:Landroid/media/ImageReader;

.field private mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

.field private mReprocessHandler:Landroid/os/Handler;

.field private mReprocessImageWriter:Landroid/media/ImageWriter;

.field private mReprocessStartTime:J

.field private mReprocessThread:Landroid/os/HandlerThread;

.field private mTaskDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/xiaomi/camera/imagecodec/ReprocessData;",
            ">;"
        }
    .end annotation
.end field

.field private mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mYuvImageReader:Landroid/media/ImageReader;

.field private mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sInstance:Lcom/xiaomi/camera/imagecodec/Reprocessor$Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->BACK_VT_CAMERA_ID_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mBackVtCameraId:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->FRONT_VT_CAMERA_ID_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mFrontVtCameraId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-direct {v0, v1, v1, v2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mNeedReopenCamera:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mNeedReopenCamera:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/hardware/camera2/CameraCaptureSession;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->getSessionId(Landroid/hardware/camera2/CameraCaptureSession;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/media/ImageWriter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    return-object p1
.end method

.method static synthetic access$1400([Landroid/media/Image$Plane;I)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->getJpegData([Landroid/media/Image$Plane;I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Landroid/media/Image;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->getJpegData(Landroid/media/Image;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessStartTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->checkConditionIsReady()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->reprocessImage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Lcom/xiaomi/camera/imagecodec/ReprocessData;)Lcom/xiaomi/camera/imagecodec/ReprocessData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sendReprocessRequest()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$702(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    return p0
.end method

.method static synthetic access$802(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    return p1
.end method

.method static synthetic access$808(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    return v0
.end method

.method static synthetic access$902(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method private acquireWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private checkConditionIsReady()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "checkConditionIsReady: processor is busy!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 7
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "checkConditionIsReady: ignore null request!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 8
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->createCaptureSessionIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private createCaptureSessionIfNeed(Lcom/xiaomi/camera/imagecodec/ReprocessData;)Z
    .locals 13
    .param p1    # Lcom/xiaomi/camera/imagecodec/ReprocessData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "creating reprocess session..."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvImage()Landroid/media/Image;

    move-result-object v1

    .line 6
    new-instance v3, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 7
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v1

    invoke-direct {v3, v4, v5, v1}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 8
    new-instance v1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputWidth()I

    move-result v4

    .line 10
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputHeight()I

    move-result v5

    .line 11
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v6

    invoke-direct {v1, v4, v5, v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mFrontVtCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mBackVtCameraId:Ljava/lang/String;

    .line 13
    :goto_0
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 14
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    :goto_2
    if-eqz v4, :cond_6

    .line 15
    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    .line 16
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_4

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->openVTCamera(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 19
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCaptureSessionIfNeed: expected device changed. oldId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 20
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 24
    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mNeedReopenCamera:Z

    .line 25
    :cond_5
    :goto_3
    monitor-exit v0

    return v2

    .line 26
    :cond_6
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result p1

    const/16 v4, 0x23

    if-eq p1, v4, :cond_7

    .line 27
    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 28
    :goto_4
    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/16 v8, 0x100

    if-nez v7, :cond_8

    :goto_5
    move v5, v2

    goto/16 :goto_b

    .line 29
    :cond_8
    iget-object v7, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v1, v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 30
    :cond_9
    sget-object v7, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v9, "recreate session. in: %dx%d->%dx%d %s out: %dx%d->%dx%d"

    const/16 v10, 0x9

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    if-nez v11, :cond_a

    move v11, v5

    goto :goto_6

    :cond_a
    iget-object v11, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 31
    invoke-virtual {v11}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v11

    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    iget-object v11, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    if-nez v11, :cond_b

    move v11, v5

    goto :goto_7

    :cond_b
    iget-object v11, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    .line 32
    invoke-virtual {v11}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v11

    :goto_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    const/4 v11, 0x2

    .line 33
    invoke-virtual {v3}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v3}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    if-ne p1, v4, :cond_c

    const-string v12, "yuv"

    goto :goto_8

    :cond_c
    if-ne p1, v8, :cond_d

    const-string v12, "jpeg"

    goto :goto_8

    :cond_d
    const-string v12, "heic"

    :goto_8
    aput-object v12, v10, v11

    const/4 v11, 0x5

    if-nez v6, :cond_e

    move v12, v5

    goto :goto_9

    .line 34
    :cond_e
    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v12

    :goto_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    if-nez v6, :cond_f

    goto :goto_a

    .line 35
    :cond_f
    invoke-virtual {v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v5

    :goto_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v11

    const/4 v5, 0x7

    .line 36
    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    const/16 v5, 0x8

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    .line 37
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_10
    :goto_b
    if-eqz v5, :cond_12

    .line 38
    iput-boolean v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    .line 39
    iput-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    if-eq p1, v4, :cond_11

    .line 40
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 41
    new-instance p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v1

    invoke-direct {p1, v2, v1, v4}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    goto :goto_c

    .line 42
    :cond_11
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 43
    new-instance p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v1

    invoke-direct {p1, v2, v1, v8}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 44
    :goto_c
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInputConfiguration:Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {p0, p1, v1, v2}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->createReprocessSession(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    .line 45
    :cond_12
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private createReprocessSession(Landroid/hardware/camera2/params/InputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V
    .locals 8
    .param p1    # Landroid/hardware/camera2/params/InputConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 3
    invoke-virtual {p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    invoke-virtual {p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const-string v3, "createReprocessSession>>input[%dx%d] output[%dx%d@%d]"

    .line 4
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->initYuvImageReader(II)V

    .line 6
    invoke-virtual {p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getFormat()I

    move-result p3

    invoke-direct {p0, v0, v1, p3}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->initPicImageReader(III)V

    .line 7
    :try_start_0
    invoke-virtual {p2}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    if-eqz p2, :cond_0

    new-array p2, v6, [Landroid/view/Surface;

    .line 8
    iget-object p3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    aput-object p3, p2, v4

    iget-object p3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    aput-object p3, p2, v5

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-array p2, v5, [Landroid/view/Surface;

    .line 9
    iget-object p3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 10
    :goto_0
    iget-object p3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v0, Landroid/hardware/camera2/params/InputConfiguration;

    .line 11
    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    new-instance p1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$4;

    invoke-direct {p1, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$4;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p3, v0, p2, p1, p0}, Landroid/hardware/camera2/CameraDevice;->createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 14
    :goto_1
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "createReprocessSession<<"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getJpegData(Landroid/media/Image;)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getJpegData([Landroid/media/Image$Plane;I)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 6
    array-length v1, p0

    if-le v1, p1, :cond_0

    .line 7
    aget-object v1, p0, p1

    if-eqz v1, :cond_0

    .line 8
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    .line 10
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private static getSessionId(Landroid/hardware/camera2/CameraCaptureSession;)I
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "android.hardware.camera2.impl.CameraCaptureSessionImpl"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mId"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "getSessionId: failed!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private initPicImageReader(III)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "initPicImageReader>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 4
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 5
    invoke-virtual {v0}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 6
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "closing obsolete reprocess reader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 8
    :cond_1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPicImageReader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 9
    invoke-static {p1, p2, p3, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 10
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;

    invoke-direct {p2, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$5;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 11
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "initPicImageReader<<"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initYuvImageReader(II)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initYuvImageReader>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    .line 4
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 5
    :cond_0
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "closing obsolete yuv reader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    :cond_1
    if-lez p1, :cond_3

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x23

    const/4 v1, 0x2

    .line 8
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    .line 9
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    new-instance p2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;

    invoke-direct {p2, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$6;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 10
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "initYuvImageReader<<"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private openVTCamera(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVTCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$3;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    sget-object p1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "openVTCamera: open camera failed! No permission Exception."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private reprocessImage()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/ReprocessData;

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getTotalCaptureResult()Lcom/xiaomi/protocol/ICustomCaptureResult;

    move-result-object v1

    .line 5
    iget v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentSessionId:I

    invoke-static {v1, v2}, Lcom/xiaomi/protocol/ICustomCaptureResult;->toTotalCaptureResult(Lcom/xiaomi/protocol/ICustomCaptureResult;I)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "reprocessImage<<null metadata!"

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reprocessImage: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getJpegQuality()I

    move-result v2

    int-to-byte v2, v2

    .line 10
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v3}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v3

    .line 11
    iget-object v4, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    invoke-virtual {v4}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvImage()Landroid/media/Image;

    move-result-object v4

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessStartTime:J

    .line 14
    iget-object v5, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v5

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 16
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    const/16 v1, 0x23

    if-eq v1, v3, :cond_1

    .line 17
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 18
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 20
    :goto_0
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reprocessImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1, v4}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 22
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->releaseImage(Landroid/media/Image;)V

    .line 23
    new-instance v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$2;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;)V

    .line 24
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 25
    :try_start_2
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 26
    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "reprocessImage<<"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 29
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private sendReprocessRequest()V
    .locals 5
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "============================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "sendReprocessRequest: NOT initialized!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCreatingReprocessSession:Z

    if-eqz v1, :cond_1

    .line 6
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "sendReprocessRequest: creating session..."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 11
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v3, "sendReprocessRequest: idle. Try to close device 30s later."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13
    monitor-exit v1

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "sendReprocessRequest: busy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 19
    :cond_4
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "sendReprocessRequest: send MSG_REPROCESS_IMG"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 22
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method


# virtual methods
.method public deInit()V
    .locals 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "deInit>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 7
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCurrentProcessingData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 12
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 13
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicImageReader:Landroid/media/ImageReader;

    .line 14
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mYuvImageReader:Landroid/media/ImageReader;

    .line 15
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessImageWriter:Landroid/media/ImageWriter;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 18
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mVTCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 19
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 22
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 23
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    .line 24
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 26
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 27
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 28
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 29
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    .line 30
    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 32
    :cond_4
    :goto_1
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v0, "deInit<<"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 33
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 34
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v1, "init>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 5
    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 6
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "camera"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 8
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "CameraOperationThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    .line 9
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 10
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mCameraOperationHandler:Landroid/os/Handler;

    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "JpegEncoderThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    .line 12
    iget-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 13
    new-instance p1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$ReprocessHandler;

    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor$ReprocessHandler;-><init>(Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mReprocessHandler:Landroid/os/Handler;

    .line 14
    iput-boolean v3, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    .line 15
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "init<<"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 17
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setOutputPictureSpec(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputPictureSpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mPicOutputConfiguration:Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    :cond_0
    return-void
.end method

.method public setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "setVTCameraIds: backId=%s frontId=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mBackVtCameraId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mFrontVtCameraId:Ljava/lang/String;

    return-void
.end method

.method public submit(Lcom/xiaomi/camera/imagecodec/ReprocessData;)V
    .locals 6
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getImageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", yuv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvImage()Landroid/media/Image;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fmt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getOutputFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getResultListener()Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string p1, "submit: drop this request due to no callback was provided!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mInitialized:Z

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->acquireWakeLock()V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->isImageFromPool()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->getYuvImage()Landroid/media/Image;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->toImageQueueKey(Landroid/media/Image;)Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    move-result-object v1

    .line 9
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/camera/imagecodec/ImagePool;->isImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    sget-object v2, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v4, "submit: wait image pool>>"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->waitIfImageQueueFull(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;II)V

    .line 12
    sget-object v1, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    const-string v2, "submit: wait image pool<<"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 14
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->queueImage(Landroid/media/Image;)V

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getImage(J)Landroid/media/Image;

    move-result-object v0

    .line 16
    sget-object v3, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "submit: image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p1, v0}, Lcom/xiaomi/camera/imagecodec/ReprocessData;->setYuvImage(Landroid/media/Image;)V

    .line 18
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/imagecodec/ImagePool;->holdImage(Landroid/media/Image;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->mTaskDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/camera/imagecodec/impl/VirtualCameraReprocessor;->sendReprocessRequest()V

    return-void

    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "NOT initialized. Call init() first!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
