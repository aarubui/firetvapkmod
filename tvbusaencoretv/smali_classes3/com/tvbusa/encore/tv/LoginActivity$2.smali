.class Lcom/tvbusa/encore/tv/LoginActivity$2;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LoginActivity$2;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LoginActivity$2;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Lcom/tvbusa/encore/tv/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 69
    .local v0, "email":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/LoginActivity$2;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    const v2, 0x7f0a0210

    invoke-virtual {v1, v2}, Lcom/tvbusa/encore/tv/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 70
    .local v1, "password":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/tvbusa/encore/tv/LoginActivity$2;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8acb\u586b\u5beb\u4f60\u7684\u96fb\u90f5\u5730\u5740"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/tvbusa/encore/tv/LoginActivity$2;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8acb\u586b\u5beb\u4f60\u7684\u5bc6\u78bc"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/tvbusa/encore/tv/LoginActivity$2;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tvbusa/encore/tv/LoginActivity;->signIn(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void
.end method
