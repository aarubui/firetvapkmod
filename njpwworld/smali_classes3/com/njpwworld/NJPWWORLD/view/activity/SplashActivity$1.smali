.class Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity$1;->a:Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/view/activity/SplashActivity;->finish()V

    return-void
.end method
