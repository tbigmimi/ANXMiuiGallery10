.class public Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;
.super Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;
.source "nexEffectOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectOpt"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected default_select_index:I

.field private mItems:[Ljava/lang/String;

.field private mValues:[Ljava/lang/String;

.field protected select_index:I

.field final synthetic this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;)V
    .locals 1

    .prologue
    .line 488
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$1;)V

    return-void
.end method

.method protected constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 489
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    .line 490
    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iput-object p4, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mItems:[Ljava/lang/String;

    .line 492
    iput-object p5, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mValues:[Ljava/lang/String;

    .line 493
    iput p6, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->select_index:I

    .line 494
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->select_index:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->default_select_index:I

    .line 495
    return-void
.end method


# virtual methods
.method public getItems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mItems:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectIndex()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->select_index:I

    return v0
.end method

.method public getSelectValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mValues:[Ljava/lang/String;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->select_index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setSelectIndex(I)V
    .locals 1

    .prologue
    .line 528
    if-gez p1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mItems:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mItems:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 536
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->select_index:I

    goto :goto_0
.end method

.method protected setValue(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 498
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->mValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 500
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->select_index:I

    if-eq v2, v0, :cond_0

    .line 501
    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Z)Z

    .line 503
    :cond_0
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$SelectOpt;->select_index:I

    .line 507
    :cond_1
    return v1

    .line 498
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
