.class public Lcom/swift/sandhook/wrapper/StubMethodsFactory;
.super Ljava/lang/Object;
.source "StubMethodsFactory.java"


# static fields
.field private static volatile curStub:I = 0x0

.field static final maxStub:I = 0x12c

.field private static proxyGenClass:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 15
    :try_start_0
    const-class v0, Ljava/lang/reflect/Proxy;

    const-string v1, "generateProxy"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const-class v3, [Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/lang/ClassLoader;

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-class v5, [Ljava/lang/reflect/Method;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-class v5, [[Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->proxyGenClass:Ljava/lang/reflect/Method;

    .line 16
    sget-object v0, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->proxyGenClass:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2b

    :catchall_2b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getStubMethod()Ljava/lang/reflect/Method;
    .registers 8

    const-class v0, Lcom/swift/sandhook/wrapper/StubMethodsFactory;

    monitor-enter v0

    .line 23
    :catch_3
    :try_start_3
    sget v1, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->curStub:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_73

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-gt v1, v2, :cond_29

    .line 25
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->curStub:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->curStub:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_27} :catch_3
    .catchall {:try_start_a .. :try_end_27} :catchall_73

    monitor-exit v0

    return-object v1

    :cond_29
    const/4 v1, 0x0

    .line 30
    :try_start_2a
    sget v2, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->curStub:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    sput v2, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->curStub:I

    .line 31
    sget-object v2, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->proxyGenClass:Ljava/lang/reflect/Method;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SandHookerStubClass_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->curStub:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-array v4, v4, [Ljava/lang/reflect/Method;

    sget-object v7, Lcom/swift/sandhook/wrapper/StubMethodsFactory;->proxyGenClass:Ljava/lang/reflect/Method;

    aput-object v7, v4, v3

    aput-object v4, v5, v6

    const/4 v4, 0x4

    aput-object v1, v5, v4

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    aget-object v1, v2, v3
    :try_end_6b
    .catchall {:try_start_2a .. :try_end_6b} :catchall_6d

    monitor-exit v0

    return-object v1

    :catchall_6d
    move-exception v2

    .line 34
    :try_start_6e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_73

    .line 35
    monitor-exit v0

    return-object v1

    :catchall_73
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public stub0()V
    .registers 1

    return-void
.end method

.method public stub1()V
    .registers 1

    return-void
.end method

.method public stub10()V
    .registers 1

    return-void
.end method

.method public stub100()V
    .registers 1

    return-void
.end method

.method public stub101()V
    .registers 1

    return-void
.end method

.method public stub102()V
    .registers 1

    return-void
.end method

.method public stub103()V
    .registers 1

    return-void
.end method

.method public stub104()V
    .registers 1

    return-void
.end method

.method public stub105()V
    .registers 1

    return-void
.end method

.method public stub106()V
    .registers 1

    return-void
.end method

.method public stub107()V
    .registers 1

    return-void
.end method

.method public stub108()V
    .registers 1

    return-void
.end method

.method public stub109()V
    .registers 1

    return-void
.end method

.method public stub11()V
    .registers 1

    return-void
.end method

.method public stub110()V
    .registers 1

    return-void
.end method

.method public stub111()V
    .registers 1

    return-void
.end method

.method public stub112()V
    .registers 1

    return-void
.end method

.method public stub113()V
    .registers 1

    return-void
.end method

.method public stub114()V
    .registers 1

    return-void
.end method

.method public stub115()V
    .registers 1

    return-void
.end method

.method public stub116()V
    .registers 1

    return-void
.end method

.method public stub117()V
    .registers 1

    return-void
.end method

.method public stub118()V
    .registers 1

    return-void
.end method

.method public stub119()V
    .registers 1

    return-void
.end method

.method public stub12()V
    .registers 1

    return-void
.end method

.method public stub120()V
    .registers 1

    return-void
.end method

.method public stub121()V
    .registers 1

    return-void
.end method

.method public stub122()V
    .registers 1

    return-void
.end method

.method public stub123()V
    .registers 1

    return-void
.end method

.method public stub124()V
    .registers 1

    return-void
.end method

.method public stub125()V
    .registers 1

    return-void
.end method

.method public stub126()V
    .registers 1

    return-void
.end method

.method public stub127()V
    .registers 1

    return-void
.end method

.method public stub128()V
    .registers 1

    return-void
.end method

.method public stub129()V
    .registers 1

    return-void
.end method

.method public stub13()V
    .registers 1

    return-void
.end method

.method public stub130()V
    .registers 1

    return-void
.end method

.method public stub131()V
    .registers 1

    return-void
.end method

.method public stub132()V
    .registers 1

    return-void
.end method

.method public stub133()V
    .registers 1

    return-void
.end method

.method public stub134()V
    .registers 1

    return-void
.end method

.method public stub135()V
    .registers 1

    return-void
.end method

.method public stub136()V
    .registers 1

    return-void
.end method

.method public stub137()V
    .registers 1

    return-void
.end method

.method public stub138()V
    .registers 1

    return-void
.end method

.method public stub139()V
    .registers 1

    return-void
.end method

.method public stub14()V
    .registers 1

    return-void
.end method

.method public stub140()V
    .registers 1

    return-void
.end method

.method public stub141()V
    .registers 1

    return-void
.end method

.method public stub142()V
    .registers 1

    return-void
.end method

.method public stub143()V
    .registers 1

    return-void
.end method

.method public stub144()V
    .registers 1

    return-void
.end method

.method public stub145()V
    .registers 1

    return-void
.end method

.method public stub146()V
    .registers 1

    return-void
.end method

.method public stub147()V
    .registers 1

    return-void
.end method

.method public stub148()V
    .registers 1

    return-void
.end method

.method public stub149()V
    .registers 1

    return-void
.end method

.method public stub15()V
    .registers 1

    return-void
.end method

.method public stub150()V
    .registers 1

    return-void
.end method

.method public stub151()V
    .registers 1

    return-void
.end method

.method public stub152()V
    .registers 1

    return-void
.end method

.method public stub153()V
    .registers 1

    return-void
.end method

.method public stub154()V
    .registers 1

    return-void
.end method

.method public stub155()V
    .registers 1

    return-void
.end method

.method public stub156()V
    .registers 1

    return-void
.end method

.method public stub157()V
    .registers 1

    return-void
.end method

.method public stub158()V
    .registers 1

    return-void
.end method

.method public stub159()V
    .registers 1

    return-void
.end method

.method public stub16()V
    .registers 1

    return-void
.end method

.method public stub160()V
    .registers 1

    return-void
.end method

.method public stub161()V
    .registers 1

    return-void
.end method

.method public stub162()V
    .registers 1

    return-void
.end method

.method public stub163()V
    .registers 1

    return-void
.end method

.method public stub164()V
    .registers 1

    return-void
.end method

.method public stub165()V
    .registers 1

    return-void
.end method

.method public stub166()V
    .registers 1

    return-void
.end method

.method public stub167()V
    .registers 1

    return-void
.end method

.method public stub168()V
    .registers 1

    return-void
.end method

.method public stub169()V
    .registers 1

    return-void
.end method

.method public stub17()V
    .registers 1

    return-void
.end method

.method public stub170()V
    .registers 1

    return-void
.end method

.method public stub171()V
    .registers 1

    return-void
.end method

.method public stub172()V
    .registers 1

    return-void
.end method

.method public stub173()V
    .registers 1

    return-void
.end method

.method public stub174()V
    .registers 1

    return-void
.end method

.method public stub175()V
    .registers 1

    return-void
.end method

.method public stub176()V
    .registers 1

    return-void
.end method

.method public stub177()V
    .registers 1

    return-void
.end method

.method public stub178()V
    .registers 1

    return-void
.end method

.method public stub179()V
    .registers 1

    return-void
.end method

.method public stub18()V
    .registers 1

    return-void
.end method

.method public stub180()V
    .registers 1

    return-void
.end method

.method public stub181()V
    .registers 1

    return-void
.end method

.method public stub182()V
    .registers 1

    return-void
.end method

.method public stub183()V
    .registers 1

    return-void
.end method

.method public stub184()V
    .registers 1

    return-void
.end method

.method public stub185()V
    .registers 1

    return-void
.end method

.method public stub186()V
    .registers 1

    return-void
.end method

.method public stub187()V
    .registers 1

    return-void
.end method

.method public stub188()V
    .registers 1

    return-void
.end method

.method public stub189()V
    .registers 1

    return-void
.end method

.method public stub19()V
    .registers 1

    return-void
.end method

.method public stub190()V
    .registers 1

    return-void
.end method

.method public stub191()V
    .registers 1

    return-void
.end method

.method public stub192()V
    .registers 1

    return-void
.end method

.method public stub193()V
    .registers 1

    return-void
.end method

.method public stub194()V
    .registers 1

    return-void
.end method

.method public stub195()V
    .registers 1

    return-void
.end method

.method public stub196()V
    .registers 1

    return-void
.end method

.method public stub197()V
    .registers 1

    return-void
.end method

.method public stub198()V
    .registers 1

    return-void
.end method

.method public stub199()V
    .registers 1

    return-void
.end method

.method public stub2()V
    .registers 1

    return-void
.end method

.method public stub20()V
    .registers 1

    return-void
.end method

.method public stub200()V
    .registers 1

    return-void
.end method

.method public stub201()V
    .registers 1

    return-void
.end method

.method public stub202()V
    .registers 1

    return-void
.end method

.method public stub203()V
    .registers 1

    return-void
.end method

.method public stub204()V
    .registers 1

    return-void
.end method

.method public stub205()V
    .registers 1

    return-void
.end method

.method public stub206()V
    .registers 1

    return-void
.end method

.method public stub207()V
    .registers 1

    return-void
.end method

.method public stub208()V
    .registers 1

    return-void
.end method

.method public stub209()V
    .registers 1

    return-void
.end method

.method public stub21()V
    .registers 1

    return-void
.end method

.method public stub210()V
    .registers 1

    return-void
.end method

.method public stub211()V
    .registers 1

    return-void
.end method

.method public stub212()V
    .registers 1

    return-void
.end method

.method public stub213()V
    .registers 1

    return-void
.end method

.method public stub214()V
    .registers 1

    return-void
.end method

.method public stub215()V
    .registers 1

    return-void
.end method

.method public stub216()V
    .registers 1

    return-void
.end method

.method public stub217()V
    .registers 1

    return-void
.end method

.method public stub218()V
    .registers 1

    return-void
.end method

.method public stub219()V
    .registers 1

    return-void
.end method

.method public stub22()V
    .registers 1

    return-void
.end method

.method public stub220()V
    .registers 1

    return-void
.end method

.method public stub221()V
    .registers 1

    return-void
.end method

.method public stub222()V
    .registers 1

    return-void
.end method

.method public stub223()V
    .registers 1

    return-void
.end method

.method public stub224()V
    .registers 1

    return-void
.end method

.method public stub225()V
    .registers 1

    return-void
.end method

.method public stub226()V
    .registers 1

    return-void
.end method

.method public stub227()V
    .registers 1

    return-void
.end method

.method public stub228()V
    .registers 1

    return-void
.end method

.method public stub229()V
    .registers 1

    return-void
.end method

.method public stub23()V
    .registers 1

    return-void
.end method

.method public stub230()V
    .registers 1

    return-void
.end method

.method public stub231()V
    .registers 1

    return-void
.end method

.method public stub232()V
    .registers 1

    return-void
.end method

.method public stub233()V
    .registers 1

    return-void
.end method

.method public stub234()V
    .registers 1

    return-void
.end method

.method public stub235()V
    .registers 1

    return-void
.end method

.method public stub236()V
    .registers 1

    return-void
.end method

.method public stub237()V
    .registers 1

    return-void
.end method

.method public stub238()V
    .registers 1

    return-void
.end method

.method public stub239()V
    .registers 1

    return-void
.end method

.method public stub24()V
    .registers 1

    return-void
.end method

.method public stub240()V
    .registers 1

    return-void
.end method

.method public stub241()V
    .registers 1

    return-void
.end method

.method public stub242()V
    .registers 1

    return-void
.end method

.method public stub243()V
    .registers 1

    return-void
.end method

.method public stub244()V
    .registers 1

    return-void
.end method

.method public stub245()V
    .registers 1

    return-void
.end method

.method public stub246()V
    .registers 1

    return-void
.end method

.method public stub247()V
    .registers 1

    return-void
.end method

.method public stub248()V
    .registers 1

    return-void
.end method

.method public stub249()V
    .registers 1

    return-void
.end method

.method public stub25()V
    .registers 1

    return-void
.end method

.method public stub250()V
    .registers 1

    return-void
.end method

.method public stub251()V
    .registers 1

    return-void
.end method

.method public stub252()V
    .registers 1

    return-void
.end method

.method public stub253()V
    .registers 1

    return-void
.end method

.method public stub254()V
    .registers 1

    return-void
.end method

.method public stub255()V
    .registers 1

    return-void
.end method

.method public stub256()V
    .registers 1

    return-void
.end method

.method public stub257()V
    .registers 1

    return-void
.end method

.method public stub258()V
    .registers 1

    return-void
.end method

.method public stub259()V
    .registers 1

    return-void
.end method

.method public stub26()V
    .registers 1

    return-void
.end method

.method public stub260()V
    .registers 1

    return-void
.end method

.method public stub261()V
    .registers 1

    return-void
.end method

.method public stub262()V
    .registers 1

    return-void
.end method

.method public stub263()V
    .registers 1

    return-void
.end method

.method public stub264()V
    .registers 1

    return-void
.end method

.method public stub265()V
    .registers 1

    return-void
.end method

.method public stub266()V
    .registers 1

    return-void
.end method

.method public stub267()V
    .registers 1

    return-void
.end method

.method public stub268()V
    .registers 1

    return-void
.end method

.method public stub269()V
    .registers 1

    return-void
.end method

.method public stub27()V
    .registers 1

    return-void
.end method

.method public stub270()V
    .registers 1

    return-void
.end method

.method public stub271()V
    .registers 1

    return-void
.end method

.method public stub272()V
    .registers 1

    return-void
.end method

.method public stub273()V
    .registers 1

    return-void
.end method

.method public stub274()V
    .registers 1

    return-void
.end method

.method public stub275()V
    .registers 1

    return-void
.end method

.method public stub276()V
    .registers 1

    return-void
.end method

.method public stub277()V
    .registers 1

    return-void
.end method

.method public stub278()V
    .registers 1

    return-void
.end method

.method public stub279()V
    .registers 1

    return-void
.end method

.method public stub28()V
    .registers 1

    return-void
.end method

.method public stub280()V
    .registers 1

    return-void
.end method

.method public stub281()V
    .registers 1

    return-void
.end method

.method public stub282()V
    .registers 1

    return-void
.end method

.method public stub283()V
    .registers 1

    return-void
.end method

.method public stub284()V
    .registers 1

    return-void
.end method

.method public stub285()V
    .registers 1

    return-void
.end method

.method public stub286()V
    .registers 1

    return-void
.end method

.method public stub287()V
    .registers 1

    return-void
.end method

.method public stub288()V
    .registers 1

    return-void
.end method

.method public stub289()V
    .registers 1

    return-void
.end method

.method public stub29()V
    .registers 1

    return-void
.end method

.method public stub290()V
    .registers 1

    return-void
.end method

.method public stub291()V
    .registers 1

    return-void
.end method

.method public stub292()V
    .registers 1

    return-void
.end method

.method public stub293()V
    .registers 1

    return-void
.end method

.method public stub294()V
    .registers 1

    return-void
.end method

.method public stub295()V
    .registers 1

    return-void
.end method

.method public stub296()V
    .registers 1

    return-void
.end method

.method public stub297()V
    .registers 1

    return-void
.end method

.method public stub298()V
    .registers 1

    return-void
.end method

.method public stub299()V
    .registers 1

    return-void
.end method

.method public stub3()V
    .registers 1

    return-void
.end method

.method public stub30()V
    .registers 1

    return-void
.end method

.method public stub300()V
    .registers 1

    return-void
.end method

.method public stub31()V
    .registers 1

    return-void
.end method

.method public stub32()V
    .registers 1

    return-void
.end method

.method public stub33()V
    .registers 1

    return-void
.end method

.method public stub34()V
    .registers 1

    return-void
.end method

.method public stub35()V
    .registers 1

    return-void
.end method

.method public stub36()V
    .registers 1

    return-void
.end method

.method public stub37()V
    .registers 1

    return-void
.end method

.method public stub38()V
    .registers 1

    return-void
.end method

.method public stub39()V
    .registers 1

    return-void
.end method

.method public stub4()V
    .registers 1

    return-void
.end method

.method public stub40()V
    .registers 1

    return-void
.end method

.method public stub41()V
    .registers 1

    return-void
.end method

.method public stub42()V
    .registers 1

    return-void
.end method

.method public stub43()V
    .registers 1

    return-void
.end method

.method public stub44()V
    .registers 1

    return-void
.end method

.method public stub45()V
    .registers 1

    return-void
.end method

.method public stub46()V
    .registers 1

    return-void
.end method

.method public stub47()V
    .registers 1

    return-void
.end method

.method public stub48()V
    .registers 1

    return-void
.end method

.method public stub49()V
    .registers 1

    return-void
.end method

.method public stub5()V
    .registers 1

    return-void
.end method

.method public stub50()V
    .registers 1

    return-void
.end method

.method public stub51()V
    .registers 1

    return-void
.end method

.method public stub52()V
    .registers 1

    return-void
.end method

.method public stub53()V
    .registers 1

    return-void
.end method

.method public stub54()V
    .registers 1

    return-void
.end method

.method public stub55()V
    .registers 1

    return-void
.end method

.method public stub56()V
    .registers 1

    return-void
.end method

.method public stub57()V
    .registers 1

    return-void
.end method

.method public stub58()V
    .registers 1

    return-void
.end method

.method public stub59()V
    .registers 1

    return-void
.end method

.method public stub6()V
    .registers 1

    return-void
.end method

.method public stub60()V
    .registers 1

    return-void
.end method

.method public stub61()V
    .registers 1

    return-void
.end method

.method public stub62()V
    .registers 1

    return-void
.end method

.method public stub63()V
    .registers 1

    return-void
.end method

.method public stub64()V
    .registers 1

    return-void
.end method

.method public stub65()V
    .registers 1

    return-void
.end method

.method public stub66()V
    .registers 1

    return-void
.end method

.method public stub67()V
    .registers 1

    return-void
.end method

.method public stub68()V
    .registers 1

    return-void
.end method

.method public stub69()V
    .registers 1

    return-void
.end method

.method public stub7()V
    .registers 1

    return-void
.end method

.method public stub70()V
    .registers 1

    return-void
.end method

.method public stub71()V
    .registers 1

    return-void
.end method

.method public stub72()V
    .registers 1

    return-void
.end method

.method public stub73()V
    .registers 1

    return-void
.end method

.method public stub74()V
    .registers 1

    return-void
.end method

.method public stub75()V
    .registers 1

    return-void
.end method

.method public stub76()V
    .registers 1

    return-void
.end method

.method public stub77()V
    .registers 1

    return-void
.end method

.method public stub78()V
    .registers 1

    return-void
.end method

.method public stub79()V
    .registers 1

    return-void
.end method

.method public stub8()V
    .registers 1

    return-void
.end method

.method public stub80()V
    .registers 1

    return-void
.end method

.method public stub81()V
    .registers 1

    return-void
.end method

.method public stub82()V
    .registers 1

    return-void
.end method

.method public stub83()V
    .registers 1

    return-void
.end method

.method public stub84()V
    .registers 1

    return-void
.end method

.method public stub85()V
    .registers 1

    return-void
.end method

.method public stub86()V
    .registers 1

    return-void
.end method

.method public stub87()V
    .registers 1

    return-void
.end method

.method public stub88()V
    .registers 1

    return-void
.end method

.method public stub89()V
    .registers 1

    return-void
.end method

.method public stub9()V
    .registers 1

    return-void
.end method

.method public stub90()V
    .registers 1

    return-void
.end method

.method public stub91()V
    .registers 1

    return-void
.end method

.method public stub92()V
    .registers 1

    return-void
.end method

.method public stub93()V
    .registers 1

    return-void
.end method

.method public stub94()V
    .registers 1

    return-void
.end method

.method public stub95()V
    .registers 1

    return-void
.end method

.method public stub96()V
    .registers 1

    return-void
.end method

.method public stub97()V
    .registers 1

    return-void
.end method

.method public stub98()V
    .registers 1

    return-void
.end method

.method public stub99()V
    .registers 1

    return-void
.end method
