.class Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;
.super Ljava/lang/Object;
.source "FragmentFullScreen.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureListenerWrapper"
.end annotation


# instance fields
.field private mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

.field private volatile mRequestCapture:Z

.field private mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureHolder:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/view/TextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mTextureHolder:Landroid/view/TextureView;

    .line 3
    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "plz call this after videoEditor.init()~"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFrame()Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mTextureHolder:Landroid/view/TextureView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mRequestCapture:Z

    return-void
.end method

.method public hasCaptureRequest()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mRequestCapture:Z

    return p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceTextureAvailable : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FullScreen"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {p0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullScreen"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSurfaceTextureAvailable : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FullScreen"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mSuperListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1300(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1000(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureUpdated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullScreen"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->getFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$1402(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;->onUpdate()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    :cond_1
    return-void
.end method

.method public requestCapture()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mRequestCapture:Z

    return-void
.end method

.method public requestUpdateCallbackOnce(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->mOnFrameUpdatedCallback:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;

    return-void
.end method
