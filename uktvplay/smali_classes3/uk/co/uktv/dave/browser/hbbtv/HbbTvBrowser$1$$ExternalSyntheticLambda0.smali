.class public final synthetic Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/vewd/core/sdk/RestrictedHbbTvView;


# direct methods
.method public synthetic constructor <init>(Lcom/vewd/core/sdk/RestrictedHbbTvView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1$$ExternalSyntheticLambda0;->f$0:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/HbbTvBrowser$1$$ExternalSyntheticLambda0;->f$0:Lcom/vewd/core/sdk/RestrictedHbbTvView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/vewd/core/sdk/RestrictedHbbTvView;->setVolume(F)V

    return-void
.end method
