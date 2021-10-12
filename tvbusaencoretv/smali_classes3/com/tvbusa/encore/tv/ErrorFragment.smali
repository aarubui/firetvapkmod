.class public Lcom/tvbusa/encore/tv/ErrorFragment;
.super Landroidx/leanback/app/ErrorSupportFragment;
.source "ErrorFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorFragment"

.field private static final TRANSLUCENT:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/leanback/app/ErrorSupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 32
    const-string v0, "ErrorFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0, p1}, Landroidx/leanback/app/ErrorSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ErrorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method setErrorContent()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ErrorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0800ca

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ErrorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setDefaultBackground(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/ErrorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setButtonText(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/tvbusa/encore/tv/ErrorFragment$1;

    invoke-direct {v0, p0}, Lcom/tvbusa/encore/tv/ErrorFragment$1;-><init>(Lcom/tvbusa/encore/tv/ErrorFragment;)V

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
