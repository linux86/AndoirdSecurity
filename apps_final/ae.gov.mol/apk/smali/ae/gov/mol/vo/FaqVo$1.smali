.class Lae/gov/mol/vo/FaqVo$1;
.super Ljava/lang/Object;
.source "FaqVo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/vo/FaqVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lae/gov/mol/vo/FaqVo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/FaqVo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    new-instance v0, Lae/gov/mol/vo/FaqVo;

    invoke-direct {v0, p1}, Lae/gov/mol/vo/FaqVo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/FaqVo$1;->createFromParcel(Landroid/os/Parcel;)Lae/gov/mol/vo/FaqVo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lae/gov/mol/vo/FaqVo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 52
    new-array v0, p1, [Lae/gov/mol/vo/FaqVo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lae/gov/mol/vo/FaqVo$1;->newArray(I)[Lae/gov/mol/vo/FaqVo;

    move-result-object v0

    return-object v0
.end method
