.class public Landroid/os/Environmenu;
.super Ljava/lang/Object;
.source "Environmenu.java"


# static fields
.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_EJECTING:Ljava/lang/String; = "ejecting"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field public static final STANDARD_DIRECTORIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static externalStorageEncapsulationName:Ljava/lang/String;

.field private static sExistingDirectories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 20
    const-class v0, Landroid/os/Environmenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    const-string v0, "//////////////////////////////////////////////////"

    .line 22
    sput-object v0, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    .line 27
    sget-object v0, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static initializer; externalStorageEncapsulationName (1): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    :goto_26
    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_3d

    .line 32
    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_3a

    goto :goto_3e

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3d
    const/4 v1, -0x1

    :goto_3e
    if-eq v1, v3, :cond_49

    .line 38
    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    goto :goto_4c

    :cond_49
    const/4 v1, 0x0

    .line 40
    sput-object v1, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    .line 43
    :goto_4c
    sget-object v1, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static initializer; externalStorageEncapsulationName (2): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    const-string v1, "Music"

    .line 49
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_MUSIC:Ljava/lang/String;

    const-string v1, "Podcasts"

    .line 50
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const-string v1, "Ringtones"

    .line 51
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const-string v1, "Alarms"

    .line 52
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_ALARMS:Ljava/lang/String;

    const-string v1, "Notifications"

    .line 53
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const-string v1, "Pictures"

    .line 54
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string v1, "Movies"

    .line 55
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_MOVIES:Ljava/lang/String;

    const-string v1, "Download"

    .line 56
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v1, "DCIM"

    .line 57
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_DCIM:Ljava/lang/String;

    const-string v1, "Documents"

    .line 58
    sput-object v1, Landroid/os/Environmenu;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 60
    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v1, v0

    sget-object v0, Landroid/os/Environmenu;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    sget-object v2, Landroid/os/Environmenu;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    aput-object v2, v1, v0

    sput-object v1, Landroid/os/Environmenu;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDirectory()Ljava/io/File;
    .registers 1

    .line 95
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .registers 1

    .line 99
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .registers 5

    .line 104
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 105
    const-class v1, Landroid/os/Environmenu;

    monitor-enter v1

    .line 106
    :try_start_7
    sget-object v2, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    if-eqz v2, :cond_57

    .line 107
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environmenu;->externalStorageEncapsulationName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    sget-object v0, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 109
    sget-object v0, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStorageDirectory; file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 111
    sget-object v0, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 112
    :cond_42
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 113
    sget-object v0, Landroid/os/Environmenu;->sExistingDirectories:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 115
    :cond_4e
    sget-object v0, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    const-string v3, "getExternalStorageDirectory; mkdirs() failed"

    invoke-static {v0, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    move-object v0, v2

    goto :goto_5e

    .line 119
    :cond_57
    sget-object v2, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    const-string v3, "getExternalStorageDirectory; externalStorageEncapsulationName == null"

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_5e
    monitor-exit v1

    return-object v0

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 127
    invoke-static {p0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    sget-object v1, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalStoragePublicDirectory; type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", directory: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environmenu;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    sget-object v0, Landroid/os/Environmenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExternalStoragePublicDirectory; newDirectory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .registers 1

    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 140
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .registers 1

    .line 144
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 150
    invoke-static {p0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isExternalStorageEmulated()Z
    .registers 1

    .line 154
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEmulated(Ljava/io/File;)Z
    .registers 1

    .line 159
    invoke-static {p0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageRemovable()Z
    .registers 1

    .line 163
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageRemovable(Ljava/io/File;)Z
    .registers 1

    .line 168
    invoke-static {p0}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static isStandardDirectory(Ljava/lang/String;)Z
    .registers 6

    .line 86
    sget-object v0, Landroid/os/Environmenu;->STANDARD_DIRECTORIES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 87
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method
