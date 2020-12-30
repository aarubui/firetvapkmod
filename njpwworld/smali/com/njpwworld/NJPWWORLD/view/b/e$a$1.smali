.class Lcom/njpwworld/NJPWWORLD/view/b/e$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/e$a;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$a$1;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$a;

    iget-object v0, v0, Lcom/njpwworld/NJPWWORLD/view/b/e$a;->a:Lcom/njpwworld/NJPWWORLD/view/b/e;

    invoke-virtual {v0}, Lcom/njpwworld/NJPWWORLD/view/b/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/njpwworld/NJPWWORLD/view/b/e$a$1$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/view/b/e$a$1$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/b/e$a$1;)V

    invoke-static {v0, v1}, Lcom/njpwworld/NJPWWORLD/c/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
