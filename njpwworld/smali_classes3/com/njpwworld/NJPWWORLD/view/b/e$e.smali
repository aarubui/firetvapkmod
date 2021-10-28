.class public final enum Lcom/njpwworld/NJPWWORLD/view/b/e$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/view/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/njpwworld/NJPWWORLD/view/b/e$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

.field public static final enum b:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

.field public static final enum c:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

.field private static final synthetic e:[Lcom/njpwworld/NJPWWORLD/view/b/e$e;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    const-string v1, "FF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    const-string v1, "REW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/njpwworld/NJPWWORLD/view/b/e$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->c:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    sget-object v1, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->a:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->b:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->c:Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->e:[Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/njpwworld/NJPWWORLD/view/b/e$e;
    .locals 1

    const-class v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    return-object p0
.end method

.method public static values()[Lcom/njpwworld/NJPWWORLD/view/b/e$e;
    .locals 1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->e:[Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    invoke-virtual {v0}, [Lcom/njpwworld/NJPWWORLD/view/b/e$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/njpwworld/NJPWWORLD/view/b/e$e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/view/b/e$e;->d:I

    return v0
.end method
