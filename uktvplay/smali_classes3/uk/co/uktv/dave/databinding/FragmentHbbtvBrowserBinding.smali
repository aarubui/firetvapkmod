.class public final Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;
.super Ljava/lang/Object;
.source "FragmentHbbtvBrowserBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final browserMainView:Landroid/widget/RelativeLayout;

.field public final browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/vewd/core/sdk/RestrictedHbbTvView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "browserMainView",
            "browserView"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 31
    iput-object p2, p0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserMainView:Landroid/widget/RelativeLayout;

    .line 32
    iput-object p3, p0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->browserView:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 62
    move-object v0, p0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a005b

    .line 65
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vewd/core/sdk/RestrictedHbbTvView;

    if-eqz v2, :cond_0

    .line 70
    new-instance p0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    invoke-direct {p0, v0, v0, v2}, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/vewd/core/sdk/RestrictedHbbTvView;)V

    return-object p0

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    const v0, 0x7f0d0038

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->bind(Landroid/view/View;)Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Luk/co/uktv/dave/databinding/FragmentHbbtvBrowserBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
