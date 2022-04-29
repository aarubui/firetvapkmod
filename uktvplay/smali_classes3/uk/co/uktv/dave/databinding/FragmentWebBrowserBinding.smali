.class public final Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;
.super Ljava/lang/Object;
.source "FragmentWebBrowserBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final browserMainView:Landroid/widget/RelativeLayout;

.field public final browserView:Landroid/webkit/WebView;

.field public final mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/webkit/WebView;Luk/co/uktv/dave/browser/web/MediaPlayerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "browserMainView",
            "browserView",
            "mediaPlayerView"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 36
    iput-object p2, p0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserMainView:Landroid/widget/RelativeLayout;

    .line 37
    iput-object p3, p0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->browserView:Landroid/webkit/WebView;

    .line 38
    iput-object p4, p0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->mediaPlayerView:Luk/co/uktv/dave/browser/web/MediaPlayerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 68
    move-object v0, p0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a005b

    .line 71
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    const v1, 0x7f0a011a

    .line 77
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Luk/co/uktv/dave/browser/web/MediaPlayerView;

    if-eqz v3, :cond_0

    .line 82
    new-instance p0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    invoke-direct {p0, v0, v0, v2, v3}, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/webkit/WebView;Luk/co/uktv/dave/browser/web/MediaPlayerView;)V

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;
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

    .line 49
    invoke-static {p0, v0, v1}, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;
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

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    :cond_0
    invoke-static {p0}, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->bind(Landroid/view/View;)Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 44
    iget-object v0, p0, Luk/co/uktv/dave/databinding/FragmentWebBrowserBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
