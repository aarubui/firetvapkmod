.class final enum Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;
.super Ljava/lang/Enum;
.source "BCOVPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AudioFocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

.field public static final enum Focused:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

.field public static final enum NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

.field public static final enum NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 133
    new-instance v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    const/4 v1, 0x0

    const-string v2, "Focused"

    invoke-direct {v0, v2, v1}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 134
    new-instance v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    const/4 v2, 0x1

    const-string v3, "NoFocusNoDuck"

    invoke-direct {v0, v3, v2}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 135
    new-instance v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    const/4 v3, 0x2

    const-string v4, "NoFocusCanDuck"

    invoke-direct {v0, v4, v3}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    sget-object v4, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->$VALUES:[Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 132
    const-class v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    return-object v0
.end method

.method public static values()[Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;
    .locals 1

    .line 132
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->$VALUES:[Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    invoke-virtual {v0}, [Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tvbusa/encore/tv/BCOVPlayerActivity$AudioFocusState;

    return-object v0
.end method
