.class public Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/android/ssologinwrapper/remote/ISsoRemoteRequestParam;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "com.taobao.mtop.login.sso.getSsoViewInfo"

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->a:Ljava/lang/String;

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getApiVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUmidToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->j:Ljava/lang/String;

    return-object v0
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/remote/getssoviewinfo/GetSsoViewInfoParam;->k:Ljava/lang/String;

    return-void
.end method
