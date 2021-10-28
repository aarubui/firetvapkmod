.class public Lcom/njpwworld/NJPWWORLD/b/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/b/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/njpwworld/NJPWWORLD/b/j$a;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/b/j$a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/b/j;->a:Lcom/njpwworld/NJPWWORLD/b/j$a;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/b/j;->b:Ljava/lang/String;

    iput p3, p0, Lcom/njpwworld/NJPWWORLD/b/j;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/njpwworld/NJPWWORLD/b/j$a;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/b/j;->a:Lcom/njpwworld/NJPWWORLD/b/j$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/b/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/b/j;->c:I

    return v0
.end method
