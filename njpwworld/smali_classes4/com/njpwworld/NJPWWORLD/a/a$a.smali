.class Lcom/njpwworld/NJPWWORLD/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/njpwworld/NJPWWORLD/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/njpwworld/NJPWWORLD/a/a;


# direct methods
.method private constructor <init>(Lcom/njpwworld/NJPWWORLD/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/a/a$a;->a:Lcom/njpwworld/NJPWWORLD/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/njpwworld/NJPWWORLD/a/a;Lcom/njpwworld/NJPWWORLD/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/a/a$a;-><init>(Lcom/njpwworld/NJPWWORLD/a/a;)V

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method
