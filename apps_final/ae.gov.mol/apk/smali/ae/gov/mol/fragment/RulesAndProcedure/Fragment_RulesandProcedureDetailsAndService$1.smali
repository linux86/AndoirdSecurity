.class Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$1;
.super Ljava/lang/Object;
.source "Fragment_RulesandProcedureDetailsAndService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$1;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService$1;->this$0:Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;

    iget-object v0, v0, Lae/gov/mol/fragment/RulesAndProcedure/Fragment_RulesandProcedureDetailsAndService;->mCustomFragmentActivity:Lae/gov/mol/helper/CustomFragmentActivity;

    invoke-virtual {v0}, Lae/gov/mol/helper/CustomFragmentActivity;->removeBack()V

    .line 116
    return-void
.end method
