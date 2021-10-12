.class Lcom/tvbusa/encore/tv/SliderAdapter$1;
.super Ljava/lang/Object;
.source "SliderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SliderAdapter;->onBindViewHolder(Lcom/tvbusa/encore/tv/SliderAdapter$SliderAdapterVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SliderAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SliderAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SliderAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SliderAdapter$1;->this$0:Lcom/tvbusa/encore/tv/SliderAdapter;

    iput p2, p0, Lcom/tvbusa/encore/tv/SliderAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SliderAdapter$1;->this$0:Lcom/tvbusa/encore/tv/SliderAdapter;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/SliderAdapter;->access$000(Lcom/tvbusa/encore/tv/SliderAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is item in position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tvbusa/encore/tv/SliderAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    return-void
.end method
