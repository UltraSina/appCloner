.class public Lcom/applisto/appcloner/classes/PasswordActivity;
.super Landroid/app/Activity;
.source "PasswordActivity.java"


# static fields
.field public static final PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static sUnlocked:Z


# instance fields
.field private mDecoyPackageName:Ljava/lang/String;

.field private mDecoyPassword:Ljava/lang/String;

.field private mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mEditText:Landroid/widget/EditText;

.field private mExitAppIfPasswordIncorrect:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidePasswordCharacters:Z

.field private mOriginalActivityName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPasswordProtectApp:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStealthMode:Z

.field private mStealthModeUseFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-class v0, Lcom/applisto/appcloner/classes/PasswordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_passwordEntered"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/PasswordActivity;)Ljava/lang/Runnable;
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getLongPressRunnable()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/PasswordActivity;)Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthModeUseFingerprint:Z

    return p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/PasswordActivity;->listenFingerprints(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/applisto/appcloner/classes/PasswordActivity;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->onDoubleLongPress()V

    return-void
.end method

.method static synthetic access$500(Lcom/applisto/appcloner/classes/PasswordActivity;)Landroid/os/Handler;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private exit()V
    .registers 3

    .line 502
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    const-string v1, "exit; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 505
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->finishAndRemoveTask()V

    goto :goto_14

    .line 507
    :cond_11
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->finish()V

    .line 510
    :goto_14
    new-instance v0, Lcom/applisto/appcloner/classes/PasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/PasswordActivity$4;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    .line 519
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/PasswordActivity$4;->start()V

    return-void
.end method

.method private getLongPressRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 386
    new-instance v0, Lcom/applisto/appcloner/classes/PasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/PasswordActivity$3;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    return-object v0
.end method

.method private listenFingerprints(Landroid/content/Context;)V
    .registers 9

    const-string v0, "fingerprint"

    .line 349
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_1d

    .line 351
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 352
    new-instance v5, Lcom/applisto/appcloner/classes/PasswordActivity$2;

    invoke-direct {v5, p0, p1}, Lcom/applisto/appcloner/classes/PasswordActivity$2;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_1d
    return-void
.end method

.method private onDoubleLongPress()V
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPasswordProtectApp:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    .line 412
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->showDialog()V

    goto :goto_17

    .line 409
    :cond_14
    :goto_14
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V

    :goto_17
    return-void
.end method

.method private onOk()V
    .registers 4

    const/4 v0, 0x0

    .line 421
    :try_start_1
    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_33

    .line 422
    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    iget-object v2, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDecoyPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDecoyPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 424
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startDecoyApp()V

    .line 425
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    goto :goto_33

    .line 427
    :cond_26
    iget-object v2, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception v1

    .line 431
    sget-object v2, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    :goto_33
    if-eqz v0, :cond_50

    .line 437
    :try_start_35
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    const/4 v2, 0x1

    .line 439
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_46

    goto :goto_4c

    :catch_46
    move-exception v0

    .line 442
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    :goto_4c
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V

    goto :goto_80

    .line 447
    :cond_50
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mExitAppIfPasswordIncorrect:Z

    if-eqz v0, :cond_58

    .line 448
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    goto :goto_80

    .line 450
    :cond_58
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_80

    const-string v1, ""

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x40800000  # 4.0f

    .line 454
    invoke-static {p0, v1}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/CycleInterpolator;

    const/high16 v2, 0x40c00000  # 6.0f

    invoke-direct {v1, v2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    .line 455
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_80
    :goto_80
    return-void
.end method

.method private showDialog()V
    .registers 15

    const-string v0, "string"

    const-string v1, "android"

    .line 149
    :try_start_4
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getStringsProperties()Ljava/util/Properties;

    move-result-object v2

    .line 151
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    if-eqz v3, :cond_1e

    .line 155
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v7, 0x103012b

    invoke-direct {v4, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_26

    .line 158
    :cond_1e
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const v7, 0x1030128

    invoke-direct {v4, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_26
    const/high16 v7, 0x41c00000  # 24.0f

    .line 162
    invoke-static {v4, v7}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v7

    .line 163
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_35

    const/4 v9, 0x0

    goto :goto_36

    :cond_35
    move v9, v7

    .line 165
    :goto_36
    invoke-virtual {v8, v7, v7, v7, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const v7, 0x104000a

    .line 167
    invoke-virtual {p0, v7}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 168
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    iget-boolean v10, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    if-eqz v10, :cond_113

    .line 171
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unfortunately, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has stopped."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_68
    .catchall {:try_start_4 .. :try_end_68} :catchall_210

    const/4 v11, 0x0

    .line 176
    :try_start_69
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "aerr_application"

    invoke-virtual {v12, v13, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    new-array v5, v5, [Ljava/lang/Object;

    .line 177
    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    invoke-virtual {p0, v12, v5}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 178
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v12, "aerr_close"

    invoke-virtual {v5, v12, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 179
    invoke-virtual {p0, v5}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 181
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_8f
    .catchall {:try_start_69 .. :try_end_8f} :catchall_f3

    const/16 v12, 0x18

    if-lt v5, v12, :cond_f9

    .line 185
    :try_start_93
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v12, "aerr_list_item"

    const-string v13, "style"

    invoke-virtual {v5, v12, v13, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 186
    new-instance v12, Landroid/widget/TextView;

    new-instance v13, Landroid/view/ContextThemeWrapper;

    invoke-direct {v13, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a9} :catch_ab
    .catchall {:try_start_93 .. :try_end_a9} :catchall_f3

    move-object v2, v12

    goto :goto_b1

    :catch_ab
    move-exception v5

    .line 188
    :try_start_ac
    sget-object v12, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    :goto_b1
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v12, "aerr_restart"

    invoke-virtual {v5, v12, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_c2
    .catchall {:try_start_ac .. :try_end_c2} :catchall_f3

    .line 196
    :try_start_c2
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "ic_refresh"

    const-string v7, "drawable"

    invoke-virtual {v0, v5, v7, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 197
    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    const/high16 v0, 0x42000000  # 32.0f

    .line 198
    invoke-static {v4, v0}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/high16 v0, 0x41a00000  # 20.0f

    .line 199
    invoke-static {v4, v0}, Lcom/applisto/appcloner/classes/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v2, v6, v6, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$T1MHt5AVzb_hjHwVrKkqOkxau-Q;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$T1MHt5AVzb_hjHwVrKkqOkxau-Q;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_ee
    .catchall {:try_start_c2 .. :try_end_ee} :catchall_f0

    move-object v7, v11

    goto :goto_f9

    :catchall_f0
    move-exception v0

    move-object v7, v11

    goto :goto_f4

    :catchall_f3
    move-exception v0

    .line 204
    :goto_f4
    :try_start_f4
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_f9
    :goto_f9
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_109

    const/high16 v0, 0x41800000  # 16.0f

    .line 209
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v0, -0x1000000

    .line 210
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10f

    :cond_109
    const v0, 0x1030044

    .line 212
    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 214
    :goto_10f
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_182

    .line 218
    :cond_113
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 219
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V

    return-void

    .line 223
    :cond_11f
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    .line 224
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_132

    const/4 v5, 0x2

    :cond_132
    const/high16 v1, 0x80000

    or-int/2addr v1, v5

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 229
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 230
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$Elda7giKmVJ9_K9qJYdjPpD3wy4;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 235
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHidePasswordCharacters:Z
    :try_end_14b
    .catchall {:try_start_f4 .. :try_end_14b} :catchall_210

    if-eqz v0, :cond_169

    .line 238
    :try_start_14d
    invoke-static {}, Lcom/applisto/appcloner/classes/Utils;->getSecondaryClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.applisto.appcloner.classes.secondary.util.NoEchoPasswordTransformationMethod"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/method/PasswordTransformationMethod;

    .line 241
    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    :try_end_162
    .catchall {:try_start_14d .. :try_end_162} :catchall_163

    goto :goto_169

    :catchall_163
    move-exception v0

    .line 243
    :try_start_164
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    :cond_169
    :goto_169
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v0, "title_enter_password"

    .line 249
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$D6qdW30jvAfIY5pk1DvsC8h2R_0;

    invoke-direct {v2, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$D6qdW30jvAfIY5pk1DvsC8h2R_0;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    :goto_182
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_190

    .line 254
    new-instance v0, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$zc7hd37mOHt0UzAhYJvzuezNGv8;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$zc7hd37mOHt0UzAhYJvzuezNGv8;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v9, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    :cond_190
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    if-eqz v1, :cond_1ad

    .line 264
    new-instance v1, Lcom/applisto/appcloner/classes/PasswordActivity$1;

    invoke-direct {v1, p0, v0, v4}, Lcom/applisto/appcloner/classes/PasswordActivity$1;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;Landroid/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 305
    :cond_1ad
    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$E8mOz44UXJfPECqeaAedmpy-m7c;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$E8mOz44UXJfPECqeaAedmpy-m7c;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_1b5
    .catchall {:try_start_164 .. :try_end_1b5} :catchall_210

    .line 312
    :try_start_1b5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 317
    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1e5

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1de} :catch_1df
    .catchall {:try_start_1b5 .. :try_end_1de} :catchall_210

    goto :goto_1e5

    :catch_1df
    move-exception v1

    .line 322
    :try_start_1e0
    sget-object v2, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    :cond_1e5
    :goto_1e5
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 327
    invoke-static {v0}, Lcom/applisto/appcloner/classes/Utils;->keepDialogOpenOnOrientationChange(Landroid/app/Dialog;)V

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 330
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 331
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 333
    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mExitAppIfPasswordIncorrect:Z

    if-nez v1, :cond_219

    const/4 v1, -0x1

    .line 334
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$mKnofvL4EA7jZ43PEuGu8-q6UWQ;

    invoke-direct {v1, p0}, Lcom/applisto/appcloner/classes/-$$Lambda$PasswordActivity$mKnofvL4EA7jZ43PEuGu8-q6UWQ;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_20f
    .catchall {:try_start_1e0 .. :try_end_20f} :catchall_210

    goto :goto_219

    :catchall_210
    move-exception v0

    .line 338
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    :cond_219
    :goto_219
    return-void
.end method

.method private startApp()V
    .registers 4

    .line 461
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    const-string v1, "startApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 463
    sput-boolean v0, Lcom/applisto/appcloner/classes/PasswordActivity;->sUnlocked:Z

    .line 466
    :try_start_a
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 467
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_20

    goto :goto_10

    :catch_20
    move-exception v0

    .line 470
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    :cond_26
    :try_start_26
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 475
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_45} :catch_46

    goto :goto_4c

    :catch_46
    move-exception v0

    .line 479
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    :goto_4c
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->finish()V

    return-void
.end method

.method private startDecoyApp()V
    .registers 3

    .line 486
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    const-string v1, "startDecoyApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_7
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDecoyPackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/applisto/appcloner/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/high16 v1, 0x14000000

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v0

    .line 495
    sget-object v1, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$showDialog$0$PasswordActivity(Landroid/view/View;)V
    .registers 2

    .line 200
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    return-void
.end method

.method public synthetic lambda$showDialog$1$PasswordActivity(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 231
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->onOk()V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$showDialog$2$PasswordActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 250
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    return-void
.end method

.method public synthetic lambda$showDialog$3$PasswordActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 254
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->onOk()V

    return-void
.end method

.method public synthetic lambda$showDialog$4$PasswordActivity(Landroid/content/DialogInterface;)V
    .registers 2

    .line 306
    sget-boolean p1, Lcom/applisto/appcloner/classes/PasswordActivity;->sUnlocked:Z

    if-nez p1, :cond_7

    .line 307
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    :cond_7
    return-void
.end method

.method public synthetic lambda$showDialog$5$PasswordActivity(Landroid/view/View;)V
    .registers 2

    .line 334
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->onOk()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "stealthMode"

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    :try_start_5
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 87
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 89
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_117

    const-string v1, "com.applisto.appcloner.originalActivityName"

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 93
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mOriginalActivityName:Ljava/lang/String;

    .line 97
    :cond_4a
    invoke-static {p0}, Lcom/applisto/appcloner/classes/CloneSettings;->getInstance(Landroid/content/Context;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object p1

    const-string v1, "passwordProtectApp"

    const/4 v2, 0x0

    .line 98
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPasswordProtectApp:Z

    const-string v1, "appPassword"

    const/4 v3, 0x0

    .line 99
    invoke-virtual {p1, v1, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    .line 100
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 101
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    goto :goto_8d

    :cond_7d
    const-string v0, "appPasswordStealthMode"

    .line 103
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthMode:Z

    :goto_8d
    const-string v0, "stealthModeUseFingerprint"

    .line 105
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mStealthModeUseFingerprint:Z

    const-string v0, "hidePasswordCharacters"

    .line 106
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mHidePasswordCharacters:Z

    const-string v0, "exitAppIfPasswordIncorrect"

    const/4 v1, 0x1

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mExitAppIfPasswordIncorrect:Z

    .line 109
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d7

    const-string v0, "appPasswordAskOnlyOnce"

    .line 110
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d7

    goto :goto_d8

    :cond_d7
    const/4 v1, 0x0

    :goto_d8
    const-string v0, "decoyPassword"

    .line 112
    invoke-virtual {p1, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDecoyPassword:Ljava/lang/String;

    const-string v0, "decoyPackageName"

    .line 113
    invoke-virtual {p1, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mDecoyPackageName:Ljava/lang/String;

    if-eqz v1, :cond_117

    .line 128
    iget-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity;->mPreferences:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->PREF_KEY_PASSWORD_ENTERED:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 129
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate; passwordEntered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_117

    .line 131
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->startApp()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10d} :catch_10e

    return-void

    :catch_10e
    move-exception p1

    .line 137
    sget-object v0, Lcom/applisto/appcloner/classes/PasswordActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->exit()V

    .line 141
    :cond_117
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PasswordActivity;->showDialog()V

    return-void
.end method
