.class public Lae/gov/mol/vo/ProfileVo;
.super Ljava/lang/Object;
.source "ProfileVo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/gov/mol/vo/ProfileVo$UserVoData;
    }
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lae/gov/mol/vo/ProfileVo;",
            ">;"
        }
    .end annotation
.end field

.field NewasalUserProfile:Lae/gov/mol/vo/ProfileVo$UserVoData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lae/gov/mol/vo/ProfileVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ProfileVo$1;-><init>(Lae/gov/mol/vo/ProfileVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lae/gov/mol/vo/ProfileVo$1;

    invoke-direct {v0, p0}, Lae/gov/mol/vo/ProfileVo$1;-><init>(Lae/gov/mol/vo/ProfileVo;)V

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 60
    const-class v0, Lae/gov/mol/vo/ProfileVo$UserVoData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lae/gov/mol/vo/ProfileVo$UserVoData;

    iput-object v0, p0, Lae/gov/mol/vo/ProfileVo;->NewasalUserProfile:Lae/gov/mol/vo/ProfileVo$UserVoData;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getNewasalUserProfile()Lae/gov/mol/vo/ProfileVo$UserVoData;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo;->NewasalUserProfile:Lae/gov/mol/vo/ProfileVo$UserVoData;

    return-object v0
.end method

.method public setNewasalUserProfile(Lae/gov/mol/vo/ProfileVo$UserVoData;)V
    .locals 0
    .param p1, "newasalUserProfile"    # Lae/gov/mol/vo/ProfileVo$UserVoData;

    .prologue
    .line 31
    iput-object p1, p0, Lae/gov/mol/vo/ProfileVo;->NewasalUserProfile:Lae/gov/mol/vo/ProfileVo$UserVoData;

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lae/gov/mol/vo/ProfileVo;->NewasalUserProfile:Lae/gov/mol/vo/ProfileVo$UserVoData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    return-void
.end method