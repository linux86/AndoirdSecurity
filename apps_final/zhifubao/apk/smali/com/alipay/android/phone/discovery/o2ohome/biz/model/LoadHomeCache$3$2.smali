.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$2;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$2;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;->onPromoInfoFinish(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;)V

    .line 115
    return-void
.end method