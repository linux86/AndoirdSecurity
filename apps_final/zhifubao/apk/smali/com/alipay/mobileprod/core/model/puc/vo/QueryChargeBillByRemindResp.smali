.class public Lcom/alipay/mobileprod/core/model/puc/vo/QueryChargeBillByRemindResp;
.super Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementUrl:Ljava/lang/String;

.field public billKey:Ljava/lang/String;

.field public chargeInstList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/domain/ChargeInst;",
            ">;"
        }
    .end annotation
.end field

.field public city:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public instName:Ljava/lang/String;

.field public ownerName:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public subBizType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;-><init>()V

    return-void
.end method
