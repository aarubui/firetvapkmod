.class public Lcom/utv/http/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field public static ASM_ROOT_URL:Ljava/lang/String; = null

.field public static BI_BASE_URL:Ljava/lang/String; = "http://223.121.14.238"

.field public static BMS_ROOT_URL:Ljava/lang/String; = null

.field private static BMS_ROOT_URL_BASE:Ljava/lang/String; = "http://bms-i.cmishow.com/"

.field public static BMS_version:Ljava/lang/String; = "1"

.field public static COMMENT_ROOT_URL:Ljava/lang/String; = null

.field public static EPGDS_ROOT_URL:Ljava/lang/String; = null

.field public static EPGDS_live_URL:Ljava/lang/String; = "https://m-epg.cmishow.com:1443/?s=104&p=mLiveHome&k=1&v=1&c=1&a=852&i=3&catId=323"

.field public static EPGDS_mAssetRecommend_URL:Ljava/lang/String; = "http://223.121.14.254:8088/?s=59&p=mAssetRecommend&k=1&v=1&c=1&a=852&i=1&assetId="

.field public static EPG_siteId:Ljava/lang/String; = null

.field public static FENG_SHOW_ROOT_URL:Ljava/lang/String; = null

.field public static HMVOD_URL:Ljava/lang/String; = null

.field public static MCN_URL:Ljava/lang/String; = "http://miguapi.utvhk.com:18083/clt/publish/resource/UTV_NEW/playData.jsp?nt=4&objType=LIVE&playerType=4&rate=4&languageType=0&"

.field public static TVB_ACCESS_KEY:Ljava/lang/String; = null

.field public static TVB_PARTNER:Ljava/lang/String; = null

.field public static TVB_URL:Ljava/lang/String; = null

.field private static UDS_ROOT_URL:Ljava/lang/String; = null

.field public static UGC_ROOT_URL:Ljava/lang/String; = null

.field public static USER_AGREEMENT:Ljava/lang/String; = null

.field public static biVersion:Ljava/lang/String; = "1"

.field public static mRequestQueue:Lcom/android/volley/RequestQueue; = null

.field private static type:I = 0x2

.field public static version:Ljava/lang/String; = "1"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    invoke-static {}, Lcom/utv/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/utv/http/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 98
    sget-object v0, Lcom/utv/BuildConfig;->isTestEnvironment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "http://m.fengshows.com/api/v3"

    const-string v2, "http://183.131.15.11/file/useragreement.txt"

    const-string v3, "104"

    if-eqz v0, :cond_0

    .line 99
    sput-object v3, Lcom/utv/http/RequestManager;->EPG_siteId:Ljava/lang/String;

    const-string v0, "http://223.121.14.254/bms/"

    .line 100
    sput-object v0, Lcom/utv/http/RequestManager;->BMS_ROOT_URL:Ljava/lang/String;

    const-string v0, "http://223.121.14.254:8088/?s=104&k=1&v=1&c=1&a=852&i=3&p="

    .line 101
    sput-object v0, Lcom/utv/http/RequestManager;->EPGDS_ROOT_URL:Ljava/lang/String;

    const-string v0, "http://223.121.14.254/uds/cloud/"

    .line 102
    sput-object v0, Lcom/utv/http/RequestManager;->UDS_ROOT_URL:Ljava/lang/String;

    .line 103
    sput-object v2, Lcom/utv/http/RequestManager;->USER_AGREEMENT:Ljava/lang/String;

    const-string v0, "http://183.131.15.11:8072/auth/aua?s=1&v=1&operator=&firm=&modelCode="

    .line 104
    sput-object v0, Lcom/utv/http/RequestManager;->ASM_ROOT_URL:Ljava/lang/String;

    const-string v0, "http://223.121.14.254:8088/?s=104&p=mLiveHome&k=1&v=1&c=1&a=852&i=3&catId=1436"

    .line 105
    sput-object v0, Lcom/utv/http/RequestManager;->EPGDS_live_URL:Ljava/lang/String;

    const-string v0, "http://223.121.14.254:8088/?s=104&p=mAssetRecommend&k=1&v=1&c=1&a=852&i=3&assetId="

    .line 107
    sput-object v0, Lcom/utv/http/RequestManager;->EPGDS_mAssetRecommend_URL:Ljava/lang/String;

    const-string v0, "https://m-uat.anyplex.com/api/"

    .line 109
    sput-object v0, Lcom/utv/http/RequestManager;->HMVOD_URL:Ljava/lang/String;

    const-string v0, "https://uatapi.bigbigchannel.com.hk/"

    .line 110
    sput-object v0, Lcom/utv/http/RequestManager;->TVB_URL:Ljava/lang/String;

    const-string v0, "CMHK"

    .line 111
    sput-object v0, Lcom/utv/http/RequestManager;->TVB_PARTNER:Ljava/lang/String;

    const-string v0, "3sXjlQZpHxudJ2q4q8VyFNlmfZI2nnDvPmyERXf5dGuy4sOLR8"

    .line 112
    sput-object v0, Lcom/utv/http/RequestManager;->TVB_ACCESS_KEY:Ljava/lang/String;

    const-string v0, "http://223.121.14.254/csms"

    .line 114
    sput-object v0, Lcom/utv/http/RequestManager;->COMMENT_ROOT_URL:Ljava/lang/String;

    const-string v0, "http://223.121.14.254:8081/api/"

    .line 115
    sput-object v0, Lcom/utv/http/RequestManager;->UGC_ROOT_URL:Ljava/lang/String;

    .line 117
    sput-object v1, Lcom/utv/http/RequestManager;->FENG_SHOW_ROOT_URL:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_0
    sput-object v3, Lcom/utv/http/RequestManager;->EPG_siteId:Ljava/lang/String;

    const-string v0, "http://bms-i.cmishow.com/bms/"

    .line 120
    sput-object v0, Lcom/utv/http/RequestManager;->BMS_ROOT_URL:Ljava/lang/String;

    const-string v0, "https://m-epg.cmishow.com:1443/?s=104&k=1&v=1&c=1&a=852&i=3&p="

    .line 121
    sput-object v0, Lcom/utv/http/RequestManager;->EPGDS_ROOT_URL:Ljava/lang/String;

    const-string v0, "http://uds-i.cmishow.com/uds/cloud/"

    .line 122
    sput-object v0, Lcom/utv/http/RequestManager;->UDS_ROOT_URL:Ljava/lang/String;

    .line 123
    sput-object v2, Lcom/utv/http/RequestManager;->USER_AGREEMENT:Ljava/lang/String;

    const-string v0, "http://223.121.14.234:8082/auth/aua?s=7&v=1&operator=&firm=&modelCode="

    .line 124
    sput-object v0, Lcom/utv/http/RequestManager;->ASM_ROOT_URL:Ljava/lang/String;

    const-string v0, "https://m-epg.cmishow.com:1443/?s=104&p=mLiveHome&k=1&v=1&c=1&a=852&i=3&catId=1436"

    .line 125
    sput-object v0, Lcom/utv/http/RequestManager;->EPGDS_live_URL:Ljava/lang/String;

    const-string v0, "https://m-epg.cmishow.com:1443/?s=104&p=mAssetRecommend&k=1&v=1&c=1&a=852&i=3&assetId="

    .line 127
    sput-object v0, Lcom/utv/http/RequestManager;->EPGDS_mAssetRecommend_URL:Ljava/lang/String;

    const-string v0, "https://m.anyplex.com/api/"

    .line 129
    sput-object v0, Lcom/utv/http/RequestManager;->HMVOD_URL:Ljava/lang/String;

    const-string v0, "https://api.bigbigchannel.com.hk/"

    .line 130
    sput-object v0, Lcom/utv/http/RequestManager;->TVB_URL:Ljava/lang/String;

    const-string v0, "cmhk"

    .line 131
    sput-object v0, Lcom/utv/http/RequestManager;->TVB_PARTNER:Ljava/lang/String;

    const-string/jumbo v0, "ucJw9JdAjbFmFv1t2Gt4EqT5eZIDKkXLXZoOIulDEqWiBBTLxb"

    .line 132
    sput-object v0, Lcom/utv/http/RequestManager;->TVB_ACCESS_KEY:Ljava/lang/String;

    const-string v0, "https://csms-i.cmishow.com:1446"

    .line 134
    sput-object v0, Lcom/utv/http/RequestManager;->COMMENT_ROOT_URL:Ljava/lang/String;

    const-string v0, "https://uds-i.cmishow.com/api/"

    .line 135
    sput-object v0, Lcom/utv/http/RequestManager;->UGC_ROOT_URL:Ljava/lang/String;

    .line 137
    sput-object v1, Lcom/utv/http/RequestManager;->FENG_SHOW_ROOT_URL:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 668
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v0, 0x2710

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    const/4 p1, 0x0

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 671
    :cond_0
    sget-object p1, Lcom/utv/http/RequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p1, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method protected static bmsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 732
    new-instance v0, Lcom/utv/http/RequestManager$21;

    invoke-direct {v0, p1, p0}, Lcom/utv/http/RequestManager$21;-><init>(Ljava/lang/String;Lcom/utv/http/RequestListener;)V

    return-object v0
.end method

.method protected static epgdsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/utv/http/RequestManager$20;

    invoke-direct {v0, p1, p0}, Lcom/utv/http/RequestManager$20;-><init>(Ljava/lang/String;Lcom/utv/http/RequestListener;)V

    return-object v0
.end method

.method public static getASM(Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/http/RequestManager;->ASM_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-interface {p0, p2}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v0, Lcom/utv/http/RequestManager$14;

    new-instance v1, Lcom/utv/http/RequestManager$12;

    invoke-direct {v1, p0, p2}, Lcom/utv/http/RequestManager$12;-><init>(Lcom/utv/http/RequestListener;Ljava/lang/String;)V

    new-instance v2, Lcom/utv/http/RequestManager$13;

    invoke-direct {v2, p0, p2}, Lcom/utv/http/RequestManager$13;-><init>(Lcom/utv/http/RequestListener;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/utv/http/RequestManager$14;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 524
    invoke-static {v0, p2}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static getBMS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;)V
    .locals 9

    const-string v0, "LANG"

    .line 172
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/http/RequestManager;->BMS_ROOT_URL_BASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-interface {p1, v0}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v1, Lcom/utv/http/RequestManager$2;

    .line 179
    invoke-static {p1, v0}, Lcom/utv/http/RequestManager;->bmsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v6

    .line 180
    invoke-static {p1, v0}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v4, 0x0

    move-object v3, v1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/utv/http/RequestManager$2;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 205
    invoke-static {v1, v0}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static getHMVOD(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "LANG"

    .line 567
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 569
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/utv/http/RequestManager;->HMVOD_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 570
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 576
    :goto_1
    invoke-interface {p1, p3}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    const-string v0, " "

    const-string v1, ""

    .line 577
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance p2, Lcom/utv/http/RequestManager$16;

    const/4 v3, 0x0

    .line 580
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->hmvodListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 581
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$16;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 596
    invoke-static {p2, p3}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static getHMVODXML(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "LANG"

    .line 601
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/utv/http/RequestManager;->HMVOD_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 604
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 608
    :goto_1
    invoke-interface {p1, p3}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    const-string v0, " "

    const-string v1, ""

    .line 609
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 610
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance p2, Lcom/utv/http/RequestManager$17;

    const/4 v3, 0x0

    .line 612
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->hmvodXMLListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 613
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$17;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 628
    invoke-static {p2, p3}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static getHmvodMovieUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 911
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/utv/http/RequestManager;->HMVOD_URL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "detail.action?&appVersion=1.0&osVersion=12.4.6&deviceModel="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&deviceSerial="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&platform=cm&language=zh_TW&network=Wifi&programGuid=%s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHmvodSeasonMovieUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/http/RequestManager;->HMVOD_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "seasonDetail.action?&appVersion=1.0&osVersion=12.4.6&deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&deviceSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&platform=cm&language=zh_TW&network=Wifi&dramaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&seasonId="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHmvodXmlOther(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "LANG"

    .line 633
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 635
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/utv/http/RequestManager;->HMVOD_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 636
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 640
    :goto_1
    invoke-interface {p1, p3}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    const-string v0, " "

    const-string v1, ""

    .line 641
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance p2, Lcom/utv/http/RequestManager$18;

    const/4 v3, 0x0

    .line 645
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->hmvodXMLOtherListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 646
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$18;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 662
    invoke-static {p2, p3}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method private static getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 875
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 877
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public static getMCN(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/http/RequestManager;->MCN_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    invoke-interface {p1, p3}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "parma"

    .line 461
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance p2, Lcom/utv/http/RequestManager$11;

    .line 463
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->mcnListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 464
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    const/4 v3, 0x0

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$11;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 479
    invoke-static {p2, p3}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static getUDS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "LANG"

    .line 333
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/http/RequestManager;->UDS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/utv/http/RequestManager;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&siteId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "65"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&actualSiteId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/utv/util/Constant;->actualSiteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&localz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-interface {p1, p3}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance p2, Lcom/utv/http/RequestManager$7;

    .line 349
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->epgdsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v6

    .line 350
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v4, 0x0

    move-object v3, p2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/utv/http/RequestManager$7;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 365
    invoke-static {p2, p3}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static getUDSNOLANG(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "LANG"

    .line 425
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/http/RequestManager;->UDS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/utv/http/RequestManager;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&siteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "65"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-interface {p1, p3}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance p2, Lcom/utv/http/RequestManager$10;

    .line 437
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->epgdsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 438
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    const/4 v3, 0x0

    move-object v2, p2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$10;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 453
    invoke-static {p2, p3}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "LANG"

    .line 906
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/http/RequestManager;->EPGDS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&l="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static hmvodListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 758
    new-instance v0, Lcom/utv/http/RequestManager$22;

    invoke-direct {v0, p1, p0}, Lcom/utv/http/RequestManager$22;-><init>(Ljava/lang/String;Lcom/utv/http/RequestListener;)V

    return-object v0
.end method

.method protected static hmvodXMLListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 784
    new-instance v0, Lcom/utv/http/RequestManager$23;

    invoke-direct {v0, p1, p0}, Lcom/utv/http/RequestManager$23;-><init>(Ljava/lang/String;Lcom/utv/http/RequestListener;)V

    return-object v0
.end method

.method protected static hmvodXMLOtherListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 820
    new-instance v0, Lcom/utv/http/RequestManager$24;

    invoke-direct {v0, p0, p1}, Lcom/utv/http/RequestManager$24;-><init>(Lcom/utv/http/RequestListener;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static mcnListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 676
    new-instance v0, Lcom/utv/http/RequestManager$19;

    invoke-direct {v0, p1, p0}, Lcom/utv/http/RequestManager$19;-><init>(Ljava/lang/String;Lcom/utv/http/RequestListener;)V

    return-object v0
.end method

.method public static postBMS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;)V
    .locals 9

    const-string v0, "LANG"

    .line 273
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/http/RequestManager;->BMS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/utv/http/RequestManager;->BMS_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-interface {p1, v0}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Lcom/utv/http/RequestManager$4;

    .line 280
    invoke-static {p1, v0}, Lcom/utv/http/RequestManager;->bmsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v6

    .line 281
    invoke-static {p1, v0}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v4, 0x1

    move-object v3, v1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/utv/http/RequestManager$4;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 288
    invoke-static {v1, v0}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static postEPGDS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "LANG"

    .line 529
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&l="

    if-eqz p3, :cond_2

    const-string v2, "mLiveHome"

    .line 531
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mLiveGroupChannels"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mLiveChannel"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mLivePrograms"

    .line 532
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/utv/http/RequestManager;->EPGDS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    :cond_2
    const-string v2, "mHome"

    .line 535
    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 536
    sget-object v2, Lcom/utv/http/RequestManager;->EPGDS_ROOT_URL:Ljava/lang/String;

    const-string/jumbo v3, "v"

    const-string v4, "2"

    invoke-static {v2, v3, v4}, Lcom/utv/http/RequestManager;->replaceAccessTokenReg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 540
    :cond_4
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/utv/http/RequestManager;->EPGDS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    .line 543
    invoke-interface {p1, p3}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "request"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance p2, Lcom/utv/http/RequestManager$15;

    const/4 v1, 0x0

    .line 546
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->epgdsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v3

    .line 547
    invoke-static {p1, p3}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v4

    move-object v0, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/utv/http/RequestManager$15;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 562
    invoke-static {p2, p3}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static postJson(Lcom/utv/http/entity/JsonReqEntity;Ljava/lang/String;Lcom/utv/http/RequestListener;)V
    .locals 8

    .line 142
    invoke-interface {p2, p1}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/http/RequestManager;->BMS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/utv/http/RequestManager;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "url"

    .line 144
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    move-object v5, p0

    .line 155
    :goto_0
    new-instance p0, Lcom/utv/http/RequestManager$1;

    const/4 v3, 0x1

    .line 157
    invoke-static {p2, p1}, Lcom/utv/http/RequestManager;->responseListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-static {p2, p1}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$1;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string p1, "mytag"

    .line 168
    invoke-static {p0, p1}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static postTVB(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;Ljava/lang/String;)V
    .locals 8

    const-string v0, "LANG"

    .line 315
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/http/RequestManager;->TVB_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-interface {p1, p2}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Lcom/utv/http/RequestManager$6;

    .line 321
    invoke-static {p1, p2}, Lcom/utv/http/RequestManager;->tvbListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 322
    invoke-static {p1, p2}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    const/4 v3, 0x1

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$6;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 328
    invoke-static {v0, p2}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static postUDS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;)V
    .locals 9

    const-string v0, "LANG"

    .line 402
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/http/RequestManager;->UDS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/utv/http/RequestManager;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 406
    invoke-interface {p1, v1}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 408
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "request"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "siteId"

    const-string v4, "65"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "localz"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v0, Lcom/utv/http/RequestManager$9;

    const/4 v4, 0x1

    .line 413
    invoke-static {p1, v1}, Lcom/utv/http/RequestManager;->epgdsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v6

    .line 414
    invoke-static {p1, v1}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    move-object v3, v0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/utv/http/RequestManager$9;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 420
    invoke-static {v0, v1}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static postUDS(Ljava/lang/String;Ljava/lang/String;Lcom/utv/http/RequestListener;)V
    .locals 8

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utv/http/RequestManager;->UDS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/utv/http/RequestManager;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_0

    .line 371
    invoke-interface {p2, p1}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v0, Lcom/utv/http/RequestManager$8;

    const/4 v3, 0x1

    .line 376
    invoke-static {p2, p1}, Lcom/utv/http/RequestManager;->epgdsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    .line 377
    invoke-static {p2, p1}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/utv/http/RequestManager$8;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    .line 398
    invoke-static {v0, p1}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static postUIS(Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;)V
    .locals 9

    const-string v0, "LANG"

    .line 292
    invoke-static {v0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/utv/http/RequestManager;->BMS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 296
    sget-object v3, Lcom/utv/http/RequestManager;->BMS_version:Ljava/lang/String;

    const-string/jumbo v4, "version"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lang"

    .line 297
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platformCode"

    const-string v3, "65"

    .line 298
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-interface {p1, v1}, Lcom/utv/http/RequestListener;->requestStart(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u63a5\u53e3\u8bf7\u6c42\u53c2\u6570 =======\u300b "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "request"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/utv/http/entity/StringReqEntity;->getMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Lcom/utv/http/RequestManager$5;

    .line 303
    invoke-static {p1, v1}, Lcom/utv/http/RequestManager;->bmsListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v6

    .line 304
    invoke-static {p1, v1}, Lcom/utv/http/RequestManager;->responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v4, 0x1

    move-object v3, v0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/utv/http/RequestManager$5;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Lcom/utv/http/entity/StringReqEntity;)V

    .line 310
    invoke-static {v0, v1}, Lcom/utv/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    return-void
.end method

.method public static postUSERIcon(Ljava/io/File;Lcom/utv/http/entity/StringReqEntity;Lcom/utv/http/RequestListener;)V
    .locals 5

    .line 210
    invoke-virtual {p1}, Lcom/utv/http/entity/StringReqEntity;->getMethod()Ljava/lang/String;

    move-result-object p1

    .line 212
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 213
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".png"

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "image"

    if-eqz v3, :cond_0

    const-string v3, "image/png"

    .line 217
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 218
    invoke-static {v3, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {v1, v4, v2, p0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    :cond_0
    const-string v3, ".gif"

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    const/4 p0, -0x1

    const-string v0, "gif is unsupported"

    const-string v1, ""

    .line 222
    invoke-interface {p2, p1, p0, v0, v1}, Lcom/utv/http/RequestListener;->requestError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "jpeg"

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "image/jpeg"

    .line 226
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 227
    invoke-static {v3, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {v1, v4, v2, p0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    :cond_4
    :goto_0
    const-string p0, "platformCode"

    const-string v2, "65"

    .line 232
    invoke-virtual {v1, p0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string/jumbo p0, "userId"

    .line 233
    invoke-static {p0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string/jumbo p0, "userToken"

    .line 234
    invoke-static {p0}, Lcom/utv/util/PreferencesUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 235
    sget-object p0, Lcom/utv/http/RequestManager;->BMS_version:Ljava/lang/String;

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2, p0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 237
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    .line 239
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/utv/http/RequestManager;->BMS_ROOT_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 240
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 243
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance v0, Lcom/utv/http/RequestManager$3;

    invoke-direct {v0, p2, p1}, Lcom/utv/http/RequestManager$3;-><init>(Lcom/utv/http/RequestListener;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :cond_5
    return-void
.end method

.method public static replaceAccessTokenReg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 947
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=[^&]*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method protected static responseError(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 884
    new-instance v0, Lcom/utv/http/RequestManager$27;

    invoke-direct {v0, p0, p1}, Lcom/utv/http/RequestManager$27;-><init>(Lcom/utv/http/RequestListener;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static responseListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 855
    new-instance v0, Lcom/utv/http/RequestManager$26;

    invoke-direct {v0, p1, p0}, Lcom/utv/http/RequestManager$26;-><init>(Ljava/lang/String;Lcom/utv/http/RequestListener;)V

    return-object v0
.end method

.method protected static tvbListener(Lcom/utv/http/RequestListener;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/utv/http/RequestListener;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 834
    new-instance v0, Lcom/utv/http/RequestManager$25;

    invoke-direct {v0, p1, p0}, Lcom/utv/http/RequestManager$25;-><init>(Ljava/lang/String;Lcom/utv/http/RequestListener;)V

    return-object v0
.end method
