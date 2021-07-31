.class public Lcom/tvbusa/encore/tv/BrowseErrorActivity;
.super Landroid/app/Activity;
.source "BrowseErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;
    }
.end annotation


# static fields
.field private static final SPINNER_HEIGHT:I = 0x64

.field private static final SPINNER_WIDTH:I = 0x64

.field private static final TIMER_DELAY:I = 0xbb8


# instance fields
.field private mErrorFragment:Lcom/tvbusa/encore/tv/ErrorFragment;

.field private mSpinnerFragment:Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tvbusa/encore/tv/BrowseErrorActivity;)Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BrowseErrorActivity;

    .line 30
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->mSpinnerFragment:Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tvbusa/encore/tv/BrowseErrorActivity;)Lcom/tvbusa/encore/tv/ErrorFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tvbusa/encore/tv/BrowseErrorActivity;

    .line 30
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->mErrorFragment:Lcom/tvbusa/encore/tv/ErrorFragment;

    return-object v0
.end method

.method private testError()V
    .locals 4

    .line 50
    new-instance v0, Lcom/tvbusa/encore/tv/ErrorFragment;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/ErrorFragment;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->mErrorFragment:Lcom/tvbusa/encore/tv/ErrorFragment;

    .line 57
    new-instance v0, Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;

    invoke-direct {v0}, Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;-><init>()V

    iput-object v0, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->mSpinnerFragment:Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;

    .line 58
    invoke-virtual {p0}, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->mSpinnerFragment:Lcom/tvbusa/encore/tv/BrowseErrorActivity$SpinnerFragment;

    .line 60
    const v2, 0x7f0a019f

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 64
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/tvbusa/encore/tv/BrowseErrorActivity$1;

    invoke-direct {v1, p0}, Lcom/tvbusa/encore/tv/BrowseErrorActivity$1;-><init>(Lcom/tvbusa/encore/tv/BrowseErrorActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/tvbusa/encore/tv/BrowseErrorActivity;->testError()V

    .line 47
    return-void
.end method
