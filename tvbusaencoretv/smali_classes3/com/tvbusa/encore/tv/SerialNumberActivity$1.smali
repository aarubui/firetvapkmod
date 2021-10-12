.class Lcom/tvbusa/encore/tv/SerialNumberActivity$1;
.super Ljava/lang/Object;
.source "SerialNumberActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/SerialNumberActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/SerialNumberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tvbusa/encore/tv/SerialNumberActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$1;->this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
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
    iget-object v0, p0, Lcom/tvbusa/encore/tv/SerialNumberActivity$1;->this$0:Lcom/tvbusa/encore/tv/SerialNumberActivity;

    invoke-virtual {v0}, Lcom/tvbusa/encore/tv/SerialNumberActivity;->finish()V

    .line 56
    return-void
.end method
