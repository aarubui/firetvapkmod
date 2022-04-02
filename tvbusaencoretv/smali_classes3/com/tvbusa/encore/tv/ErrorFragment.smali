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

    const v1, 0x7f120025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/ErrorFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method setErrorContent()V
    .locals 0

    .line 50
    return-void
.end method
