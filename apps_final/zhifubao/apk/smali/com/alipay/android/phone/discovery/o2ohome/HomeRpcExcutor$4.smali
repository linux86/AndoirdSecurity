.class Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$4;
.super Ljava/lang/Object;
.source "HomeRpcExcutor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->hideTipView()V

    .line 255
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->actionButtonClick()V

    .line 256
    return-void
.end method
