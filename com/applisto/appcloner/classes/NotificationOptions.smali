.class public Lcom/applisto/appcloner/classes/NotificationOptions;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "NotificationOptions.java"


# static fields
.field private static final ACTION_SNOOZE_NOTIFICATION:Ljava/lang/String; = "com.applisto.appcloner.action.SNOOZE_NOTIFICATION"

.field private static final EXTRA_SNOOZE_ACTION:Ljava/lang/String; = "snooze_action"

.field private static final TAG:Ljava/lang/String;

.field private static mAllowNotificationsWhenRunning:Z

.field private static mBlockAllNotifications:Z

.field private static mNotificationColor:Ljava/lang/Integer;


# instance fields
.field private mHeadsUpNotifications:Z

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mLocalOnlyNotifications:Z

.field private mNotificationCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationDots:Z

.field private final mNotificationFilterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationLightsColor:Ljava/lang/String;

.field private mNotificationLightsPattern:Ljava/lang/String;

.field private mNotificationPriority:Ljava/lang/String;

.field private mNotificationQuietTime:Z

.field private mNotificationQuietTimeEndHour:I

.field private mNotificationQuietTimeEndMinute:I

.field private mNotificationQuietTimeStartHour:I

.field private mNotificationQuietTimeStartMinute:I

.field private mNotificationSnoozeTimeout:I

.field private mNotificationSound:Ljava/lang/String;

.field private mNotificationTextReplacements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationTimeout:I

.field private mNotificationTintStatusBarIcon:Z

.field private mNotificationVibration:Ljava/lang/String;

.field private mNotificationVisibility:Ljava/lang/String;

.field private mOngoingNotifications:Ljava/lang/String;

.field private mRemoveNotificationActions:Z

.field private mRemoveNotificationIcon:Z

.field private mRemoveNotificationPeople:Z

.field private mReplaceNotificationIcon:Z

.field private mRunning:Z

.field private mShowNotificationTime:Z

.field private mSimpleNotifications:Z

.field private mSingleNotificationCategory:Ljava/lang/String;

.field private mSingleNotificationGroup:Z

.field private mSnoozeNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutHandler:Landroid/os/Handler;

.field private mTimeoutRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .registers 14

    const-string v0, ":"

    .line 100
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    const-string v1, "NO_CHANGE"

    .line 80
    iput-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 95
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    const/4 v2, 0x0

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "blockAllNotifications"

    invoke-virtual {p1, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    const-string v5, "allowNotificationsWhenRunning"

    .line 103
    invoke-virtual {p1, v5, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/applisto/appcloner/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    const/4 v5, 0x0

    const-string v6, "notificationFilter"

    .line 104
    invoke-virtual {p1, v6, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    .line 106
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 107
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_6f
    if-ge v8, v7, :cond_8b

    aget-object v9, v6, v8

    .line 108
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 109
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_88

    .line 110
    iget-object v10, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_88
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    :cond_8b
    const-string v6, "notificationQuietTime"

    .line 114
    invoke-virtual {p1, v6, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z

    const/4 v6, 0x1

    :try_start_98
    const-string v7, "notificationQuietTimeStart"

    const-string v8, "21:00"

    .line 116
    invoke-virtual {p1, v7, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 117
    aget-object v8, v7, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    .line 118
    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    const-string v7, "notificationQuietTimeEnd"

    const-string v8, "07:00"

    .line 119
    invoke-virtual {p1, v7, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    .line 121
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d0} :catch_d1

    goto :goto_d7

    :catch_d1
    move-exception v0

    .line 123
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d7
    const-string v0, "notificationColorUseStatusBarColor"

    .line 125
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string v0, "statusBarColor"

    .line 126
    invoke-virtual {p1, v0, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    goto :goto_f4

    :cond_ec
    const-string v0, "notificationColor"

    .line 128
    invoke-virtual {p1, v0, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    :goto_f4
    const-string v0, "notificationTintStatusBarIcon"

    .line 130
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    const-string v0, "notificationSound"

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    const-string v0, "notificationVibration"

    .line 132
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    const-string v0, "notificationTimeout"

    .line 133
    invoke-virtual {p1, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    const-string v0, "notificationSnoozeTimeout"

    .line 134
    invoke-virtual {p1, v0, v3}, Lcom/applisto/appcloner/classes/CloneSettings;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    const-string v0, "headsUpNotifications"

    .line 135
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    const-string v0, "localOnlyNotifications"

    .line 136
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    const-string v0, "ongoingNotifications"

    .line 137
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mOngoingNotifications:Ljava/lang/String;

    const-string v0, "showNotificationTime"

    .line 138
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z

    const-string v0, "defaultNotificationLights"

    .line 139
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObject(Ljava/lang/String;)Lcom/applisto/appcloner/classes/CloneSettings;

    move-result-object v0

    if-eqz v0, :cond_16c

    const-string v2, "notificationLightsPattern"

    .line 141
    invoke-virtual {v0, v2, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    const-string v2, "notificationLightsColor"

    .line 142
    invoke-virtual {v0, v2, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    :cond_16c
    const-string v0, "notificationVisibility"

    .line 144
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    const-string v0, "notificationPriority"

    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    const-string v0, "replaceNotificationIcon"

    .line 146
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    const-string v0, "removeNotificationIcon"

    .line 147
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    const-string v0, "removeNotificationActions"

    .line 148
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z

    const-string v0, "removeNotificationPeople"

    .line 149
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    const-string v0, "simpleNotifications"

    .line 150
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    const-string v0, "singleNotificationGroup"

    .line 151
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationGroup:Z

    const-string v0, "notificationCategories"

    .line 152
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ignoreCase"

    const-string v2, ""

    if-eqz v0, :cond_208

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_208

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applisto/appcloner/classes/CloneSettings;

    .line 155
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "name"

    .line 156
    invoke-virtual {v3, v8, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "keywords"

    .line 157
    invoke-virtual {v3, v8, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v1, v8}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d4

    :cond_208
    const-string v0, "singleNotificationCategory"

    .line 162
    invoke-virtual {p1, v0, v5}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    const-string v0, "notificationTextReplacements"

    .line 163
    invoke-virtual {p1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->forObjectArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_284

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_284

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applisto/appcloner/classes/CloneSettings;

    .line 166
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "replace"

    .line 167
    invoke-virtual {v3, v7, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "with"

    .line 168
    invoke-virtual {v3, v7, v2}, Lcom/applisto/appcloner/classes/CloneSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "replaceInTitle"

    invoke-virtual {v3, v8, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "replaceInContent"

    invoke-virtual {v3, v8, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "replaceInMessages"

    invoke-virtual {v3, v8, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "replaceInActions"

    invoke-virtual {v3, v8, v7}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v3, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21c

    :cond_284
    const-string v0, "notificationDots"

    .line 178
    invoke-virtual {p1, v0, v4}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationDots:Z

    .line 180
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mBlockAllNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mAllowNotificationsWhenRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/applisto/appcloner/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationFilterSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeStartHour: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeStartMinute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeEndHour: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationQuietTimeEndMinute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationTintStatusBarIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationSound: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationVibration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationSnoozeTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mHeadsUpNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mLocalOnlyNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mOngoingNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mOngoingNotifications:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mShowNotificationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationLightsPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationLightsColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mReplaceNotificationIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mRemoveNotificationIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mRemoveNotificationActions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mRemoveNotificationPeople: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mSimpleNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mSingleNotificationGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationCategories: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mSingleNotificationCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationOptions; mNotificationTextReplacements: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/applisto/appcloner/classes/NotificationOptions;)Ljava/util/Map;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/applisto/appcloner/classes/NotificationOptions;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/applisto/appcloner/classes/NotificationOptions;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 54
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    .line 922
    :try_start_0
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    goto :goto_1d

    .line 925
    :catchall_3
    :try_start_3
    const-class v0, Landroid/app/Notification;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 927
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_1d

    :catch_16
    move-exception p0

    .line 929
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1d
    if-nez p0, :cond_24

    .line 933
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_24
    return-object p0
.end method

.method private getNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 941
    invoke-direct {p0, p2}, Lcom/applisto/appcloner/classes/NotificationOptions;->getNotificationChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 946
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_cloner_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationChannelId; channelId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", channelName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string p2, "notification"

    .line 951
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 952
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v0
.end method

.method private getNotificationChannelName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 959
    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 960
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotificationChannelName; returning mSingleNotificationCategory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    return-object p1

    .line 964
    :cond_23
    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "name"

    .line 966
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 967
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "keywords"

    .line 969
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 970
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "ignoreCase"

    .line 972
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 973
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_67

    :cond_66
    move-object v4, p1

    .line 975
    :goto_67
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNotificationChannelName; name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", keywords: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", ignoreCase: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", matchText: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ","

    .line 978
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_9d
    if-ge v6, v5, :cond_29

    aget-object v7, v3, v6

    .line 979
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_ad

    .line 981
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 983
    :cond_ad
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 984
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNotificationChannelName; found keyword; keyword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_ca
    add-int/lit8 v6, v6, 0x1

    goto :goto_9d

    :cond_cd
    const/4 p1, 0x0

    return-object p1
.end method

.method private isAppClonerClassesNotification()Z
    .registers 8

    .line 902
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 903
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v3, v1, :cond_2b

    aget-object v5, v0, v3

    .line 904
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.NotificationManager"

    .line 905
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v4, 0x1

    goto :goto_28

    :cond_1f
    if-eqz v4, :cond_28

    const-string v0, "com.applisto.appcloner.classes."

    .line 908
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_28
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2b
    return v2
.end method

.method static synthetic lambda$null$0(ILandroid/content/Context;)V
    .registers 5

    .line 461
    :try_start_0
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run; cancelling notification; id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    .line 463
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 464
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_28

    :catchall_22
    move-exception p0

    .line 466
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method

.method private static replace(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 7

    .line 1310
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1c

    .line 1314
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    goto :goto_24

    .line 1316
    :cond_1c
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    :goto_24
    const/4 v1, -0x1

    if-ne p3, v1, :cond_28

    return-object p0

    .line 1322
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p3

    const/16 v2, 0x21

    invoke-virtual {v0, p1, p3, p0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1325
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    .line 1326
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-eq p0, v1, :cond_3f

    .line 1328
    invoke-virtual {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3f
    return-object v0
.end method

.method private replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .registers 30

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p7

    move/from16 v8, p8

    .line 1002
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceNotificationText; replace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ignoreCase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInTitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInContent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", replaceInActions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {v10, v1, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1013
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3ae

    .line 1015
    invoke-static/range {p1 .. p1}, Lcom/applisto/appcloner/classes/NotificationOptions;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v7

    const/16 v1, 0x18

    if-eqz v14, :cond_e8

    const-string v2, "android.title"

    .line 1021
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1022
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "android.title.big"

    if-nez v3, :cond_8f

    .line 1023
    invoke-direct {v10, v2, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1024
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8c

    const-string v3, "android.title"

    .line 1025
    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_8f

    .line 1027
    :cond_8c
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1032
    :cond_8f
    :goto_8f
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1033
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 1034
    invoke-direct {v10, v2, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1035
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 1036
    invoke-virtual {v7, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_aa

    .line 1038
    :cond_a7
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1042
    :cond_aa
    :goto_aa
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_e8

    const-string v2, "android.conversationTitle"

    .line 1045
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1046
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 1047
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1048
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c8

    .line 1049
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_cb

    .line 1051
    :cond_c8
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    const-string v2, "android.hiddenConversationTitle"

    .line 1056
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1057
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e8

    .line 1058
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1059
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e5

    .line 1060
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_e8

    .line 1062
    :cond_e5
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_e8
    :goto_e8
    if-eqz v15, :cond_1a2

    const-string v2, "android.text"

    .line 1071
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1072
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_107

    .line 1073
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1074
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_104

    .line 1075
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_107

    .line 1077
    :cond_104
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_107
    :goto_107
    const-string v2, "android.subText"

    .line 1082
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1083
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_124

    .line 1084
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1085
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_121

    .line 1086
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_124

    .line 1088
    :cond_121
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_124
    :goto_124
    const-string v2, "android.infoText"

    .line 1093
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1094
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_141

    .line 1095
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1096
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13e

    .line 1097
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_141

    .line 1099
    :cond_13e
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_141
    :goto_141
    const-string v2, "android.summaryText"

    .line 1104
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15e

    .line 1106
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15b

    .line 1108
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_15e

    .line 1110
    :cond_15b
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1115
    :cond_15e
    :goto_15e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_181

    const-string v2, "android.bigText"

    .line 1116
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_181

    .line 1118
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1119
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17e

    .line 1120
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_181

    .line 1122
    :cond_17e
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1128
    :cond_181
    :goto_181
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1a2

    const-string v2, "android.selfDisplayName"

    .line 1129
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1130
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a2

    .line 1131
    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1132
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19f

    .line 1133
    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_1a2

    .line 1135
    :cond_19f
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1a2
    :goto_1a2
    const-string v6, "text"

    if-eqz v9, :cond_288

    const-string v2, "android.textLines"

    .line 1144
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1ed

    .line 1146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    array-length v1, v3

    const/4 v5, 0x0

    :goto_1b5
    if-ge v5, v1, :cond_1d7

    move/from16 v18, v1

    aget-object v1, v3, v5

    .line 1148
    invoke-direct {v10, v1, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1149
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1d2

    .line 1150
    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1cd

    .line 1151
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_1cd
    move-object/from16 v1, v19

    .line 1153
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d2
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v18

    goto :goto_1b5

    .line 1156
    :cond_1d7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1ea

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/CharSequence;

    .line 1157
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_1ed

    .line 1159
    :cond_1ea
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1164
    :cond_1ed
    :goto_1ed
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_288

    const-string v1, "android.messages"

    .line 1165
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_288

    .line 1167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    array-length v4, v2

    const/4 v5, 0x0

    :goto_202
    if-ge v5, v4, :cond_272

    aget-object v16, v2, v5

    move-object/from16 v18, v2

    .line 1169
    move-object/from16 v2, v16

    check-cast v2, Landroid/os/Bundle;

    move/from16 v16, v4

    const-string v4, "sender"

    .line 1172
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1173
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_234

    .line 1174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v10, v4, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "sender"

    .line 1175
    invoke-virtual {v2, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    :cond_234
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1180
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_256

    .line 1181
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v10, v9, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1182
    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_256
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_262

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_265

    .line 1186
    :cond_262
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_265
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v9, p7

    move/from16 v4, v16

    move-object/from16 v2, v18

    goto :goto_202

    .line 1189
    :cond_272
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_285

    const/4 v2, 0x0

    new-array v4, v2, [Landroid/os/Parcelable;

    .line 1190
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_288

    .line 1192
    :cond_285
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_288
    :goto_288
    if-eqz v8, :cond_2c8

    .line 1200
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_2c8

    .line 1201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_297
    if-ge v4, v3, :cond_2b1

    aget-object v5, v2, v4

    .line 1203
    iget-object v9, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v10, v9, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1204
    iget-object v9, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2ae

    .line 1205
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_297

    .line 1208
    :cond_2b1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c3

    const/4 v5, 0x0

    new-array v2, v5, [Landroid/app/Notification$Action;

    .line 1209
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_2c9

    :cond_2c3
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1211
    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    goto :goto_2c9

    :cond_2c8
    const/4 v5, 0x0

    :goto_2c9
    :try_start_2c9
    const-string v0, "android.wearable.EXTENSIONS"

    .line 1218
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34e

    if-eqz v8, :cond_2ff

    const-string v1, "actions"

    .line 1221
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2ff

    .line 1223
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2df
    :goto_2df
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 1224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 1225
    iget-object v3, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v10, v3, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 1226
    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2df

    .line 1227
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2df

    :cond_2ff
    const-string v1, "pages"

    .line 1232
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v14

    if-eqz v14, :cond_34e

    .line 1234
    array-length v15, v14

    const/4 v9, 0x0

    :goto_309
    if-ge v9, v15, :cond_34e

    aget-object v0, v14, v9
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_30d} :catch_353

    .line 1236
    :try_start_30d
    move-object v2, v0

    check-cast v2, Landroid/app/Notification;
    :try_end_310
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_310} :catch_330

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/16 v16, 0x0

    move/from16 v5, p4

    move-object/from16 p1, v14

    move-object v14, v6

    move/from16 v6, p5

    move/from16 v17, v15

    move-object v15, v7

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v18, v9

    move/from16 v9, p8

    .line 1237
    :try_start_32a
    invoke-direct/range {v1 .. v9}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    :try_end_32d
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_32d} :catch_32e

    goto :goto_340

    :catch_32e
    move-exception v0

    goto :goto_33b

    :catch_330
    move-exception v0

    move/from16 v18, v9

    move-object/from16 p1, v14

    move/from16 v17, v15

    const/16 v16, 0x0

    move-object v14, v6

    move-object v15, v7

    .line 1240
    :goto_33b
    :try_start_33b
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_340
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_340} :catch_34c

    :goto_340
    add-int/lit8 v9, v18, 0x1

    move/from16 v8, p8

    move-object v6, v14

    move-object v7, v15

    move/from16 v15, v17

    const/4 v5, 0x0

    move-object/from16 v14, p1

    goto :goto_309

    :catch_34c
    move-exception v0

    goto :goto_358

    :cond_34e
    move-object v14, v6

    move-object v15, v7

    const/16 v16, 0x0

    goto :goto_35d

    :catch_353
    move-exception v0

    move-object v14, v6

    move-object v15, v7

    const/16 v16, 0x0

    .line 1246
    :goto_358
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35d
    :try_start_35d
    const-string v0, "android.car.EXTENSIONS"

    .line 1251
    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3ae

    if-eqz p7, :cond_3ae

    const-string v1, "car_conversation"

    .line 1254
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3ae

    const-string v1, "messages"

    .line 1256
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3ae

    .line 1258
    array-length v1, v0

    const/4 v2, 0x0

    :goto_379
    if-ge v2, v1, :cond_3ae

    aget-object v3, v0, v2

    .line 1259
    check-cast v3, Landroid/os/Bundle;

    const-string v4, "author"

    .line 1260
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1261
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_394

    const-string v5, "author"

    .line 1262
    invoke-direct {v10, v4, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1264
    :cond_394
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1265
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a5

    .line 1266
    invoke-direct {v10, v4, v11, v12, v13}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_3a5
    .catch Ljava/lang/Exception; {:try_start_35d .. :try_end_3a5} :catch_3a8

    :cond_3a5
    add-int/lit8 v2, v2, 0x1

    goto :goto_379

    :catch_3a8
    move-exception v0

    .line 1274
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3ae
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 8

    .line 1281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 1285
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p3

    .line 1293
    :cond_e
    :goto_e
    :try_start_e
    invoke-static {p1, p2, p3, p4}, Lcom/applisto/appcloner/classes/NotificationOptions;->replace(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1294
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_22

    if-nez v1, :cond_28

    move-object p1, v0

    goto :goto_e

    :catch_22
    move-exception p2

    .line 1301
    sget-object p3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    return-object p1
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .registers 10

    .line 214
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    if-nez v0, :cond_99

    sget-boolean v0, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    const-string v1, "NO_CHANGE"

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    if-nez v0, :cond_99

    iget v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-nez v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    if-nez v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mOngoingNotifications:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    if-nez v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z

    if-nez v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z

    if-nez v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z

    if-nez v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    if-nez v0, :cond_99

    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationGroup:Z

    if-nez v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationCategories:Ljava/util/List;

    .line 238
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_146

    .line 242
    :cond_99
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/NotificationOptions;->onCreate()Z

    .line 246
    :try_start_9c
    const-class v0, Landroid/app/NotificationManager;

    const-string v1, "sService"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b7

    .line 250
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v4, "onCreate; sService already initialized!!!"

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 252
    :cond_b7
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v4, "onCreate; sService == null"

    invoke-static {v3, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_be
    const-class v3, Landroid/app/NotificationManager;

    const-string v4, "getService"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "android.app.INotificationManager"

    .line 259
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 261
    const-class v6, Lcom/applisto/appcloner/classes/NotificationOptions;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v5

    new-instance v4, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;

    invoke-direct {v4, p0, p1, v3}, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$PMv6Pe-FXiJ1ET7L7mZ6zyF_y2c;-><init>(Lcom/applisto/appcloner/classes/NotificationOptions;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-static {v6, v7, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 823
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 825
    iget v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-lez v0, :cond_101

    .line 826
    new-instance v0, Lcom/applisto/appcloner/classes/NotificationOptions$1;

    invoke-direct {v0, p0}, Lcom/applisto/appcloner/classes/NotificationOptions$1;-><init>(Lcom/applisto/appcloner/classes/NotificationOptions;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.applisto.appcloner.action.SNOOZE_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 864
    :cond_101
    iget-boolean v0, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mReplaceNotificationIcon:Z

    if-eqz v0, :cond_146

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_107} :catch_140

    const/16 v2, 0x17

    if-lt v0, v2, :cond_146

    .line 866
    :try_start_10b
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, ".notificationIconFile"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/applisto/appcloner/classes/Utils;->readFully(Ljava/io/InputStream;Z)[B

    move-result-object p1

    .line 868
    array-length v0, p1

    invoke-static {p1, v5, v0}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    .line 869
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install; mIcon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_138} :catch_139

    goto :goto_146

    :catch_139
    move-exception p1

    .line 871
    :try_start_13a
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13f} :catch_140

    goto :goto_146

    :catch_140
    move-exception p1

    .line 876
    sget-object v0, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_146
    :goto_146
    return-void
.end method

.method public synthetic lambda$install$1$NotificationOptions(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    const-string v2, "NO_CHANGE"

    const-string v3, ""

    .line 264
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "enqueueNotificationWithTag"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a50

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/applisto/appcloner/classes/NotificationOptions;->isAppClonerClassesNotification()Z

    move-result v4

    if-nez v4, :cond_a50

    .line 267
    :try_start_21
    sget-object v4, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke; method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_37} :catch_a46

    const/4 v4, 0x3

    const/4 v6, 0x2

    .line 270
    :try_start_39
    aget-object v7, v13, v4

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_41
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_41} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_41} :catch_45

    move v15, v7

    const/16 v16, 0x3

    goto :goto_56

    :catch_45
    move-exception v0

    move-object v3, v0

    move-object v1, v11

    move-object v2, v12

    goto/16 :goto_a4a

    .line 273
    :catch_4b
    :try_start_4b
    aget-object v7, v13, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v15, v7

    const/16 v16, 0x2

    :goto_56
    const v7, 0x60a40a2e

    if-eq v15, v7, :cond_a43

    const v7, 0x4530f1

    if-eq v15, v7, :cond_a43

    .line 279
    sget-boolean v7, Lcom/applisto/appcloner/classes/NotificationOptions;->mBlockAllNotifications:Z

    .line 280
    sget-boolean v8, Lcom/applisto/appcloner/classes/NotificationOptions;->mAllowNotificationsWhenRunning:Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_64} :catch_a46

    if-eqz v8, :cond_6b

    :try_start_66
    iget-boolean v8, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRunning:Z

    if-eqz v8, :cond_6b

    const/4 v7, 0x0

    :cond_6b
    if-eqz v7, :cond_7c

    .line 285
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v3, "invoke; blocked notification"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-boolean v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationDots:Z

    if-eqz v2, :cond_7b

    .line 287
    invoke-static/range {p1 .. p1}, Lcom/applisto/appcloner/classes/NotificationDots;->showNotificationDots(Landroid/content/Context;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7b} :catch_45

    :cond_7b
    return-object v5

    :cond_7c
    const/4 v7, 0x4

    .line 294
    :try_start_7d
    aget-object v7, v13, v7

    check-cast v7, Landroid/app/Notification;
    :try_end_81
    .catch Ljava/lang/ClassCastException; {:try_start_7d .. :try_end_81} :catch_83
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_81} :catch_45

    :goto_81
    move-object v8, v7

    goto :goto_88

    .line 296
    :catch_83
    :try_start_83
    aget-object v7, v13, v4

    check-cast v7, Landroid/app/Notification;

    goto :goto_81

    .line 299
    :goto_88
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8a} :catch_a46

    if-eqz v7, :cond_ac

    .line 301
    :try_start_8c
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Landroid/app/Notification;->color:I

    .line 302
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; set notification color; notificationColor: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_ac} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_ac} :catch_45

    .line 308
    :catch_ac
    :cond_ac
    :try_start_ac
    invoke-static {v8}, Lcom/applisto/appcloner/classes/NotificationOptions;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    .line 309
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; extras: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.title"

    .line 312
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    .line 313
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "android.title.big"

    .line 314
    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "android.text"

    .line 316
    invoke-virtual {v4, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_eb} :catch_a46

    if-eqz v9, :cond_f3

    .line 318
    :try_start_ed
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f3} :catch_45

    :cond_f3
    :try_start_f3
    const-string v9, "android.bigText"

    .line 321
    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "android.infoText"

    .line 323
    invoke-virtual {v4, v9, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    iget-object v3, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, "android.textLines"

    .line 326
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_116} :catch_a46

    if-eqz v3, :cond_128

    .line 328
    :try_start_118
    array-length v9, v3

    const/4 v14, 0x0

    :goto_11a
    if-ge v14, v9, :cond_128

    aget-object v5, v3, v14

    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_124} :catch_45

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_11a

    .line 334
    :cond_128
    :try_start_128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; concatenatedText: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v5, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_148} :catch_a46

    if-nez v5, :cond_187

    .line 338
    :try_start_14a
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 339
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationFilterSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_156
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_187

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 340
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_156

    .line 341
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invoke; blocked notification; notificationFilterString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-boolean v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationDots:Z

    if-eqz v2, :cond_185

    .line 344
    invoke-static/range {p1 .. p1}, Lcom/applisto/appcloner/classes/NotificationDots;->showNotificationDots(Landroid/content/Context;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_185} :catch_45

    :cond_185
    const/4 v1, 0x0

    return-object v1

    .line 351
    :cond_187
    :try_start_187
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_189} :catch_a46

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_1c9

    .line 353
    :try_start_18d
    invoke-direct {v10, v1, v3}, Lcom/applisto/appcloner/classes/NotificationOptions;->getNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invoke; channelId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c9

    .line 356
    const-class v5, Landroid/app/Notification;

    const-string v6, "mChannelId"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    .line 357
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 358
    invoke-virtual {v5, v8, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "channel_id"

    .line 359
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c1
    .catchall {:try_start_18d .. :try_end_1c1} :catchall_1c2

    goto :goto_1c9

    :catchall_1c2
    move-exception v0

    move-object v3, v0

    .line 362
    :try_start_1c4
    sget-object v5, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1c9} :catch_45

    .line 367
    :cond_1c9
    :goto_1c9
    :try_start_1c9
    iget-boolean v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTime:Z
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1cb} :catch_a46

    if-eqz v3, :cond_2a5

    .line 369
    :try_start_1cd
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, 0xb

    .line 370
    iget v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartHour:I

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 371
    iget v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeStartMinute:I

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    const/4 v6, 0x0

    .line 372
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    .line 373
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    .line 376
    iget v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndHour:I

    invoke-virtual {v5, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    .line 377
    iget v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationQuietTimeEndMinute:I

    invoke-virtual {v5, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    const/4 v9, 0x0

    .line 378
    invoke-virtual {v5, v6, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    .line 379
    invoke-virtual {v5, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 381
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6
    :try_end_20b
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_20b} :catch_29e

    if-eqz v6, :cond_213

    const/4 v6, 0x5

    const/4 v9, 0x1

    .line 382
    :try_start_20f
    invoke-virtual {v5, v6, v9}, Ljava/util/Calendar;->add(II)V
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_212} :catch_45

    goto :goto_214

    :cond_213
    const/4 v9, 0x1

    .line 385
    :goto_214
    :try_start_214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 386
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/4 v7, 0x5

    .line 387
    invoke-virtual {v14, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 388
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_224} :catch_29e

    if-eqz v7, :cond_22c

    :try_start_226
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_22a} :catch_45

    if-nez v7, :cond_238

    :cond_22c
    :try_start_22c
    invoke-virtual {v3, v14}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_230} :catch_29e

    if-eqz v7, :cond_23a

    :try_start_232
    invoke-virtual {v5, v14}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_236} :catch_45

    if-eqz v7, :cond_23a

    :cond_238
    const/4 v9, 0x1

    goto :goto_23b

    :cond_23a
    const/4 v9, 0x0

    .line 392
    :goto_23b
    :try_start_23b
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; start: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", end: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invoke; c1: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", c2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; quietTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a6

    :catch_29e
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    goto/16 :goto_a49

    :cond_2a5
    const/4 v9, 0x0

    :goto_2a6
    const/4 v3, -0x2

    if-eqz v9, :cond_2b9

    const/4 v5, 0x0

    .line 398
    iput-object v5, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 399
    iput-object v5, v8, Landroid/app/Notification;->vibrate:[J

    .line 400
    iget v5, v8, Landroid/app/Notification;->defaults:I

    and-int/2addr v5, v3

    iput v5, v8, Landroid/app/Notification;->defaults:I

    .line 401
    iget v5, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x3

    iput v5, v8, Landroid/app/Notification;->defaults:I
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_2b9} :catch_29e

    :cond_2b9
    const-string v5, "DEFAULT"

    if-nez v9, :cond_400

    .line 407
    :try_start_2bd
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d6

    const/4 v6, 0x0

    .line 408
    iput-object v6, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 409
    iget v6, v8, Landroid/app/Notification;->defaults:I

    const/4 v7, 0x1

    or-int/2addr v6, v7

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 410
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; sound: default"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_335

    :cond_2d6
    const-string v6, "SILENCE"

    .line 411
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f0

    const/4 v6, 0x0

    .line 412
    iput-object v6, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 413
    iget v6, v8, Landroid/app/Notification;->defaults:I

    and-int/2addr v6, v3

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 414
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; sound: silence"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_335

    :cond_2f0
    const-string v6, "CUSTOM"

    .line 415
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSound:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_335

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".com.applisto.appcloner.classes.DefaultProvider/assets/.notificationSoundFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 419
    iput-object v6, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 420
    iget v7, v8, Landroid/app/Notification;->defaults:I

    and-int/2addr v7, v3

    iput v7, v8, Landroid/app/Notification;->defaults:I

    .line 421
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; sound: custom; uri: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_335
    :goto_335
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34f

    const/4 v6, 0x0

    .line 426
    iput-object v6, v8, Landroid/app/Notification;->vibrate:[J

    .line 427
    iget v6, v8, Landroid/app/Notification;->defaults:I

    const/4 v7, 0x2

    or-int/2addr v6, v7

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 428
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: default"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_400

    :cond_34f
    const-string v6, "SILENCE"

    .line 429
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36b

    const/4 v6, 0x0

    .line 430
    iput-object v6, v8, Landroid/app/Notification;->vibrate:[J

    .line 431
    iget v6, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 432
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: silence"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_400

    :cond_36b
    const-string v6, "VERY_SHORT"

    .line 433
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_392

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x32

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 434
    iput-object v7, v8, Landroid/app/Notification;->vibrate:[J

    .line 435
    iget v6, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 436
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: very short"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_400

    :cond_392
    const-string v6, "SHORT"

    .line 437
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b7

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x64

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 438
    iput-object v7, v8, Landroid/app/Notification;->vibrate:[J

    .line 439
    iget v6, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 440
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: short"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_400

    :cond_3b7
    const-string v6, "LONG"

    .line 441
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3dc

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x1f4

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 442
    iput-object v7, v8, Landroid/app/Notification;->vibrate:[J

    .line 443
    iget v6, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 444
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: long"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_400

    :cond_3dc
    const-string v6, "VERY_LONG"

    .line 445
    iget-object v7, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVibration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_400

    const/4 v6, 0x2

    new-array v7, v6, [J

    const/4 v6, 0x0

    aput-wide v11, v7, v6

    const-wide/16 v11, 0x3e8

    const/4 v6, 0x1

    aput-wide v11, v7, v6

    .line 446
    iput-object v7, v8, Landroid/app/Notification;->vibrate:[J

    .line 447
    iget v6, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v8, Landroid/app/Notification;->defaults:I

    .line 448
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v7, "invoke; vibration: very long"

    invoke-static {v6, v7}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_400
    :goto_400
    iget v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    const/16 v7, 0x3e8

    if-eqz v6, :cond_45d

    .line 454
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    if-eqz v6, :cond_419

    .line 456
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_419
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_419} :catch_29e

    .line 459
    :cond_419
    :try_start_419
    new-instance v6, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;

    invoke-direct {v6, v15, v1}, Lcom/applisto/appcloner/classes/-$$Lambda$NotificationOptions$2O_jZ-y83Mf4biiOxFjwdLR4w3o;-><init>(ILandroid/content/Context;)V
    :try_end_41e
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_41e} :catch_454

    .line 469
    :try_start_41e
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutHandler:Landroid/os/Handler;

    iget v11, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    invoke-virtual {v9, v6, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mTimeoutRunnables:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; scheduled timeout; id: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", millis: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTimeout:I

    mul-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45d

    :catch_454
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, p4

    move-object v3, v1

    move-object/from16 v1, p2

    goto/16 :goto_a4a

    .line 475
    :cond_45d
    :goto_45d
    iget-boolean v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mHeadsUpNotifications:Z

    if-eqz v6, :cond_486

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v6, v9, :cond_486

    const-string v6, "headsup"

    const/4 v9, 0x2

    .line 476
    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v6, 0x1

    .line 477
    iput v6, v8, Landroid/app/Notification;->priority:I

    .line 478
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; headsUpNotifications; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_486
    iget-boolean v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mLocalOnlyNotifications:Z

    if-eqz v6, :cond_4a6

    .line 482
    iget v6, v8, Landroid/app/Notification;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v8, Landroid/app/Notification;->flags:I

    .line 483
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; localOnlyNotifications; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a6
    const-string v6, "DISABLED"

    .line 486
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mOngoingNotifications:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d3

    .line 487
    iget v6, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v8, Landroid/app/Notification;->flags:I

    .line 488
    iget v6, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v8, Landroid/app/Notification;->flags:I

    .line 489
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; ongoingNotifications; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_500

    :cond_4d3
    const-string v6, "ENABLED"

    .line 490
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mOngoingNotifications:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_500

    .line 491
    iget v6, v8, Landroid/app/Notification;->flags:I

    const/4 v9, 0x2

    or-int/2addr v6, v9

    iput v6, v8, Landroid/app/Notification;->flags:I

    .line 492
    iget v6, v8, Landroid/app/Notification;->flags:I

    const/16 v9, 0x20

    or-int/2addr v6, v9

    iput v6, v8, Landroid/app/Notification;->flags:I

    .line 493
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; ongoingNotifications; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_500
    :goto_500
    iget-boolean v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mShowNotificationTime:Z
    :try_end_502
    .catch Ljava/lang/Exception; {:try_start_41e .. :try_end_502} :catch_29e

    if-eqz v6, :cond_52e

    .line 498
    :try_start_504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v8, Landroid/app/Notification;->when:J

    const-string v6, "android.showWhen"

    const/4 v9, 0x1

    .line 499
    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invoke; showNotificationTime; notification: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_526
    .catch Ljava/lang/Exception; {:try_start_504 .. :try_end_526} :catch_527

    goto :goto_52e

    :catch_527
    move-exception v0

    move-object v6, v0

    .line 502
    :try_start_529
    sget-object v9, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    :cond_52e
    :goto_52e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    const/4 v11, -0x1

    if-lt v6, v9, :cond_57e

    const-string v6, "PUBLIC"

    .line 507
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_559

    const/4 v6, 0x1

    .line 508
    iput v6, v8, Landroid/app/Notification;->visibility:I

    .line 509
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; made notification public; notification: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57e

    :cond_559
    const-string v6, "PRIVATE"

    .line 510
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationVisibility:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57e

    .line 511
    iput v11, v8, Landroid/app/Notification;->visibility:I

    const/4 v6, 0x0

    .line 512
    iput-object v6, v8, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 513
    sget-object v6, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invoke; made notification private; notification: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57e
    :goto_57e
    const-string v6, "MAX"

    .line 517
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a3

    const/4 v6, 0x2

    .line 518
    iput v6, v8, Landroid/app/Notification;->priority:I

    .line 519
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_MAX; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62e

    :cond_5a3
    const-string v6, "HIGH"

    .line 520
    iget-object v9, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c7

    const/4 v6, 0x1

    .line 521
    iput v6, v8, Landroid/app/Notification;->priority:I

    .line 522
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_HIGH; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62e

    .line 523
    :cond_5c7
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e9

    const/4 v5, 0x0

    .line 524
    iput v5, v8, Landroid/app/Notification;->priority:I

    .line 525
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_DEFAULT; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62e

    :cond_5e9
    const-string v5, "LOW"

    .line 526
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60c

    .line 527
    iput v11, v8, Landroid/app/Notification;->priority:I

    .line 528
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_LOW; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62e

    :cond_60c
    const-string v5, "MIN"

    .line 529
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationPriority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62e

    .line 530
    iput v3, v8, Landroid/app/Notification;->priority:I

    .line 531
    sget-object v3, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invoke; PRIORITY_MIN; notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_62e
    :goto_62e
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0xfa

    if-nez v3, :cond_6a0

    .line 535
    iget v3, v8, Landroid/app/Notification;->ledARGB:I

    if-nez v3, :cond_63e

    .line 536
    iput v11, v8, Landroid/app/Notification;->ledARGB:I

    .line 538
    :cond_63e
    iget v3, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v8, Landroid/app/Notification;->defaults:I

    .line 539
    iget v3, v8, Landroid/app/Notification;->flags:I

    const/4 v6, 0x1

    or-int/2addr v3, v6

    iput v3, v8, Landroid/app/Notification;->flags:I

    const/4 v3, 0x0

    .line 540
    iput v3, v8, Landroid/app/Notification;->priority:I

    const-string v3, "ON"

    .line 541
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_660

    const v3, 0x5f5e100

    .line 542
    iput v3, v8, Landroid/app/Notification;->ledOnMS:I

    const/4 v3, 0x1

    .line 543
    iput v3, v8, Landroid/app/Notification;->ledOffMS:I

    goto :goto_6a0

    :cond_660
    const-string v3, "FLASH_SLOW"

    .line 544
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_671

    .line 545
    iput v7, v8, Landroid/app/Notification;->ledOnMS:I

    const/16 v3, 0x7d0

    .line 546
    iput v3, v8, Landroid/app/Notification;->ledOffMS:I

    goto :goto_6a0

    :cond_671
    const-string v3, "FLASH_MEDIUM"

    .line 547
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_682

    const/16 v3, 0x1f4

    .line 548
    iput v3, v8, Landroid/app/Notification;->ledOnMS:I

    .line 549
    iput v7, v8, Landroid/app/Notification;->ledOffMS:I

    goto :goto_6a0

    :cond_682
    const-string v3, "FLASH_FAST"

    .line 550
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_691

    .line 551
    iput v5, v8, Landroid/app/Notification;->ledOnMS:I

    .line 552
    iput v5, v8, Landroid/app/Notification;->ledOffMS:I

    goto :goto_6a0

    :cond_691
    const-string v3, "OFF"

    .line 553
    iget-object v6, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a0

    const/4 v3, 0x0

    .line 554
    iput v3, v8, Landroid/app/Notification;->ledOnMS:I

    .line 555
    iput v3, v8, Landroid/app/Notification;->ledOffMS:I

    .line 559
    :cond_6a0
    :goto_6a0
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_733

    .line 560
    iget v3, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6ba

    .line 561
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6ba

    .line 562
    iput v7, v8, Landroid/app/Notification;->ledOnMS:I

    .line 563
    iput v5, v8, Landroid/app/Notification;->ledOffMS:I

    .line 566
    :cond_6ba
    iget v2, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v8, Landroid/app/Notification;->defaults:I

    .line 567
    iget v2, v8, Landroid/app/Notification;->flags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v8, Landroid/app/Notification;->flags:I

    const/4 v2, 0x0

    .line 568
    iput v2, v8, Landroid/app/Notification;->priority:I

    const-string v2, "WHITE"

    .line 569
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d6

    .line 570
    iput v11, v8, Landroid/app/Notification;->ledARGB:I

    goto :goto_733

    :cond_6d6
    const-string v2, "RED"

    .line 571
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e5

    const/high16 v2, -0x10000

    .line 572
    iput v2, v8, Landroid/app/Notification;->ledARGB:I

    goto :goto_733

    :cond_6e5
    const-string v2, "YELLOW"

    .line 573
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f4

    const/16 v2, -0x100

    .line 574
    iput v2, v8, Landroid/app/Notification;->ledARGB:I

    goto :goto_733

    :cond_6f4
    const-string v2, "GREEN"

    .line 575
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_704

    const v2, -0xff0100

    .line 576
    iput v2, v8, Landroid/app/Notification;->ledARGB:I

    goto :goto_733

    :cond_704
    const-string v2, "CYAN"

    .line 577
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_714

    const v2, -0xff0001

    .line 578
    iput v2, v8, Landroid/app/Notification;->ledARGB:I

    goto :goto_733

    :cond_714
    const-string v2, "BLUE"

    .line 579
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_724

    const v2, -0xffff01

    .line 580
    iput v2, v8, Landroid/app/Notification;->ledARGB:I

    goto :goto_733

    :cond_724
    const-string v2, "MAGENTA"

    .line 581
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationLightsColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_733

    const v2, -0xff01

    .line 582
    iput v2, v8, Landroid/app/Notification;->ledARGB:I

    .line 587
    :cond_733
    :goto_733
    iget v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationSnoozeTimeout:I

    if-lez v2, :cond_7c3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_7c3

    .line 590
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.applisto.appcloner.action.SNOOZE_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "id"

    .line 592
    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x40000000  # 2.0f

    .line 593
    invoke-static {v1, v15, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 595
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mSnoozeNotifications:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 598
    iget-object v5, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_771

    .line 599
    iget-object v5, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 603
    :cond_771
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 604
    :cond_775
    :goto_775
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_797

    .line 605
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$Action;

    .line 606
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_775

    .line 607
    invoke-virtual {v6}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "snooze_action"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_775

    .line 608
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_775

    .line 612
    :cond_797
    new-instance v5, Landroid/app/Notification$Action;

    const-string v6, "Snooze"

    const/4 v7, 0x0

    invoke-direct {v5, v7, v6, v2}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 614
    invoke-virtual {v5}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "snooze_action"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 615
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :goto_7ac
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-le v2, v5, :cond_7b8

    const/4 v2, 0x0

    .line 618
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7ac

    :cond_7b8
    const/4 v2, 0x0

    new-array v5, v2, [Landroid/app/Notification$Action;

    .line 621
    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/app/Notification$Action;

    iput-object v2, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 625
    :cond_7c3
    iget-object v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_7fd

    .line 626
    const-class v2, Landroid/app/Notification;

    const-string v3, "setSmallIcon"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/drawable/Icon;

    const/4 v9, 0x0

    aput-object v7, v6, v9

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 627
    iget-object v5, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    aput-object v5, v3, v9

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v3, "invoke; replaced small icon"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.largeIcon"

    .line 629
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7fd

    const-string v2, "android.largeIcon"

    .line 630
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 631
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v3, "invoke; replaced large icon"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_7fd
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    if-eqz v2, :cond_861

    iget-boolean v2, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTintStatusBarIcon:Z

    if-eqz v2, :cond_861

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_807
    .catch Ljava/lang/Exception; {:try_start_529 .. :try_end_807} :catch_29e

    const/16 v3, 0x17

    if-lt v2, v3, :cond_861

    .line 639
    :try_start_80b
    invoke-virtual {v8}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_861

    .line 642
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 643
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 644
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 645
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 647
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 648
    sget-object v7, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v7, 0x0

    .line 649
    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 650
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 652
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 653
    const-class v2, Landroid/app/Notification;

    const-string v3, "setSmallIcon"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/drawable/Icon;
    :try_end_847
    .catchall {:try_start_80b .. :try_end_847} :catchall_858

    const/4 v9, 0x0

    :try_start_848
    aput-object v7, v6, v9

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v9

    .line 654
    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_855
    .catchall {:try_start_848 .. :try_end_855} :catchall_856

    goto :goto_862

    :catchall_856
    move-exception v0

    goto :goto_85a

    :catchall_858
    move-exception v0

    const/4 v9, 0x0

    :goto_85a
    move-object v1, v0

    .line 657
    :try_start_85b
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_862

    :cond_861
    const/4 v9, 0x0

    .line 662
    :goto_862
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationIcon:Z
    :try_end_864
    .catch Ljava/lang/Exception; {:try_start_85b .. :try_end_864} :catch_29e

    if-eqz v1, :cond_8a7

    const/4 v1, 0x0

    .line 665
    :try_start_867
    iput-object v1, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    const-string v1, "android.largeIcon"

    .line 666
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.wearable.EXTENSIONS"

    .line 668
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_87b

    const-string v2, "background"

    .line 670
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_87b
    const-string v1, "android.car.EXTENSIONS"

    .line 673
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_888

    const-string v2, "large_icon"

    .line 675
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 678
    :cond_888
    const-class v1, Landroid/app/Notification;

    const-string v2, "mLargeIcon"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 679
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 680
    invoke-virtual {v1, v8, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 682
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; removed notification icon"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89f
    .catch Ljava/lang/Exception; {:try_start_867 .. :try_end_89f} :catch_8a0

    goto :goto_8a7

    :catch_8a0
    move-exception v0

    move-object v1, v0

    .line 685
    :try_start_8a2
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    :cond_8a7
    :goto_8a7
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationActions:Z
    :try_end_8a9
    .catch Ljava/lang/Exception; {:try_start_8a2 .. :try_end_8a9} :catch_29e

    if-eqz v1, :cond_8ce

    const/4 v1, 0x0

    .line 692
    :try_start_8ac
    iput-object v1, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 693
    iput-object v1, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 694
    iput-object v1, v8, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const-string v1, "android.wearable.EXTENSIONS"

    .line 695
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8bf

    const-string v2, "actions"

    .line 697
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 699
    :cond_8bf
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; removed notification actions"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c6
    .catch Ljava/lang/Exception; {:try_start_8ac .. :try_end_8c6} :catch_8c7

    goto :goto_8ce

    :catch_8c7
    move-exception v0

    move-object v1, v0

    .line 701
    :try_start_8c9
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    :cond_8ce
    :goto_8ce
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mRemoveNotificationPeople:Z
    :try_end_8d0
    .catch Ljava/lang/Exception; {:try_start_8c9 .. :try_end_8d0} :catch_29e

    if-eqz v1, :cond_93d

    :try_start_8d2
    const-string v1, "android.messagingUser"

    .line 708
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.people.list"

    .line 709
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v1, "android.people"

    .line 710
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 711
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_908

    const-string v1, "android.messages"

    .line 712
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_908

    .line 714
    array-length v2, v1

    const/4 v3, 0x0

    :goto_8f1
    if-ge v3, v2, :cond_908

    aget-object v5, v1, v3

    .line 715
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_905

    .line 716
    check-cast v5, Landroid/os/Bundle;

    const-string v6, "sender"

    .line 717
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v6, "sender_person"

    .line 718
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_905
    add-int/lit8 v3, v3, 0x1

    goto :goto_8f1

    .line 723
    :cond_908
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_92e

    const-string v1, "android.messages.historic"

    .line 724
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_92e

    .line 726
    array-length v2, v1

    :goto_917
    if-ge v9, v2, :cond_92e

    aget-object v3, v1, v9

    .line 727
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_92b

    .line 728
    check-cast v3, Landroid/os/Bundle;

    const-string v4, "sender"

    .line 729
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "sender_person"

    .line 730
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_92b
    add-int/lit8 v9, v9, 0x1

    goto :goto_917

    .line 735
    :cond_92e
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; removed notification people"

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_935
    .catch Ljava/lang/Exception; {:try_start_8d2 .. :try_end_935} :catch_936

    goto :goto_93d

    :catch_936
    move-exception v0

    move-object v1, v0

    .line 737
    :try_start_938
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    :cond_93d
    :goto_93d
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mSimpleNotifications:Z

    if-eqz v1, :cond_95a

    .line 743
    iget-object v1, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_95a

    .line 744
    iget-object v1, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.picture"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 745
    iget-object v1, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.largeIcon.big"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 746
    iget-object v1, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 751
    :cond_95a
    iget-object v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    if-eqz v1, :cond_9dc

    iget-object v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    .line 752
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_964
    .catch Ljava/lang/Exception; {:try_start_938 .. :try_end_964} :catch_29e

    if-nez v1, :cond_9dc

    .line 754
    :try_start_966
    iget-object v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mNotificationTextReplacements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_96c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9dc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "replace"

    .line 756
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v2, "with"

    .line 757
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v2, "ignoreCase"

    .line 758
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v2, "replaceInTitle"

    .line 759
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v2, "replaceInContent"

    .line 760
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v2, "replaceInMessages"

    .line 761
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const-string v2, "replaceInActions"

    .line 762
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12
    :try_end_9c6
    .catch Ljava/lang/Exception; {:try_start_966 .. :try_end_9c6} :catch_9d3

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v14, v8

    move v8, v9

    move v9, v12

    .line 755
    :try_start_9cc
    invoke-direct/range {v1 .. v9}, Lcom/applisto/appcloner/classes/NotificationOptions;->replaceNotificationText(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    :try_end_9cf
    .catch Ljava/lang/Exception; {:try_start_9cc .. :try_end_9cf} :catch_9d1

    move-object v8, v14

    goto :goto_96c

    :catch_9d1
    move-exception v0

    goto :goto_9d5

    :catch_9d3
    move-exception v0

    move-object v14, v8

    :goto_9d5
    move-object v1, v0

    .line 766
    :try_start_9d6
    sget-object v2, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9dd

    :cond_9dc
    move-object v14, v8

    .line 770
    :goto_9dd
    iget-boolean v1, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationGroup:Z

    if-eqz v1, :cond_a3e

    .line 771
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9e3
    .catch Ljava/lang/Exception; {:try_start_9d6 .. :try_end_9e3} :catch_29e

    const/16 v2, 0x18

    if-lt v1, v2, :cond_a3e

    .line 773
    :try_start_9e7
    iget-object v1, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_9f2

    .line 774
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 776
    :cond_9f2
    const-class v1, Landroid/app/Notification;

    const-string v2, "mGroupKey"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v6, 0x1

    .line 777
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v2, "single_group_key"

    .line 778
    invoke-virtual {v1, v14, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 780
    iget v1, v14, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v14, Landroid/app/Notification;->flags:I

    const/16 v1, 0x4c7

    .line 781
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v13, v16

    .line 782
    sget-object v1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v2, "invoke; showing group summary notification..."

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a18
    .catchall {:try_start_9e7 .. :try_end_a18} :catchall_a2f

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 783
    :try_start_a1c
    invoke-virtual {v2, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v13, v16

    .line 785
    iget v3, v14, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v14, Landroid/app/Notification;->flags:I
    :try_end_a2b
    .catchall {:try_start_a1c .. :try_end_a2b} :catchall_a2d

    goto/16 :goto_aa3

    :catchall_a2d
    move-exception v0

    goto :goto_a34

    :catchall_a2f
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    :goto_a34
    move-object v3, v0

    .line 787
    :try_start_a35
    sget-object v4, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3a
    .catch Ljava/lang/Exception; {:try_start_a35 .. :try_end_a3a} :catch_a3c

    goto/16 :goto_aa3

    :catch_a3c
    move-exception v0

    goto :goto_a49

    :cond_a3e
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    goto :goto_aa3

    :cond_a43
    move-object v1, v11

    move-object v2, v12

    goto :goto_aa3

    :catch_a46
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    :goto_a49
    move-object v3, v0

    .line 796
    :goto_a4a
    sget-object v4, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_aa3

    :cond_a50
    move-object v1, v11

    move-object v2, v12

    const/4 v6, 0x1

    .line 798
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createNotificationChannelGroups"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a77

    .line 799
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createNotificationChannels"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a77

    .line 800
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createNotificationChannelsForPackage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa3

    .line 801
    :cond_a77
    iget-object v3, v10, Lcom/applisto/appcloner/classes/NotificationOptions;->mSingleNotificationCategory:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_aa3

    .line 803
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 805
    :goto_a88
    array-length v4, v3

    if-ge v6, v4, :cond_aa1

    .line 806
    aget-object v4, v3, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.applisto.appcloner.classes"

    .line 807
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a9e

    .line 810
    invoke-virtual {v2, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a9e
    add-int/lit8 v6, v6, 0x1

    goto :goto_a88

    :cond_aa1
    const/4 v4, 0x0

    return-object v4

    .line 820
    :cond_aa3
    :goto_aa3
    invoke-virtual {v2, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .registers 2

    .line 883
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    const/4 p1, 0x1

    .line 885
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRunning:Z

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .registers 3

    .line 890
    sget-object p1, Lcom/applisto/appcloner/classes/NotificationOptions;->TAG:Ljava/lang/String;

    const-string v0, "onAppExit; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 892
    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/NotificationOptions;->mRunning:Z

    return-void
.end method
