.class public abstract Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SimpleRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 74
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 70
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 52
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 53
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    .local p1, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TVH;"
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 79
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->mOnItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->mOnItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;->OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z

    .line 82
    :cond_0
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .line 58
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 45
    .local p0, "this":Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;, "Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter<TVH;>;"
    iput-object p1, p0, Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$Adapter;->mOnItemClickListener:Lcom/miui/extraphoto/refocus/widget/recyclerview/SimpleRecyclerView$OnItemClickListener;

    .line 46
    return-void
.end method
