.class Lcom/tvbusa/encore/tv/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/LoginActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/LoginActivity;

    .line 57
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LoginActivity$1;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LoginActivity$1;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8acb\u5230encoreTVB\u7db2\u7ad9\u6216\u624b\u6a5f\u61c9\u7528\u7a0b\u5f0f\u767b\u8a18\u5e33\u6236"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method
