.class Luk/co/uktv/dave/browser/hbbtv/VolumeManager;
.super Ljava/lang/Object;
.source "VolumeManager.java"


# static fields
.field private static final DUCK_VOLUME:F = 0.2f

.field private static final MAX_VOLUME:F = 1.0f

.field private static final MIN_VOLUME:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "VolumeManager"


# instance fields
.field private final audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

.field private final audioManager:Landroid/media/AudioManager;

.field private final currentVolume:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$xvgjOv1dzL1_Brs6GzlhxJq56Us(Luk/co/uktv/dave/browser/hbbtv/VolumeManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->onAudioFocusChange(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->audioManager:Landroid/media/AudioManager;

    .line 29
    invoke-direct {p0}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->prepareAudioFocusRequest()Landroidx/media/AudioFocusRequestCompat;

    move-result-object p1

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

    .line 30
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->currentVolume:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private onAudioFocusChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 66
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->currentVolume:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    const/4 v1, -0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 73
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x3e4ccccd    # 0.2f

    .line 76
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Volume is set to %.1f"

    .line 85
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->currentVolume:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private prepareAudioFocusRequest()Landroidx/media/AudioFocusRequestCompat;
    .locals 3

    .line 52
    new-instance v0, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {v0}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    const/4 v2, 0x3

    .line 54
    invoke-virtual {v0, v2}, Landroidx/media/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Landroidx/media/AudioAttributesCompat$Builder;->setLegacyStreamType(I)Landroidx/media/AudioAttributesCompat$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 58
    new-instance v2, Landroidx/media/AudioFocusRequestCompat$Builder;

    invoke-direct {v2, v1}, Landroidx/media/AudioFocusRequestCompat$Builder;-><init>(I)V

    .line 59
    invoke-virtual {v2, v0}, Landroidx/media/AudioFocusRequestCompat$Builder;->setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media/AudioFocusRequestCompat$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Landroidx/media/AudioFocusRequestCompat$Builder;->setWillPauseWhenDucked(Z)Landroidx/media/AudioFocusRequestCompat$Builder;

    move-result-object v0

    new-instance v1, Luk/co/uktv/dave/browser/hbbtv/VolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager$$ExternalSyntheticLambda0;-><init>(Luk/co/uktv/dave/browser/hbbtv/VolumeManager;)V

    .line 61
    invoke-virtual {v0, v1}, Landroidx/media/AudioFocusRequestCompat$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroidx/media/AudioFocusRequestCompat$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/media/AudioFocusRequestCompat$Builder;->build()Landroidx/media/AudioFocusRequestCompat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .line 46
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->TAG:Ljava/lang/String;

    const-string v1, "Abandoning audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

    invoke-static {v0, v1}, Landroidx/media/AudioManagerCompat;->abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I

    const/4 v0, -0x1

    .line 48
    invoke-direct {p0, v0}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->onAudioFocusChange(I)V

    return-void
.end method

.method public currentVolume()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->currentVolume:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public requestAudioFocus()V
    .locals 2

    .line 38
    sget-object v0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->TAG:Ljava/lang/String;

    const-string v1, "Requesting audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->audioFocusRequest:Landroidx/media/AudioFocusRequestCompat;

    invoke-static {v0, v1}, Landroidx/media/AudioManagerCompat;->requestAudioFocus(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-direct {p0, v1}, Luk/co/uktv/dave/browser/hbbtv/VolumeManager;->onAudioFocusChange(I)V

    :cond_0
    return-void
.end method
