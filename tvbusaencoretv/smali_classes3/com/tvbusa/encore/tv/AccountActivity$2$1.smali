.class Lcom/tvbusa/encore/tv/AccountActivity$2$1;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/AccountActivity$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/AccountActivity$2;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$gender:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/AccountActivity$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/AccountActivity$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$gender",
            "val$email",
            "val$nickname"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/AccountActivity$2;

    iput-object p2, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->val$gender:Ljava/lang/String;

    iput-object p3, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->val$email:Ljava/lang/String;

    iput-object p4, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->val$nickname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/AccountActivity$2;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/AccountActivity$2;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/AccountActivity;->genderValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->val$gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/AccountActivity$2;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/AccountActivity$2;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/AccountActivity;->emailValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->this$1:Lcom/tvbusa/encore/tv/AccountActivity$2;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/AccountActivity$2;->this$0:Lcom/tvbusa/encore/tv/AccountActivity;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/AccountActivity;->nicknameValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tvbusa/encore/tv/AccountActivity$2$1;->val$nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
