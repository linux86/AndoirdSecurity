.class Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;
.super Ljava/lang/Object;
.source "FragmentContactUsNearBy.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "mView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "mAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v2, v2, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mCustomFragmentActivity:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    const-class v3, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Details;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mIntent:Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v1, v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v0, v0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mTags:Lae/gov/mol/helper/Tags;

    iget-object v2, v0, Lae/gov/mol/helper/Tags;->mServiceListData:Ljava/lang/String;

    sget-object v0, Lae/gov/mol/MolApplication;->mServiceCenterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy$4;->this$0:Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;

    iget-object v1, v1, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/ContactUs/FragmentContactUsNearBy;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
