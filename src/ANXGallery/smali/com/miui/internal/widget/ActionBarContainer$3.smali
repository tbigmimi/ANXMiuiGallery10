.class Lcom/miui/internal/widget/ActionBarContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/widget/ActionBarContainer;->draw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qd:Lcom/miui/internal/widget/ActionBarContainer;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/ActionBarContainer;)V
    .registers 2

    .line 578
    iput-object p1, p0, Lcom/miui/internal/widget/ActionBarContainer$3;->qd:Lcom/miui/internal/widget/ActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 581
    iget-object v0, p0, Lcom/miui/internal/widget/ActionBarContainer$3;->qd:Lcom/miui/internal/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/widget/ActionBarContainer;->show(Z)V

    .line 582
    return-void
.end method
