.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;


# instance fields
.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;->userId:Ljava/lang/String;

    return-void
.end method
