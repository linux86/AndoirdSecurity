.class public Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponQueryReq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public currentIndex:J

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/giftprod/biz/service/impl/gw/model/CouponQueryReq;->pageSize:I

    return-void
.end method
