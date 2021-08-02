.class Luk/co/uktv/dave/UKTVPlayApp$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UKTVPlayApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/uktv/dave/UKTVPlayApp;->registerConnectivityMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/uktv/dave/UKTVPlayApp;


# direct methods
.method constructor <init>(Luk/co/uktv/dave/UKTVPlayApp;)V
    .locals 0

    .line 48
    iput-object p1, p0, Luk/co/uktv/dave/UKTVPlayApp$1;->this$0:Luk/co/uktv/dave/UKTVPlayApp;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 51
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->access$000()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 56
    invoke-static {}, Luk/co/uktv/dave/UKTVPlayApp;->access$000()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
