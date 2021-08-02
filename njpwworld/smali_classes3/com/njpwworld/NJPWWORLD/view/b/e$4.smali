.class Lcom/njpwworld/NJPWWORLD/view/b/e$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/njpwworld/NJPWWORLD/view/b/e;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$4;->b:Lcom/njpwworld/NJPWWORLD/view/b/e;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$4;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$4;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
