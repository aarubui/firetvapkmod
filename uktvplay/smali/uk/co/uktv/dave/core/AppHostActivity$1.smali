.class Luk/co/uktv/dave/core/AppHostActivity$1;
.super Ljava/lang/Object;
.source "AppHostActivity.java"

# interfaces
.implements Luk/co/uktv/dave/core/MessageHandlerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/core/AppHostActivity;->loadApp(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/core/AppHostActivity;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/core/AppHostActivity;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/uktv/dave/core/AppHostActivity;

    .prologue
    .line 117
    iput-object p1, p0, Luk/co/uktv/dave/core/AppHostActivity$1;->this$0:Luk/co/uktv/dave/core/AppHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler(Ljava/lang/String;)Luk/co/uktv/dave/core/MessageHandler;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method
