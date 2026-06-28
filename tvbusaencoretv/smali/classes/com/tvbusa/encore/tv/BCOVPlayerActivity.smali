.class public Lcom/tvbusa/encore/tv/BCOVPlayerActivity;
.super Lcom/brightcove/player/view/BrightcovePlayer;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final synthetic t:I


# instance fields
.field public final a:Ljava/lang/String;

.field public c:Lcom/brightcove/player/event/EventEmitter;

.field public d:Lcom/brightcove/ima/GoogleIMAComponent;

.field public e:Z

.field public f:Z

.field public g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:Landroid/media/AudioManager;

.field public r:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcovePlayer;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->a:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->e:Z

    .line 16
    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->f:Z

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->h:Ljava/util/List;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->j:I

    .line 32
    const-string v1, ""

    .line 34
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->k:Ljava/lang/String;

    .line 36
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->l:I

    .line 38
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->m:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->n:I

    .line 42
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->o:I

    .line 44
    invoke-static {}, La/a;->n()Le6/r;

    .line 46
    const/4 v0, 0x3

    .line 49
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->p:I

    .line 50
    iput-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->s:Ljava/lang/String;

    .line 52
    return-void
    .line 54
.end method

.method public static c(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "Ad Break Started"

    .line 5
    const-string v1, "TestIMA"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 12
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->getCurrentPosition()I

    .line 14
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 18
    invoke-virtual {v2}, Lcom/brightcove/player/view/BaseVideoView;->getDuration()I

    .line 20
    move-result v2

    .line 23
    mul-int/lit8 v3, v0, 0x64

    .line 24
    div-int/2addr v3, v2

    .line 26
    const-string v4, "Record AR"

    .line 27
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v4, "Time - "

    .line 32
    const-string v5, " ; Duration - "

    .line 34
    const-string v6, "; Percentage - "

    .line 36
    invoke-static {v4, v0, v5, v2, v6}, Lr4/c;->f(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v2

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/16 v2, 0x2710

    .line 52
    const-string v3, "AdRequest"

    .line 54
    const-string v4, "name"

    .line 56
    if-ge v0, v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    const-string v5, "Preroll - "

    .line 62
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    div-int/lit16 v0, v0, 0x3e8

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/os/Bundle;

    .line 79
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->m:Ljava/lang/String;

    .line 84
    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->r:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 89
    invoke-virtual {p0, v3, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    goto :goto_1

    .line 94
    :cond_0
    const/4 v2, 0x0

    .line 95
    :goto_0
    iget v5, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->p:I

    .line 96
    if-ge v2, v5, :cond_1

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    const-string v6, "Midroll - "

    .line 102
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    div-int/lit16 v6, v0, 0x3e8

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v5

    .line 115
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v5, Landroid/os/Bundle;

    .line 119
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 121
    iget-object v6, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->m:Ljava/lang/String;

    .line 124
    invoke-virtual {v5, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v6, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->r:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 129
    invoke-virtual {v6, v3, v5}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 134
    goto :goto_0

    .line 136
    :cond_1
    :goto_1
    return-void
    .line 137
.end method

.method public static synthetic d(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic e(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic f(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic g(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic h(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic i(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;)Lcom/brightcove/player/view/BaseVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 2
    return-object p0
    .line 4
.end method

.method public static j(Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 5
    move-result v1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    array-length v3, v1

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    new-instance v3, Ljava/io/File;

    .line 19
    aget-object v4, v1, v2

    .line 21
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    invoke-static {v3}, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->j(Ljava/io/File;)Z

    .line 26
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    return v0

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 36
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_2
    if-eqz p0, :cond_3

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 49
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_3
    return v0
    .line 54
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    const/16 v1, 0x17

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    goto/16 :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->d:Lcom/brightcove/ima/GoogleIMAComponent;

    .line 18
    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAComponent;->getVideoAdPlayer()Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 20
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 24
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->e:Z

    .line 26
    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 30
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v0, v1, :cond_5

    .line 35
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 37
    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 41
    move-result-object v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "Pressed Is Skippable- "

    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 54
    invoke-virtual {v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 56
    move-result-object v2

    .line 59
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    .line 60
    move-result v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    const-string v2, "TestIMA"

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    const-string v3, "Pressed Skip Offset- "

    .line 78
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 83
    invoke-virtual {v3}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 85
    move-result-object v3

    .line 88
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getSkipTimeOffset()D

    .line 89
    move-result-wide v3

    .line 92
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    const-string v3, "Pressed CT - "

    .line 105
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 110
    invoke-virtual {v3}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentPosition()I

    .line 112
    move-result v3

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 126
    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getCurrentPosition()I

    .line 128
    move-result v0

    .line 131
    div-int/lit16 v0, v0, 0x3e8

    .line 132
    iget-object v2, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 134
    invoke-virtual {v2}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 136
    move-result-object v2

    .line 139
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    .line 140
    move-result v2

    .line 143
    if-eqz v2, :cond_1

    .line 144
    int-to-double v2, v0

    .line 146
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 147
    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 149
    move-result-object v0

    .line 152
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getSkipTimeOffset()D

    .line 153
    move-result-wide v4

    .line 156
    cmpl-double v0, v2, v4

    .line 157
    if-lez v0, :cond_1

    .line 159
    goto :goto_0

    .line 161
    :cond_1
    iget-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->f:Z

    .line 162
    if-eqz v0, :cond_2

    .line 164
    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->f:Z

    .line 167
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->g:Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;

    .line 169
    invoke-virtual {v0}, Lcom/brightcove/ima/GoogleIMAVideoAdPlayer;->pauseAd()V

    .line 171
    goto :goto_0

    .line 174
    :cond_2
    iput-boolean v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->f:Z

    .line 179
    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 183
    goto :goto_0

    .line 186
    :cond_4
    const-string v0, "HOMEBTN"

    .line 187
    const-string v1, "YES"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 194
    move-result p1

    .line 197
    return p1
    .line 198
.end method

.method public final onAudioFocusChange(I)V
    .locals 1

    .line 1
    const-string v0, "onAudioFocusChange() focusChange? "

    .line 2
    invoke-static {p1, v0}, Lcom/brightcove/player/metadata/a;->k(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->a:Ljava/lang/String;

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
    .line 13
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const v0, 0x7f0e001d    # @layout/activity_bcov 'res/layout/activity_bcov.xml'

    .line 2
    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcovePlayer;->setContentView(I)V

    .line 5
    invoke-super {p0, p1}, Lcom/brightcove/player/view/BrightcovePlayer;->onCreate(Landroid/os/Bundle;)V

    .line 8
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->r:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 15
    iget-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->k:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 19
    move-result p1

    .line 22
    const/4 v0, 0x2

    .line 23
    if-le p1, v0, :cond_0

    .line 24
    iget-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->r:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 26
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->k:Ljava/lang/String;

    .line 28
    iget-object p1, p1, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/android/gms/internal/measurement/h0;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v1, Lcom/google/android/gms/internal/measurement/l0;

    .line 35
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/measurement/l0;-><init>(Lcom/google/android/gms/internal/measurement/h0;Ljava/lang/String;I)V

    .line 38
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/h0;->b(Lcom/google/android/gms/internal/measurement/e0;)V

    .line 41
    :cond_0
    const-string p1, "audio"

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Landroid/media/AudioManager;

    .line 50
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->q:Landroid/media/AudioManager;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 54
    move-result-object p1

    .line 57
    check-cast p1, Lcom/tvbusa/encore/tv/MainApplication;

    .line 58
    const-string p1, "generalInfo"

    .line 60
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 63
    move-result-object p1

    .line 66
    const-string v0, "deviceNumber"

    .line 67
    const-string v1, ""

    .line 69
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->k:Ljava/lang/String;

    .line 75
    const-string v0, "VideoAdRule"

    .line 77
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->s:Ljava/lang/String;

    .line 83
    const-string v0, "MidRoll"

    .line 85
    const/4 v1, 0x3

    .line 87
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 88
    move-result p1

    .line 91
    iput p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->p:I

    .line 92
    const-string p1, "AdRule1"

    .line 94
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->s:Ljava/lang/String;

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 101
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 105
    move-result-object p1

    .line 108
    if-eqz p1, :cond_1

    .line 109
    const-string v0, "id"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    const-string v0, "pid"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    const-string v0, "episodes"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Ljava/util/List;

    .line 127
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->h:Ljava/util/List;

    .line 129
    const-string v0, "parent"

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->m:Ljava/lang/String;

    .line 137
    const-string v0, "banner"

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    const-string v0, "selectedIndex"

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 146
    move-result v0

    .line 149
    iput v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->j:I

    .line 150
    const-string v0, "hasHistory"

    .line 152
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 154
    const-string v0, "historyTime"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 159
    move-result p1

    .line 162
    iput p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->l:I

    .line 163
    :cond_1
    const p1, 0x7f0b007b    # @id/brightcove_video_view

    .line 165
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object p1

    .line 171
    check-cast p1, Lcom/brightcove/player/view/BrightcoveExoPlayerVideoView;

    .line 172
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 174
    invoke-static {p0}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;->checkTvMode(Landroid/content/Context;)Z

    .line 176
    move-result v0

    .line 179
    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;

    .line 182
    const v1, 0x7f0e0123    # @layout/tv_media_controller 'res/layout/tv_media_controller.xml'

    .line 184
    invoke-direct {v0, p1, v1}, Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;-><init>(Lcom/brightcove/player/view/BaseVideoView;I)V

    .line 187
    invoke-virtual {p1, v0}, Lcom/brightcove/player/view/BaseVideoView;->setMediaController(Lcom/brightcove/player/mediacontroller/BrightcoveMediaController;)V

    .line 190
    :cond_2
    iget-object p1, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 193
    invoke-virtual {p1}, Lcom/brightcove/player/view/BaseVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    .line 195
    move-result-object p1

    .line 198
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 199
    const-string p1, "TestIMA"

    .line 201
    const-string v0, "Setup IMA"

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 208
    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 212
    new-instance v1, LK4/g;

    .line 214
    const/4 v2, 0x0

    .line 216
    invoke-direct {v1, p0, v2}, LK4/g;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;I)V

    .line 217
    const-string v2, "adStarted"

    .line 220
    invoke-interface {v0, v2, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 222
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 225
    new-instance v1, LK4/g;

    .line 227
    const/4 v2, 0x1

    .line 229
    invoke-direct {v1, p0, v2}, LK4/g;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;I)V

    .line 230
    const-string v2, "adBreakStarted"

    .line 233
    invoke-interface {v0, v2, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 235
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 238
    new-instance v1, LK4/g;

    .line 240
    const/4 v2, 0x2

    .line 242
    invoke-direct {v1, p0, v2}, LK4/g;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;I)V

    .line 243
    const-string v2, "adCompleted"

    .line 246
    invoke-interface {v0, v2, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 248
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 251
    new-instance v1, LK4/h;

    .line 253
    const/4 v2, 0x0

    .line 255
    invoke-direct {v1, p0, v2, p1}, LK4/h;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 256
    const-string p1, "adsRequestForVideo"

    .line 259
    invoke-interface {v0, p1, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 261
    new-instance p1, Lcom/brightcove/ima/GoogleIMAComponent$Builder;

    .line 264
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 266
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 268
    invoke-direct {p1, v0, v1}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;-><init>(Lcom/brightcove/player/view/BaseVideoView;Lcom/brightcove/player/event/EventEmitter;)V

    .line 270
    const/4 v0, 0x1

    .line 273
    invoke-virtual {p1, v0}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;->setUseAdRules(Z)Lcom/brightcove/ima/GoogleIMAComponent$Builder;

    .line 274
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Lcom/brightcove/ima/GoogleIMAComponent$Builder;->build()Lcom/brightcove/ima/GoogleIMAComponent;

    .line 278
    move-result-object p1

    .line 281
    iput-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->d:Lcom/brightcove/ima/GoogleIMAComponent;

    .line 282
    new-instance p1, Lcom/brightcove/player/edge/Catalog;

    .line 284
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 286
    const v1, 0x7f13002a    # @string/bcov_account_id '5324042807001'

    .line 288
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 291
    move-result-object v1

    .line 294
    const v2, 0x7f13002d    # @string/bcov_policy_id 'BCpkADawqM2ZMzmtkErgyb9g7omDn9jseI0nP3REZj4iSBA4mvenrw6CMvFT7_Oc9UGzqRQkgeZ6uRgBbNttntxFpQ3Ki7n6J3rk ...'

    .line 295
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 301
    invoke-direct {p1, v0, v1, v2}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->h:Ljava/util/List;

    .line 305
    iget v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->j:I

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    move-result-object v0

    .line 312
    check-cast v0, LK4/E;

    .line 313
    iget-object v0, v0, LK4/E;->e:Ljava/lang/String;

    .line 315
    new-instance v1, LK4/i;

    .line 317
    const/4 v2, 0x0

    .line 319
    invoke-direct {v1, p0, v2}, LK4/i;-><init>(Lcom/brightcove/player/view/BrightcovePlayer;I)V

    .line 320
    invoke-virtual {p1, v0, v1}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 323
    new-instance p1, Landroid/os/Bundle;

    .line 326
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 328
    const-string v0, "name"

    .line 331
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->m:Ljava/lang/String;

    .line 333
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    const-string v1, "Program View - "

    .line 340
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->m:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    move-result-object v0

    .line 353
    const-string v1, "Analytics"

    .line 354
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->r:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 359
    const-string v1, "ProgramViews"

    .line 361
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 363
    iget-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 366
    new-instance v0, LK4/j;

    .line 368
    const/4 v1, 0x0

    .line 370
    invoke-direct {v0, p0, v1}, LK4/j;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;I)V

    .line 371
    const-string v1, "completed"

    .line 374
    invoke-interface {p1, v1, v0}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 376
    iget-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 379
    new-instance v0, LK4/j;

    .line 381
    const/4 v1, 0x1

    .line 383
    invoke-direct {v0, p0, v1}, LK4/j;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;I)V

    .line 384
    const-string v1, "progress"

    .line 387
    invoke-interface {p1, v1, v0}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 389
    iget-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 392
    new-instance v0, LK4/j;

    .line 394
    const/4 v1, 0x2

    .line 396
    invoke-direct {v0, p0, v1}, LK4/j;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;I)V

    .line 397
    const-string v1, "didSetVideo"

    .line 400
    invoke-interface {p1, v1, v0}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 402
    iget-object p1, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->c:Lcom/brightcove/player/event/EventEmitter;

    .line 405
    new-instance v0, LK4/j;

    .line 407
    const/4 v1, 0x3

    .line 409
    invoke-direct {v0, p0, v1}, LK4/j;-><init>(Lcom/tvbusa/encore/tv/BCOVPlayerActivity;I)V

    .line 410
    const-string v1, "audioTracks"

    .line 413
    invoke-interface {p1, v1, v0}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 415
    return-void
    .line 418
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 5
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 13
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    const/16 v0, 0x55

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    const/16 v0, 0x59

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    const/16 v0, 0x5a

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "KEYUP"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 27
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    return v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    return v1
    .line 36
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onPause()V

    .line 2
    const-string v0, "HOMEBTN"

    .line 5
    const-string v1, "This is On Pause"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 12
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->isPlaying()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcovePlayer;->brightcoveVideoView:Lcom/brightcove/player/view/BaseVideoView;

    .line 20
    invoke-virtual {v0}, Lcom/brightcove/player/view/BaseVideoView;->stopPlayback()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStart()V

    .line 2
    const-string v0, "Run Audio Focus "

    .line 5
    const-string v1, "CheckAudio"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->q:Landroid/media/AudioManager;

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->a:Ljava/lang/String;

    .line 16
    const-string v1, "mAudionManager is null in requestAudioFocus"

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "Running Audio Focus "

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    const/16 v1, 0x1c

    .line 31
    const/4 v2, 0x3

    .line 33
    const/4 v3, 0x1

    .line 34
    if-lt v0, v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->q:Landroid/media/AudioManager;

    .line 37
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    .line 39
    invoke-direct {v1, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 41
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 44
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 46
    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 49
    move-result-object v4

    .line 52
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 53
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 57
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    .line 65
    move-result-object v1

    .line 68
    new-instance v2, LK4/d;

    .line 69
    const/4 v3, 0x1

    .line 71
    invoke-direct {v2, p0, v3}, LK4/d;-><init>(Lcom/brightcove/player/view/BrightcovePlayer;I)V

    .line 72
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 75
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    .line 79
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->q:Landroid/media/AudioManager;

    .line 87
    invoke-virtual {v0, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 89
    :goto_0
    return-void
    .line 92
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/brightcove/player/view/BrightcovePlayer;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->q:Landroid/media/AudioManager;

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/tvbusa/encore/tv/BCOVPlayerActivity;->a:Ljava/lang/String;

    .line 9
    const-string v1, "mAudionManager is null in abandonAudioFocus"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 17
    :goto_0
    return-void
    .line 20
.end method
