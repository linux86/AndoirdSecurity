.class public Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexAndServerTimeRes;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public index:Ljava/lang/String;

.field public serverTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexAndServerTimeRes;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexAndServerTimeRes;->serverTime:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexAndServerTimeRes;->index:Ljava/lang/String;

    return-void
.end method

.method public setServerTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/authcenter/GetIndexAndServerTimeRes;->serverTime:Ljava/lang/String;

    return-void
.end method
