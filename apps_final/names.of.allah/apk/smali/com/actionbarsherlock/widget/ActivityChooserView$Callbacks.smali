.class Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V
    .locals 0

    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;Lcom/actionbarsherlock/widget/ActivityChooserView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V

    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$1100(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$1100(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$800(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->dismissPopup()Z

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$000(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$000(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$000(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$700(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$900(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    const/4 v1, 0x0

    # setter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$602(Lcom/actionbarsherlock/widget/ActivityChooserView;Z)Z

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$1000(Lcom/actionbarsherlock/widget/ActivityChooserView;)I

    move-result v1

    # invokes: Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$500(Lcom/actionbarsherlock/widget/ActivityChooserView;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onDismiss()V
    .locals 2

    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserView;->mProvider:Lcom/actionbarsherlock/view/ActionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/view/ActionProvider;->subUiVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    const v1, 0x7fffffff

    # invokes: Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$500(Lcom/actionbarsherlock/widget/ActivityChooserView;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->dismissPopup()Z

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$600(Lcom/actionbarsherlock/widget/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$000(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$000(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$000(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$700(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$800(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$000(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # setter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
    invoke-static {v0, v2}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$602(Lcom/actionbarsherlock/widget/ActivityChooserView;Z)Z

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$Callbacks;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    # getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mInitialActivityCount:I
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$1000(Lcom/actionbarsherlock/widget/ActivityChooserView;)I

    move-result v1

    # invokes: Lcom/actionbarsherlock/widget/ActivityChooserView;->showPopupUnchecked(I)V
    invoke-static {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$500(Lcom/actionbarsherlock/widget/ActivityChooserView;I)V

    :cond_0
    return v2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
