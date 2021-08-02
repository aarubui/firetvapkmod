.class final Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Landroidx/leanback/widget/OnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tvbusa/encore/tv/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemViewSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tvbusa/encore/tv/MainFragment;


# direct methods
.method private constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tvbusa/encore/tv/MainFragment;Lcom/tvbusa/encore/tv/MainFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tvbusa/encore/tv/MainFragment;
    .param p2, "x1"    # Lcom/tvbusa/encore/tv/MainFragment$1;

    .line 133
    invoke-direct {p0, p1}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;-><init>(Lcom/tvbusa/encore/tv/MainFragment;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V
    .locals 14
    .param p1, "itemViewHolder"    # Landroidx/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "rowViewHolder"    # Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .param p4, "row"    # Landroidx/leanback/widget/Row;

    .line 136
    move-object v0, p0

    move-object/from16 v1, p2

    const-string v2, "Is Not Null"

    const-string v3, "MainFragment"

    const v4, 0x7f0a0224

    const v5, 0x7f0a0222

    const v6, 0x7f0a0223

    if-eqz v1, :cond_0

    instance-of v7, v1, Lcom/tvbusa/encore/tv/Series;

    if-eqz v7, :cond_0

    .line 137
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object v7, v1

    check-cast v7, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/Series;->getBanner()Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "url":Ljava/lang/String;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/Series;->getName()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "title":Ljava/lang/String;
    move-object v9, v1

    check-cast v9, Lcom/tvbusa/encore/tv/Series;

    invoke-virtual {v9}, Lcom/tvbusa/encore/tv/Series;->getInfo()Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "info":Ljava/lang/String;
    iget-object v10, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v10}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 142
    .local v10, "titleView":Landroid/widget/TextView;
    iget-object v11, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v11}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 143
    .local v11, "infoView":Landroid/widget/TextView;
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v12}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 144
    .local v12, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v13}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v13

    .line 147
    invoke-virtual {v13, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v13

    .line 148
    invoke-virtual {v13}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v13

    check-cast v13, Lcom/bumptech/glide/RequestBuilder;

    .line 150
    invoke-virtual {v13, v12}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 153
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "info":Ljava/lang/String;
    .end local v10    # "titleView":Landroid/widget/TextView;
    .end local v11    # "infoView":Landroid/widget/TextView;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-eqz v1, :cond_1

    instance-of v7, v1, Lcom/tvbusa/encore/tv/HistoryItem;

    if-eqz v7, :cond_1

    .line 154
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    move-object v7, v1

    check-cast v7, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/HistoryItem;->getThumb()Ljava/lang/String;

    move-result-object v7

    .line 156
    .restart local v7    # "url":Ljava/lang/String;
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/HistoryItem;->getParent()Ljava/lang/String;

    move-result-object v8

    .line 157
    .restart local v8    # "title":Ljava/lang/String;
    move-object v9, v1

    check-cast v9, Lcom/tvbusa/encore/tv/HistoryItem;

    invoke-virtual {v9}, Lcom/tvbusa/encore/tv/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v9

    .line 158
    .restart local v9    # "info":Ljava/lang/String;
    iget-object v10, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v10}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 159
    .restart local v10    # "titleView":Landroid/widget/TextView;
    iget-object v11, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v11}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 160
    .restart local v11    # "infoView":Landroid/widget/TextView;
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v12}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 161
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v13}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v13

    .line 164
    invoke-virtual {v13, v7}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v13

    .line 165
    invoke-virtual {v13}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v13

    check-cast v13, Lcom/bumptech/glide/RequestBuilder;

    .line 167
    invoke-virtual {v13, v12}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 170
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "info":Ljava/lang/String;
    .end local v10    # "titleView":Landroid/widget/TextView;
    .end local v11    # "infoView":Landroid/widget/TextView;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const-string v7, ""

    if-eqz v1, :cond_2

    instance-of v8, v1, Lcom/tvbusa/encore/tv/LiveChannel;

    if-eqz v8, :cond_2

    .line 171
    const-string v8, "Channel"

    const-string v9, "Selected"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object v9, v1

    check-cast v9, Lcom/tvbusa/encore/tv/LiveChannel;

    invoke-virtual {v9}, Lcom/tvbusa/encore/tv/LiveChannel;->getBanner()Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "banner":Ljava/lang/String;
    move-object v10, v1

    check-cast v10, Lcom/tvbusa/encore/tv/LiveChannel;

    invoke-virtual {v10}, Lcom/tvbusa/encore/tv/LiveChannel;->getName()Ljava/lang/String;

    move-result-object v10

    .line 175
    .local v10, "title":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selected - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 177
    .local v8, "titleView":Landroid/widget/TextView;
    iget-object v11, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v11}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 178
    .restart local v11    # "infoView":Landroid/widget/TextView;
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v12}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 179
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v13}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v13

    .line 182
    invoke-virtual {v13, v9}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v13

    .line 183
    invoke-virtual {v13}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v13

    check-cast v13, Lcom/bumptech/glide/RequestBuilder;

    .line 185
    invoke-virtual {v13, v12}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 188
    .end local v8    # "titleView":Landroid/widget/TextView;
    .end local v9    # "banner":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "infoView":Landroid/widget/TextView;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    :cond_2
    if-eqz v1, :cond_3

    instance-of v8, v1, Lcom/tvbusa/encore/tv/Category;

    if-eqz v8, :cond_3

    .line 189
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object v8, v1

    check-cast v8, Lcom/tvbusa/encore/tv/Category;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/Category;->getImage()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "url":Ljava/lang/String;
    move-object v9, v1

    check-cast v9, Lcom/tvbusa/encore/tv/Category;

    invoke-virtual {v9}, Lcom/tvbusa/encore/tv/Category;->getName()Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, "title":Ljava/lang/String;
    iget-object v10, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v10}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 193
    .local v10, "titleView":Landroid/widget/TextView;
    iget-object v11, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v11}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 194
    .restart local v11    # "infoView":Landroid/widget/TextView;
    iget-object v12, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v12}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 195
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v13, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v13}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v13

    .line 198
    invoke-virtual {v13, v8}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v13

    .line 199
    invoke-virtual {v13}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v13

    check-cast v13, Lcom/bumptech/glide/RequestBuilder;

    .line 201
    invoke-virtual {v13, v12}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 204
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "titleView":Landroid/widget/TextView;
    .end local v11    # "infoView":Landroid/widget/TextView;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    :cond_3
    if-eqz v1, :cond_4

    instance-of v8, v1, Lcom/tvbusa/encore/tv/Setting;

    if-eqz v8, :cond_4

    .line 205
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object v2, v1

    check-cast v2, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v2}, Lcom/tvbusa/encore/tv/Setting;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "url":Ljava/lang/String;
    move-object v3, v1

    check-cast v3, Lcom/tvbusa/encore/tv/Setting;

    invoke-virtual {v3}, Lcom/tvbusa/encore/tv/Setting;->getName()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "title":Ljava/lang/String;
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 209
    .local v6, "titleView":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 210
    .local v5, "infoView":Landroid/widget/TextView;
    iget-object v8, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v8}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 211
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v7, v0, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->this$0:Lcom/tvbusa/encore/tv/MainFragment;

    invoke-virtual {v7}, Lcom/tvbusa/encore/tv/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    .line 214
    invoke-virtual {v7, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v7

    .line 215
    invoke-virtual {v7}, Lcom/bumptech/glide/RequestBuilder;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/RequestBuilder;

    .line 217
    invoke-virtual {v7, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 221
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "infoView":Landroid/widget/TextView;
    .end local v6    # "titleView":Landroid/widget/TextView;
    :cond_4
    return-void
.end method

.method public bridge synthetic onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p4, Landroidx/leanback/widget/Row;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tvbusa/encore/tv/MainFragment$ItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroidx/leanback/widget/Row;)V

    return-void
.end method
