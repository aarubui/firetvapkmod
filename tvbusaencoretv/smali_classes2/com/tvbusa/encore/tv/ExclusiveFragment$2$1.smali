.class Lcom/tvbusa/encore/tv/ExclusiveFragment$2$1;
.super Ljava/lang/Object;
.source "ExclusiveFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tvbusa/encore/tv/ExclusiveFragment$2;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tvbusa/encore/tv/ExclusiveFragment$2;


# direct methods
.method constructor <init>(Lcom/tvbusa/encore/tv/ExclusiveFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tvbusa/encore/tv/ExclusiveFragment$2;

    .line 165
    iput-object p1, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$2$1;->this$1:Lcom/tvbusa/encore/tv/ExclusiveFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/tvbusa/encore/tv/ExclusiveFragment$2$1;->this$1:Lcom/tvbusa/encore/tv/ExclusiveFragment$2;

    iget-object v0, v0, Lcom/tvbusa/encore/tv/ExclusiveFragment$2;->this$0:Lcom/tvbusa/encore/tv/ExclusiveFragment;

    invoke-static {v0}, Lcom/tvbusa/encore/tv/ExclusiveFragment;->access$200(Lcom/tvbusa/encore/tv/ExclusiveFragment;)V

    .line 169
    return-void
.end method
