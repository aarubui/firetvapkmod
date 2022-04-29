.class public Luk/co/uktv/dave/recommendations/data/Recommendation;
.super Ljava/lang/Object;
.source "Recommendation.java"


# instance fields
.field private description:Ljava/lang/String;

.field private final houseNumber:Ljava/lang/String;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageUrl:Ljava/lang/String;

.field private final pmrId:I

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pmrId",
            "houseNumber",
            "title",
            "description",
            "imageUrl"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->pmrId:I

    .line 56
    iput-object p2, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->houseNumber:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->title:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->description:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "houseNumber",
            "title",
            "description",
            "imageUrl"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 45
    invoke-direct/range {v0 .. v5}, Luk/co/uktv/dave/recommendations/data/Recommendation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseNumber()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->houseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 100
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPmrId()I
    .locals 1

    .line 63
    iget v0, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->pmrId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->description:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageBitmap"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->imageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recommendation{pmrId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->pmrId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", houseNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->houseNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Luk/co/uktv/dave/recommendations/data/Recommendation;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
