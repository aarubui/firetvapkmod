.class public final synthetic Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$Tz8kIJmeFRq4hh0moTG8Bs5--_A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Luk/co/uktv/dave/UKTVPlayActivityBase;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Luk/co/uktv/dave/UKTVPlayActivityBase;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$Tz8kIJmeFRq4hh0moTG8Bs5--_A;->f$0:Luk/co/uktv/dave/UKTVPlayActivityBase;

    iput-object p2, p0, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$Tz8kIJmeFRq4hh0moTG8Bs5--_A;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$Tz8kIJmeFRq4hh0moTG8Bs5--_A;->f$0:Luk/co/uktv/dave/UKTVPlayActivityBase;

    iget-object v1, p0, Luk/co/uktv/dave/-$$Lambda$UKTVPlayActivityBase$Tz8kIJmeFRq4hh0moTG8Bs5--_A;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Luk/co/uktv/dave/UKTVPlayActivityBase;->lambda$initializeWebApp$1$UKTVPlayActivityBase(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Boolean;)V

    return-void
.end method
