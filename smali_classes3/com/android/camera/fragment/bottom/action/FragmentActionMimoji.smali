.class public Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentActionMimoji.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mTextViewMimoji:Lcom/android/camera/ui/ColorActivateTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff7

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b0015

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090180

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/ColorActivateTextView;

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mTextViewMimoji:Lcom/android/camera/ui/ColorActivateTextView;

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mTextViewMimoji:Lcom/android/camera/ui/ColorActivateTextView;

    const v0, -0x66000001

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mTextViewMimoji:Lcom/android/camera/ui/ColorActivateTextView;

    const v0, -0x4c000001

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/FragmentActionMimoji;->mTextViewMimoji:Lcom/android/camera/ui/ColorActivateTextView;

    const p1, 0x7f0f0197

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 p1, 0xa1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_1
    return-void
.end method

.method public reInit()V
    .locals 0

    return-void
.end method
