.class public Landroid/support/v13/app/FragmentTabHost;
.super Landroid/widget/TabHost;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v13/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/FragmentManager;

.field private e:I

.field private f:Landroid/widget/TabHost$OnTabChangeListener;

.field private g:Landroid/support/v13/app/FragmentTabHost$TabInfo;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/support/v13/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Landroid/support/v13/app/FragmentTabHost;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->a:Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No tab known for tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eq v0, v1, :cond_5

    if-nez p2, :cond_2

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_3
    if-eqz v1, :cond_4

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/content/Context;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->b:Ljava/lang/Class;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$300(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->c:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$400(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    # setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1, v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    iget v0, p0, Landroid/support/v13/app/FragmentTabHost;->e:I

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->a:Ljava/lang/String;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_4
    :goto_2
    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->g:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    :cond_5
    return-object p2

    :cond_6
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v13/app/FragmentTabHost;->e:I

    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No tab content FrameLayout found for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v13/app/FragmentTabHost;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const v2, 0x1020013

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0, v2}, Landroid/support/v13/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v13/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TabWidget;

    invoke-direct {v1, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setId(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TabWidget;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x1020011

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    iget v3, p0, Landroid/support/v13/app/FragmentTabHost;->e:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100f3

    aput v1, v0, v2

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v13/app/FragmentTabHost;->e:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;

    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v0, p2, p3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-boolean v2, p0, Landroid/support/v13/app/FragmentTabHost;->h:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    # setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1, v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->a:Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    # setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v0, v4}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_0

    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->a:Ljava/lang/String;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->g:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    :cond_2
    # getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->d:Landroid/app/Fragment;
    invoke-static {v0}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->h:Z

    invoke-direct {p0, v3, v1}, Landroid/support/v13/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->h:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-virtual {p1}, Landroid/support/v13/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v13/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->f:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    invoke-direct {p0}, Landroid/support/v13/app/FragmentTabHost;->a()V

    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->c:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->d:Landroid/app/FragmentManager;

    iput p3, p0, Landroid/support/v13/app/FragmentTabHost;->e:I

    invoke-direct {p0}, Landroid/support/v13/app/FragmentTabHost;->a()V

    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->setId(I)V

    :cond_0
    return-void
.end method
