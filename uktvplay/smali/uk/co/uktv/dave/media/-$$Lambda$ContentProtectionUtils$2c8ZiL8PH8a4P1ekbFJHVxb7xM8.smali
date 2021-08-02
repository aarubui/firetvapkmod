.class public final synthetic Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Lj$/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lj$/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;->f$0:Ljava/lang/String;

    iput-object p2, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;->f$2:Lj$/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;->f$0:Ljava/lang/String;

    iget-object v1, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Luk/co/uktv/dave/media/-$$Lambda$ContentProtectionUtils$2c8ZiL8PH8a4P1ekbFJHVxb7xM8;->f$2:Lj$/util/function/Consumer;

    invoke-static {v0, v1, v2}, Luk/co/uktv/dave/media/ContentProtectionUtils;->lambda$extractLicenseAcquisitionUrl$1(Ljava/lang/String;Landroid/os/Handler;Lj$/util/function/Consumer;)V

    return-void
.end method
