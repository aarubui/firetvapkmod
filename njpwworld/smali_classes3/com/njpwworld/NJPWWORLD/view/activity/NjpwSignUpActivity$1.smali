.class Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/njpwworld/NJPWWORLD/view/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/a/f;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1$1;

    invoke-direct {v2, p0}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1$1;-><init>(Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;)V

    invoke-direct {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/a/f;-><init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/view/a/f$b;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/njpwworld/NJPWWORLD/view/a/f;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;

    invoke-static {v0}, Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;->a(Lcom/njpwworld/NJPWWORLD/view/activity/NjpwSignUpActivity;)V

    return-void
.end method
