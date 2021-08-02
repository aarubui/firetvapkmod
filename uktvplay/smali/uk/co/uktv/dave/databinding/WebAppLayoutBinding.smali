.class public final Luk/co/uktv/dave/databinding/WebAppLayoutBinding;
.super Ljava/lang/Object;
.source "WebAppLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final browserView:Landroid/webkit/WebView;

.field public final mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/webkit/WebView;Luk/co/uktv/dave/media/MediaPlayerView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->rootView:Landroid/view/View;

    .line 29
    iput-object p2, p0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->browserView:Landroid/webkit/WebView;

    .line 30
    iput-object p3, p0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->mediaPlayerView:Luk/co/uktv/dave/media/MediaPlayerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Luk/co/uktv/dave/databinding/WebAppLayoutBinding;
    .locals 3

    const v0, 0x7f080059

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    const v0, 0x7f0800e2

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Luk/co/uktv/dave/media/MediaPlayerView;

    if-eqz v2, :cond_0

    .line 67
    new-instance v0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    invoke-direct {v0, p0, v1, v2}, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;-><init>(Landroid/view/View;Landroid/webkit/WebView;Luk/co/uktv/dave/media/MediaPlayerView;)V

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Luk/co/uktv/dave/databinding/WebAppLayoutBinding;
    .locals 1

    const-string v0, "parent"

    .line 43
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v0, 0x7f0b007a

    .line 45
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-static {p1}, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->bind(Landroid/view/View;)Luk/co/uktv/dave/databinding/WebAppLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 36
    iget-object v0, p0, Luk/co/uktv/dave/databinding/WebAppLayoutBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
