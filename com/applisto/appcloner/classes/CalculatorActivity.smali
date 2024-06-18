.class public Lcom/applisto/appcloner/classes/CalculatorActivity;
.super Landroid/app/Activity;
.source "CalculatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sUnlocked:Z


# instance fields
.field private mButtons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/widget/TextView;

.field private mDot:Z

.field private mFakeCalculatorCode:Ljava/lang/String;

.field private mNumber1:Ljava/lang/String;

.field private mNumber2:Ljava/lang/String;

.field private mOriginalActivityName:Ljava/lang/String;

.field private mSymbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/applisto/appcloner/classes/CalculatorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mButtons:Ljava/util/Set;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    const-string v0, "0"

    .line 43
    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/applisto/appcloner/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/applisto/appcloner/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/applisto/appcloner/classes/CalculatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/CalculatorActivity;)Landroid/widget/TextView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/applisto/appcloner/classes/CalculatorActivity;)Ljava/util/Set;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mButtons:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 35
    sget-object v0, Lcom/applisto/appcloner/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;
    .registers 8

    .line 178
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41f00000  # 30.0f

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 182
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, p1, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_2d

    .line 187
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, -0x6800

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_39

    .line 189
    :cond_2d
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const p2, -0x777778

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 192
    :goto_39
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mButtons:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;
    .registers 7

    .line 168
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41000000  # 8.0f

    .line 171
    invoke-static {p0, v1}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    .line 172
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/TableLayout;->setPadding(IIII)V

    return-object v0
.end method

.method private exit()V
    .registers 3

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 307
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->finishAndRemoveTask()V

    goto :goto_d

    .line 309
    :cond_a
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->finish()V

    .line 312
    :goto_d
    new-instance v0, Lcom/applisto/appcloner/classes/CalculatorActivity$3;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/CalculatorActivity$3;-><init>(Lcom/applisto/appcloner/classes/CalculatorActivity;)V

    .line 321
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/CalculatorActivity$3;->start()V

    return-void
.end method

.method private setDisplay(D)V
    .registers 4

    .line 272
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".0"

    .line 273
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_17

    const/4 p2, 0x0

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 277
    :cond_17
    iget-object p2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "0"

    .line 278
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    const-string p1, ""

    .line 280
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    return-void
.end method

.method private startApp()V
    .registers 3

    const/4 v0, 0x1

    .line 286
    sput-boolean v0, Lcom/applisto/appcloner/classes/CalculatorActivity;->sUnlocked:Z

    .line 289
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 295
    :cond_20
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_2a

    :catch_24
    move-exception v0

    .line 297
    sget-object v1, Lcom/applisto/appcloner/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    :goto_2a
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    const-string v0, "."

    const-string v1, "0"

    const-string v2, ""

    .line 200
    check-cast p1, Landroid/widget/Button;

    .line 201
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    iget-object v3, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    :try_start_1a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 208
    iget-object v5, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    move-object v3, v2

    .line 212
    :cond_37
    iget-object v5, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDot:Z

    if-eqz v6, :cond_4f

    move-object v6, v0

    goto :goto_50

    :cond_4f
    move-object v6, v2

    :goto_50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_7a

    .line 215
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDot:Z

    if-eqz v6, :cond_6d

    move-object v6, v0

    goto :goto_6e

    :cond_6d
    move-object v6, v2

    :goto_6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    .line 217
    :goto_7a
    iget-object v5, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 218
    iput-boolean v4, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDot:Z
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_91} :catch_93

    goto/16 :goto_205

    :catch_93
    nop

    .line 222
    iget-object v4, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "="

    if-eqz v4, :cond_be

    iget-object v4, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    iget-object v4, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b6

    move-object v3, v2

    goto :goto_be

    .line 225
    :cond_b6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    .line 226
    iput-object v3, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 230
    :cond_be
    :goto_be
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "÷"

    const-string v6, "×"

    const-string v7, "-"

    const-string v8, "+"

    if-eqz v4, :cond_135

    .line 231
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e6

    .line 232
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_205

    .line 233
    :cond_e6
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 234
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_205

    .line 235
    :cond_100
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11b

    .line 236
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-direct {p0, v0, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_205

    .line 237
    :cond_11b
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_205

    .line 238
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->setDisplay(D)V

    goto/16 :goto_205

    .line 240
    :cond_135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16b

    .line 241
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_146

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_148

    :cond_146
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    .line 242
    :goto_148
    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDot:Z

    if-nez v1, :cond_205

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_205

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDot:Z

    .line 244
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_205

    .line 247
    :cond_16b
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    .line 248
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 249
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_1e3

    .line 250
    :cond_18f
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 251
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_1e3

    .line 252
    :cond_1ab
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 253
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    goto :goto_1e3

    .line 254
    :cond_1c8
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    .line 255
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber1:Ljava/lang/String;

    .line 257
    :cond_1e3
    :goto_1e3
    iput-object v1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mNumber2:Ljava/lang/String;

    .line 259
    :cond_1e5
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    .line 260
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mSymbol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_205
    :goto_205
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mFakeCalculatorCode:Ljava/lang/String;

    if-eqz p1, :cond_21c

    iget-object v0, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21c

    .line 265
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->startApp()V

    :cond_21c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    const-string v0, "."

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    :try_start_5
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 57
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_59

    const-string v1, "com.applisto.appcloner.originalActivityName"

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 64
    :cond_42
    invoke-static {p0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p1

    const-string v1, "fakeCalculatorCode"

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1, v1, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mFakeCalculatorCode:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4f} :catch_50

    goto :goto_59

    :catch_50
    move-exception p1

    .line 68
    sget-object v1, Lcom/applisto/appcloner/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->exit()V

    :cond_59
    :goto_59
    const p1, 0x103000e

    const v1, -0xbbbbbc

    .line 73
    :try_start_5f
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->setTheme(I)V

    .line 74
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le p1, v2, :cond_7d

    .line 75
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/CalculatorActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_7d

    const/high16 v2, -0x80000000

    .line 77
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 78
    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_76} :catch_77

    goto :goto_7d

    :catch_77
    move-exception p1

    .line 82
    sget-object v2, Lcom/applisto/appcloner/classes/CalculatorActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_7d
    :goto_7d
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, 0x1

    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->setContentView(Landroid/view/View;)V

    .line 92
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const v4, 0x800005

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41800000  # 16.0f

    .line 96
    invoke-static {p0, v2}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 97
    iget-object v4, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v2, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const/high16 v4, 0x42200000  # 40.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 102
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_de

    const/4 v6, 0x1

    goto :goto_df

    :cond_de
    const/4 v6, 0x2

    :goto_df
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_eb

    const/4 v7, 0x1

    :cond_eb
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLines(I)V

    .line 104
    iget-object v2, p0, Lcom/applisto/appcloner/classes/CalculatorActivity;->mDisplay:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    new-instance v2, Landroid/widget/TableLayout;

    invoke-direct {v2, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-direct {p0, v2}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v3

    const-string v6, "7"

    .line 112
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "8"

    .line 113
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "9"

    .line 114
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "÷"

    .line 115
    invoke-direct {p0, v6, v3, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 116
    invoke-direct {p0, v2}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v3

    const-string v6, "4"

    .line 117
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "5"

    .line 118
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "6"

    .line 119
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "×"

    .line 120
    invoke-direct {p0, v6, v3, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 121
    invoke-direct {p0, v2}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v3

    const-string v6, "1"

    .line 122
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "2"

    .line 123
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "3"

    .line 124
    invoke-direct {p0, v6, v3, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v6, "-"

    .line 125
    invoke-direct {p0, v6, v3, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 126
    invoke-direct {p0, v2}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addTableRow(Landroid/widget/TableLayout;)Landroid/widget/TableRow;

    move-result-object v2

    .line 127
    invoke-direct {p0, v4, v2, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    move-result-object v3

    .line 128
    invoke-direct {p0, v0, v2, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v0, "="

    .line 129
    invoke-direct {p0, v0, v2, v5}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    const-string v0, "+"

    .line 130
    invoke-direct {p0, v0, v2, v1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->addButton(Ljava/lang/String;Landroid/widget/TableRow;Z)Landroid/widget/Button;

    .line 132
    new-instance v0, Lcom/applisto/appcloner/classes/CalculatorActivity$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/CalculatorActivity$1;-><init>(Lcom/applisto/appcloner/classes/CalculatorActivity;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    new-instance v0, Lcom/applisto/appcloner/classes/CalculatorActivity$2;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/CalculatorActivity$2;-><init>(Lcom/applisto/appcloner/classes/CalculatorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const-string p1, "Calculator"

    .line 163
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/CalculatorActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
