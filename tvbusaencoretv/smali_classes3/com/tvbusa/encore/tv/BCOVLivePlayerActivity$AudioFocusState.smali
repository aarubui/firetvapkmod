.class final enum Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;
.super Ljava/lang/Enum;
.source "BCOVLivePlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AudioFocusState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

.field public static final enum Focused:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

.field public static final enum NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

.field public static final enum NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 101
    new-instance v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    const-string v1, "Focused"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->Focused:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 102
    new-instance v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    const-string v3, "NoFocusNoDuck"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusNoDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 103
    new-instance v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    const-string v5, "NoFocusCanDuck"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->NoFocusCanDuck:Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    .line 100
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->$VALUES:[Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 100
    const-class v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    return-object v0
.end method

.method public static values()[Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;
    .locals 1

    .line 100
    sget-object v0, Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->$VALUES:[Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    invoke-virtual {v0}, [Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tvbusa/encore/tv/BCOVLivePlayerActivity$AudioFocusState;

    return-object v0
.end method
