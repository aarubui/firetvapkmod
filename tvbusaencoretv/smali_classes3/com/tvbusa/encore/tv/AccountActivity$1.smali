.class Lcom/tvbusa/encore/tv/AccountActivity$1;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/AccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/AccountActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/AccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/AccountActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/tvbusa/encore/tv/AccountActivity$1;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity$1;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    const-string v1, "UserProfile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tvbusa/encore/tv/AccountActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/tvbusa/encore/tv/AccountActivity$1;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    invoke-virtual {v1}, Lcom/tvbusa/encore/tv/AccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "\u5df2\u6210\u529f\u767b\u51fa\u5e33\u6236"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 58
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "uid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v2, "token"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    iget-object v2, p0, Lcom/tvbusa/encore/tv/AccountActivity$1;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/AccountActivity;->finish()V

    .line 62
    return-void
.end method
