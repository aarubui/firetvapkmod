.class public Lcom/njpwworld/NJPWWORLD/a/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/a/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/njpwworld/NJPWWORLD/a/j$a;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/njpwworld/NJPWWORLD/a/j$a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/a/j;->a:Lcom/njpwworld/NJPWWORLD/a/j$a;

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/a/j;->b:Ljava/lang/String;

    iput p3, p0, Lcom/njpwworld/NJPWWORLD/a/j;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/njpwworld/NJPWWORLD/a/j$a;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/j;->a:Lcom/njpwworld/NJPWWORLD/a/j$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/a/j;->c:I

    return v0
.end method
