.class Lcom/njpwworld/NJPWWORLD/view/b/c$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/b/c$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/b/c$3;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/b/c$3;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$3$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/b/c$3$2;->a:Lcom/njpwworld/NJPWWORLD/view/b/c$3;

    iget-object p1, p1, Lcom/njpwworld/NJPWWORLD/view/b/c$3;->b:Lcom/njpwworld/NJPWWORLD/view/b/c;

    invoke-static {p1}, Lcom/njpwworld/NJPWWORLD/view/b/c;->a(Lcom/njpwworld/NJPWWORLD/view/b/c;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method