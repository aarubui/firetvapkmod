.class Lcom/njpwworld/NJPWWORLD/view/a/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/njpwworld/NJPWWORLD/view/a/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/view/a/f;


# direct methods
.method constructor <init>(Lcom/njpwworld/NJPWWORLD/view/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$2;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/view/a/f$2;->a:Lcom/njpwworld/NJPWWORLD/view/a/f;

    const v0, 0x7f0a0062

    if-ne p2, v0, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "2"

    :goto_0
    invoke-static {p1, p2}, Lcom/njpwworld/NJPWWORLD/view/a/f;->a(Lcom/njpwworld/NJPWWORLD/view/a/f;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
