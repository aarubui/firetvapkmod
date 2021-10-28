.class public Lcom/njpwworld/NJPWWORLD/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/njpwworld/NJPWWORLD/d/e$b;,
        Lcom/njpwworld/NJPWWORLD/d/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/media/session/MediaSession;

.field private d:Landroid/widget/VideoView;

.field private e:Lcom/njpwworld/NJPWWORLD/b/f;

.field private f:Lcom/njpwworld/NJPWWORLD/d/e$b;

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/njpwworld/NJPWWORLD/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/njpwworld/NJPWWORLD/d/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->h:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->b:Landroid/app/Activity;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->b:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/njpwworld/NJPWWORLD/d/e;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/d/e;I)I
    .locals 0

    iput p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    return p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/d/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/njpwworld/NJPWWORLD/d/e;)Landroid/widget/VideoView;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "NJPW Play session"

    invoke-direct {v0, p1, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    new-instance v0, Lcom/njpwworld/NJPWWORLD/d/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/njpwworld/NJPWWORLD/d/e$a;-><init>(Lcom/njpwworld/NJPWWORLD/d/e;Lcom/njpwworld/NJPWWORLD/d/e$1;)V

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setMediaController(Landroid/media/session/MediaController;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/njpwworld/NJPWWORLD/d/e;)Lcom/njpwworld/NJPWWORLD/d/e$b;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->f:Lcom/njpwworld/NJPWWORLD/d/e$b;

    return-object p0
.end method

.method static synthetic c(Lcom/njpwworld/NJPWWORLD/d/e;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/njpwworld/NJPWWORLD/d/e;)Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 0

    iget-object p0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object p0
.end method

.method static synthetic e(Lcom/njpwworld/NJPWWORLD/d/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    return-wide v0
.end method

.method static synthetic f(Lcom/njpwworld/NJPWWORLD/d/e;)I
    .locals 0

    iget p0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    return p0
.end method

.method static synthetic g(Lcom/njpwworld/NJPWWORLD/d/e;)I
    .locals 0

    iget p0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->h:I

    return p0
.end method

.method static synthetic h(Lcom/njpwworld/NJPWWORLD/d/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->j()V

    return-void
.end method

.method private j()V
    .locals 5

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v1

    int-to-long v3, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    iget-object v1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method private k()J
    .locals 2

    const-wide/16 v0, 0xe7e

    return-wide v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/d/e$1;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/d/e$1;-><init>(Lcom/njpwworld/NJPWWORLD/d/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/d/e$2;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/d/e$2;-><init>(Lcom/njpwworld/NJPWWORLD/d/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    new-instance v1, Lcom/njpwworld/NJPWWORLD/d/e$3;

    invoke-direct {v1, p0}, Lcom/njpwworld/NJPWWORLD/d/e$3;-><init>(Lcom/njpwworld/NJPWWORLD/d/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/njpwworld/NJPWWORLD/b/f;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    return-void
.end method

.method public a(Landroid/widget/VideoView;)V
    .locals 1

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->l()V

    return-void
.end method

.method public a(Lcom/njpwworld/NJPWWORLD/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    return-void
.end method

.method public a(Lcom/njpwworld/NJPWWORLD/b/f;Lcom/njpwworld/NJPWWORLD/d/e$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->b(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setKeepScreenOn(Z)V

    iput-object p2, p0, Lcom/njpwworld/NJPWWORLD/d/e;->f:Lcom/njpwworld/NJPWWORLD/d/e$b;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->l()V

    :cond_0
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    iput v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/njpwworld/NJPWWORLD/d/e;->b(I)V

    iget-object p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    :goto_0
    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->j()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 4

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/njpwworld/NJPWWORLD/d/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mDuration: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    long-to-int p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->h:I

    goto :goto_1

    :cond_1
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public b(Lcom/njpwworld/NJPWWORLD/b/f;)V
    .locals 4

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, " -"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f;->f()Lcom/njpwworld/NJPWWORLD/b/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/njpwworld/NJPWWORLD/b/f$a;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    return-void
.end method

.method public c(I)I
    .locals 4

    iget-wide v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->i:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->d()I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x64

    add-int/2addr p1, v0

    return p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->f()V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->e:Lcom/njpwworld/NJPWWORLD/b/f;

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->b(Lcom/njpwworld/NJPWWORLD/b/f;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->c:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x7918

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x7530

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->b(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->j()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v0

    const/16 v1, 0x7918

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->b()I

    move-result v0

    add-int/lit16 v0, v0, -0x7530

    invoke-virtual {p0, v0}, Lcom/njpwworld/NJPWWORLD/d/e;->b(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    iget v1, p0, Lcom/njpwworld/NJPWWORLD/d/e;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->g:I

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-direct {p0}, Lcom/njpwworld/NJPWWORLD/d/e;->j()V

    :cond_0
    return-void
.end method

.method public i()Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/njpwworld/NJPWWORLD/d/e;->d:Landroid/widget/VideoView;

    return-object v0
.end method
