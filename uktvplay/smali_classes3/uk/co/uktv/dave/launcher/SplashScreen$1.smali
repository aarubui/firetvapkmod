.class Luk/co/uktv/dave/launcher/SplashScreen$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/launcher/SplashScreen;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/launcher/SplashScreen;

.field final synthetic val$splashBackground:I

.field final synthetic val$splashImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/launcher/SplashScreen;ILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$splashBackground",
            "val$splashImage"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Luk/co/uktv/dave/launcher/SplashScreen$1;->this$0:Luk/co/uktv/dave/launcher/SplashScreen;

    iput p2, p0, Luk/co/uktv/dave/launcher/SplashScreen$1;->val$splashBackground:I

    iput-object p3, p0, Luk/co/uktv/dave/launcher/SplashScreen$1;->val$splashImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "format",
            "width",
            "height"
        }
    .end annotation

    .line 45
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p2

    .line 48
    :try_start_0
    iget v0, p0, Luk/co/uktv/dave/launcher/SplashScreen$1;->val$splashBackground:I

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 49
    iget-object v0, p0, Luk/co/uktv/dave/launcher/SplashScreen$1;->val$splashImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 51
    iget-object p3, p0, Luk/co/uktv/dave/launcher/SplashScreen$1;->val$splashImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception p3

    invoke-virtual {p1, p2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 55
    throw p3
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    return-void
.end method
