.class Lcom/tvbusa/encore/tv/LoginActivity$3$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/LoginActivity$3;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/LoginActivity$3;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/LoginActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/LoginActivity$3;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/tvbusa/encore/tv/LoginActivity$3$1;->this$1:Lcom/tvbusa/encore/tv/LoginActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/tvbusa/encore/tv/LoginActivity$3$1;->this$1:Lcom/tvbusa/encore/tv/LoginActivity$3;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/LoginActivity$3;->this$0:Lcom/tvbusa/encore/tv/LoginActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u767b\u5165\u5931\u6557 \u8acb\u7a0d\u5f8c\u91cd\u8a66"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method
