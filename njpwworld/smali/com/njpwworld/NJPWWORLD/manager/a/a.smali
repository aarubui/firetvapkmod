.class public Lcom/njpwworld/NJPWWORLD/manager/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/manager/a/a$b;,
        Lcom/njpwworld/NJPWWORLD/manager/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/njpwworld/NJPWWORLD/manager/a/c;

.field private b:Lcom/njpwworld/NJPWWORLD/manager/a/b;

.field private c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/manager/a/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->c:Lcom/njpwworld/NJPWWORLD/manager/a/a$a;

    new-instance p2, Lcom/njpwworld/NJPWWORLD/manager/a/c;

    invoke-direct {p2, p0}, Lcom/njpwworld/NJPWWORLD/manager/a/c;-><init>(Lcom/njpwworld/NJPWWORLD/manager/a/a;)V

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a:Lcom/njpwworld/NJPWWORLD/manager/a/c;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->a:Lcom/njpwworld/NJPWWORLD/manager/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/njpwworld/NJPWWORLD/manager/a/a$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/njpwworld/NJPWWORLD/manager/a/b;

    invoke-direct {v0, p0, p2}, Lcom/njpwworld/NJPWWORLD/manager/a/b;-><init>(Lcom/njpwworld/NJPWWORLD/manager/a/a;Lcom/njpwworld/NJPWWORLD/manager/a/a$b;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->b:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    iget-object p2, p0, Lcom/njpwworld/NJPWWORLD/manager/a/a;->b:Lcom/njpwworld/NJPWWORLD/manager/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
