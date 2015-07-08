; ModuleID = 'tcctest_file.bc'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.struct1 = type { i32, i32, i32, %union.union1, [3 x i8] }
%union.union1 = type { i32 }
%struct.structinit1 = type { i32, i8, i16, [3 x i32] }
%struct.anon = type { [3 x i32], i32 }
%struct.bar = type { i8*, i32 }
%struct.linit16 = type { i32, i32, i32, i32 }
%struct.structa1 = type { i32, i8 }
%struct.sbf1 = type { i8, i24 }
%struct.S = type { i32, i8 }
%union.union2 = type { i32 }
%struct.anon.0 = type { i32, void (i32)* }

@.str = private unnamed_addr constant [8 x i8] c"macro:\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"N=%d\0A\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"aaa=%d\0A\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"min=%d\0A\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"s1=%s\0A\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"s2=%s\0A\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"hello, world\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"s3=%s\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"\22c\22\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"s4=%s\0A\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"B3=%d\0A\00", align 1
@.str13 = private unnamed_addr constant [11 x i8] c"A defined\0A\00", align 1
@.str14 = private unnamed_addr constant [15 x i8] c"B not defined\0A\00", align 1
@.str15 = private unnamed_addr constant [16 x i8] c"B1 not defined\0A\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"test true1\0A\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"test trueA\0A\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"test 2\0A\00", align 1
@.str19 = private unnamed_addr constant [18 x i8] c"__LINE__ defined\0A\00", align 1
@.str20 = private unnamed_addr constant [25 x i8] c"__LINE__=%d __FILE__=%s\0A\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"tcctest.c\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str23 = private unnamed_addr constant [15 x i8] c"__func__ = %s\0A\00", align 1
@__func__.macro_test = private unnamed_addr constant [11 x i8] c"macro_test\00", align 1
@.str24 = private unnamed_addr constant [10 x i8] c"vaarg=%d\0A\00", align 1
@.str25 = private unnamed_addr constant [8 x i8] c"vaarg1\0A\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"vaarg1=%d\0A\00", align 1
@.str27 = private unnamed_addr constant [14 x i8] c"vaarg1=%d %d\0A\00", align 1
@.str28 = private unnamed_addr constant [11 x i8] c"func='%s'\0A\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"INT64_MIN=%Ld\0A\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"a=%d\0A\00", align 1
@.str31 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str33 = private unnamed_addr constant [9 x i8] c"tralala\0A\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"qq=%d\0A\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c"qq1=%d\0A\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@foo1_string = constant [10 x i8] c"bar\0Atesta\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"string:\0A\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c"ab3c\0A\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"ABC:\0A\00", align 1
@.str40 = private unnamed_addr constant [6 x i8] c"c=%c\0A\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"wc=%C 0x%lx %C\0A\00", align 1
@.str42 = private unnamed_addr constant [18 x i8] c"foo1_string='%s'\0A\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"test\0A\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str45 = private unnamed_addr constant [8 x i8] c"fib=%d\0A\00", align 1
@.str46 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@goto_test.label_table = internal global [3 x i8*] [i8* blockaddress(@goto_test, %20), i8* blockaddress(@goto_test, %22), i8* blockaddress(@goto_test, %24)], align 4
@.str47 = private unnamed_addr constant [7 x i8] c"goto:\0A\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"label1\0A\00", align 1
@.str49 = private unnamed_addr constant [8 x i8] c"label2\0A\00", align 1
@.str50 = private unnamed_addr constant [8 x i8] c"label3\0A\00", align 1
@.str51 = private unnamed_addr constant [25 x i8] c"enum:\0A%d %d %d %d %d %d\0A\00", align 1
@.str52 = private unnamed_addr constant [7 x i8] c"b1=%d\0A\00", align 1
@.str53 = private unnamed_addr constant [10 x i8] c"typedef:\0A\00", align 1
@.str54 = private unnamed_addr constant [12 x i8] c"mytype2=%d\0A\00", align 1
@.str55 = private unnamed_addr constant [10 x i8] c"forward:\0A\00", align 1
@.str56 = private unnamed_addr constant [12 x i8] c"forward ok\0A\00", align 1
@.str57 = private unnamed_addr constant [7 x i8] c"g1=%d\0A\00", align 1
@.str58 = private unnamed_addr constant [8 x i8] c"scope:\0A\00", align 1
@g = common global i32 0, align 4
@.str59 = private unnamed_addr constant [7 x i8] c"g2=%d\0A\00", align 1
@.str60 = private unnamed_addr constant [7 x i8] c"g3=%d\0A\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c"g4=%d\0A\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"g5=%d\0A\00", align 1
@.str63 = private unnamed_addr constant [8 x i8] c"array:\0A\00", align 1
@.str64 = private unnamed_addr constant [16 x i8] c"sizeof(a) = %d\0A\00", align 1
@.str65 = private unnamed_addr constant [18 x i8] c"sizeof(\22a\22) = %d\0A\00", align 1
@.str66 = private unnamed_addr constant [23 x i8] c"sizeof(__func__) = %d\0A\00", align 1
@.str67 = private unnamed_addr constant [15 x i8] c"sizeof tab %d\0A\00", align 1
@.str68 = private unnamed_addr constant [16 x i8] c"sizeof tab2 %d\0A\00", align 1
@tab = common global [3 x i32] zeroinitializer, align 4
@.str69 = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1
@tab2 = common global [3 x [2 x i32]] zeroinitializer, align 4
@.str70 = private unnamed_addr constant [5 x i8] c" %3d\00", align 1
@.str71 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str72 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@vstack_ptr = common global i32* null, align 4
@.str73 = private unnamed_addr constant [8 x i8] c"expr2:\0A\00", align 1
@vstack = common global [10 x i32] zeroinitializer, align 4
@.str74 = private unnamed_addr constant [12 x i8] c"res= %d %d\0A\00", align 1
@.str75 = private unnamed_addr constant [16 x i8] c"constant_expr:\0A\00", align 1
@.str76 = private unnamed_addr constant [11 x i8] c"expr_ptr:\0A\00", align 1
@tab4 = common global [10 x i32] zeroinitializer, align 4
@.str77 = private unnamed_addr constant [9 x i8] c"diff=%d\0A\00", align 1
@.str78 = private unnamed_addr constant [8 x i8] c"inc=%d\0A\00", align 1
@.str79 = private unnamed_addr constant [8 x i8] c"dec=%d\0A\00", align 1
@.str80 = private unnamed_addr constant [8 x i8] c"add=%d\0A\00", align 1
@.str81 = private unnamed_addr constant [9 x i8] c"struct:\0A\00", align 1
@.str82 = private unnamed_addr constant [20 x i8] c"sizes: %d %d %d %d\0A\00", align 1
@st1 = common global %struct.struct1 zeroinitializer, align 4
@.str83 = private unnamed_addr constant [15 x i8] c"st1: %d %d %d\0A\00", align 1
@.str84 = private unnamed_addr constant [12 x i8] c"union1: %d\0A\00", align 1
@.str85 = private unnamed_addr constant [12 x i8] c"union2: %d\0A\00", align 1
@st2 = common global %struct.struct1 zeroinitializer, align 4
@.str86 = private unnamed_addr constant [15 x i8] c"st2: %d %d %d\0A\00", align 1
@.str87 = private unnamed_addr constant [13 x i8] c"str_addr=%x\0A\00", align 1
@.str88 = private unnamed_addr constant [33 x i8] c"aligntest1 sizeof=%d alignof=%d\0A\00", align 1
@.str89 = private unnamed_addr constant [33 x i8] c"aligntest2 sizeof=%d alignof=%d\0A\00", align 1
@.str90 = private unnamed_addr constant [33 x i8] c"aligntest3 sizeof=%d alignof=%d\0A\00", align 1
@.str91 = private unnamed_addr constant [33 x i8] c"aligntest4 sizeof=%d alignof=%d\0A\00", align 1
@.str92 = private unnamed_addr constant [27 x i8] c"sizeof(struct empty) = %d\0A\00", align 1
@.str93 = private unnamed_addr constant [28 x i8] c"alignof(struct empty) = %d\0A\00", align 1
@.str94 = private unnamed_addr constant [13 x i8] c"char_short:\0A\00", align 1
@.str95 = private unnamed_addr constant [10 x i8] c"s8=%d %d\0A\00", align 1
@.str96 = private unnamed_addr constant [10 x i8] c"u8=%d %d\0A\00", align 1
@.str97 = private unnamed_addr constant [11 x i8] c"s16=%d %d\0A\00", align 1
@.str98 = private unnamed_addr constant [11 x i8] c"u16=%d %d\0A\00", align 1
@.str99 = private unnamed_addr constant [11 x i8] c"s32=%d %d\0A\00", align 1
@.str100 = private unnamed_addr constant [11 x i8] c"u32=%d %d\0A\00", align 1
@.str101 = private unnamed_addr constant [9 x i8] c"var1=%x\0A\00", align 1
@.str102 = private unnamed_addr constant [7 x i8] c"!s=%d\0A\00", align 1
@.str103 = private unnamed_addr constant [12 x i8] c"a=%d %d %d\0A\00", align 1
@.str104 = private unnamed_addr constant [9 x i8] c"a=%d %d\0A\00", align 1
@.str105 = private unnamed_addr constant [4 x i8] c"a1\0A\00", align 1
@.str106 = private unnamed_addr constant [4 x i8] c"a2\0A\00", align 1
@.str107 = private unnamed_addr constant [4 x i8] c"a4\0A\00", align 1
@.str108 = private unnamed_addr constant [6 x i8] c"b=%d\0A\00", align 1
@.str109 = private unnamed_addr constant [8 x i8] c"exp=%d\0A\00", align 1
@.str110 = private unnamed_addr constant [6 x i8] c"r=%d\0A\00", align 1
@.str111 = private unnamed_addr constant [11 x i8] c"aspect=%d\0A\00", align 1
@bool_test.v1 = internal global i32 34, align 4
@bool_test.v2 = internal global i32 -1, align 4
@.str112 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str113 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@cinit1 = global i32 0, align 4
@.compoundliteral = internal global [3 x i32] [i32 3, i32 2, i32 1]
@cinit2 = global i32* getelementptr inbounds ([3 x i32]* @.compoundliteral, i32 0, i32 0), align 4
@.str114 = private unnamed_addr constant [16 x i8] c"compound_test:\0A\00", align 1
@.str115 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str116 = private unnamed_addr constant [9 x i8] c"tralala1\00", align 1
@.str117 = private unnamed_addr constant [7 x i8] c"q1=%s\0A\00", align 1
@.str118 = private unnamed_addr constant [9 x i8] c"tralala2\00", align 1
@.str119 = private unnamed_addr constant [7 x i8] c"q2=%s\0A\00", align 1
@.str120 = private unnamed_addr constant [7 x i8] c"q3=%s\0A\00", align 1
@.str121 = private unnamed_addr constant [9 x i8] c"tralala3\00", align 1
@.str122 = private unnamed_addr constant [7 x i8] c"q4=%s\0A\00", align 1
@.str123 = private unnamed_addr constant [10 x i8] c"kr_test:\0A\00", align 1
@.str124 = private unnamed_addr constant [10 x i8] c"func1=%d\0A\00", align 1
@.str125 = private unnamed_addr constant [10 x i8] c"func2=%d\0A\00", align 1
@malloc_20 = common global [20 x i8] zeroinitializer, align 1
@.str126 = private unnamed_addr constant [20 x i8] c"before call: %d %d\0A\00", align 1
@.str127 = private unnamed_addr constant [19 x i8] c"after call: %d %d\0A\00", align 1
@.str128 = private unnamed_addr constant [12 x i8] c"cast_test:\0A\00", align 1
@bcast = common global i8 0, align 1
@scast = common global i16 0, align 2
@.str129 = private unnamed_addr constant [37 x i8] c"sizeof(c) = %d, sizeof((int)c) = %d\0A\00", align 1
@.str130 = private unnamed_addr constant [36 x i8] c"((unsigned)(short)0x%08x) = 0x%08x\0A\00", align 1
@.str131 = private unnamed_addr constant [35 x i8] c"((unsigned)(char)0x%08x) = 0x%08x\0A\00", align 1
@.str132 = private unnamed_addr constant [25 x i8] c"sizeof(+(char)'a') = %d\0A\00", align 1
@.str133 = private unnamed_addr constant [25 x i8] c"sizeof(-(char)'a') = %d\0A\00", align 1
@.str134 = private unnamed_addr constant [25 x i8] c"sizeof(~(char)'a') = %d\0A\00", align 1
@sinit1 = global i32 2, align 4
@sinit2 = global i32 3, align 4
@sinit3 = global [3 x i32] [i32 1, i32 2, i32 3], align 4
@sinit4 = global [3 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 4], [2 x i32] [i32 5, i32 6]], align 4
@sinit5 = global [3 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 4], [2 x i32] [i32 5, i32 6]], align 4
@sinit6 = global [3 x i32] [i32 1, i32 2, i32 3], align 4
@sinit7 = global [3 x i32] [i32 1, i32 2, i32 3], align 4
@sinit8 = global [11 x i8] c"hellotrala\00", align 1
@sinit9 = global %struct.structinit1 { i32 1, i8 2, i16 3, [3 x i32] zeroinitializer }, align 4
@sinit10 = global %struct.structinit1 { i32 1, i8 2, i16 3, [3 x i32] zeroinitializer }, align 4
@sinit11 = global %struct.structinit1 { i32 1, i8 2, i16 3, [3 x i32] [i32 10, i32 11, i32 12] }, align 4
@.str135 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@sinit12 = global i8* getelementptr inbounds ([12 x i8]* @.str135, i32 0, i32 0), align 4
@.str136 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@.str137 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@.str138 = private unnamed_addr constant [6 x i8] c"test3\00", align 1
@sinit13 = global [3 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str136, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str137, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str138, i32 0, i32 0)], align 4
@sinit14 = global [10 x i8] c"abc\00\00\00\00\00\00\00", align 1
@sinit15 = global [3 x i32] [i32 12, i32 1, i32 2], align 4
@sinit16 = global [2 x %struct.anon] [%struct.anon { [3 x i32] [i32 1, i32 0, i32 0], i32 0 }, %struct.anon { [3 x i32] [i32 2, i32 0, i32 0], i32 0 }], align 4
@.str139 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@sinit17 = global [2 x %struct.bar] [%struct.bar { i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i32 4 }, %struct.bar { i8* getelementptr inbounds ([3 x i8]* @.str139, i32 0, i32 0), i32 1 }], align 4
@sinit18 = global [10 x i32] [i32 0, i32 0, i32 20, i32 20, i32 20, i32 20, i32 2, i32 0, i32 10, i32 0], align 4
@init_test.linit4 = private unnamed_addr constant [3 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 4], [2 x i32] [i32 5, i32 6]], align 4
@init_test.linit6 = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@init_test.linit8 = private unnamed_addr constant [11 x i8] c"hellotrala\00", align 1
@init_test.linit14 = private unnamed_addr constant [10 x i8] c"abc\00\00\00\00\00\00\00", align 1
@init_test.linit16 = private unnamed_addr constant %struct.linit16 { i32 1, i32 0, i32 2, i32 0 }, align 4
@.str140 = private unnamed_addr constant [12 x i8] c"init_test:\0A\00", align 1
@.str141 = private unnamed_addr constant [11 x i8] c"sinit1=%d\0A\00", align 1
@.str142 = private unnamed_addr constant [11 x i8] c"sinit2=%d\0A\00", align 1
@.str143 = private unnamed_addr constant [20 x i8] c"sinit3=%d %d %d %d\0A\00", align 1
@.str144 = private unnamed_addr constant [11 x i8] c"sinit6=%d\0A\00", align 1
@.str145 = private unnamed_addr constant [20 x i8] c"sinit7=%d %d %d %d\0A\00", align 1
@.str146 = private unnamed_addr constant [11 x i8] c"sinit8=%s\0A\00", align 1
@.str147 = private unnamed_addr constant [17 x i8] c"sinit9=%d %d %d\0A\00", align 1
@.str148 = private unnamed_addr constant [18 x i8] c"sinit10=%d %d %d\0A\00", align 1
@.str149 = private unnamed_addr constant [27 x i8] c"sinit11=%d %d %d %d %d %d\0A\00", align 1
@.str150 = private unnamed_addr constant [21 x i8] c"[%d][%d] = %d %d %d\0A\00", align 1
@.str151 = private unnamed_addr constant [11 x i8] c"linit1=%d\0A\00", align 1
@.str152 = private unnamed_addr constant [11 x i8] c"linit2=%d\0A\00", align 1
@.str153 = private unnamed_addr constant [11 x i8] c"linit6=%d\0A\00", align 1
@.str154 = private unnamed_addr constant [14 x i8] c"linit8=%d %s\0A\00", align 1
@.str155 = private unnamed_addr constant [12 x i8] c"sinit12=%s\0A\00", align 1
@.str156 = private unnamed_addr constant [21 x i8] c"sinit13=%d %s %s %s\0A\00", align 1
@.str157 = private unnamed_addr constant [12 x i8] c"sinit14=%s\0A\00", align 1
@.str158 = private unnamed_addr constant [12 x i8] c"linit17=%d\0A\00", align 1
@.str159 = private unnamed_addr constant [12 x i8] c"sinit15=%d\0A\00", align 1
@.str160 = private unnamed_addr constant [15 x i8] c"sinit16=%d %d\0A\00", align 1
@.str161 = private unnamed_addr constant [21 x i8] c"sinit17=%s %d %s %d\0A\00", align 1
@.str162 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str163 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str164 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str165 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str166 = private unnamed_addr constant [12 x i8] c"bool_test:\0A\00", align 1
@.str167 = private unnamed_addr constant [20 x i8] c"sizeof(_Bool) = %d\0A\00", align 1
@.str168 = private unnamed_addr constant [16 x i8] c"cast: %d %d %d\0A\00", align 1
@.str169 = private unnamed_addr constant [8 x i8] c"b = %d\0A\00", align 1
@.str170 = private unnamed_addr constant [15 x i8] c"bitfield_test:\00", align 1
@.str171 = private unnamed_addr constant [18 x i8] c"sizeof(st1) = %d\0A\00", align 1
@.str172 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@.str173 = private unnamed_addr constant [14 x i8] c"st1.f1 == -1\0A\00", align 1
@.str174 = private unnamed_addr constant [14 x i8] c"st1.f1 != -1\0A\00", align 1
@.str175 = private unnamed_addr constant [14 x i8] c"st1.f2 == -1\0A\00", align 1
@.str176 = private unnamed_addr constant [14 x i8] c"st1.f2 != -1\0A\00", align 1
@.str177 = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1
@.str178 = private unnamed_addr constant [22 x i8] c"%f %f %f %f %f %f %f\0A\00", align 1
@.str179 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str180 = private unnamed_addr constant [17 x i8] c"ftof: %f %f %Lf\0A\00", align 1
@.str181 = private unnamed_addr constant [13 x i8] c"ftoi: %d %u\0A\00", align 1
@.str182 = private unnamed_addr constant [10 x i8] c"itof: %f\0A\00", align 1
@.str183 = private unnamed_addr constant [10 x i8] c"utof: %f\0A\00", align 1
@.str184 = private unnamed_addr constant [14 x i8] c"testing '%s'\0A\00", align 1
@.str185 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str186 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str187 = private unnamed_addr constant [29 x i8] c"%Lf %Lf %Lf %Lf %Lf %Lf %Lf\0A\00", align 1
@.str188 = private unnamed_addr constant [5 x i8] c"%Lf\0A\00", align 1
@.str189 = private unnamed_addr constant [11 x i8] c"itof: %Lf\0A\00", align 1
@.str190 = private unnamed_addr constant [11 x i8] c"utof: %Lf\0A\00", align 1
@.str191 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@ftab1 = global [3 x double] [double 1.200000e+00, double 3.400000e+00, double -5.600000e+00], align 8
@.str192 = private unnamed_addr constant [13 x i8] c"float_test:\0A\00", align 1
@.str193 = private unnamed_addr constant [20 x i8] c"sizeof(float) = %d\0A\00", align 1
@.str194 = private unnamed_addr constant [21 x i8] c"sizeof(double) = %d\0A\00", align 1
@.str195 = private unnamed_addr constant [26 x i8] c"sizeof(long double) = %d\0A\00", align 1
@.str196 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str197 = private unnamed_addr constant [7 x i8] c"da=%f\0A\00", align 1
@.str198 = private unnamed_addr constant [7 x i8] c"fa=%f\0A\00", align 1
@.str199 = private unnamed_addr constant [9 x i8] c"da = %f\0A\00", align 1
@.str200 = private unnamed_addr constant [9 x i8] c"db = %f\0A\00", align 1
@.str201 = private unnamed_addr constant [10 x i8] c"funcptr:\0A\00", align 1
@.str202 = private unnamed_addr constant [14 x i8] c"sizeof1 = %d\0A\00", align 1
@.str203 = private unnamed_addr constant [14 x i8] c"sizeof2 = %d\0A\00", align 1
@.str204 = private unnamed_addr constant [14 x i8] c"sizeof3 = %d\0A\00", align 1
@.str205 = private unnamed_addr constant [14 x i8] c"sizeof4 = %d\0A\00", align 1
@.str206 = private unnamed_addr constant [20 x i8] c"arith: %Ld %Ld %Ld\0A\00", align 1
@.str207 = private unnamed_addr constant [17 x i8] c"arith1: %Ld %Ld\0A\00", align 1
@.str208 = private unnamed_addr constant [18 x i8] c"bin: %Ld %Ld %Ld\0A\00", align 1
@.str209 = private unnamed_addr constant [25 x i8] c"test: %d %d %d %d %d %d\0A\00", align 1
@.str210 = private unnamed_addr constant [26 x i8] c"utest: %d %d %d %d %d %d\0A\00", align 1
@.str211 = private unnamed_addr constant [17 x i8] c"arith2: %Ld %Ld\0A\00", align 1
@.str212 = private unnamed_addr constant [20 x i8] c"shift: %Ld %Ld %Ld\0A\00", align 1
@.str213 = private unnamed_addr constant [21 x i8] c"shiftc: %Ld %Ld %Ld\0A\00", align 1
@.str214 = private unnamed_addr constant [16 x i8] c"la=%Ld ula=%Lu\0A\00", align 1
@.str215 = private unnamed_addr constant [18 x i8] c"lltof: %f %f %Lf\0A\00", align 1
@.str216 = private unnamed_addr constant [20 x i8] c"ftoll: %Ld %Ld %Ld\0A\00", align 1
@.str217 = private unnamed_addr constant [19 x i8] c"ulltof: %f %f %Lf\0A\00", align 1
@.str218 = private unnamed_addr constant [21 x i8] c"ftoull: %Lu %Lu %Lu\0A\00", align 1
@.str219 = private unnamed_addr constant [16 x i8] c"longlong_test:\0A\00", align 1
@.str220 = private unnamed_addr constant [24 x i8] c"sizeof(long long) = %d\0A\00", align 1
@.str221 = private unnamed_addr constant [9 x i8] c"%Ld %Ld\0A\00", align 1
@.str222 = private unnamed_addr constant [17 x i8] c"%Ld %Ld %Ld %Lx\0A\00", align 1
@.str223 = private unnamed_addr constant [5 x i8] c"%Ld\0A\00", align 1
@.str224 = private unnamed_addr constant [5 x i8] c"%Lx\0A\00", align 1
@.str225 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str226 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str227 = private unnamed_addr constant [4 x i8] c"%Ld\00", align 1
@.str228 = private unnamed_addr constant [10 x i8] c"%f %d %f\0A\00", align 1
@.str229 = private unnamed_addr constant [13 x i8] c"%l %l %d %f\0A\00", align 1
@.str230 = private unnamed_addr constant [12 x i8] c"whitspace:\0A\00", align 1
@reltab = global [3 x i32] [i32 1, i32 2, i32 3], align 4
@rel1 = global i32* bitcast (i8* getelementptr (i8* bitcast ([3 x i32]* @reltab to i8*), i64 4) to i32*), align 4
@rel2 = global i32* bitcast (i8* getelementptr (i8* bitcast ([3 x i32]* @reltab to i8*), i64 8) to i32*), align 4
@.str231 = private unnamed_addr constant [10 x i8] c"*rel1=%d\0A\00", align 1
@.str232 = private unnamed_addr constant [10 x i8] c"*rel2=%d\0A\00", align 1
@.str233 = private unnamed_addr constant [16 x i8] c"a=%d b=%d b=%f\0A\00", align 1
@.str234 = private unnamed_addr constant [11 x i8] c"cmpfn=%lx\0A\00", align 1
@.str235 = private unnamed_addr constant [18 x i8] c"sizeof(int) = %d\0A\00", align 1
@.str236 = private unnamed_addr constant [27 x i8] c"sizeof(unsigned int) = %d\0A\00", align 1
@.str237 = private unnamed_addr constant [20 x i8] c"sizeof(short) = %d\0A\00", align 1
@.str238 = private unnamed_addr constant [29 x i8] c"sizeof(unsigned short) = %d\0A\00", align 1
@.str239 = private unnamed_addr constant [19 x i8] c"sizeof(char) = %d\0A\00", align 1
@.str240 = private unnamed_addr constant [28 x i8] c"sizeof(unsigned char) = %d\0A\00", align 1
@.str241 = private unnamed_addr constant [19 x i8] c"sizeof(func) = %d\0A\00", align 1
@.str242 = private unnamed_addr constant [18 x i8] c"sizeof(a++) = %d\0A\00", align 1
@.str243 = private unnamed_addr constant [20 x i8] c"sizeof(**ptr) = %d\0A\00", align 1
@.str244 = private unnamed_addr constant [23 x i8] c"__alignof__(int) = %d\0A\00", align 1
@.str245 = private unnamed_addr constant [32 x i8] c"__alignof__(unsigned int) = %d\0A\00", align 1
@.str246 = private unnamed_addr constant [25 x i8] c"__alignof__(short) = %d\0A\00", align 1
@.str247 = private unnamed_addr constant [34 x i8] c"__alignof__(unsigned short) = %d\0A\00", align 1
@.str248 = private unnamed_addr constant [24 x i8] c"__alignof__(char) = %d\0A\00", align 1
@.str249 = private unnamed_addr constant [33 x i8] c"__alignof__(unsigned char) = %d\0A\00", align 1
@.str250 = private unnamed_addr constant [24 x i8] c"__alignof__(func) = %d\0A\00", align 1
@.str251 = private unnamed_addr constant [16 x i8] c"a=%f b=%f c=%f\0A\00", align 1
@.str252 = private unnamed_addr constant [5 x i8] c"aa1\0A\00", align 1
@.str253 = private unnamed_addr constant [5 x i8] c"aa3\0A\00", align 1
@.str254 = private unnamed_addr constant [5 x i8] c"aa2\0A\00", align 1
@.str255 = private unnamed_addr constant [5 x i8] c"bb1\0A\00", align 1
@.str256 = private unnamed_addr constant [5 x i8] c"bb2\0A\00", align 1
@.str257 = private unnamed_addr constant [13 x i8] c"inline asm:\0A\00", align 1
@.str258 = private unnamed_addr constant [12 x i8] c" worldXXXXX\00", align 1
@.str259 = private unnamed_addr constant [13 x i8] c"mul64=0x%Lx\0A\00", align 1
@.str260 = private unnamed_addr constant [13 x i8] c"inc64=0x%Lx\0A\00", align 1
@set = common global i32 0, align 4
@.str261 = private unnamed_addr constant [10 x i8] c"set=0x%x\0A\00", align 1
@.str262 = private unnamed_addr constant [24 x i8] c"swab32(0x%08x) = 0x%0x\0A\00", align 1
@.str263 = private unnamed_addr constant [43 x i8] c"__builtin_types_compatible_p(%s, %s) = %d\0A\00", align 1
@.str264 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str265 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str266 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str267 = private unnamed_addr constant [10 x i8] c"const int\00", align 1
@.str268 = private unnamed_addr constant [13 x i8] c"volatile int\00", align 1
@.str269 = private unnamed_addr constant [6 x i8] c"int *\00", align 1
@.str270 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str271 = private unnamed_addr constant [12 x i8] c"const int *\00", align 1
@.str272 = private unnamed_addr constant [7 x i8] c"char *\00", align 1
@.str273 = private unnamed_addr constant [16 x i8] c"unsigned char *\00", align 1
@.str274 = private unnamed_addr constant [9 x i8] c"char * *\00", align 1
@.str275 = private unnamed_addr constant [10 x i8] c"res = %d\0A\00", align 1
@ssta1 = common global %struct.structa1 zeroinitializer, align 4
@constant_p_var = common global i32 0, align 4

; Function Attrs: nounwind
define i32 @qq(i32 %x) #0 {
  %1 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !301), !dbg !302
  %2 = load i32* %1, align 4, !dbg !303
  %3 = add nsw i32 %2, 40, !dbg !303
  ret i32 %3, !dbg !303
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void @macro_test() #0 {
  %a = alloca i32, align 4
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0)), !dbg !304
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 1236), !dbg !305
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 4), !dbg !306
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 -1), !dbg !307
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !308
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)), !dbg !309
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0)), !dbg !310
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0)), !dbg !311
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0), i32 1), !dbg !312
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str13, i32 0, i32 0)), !dbg !313
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str13, i32 0, i32 0)), !dbg !314
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str14, i32 0, i32 0)), !dbg !315
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str13, i32 0, i32 0)), !dbg !316
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str15, i32 0, i32 0)), !dbg !317
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str16, i32 0, i32 0)), !dbg !318
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str17, i32 0, i32 0)), !dbg !319
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str18, i32 0, i32 0)), !dbg !320
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str19, i32 0, i32 0)), !dbg !321
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str20, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([10 x i8]* @.str21, i32 0, i32 0)), !dbg !322
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str20, i32 0, i32 0), i32 201, i8* getelementptr inbounds ([10 x i8]* @.str21, i32 0, i32 0)), !dbg !323
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str20, i32 0, i32 0), i32 204, i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0)), !dbg !324
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @__func__.macro_test, i32 0, i32 0)), !dbg !325
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str24, i32 0, i32 0), i32 1), !dbg !326
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str25, i32 0, i32 0)), !dbg !327
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0), i32 2), !dbg !328
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str27, i32 0, i32 0), i32 1, i32 2), !dbg !329
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @__func__.macro_test, i32 0, i32 0)), !dbg !330
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str29, i32 0, i32 0), i64 -9223372036854775808), !dbg !331
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !332), !dbg !334
  store i32 1, i32* %a, align 4, !dbg !335
  %29 = load i32* %a, align 4, !dbg !336
  %30 = add nsw i32 %29, 1, !dbg !336
  store i32 %30, i32* %a, align 4, !dbg !336
  %31 = load i32* %a, align 4, !dbg !337
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %31), !dbg !337
  %33 = load i32* %a, align 4, !dbg !338
  %34 = shl i32 %33, 2, !dbg !338
  store i32 %34, i32* %a, align 4, !dbg !338
  %35 = load i32* %a, align 4, !dbg !339
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %35), !dbg !339
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0)), !dbg !340
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str33, i32 0, i32 0)), !dbg !341
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0)), !dbg !342
  %40 = call i32 @qq(i32 2), !dbg !343
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str34, i32 0, i32 0), i32 %40), !dbg !344
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str35, i32 0, i32 0), i32 1), !dbg !345
  ret void, !dbg !346
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define i32 @op(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !347), !dbg !348
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !349), !dbg !350
  %3 = load i32* %1, align 4, !dbg !351
  %4 = load i32* %2, align 4, !dbg !351
  %5 = sdiv i32 %3, %4, !dbg !351
  ret i32 %5, !dbg !351
}

; Function Attrs: nounwind
define i32 @ret(i32 %a) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !352), !dbg !353
  %3 = load i32* %2, align 4, !dbg !354
  %4 = icmp eq i32 %3, 2, !dbg !354
  br i1 %4, label %5, label %6, !dbg !354

; <label>:5                                       ; preds = %0
  store i32 1, i32* %1, !dbg !356
  br label %11, !dbg !356

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !357
  %8 = icmp eq i32 %7, 3, !dbg !357
  br i1 %8, label %9, label %10, !dbg !357

; <label>:9                                       ; preds = %6
  store i32 2, i32* %1, !dbg !359
  br label %11, !dbg !359

; <label>:10                                      ; preds = %6
  store i32 0, i32* %1, !dbg !360
  br label %11, !dbg !360

; <label>:11                                      ; preds = %10, %9, %5
  %12 = load i32* %1, !dbg !361
  ret i32 %12, !dbg !361
}

; Function Attrs: nounwind
define void @ps(i8* %s) #0 {
  %1 = alloca i8*, align 4
  %c = alloca i32, align 4
  store i8* %s, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !362), !dbg !363
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !364), !dbg !365
  br label %2, !dbg !366

; <label>:2                                       ; preds = %9, %0
  %3 = load i8** %1, align 4, !dbg !367
  %4 = load i8* %3, align 1, !dbg !367
  %5 = sext i8 %4 to i32, !dbg !367
  store i32 %5, i32* %c, align 4, !dbg !367
  %6 = load i32* %c, align 4, !dbg !369
  %7 = icmp eq i32 %6, 0, !dbg !369
  br i1 %7, label %8, label %9, !dbg !369

; <label>:8                                       ; preds = %2
  br label %14, !dbg !371

; <label>:9                                       ; preds = %2
  %10 = load i32* %c, align 4, !dbg !372
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i32 %10), !dbg !372
  %12 = load i8** %1, align 4, !dbg !373
  %13 = getelementptr inbounds i8* %12, i32 1, !dbg !373
  store i8* %13, i8** %1, align 4, !dbg !373
  br label %2, !dbg !374

; <label>:14                                      ; preds = %8
  ret void, !dbg !375
}

; Function Attrs: nounwind
define void @string_test() #0 {
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !376), !dbg !377
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0)), !dbg !378
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str38, i32 0, i32 0)), !dbg !379
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0)), !dbg !380
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str40, i32 0, i32 0), i32 114), !dbg !381
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str41, i32 0, i32 0), i32 97, i32 4660, i32 99), !dbg !382
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @foo1_string, i32 0, i32 0)), !dbg !383
  call void @ps(i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0)), !dbg !384
  store i32 32, i32* %b, align 4, !dbg !385
  br label %7, !dbg !386

; <label>:7                                       ; preds = %11, %0
  %8 = load i32* %b, align 4, !dbg !387
  %9 = add nsw i32 %8, 1, !dbg !387
  store i32 %9, i32* %b, align 4, !dbg !387
  %10 = icmp slt i32 %9, 96, !dbg !387
  br i1 %10, label %11, label %14, !dbg !387

; <label>:11                                      ; preds = %7
  %12 = load i32* %b, align 4, !dbg !389
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i32 %12), !dbg !389
  br label %7, !dbg !391

; <label>:14                                      ; preds = %7
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !392
  %16 = call i32 @fib(i32 33), !dbg !393
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str45, i32 0, i32 0), i32 %16), !dbg !394
  store i32 262144, i32* %b, align 4, !dbg !395
  br label %18, !dbg !396

; <label>:18                                      ; preds = %21, %14
  %19 = load i32* %b, align 4, !dbg !397
  %20 = icmp ne i32 %19, -2147483648, !dbg !397
  br i1 %20, label %21, label %25, !dbg !397

; <label>:21                                      ; preds = %18
  %22 = load i32* %b, align 4, !dbg !399
  call void @num(i32 %22), !dbg !399
  %23 = load i32* %b, align 4, !dbg !401
  %24 = mul nsw i32 %23, 2, !dbg !401
  store i32 %24, i32* %b, align 4, !dbg !401
  br label %18, !dbg !402

; <label>:25                                      ; preds = %18
  ret void, !dbg !403
}

; Function Attrs: nounwind
define i32 @fib(i32 %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !404), !dbg !405
  %3 = load i32* %2, align 4, !dbg !406
  %4 = icmp sle i32 %3, 2, !dbg !406
  br i1 %4, label %5, label %6, !dbg !406

; <label>:5                                       ; preds = %0
  store i32 1, i32* %1, !dbg !408
  br label %14, !dbg !408

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !409
  %8 = sub nsw i32 %7, 1, !dbg !409
  %9 = call i32 @fib(i32 %8), !dbg !409
  %10 = load i32* %2, align 4, !dbg !410
  %11 = sub nsw i32 %10, 2, !dbg !410
  %12 = call i32 @fib(i32 %11), !dbg !410
  %13 = add nsw i32 %9, %12, !dbg !410
  store i32 %13, i32* %1, !dbg !410
  br label %14, !dbg !410

; <label>:14                                      ; preds = %6, %5
  %15 = load i32* %1, !dbg !411
  ret i32 %15, !dbg !411
}

; Function Attrs: nounwind
define void @num(i32 %n) #0 {
  %1 = alloca i32, align 4
  %tab = alloca i8*, align 4
  %p = alloca i8*, align 4
  store i32 %n, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !412), !dbg !413
  call void @llvm.dbg.declare(metadata !{i8** %tab}, metadata !414), !dbg !415
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !416), !dbg !417
  store i8* getelementptr inbounds ([20 x i8]* @malloc_20, i32 0, i32 0), i8** %tab, align 4, !dbg !418
  %2 = load i8** %tab, align 4, !dbg !419
  store i8* %2, i8** %p, align 4, !dbg !419
  br label %3, !dbg !420

; <label>:3                                       ; preds = %16, %0
  %4 = load i32* %1, align 4, !dbg !421
  %5 = srem i32 %4, 10, !dbg !421
  %6 = add nsw i32 48, %5, !dbg !421
  %7 = trunc i32 %6 to i8, !dbg !421
  %8 = load i8** %p, align 4, !dbg !421
  store i8 %7, i8* %8, align 1, !dbg !421
  %9 = load i8** %p, align 4, !dbg !423
  %10 = getelementptr inbounds i8* %9, i32 1, !dbg !423
  store i8* %10, i8** %p, align 4, !dbg !423
  %11 = load i32* %1, align 4, !dbg !424
  %12 = sdiv i32 %11, 10, !dbg !424
  store i32 %12, i32* %1, align 4, !dbg !424
  %13 = load i32* %1, align 4, !dbg !425
  %14 = icmp eq i32 %13, 0, !dbg !425
  br i1 %14, label %15, label %16, !dbg !425

; <label>:15                                      ; preds = %3
  br label %17, !dbg !427

; <label>:16                                      ; preds = %3
  br label %3, !dbg !428

; <label>:17                                      ; preds = %15
  br label %18, !dbg !429

; <label>:18                                      ; preds = %22, %17
  %19 = load i8** %p, align 4, !dbg !430
  %20 = load i8** %tab, align 4, !dbg !430
  %21 = icmp ne i8* %19, %20, !dbg !430
  br i1 %21, label %22, label %29, !dbg !430

; <label>:22                                      ; preds = %18
  %23 = load i8** %p, align 4, !dbg !432
  %24 = getelementptr inbounds i8* %23, i32 -1, !dbg !432
  store i8* %24, i8** %p, align 4, !dbg !432
  %25 = load i8** %p, align 4, !dbg !434
  %26 = load i8* %25, align 1, !dbg !434
  %27 = sext i8 %26 to i32, !dbg !434
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i32 %27), !dbg !434
  br label %18, !dbg !435

; <label>:29                                      ; preds = %18
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: nounwind
define void @loop_test() #0 {
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !438), !dbg !439
  store i32 0, i32* %i, align 4, !dbg !440
  br label %1, !dbg !441

; <label>:1                                       ; preds = %4, %0
  %2 = load i32* %i, align 4, !dbg !442
  %3 = icmp slt i32 %2, 10, !dbg !442
  br i1 %3, label %4, label %8, !dbg !442

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4, !dbg !444
  %6 = add nsw i32 %5, 1, !dbg !444
  store i32 %6, i32* %i, align 4, !dbg !444
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %5), !dbg !444
  br label %1, !dbg !444

; <label>:8                                       ; preds = %1
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !445
  store i32 0, i32* %i, align 4, !dbg !446
  br label %10, !dbg !446

; <label>:10                                      ; preds = %16, %8
  %11 = load i32* %i, align 4, !dbg !448
  %12 = icmp slt i32 %11, 10, !dbg !448
  br i1 %12, label %13, label %19, !dbg !448

; <label>:13                                      ; preds = %10
  %14 = load i32* %i, align 4, !dbg !451
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %14), !dbg !451
  br label %16, !dbg !451

; <label>:16                                      ; preds = %13
  %17 = load i32* %i, align 4, !dbg !452
  %18 = add nsw i32 %17, 1, !dbg !452
  store i32 %18, i32* %i, align 4, !dbg !452
  br label %10, !dbg !452

; <label>:19                                      ; preds = %10
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !453
  store i32 0, i32* %i, align 4, !dbg !454
  br label %21, !dbg !455

; <label>:21                                      ; preds = %25, %19
  %22 = load i32* %i, align 4, !dbg !456
  %23 = add nsw i32 %22, 1, !dbg !456
  store i32 %23, i32* %i, align 4, !dbg !456
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %22), !dbg !456
  br label %25, !dbg !458

; <label>:25                                      ; preds = %21
  %26 = load i32* %i, align 4, !dbg !459
  %27 = icmp slt i32 %26, 10, !dbg !459
  br i1 %27, label %21, label %28, !dbg !459

; <label>:28                                      ; preds = %25
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !461
  store i32 0, i32* %i, align 4, !dbg !462
  br label %30, !dbg !463

; <label>:30                                      ; preds = %40, %39, %28
  %31 = load i32* %i, align 4, !dbg !464
  %32 = icmp eq i32 %31, 6, !dbg !464
  br i1 %32, label %33, label %34, !dbg !464

; <label>:33                                      ; preds = %30
  br label %43, !dbg !467

; <label>:34                                      ; preds = %30
  %35 = load i32* %i, align 4, !dbg !468
  %36 = add nsw i32 %35, 1, !dbg !468
  store i32 %36, i32* %i, align 4, !dbg !468
  %37 = load i32* %i, align 4, !dbg !469
  %38 = icmp eq i32 %37, 3, !dbg !469
  br i1 %38, label %39, label %40, !dbg !469

; <label>:39                                      ; preds = %34
  br label %30, !dbg !471

; <label>:40                                      ; preds = %34
  %41 = load i32* %i, align 4, !dbg !472
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %41), !dbg !472
  br label %30, !dbg !473

; <label>:43                                      ; preds = %33
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !474
  store i32 0, i32* %i, align 4, !dbg !475
  br label %45, !dbg !476

; <label>:45                                      ; preds = %58, %43
  %46 = load i32* %i, align 4, !dbg !477
  %47 = icmp eq i32 %46, 6, !dbg !477
  br i1 %47, label %48, label %49, !dbg !477

; <label>:48                                      ; preds = %45
  br label %59, !dbg !480

; <label>:49                                      ; preds = %45
  %50 = load i32* %i, align 4, !dbg !481
  %51 = add nsw i32 %50, 1, !dbg !481
  store i32 %51, i32* %i, align 4, !dbg !481
  %52 = load i32* %i, align 4, !dbg !482
  %53 = icmp eq i32 %52, 3, !dbg !482
  br i1 %53, label %54, label %55, !dbg !482

; <label>:54                                      ; preds = %49
  br label %58, !dbg !484

; <label>:55                                      ; preds = %49
  %56 = load i32* %i, align 4, !dbg !485
  %57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %56), !dbg !485
  br label %58, !dbg !486

; <label>:58                                      ; preds = %55, %54
  br i1 true, label %45, label %59, !dbg !487

; <label>:59                                      ; preds = %58, %48
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !489
  store i32 0, i32* %i, align 4, !dbg !490
  br label %61, !dbg !490

; <label>:61                                      ; preds = %71, %59
  %62 = load i32* %i, align 4, !dbg !492
  %63 = icmp slt i32 %62, 10, !dbg !492
  br i1 %63, label %64, label %74, !dbg !492

; <label>:64                                      ; preds = %61
  %65 = load i32* %i, align 4, !dbg !495
  %66 = icmp eq i32 %65, 3, !dbg !495
  br i1 %66, label %67, label %68, !dbg !495

; <label>:67                                      ; preds = %64
  br label %71, !dbg !498

; <label>:68                                      ; preds = %64
  %69 = load i32* %i, align 4, !dbg !499
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %69), !dbg !499
  br label %71, !dbg !500

; <label>:71                                      ; preds = %68, %67
  %72 = load i32* %i, align 4, !dbg !501
  %73 = add nsw i32 %72, 1, !dbg !501
  store i32 %73, i32* %i, align 4, !dbg !501
  br label %61, !dbg !501

; <label>:74                                      ; preds = %61
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: nounwind
define void @goto_test() #0 {
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !504), !dbg !505
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str47, i32 0, i32 0)), !dbg !506
  store i32 0, i32* %i, align 4, !dbg !507
  br label %2, !dbg !507

; <label>:2                                       ; preds = %6, %0
  %3 = load i32* %i, align 4, !dbg !508
  %4 = icmp sge i32 %3, 10, !dbg !508
  br i1 %4, label %5, label %6, !dbg !508

; <label>:5                                       ; preds = %2
  br label %11, !dbg !510

; <label>:6                                       ; preds = %2
  %7 = load i32* %i, align 4, !dbg !511
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %7), !dbg !511
  %9 = load i32* %i, align 4, !dbg !512
  %10 = add nsw i32 %9, 1, !dbg !512
  store i32 %10, i32* %i, align 4, !dbg !512
  br label %2, !dbg !513

; <label>:11                                      ; preds = %5
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !514
  store i32 0, i32* %i, align 4, !dbg !515
  br label %13, !dbg !515

; <label>:13                                      ; preds = %27, %11
  %14 = load i32* %i, align 4, !dbg !517
  %15 = icmp slt i32 %14, 3, !dbg !517
  br i1 %15, label %16, label %30, !dbg !517

; <label>:16                                      ; preds = %13
  %17 = load i32* %i, align 4, !dbg !520
  %18 = getelementptr inbounds [3 x i8*]* @goto_test.label_table, i32 0, i32 %17, !dbg !520
  %19 = load i8** %18, align 4, !dbg !520
  br label %31, !dbg !520

; <label>:20                                      ; preds = %31
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str48, i32 0, i32 0)), !dbg !522
  br label %26, !dbg !523

; <label>:22                                      ; preds = %31
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str49, i32 0, i32 0)), !dbg !524
  br label %26, !dbg !525

; <label>:24                                      ; preds = %31
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str50, i32 0, i32 0)), !dbg !526
  br label %26, !dbg !526

; <label>:26                                      ; preds = %24, %22, %20
  br label %27, !dbg !527

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !528
  %29 = add nsw i32 %28, 1, !dbg !528
  store i32 %29, i32* %i, align 4, !dbg !528
  br label %13, !dbg !528

; <label>:30                                      ; preds = %13
  ret void, !dbg !529

; <label>:31                                      ; preds = %16
  %32 = phi i8* [ %19, %16 ]
  indirectbr i8* %32, [label %20, label %22, label %24]
}

; Function Attrs: nounwind
define void @enum_test() #0 {
  %b1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %b1}, metadata !530), !dbg !531
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str51, i32 0, i32 0), i32 0, i32 2, i32 4, i32 5, i32 6, i32 1000), !dbg !532
  store i32 1, i32* %b1, align 4, !dbg !533
  %2 = load i32* %b1, align 4, !dbg !534
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str52, i32 0, i32 0), i32 %2), !dbg !534
  ret void, !dbg !535
}

; Function Attrs: nounwind
define void @typedef_test() #0 {
  %a = alloca i32*, align 4
  %mytype2 = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32** %a}, metadata !536), !dbg !538
  call void @llvm.dbg.declare(metadata !{i32* %mytype2}, metadata !539), !dbg !541
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !542), !dbg !543
  store i32* %b, i32** %a, align 4, !dbg !544
  %1 = load i32** %a, align 4, !dbg !545
  store i32 1234, i32* %1, align 4, !dbg !545
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str53, i32 0, i32 0)), !dbg !546
  %3 = load i32** %a, align 4, !dbg !547
  %4 = load i32* %3, align 4, !dbg !547
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %4), !dbg !547
  store i32 2, i32* %mytype2, align 4, !dbg !548
  %6 = load i32* %mytype2, align 4, !dbg !549
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str54, i32 0, i32 0), i32 %6), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: nounwind
define void @forward_test() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str55, i32 0, i32 0)), !dbg !551
  call void @forward_ref(), !dbg !552
  call void @forward_ref(), !dbg !553
  ret void, !dbg !554
}

; Function Attrs: nounwind
define void @forward_ref() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str56, i32 0, i32 0)), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !557), !dbg !558
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !559), !dbg !560
  call void @string_test(), !dbg !561
  call void @expr_test(), !dbg !562
  call void @macro_test(), !dbg !563
  call void @scope_test(), !dbg !564
  call void @forward_test(), !dbg !565
  call void @funcptr_test(), !dbg !566
  call void @loop_test(), !dbg !567
  call void @switch_test(), !dbg !568
  call void @goto_test(), !dbg !569
  call void @enum_test(), !dbg !570
  call void @typedef_test(), !dbg !571
  call void @struct_test(), !dbg !572
  call void bitcast (void (i32*)* @array_test to void (i32)*)(i32 0), !dbg !573
  call void @expr_ptr_test(), !dbg !574
  call void @bool_test(), !dbg !575
  call void @expr2_test(), !dbg !576
  call void @constant_expr_test(), !dbg !577
  call void @expr_cmp_test(), !dbg !578
  call void @char_short_test(), !dbg !579
  call void @init_test(), !dbg !580
  call void @compound_literal_test(), !dbg !581
  %4 = call i32 @kr_test(), !dbg !582
  call void @struct_assign_test(), !dbg !583
  call void @cast_test(), !dbg !584
  call void @bitfield_test(), !dbg !585
  call void @c99_bool_test(), !dbg !586
  call void @float_test(), !dbg !587
  call void @longlong_test(), !dbg !588
  call void @whitespace_test(), !dbg !589
  call void @relocation_test(), !dbg !590
  call void @old_style_function(), !dbg !591
  call void @sizeof_test(), !dbg !592
  call void @typeof_test(), !dbg !593
  call void @statement_expr_test(), !dbg !594
  call void @local_label_test(), !dbg !595
  call void @asm_test(), !dbg !596
  call void @builtin_test(), !dbg !597
  ret i32 0, !dbg !598
}

; Function Attrs: nounwind
define void @init_test() #0 {
  %linit1 = alloca i32, align 4
  %linit2 = alloca i32, align 4
  %linit4 = alloca [3 x [2 x i32]], align 4
  %linit6 = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %linit8 = alloca [11 x i8], align 1
  %linit12 = alloca [10 x i32], align 4
  %linit13 = alloca [10 x i32], align 4
  %linit14 = alloca [10 x i8], align 1
  %linit15 = alloca [10 x i32], align 4
  %linit16 = alloca %struct.linit16, align 4
  %linit17 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %linit1}, metadata !599), !dbg !600
  store i32 2, i32* %linit1, align 4, !dbg !601
  call void @llvm.dbg.declare(metadata !{i32* %linit2}, metadata !602), !dbg !603
  store i32 3, i32* %linit2, align 4, !dbg !604
  call void @llvm.dbg.declare(metadata !{[3 x [2 x i32]]* %linit4}, metadata !605), !dbg !606
  %1 = bitcast [3 x [2 x i32]]* %linit4 to i8*, !dbg !607
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* bitcast ([3 x [2 x i32]]* @init_test.linit4 to i8*), i32 24, i32 4, i1 false), !dbg !607
  call void @llvm.dbg.declare(metadata !{[3 x i32]* %linit6}, metadata !608), !dbg !609
  %2 = bitcast [3 x i32]* %linit6 to i8*, !dbg !610
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2, i8* bitcast ([3 x i32]* @init_test.linit6 to i8*), i32 12, i32 4, i1 false), !dbg !610
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !611), !dbg !612
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !613), !dbg !614
  call void @llvm.dbg.declare(metadata !{[11 x i8]* %linit8}, metadata !615), !dbg !616
  %3 = bitcast [11 x i8]* %linit8 to i8*, !dbg !617
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* getelementptr inbounds ([11 x i8]* @init_test.linit8, i32 0, i32 0), i32 11, i32 1, i1 false), !dbg !617
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %linit12}, metadata !618), !dbg !619
  %4 = bitcast [10 x i32]* %linit12 to i8*, !dbg !620
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 40, i32 4, i1 false), !dbg !620
  %5 = bitcast i8* %4 to [10 x i32]*, !dbg !620
  %6 = getelementptr [10 x i32]* %5, i32 0, i32 0, !dbg !620
  store i32 1, i32* %6, !dbg !620
  %7 = getelementptr [10 x i32]* %5, i32 0, i32 1, !dbg !620
  store i32 2, i32* %7, !dbg !620
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %linit13}, metadata !621), !dbg !622
  %8 = bitcast [10 x i32]* %linit13 to i8*, !dbg !623
  call void @llvm.memset.p0i8.i32(i8* %8, i8 0, i32 40, i32 4, i1 false), !dbg !623
  %9 = bitcast i8* %8 to [10 x i32]*, !dbg !623
  %10 = getelementptr [10 x i32]* %9, i32 0, i32 0, !dbg !623
  store i32 1, i32* %10, !dbg !623
  %11 = getelementptr [10 x i32]* %9, i32 0, i32 1, !dbg !623
  store i32 2, i32* %11, !dbg !623
  %12 = getelementptr [10 x i32]* %9, i32 0, i32 3, !dbg !623
  store i32 4, i32* %12, !dbg !623
  %13 = getelementptr [10 x i32]* %9, i32 0, i32 7, !dbg !623
  store i32 3, i32* %13, !dbg !623
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %linit14}, metadata !624), !dbg !625
  %14 = bitcast [10 x i8]* %linit14 to i8*, !dbg !626
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* getelementptr inbounds ([10 x i8]* @init_test.linit14, i32 0, i32 0), i32 10, i32 1, i1 false), !dbg !626
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %linit15}, metadata !627), !dbg !628
  %15 = getelementptr inbounds [10 x i32]* %linit15, i32 0, i32 0, !dbg !629
  %16 = load i32* %linit1, align 4, !dbg !629
  store i32 %16, i32* %15, !dbg !629
  %17 = getelementptr inbounds i32* %15, i32 1, !dbg !629
  %18 = load i32* %linit1, align 4, !dbg !629
  %19 = add nsw i32 %18, 1, !dbg !629
  store i32 %19, i32* %17, !dbg !629
  %20 = getelementptr inbounds i32* %17, i32 1, !dbg !629
  store i32 0, i32* %20, !dbg !629
  %21 = getelementptr inbounds i32* %20, i32 1, !dbg !629
  store i32 0, i32* %21, !dbg !629
  %22 = getelementptr inbounds i32* %21, i32 1, !dbg !629
  store i32 0, i32* %22, !dbg !629
  %23 = getelementptr inbounds i32* %22, i32 1, !dbg !629
  store i32 0, i32* %23, !dbg !629
  %24 = getelementptr inbounds i32* %23, i32 1, !dbg !629
  %25 = load i32* %linit1, align 4, !dbg !629
  %26 = add nsw i32 %25, 2, !dbg !629
  store i32 %26, i32* %24, !dbg !629
  %27 = getelementptr inbounds i32* %24, i32 1, !dbg !629
  %28 = getelementptr inbounds i32* %15, i32 10, !dbg !629
  br label %29, !dbg !629

; <label>:29                                      ; preds = %29, %0
  %30 = phi i32* [ %27, %0 ], [ %31, %29 ], !dbg !629
  store i32 0, i32* %30, !dbg !630
  %31 = getelementptr inbounds i32* %30, i32 1, !dbg !630
  %32 = icmp eq i32* %31, %28, !dbg !630
  br i1 %32, label %33, label %29, !dbg !630

; <label>:33                                      ; preds = %29
  call void @llvm.dbg.declare(metadata !{%struct.linit16* %linit16}, metadata !633), !dbg !640
  %34 = bitcast %struct.linit16* %linit16 to i8*, !dbg !641
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %34, i8* bitcast (%struct.linit16* @init_test.linit16 to i8*), i32 16, i32 4, i1 false), !dbg !641
  call void @llvm.dbg.declare(metadata !{i32* %linit17}, metadata !642), !dbg !643
  store i32 4, i32* %linit17, align 4, !dbg !644
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str140, i32 0, i32 0)), !dbg !645
  %36 = load i32* @sinit1, align 4, !dbg !646
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str141, i32 0, i32 0), i32 %36), !dbg !646
  %38 = load i32* @sinit2, align 4, !dbg !647
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str142, i32 0, i32 0), i32 %38), !dbg !647
  %40 = load i32* getelementptr inbounds ([3 x i32]* @sinit3, i32 0, i32 0), align 4, !dbg !648
  %41 = load i32* getelementptr inbounds ([3 x i32]* @sinit3, i32 0, i32 1), align 4, !dbg !648
  %42 = load i32* getelementptr inbounds ([3 x i32]* @sinit3, i32 0, i32 2), align 4, !dbg !648
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str143, i32 0, i32 0), i32 12, i32 %40, i32 %41, i32 %42), !dbg !648
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str144, i32 0, i32 0), i32 12), !dbg !649
  %45 = load i32* getelementptr inbounds ([3 x i32]* @sinit7, i32 0, i32 0), align 4, !dbg !650
  %46 = load i32* getelementptr inbounds ([3 x i32]* @sinit7, i32 0, i32 1), align 4, !dbg !650
  %47 = load i32* getelementptr inbounds ([3 x i32]* @sinit7, i32 0, i32 2), align 4, !dbg !650
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str145, i32 0, i32 0), i32 12, i32 %45, i32 %46, i32 %47), !dbg !650
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str146, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @sinit8, i32 0, i32 0)), !dbg !651
  %50 = load i32* getelementptr inbounds (%struct.structinit1* @sinit9, i32 0, i32 0), align 4, !dbg !652
  %51 = load i8* getelementptr inbounds (%struct.structinit1* @sinit9, i32 0, i32 1), align 1, !dbg !652
  %52 = sext i8 %51 to i32, !dbg !652
  %53 = load i16* getelementptr inbounds (%struct.structinit1* @sinit9, i32 0, i32 2), align 2, !dbg !652
  %54 = sext i16 %53 to i32, !dbg !652
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str147, i32 0, i32 0), i32 %50, i32 %52, i32 %54), !dbg !652
  %56 = load i32* getelementptr inbounds (%struct.structinit1* @sinit10, i32 0, i32 0), align 4, !dbg !653
  %57 = load i8* getelementptr inbounds (%struct.structinit1* @sinit10, i32 0, i32 1), align 1, !dbg !653
  %58 = sext i8 %57 to i32, !dbg !653
  %59 = load i16* getelementptr inbounds (%struct.structinit1* @sinit10, i32 0, i32 2), align 2, !dbg !653
  %60 = sext i16 %59 to i32, !dbg !653
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str148, i32 0, i32 0), i32 %56, i32 %58, i32 %60), !dbg !653
  %62 = load i32* getelementptr inbounds (%struct.structinit1* @sinit11, i32 0, i32 0), align 4, !dbg !654
  %63 = load i8* getelementptr inbounds (%struct.structinit1* @sinit11, i32 0, i32 1), align 1, !dbg !654
  %64 = sext i8 %63 to i32, !dbg !654
  %65 = load i16* getelementptr inbounds (%struct.structinit1* @sinit11, i32 0, i32 2), align 2, !dbg !654
  %66 = sext i16 %65 to i32, !dbg !654
  %67 = load i32* getelementptr inbounds (%struct.structinit1* @sinit11, i32 0, i32 3, i32 0), align 4, !dbg !654
  %68 = load i32* getelementptr inbounds (%struct.structinit1* @sinit11, i32 0, i32 3, i32 1), align 4, !dbg !654
  %69 = load i32* getelementptr inbounds (%struct.structinit1* @sinit11, i32 0, i32 3, i32 2), align 4, !dbg !654
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str149, i32 0, i32 0), i32 %62, i32 %64, i32 %66, i32 %67, i32 %68, i32 %69), !dbg !654
  store i32 0, i32* %i, align 4, !dbg !655
  br label %71, !dbg !655

; <label>:71                                      ; preds = %101, %33
  %72 = load i32* %i, align 4, !dbg !657
  %73 = icmp slt i32 %72, 3, !dbg !657
  br i1 %73, label %74, label %104, !dbg !657

; <label>:74                                      ; preds = %71
  store i32 0, i32* %j, align 4, !dbg !660
  br label %75, !dbg !660

; <label>:75                                      ; preds = %97, %74
  %76 = load i32* %j, align 4, !dbg !662
  %77 = icmp slt i32 %76, 2, !dbg !662
  br i1 %77, label %78, label %100, !dbg !662

; <label>:78                                      ; preds = %75
  %79 = load i32* %i, align 4, !dbg !665
  %80 = load i32* %j, align 4, !dbg !665
  %81 = load i32* %j, align 4, !dbg !665
  %82 = load i32* %i, align 4, !dbg !665
  %83 = getelementptr inbounds [3 x [2 x i32]]* @sinit4, i32 0, i32 %82, !dbg !665
  %84 = getelementptr inbounds [2 x i32]* %83, i32 0, i32 %81, !dbg !665
  %85 = load i32* %84, align 4, !dbg !665
  %86 = load i32* %j, align 4, !dbg !665
  %87 = load i32* %i, align 4, !dbg !665
  %88 = getelementptr inbounds [3 x [2 x i32]]* @sinit5, i32 0, i32 %87, !dbg !665
  %89 = getelementptr inbounds [2 x i32]* %88, i32 0, i32 %86, !dbg !665
  %90 = load i32* %89, align 4, !dbg !665
  %91 = load i32* %j, align 4, !dbg !665
  %92 = load i32* %i, align 4, !dbg !665
  %93 = getelementptr inbounds [3 x [2 x i32]]* %linit4, i32 0, i32 %92, !dbg !665
  %94 = getelementptr inbounds [2 x i32]* %93, i32 0, i32 %91, !dbg !665
  %95 = load i32* %94, align 4, !dbg !665
  %96 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str150, i32 0, i32 0), i32 %79, i32 %80, i32 %85, i32 %90, i32 %95), !dbg !665
  br label %97, !dbg !665

; <label>:97                                      ; preds = %78
  %98 = load i32* %j, align 4, !dbg !666
  %99 = add nsw i32 %98, 1, !dbg !666
  store i32 %99, i32* %j, align 4, !dbg !666
  br label %75, !dbg !666

; <label>:100                                     ; preds = %75
  br label %101, !dbg !667

; <label>:101                                     ; preds = %100
  %102 = load i32* %i, align 4, !dbg !668
  %103 = add nsw i32 %102, 1, !dbg !668
  store i32 %103, i32* %i, align 4, !dbg !668
  br label %71, !dbg !668

; <label>:104                                     ; preds = %71
  %105 = load i32* %linit1, align 4, !dbg !669
  %106 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str151, i32 0, i32 0), i32 %105), !dbg !669
  %107 = load i32* %linit2, align 4, !dbg !670
  %108 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str152, i32 0, i32 0), i32 %107), !dbg !670
  %109 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str153, i32 0, i32 0), i32 12), !dbg !671
  %110 = getelementptr inbounds [11 x i8]* %linit8, i32 0, i32 0, !dbg !672
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str154, i32 0, i32 0), i32 11, i8* %110), !dbg !672
  %112 = load i8** @sinit12, align 4, !dbg !673
  %113 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str155, i32 0, i32 0), i8* %112), !dbg !673
  %114 = load i8** getelementptr inbounds ([3 x i8*]* @sinit13, i32 0, i32 0), align 4, !dbg !674
  %115 = load i8** getelementptr inbounds ([3 x i8*]* @sinit13, i32 0, i32 1), align 4, !dbg !674
  %116 = load i8** getelementptr inbounds ([3 x i8*]* @sinit13, i32 0, i32 2), align 4, !dbg !674
  %117 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str156, i32 0, i32 0), i32 12, i8* %114, i8* %115, i8* %116), !dbg !674
  %118 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str157, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @sinit14, i32 0, i32 0)), !dbg !675
  store i32 0, i32* %i, align 4, !dbg !676
  br label %119, !dbg !676

; <label>:119                                     ; preds = %127, %104
  %120 = load i32* %i, align 4, !dbg !678
  %121 = icmp slt i32 %120, 10, !dbg !678
  br i1 %121, label %122, label %130, !dbg !678

; <label>:122                                     ; preds = %119
  %123 = load i32* %i, align 4, !dbg !681
  %124 = getelementptr inbounds [10 x i32]* %linit12, i32 0, i32 %123, !dbg !681
  %125 = load i32* %124, align 4, !dbg !681
  %126 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i32 %125), !dbg !681
  br label %127, !dbg !681

; <label>:127                                     ; preds = %122
  %128 = load i32* %i, align 4, !dbg !683
  %129 = add nsw i32 %128, 1, !dbg !683
  store i32 %129, i32* %i, align 4, !dbg !683
  br label %119, !dbg !683

; <label>:130                                     ; preds = %119
  %131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !685
  store i32 0, i32* %i, align 4, !dbg !686
  br label %132, !dbg !686

; <label>:132                                     ; preds = %140, %130
  %133 = load i32* %i, align 4, !dbg !688
  %134 = icmp slt i32 %133, 10, !dbg !688
  br i1 %134, label %135, label %143, !dbg !688

; <label>:135                                     ; preds = %132
  %136 = load i32* %i, align 4, !dbg !691
  %137 = getelementptr inbounds [10 x i32]* %linit13, i32 0, i32 %136, !dbg !691
  %138 = load i32* %137, align 4, !dbg !691
  %139 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i32 %138), !dbg !691
  br label %140, !dbg !691

; <label>:140                                     ; preds = %135
  %141 = load i32* %i, align 4, !dbg !693
  %142 = add nsw i32 %141, 1, !dbg !693
  store i32 %142, i32* %i, align 4, !dbg !693
  br label %132, !dbg !693

; <label>:143                                     ; preds = %132
  %144 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !695
  store i32 0, i32* %i, align 4, !dbg !696
  br label %145, !dbg !696

; <label>:145                                     ; preds = %154, %143
  %146 = load i32* %i, align 4, !dbg !698
  %147 = icmp slt i32 %146, 10, !dbg !698
  br i1 %147, label %148, label %157, !dbg !698

; <label>:148                                     ; preds = %145
  %149 = load i32* %i, align 4, !dbg !701
  %150 = getelementptr inbounds [10 x i8]* %linit14, i32 0, i32 %149, !dbg !701
  %151 = load i8* %150, align 1, !dbg !701
  %152 = sext i8 %151 to i32, !dbg !701
  %153 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i32 %152), !dbg !701
  br label %154, !dbg !701

; <label>:154                                     ; preds = %148
  %155 = load i32* %i, align 4, !dbg !703
  %156 = add nsw i32 %155, 1, !dbg !703
  store i32 %156, i32* %i, align 4, !dbg !703
  br label %145, !dbg !703

; <label>:157                                     ; preds = %145
  %158 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !705
  store i32 0, i32* %i, align 4, !dbg !706
  br label %159, !dbg !706

; <label>:159                                     ; preds = %167, %157
  %160 = load i32* %i, align 4, !dbg !708
  %161 = icmp slt i32 %160, 10, !dbg !708
  br i1 %161, label %162, label %170, !dbg !708

; <label>:162                                     ; preds = %159
  %163 = load i32* %i, align 4, !dbg !711
  %164 = getelementptr inbounds [10 x i32]* %linit15, i32 0, i32 %163, !dbg !711
  %165 = load i32* %164, align 4, !dbg !711
  %166 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i32 %165), !dbg !711
  br label %167, !dbg !711

; <label>:167                                     ; preds = %162
  %168 = load i32* %i, align 4, !dbg !713
  %169 = add nsw i32 %168, 1, !dbg !713
  store i32 %169, i32* %i, align 4, !dbg !713
  br label %159, !dbg !713

; <label>:170                                     ; preds = %159
  %171 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !715
  %172 = getelementptr inbounds %struct.linit16* %linit16, i32 0, i32 0, !dbg !716
  %173 = load i32* %172, align 4, !dbg !716
  %174 = getelementptr inbounds %struct.linit16* %linit16, i32 0, i32 1, !dbg !716
  %175 = load i32* %174, align 4, !dbg !716
  %176 = getelementptr inbounds %struct.linit16* %linit16, i32 0, i32 2, !dbg !716
  %177 = load i32* %176, align 4, !dbg !716
  %178 = getelementptr inbounds %struct.linit16* %linit16, i32 0, i32 3, !dbg !716
  %179 = load i32* %178, align 4, !dbg !716
  %180 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str72, i32 0, i32 0), i32 %173, i32 %175, i32 %177, i32 %179), !dbg !716
  %181 = load i32* %linit17, align 4, !dbg !717
  %182 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str158, i32 0, i32 0), i32 %181), !dbg !717
  %183 = load i32* getelementptr inbounds ([3 x i32]* @sinit15, i32 0, i32 0), align 4, !dbg !718
  %184 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str159, i32 0, i32 0), i32 %183), !dbg !718
  %185 = load i32* getelementptr inbounds ([2 x %struct.anon]* @sinit16, i32 0, i32 0, i32 0, i32 0), align 4, !dbg !719
  %186 = load i32* getelementptr inbounds ([2 x %struct.anon]* @sinit16, i32 0, i32 1, i32 0, i32 0), align 4, !dbg !719
  %187 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str160, i32 0, i32 0), i32 %185, i32 %186), !dbg !719
  %188 = load i8** getelementptr inbounds ([2 x %struct.bar]* @sinit17, i32 0, i32 0, i32 0), align 4, !dbg !720
  %189 = load i32* getelementptr inbounds ([2 x %struct.bar]* @sinit17, i32 0, i32 0, i32 1), align 4, !dbg !720
  %190 = load i8** getelementptr inbounds ([2 x %struct.bar]* @sinit17, i32 0, i32 1, i32 0), align 4, !dbg !720
  %191 = load i32* getelementptr inbounds ([2 x %struct.bar]* @sinit17, i32 0, i32 1, i32 1), align 4, !dbg !720
  %192 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str161, i32 0, i32 0), i8* %188, i32 %189, i8* %190, i32 %191), !dbg !720
  store i32 0, i32* %i, align 4, !dbg !721
  br label %193, !dbg !721

; <label>:193                                     ; preds = %201, %170
  %194 = load i32* %i, align 4, !dbg !723
  %195 = icmp slt i32 %194, 10, !dbg !723
  br i1 %195, label %196, label %204, !dbg !723

; <label>:196                                     ; preds = %193
  %197 = load i32* %i, align 4, !dbg !726
  %198 = getelementptr inbounds [10 x i32]* @sinit18, i32 0, i32 %197, !dbg !726
  %199 = load i32* %198, align 4, !dbg !726
  %200 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str162, i32 0, i32 0), i32 %199), !dbg !726
  br label %201, !dbg !726

; <label>:201                                     ; preds = %196
  %202 = load i32* %i, align 4, !dbg !727
  %203 = add nsw i32 %202, 1, !dbg !727
  store i32 %203, i32* %i, align 4, !dbg !727
  br label %193, !dbg !727

; <label>:204                                     ; preds = %193
  %205 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !728
  ret void, !dbg !729
}

; Function Attrs: nounwind
define void @compound_literal_test() #0 {
  %p = alloca i32*, align 4
  %i = alloca i32, align 4
  %q = alloca i8*, align 4
  %q3 = alloca i8*, align 4
  %1 = alloca [3 x i32], align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca [9 x i8], align 1
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  call void @llvm.dbg.declare(metadata !{i32** %p}, metadata !730), !dbg !731
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !732), !dbg !733
  call void @llvm.dbg.declare(metadata !{i8** %q}, metadata !734), !dbg !735
  call void @llvm.dbg.declare(metadata !{i8** %q3}, metadata !736), !dbg !737
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str114, i32 0, i32 0)), !dbg !738
  %8 = getelementptr inbounds [3 x i32]* %1, i32 0, i32 0, !dbg !739
  store i32 1, i32* %8, !dbg !739
  %9 = getelementptr inbounds i32* %8, i32 1, !dbg !739
  store i32 2, i32* %9, !dbg !739
  %10 = getelementptr inbounds i32* %9, i32 1, !dbg !739
  store i32 3, i32* %10, !dbg !739
  %11 = getelementptr inbounds [3 x i32]* %1, i32 0, i32 0, !dbg !739
  store i32* %11, i32** %p, align 4, !dbg !739
  store i32 0, i32* %i, align 4, !dbg !740
  br label %12, !dbg !740

; <label>:12                                      ; preds = %21, %0
  %13 = load i32* %i, align 4, !dbg !742
  %14 = icmp slt i32 %13, 3, !dbg !742
  br i1 %14, label %15, label %24, !dbg !742

; <label>:15                                      ; preds = %12
  %16 = load i32* %i, align 4, !dbg !745
  %17 = load i32** %p, align 4, !dbg !745
  %18 = getelementptr inbounds i32* %17, i32 %16, !dbg !745
  %19 = load i32* %18, align 4, !dbg !745
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i32 %19), !dbg !745
  br label %21, !dbg !745

; <label>:21                                      ; preds = %15
  %22 = load i32* %i, align 4, !dbg !746
  %23 = add nsw i32 %22, 1, !dbg !746
  store i32 %23, i32* %i, align 4, !dbg !746
  br label %12, !dbg !746

; <label>:24                                      ; preds = %12
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !747
  store i32 0, i32* %i, align 4, !dbg !748
  br label %26, !dbg !748

; <label>:26                                      ; preds = %35, %24
  %27 = load i32* %i, align 4, !dbg !750
  %28 = icmp slt i32 %27, 3, !dbg !750
  br i1 %28, label %29, label %38, !dbg !750

; <label>:29                                      ; preds = %26
  %30 = load i32* %i, align 4, !dbg !753
  %31 = load i32** @cinit2, align 4, !dbg !753
  %32 = getelementptr inbounds i32* %31, i32 %30, !dbg !753
  %33 = load i32* %32, align 4, !dbg !753
  %34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %33), !dbg !753
  br label %35, !dbg !753

; <label>:35                                      ; preds = %29
  %36 = load i32* %i, align 4, !dbg !754
  %37 = add nsw i32 %36, 1, !dbg !754
  store i32 %37, i32* %i, align 4, !dbg !754
  br label %26, !dbg !754

; <label>:38                                      ; preds = %26
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !755
  store i8* getelementptr inbounds ([9 x i8]* @.str116, i32 0, i32 0), i8** %q, align 4, !dbg !756
  %40 = load i8** %q, align 4, !dbg !757
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str117, i32 0, i32 0), i8* %40), !dbg !757
  store i8* getelementptr inbounds ([9 x i8]* @.str118, i32 0, i32 0), i8** %2, !dbg !758
  %42 = load i8** %2, !dbg !758
  store i8* %42, i8** %q, align 4, !dbg !758
  %43 = load i8** %q, align 4, !dbg !759
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str119, i32 0, i32 0), i8* %43), !dbg !759
  %45 = load i8** %q, align 4, !dbg !760
  store i8* %45, i8** %3, !dbg !760
  %46 = load i8** %3, !dbg !760
  store i8* %46, i8** %q3, align 4, !dbg !760
  %47 = load i8** %q3, align 4, !dbg !761
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str120, i32 0, i32 0), i8* %47), !dbg !761
  %49 = bitcast [9 x i8]* %4 to i8*, !dbg !762
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* getelementptr inbounds ([9 x i8]* @.str121, i32 0, i32 0), i32 9, i32 1, i1 false), !dbg !762
  %50 = getelementptr inbounds [9 x i8]* %4, i32 0, i32 0, !dbg !762
  store i8* %50, i8** %q, align 4, !dbg !762
  %51 = load i8** %q, align 4, !dbg !763
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str122, i32 0, i32 0), i8* %51), !dbg !763
  %53 = getelementptr inbounds [3 x i32]* %5, i32 0, i32 0, !dbg !764
  store i32 1, i32* %53, !dbg !764
  %54 = getelementptr inbounds i32* %53, i32 1, !dbg !764
  store i32 2, i32* %54, !dbg !764
  %55 = getelementptr inbounds i32* %54, i32 1, !dbg !764
  %56 = load i32* @cinit1, align 4, !dbg !764
  %57 = add nsw i32 %56, 3, !dbg !764
  store i32 %57, i32* %55, !dbg !764
  %58 = getelementptr inbounds [3 x i32]* %5, i32 0, i32 0, !dbg !764
  store i32* %58, i32** %p, align 4, !dbg !764
  store i32 0, i32* %i, align 4, !dbg !765
  br label %59, !dbg !765

; <label>:59                                      ; preds = %68, %38
  %60 = load i32* %i, align 4, !dbg !767
  %61 = icmp slt i32 %60, 3, !dbg !767
  br i1 %61, label %62, label %71, !dbg !767

; <label>:62                                      ; preds = %59
  %63 = load i32* %i, align 4, !dbg !770
  %64 = load i32** %p, align 4, !dbg !770
  %65 = getelementptr inbounds i32* %64, i32 %63, !dbg !770
  %66 = load i32* %65, align 4, !dbg !770
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str115, i32 0, i32 0), i32 %66), !dbg !770
  br label %68, !dbg !770

; <label>:68                                      ; preds = %62
  %69 = load i32* %i, align 4, !dbg !771
  %70 = add nsw i32 %69, 1, !dbg !771
  store i32 %70, i32* %i, align 4, !dbg !771
  br label %59, !dbg !771

; <label>:71                                      ; preds = %59
  %72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !772
  store i32 0, i32* %i, align 4, !dbg !773
  br label %73, !dbg !773

; <label>:73                                      ; preds = %93, %71
  %74 = load i32* %i, align 4, !dbg !775
  %75 = icmp slt i32 %74, 3, !dbg !775
  br i1 %75, label %76, label %96, !dbg !775

; <label>:76                                      ; preds = %73
  %77 = getelementptr inbounds [3 x i32]* %6, i32 0, i32 0, !dbg !778
  store i32 1, i32* %77, !dbg !778
  %78 = getelementptr inbounds i32* %77, i32 1, !dbg !778
  store i32 2, i32* %78, !dbg !778
  %79 = getelementptr inbounds i32* %78, i32 1, !dbg !778
  %80 = load i32* %i, align 4, !dbg !778
  %81 = add nsw i32 4, %80, !dbg !778
  store i32 %81, i32* %79, !dbg !778
  %82 = getelementptr inbounds [3 x i32]* %6, i32 0, i32 0, !dbg !778
  store i32* %82, i32** %p, align 4, !dbg !778
  %83 = load i32** %p, align 4, !dbg !780
  %84 = getelementptr inbounds i32* %83, i32 0, !dbg !780
  %85 = load i32* %84, align 4, !dbg !780
  %86 = load i32** %p, align 4, !dbg !780
  %87 = getelementptr inbounds i32* %86, i32 1, !dbg !780
  %88 = load i32* %87, align 4, !dbg !780
  %89 = load i32** %p, align 4, !dbg !780
  %90 = getelementptr inbounds i32* %89, i32 2, !dbg !780
  %91 = load i32* %90, align 4, !dbg !780
  %92 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str69, i32 0, i32 0), i32 %85, i32 %88, i32 %91), !dbg !780
  br label %93, !dbg !781

; <label>:93                                      ; preds = %76
  %94 = load i32* %i, align 4, !dbg !782
  %95 = add nsw i32 %94, 1, !dbg !782
  store i32 %95, i32* %i, align 4, !dbg !782
  br label %73, !dbg !782

; <label>:96                                      ; preds = %73
  ret void, !dbg !783
}

; Function Attrs: nounwind
define void @struct_assign_test() #0 {
  %lsta1 = alloca %struct.structa1, align 4
  %lsta2 = alloca %struct.structa1, align 4
  %1 = alloca %struct.structa1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.structa1* %lsta1}, metadata !784), !dbg !785
  call void @llvm.dbg.declare(metadata !{%struct.structa1* %lsta2}, metadata !786), !dbg !787
  %2 = getelementptr inbounds %struct.structa1* %lsta2, i32 0, i32 0, !dbg !788
  store i32 1, i32* %2, align 4, !dbg !788
  %3 = getelementptr inbounds %struct.structa1* %lsta2, i32 0, i32 1, !dbg !790
  store i8 2, i8* %3, align 1, !dbg !790
  call void @struct_assign_test1(%struct.structa1* byval align 4 %lsta2, i32 3), !dbg !791
  %4 = getelementptr inbounds %struct.structa1* %lsta2, i32 0, i32 0, !dbg !792
  %5 = load i32* %4, align 4, !dbg !792
  %6 = getelementptr inbounds %struct.structa1* %lsta2, i32 0, i32 1, !dbg !792
  %7 = load i8* %6, align 1, !dbg !792
  %8 = sext i8 %7 to i32, !dbg !792
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str126, i32 0, i32 0), i32 %5, i32 %8), !dbg !792
  call void @struct_assign_test2(%struct.structa1* sret %1, %struct.structa1* byval align 4 %lsta2, i32 4), !dbg !793
  %10 = bitcast %struct.structa1* %lsta2 to i8*, !dbg !793
  %11 = bitcast %struct.structa1* %1 to i8*, !dbg !793
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 8, i32 4, i1 false), !dbg !793
  %12 = getelementptr inbounds %struct.structa1* %lsta2, i32 0, i32 0, !dbg !794
  %13 = load i32* %12, align 4, !dbg !794
  %14 = getelementptr inbounds %struct.structa1* %lsta2, i32 0, i32 1, !dbg !794
  %15 = load i8* %14, align 1, !dbg !794
  %16 = sext i8 %15 to i32, !dbg !794
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str127, i32 0, i32 0), i32 %13, i32 %16), !dbg !794
  ret void, !dbg !795
}

; Function Attrs: nounwind
define void @cast_test() #0 {
  %a = alloca i32, align 4
  %c = alloca i8, align 1
  %tab = alloca [10 x i8], align 1
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %s = alloca i16, align 2
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !796), !dbg !797
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !798), !dbg !799
  call void @llvm.dbg.declare(metadata !{[10 x i8]* %tab}, metadata !800), !dbg !801
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !802), !dbg !803
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !804), !dbg !805
  call void @llvm.dbg.declare(metadata !{i16* %s}, metadata !806), !dbg !807
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str128, i32 0, i32 0)), !dbg !808
  store i32 1048575, i32* %a, align 4, !dbg !809
  %2 = load i32* %a, align 4, !dbg !810
  %3 = trunc i32 %2 to i8, !dbg !810
  %4 = load i32* %a, align 4, !dbg !810
  %5 = trunc i32 %4 to i16, !dbg !810
  %6 = load i32* %a, align 4, !dbg !810
  %7 = trunc i32 %6 to i8, !dbg !810
  %8 = load i32* %a, align 4, !dbg !810
  %9 = trunc i32 %8 to i16, !dbg !810
  call void @cast1(i8 signext %3, i16 signext %5, i8 zeroext %7, i16 zeroext %9), !dbg !810
  store i32 1048574, i32* %a, align 4, !dbg !811
  %10 = load i32* %a, align 4, !dbg !812
  %11 = add nsw i32 %10, 1, !dbg !812
  %12 = trunc i32 %11 to i8, !dbg !812
  %13 = sext i8 %12 to i32, !dbg !812
  %14 = load i32* %a, align 4, !dbg !812
  %15 = add nsw i32 %14, 1, !dbg !812
  %16 = trunc i32 %15 to i16, !dbg !812
  %17 = sext i16 %16 to i32, !dbg !812
  %18 = load i32* %a, align 4, !dbg !812
  %19 = add nsw i32 %18, 1, !dbg !812
  %20 = trunc i32 %19 to i8, !dbg !812
  %21 = zext i8 %20 to i32, !dbg !812
  %22 = load i32* %a, align 4, !dbg !812
  %23 = add nsw i32 %22, 1, !dbg !812
  %24 = trunc i32 %23 to i16, !dbg !812
  %25 = zext i16 %24 to i32, !dbg !812
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str72, i32 0, i32 0), i32 %13, i32 %17, i32 %21, i32 %25), !dbg !812
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str72, i32 0, i32 0), i32 -1, i32 -1, i32 255, i32 65535), !dbg !813
  store i8 -128, i8* @bcast, align 1, !dbg !814
  store i32 -127, i32* %a, align 4, !dbg !814
  %28 = load i32* %a, align 4, !dbg !815
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %28), !dbg !815
  store i16 0, i16* @scast, align 2, !dbg !816
  store i32 1, i32* %a, align 4, !dbg !816
  %30 = load i32* %a, align 4, !dbg !817
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %30), !dbg !817
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str129, i32 0, i32 0), i32 1, i32 4), !dbg !818
  store i32 61440, i32* %b, align 4, !dbg !819
  %33 = load i32* %b, align 4, !dbg !820
  %34 = trunc i32 %33 to i16, !dbg !820
  %35 = sext i16 %34 to i32, !dbg !820
  store i32 %35, i32* %d, align 4, !dbg !820
  %36 = load i32* %b, align 4, !dbg !821
  %37 = load i32* %d, align 4, !dbg !821
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([36 x i8]* @.str130, i32 0, i32 0), i32 %36, i32 %37), !dbg !821
  store i32 61680, i32* %b, align 4, !dbg !822
  %39 = load i32* %b, align 4, !dbg !823
  %40 = trunc i32 %39 to i8, !dbg !823
  %41 = sext i8 %40 to i32, !dbg !823
  store i32 %41, i32* %d, align 4, !dbg !823
  %42 = load i32* %b, align 4, !dbg !824
  %43 = load i32* %d, align 4, !dbg !824
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([35 x i8]* @.str131, i32 0, i32 0), i32 %42, i32 %43), !dbg !824
  store i8 0, i8* %c, align 1, !dbg !825
  %45 = getelementptr inbounds [10 x i8]* %tab, i32 0, i32 1, !dbg !826
  store i8 2, i8* %45, align 1, !dbg !826
  %46 = load i8* %c, align 1, !dbg !827
  %47 = sext i8 %46 to i32, !dbg !827
  %48 = getelementptr inbounds [10 x i8]* %tab, i32 0, i32 %47, !dbg !827
  store i8 1, i8* %48, align 1, !dbg !827
  %49 = getelementptr inbounds [10 x i8]* %tab, i32 0, i32 0, !dbg !828
  %50 = load i8* %49, align 1, !dbg !828
  %51 = sext i8 %50 to i32, !dbg !828
  %52 = getelementptr inbounds [10 x i8]* %tab, i32 0, i32 1, !dbg !828
  %53 = load i8* %52, align 1, !dbg !828
  %54 = sext i8 %53 to i32, !dbg !828
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str112, i32 0, i32 0), i32 %51, i32 %54), !dbg !828
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str132, i32 0, i32 0), i32 4), !dbg !829
  %57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str133, i32 0, i32 0), i32 4), !dbg !830
  %58 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str134, i32 0, i32 0), i32 4), !dbg !831
  ret void, !dbg !832
}

; Function Attrs: nounwind
define void @bitfield_test() #0 {
  %a = alloca i32, align 4
  %st1 = alloca %struct.sbf1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !833), !dbg !834
  call void @llvm.dbg.declare(metadata !{%struct.sbf1* %st1}, metadata !835), !dbg !843
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str170, i32 0, i32 0)), !dbg !844
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str171, i32 0, i32 0), i32 8), !dbg !845
  %3 = bitcast %struct.sbf1* %st1 to i8*, !dbg !846
  %4 = load i8* %3, align 4, !dbg !846
  %5 = and i8 %4, -8, !dbg !846
  %6 = or i8 %5, 3, !dbg !846
  store i8 %6, i8* %3, align 4, !dbg !846
  %7 = bitcast %struct.sbf1* %st1 to i8*, !dbg !847
  %8 = load i8* %7, align 4, !dbg !847
  %9 = and i8 %8, -33, !dbg !847
  %10 = or i8 %9, 32, !dbg !847
  store i8 %10, i8* %7, align 4, !dbg !847
  %11 = getelementptr inbounds %struct.sbf1* %st1, i32 0, i32 1, !dbg !848
  %12 = bitcast i24* %11 to i32*, !dbg !848
  %13 = load i32* %12, align 4, !dbg !848
  %14 = and i32 %13, -32, !dbg !848
  %15 = or i32 %14, 15, !dbg !848
  store i32 %15, i32* %12, align 4, !dbg !848
  store i32 120, i32* %a, align 4, !dbg !849
  %16 = load i32* %a, align 4, !dbg !850
  %17 = getelementptr inbounds %struct.sbf1* %st1, i32 0, i32 1, !dbg !850
  %18 = bitcast i24* %17 to i32*, !dbg !850
  %19 = load i32* %18, align 4, !dbg !850
  %20 = and i32 %16, 127, !dbg !850
  %21 = shl i32 %20, 5, !dbg !850
  %22 = and i32 %19, -4065, !dbg !850
  %23 = or i32 %22, %21, !dbg !850
  store i32 %23, i32* %18, align 4, !dbg !850
  %24 = shl i32 %20, 25, !dbg !850
  %25 = ashr i32 %24, 25, !dbg !850
  %26 = load i32* %a, align 4, !dbg !851
  %27 = getelementptr inbounds %struct.sbf1* %st1, i32 0, i32 1, !dbg !851
  %28 = bitcast i24* %27 to i32*, !dbg !851
  %29 = load i32* %28, align 4, !dbg !851
  %30 = and i32 %26, 127, !dbg !851
  %31 = shl i32 %30, 12, !dbg !851
  %32 = and i32 %29, -520193, !dbg !851
  %33 = or i32 %32, %31, !dbg !851
  store i32 %33, i32* %28, align 4, !dbg !851
  %34 = getelementptr inbounds %struct.sbf1* %st1, i32 0, i32 1, !dbg !852
  %35 = bitcast i24* %34 to i32*, !dbg !852
  %36 = load i32* %35, align 4, !dbg !852
  %37 = lshr i32 %36, 12, !dbg !852
  %38 = and i32 %37, 127, !dbg !852
  %39 = add i32 %38, 1, !dbg !852
  %40 = load i32* %35, align 4, !dbg !852
  %41 = and i32 %39, 127, !dbg !852
  %42 = shl i32 %41, 12, !dbg !852
  %43 = and i32 %40, -520193, !dbg !852
  %44 = or i32 %43, %42, !dbg !852
  store i32 %44, i32* %35, align 4, !dbg !852
  %45 = bitcast %struct.sbf1* %st1 to i8*, !dbg !853
  %46 = load i8* %45, align 4, !dbg !853
  %47 = shl i8 %46, 5, !dbg !853
  %48 = ashr i8 %47, 5, !dbg !853
  %49 = sext i8 %48 to i32, !dbg !853
  %50 = bitcast %struct.sbf1* %st1 to i8*, !dbg !853
  %51 = load i8* %50, align 4, !dbg !853
  %52 = shl i8 %51, 2, !dbg !853
  %53 = ashr i8 %52, 7, !dbg !853
  %54 = sext i8 %53 to i32, !dbg !853
  %55 = getelementptr inbounds %struct.sbf1* %st1, i32 0, i32 1, !dbg !853
  %56 = bitcast i24* %55 to i32*, !dbg !853
  %57 = load i32* %56, align 4, !dbg !853
  %58 = shl i32 %57, 27, !dbg !853
  %59 = ashr i32 %58, 27, !dbg !853
  %60 = getelementptr inbounds %struct.sbf1* %st1, i32 0, i32 1, !dbg !853
  %61 = bitcast i24* %60 to i32*, !dbg !853
  %62 = load i32* %61, align 4, !dbg !853
  %63 = shl i32 %62, 20, !dbg !853
  %64 = ashr i32 %63, 25, !dbg !853
  %65 = getelementptr inbounds %struct.sbf1* %st1, i32 0, i32 1, !dbg !853
  %66 = bitcast i24* %65 to i32*, !dbg !853
  %67 = load i32* %66, align 4, !dbg !853
  %68 = lshr i32 %67, 12, !dbg !853
  %69 = and i32 %68, 127, !dbg !853
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str172, i32 0, i32 0), i32 %49, i32 %54, i32 %59, i32 %64, i32 %69), !dbg !853
  %71 = bitcast %struct.sbf1* %st1 to i8*, !dbg !854
  %72 = load i8* %71, align 4, !dbg !854
  %73 = and i8 %72, -8, !dbg !854
  %74 = or i8 %73, 7, !dbg !854
  store i8 %74, i8* %71, align 4, !dbg !854
  %75 = bitcast %struct.sbf1* %st1 to i8*, !dbg !855
  %76 = load i8* %75, align 4, !dbg !855
  %77 = shl i8 %76, 5, !dbg !855
  %78 = ashr i8 %77, 5, !dbg !855
  %79 = sext i8 %78 to i32, !dbg !855
  %80 = icmp eq i32 %79, -1, !dbg !855
  br i1 %80, label %81, label %83, !dbg !855

; <label>:81                                      ; preds = %0
  %82 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str173, i32 0, i32 0)), !dbg !857
  br label %85, !dbg !857

; <label>:83                                      ; preds = %0
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str174, i32 0, i32 0)), !dbg !858
  br label %85

; <label>:85                                      ; preds = %83, %81
  %86 = bitcast %struct.sbf1* %st1 to i8*, !dbg !859
  %87 = load i8* %86, align 4, !dbg !859
  %88 = shl i8 %87, 2, !dbg !859
  %89 = ashr i8 %88, 7, !dbg !859
  %90 = sext i8 %89 to i32, !dbg !859
  %91 = icmp eq i32 %90, -1, !dbg !859
  br i1 %91, label %92, label %94, !dbg !859

; <label>:92                                      ; preds = %85
  %93 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str175, i32 0, i32 0)), !dbg !861
  br label %96, !dbg !861

; <label>:94                                      ; preds = %85
  %95 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str176, i32 0, i32 0)), !dbg !862
  br label %96

; <label>:96                                      ; preds = %94, %92
  ret void, !dbg !863
}

; Function Attrs: nounwind
define void @c99_bool_test() #0 {
  %a = alloca i32, align 4
  %b = alloca i8, align 1
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !864), !dbg !865
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !866), !dbg !868
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str166, i32 0, i32 0)), !dbg !869
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str167, i32 0, i32 0), i32 1), !dbg !870
  store i32 3, i32* %a, align 4, !dbg !871
  %3 = load i32* %a, align 4, !dbg !872
  %4 = icmp ne i32 %3, 0, !dbg !872
  %5 = zext i1 %4 to i32, !dbg !872
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str168, i32 0, i32 0), i32 1, i32 0, i32 %5), !dbg !872
  store i8 1, i8* %b, align 1, !dbg !873
  %7 = load i8* %b, align 1, !dbg !874
  %8 = trunc i8 %7 to i1, !dbg !874
  %9 = zext i1 %8 to i32, !dbg !874
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str169, i32 0, i32 0), i32 %9), !dbg !874
  %11 = load i8* %b, align 1, !dbg !875
  %12 = trunc i8 %11 to i1, !dbg !875
  store i8 1, i8* %b, align 1, !dbg !875
  %13 = load i8* %b, align 1, !dbg !876
  %14 = trunc i8 %13 to i1, !dbg !876
  %15 = zext i1 %14 to i32, !dbg !876
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str169, i32 0, i32 0), i32 %15), !dbg !876
  ret void, !dbg !877
}

; Function Attrs: nounwind
define void @float_test() #0 {
  %fa = alloca float, align 4
  %fb = alloca float, align 4
  %da = alloca double, align 8
  %db = alloca double, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{float* %fa}, metadata !878), !dbg !879
  call void @llvm.dbg.declare(metadata !{float* %fb}, metadata !880), !dbg !881
  call void @llvm.dbg.declare(metadata !{double* %da}, metadata !882), !dbg !883
  call void @llvm.dbg.declare(metadata !{double* %db}, metadata !884), !dbg !885
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !886), !dbg !887
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !888), !dbg !889
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str192, i32 0, i32 0)), !dbg !890
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str193, i32 0, i32 0), i32 4), !dbg !891
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str194, i32 0, i32 0), i32 8), !dbg !892
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str195, i32 0, i32 0), i32 12), !dbg !893
  call void @ftest(), !dbg !894
  call void @dtest(), !dbg !895
  call void @ldtest(), !dbg !896
  %5 = load double* getelementptr inbounds ([3 x double]* @ftab1, i32 0, i32 0), align 4, !dbg !897
  %6 = load double* getelementptr inbounds ([3 x double]* @ftab1, i32 0, i32 1), align 4, !dbg !897
  %7 = load double* getelementptr inbounds ([3 x double]* @ftab1, i32 0, i32 2), align 4, !dbg !897
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str196, i32 0, i32 0), double %5, double %6, double %7), !dbg !897
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str196, i32 0, i32 0), double 2.120000e+00, double 5.000000e-01, double 2.300000e+10), !dbg !898
  store double 1.230000e+02, double* %da, align 8, !dbg !899
  %10 = load double* %da, align 8, !dbg !900
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str197, i32 0, i32 0), double %10), !dbg !900
  store float 1.230000e+02, float* %fa, align 4, !dbg !901
  %12 = load float* %fa, align 4, !dbg !902
  %13 = fpext float %12 to double, !dbg !902
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str198, i32 0, i32 0), double %13), !dbg !902
  store i32 -294967296, i32* %a, align 4, !dbg !903
  %15 = load i32* %a, align 4, !dbg !904
  %16 = sitofp i32 %15 to double, !dbg !904
  store double %16, double* %da, align 8, !dbg !904
  %17 = load double* %da, align 8, !dbg !905
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str199, i32 0, i32 0), double %17), !dbg !905
  store i32 -294967296, i32* %b, align 4, !dbg !906
  %19 = load i32* %b, align 4, !dbg !907
  %20 = uitofp i32 %19 to double, !dbg !907
  store double %20, double* %db, align 8, !dbg !907
  %21 = load double* %db, align 8, !dbg !908
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str200, i32 0, i32 0), double %21), !dbg !908
  ret void, !dbg !909
}

; Function Attrs: nounwind
define void @longlong_test() #0 {
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %ia = alloca i32, align 4
  %ua = alloca i32, align 4
  %a1 = alloca %struct.S, align 4
  %p = alloca i64*, align 4
  %v = alloca i64, align 8
  call void @llvm.dbg.declare(metadata !{i64* %a}, metadata !910), !dbg !911
  call void @llvm.dbg.declare(metadata !{i64* %b}, metadata !912), !dbg !913
  call void @llvm.dbg.declare(metadata !{i64* %c}, metadata !914), !dbg !915
  call void @llvm.dbg.declare(metadata !{i32* %ia}, metadata !916), !dbg !917
  call void @llvm.dbg.declare(metadata !{i32* %ua}, metadata !918), !dbg !919
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str219, i32 0, i32 0)), !dbg !920
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str220, i32 0, i32 0), i32 8), !dbg !921
  store i32 -1, i32* %ia, align 4, !dbg !922
  store i32 -2, i32* %ua, align 4, !dbg !923
  %3 = load i32* %ia, align 4, !dbg !924
  %4 = sext i32 %3 to i64, !dbg !924
  store i64 %4, i64* %a, align 8, !dbg !924
  %5 = load i32* %ua, align 4, !dbg !925
  %6 = zext i32 %5 to i64, !dbg !925
  store i64 %6, i64* %b, align 8, !dbg !925
  %7 = load i64* %a, align 8, !dbg !926
  %8 = load i64* %b, align 8, !dbg !926
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str221, i32 0, i32 0), i64 %7, i64 %8), !dbg !926
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str222, i32 0, i32 0), i64 1, i64 -2, i64 1, i64 1311768465173141113), !dbg !927
  %11 = call i64 @llfunc1(i32 -3), !dbg !928
  store i64 %11, i64* %a, align 8, !dbg !928
  %12 = load i64* %a, align 8, !dbg !929
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str223, i32 0, i32 0), i64 %12), !dbg !929
  call void @lloptest(i64 1000, i64 23), !dbg !930
  call void @lloptest(i64 255, i64 4660), !dbg !931
  store i64 -782639104, i64* %b, align 8, !dbg !932
  %14 = load i64* %b, align 8, !dbg !933
  call void @lloptest(i64 -3, i64 %14), !dbg !933
  call void @llshift(i64 291, i32 5), !dbg !934
  call void @llshift(i64 -23, i32 5), !dbg !935
  store i64 1962017415168, i64* %b, align 8, !dbg !936
  %15 = load i64* %b, align 8, !dbg !937
  call void @llshift(i64 %15, i32 47), !dbg !937
  call void @llfloat(), !dbg !938
  store i64 305419896, i64* %b, align 8, !dbg !939
  store i64 -1, i64* %a, align 8, !dbg !940
  %16 = load i64* %a, align 8, !dbg !941
  %17 = load i64* %b, align 8, !dbg !941
  %18 = add nsw i64 %16, %17, !dbg !941
  store i64 %18, i64* %c, align 8, !dbg !941
  %19 = load i64* %c, align 8, !dbg !942
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str224, i32 0, i32 0), i64 %19), !dbg !942
  call void @llvm.dbg.declare(metadata !{%struct.S* %a1}, metadata !943), !dbg !945
  %21 = getelementptr inbounds %struct.S* %a1, i32 0, i32 1, !dbg !946
  store i8 3, i8* %21, align 1, !dbg !946
  %22 = call i64 @value(%struct.S* %a1), !dbg !947
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str225, i32 0, i32 0), i64 %22), !dbg !948
  call void @lloptest(i64 2147483648, i64 0), !dbg !949
  call void @llvm.dbg.declare(metadata !{i64** %p}, metadata !950), !dbg !953
  call void @llvm.dbg.declare(metadata !{i64* %v}, metadata !954), !dbg !955
  store i64 1, i64* %v, align 8, !dbg !956
  store i64* %v, i64** %p, align 4, !dbg !957
  %24 = load i64** %p, align 4, !dbg !958
  %25 = getelementptr inbounds i64* %24, i32 0, !dbg !958
  %26 = load i64* %25, align 4, !dbg !958
  %27 = add nsw i64 %26, 1, !dbg !958
  store i64 %27, i64* %25, align 4, !dbg !958
  %28 = load i64** %p, align 4, !dbg !959
  %29 = load i64* %28, align 4, !dbg !959
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str225, i32 0, i32 0), i64 %29), !dbg !959
  ret void, !dbg !960
}

; Function Attrs: nounwind
define void @whitespace_test() #0 {
  %str = alloca i8*, align 4
  call void @llvm.dbg.declare(metadata !{i8** %str}, metadata !961), !dbg !962
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str230, i32 0, i32 0)), !dbg !963
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), i32 2), !dbg !964
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 3), !dbg !965
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 4), !dbg !966
  ret void, !dbg !967
}

; Function Attrs: nounwind
define void @relocation_test() #0 {
  %1 = load i32** @rel1, align 4, !dbg !968
  %2 = load i32* %1, align 4, !dbg !968
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str231, i32 0, i32 0), i32 %2), !dbg !968
  %4 = load i32** @rel2, align 4, !dbg !969
  %5 = load i32* %4, align 4, !dbg !969
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str232, i32 0, i32 0), i32 %5), !dbg !969
  ret void, !dbg !970
}

; Function Attrs: nounwind
define void @old_style_function() #0 {
  call void @old_style_f(i32 1, i32 2, double 3.000000e+00), !dbg !971
  call void @decl_func1(i32 (...)* null), !dbg !972
  call void @decl_func2(i32 (...)* null), !dbg !973
  ret void, !dbg !974
}

; Function Attrs: nounwind
define void @sizeof_test() #0 {
  %a = alloca i32, align 4
  %ptr = alloca i32**, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !975), !dbg !976
  call void @llvm.dbg.declare(metadata !{i32*** %ptr}, metadata !977), !dbg !979
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str235, i32 0, i32 0), i32 4), !dbg !980
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str236, i32 0, i32 0), i32 4), !dbg !981
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str237, i32 0, i32 0), i32 2), !dbg !982
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str238, i32 0, i32 0), i32 2), !dbg !983
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str239, i32 0, i32 0), i32 1), !dbg !984
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str240, i32 0, i32 0), i32 1), !dbg !985
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str241, i32 0, i32 0), i32 1), !dbg !986
  store i32 1, i32* %a, align 4, !dbg !987
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str242, i32 0, i32 0), i32 4), !dbg !988
  %9 = load i32* %a, align 4, !dbg !989
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %9), !dbg !989
  store i32** null, i32*** %ptr, align 4, !dbg !990
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str243, i32 0, i32 0), i32 4), !dbg !991
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str244, i32 0, i32 0), i32 4), !dbg !992
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([32 x i8]* @.str245, i32 0, i32 0), i32 4), !dbg !993
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str246, i32 0, i32 0), i32 2), !dbg !994
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str247, i32 0, i32 0), i32 2), !dbg !995
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str248, i32 0, i32 0), i32 1), !dbg !996
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str249, i32 0, i32 0), i32 1), !dbg !997
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str250, i32 0, i32 0), i32 1), !dbg !998
  ret void, !dbg !999
}

; Function Attrs: nounwind
define void @typeof_test() #0 {
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca float, align 4
  call void @llvm.dbg.declare(metadata !{double* %a}, metadata !1000), !dbg !1001
  call void @llvm.dbg.declare(metadata !{double* %b}, metadata !1002), !dbg !1003
  call void @llvm.dbg.declare(metadata !{float* %c}, metadata !1004), !dbg !1005
  store double 1.500000e+00, double* %a, align 8, !dbg !1006
  store double 2.500000e+00, double* %b, align 8, !dbg !1007
  store float 3.500000e+00, float* %c, align 4, !dbg !1008
  %1 = load double* %a, align 8, !dbg !1009
  %2 = load double* %b, align 8, !dbg !1009
  %3 = load float* %c, align 4, !dbg !1009
  %4 = fpext float %3 to double, !dbg !1009
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str251, i32 0, i32 0), double %1, double %2, double %4), !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: nounwind
define void @statement_expr_test() #0 {
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %j = alloca i32, align 4
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1011), !dbg !1012
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1013), !dbg !1014
  store i32 0, i32* %a, align 4, !dbg !1015
  store i32 0, i32* %i, align 4, !dbg !1016
  br label %2, !dbg !1016

; <label>:2                                       ; preds = %22, %0
  %3 = load i32* %i, align 4, !dbg !1018
  %4 = icmp slt i32 %3, 10, !dbg !1018
  br i1 %4, label %5, label %25, !dbg !1018

; <label>:5                                       ; preds = %2
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1021), !dbg !1024
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !1025), !dbg !1026
  store i32 0, i32* %b, align 4, !dbg !1027
  store i32 0, i32* %j, align 4, !dbg !1028
  br label %6, !dbg !1028

; <label>:6                                       ; preds = %13, %5
  %7 = load i32* %j, align 4, !dbg !1030
  %8 = icmp slt i32 %7, 5, !dbg !1030
  br i1 %8, label %9, label %16, !dbg !1030

; <label>:9                                       ; preds = %6
  %10 = load i32* %j, align 4, !dbg !1033
  %11 = load i32* %b, align 4, !dbg !1033
  %12 = add nsw i32 %11, %10, !dbg !1033
  store i32 %12, i32* %b, align 4, !dbg !1033
  br label %13, !dbg !1033

; <label>:13                                      ; preds = %9
  %14 = load i32* %j, align 4, !dbg !1034
  %15 = add nsw i32 %14, 1, !dbg !1034
  store i32 %15, i32* %j, align 4, !dbg !1034
  br label %6, !dbg !1034

; <label>:16                                      ; preds = %6
  %17 = load i32* %b, align 4, !dbg !1035
  store i32 %17, i32* %1, !dbg !1035
  %18 = load i32* %1, !dbg !1036
  %19 = add nsw i32 1, %18, !dbg !1036
  %20 = load i32* %a, align 4, !dbg !1036
  %21 = add nsw i32 %20, %19, !dbg !1036
  store i32 %21, i32* %a, align 4, !dbg !1036
  br label %22, !dbg !1037

; <label>:22                                      ; preds = %16
  %23 = load i32* %i, align 4, !dbg !1038
  %24 = add nsw i32 %23, 1, !dbg !1038
  store i32 %24, i32* %i, align 4, !dbg !1038
  br label %2, !dbg !1038

; <label>:25                                      ; preds = %2
  %26 = load i32* %a, align 4, !dbg !1039
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %26), !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: nounwind
define void @local_label_test() #0 {
  %a = alloca i32, align 4
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1041), !dbg !1042
  br label %16, !dbg !1043

; <label>:2                                       ; preds = %14
  br label %7, !dbg !1044

; <label>:3                                       ; preds = %5
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str252, i32 0, i32 0)), !dbg !1046
  br label %9, !dbg !1047

; <label>:5                                       ; preds = %7
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str253, i32 0, i32 0)), !dbg !1048
  br label %3, !dbg !1049

; <label>:7                                       ; preds = %2
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str254, i32 0, i32 0)), !dbg !1050
  br label %5, !dbg !1051

; <label>:9                                       ; preds = %3
  store i32 1, i32* %1, !dbg !1051
  %10 = load i32* %1, !dbg !1052
  %11 = add nsw i32 1, %10, !dbg !1052
  store i32 %11, i32* %a, align 4, !dbg !1052
  %12 = load i32* %a, align 4, !dbg !1053
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %12), !dbg !1053
  ret void, !dbg !1054

; <label>:14                                      ; preds = %16
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str255, i32 0, i32 0)), !dbg !1055
  br label %2, !dbg !1056

; <label>:16                                      ; preds = %0
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str256, i32 0, i32 0)), !dbg !1057
  br label %14, !dbg !1058
}

; Function Attrs: nounwind
define void @asm_test() #0 {
  %buf = alloca [128 x i8], align 1
  %val = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf}, metadata !1059), !dbg !1063
  call void @llvm.dbg.declare(metadata !{i32* %val}, metadata !1064), !dbg !1065
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str257, i32 0, i32 0)), !dbg !1066
  call void asm sideeffect "xorl %eax, %eax", "~{dirflag},~{fpsr},~{flags}"() #3, !dbg !1067, !srcloc !1068
  %2 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !1069
  %3 = call i8* @memcpy1(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 6), !dbg !1069
  %4 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !1070
  %5 = call i8* @strncat1(i8* %4, i8* getelementptr inbounds ([12 x i8]* @.str258, i32 0, i32 0), i32 3), !dbg !1070
  %6 = getelementptr inbounds [128 x i8]* %buf, i32 0, i32 0, !dbg !1071
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i8* %6), !dbg !1071
  %8 = call i64 @mul64(i32 305419896, i32 -1412623820), !dbg !1072
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str259, i32 0, i32 0), i64 %8), !dbg !1073
  %10 = call i64 @inc64(i64 1311768469162688511), !dbg !1074
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str260, i32 0, i32 0), i64 %10), !dbg !1075
  store i32 255, i32* @set, align 4, !dbg !1076
  call void @sigdelset1(i32* @set, i32 2), !dbg !1077
  call void @sigaddset1(i32* @set, i32 16), !dbg !1078
  br label %19, !dbg !1079

; <label>:12                                      ; preds = %19
  call void asm "btsl $1,$0", "=*m,Ir,~{cc},~{dirflag},~{fpsr},~{flags}"(i32* @set, i32 20) #3, !dbg !1080, !srcloc !1081
  %13 = load i32* @set, align 4, !dbg !1082
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str261, i32 0, i32 0), i32 %13), !dbg !1082
  store i32 16909060, i32* %val, align 4, !dbg !1083
  %15 = load i32* %val, align 4, !dbg !1084
  %16 = load i32* %val, align 4, !dbg !1085
  %17 = call i32 @swab32(i32 %16), !dbg !1085
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str262, i32 0, i32 0), i32 %15, i32 %17), !dbg !1084
  ret void, !dbg !1086

; <label>:19                                      ; preds = %0
  br label %12, !dbg !1087
}

; Function Attrs: nounwind
define void @builtin_test() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str264, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str264, i32 0, i32 0), i32 1), !dbg !1088
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str264, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str265, i32 0, i32 0), i32 0), !dbg !1090
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str264, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str266, i32 0, i32 0), i32 0), !dbg !1092
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str264, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str267, i32 0, i32 0), i32 1), !dbg !1094
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str264, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str268, i32 0, i32 0), i32 1), !dbg !1096
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str269, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str269, i32 0, i32 0), i32 1), !dbg !1098
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str269, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str270, i32 0, i32 0), i32 0), !dbg !1100
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str269, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str271, i32 0, i32 0), i32 0), !dbg !1102
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str272, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str273, i32 0, i32 0), i32 0), !dbg !1104
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([43 x i8]* @.str263, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str274, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str270, i32 0, i32 0), i32 0), !dbg !1106
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str275, i32 0, i32 0), i32 1), !dbg !1108
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str275, i32 0, i32 0), i32 1), !dbg !1109
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str275, i32 0, i32 0), i32 0), !dbg !1110
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str275, i32 0, i32 0), i32 0), !dbg !1111
  ret void, !dbg !1112
}

; Function Attrs: nounwind
define void @f1(i32 %g) #0 {
  %1 = alloca i32, align 4
  store i32 %g, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1113), !dbg !1114
  %2 = load i32* %1, align 4, !dbg !1115
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str57, i32 0, i32 0), i32 %2), !dbg !1115
  ret void, !dbg !1116
}

; Function Attrs: nounwind
define void @scope_test() #0 {
  %g = alloca i32, align 4
  %g1 = alloca i32, align 4
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str58, i32 0, i32 0)), !dbg !1117
  store i32 2, i32* @g, align 4, !dbg !1118
  call void @f1(i32 1), !dbg !1119
  %2 = load i32* @g, align 4, !dbg !1120
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str59, i32 0, i32 0), i32 %2), !dbg !1120
  call void @llvm.dbg.declare(metadata !{i32* %g}, metadata !1121), !dbg !1123
  store i32 3, i32* %g, align 4, !dbg !1124
  %4 = load i32* %g, align 4, !dbg !1125
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0), i32 %4), !dbg !1125
  call void @llvm.dbg.declare(metadata !{i32* %g1}, metadata !1126), !dbg !1128
  store i32 4, i32* %g1, align 4, !dbg !1129
  %6 = load i32* %g1, align 4, !dbg !1130
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str61, i32 0, i32 0), i32 %6), !dbg !1130
  %8 = load i32* @g, align 4, !dbg !1131
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str62, i32 0, i32 0), i32 %8), !dbg !1131
  ret void, !dbg !1132
}

; Function Attrs: nounwind
define void @array_test(i32* %a) #0 {
  %1 = alloca i32*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !1133), !dbg !1134
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1135), !dbg !1136
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !1137), !dbg !1138
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str63, i32 0, i32 0)), !dbg !1139
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str64, i32 0, i32 0), i32 4), !dbg !1140
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str65, i32 0, i32 0), i32 2), !dbg !1141
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str66, i32 0, i32 0), i32 11), !dbg !1142
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str67, i32 0, i32 0), i32 12), !dbg !1143
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str68, i32 0, i32 0), i32 24), !dbg !1144
  store i32 1, i32* getelementptr inbounds ([3 x i32]* @tab, i32 0, i32 0), align 4, !dbg !1145
  store i32 2, i32* getelementptr inbounds ([3 x i32]* @tab, i32 0, i32 1), align 4, !dbg !1146
  store i32 3, i32* getelementptr inbounds ([3 x i32]* @tab, i32 0, i32 2), align 4, !dbg !1147
  %8 = load i32* getelementptr inbounds ([3 x i32]* @tab, i32 0, i32 0), align 4, !dbg !1148
  %9 = load i32* getelementptr inbounds ([3 x i32]* @tab, i32 0, i32 1), align 4, !dbg !1148
  %10 = load i32* getelementptr inbounds ([3 x i32]* @tab, i32 0, i32 2), align 4, !dbg !1148
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str69, i32 0, i32 0), i32 %8, i32 %9, i32 %10), !dbg !1148
  store i32 0, i32* %i, align 4, !dbg !1149
  br label %12, !dbg !1149

; <label>:12                                      ; preds = %32, %0
  %13 = load i32* %i, align 4, !dbg !1151
  %14 = icmp slt i32 %13, 3, !dbg !1151
  br i1 %14, label %15, label %35, !dbg !1151

; <label>:15                                      ; preds = %12
  store i32 0, i32* %j, align 4, !dbg !1154
  br label %16, !dbg !1154

; <label>:16                                      ; preds = %28, %15
  %17 = load i32* %j, align 4, !dbg !1156
  %18 = icmp slt i32 %17, 2, !dbg !1156
  br i1 %18, label %19, label %31, !dbg !1156

; <label>:19                                      ; preds = %16
  %20 = load i32* %i, align 4, !dbg !1159
  %21 = mul nsw i32 10, %20, !dbg !1159
  %22 = load i32* %j, align 4, !dbg !1159
  %23 = add nsw i32 %21, %22, !dbg !1159
  %24 = load i32* %j, align 4, !dbg !1159
  %25 = load i32* %i, align 4, !dbg !1159
  %26 = getelementptr inbounds [3 x [2 x i32]]* @tab2, i32 0, i32 %25, !dbg !1159
  %27 = getelementptr inbounds [2 x i32]* %26, i32 0, i32 %24, !dbg !1159
  store i32 %23, i32* %27, align 4, !dbg !1159
  br label %28, !dbg !1159

; <label>:28                                      ; preds = %19
  %29 = load i32* %j, align 4, !dbg !1160
  %30 = add nsw i32 %29, 1, !dbg !1160
  store i32 %30, i32* %j, align 4, !dbg !1160
  br label %16, !dbg !1160

; <label>:31                                      ; preds = %16
  br label %32, !dbg !1161

; <label>:32                                      ; preds = %31
  %33 = load i32* %i, align 4, !dbg !1162
  %34 = add nsw i32 %33, 1, !dbg !1162
  store i32 %34, i32* %i, align 4, !dbg !1162
  br label %12, !dbg !1162

; <label>:35                                      ; preds = %12
  store i32 0, i32* %i, align 4, !dbg !1163
  br label %36, !dbg !1163

; <label>:36                                      ; preds = %44, %35
  %37 = load i32* %i, align 4, !dbg !1165
  %38 = icmp slt i32 %37, 6, !dbg !1165
  br i1 %38, label %39, label %47, !dbg !1165

; <label>:39                                      ; preds = %36
  %40 = load i32* %i, align 4, !dbg !1168
  %41 = getelementptr inbounds i32* getelementptr inbounds ([3 x [2 x i32]]* @tab2, i32 0, i32 0, i32 0), i32 %40, !dbg !1168
  %42 = load i32* %41, align 4, !dbg !1168
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str70, i32 0, i32 0), i32 %42), !dbg !1168
  br label %44, !dbg !1170

; <label>:44                                      ; preds = %39
  %45 = load i32* %i, align 4, !dbg !1171
  %46 = add nsw i32 %45, 1, !dbg !1171
  store i32 %46, i32* %i, align 4, !dbg !1171
  br label %36, !dbg !1171

; <label>:47                                      ; preds = %36
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !1172
  ret void, !dbg !1173
}

; Function Attrs: nounwind
define void @expr_test() #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1174), !dbg !1175
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1176), !dbg !1177
  store i32 0, i32* %a, align 4, !dbg !1178
  %1 = load i32* %a, align 4, !dbg !1179
  %2 = add nsw i32 %1, 1, !dbg !1179
  store i32 %2, i32* %a, align 4, !dbg !1179
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %2), !dbg !1179
  %4 = load i32* %a, align 4, !dbg !1180
  %5 = sub nsw i32 %4, 2, !dbg !1180
  store i32 %5, i32* %a, align 4, !dbg !1180
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %5), !dbg !1180
  %7 = load i32* %a, align 4, !dbg !1181
  %8 = mul nsw i32 %7, 31232132, !dbg !1181
  store i32 %8, i32* %a, align 4, !dbg !1181
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %8), !dbg !1181
  %10 = load i32* %a, align 4, !dbg !1182
  %11 = sdiv i32 %10, 4, !dbg !1182
  store i32 %11, i32* %a, align 4, !dbg !1182
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %11), !dbg !1182
  %13 = load i32* %a, align 4, !dbg !1183
  %14 = srem i32 %13, 20, !dbg !1183
  store i32 %14, i32* %a, align 4, !dbg !1183
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %14), !dbg !1183
  %16 = load i32* %a, align 4, !dbg !1184
  %17 = and i32 %16, 6, !dbg !1184
  store i32 %17, i32* %a, align 4, !dbg !1184
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %17), !dbg !1184
  %19 = load i32* %a, align 4, !dbg !1185
  %20 = xor i32 %19, 7, !dbg !1185
  store i32 %20, i32* %a, align 4, !dbg !1185
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %20), !dbg !1185
  %22 = load i32* %a, align 4, !dbg !1186
  %23 = or i32 %22, 8, !dbg !1186
  store i32 %23, i32* %a, align 4, !dbg !1186
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %23), !dbg !1186
  %25 = load i32* %a, align 4, !dbg !1187
  %26 = ashr i32 %25, 3, !dbg !1187
  store i32 %26, i32* %a, align 4, !dbg !1187
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %26), !dbg !1187
  %28 = load i32* %a, align 4, !dbg !1188
  %29 = shl i32 %28, 4, !dbg !1188
  store i32 %29, i32* %a, align 4, !dbg !1188
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %29), !dbg !1188
  store i32 22321, i32* %a, align 4, !dbg !1189
  store i32 -22321, i32* %b, align 4, !dbg !1190
  %31 = load i32* %a, align 4, !dbg !1191
  %32 = add nsw i32 %31, 1, !dbg !1191
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %32), !dbg !1191
  %34 = load i32* %a, align 4, !dbg !1192
  %35 = sub nsw i32 %34, 2, !dbg !1192
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %35), !dbg !1192
  %37 = load i32* %a, align 4, !dbg !1193
  %38 = mul nsw i32 %37, 312, !dbg !1193
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %38), !dbg !1193
  %40 = load i32* %a, align 4, !dbg !1194
  %41 = sdiv i32 %40, 4, !dbg !1194
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %41), !dbg !1194
  %43 = load i32* %b, align 4, !dbg !1195
  %44 = sdiv i32 %43, 4, !dbg !1195
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %44), !dbg !1195
  %46 = load i32* %b, align 4, !dbg !1196
  %47 = udiv i32 %46, 4, !dbg !1196
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %47), !dbg !1196
  %49 = load i32* %a, align 4, !dbg !1197
  %50 = srem i32 %49, 20, !dbg !1197
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %50), !dbg !1197
  %52 = load i32* %b, align 4, !dbg !1198
  %53 = srem i32 %52, 20, !dbg !1198
  %54 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %53), !dbg !1198
  %55 = load i32* %b, align 4, !dbg !1199
  %56 = urem i32 %55, 20, !dbg !1199
  %57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %56), !dbg !1199
  %58 = load i32* %a, align 4, !dbg !1200
  %59 = and i32 %58, 6, !dbg !1200
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %59), !dbg !1200
  %61 = load i32* %a, align 4, !dbg !1201
  %62 = xor i32 %61, 7, !dbg !1201
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %62), !dbg !1201
  %64 = load i32* %a, align 4, !dbg !1202
  %65 = or i32 %64, 8, !dbg !1202
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %65), !dbg !1202
  %67 = load i32* %a, align 4, !dbg !1203
  %68 = ashr i32 %67, 3, !dbg !1203
  %69 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %68), !dbg !1203
  %70 = load i32* %b, align 4, !dbg !1204
  %71 = ashr i32 %70, 3, !dbg !1204
  %72 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %71), !dbg !1204
  %73 = load i32* %b, align 4, !dbg !1205
  %74 = lshr i32 %73, 3, !dbg !1205
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %74), !dbg !1205
  %76 = load i32* %a, align 4, !dbg !1206
  %77 = shl i32 %76, 4, !dbg !1206
  %78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %77), !dbg !1206
  %79 = load i32* %a, align 4, !dbg !1207
  %80 = xor i32 %79, -1, !dbg !1207
  %81 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %80), !dbg !1207
  %82 = load i32* %a, align 4, !dbg !1208
  %83 = sub nsw i32 0, %82, !dbg !1208
  %84 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %83), !dbg !1208
  %85 = load i32* %a, align 4, !dbg !1209
  %86 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %85), !dbg !1209
  %87 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 13), !dbg !1210
  %88 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 10), !dbg !1211
  %89 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 3744), !dbg !1212
  %90 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 3), !dbg !1213
  %91 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 12), !dbg !1214
  %92 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 4), !dbg !1215
  %93 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 11), !dbg !1216
  %94 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 12), !dbg !1217
  %95 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 3), !dbg !1218
  %96 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 192), !dbg !1219
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 -13), !dbg !1220
  %98 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 -12), !dbg !1221
  %99 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 12), !dbg !1222
  %100 = call i32 @isid(i32 97), !dbg !1223
  %101 = call i32 @isid(i32 103), !dbg !1224
  %102 = call i32 @isid(i32 84), !dbg !1225
  %103 = call i32 @isid(i32 40), !dbg !1226
  %104 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str72, i32 0, i32 0), i32 %100, i32 %101, i32 %102, i32 %103), !dbg !1227
  ret void, !dbg !1228
}

; Function Attrs: nounwind
define i32 @isid(i32 %c) #0 {
  %1 = alloca i32, align 4
  store i32 %c, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1229), !dbg !1230
  %2 = load i32* %1, align 4, !dbg !1231
  %3 = icmp sge i32 %2, 97, !dbg !1231
  %4 = zext i1 %3 to i32, !dbg !1231
  %5 = load i32* %1, align 4, !dbg !1231
  %6 = icmp sle i32 %5, 122, !dbg !1231
  %7 = zext i1 %6 to i32, !dbg !1231
  %8 = and i32 %4, %7, !dbg !1231
  %9 = load i32* %1, align 4, !dbg !1231
  %10 = icmp sge i32 %9, 65, !dbg !1231
  %11 = zext i1 %10 to i32, !dbg !1231
  %12 = load i32* %1, align 4, !dbg !1231
  %13 = icmp sle i32 %12, 90, !dbg !1231
  %14 = zext i1 %13 to i32, !dbg !1231
  %15 = and i32 %11, %14, !dbg !1231
  %16 = or i32 %8, %15, !dbg !1231
  %17 = load i32* %1, align 4, !dbg !1231
  %18 = icmp eq i32 %17, 95, !dbg !1231
  %19 = zext i1 %18 to i32, !dbg !1231
  %20 = or i32 %16, %19, !dbg !1231
  ret i32 %20, !dbg !1231
}

; Function Attrs: nounwind
define void @vpush(i32 %vt, i32 %vc) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %vt, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1232), !dbg !1233
  store i32 %vc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1234), !dbg !1235
  %3 = load i32* %1, align 4, !dbg !1236
  %4 = load i32** @vstack_ptr, align 4, !dbg !1236
  %5 = getelementptr inbounds i32* %4, i32 1, !dbg !1236
  store i32* %5, i32** @vstack_ptr, align 4, !dbg !1236
  store i32 %3, i32* %4, align 4, !dbg !1236
  %6 = load i32* %2, align 4, !dbg !1237
  %7 = load i32** @vstack_ptr, align 4, !dbg !1237
  %8 = getelementptr inbounds i32* %7, i32 1, !dbg !1237
  store i32* %8, i32** @vstack_ptr, align 4, !dbg !1237
  store i32 %6, i32* %7, align 4, !dbg !1237
  ret void, !dbg !1238
}

; Function Attrs: nounwind
define void @vpop(i32* %ft, i32* %fc) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i32*, align 4
  store i32* %ft, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !1239), !dbg !1240
  store i32* %fc, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !1241), !dbg !1242
  %3 = load i32** @vstack_ptr, align 4, !dbg !1243
  %4 = getelementptr inbounds i32* %3, i32 -1, !dbg !1243
  store i32* %4, i32** @vstack_ptr, align 4, !dbg !1243
  %5 = load i32* %4, align 4, !dbg !1243
  %6 = load i32** %2, align 4, !dbg !1243
  store i32 %5, i32* %6, align 4, !dbg !1243
  %7 = load i32** @vstack_ptr, align 4, !dbg !1244
  %8 = getelementptr inbounds i32* %7, i32 -1, !dbg !1244
  store i32* %8, i32** @vstack_ptr, align 4, !dbg !1244
  %9 = load i32* %8, align 4, !dbg !1244
  %10 = load i32** %1, align 4, !dbg !1244
  store i32 %9, i32* %10, align 4, !dbg !1244
  ret void, !dbg !1245
}

; Function Attrs: nounwind
define void @expr2_test() #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1246), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1248), !dbg !1249
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str73, i32 0, i32 0)), !dbg !1250
  store i32* getelementptr inbounds ([10 x i32]* @vstack, i32 0, i32 0), i32** @vstack_ptr, align 4, !dbg !1251
  call void @vpush(i32 1432432, i32 2), !dbg !1252
  %2 = load i32** @vstack_ptr, align 4, !dbg !1253
  %3 = getelementptr inbounds i32* %2, i32 -2, !dbg !1253
  %4 = load i32* %3, align 4, !dbg !1253
  %5 = and i32 %4, 127, !dbg !1253
  store i32 %5, i32* %3, align 4, !dbg !1253
  call void @vpop(i32* %a, i32* %b), !dbg !1254
  %6 = load i32* %a, align 4, !dbg !1255
  %7 = load i32* %b, align 4, !dbg !1255
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str74, i32 0, i32 0), i32 %6, i32 %7), !dbg !1255
  ret void, !dbg !1256
}

; Function Attrs: nounwind
define void @constant_expr_test() #0 {
  %a = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1257), !dbg !1258
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str75, i32 0, i32 0)), !dbg !1259
  store i32 3, i32* %a, align 4, !dbg !1260
  %2 = load i32* %a, align 4, !dbg !1261
  %3 = mul nsw i32 %2, 16, !dbg !1261
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %3), !dbg !1261
  %5 = load i32* %a, align 4, !dbg !1262
  %6 = mul nsw i32 %5, 1, !dbg !1262
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %6), !dbg !1262
  %8 = load i32* %a, align 4, !dbg !1263
  %9 = add nsw i32 %8, 0, !dbg !1263
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %9), !dbg !1263
  ret void, !dbg !1264
}

; Function Attrs: nounwind
define void @expr_ptr_test() #0 {
  %p = alloca i32*, align 4
  %q = alloca i32*, align 4
  call void @llvm.dbg.declare(metadata !{i32** %p}, metadata !1265), !dbg !1266
  call void @llvm.dbg.declare(metadata !{i32** %q}, metadata !1267), !dbg !1268
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str76, i32 0, i32 0)), !dbg !1269
  store i32* getelementptr inbounds ([10 x i32]* @tab4, i32 0, i32 0), i32** %p, align 4, !dbg !1270
  store i32* getelementptr inbounds (i32* getelementptr inbounds ([10 x i32]* @tab4, i32 0, i32 0), i32 10), i32** %q, align 4, !dbg !1271
  %2 = load i32** %q, align 4, !dbg !1272
  %3 = load i32** %p, align 4, !dbg !1272
  %4 = ptrtoint i32* %2 to i32, !dbg !1272
  %5 = ptrtoint i32* %3 to i32, !dbg !1272
  %6 = sub i32 %4, %5, !dbg !1272
  %7 = sdiv exact i32 %6, 4, !dbg !1272
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str77, i32 0, i32 0), i32 %7), !dbg !1272
  %9 = load i32** %p, align 4, !dbg !1273
  %10 = getelementptr inbounds i32* %9, i32 1, !dbg !1273
  store i32* %10, i32** %p, align 4, !dbg !1273
  %11 = load i32** %p, align 4, !dbg !1274
  %12 = ptrtoint i32* %11 to i32, !dbg !1274
  %13 = sub i32 %12, ptrtoint ([10 x i32]* @tab4 to i32), !dbg !1274
  %14 = sdiv exact i32 %13, 4, !dbg !1274
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i32 %14), !dbg !1274
  %16 = load i32** %p, align 4, !dbg !1275
  %17 = getelementptr inbounds i32* %16, i32 -1, !dbg !1275
  store i32* %17, i32** %p, align 4, !dbg !1275
  %18 = load i32** %p, align 4, !dbg !1276
  %19 = ptrtoint i32* %18 to i32, !dbg !1276
  %20 = sub i32 %19, ptrtoint ([10 x i32]* @tab4 to i32), !dbg !1276
  %21 = sdiv exact i32 %20, 4, !dbg !1276
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str79, i32 0, i32 0), i32 %21), !dbg !1276
  %23 = load i32** %p, align 4, !dbg !1277
  %24 = getelementptr inbounds i32* %23, i32 1, !dbg !1277
  store i32* %24, i32** %p, align 4, !dbg !1277
  %25 = load i32** %p, align 4, !dbg !1278
  %26 = ptrtoint i32* %25 to i32, !dbg !1278
  %27 = sub i32 %26, ptrtoint ([10 x i32]* @tab4 to i32), !dbg !1278
  %28 = sdiv exact i32 %27, 4, !dbg !1278
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str78, i32 0, i32 0), i32 %28), !dbg !1278
  %30 = load i32** %p, align 4, !dbg !1279
  %31 = getelementptr inbounds i32* %30, i32 -1, !dbg !1279
  store i32* %31, i32** %p, align 4, !dbg !1279
  %32 = load i32** %p, align 4, !dbg !1280
  %33 = ptrtoint i32* %32 to i32, !dbg !1280
  %34 = sub i32 %33, ptrtoint ([10 x i32]* @tab4 to i32), !dbg !1280
  %35 = sdiv exact i32 %34, 4, !dbg !1280
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str79, i32 0, i32 0), i32 %35), !dbg !1280
  %37 = load i32** %p, align 4, !dbg !1281
  %38 = getelementptr inbounds i32* %37, i32 3, !dbg !1281
  %39 = ptrtoint i32* %38 to i32, !dbg !1281
  %40 = sub i32 %39, ptrtoint ([10 x i32]* @tab4 to i32), !dbg !1281
  %41 = sdiv exact i32 %40, 4, !dbg !1281
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str80, i32 0, i32 0), i32 %41), !dbg !1281
  %43 = load i32** %p, align 4, !dbg !1282
  %44 = getelementptr inbounds i32* %43, i32 3, !dbg !1282
  %45 = ptrtoint i32* %44 to i32, !dbg !1282
  %46 = sub i32 %45, ptrtoint ([10 x i32]* @tab4 to i32), !dbg !1282
  %47 = sdiv exact i32 %46, 4, !dbg !1282
  %48 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str80, i32 0, i32 0), i32 %47), !dbg !1282
  ret void, !dbg !1283
}

; Function Attrs: nounwind
define void @expr_cmp_test() #0 {
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1284), !dbg !1285
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1286), !dbg !1287
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str75, i32 0, i32 0)), !dbg !1288
  store i32 -1, i32* %a, align 4, !dbg !1289
  store i32 1, i32* %b, align 4, !dbg !1290
  %2 = load i32* %a, align 4, !dbg !1291
  %3 = load i32* %a, align 4, !dbg !1291
  %4 = icmp eq i32 %2, %3, !dbg !1291
  %5 = zext i1 %4 to i32, !dbg !1291
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %5), !dbg !1291
  %7 = load i32* %a, align 4, !dbg !1292
  %8 = load i32* %a, align 4, !dbg !1292
  %9 = icmp ne i32 %7, %8, !dbg !1292
  %10 = zext i1 %9 to i32, !dbg !1292
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %10), !dbg !1292
  %12 = load i32* %a, align 4, !dbg !1293
  %13 = load i32* %b, align 4, !dbg !1293
  %14 = icmp slt i32 %12, %13, !dbg !1293
  %15 = zext i1 %14 to i32, !dbg !1293
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %15), !dbg !1293
  %17 = load i32* %a, align 4, !dbg !1294
  %18 = load i32* %b, align 4, !dbg !1294
  %19 = icmp sle i32 %17, %18, !dbg !1294
  %20 = zext i1 %19 to i32, !dbg !1294
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %20), !dbg !1294
  %22 = load i32* %a, align 4, !dbg !1295
  %23 = load i32* %a, align 4, !dbg !1295
  %24 = icmp sle i32 %22, %23, !dbg !1295
  %25 = zext i1 %24 to i32, !dbg !1295
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %25), !dbg !1295
  %27 = load i32* %b, align 4, !dbg !1296
  %28 = load i32* %a, align 4, !dbg !1296
  %29 = icmp sge i32 %27, %28, !dbg !1296
  %30 = zext i1 %29 to i32, !dbg !1296
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %30), !dbg !1296
  %32 = load i32* %a, align 4, !dbg !1297
  %33 = load i32* %a, align 4, !dbg !1297
  %34 = icmp sge i32 %32, %33, !dbg !1297
  %35 = zext i1 %34 to i32, !dbg !1297
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %35), !dbg !1297
  %37 = load i32* %b, align 4, !dbg !1298
  %38 = load i32* %a, align 4, !dbg !1298
  %39 = icmp sgt i32 %37, %38, !dbg !1298
  %40 = zext i1 %39 to i32, !dbg !1298
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %40), !dbg !1298
  %42 = load i32* %a, align 4, !dbg !1299
  %43 = load i32* %b, align 4, !dbg !1299
  %44 = icmp ult i32 %42, %43, !dbg !1299
  %45 = zext i1 %44 to i32, !dbg !1299
  %46 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %45), !dbg !1299
  %47 = load i32* %a, align 4, !dbg !1300
  %48 = load i32* %b, align 4, !dbg !1300
  %49 = icmp ule i32 %47, %48, !dbg !1300
  %50 = zext i1 %49 to i32, !dbg !1300
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %50), !dbg !1300
  %52 = load i32* %a, align 4, !dbg !1301
  %53 = load i32* %a, align 4, !dbg !1301
  %54 = icmp ule i32 %52, %53, !dbg !1301
  %55 = zext i1 %54 to i32, !dbg !1301
  %56 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %55), !dbg !1301
  %57 = load i32* %b, align 4, !dbg !1302
  %58 = load i32* %a, align 4, !dbg !1302
  %59 = icmp uge i32 %57, %58, !dbg !1302
  %60 = zext i1 %59 to i32, !dbg !1302
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %60), !dbg !1302
  %62 = load i32* %a, align 4, !dbg !1303
  %63 = load i32* %a, align 4, !dbg !1303
  %64 = icmp uge i32 %62, %63, !dbg !1303
  %65 = zext i1 %64 to i32, !dbg !1303
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %65), !dbg !1303
  %67 = load i32* %b, align 4, !dbg !1304
  %68 = load i32* %a, align 4, !dbg !1304
  %69 = icmp ugt i32 %67, %68, !dbg !1304
  %70 = zext i1 %69 to i32, !dbg !1304
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str71, i32 0, i32 0), i32 %70), !dbg !1304
  ret void, !dbg !1305
}

; Function Attrs: nounwind
define void @struct_test() #0 {
  %s = alloca %struct.struct1*, align 4
  %u = alloca %union.union2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.struct1** %s}, metadata !1306), !dbg !1309
  call void @llvm.dbg.declare(metadata !{%union.union2* %u}, metadata !1310), !dbg !1315
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str81, i32 0, i32 0)), !dbg !1316
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str82, i32 0, i32 0), i32 20, i32 8, i32 4, i32 4), !dbg !1317
  store i32 1, i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 0), align 4, !dbg !1318
  store i32 2, i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 1), align 4, !dbg !1319
  store i32 3, i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 2), align 4, !dbg !1320
  %3 = load i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 0), align 4, !dbg !1321
  %4 = load i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 1), align 4, !dbg !1321
  %5 = load i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 2), align 4, !dbg !1321
  %6 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str83, i32 0, i32 0), i32 %3, i32 %4, i32 %5), !dbg !1321
  store i32 1, i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 3, i32 0), align 4, !dbg !1322
  store i32 2, i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 3, i32 0), align 4, !dbg !1323
  %7 = load i32* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 3, i32 0), align 4, !dbg !1324
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str84, i32 0, i32 0), i32 %7), !dbg !1324
  %9 = bitcast %union.union2* %u to i32*, !dbg !1325
  store i32 1, i32* %9, align 4, !dbg !1325
  %10 = bitcast %union.union2* %u to i32*, !dbg !1326
  store i32 2, i32* %10, align 4, !dbg !1326
  %11 = bitcast %union.union2* %u to i32*, !dbg !1327
  %12 = load i32* %11, align 4, !dbg !1327
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str85, i32 0, i32 0), i32 %12), !dbg !1327
  store %struct.struct1* @st2, %struct.struct1** %s, align 4, !dbg !1328
  %14 = load %struct.struct1** %s, align 4, !dbg !1329
  %15 = getelementptr inbounds %struct.struct1* %14, i32 0, i32 0, !dbg !1329
  store i32 3, i32* %15, align 4, !dbg !1329
  %16 = load %struct.struct1** %s, align 4, !dbg !1330
  %17 = getelementptr inbounds %struct.struct1* %16, i32 0, i32 1, !dbg !1330
  store i32 2, i32* %17, align 4, !dbg !1330
  %18 = load %struct.struct1** %s, align 4, !dbg !1331
  %19 = getelementptr inbounds %struct.struct1* %18, i32 0, i32 2, !dbg !1331
  store i32 1, i32* %19, align 4, !dbg !1331
  %20 = load %struct.struct1** %s, align 4, !dbg !1332
  %21 = getelementptr inbounds %struct.struct1* %20, i32 0, i32 0, !dbg !1332
  %22 = load i32* %21, align 4, !dbg !1332
  %23 = load %struct.struct1** %s, align 4, !dbg !1332
  %24 = getelementptr inbounds %struct.struct1* %23, i32 0, i32 1, !dbg !1332
  %25 = load i32* %24, align 4, !dbg !1332
  %26 = load %struct.struct1** %s, align 4, !dbg !1332
  %27 = getelementptr inbounds %struct.struct1* %26, i32 0, i32 2, !dbg !1332
  %28 = load i32* %27, align 4, !dbg !1332
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str86, i32 0, i32 0), i32 %22, i32 %25, i32 %28), !dbg !1332
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str87, i32 0, i32 0), i32 sub nsw (i32 ptrtoint (i8* getelementptr inbounds (%struct.struct1* @st1, i32 0, i32 4, i32 0) to i32), i32 ptrtoint (%struct.struct1* @st1 to i32))), !dbg !1333
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str88, i32 0, i32 0), i32 10, i32 1), !dbg !1334
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str89, i32 0, i32 0), i32 16, i32 4), !dbg !1335
  %33 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str90, i32 0, i32 0), i32 16, i32 4), !dbg !1336
  %34 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str91, i32 0, i32 0), i32 0, i32 4), !dbg !1337
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str92, i32 0, i32 0), i32 0), !dbg !1338
  %36 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([28 x i8]* @.str93, i32 0, i32 0), i32 1), !dbg !1339
  ret void, !dbg !1340
}

; Function Attrs: nounwind
define void @char_short_test() #0 {
  %var1 = alloca i32, align 4
  %var2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %var1}, metadata !1341), !dbg !1342
  call void @llvm.dbg.declare(metadata !{i32* %var2}, metadata !1343), !dbg !1344
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str94, i32 0, i32 0)), !dbg !1345
  store i32 16909060, i32* %var1, align 4, !dbg !1346
  store i32 -66052, i32* %var2, align 4, !dbg !1347
  %2 = bitcast i32* %var1 to i8*, !dbg !1348
  %3 = load i8* %2, align 1, !dbg !1348
  %4 = sext i8 %3 to i32, !dbg !1348
  %5 = bitcast i32* %var2 to i8*, !dbg !1348
  %6 = load i8* %5, align 1, !dbg !1348
  %7 = sext i8 %6 to i32, !dbg !1348
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str95, i32 0, i32 0), i32 %4, i32 %7), !dbg !1348
  %9 = bitcast i32* %var1 to i8*, !dbg !1349
  %10 = load i8* %9, align 1, !dbg !1349
  %11 = zext i8 %10 to i32, !dbg !1349
  %12 = bitcast i32* %var2 to i8*, !dbg !1349
  %13 = load i8* %12, align 1, !dbg !1349
  %14 = zext i8 %13 to i32, !dbg !1349
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str96, i32 0, i32 0), i32 %11, i32 %14), !dbg !1349
  %16 = bitcast i32* %var1 to i16*, !dbg !1350
  %17 = load i16* %16, align 2, !dbg !1350
  %18 = sext i16 %17 to i32, !dbg !1350
  %19 = bitcast i32* %var2 to i16*, !dbg !1350
  %20 = load i16* %19, align 2, !dbg !1350
  %21 = sext i16 %20 to i32, !dbg !1350
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str97, i32 0, i32 0), i32 %18, i32 %21), !dbg !1350
  %23 = bitcast i32* %var1 to i16*, !dbg !1351
  %24 = load i16* %23, align 2, !dbg !1351
  %25 = zext i16 %24 to i32, !dbg !1351
  %26 = bitcast i32* %var2 to i16*, !dbg !1351
  %27 = load i16* %26, align 2, !dbg !1351
  %28 = zext i16 %27 to i32, !dbg !1351
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str98, i32 0, i32 0), i32 %25, i32 %28), !dbg !1351
  %30 = load i32* %var1, align 4, !dbg !1352
  %31 = load i32* %var2, align 4, !dbg !1352
  %32 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str99, i32 0, i32 0), i32 %30, i32 %31), !dbg !1352
  %33 = load i32* %var1, align 4, !dbg !1353
  %34 = load i32* %var2, align 4, !dbg !1353
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str100, i32 0, i32 0), i32 %33, i32 %34), !dbg !1353
  %36 = bitcast i32* %var1 to i8*, !dbg !1354
  store i8 8, i8* %36, align 1, !dbg !1354
  %37 = load i32* %var1, align 4, !dbg !1355
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str101, i32 0, i32 0), i32 %37), !dbg !1355
  %39 = bitcast i32* %var1 to i16*, !dbg !1356
  store i16 2057, i16* %39, align 2, !dbg !1356
  %40 = load i32* %var1, align 4, !dbg !1357
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str101, i32 0, i32 0), i32 %40), !dbg !1357
  store i32 134810123, i32* %var1, align 4, !dbg !1358
  %42 = load i32* %var1, align 4, !dbg !1359
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str101, i32 0, i32 0), i32 %42), !dbg !1359
  ret void, !dbg !1360
}

; Function Attrs: nounwind
define void @bool_test() #0 {
  %s = alloca i32*, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  %aspect_on = alloca i32, align 4
  %aspect_native = alloca i32, align 4
  %bfu_aspect = alloca double, align 8
  %aspect = alloca i32, align 4
  %a1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32** %s}, metadata !1361), !dbg !1362
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1363), !dbg !1364
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1365), !dbg !1366
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !1367), !dbg !1368
  call void @llvm.dbg.declare(metadata !{i32* %f}, metadata !1369), !dbg !1370
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1371), !dbg !1372
  store i32 0, i32* %a, align 4, !dbg !1373
  store i32* null, i32** %s, align 4, !dbg !1374
  %1 = load i32** %s, align 4, !dbg !1375
  %2 = icmp ne i32* %1, null, !dbg !1375
  %3 = xor i1 %2, true, !dbg !1375
  %4 = zext i1 %3 to i32, !dbg !1375
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str102, i32 0, i32 0), i32 %4), !dbg !1375
  %6 = load i32** %s, align 4, !dbg !1376
  %7 = icmp ne i32* %6, null, !dbg !1376
  br i1 %7, label %8, label %13, !dbg !1376

; <label>:8                                       ; preds = %0
  %9 = load i32** %s, align 4, !dbg !1378
  %10 = getelementptr inbounds i32* %9, i32 0, !dbg !1378
  %11 = load i32* %10, align 4, !dbg !1378
  %12 = icmp ne i32 %11, 0, !dbg !1378
  br i1 %12, label %14, label %13, !dbg !1378

; <label>:13                                      ; preds = %8, %0
  store i32 1, i32* %a, align 4, !dbg !1380
  br label %14, !dbg !1380

; <label>:14                                      ; preds = %13, %8
  %15 = load i32* %a, align 4, !dbg !1381
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %15), !dbg !1381
  %17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str103, i32 0, i32 0), i32 0, i32 1, i32 1), !dbg !1382
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([12 x i8]* @.str103, i32 0, i32 0), i32 0, i32 0, i32 1), !dbg !1383
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str104, i32 0, i32 0), i32 1, i32 0), !dbg !1384
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str105, i32 0, i32 0)), !dbg !1385
  %21 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str106, i32 0, i32 0)), !dbg !1386
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str107, i32 0, i32 0)), !dbg !1387
  store i32 4, i32* %a, align 4, !dbg !1388
  %23 = load i32* %a, align 4, !dbg !1389
  %24 = load i32* %a, align 4, !dbg !1389
  %25 = sdiv i32 %24, 2, !dbg !1389
  %26 = add nsw i32 %23, %25, !dbg !1389
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str108, i32 0, i32 0), i32 %26), !dbg !1389
  store i32 10, i32* %a, align 4, !dbg !1390
  store i32 10, i32* %b, align 4, !dbg !1391
  %28 = load i32* %a, align 4, !dbg !1392
  %29 = load i32* %b, align 4, !dbg !1392
  %30 = add nsw i32 %28, %29, !dbg !1392
  %31 = load i32* %a, align 4, !dbg !1392
  %32 = load i32* %b, align 4, !dbg !1392
  %33 = icmp slt i32 %31, %32, !dbg !1392
  br i1 %33, label %34, label %42, !dbg !1392

; <label>:34                                      ; preds = %14
  %35 = load i32* %b, align 4, !dbg !1393
  %36 = load i32* %a, align 4, !dbg !1393
  %37 = sub nsw i32 %35, %36, !dbg !1393
  %38 = load i32* %a, align 4, !dbg !1393
  %39 = load i32* %b, align 4, !dbg !1393
  %40 = sub nsw i32 %38, %39, !dbg !1393
  %41 = mul nsw i32 %37, %40, !dbg !1393
  br label %46, !dbg !1393

; <label>:42                                      ; preds = %14
  %43 = load i32* %a, align 4, !dbg !1395
  %44 = load i32* %b, align 4, !dbg !1395
  %45 = add nsw i32 %43, %44, !dbg !1395
  br label %46, !dbg !1395

; <label>:46                                      ; preds = %42, %34
  %47 = phi i32 [ %41, %34 ], [ %45, %42 ], !dbg !1392
  %48 = mul nsw i32 %30, %47, !dbg !1397
  store i32 %48, i32* %a, align 4, !dbg !1397
  %49 = load i32* %a, align 4, !dbg !1400
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str30, i32 0, i32 0), i32 %49), !dbg !1400
  store i32 1, i32* %t, align 4, !dbg !1401
  store i32 0, i32* %f, align 4, !dbg !1402
  store i32 32, i32* %a, align 4, !dbg !1403
  %51 = load i32* %f, align 4, !dbg !1404
  %52 = load i32* %a, align 4, !dbg !1404
  %53 = icmp sle i32 32, %52, !dbg !1404
  br i1 %53, label %54, label %57, !dbg !1404

; <label>:54                                      ; preds = %46
  %55 = load i32* %a, align 4, !dbg !1405
  %56 = icmp sle i32 %55, 3, !dbg !1405
  br label %57

; <label>:57                                      ; preds = %54, %46
  %58 = phi i1 [ false, %46 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32, !dbg !1407
  %60 = icmp eq i32 %51, %59, !dbg !1407
  %61 = zext i1 %60 to i32, !dbg !1407
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str109, i32 0, i32 0), i32 %61), !dbg !1407
  %63 = load i32* %t, align 4, !dbg !1409
  %64 = icmp ne i32 %63, 0, !dbg !1409
  br i1 %64, label %68, label %65, !dbg !1409

; <label>:65                                      ; preds = %57
  %66 = load i32* %f, align 4, !dbg !1410
  %67 = icmp ne i32 %66, 0, !dbg !1410
  br label %68, !dbg !1410

; <label>:68                                      ; preds = %65, %57
  %69 = phi i1 [ true, %57 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32, !dbg !1412
  %71 = load i32* %t, align 4, !dbg !1412
  %72 = icmp ne i32 %71, 0, !dbg !1412
  br i1 %72, label %73, label %76, !dbg !1412

; <label>:73                                      ; preds = %68
  %74 = load i32* %f, align 4, !dbg !1415
  %75 = icmp ne i32 %74, 0, !dbg !1415
  br label %76

; <label>:76                                      ; preds = %73, %68
  %77 = phi i1 [ false, %68 ], [ %75, %73 ]
  %78 = zext i1 %77 to i32, !dbg !1417
  %79 = add nsw i32 %70, %78, !dbg !1417
  %80 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str110, i32 0, i32 0), i32 %79), !dbg !1417
  call void @llvm.dbg.declare(metadata !{i32* %aspect_on}, metadata !1419), !dbg !1421
  call void @llvm.dbg.declare(metadata !{i32* %aspect_native}, metadata !1422), !dbg !1423
  store i32 65536, i32* %aspect_native, align 4, !dbg !1424
  call void @llvm.dbg.declare(metadata !{double* %bfu_aspect}, metadata !1425), !dbg !1426
  store double 1.000000e+00, double* %bfu_aspect, align 8, !dbg !1427
  call void @llvm.dbg.declare(metadata !{i32* %aspect}, metadata !1428), !dbg !1429
  store i32 0, i32* %aspect_on, align 4, !dbg !1430
  br label %81, !dbg !1430

; <label>:81                                      ; preds = %99, %76
  %82 = load i32* %aspect_on, align 4, !dbg !1432
  %83 = icmp slt i32 %82, 2, !dbg !1432
  br i1 %83, label %84, label %102, !dbg !1432

; <label>:84                                      ; preds = %81
  %85 = load i32* %aspect_on, align 4, !dbg !1435
  %86 = icmp ne i32 %85, 0, !dbg !1435
  br i1 %86, label %87, label %93, !dbg !1435

; <label>:87                                      ; preds = %84
  %88 = load i32* %aspect_native, align 4, !dbg !1437
  %89 = sitofp i32 %88 to double, !dbg !1437
  %90 = load double* %bfu_aspect, align 8, !dbg !1437
  %91 = fmul double %89, %90, !dbg !1437
  %92 = fadd double %91, 5.000000e-01, !dbg !1437
  br label %94, !dbg !1437

; <label>:93                                      ; preds = %84
  br label %94, !dbg !1439

; <label>:94                                      ; preds = %93, %87
  %95 = phi double [ %92, %87 ], [ 6.553500e+04, %93 ], !dbg !1435
  %96 = fptosi double %95 to i32, !dbg !1441
  store i32 %96, i32* %aspect, align 4, !dbg !1441
  %97 = load i32* %aspect, align 4, !dbg !1444
  %98 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str111, i32 0, i32 0), i32 %97), !dbg !1444
  br label %99, !dbg !1445

; <label>:99                                      ; preds = %94
  %100 = load i32* %aspect_on, align 4, !dbg !1446
  %101 = add nsw i32 %100, 1, !dbg !1446
  store i32 %101, i32* %aspect_on, align 4, !dbg !1446
  br label %81, !dbg !1446

; <label>:102                                     ; preds = %81
  call void @llvm.dbg.declare(metadata !{i32* %a1}, metadata !1447), !dbg !1449
  store i32 30, i32* %a1, align 4, !dbg !1450
  %103 = load i32* @bool_test.v1, align 4, !dbg !1451
  %104 = load i32* @bool_test.v2, align 4, !dbg !1451
  %105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str112, i32 0, i32 0), i32 %103, i32 %104), !dbg !1451
  %106 = load i32* %a1, align 4, !dbg !1452
  %107 = sub nsw i32 %106, 30, !dbg !1452
  %108 = icmp ne i32 %107, 0, !dbg !1452
  br i1 %108, label %109, label %110, !dbg !1452

; <label>:109                                     ; preds = %102
  br label %113, !dbg !1453

; <label>:110                                     ; preds = %102
  %111 = load i32* %a1, align 4, !dbg !1455
  %112 = mul nsw i32 %111, 2, !dbg !1455
  br label %113, !dbg !1455

; <label>:113                                     ; preds = %110, %109
  %114 = phi i32 [ %107, %109 ], [ %112, %110 ], !dbg !1452
  %115 = load i32* %a1, align 4, !dbg !1457
  %116 = add nsw i32 %115, 1, !dbg !1457
  %117 = icmp ne i32 %116, 0, !dbg !1457
  br i1 %117, label %118, label %119, !dbg !1457

; <label>:118                                     ; preds = %113
  br label %122, !dbg !1460

; <label>:119                                     ; preds = %113
  %120 = load i32* %a1, align 4, !dbg !1462
  %121 = mul nsw i32 %120, 2, !dbg !1462
  br label %122, !dbg !1462

; <label>:122                                     ; preds = %119, %118
  %123 = phi i32 [ %116, %118 ], [ %121, %119 ], !dbg !1452
  %124 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str112, i32 0, i32 0), i32 %114, i32 %123), !dbg !1464
  store i32 0, i32* %i, align 4, !dbg !1467
  br label %125, !dbg !1467

; <label>:125                                     ; preds = %149, %122
  %126 = load i32* %i, align 4, !dbg !1469
  %127 = icmp slt i32 %126, 256, !dbg !1469
  br i1 %127, label %128, label %152, !dbg !1469

; <label>:128                                     ; preds = %125
  %129 = load i32* %i, align 4, !dbg !1472
  %130 = call i32 @toupper1(i32 %129), !dbg !1472
  %131 = load i32* %i, align 4, !dbg !1472
  %132 = icmp sle i32 97, %131, !dbg !1472
  br i1 %132, label %133, label %140, !dbg !1472

; <label>:133                                     ; preds = %128
  %134 = load i32* %i, align 4, !dbg !1475
  %135 = icmp sle i32 %134, 122, !dbg !1475
  br i1 %135, label %136, label %140, !dbg !1475

; <label>:136                                     ; preds = %133
  %137 = load i32* %i, align 4, !dbg !1477
  %138 = sub nsw i32 %137, 97, !dbg !1477
  %139 = add nsw i32 65, %138, !dbg !1477
  br label %142, !dbg !1477

; <label>:140                                     ; preds = %133, %128
  %141 = load i32* %i, align 4, !dbg !1479
  br label %142, !dbg !1479

; <label>:142                                     ; preds = %140, %136
  %143 = phi i32 [ %139, %136 ], [ %141, %140 ], !dbg !1472
  %144 = icmp ne i32 %130, %143, !dbg !1482
  br i1 %144, label %145, label %148, !dbg !1482

; <label>:145                                     ; preds = %142
  %146 = load i32* %i, align 4, !dbg !1485
  %147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str113, i32 0, i32 0), i32 %146), !dbg !1485
  br label %148, !dbg !1485

; <label>:148                                     ; preds = %145, %142
  br label %149, !dbg !1486

; <label>:149                                     ; preds = %148
  %150 = load i32* %i, align 4, !dbg !1487
  %151 = add nsw i32 %150, 1, !dbg !1487
  store i32 %151, i32* %i, align 4, !dbg !1487
  br label %125, !dbg !1487

; <label>:152                                     ; preds = %125
  ret void, !dbg !1488
}

; Function Attrs: nounwind
define internal i32 @toupper1(i32 %a) #0 {
  %1 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1489), !dbg !1490
  %2 = load i32* %1, align 4, !dbg !1491
  %3 = icmp sle i32 97, %2, !dbg !1491
  br i1 %3, label %4, label %11, !dbg !1491

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4, !dbg !1492
  %6 = icmp sle i32 %5, 122, !dbg !1492
  br i1 %6, label %7, label %11, !dbg !1492

; <label>:7                                       ; preds = %4
  %8 = load i32* %1, align 4, !dbg !1494
  %9 = sub nsw i32 %8, 97, !dbg !1494
  %10 = add nsw i32 65, %9, !dbg !1494
  br label %13, !dbg !1494

; <label>:11                                      ; preds = %4, %0
  %12 = load i32* %1, align 4, !dbg !1496
  br label %13, !dbg !1496

; <label>:13                                      ; preds = %11, %7
  %14 = phi i32 [ %10, %7 ], [ %12, %11 ], !dbg !1491
  ret i32 %14, !dbg !1499
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
define i32 @kr_func1(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1502), !dbg !1503
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1504), !dbg !1505
  %3 = load i32* %1, align 4, !dbg !1506
  %4 = load i32* %2, align 4, !dbg !1506
  %5 = add nsw i32 %3, %4, !dbg !1506
  ret i32 %5, !dbg !1506
}

; Function Attrs: nounwind
define i32 @kr_func2(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1507), !dbg !1508
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1509), !dbg !1510
  %3 = load i32* %1, align 4, !dbg !1511
  %4 = load i32* %2, align 4, !dbg !1511
  %5 = add nsw i32 %3, %4, !dbg !1511
  ret i32 %5, !dbg !1511
}

; Function Attrs: nounwind
define i32 @kr_test() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str123, i32 0, i32 0)), !dbg !1512
  %2 = call i32 @kr_func1(i32 3, i32 4), !dbg !1513
  %3 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str124, i32 0, i32 0), i32 %2), !dbg !1514
  %4 = call i32 @kr_func2(i32 3, i32 4), !dbg !1515
  %5 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str125, i32 0, i32 0), i32 %4), !dbg !1516
  ret i32 0, !dbg !1517
}

; Function Attrs: nounwind
define void @struct_assign_test1(%struct.structa1* byval align 4 %s1, i32 %t) #0 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{%struct.structa1* %s1}, metadata !1518), !dbg !1519
  store i32 %t, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1520), !dbg !1521
  %2 = getelementptr inbounds %struct.structa1* %s1, i32 0, i32 0, !dbg !1522
  %3 = load i32* %2, align 4, !dbg !1522
  %4 = getelementptr inbounds %struct.structa1* %s1, i32 0, i32 1, !dbg !1522
  %5 = load i8* %4, align 1, !dbg !1522
  %6 = sext i8 %5 to i32, !dbg !1522
  %7 = load i32* %1, align 4, !dbg !1522
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str69, i32 0, i32 0), i32 %3, i32 %6, i32 %7), !dbg !1522
  ret void, !dbg !1523
}

; Function Attrs: nounwind
define void @struct_assign_test2(%struct.structa1* noalias sret %agg.result, %struct.structa1* byval align 4 %s1, i32 %t) #0 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{%struct.structa1* %s1}, metadata !1524), !dbg !1525
  store i32 %t, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1526), !dbg !1527
  %2 = load i32* %1, align 4, !dbg !1528
  %3 = getelementptr inbounds %struct.structa1* %s1, i32 0, i32 0, !dbg !1528
  %4 = load i32* %3, align 4, !dbg !1528
  %5 = add nsw i32 %4, %2, !dbg !1528
  store i32 %5, i32* %3, align 4, !dbg !1528
  %6 = load i32* %1, align 4, !dbg !1529
  %7 = getelementptr inbounds %struct.structa1* %s1, i32 0, i32 1, !dbg !1529
  %8 = load i8* %7, align 1, !dbg !1529
  %9 = sext i8 %8 to i32, !dbg !1529
  %10 = sub nsw i32 %9, %6, !dbg !1529
  %11 = trunc i32 %10 to i8, !dbg !1529
  store i8 %11, i8* %7, align 1, !dbg !1529
  %12 = bitcast %struct.structa1* %agg.result to i8*, !dbg !1530
  %13 = bitcast %struct.structa1* %s1 to i8*, !dbg !1530
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %12, i8* %13, i32 8, i32 4, i1 false), !dbg !1530
  ret void, !dbg !1530
}

; Function Attrs: nounwind
define void @cast1(i8 signext %a, i16 signext %b, i8 zeroext %c, i16 zeroext %d) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  store i8 %a, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !1531), !dbg !1532
  store i16 %b, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !1533), !dbg !1534
  store i8 %c, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !1535), !dbg !1536
  store i16 %d, i16* %4, align 2
  call void @llvm.dbg.declare(metadata !{i16* %4}, metadata !1537), !dbg !1538
  %5 = load i8* %1, align 1, !dbg !1539
  %6 = sext i8 %5 to i32, !dbg !1539
  %7 = load i16* %2, align 2, !dbg !1539
  %8 = sext i16 %7 to i32, !dbg !1539
  %9 = load i8* %3, align 1, !dbg !1539
  %10 = zext i8 %9 to i32, !dbg !1539
  %11 = load i16* %4, align 2, !dbg !1539
  %12 = zext i16 %11 to i32, !dbg !1539
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str72, i32 0, i32 0), i32 %6, i32 %8, i32 %10, i32 %12), !dbg !1539
  ret void, !dbg !1540
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) #3

; Function Attrs: nounwind
define void @switch_test() #0 {
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1541), !dbg !1542
  store i32 0, i32* %i, align 4, !dbg !1543
  br label %1, !dbg !1543

; <label>:1                                       ; preds = %16, %0
  %2 = load i32* %i, align 4, !dbg !1545
  %3 = icmp slt i32 %2, 15, !dbg !1545
  br i1 %3, label %4, label %19, !dbg !1545

; <label>:4                                       ; preds = %1
  %5 = load i32* %i, align 4, !dbg !1548
  switch i32 %5, label %8 [
    i32 0, label %6
    i32 1, label %6
    i32 8, label %11
    i32 9, label %11
    i32 10, label %11
    i32 11, label %11
    i32 12, label %11
    i32 3, label %13
  ], !dbg !1548

; <label>:6                                       ; preds = %4, %4
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str163, i32 0, i32 0)), !dbg !1550
  br label %15, !dbg !1552

; <label>:8                                       ; preds = %4
  %9 = load i32* %i, align 4, !dbg !1553
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %9), !dbg !1553
  br label %15, !dbg !1554

; <label>:11                                      ; preds = %4, %4, %4, %4, %4
  %12 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str164, i32 0, i32 0)), !dbg !1555
  br label %15, !dbg !1556

; <label>:13                                      ; preds = %4
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str165, i32 0, i32 0)), !dbg !1557
  br label %15, !dbg !1558

; <label>:15                                      ; preds = %13, %11, %8, %6
  br label %16, !dbg !1559

; <label>:16                                      ; preds = %15
  %17 = load i32* %i, align 4, !dbg !1560
  %18 = add nsw i32 %17, 1, !dbg !1560
  store i32 %18, i32* %i, align 4, !dbg !1560
  br label %1, !dbg !1560

; <label>:19                                      ; preds = %1
  %20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !1561
  ret void, !dbg !1562
}

; Function Attrs: nounwind
define void @fcmp(float %a, float %b) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %a, float* %1, align 4
  call void @llvm.dbg.declare(metadata !{float* %1}, metadata !1563), !dbg !1564
  store float %b, float* %2, align 4
  call void @llvm.dbg.declare(metadata !{float* %2}, metadata !1565), !dbg !1566
  %3 = load float* %1, align 4, !dbg !1567
  %4 = load float* %2, align 4, !dbg !1567
  %5 = fcmp oeq float %3, %4, !dbg !1567
  %6 = zext i1 %5 to i32, !dbg !1567
  %7 = load float* %1, align 4, !dbg !1567
  %8 = load float* %2, align 4, !dbg !1567
  %9 = fcmp une float %7, %8, !dbg !1567
  %10 = zext i1 %9 to i32, !dbg !1567
  %11 = load float* %1, align 4, !dbg !1567
  %12 = load float* %2, align 4, !dbg !1567
  %13 = fcmp olt float %11, %12, !dbg !1567
  %14 = zext i1 %13 to i32, !dbg !1567
  %15 = load float* %1, align 4, !dbg !1567
  %16 = load float* %2, align 4, !dbg !1567
  %17 = fcmp ogt float %15, %16, !dbg !1567
  %18 = zext i1 %17 to i32, !dbg !1567
  %19 = load float* %1, align 4, !dbg !1567
  %20 = load float* %2, align 4, !dbg !1567
  %21 = fcmp oge float %19, %20, !dbg !1567
  %22 = zext i1 %21 to i32, !dbg !1567
  %23 = load float* %1, align 4, !dbg !1567
  %24 = load float* %2, align 4, !dbg !1567
  %25 = fcmp ole float %23, %24, !dbg !1567
  %26 = zext i1 %25 to i32, !dbg !1567
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str177, i32 0, i32 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %22, i32 %26), !dbg !1567
  %28 = load float* %1, align 4, !dbg !1568
  %29 = fpext float %28 to double, !dbg !1568
  %30 = load float* %2, align 4, !dbg !1568
  %31 = fpext float %30 to double, !dbg !1568
  %32 = load float* %1, align 4, !dbg !1568
  %33 = load float* %2, align 4, !dbg !1568
  %34 = fadd float %32, %33, !dbg !1568
  %35 = fpext float %34 to double, !dbg !1568
  %36 = load float* %1, align 4, !dbg !1568
  %37 = load float* %2, align 4, !dbg !1568
  %38 = fsub float %36, %37, !dbg !1568
  %39 = fpext float %38 to double, !dbg !1568
  %40 = load float* %1, align 4, !dbg !1568
  %41 = load float* %2, align 4, !dbg !1568
  %42 = fmul float %40, %41, !dbg !1568
  %43 = fpext float %42 to double, !dbg !1568
  %44 = load float* %1, align 4, !dbg !1568
  %45 = load float* %2, align 4, !dbg !1568
  %46 = fdiv float %44, %45, !dbg !1568
  %47 = fpext float %46 to double, !dbg !1568
  %48 = load float* %1, align 4, !dbg !1568
  %49 = fsub float -0.000000e+00, %48, !dbg !1568
  %50 = fpext float %49 to double, !dbg !1568
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str178, i32 0, i32 0), double %29, double %31, double %35, double %39, double %43, double %47, double %50), !dbg !1568
  %52 = load float* %1, align 4, !dbg !1569
  %53 = fadd float %52, 1.000000e+00, !dbg !1569
  store float %53, float* %1, align 4, !dbg !1569
  %54 = fpext float %53 to double, !dbg !1569
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str179, i32 0, i32 0), double %54), !dbg !1569
  %56 = load float* %1, align 4, !dbg !1570
  %57 = fadd float %56, 1.000000e+00, !dbg !1570
  store float %57, float* %1, align 4, !dbg !1570
  %58 = fpext float %56 to double, !dbg !1570
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str179, i32 0, i32 0), double %58), !dbg !1570
  %60 = load float* %1, align 4, !dbg !1571
  %61 = fpext float %60 to double, !dbg !1571
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str179, i32 0, i32 0), double %61), !dbg !1571
  ret void, !dbg !1571
}

; Function Attrs: nounwind
define void @ffcast(float %a) #0 {
  %1 = alloca float, align 4
  %fa = alloca float, align 4
  %da = alloca double, align 8
  %la = alloca x86_fp80, align 4
  %ia = alloca i32, align 4
  %ua = alloca i32, align 4
  %b = alloca float, align 4
  store float %a, float* %1, align 4
  call void @llvm.dbg.declare(metadata !{float* %1}, metadata !1572), !dbg !1573
  call void @llvm.dbg.declare(metadata !{float* %fa}, metadata !1574), !dbg !1573
  call void @llvm.dbg.declare(metadata !{double* %da}, metadata !1575), !dbg !1573
  call void @llvm.dbg.declare(metadata !{x86_fp80* %la}, metadata !1576), !dbg !1573
  call void @llvm.dbg.declare(metadata !{i32* %ia}, metadata !1577), !dbg !1573
  call void @llvm.dbg.declare(metadata !{i32* %ua}, metadata !1578), !dbg !1573
  call void @llvm.dbg.declare(metadata !{float* %b}, metadata !1579), !dbg !1573
  %2 = load float* %1, align 4, !dbg !1573
  store float %2, float* %fa, align 4, !dbg !1573
  %3 = load float* %1, align 4, !dbg !1573
  %4 = fpext float %3 to double, !dbg !1573
  store double %4, double* %da, align 8, !dbg !1573
  %5 = load float* %1, align 4, !dbg !1573
  %6 = fpext float %5 to x86_fp80, !dbg !1573
  store x86_fp80 %6, x86_fp80* %la, align 4, !dbg !1573
  %7 = load float* %fa, align 4, !dbg !1573
  %8 = fpext float %7 to double, !dbg !1573
  %9 = load double* %da, align 8, !dbg !1573
  %10 = load x86_fp80* %la, align 4, !dbg !1573
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str180, i32 0, i32 0), double %8, double %9, x86_fp80 %10), !dbg !1573
  %12 = load float* %1, align 4, !dbg !1573
  %13 = fptosi float %12 to i32, !dbg !1573
  store i32 %13, i32* %ia, align 4, !dbg !1573
  %14 = load float* %1, align 4, !dbg !1573
  %15 = fptoui float %14 to i32, !dbg !1573
  store i32 %15, i32* %ua, align 4, !dbg !1573
  %16 = load i32* %ia, align 4, !dbg !1573
  %17 = load i32* %ua, align 4, !dbg !1573
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str181, i32 0, i32 0), i32 %16, i32 %17), !dbg !1573
  store i32 -1234, i32* %ia, align 4, !dbg !1573
  store i32 -2128395008, i32* %ua, align 4, !dbg !1573
  %19 = load i32* %ia, align 4, !dbg !1573
  %20 = sitofp i32 %19 to float, !dbg !1573
  store float %20, float* %b, align 4, !dbg !1573
  %21 = load float* %b, align 4, !dbg !1573
  %22 = fpext float %21 to double, !dbg !1573
  %23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str182, i32 0, i32 0), double %22), !dbg !1573
  %24 = load i32* %ua, align 4, !dbg !1573
  %25 = uitofp i32 %24 to float, !dbg !1573
  store float %25, float* %b, align 4, !dbg !1573
  %26 = load float* %b, align 4, !dbg !1573
  %27 = fpext float %26 to double, !dbg !1573
  %28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str183, i32 0, i32 0), double %27), !dbg !1573
  ret void, !dbg !1573
}

; Function Attrs: nounwind
define void @ftest() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str184, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str185, i32 0, i32 0)), !dbg !1580
  call void @fcmp(float 1.000000e+00, float 2.500000e+00), !dbg !1580
  call void @fcmp(float 2.000000e+00, float 1.500000e+00), !dbg !1580
  call void @fcmp(float 1.000000e+00, float 1.000000e+00), !dbg !1580
  call void @ffcast(float 0x406D533340000000), !dbg !1580
  call void @ffcast(float 0xC0A23D3340000000), !dbg !1580
  ret void, !dbg !1580
}

; Function Attrs: nounwind
define void @dcmp(double %a, double %b) #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  store double %a, double* %1, align 8
  call void @llvm.dbg.declare(metadata !{double* %1}, metadata !1581), !dbg !1582
  store double %b, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !1583), !dbg !1584
  %3 = load double* %1, align 8, !dbg !1585
  %4 = load double* %2, align 8, !dbg !1585
  %5 = fcmp oeq double %3, %4, !dbg !1585
  %6 = zext i1 %5 to i32, !dbg !1585
  %7 = load double* %1, align 8, !dbg !1585
  %8 = load double* %2, align 8, !dbg !1585
  %9 = fcmp une double %7, %8, !dbg !1585
  %10 = zext i1 %9 to i32, !dbg !1585
  %11 = load double* %1, align 8, !dbg !1585
  %12 = load double* %2, align 8, !dbg !1585
  %13 = fcmp olt double %11, %12, !dbg !1585
  %14 = zext i1 %13 to i32, !dbg !1585
  %15 = load double* %1, align 8, !dbg !1585
  %16 = load double* %2, align 8, !dbg !1585
  %17 = fcmp ogt double %15, %16, !dbg !1585
  %18 = zext i1 %17 to i32, !dbg !1585
  %19 = load double* %1, align 8, !dbg !1585
  %20 = load double* %2, align 8, !dbg !1585
  %21 = fcmp oge double %19, %20, !dbg !1585
  %22 = zext i1 %21 to i32, !dbg !1585
  %23 = load double* %1, align 8, !dbg !1585
  %24 = load double* %2, align 8, !dbg !1585
  %25 = fcmp ole double %23, %24, !dbg !1585
  %26 = zext i1 %25 to i32, !dbg !1585
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str177, i32 0, i32 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %22, i32 %26), !dbg !1585
  %28 = load double* %1, align 8, !dbg !1586
  %29 = load double* %2, align 8, !dbg !1586
  %30 = load double* %1, align 8, !dbg !1586
  %31 = load double* %2, align 8, !dbg !1586
  %32 = fadd double %30, %31, !dbg !1586
  %33 = load double* %1, align 8, !dbg !1586
  %34 = load double* %2, align 8, !dbg !1586
  %35 = fsub double %33, %34, !dbg !1586
  %36 = load double* %1, align 8, !dbg !1586
  %37 = load double* %2, align 8, !dbg !1586
  %38 = fmul double %36, %37, !dbg !1586
  %39 = load double* %1, align 8, !dbg !1586
  %40 = load double* %2, align 8, !dbg !1586
  %41 = fdiv double %39, %40, !dbg !1586
  %42 = load double* %1, align 8, !dbg !1586
  %43 = fsub double -0.000000e+00, %42, !dbg !1586
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str178, i32 0, i32 0), double %28, double %29, double %32, double %35, double %38, double %41, double %43), !dbg !1586
  %45 = load double* %1, align 8, !dbg !1587
  %46 = fadd double %45, 1.000000e+00, !dbg !1587
  store double %46, double* %1, align 8, !dbg !1587
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str179, i32 0, i32 0), double %46), !dbg !1587
  %48 = load double* %1, align 8, !dbg !1588
  %49 = fadd double %48, 1.000000e+00, !dbg !1588
  store double %49, double* %1, align 8, !dbg !1588
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str179, i32 0, i32 0), double %48), !dbg !1588
  %51 = load double* %1, align 8, !dbg !1589
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str179, i32 0, i32 0), double %51), !dbg !1589
  ret void, !dbg !1589
}

; Function Attrs: nounwind
define void @dfcast(double %a) #0 {
  %1 = alloca double, align 8
  %fa = alloca float, align 4
  %da = alloca double, align 8
  %la = alloca x86_fp80, align 4
  %ia = alloca i32, align 4
  %ua = alloca i32, align 4
  %b = alloca double, align 8
  store double %a, double* %1, align 8
  call void @llvm.dbg.declare(metadata !{double* %1}, metadata !1590), !dbg !1591
  call void @llvm.dbg.declare(metadata !{float* %fa}, metadata !1592), !dbg !1591
  call void @llvm.dbg.declare(metadata !{double* %da}, metadata !1593), !dbg !1591
  call void @llvm.dbg.declare(metadata !{x86_fp80* %la}, metadata !1594), !dbg !1591
  call void @llvm.dbg.declare(metadata !{i32* %ia}, metadata !1595), !dbg !1591
  call void @llvm.dbg.declare(metadata !{i32* %ua}, metadata !1596), !dbg !1591
  call void @llvm.dbg.declare(metadata !{double* %b}, metadata !1597), !dbg !1591
  %2 = load double* %1, align 8, !dbg !1591
  %3 = fptrunc double %2 to float, !dbg !1591
  store float %3, float* %fa, align 4, !dbg !1591
  %4 = load double* %1, align 8, !dbg !1591
  store double %4, double* %da, align 8, !dbg !1591
  %5 = load double* %1, align 8, !dbg !1591
  %6 = fpext double %5 to x86_fp80, !dbg !1591
  store x86_fp80 %6, x86_fp80* %la, align 4, !dbg !1591
  %7 = load float* %fa, align 4, !dbg !1591
  %8 = fpext float %7 to double, !dbg !1591
  %9 = load double* %da, align 8, !dbg !1591
  %10 = load x86_fp80* %la, align 4, !dbg !1591
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str180, i32 0, i32 0), double %8, double %9, x86_fp80 %10), !dbg !1591
  %12 = load double* %1, align 8, !dbg !1591
  %13 = fptosi double %12 to i32, !dbg !1591
  store i32 %13, i32* %ia, align 4, !dbg !1591
  %14 = load double* %1, align 8, !dbg !1591
  %15 = fptoui double %14 to i32, !dbg !1591
  store i32 %15, i32* %ua, align 4, !dbg !1591
  %16 = load i32* %ia, align 4, !dbg !1591
  %17 = load i32* %ua, align 4, !dbg !1591
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str181, i32 0, i32 0), i32 %16, i32 %17), !dbg !1591
  store i32 -1234, i32* %ia, align 4, !dbg !1591
  store i32 -2128395008, i32* %ua, align 4, !dbg !1591
  %19 = load i32* %ia, align 4, !dbg !1591
  %20 = sitofp i32 %19 to double, !dbg !1591
  store double %20, double* %b, align 8, !dbg !1591
  %21 = load double* %b, align 8, !dbg !1591
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str182, i32 0, i32 0), double %21), !dbg !1591
  %23 = load i32* %ua, align 4, !dbg !1591
  %24 = uitofp i32 %23 to double, !dbg !1591
  store double %24, double* %b, align 8, !dbg !1591
  %25 = load double* %b, align 8, !dbg !1591
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str183, i32 0, i32 0), double %25), !dbg !1591
  ret void, !dbg !1591
}

; Function Attrs: nounwind
define void @dtest() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str184, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str186, i32 0, i32 0)), !dbg !1598
  call void @dcmp(double 1.000000e+00, double 2.500000e+00), !dbg !1598
  call void @dcmp(double 2.000000e+00, double 1.500000e+00), !dbg !1598
  call void @dcmp(double 1.000000e+00, double 1.000000e+00), !dbg !1598
  call void @dfcast(double 2.346000e+02), !dbg !1598
  call void @dfcast(double -2.334600e+03), !dbg !1598
  ret void, !dbg !1598
}

; Function Attrs: nounwind
define void @ldcmp(x86_fp80 %a, x86_fp80 %b) #0 {
  %1 = alloca x86_fp80, align 4
  %2 = alloca x86_fp80, align 4
  store x86_fp80 %a, x86_fp80* %1, align 4
  call void @llvm.dbg.declare(metadata !{x86_fp80* %1}, metadata !1599), !dbg !1600
  store x86_fp80 %b, x86_fp80* %2, align 4
  call void @llvm.dbg.declare(metadata !{x86_fp80* %2}, metadata !1601), !dbg !1602
  %3 = load x86_fp80* %1, align 4, !dbg !1603
  %4 = load x86_fp80* %2, align 4, !dbg !1603
  %5 = fcmp oeq x86_fp80 %3, %4, !dbg !1603
  %6 = zext i1 %5 to i32, !dbg !1603
  %7 = load x86_fp80* %1, align 4, !dbg !1603
  %8 = load x86_fp80* %2, align 4, !dbg !1603
  %9 = fcmp une x86_fp80 %7, %8, !dbg !1603
  %10 = zext i1 %9 to i32, !dbg !1603
  %11 = load x86_fp80* %1, align 4, !dbg !1603
  %12 = load x86_fp80* %2, align 4, !dbg !1603
  %13 = fcmp olt x86_fp80 %11, %12, !dbg !1603
  %14 = zext i1 %13 to i32, !dbg !1603
  %15 = load x86_fp80* %1, align 4, !dbg !1603
  %16 = load x86_fp80* %2, align 4, !dbg !1603
  %17 = fcmp ogt x86_fp80 %15, %16, !dbg !1603
  %18 = zext i1 %17 to i32, !dbg !1603
  %19 = load x86_fp80* %1, align 4, !dbg !1603
  %20 = load x86_fp80* %2, align 4, !dbg !1603
  %21 = fcmp oge x86_fp80 %19, %20, !dbg !1603
  %22 = zext i1 %21 to i32, !dbg !1603
  %23 = load x86_fp80* %1, align 4, !dbg !1603
  %24 = load x86_fp80* %2, align 4, !dbg !1603
  %25 = fcmp ole x86_fp80 %23, %24, !dbg !1603
  %26 = zext i1 %25 to i32, !dbg !1603
  %27 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str177, i32 0, i32 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %22, i32 %26), !dbg !1603
  %28 = load x86_fp80* %1, align 4, !dbg !1604
  %29 = load x86_fp80* %2, align 4, !dbg !1604
  %30 = load x86_fp80* %1, align 4, !dbg !1604
  %31 = load x86_fp80* %2, align 4, !dbg !1604
  %32 = fadd x86_fp80 %30, %31, !dbg !1604
  %33 = load x86_fp80* %1, align 4, !dbg !1604
  %34 = load x86_fp80* %2, align 4, !dbg !1604
  %35 = fsub x86_fp80 %33, %34, !dbg !1604
  %36 = load x86_fp80* %1, align 4, !dbg !1604
  %37 = load x86_fp80* %2, align 4, !dbg !1604
  %38 = fmul x86_fp80 %36, %37, !dbg !1604
  %39 = load x86_fp80* %1, align 4, !dbg !1604
  %40 = load x86_fp80* %2, align 4, !dbg !1604
  %41 = fdiv x86_fp80 %39, %40, !dbg !1604
  %42 = load x86_fp80* %1, align 4, !dbg !1604
  %43 = fsub x86_fp80 0xK80000000000000000000, %42, !dbg !1604
  %44 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([29 x i8]* @.str187, i32 0, i32 0), x86_fp80 %28, x86_fp80 %29, x86_fp80 %32, x86_fp80 %35, x86_fp80 %38, x86_fp80 %41, x86_fp80 %43), !dbg !1604
  %45 = load x86_fp80* %1, align 4, !dbg !1605
  %46 = fadd x86_fp80 %45, 0xK3FFF8000000000000000, !dbg !1605
  store x86_fp80 %46, x86_fp80* %1, align 4, !dbg !1605
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str188, i32 0, i32 0), x86_fp80 %46), !dbg !1605
  %48 = load x86_fp80* %1, align 4, !dbg !1606
  %49 = fadd x86_fp80 %48, 0xK3FFF8000000000000000, !dbg !1606
  store x86_fp80 %49, x86_fp80* %1, align 4, !dbg !1606
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str188, i32 0, i32 0), x86_fp80 %48), !dbg !1606
  %51 = load x86_fp80* %1, align 4, !dbg !1606
  %52 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str188, i32 0, i32 0), x86_fp80 %51), !dbg !1606
  ret void, !dbg !1606
}

; Function Attrs: nounwind
define void @ldfcast(x86_fp80 %a) #0 {
  %1 = alloca x86_fp80, align 4
  %fa = alloca float, align 4
  %da = alloca double, align 8
  %la = alloca x86_fp80, align 4
  %ia = alloca i32, align 4
  %ua = alloca i32, align 4
  %b = alloca x86_fp80, align 4
  store x86_fp80 %a, x86_fp80* %1, align 4
  call void @llvm.dbg.declare(metadata !{x86_fp80* %1}, metadata !1607), !dbg !1608
  call void @llvm.dbg.declare(metadata !{float* %fa}, metadata !1609), !dbg !1608
  call void @llvm.dbg.declare(metadata !{double* %da}, metadata !1610), !dbg !1608
  call void @llvm.dbg.declare(metadata !{x86_fp80* %la}, metadata !1611), !dbg !1608
  call void @llvm.dbg.declare(metadata !{i32* %ia}, metadata !1612), !dbg !1608
  call void @llvm.dbg.declare(metadata !{i32* %ua}, metadata !1613), !dbg !1608
  call void @llvm.dbg.declare(metadata !{x86_fp80* %b}, metadata !1614), !dbg !1608
  %2 = load x86_fp80* %1, align 4, !dbg !1608
  %3 = fptrunc x86_fp80 %2 to float, !dbg !1608
  store float %3, float* %fa, align 4, !dbg !1608
  %4 = load x86_fp80* %1, align 4, !dbg !1608
  %5 = fptrunc x86_fp80 %4 to double, !dbg !1608
  store double %5, double* %da, align 8, !dbg !1608
  %6 = load x86_fp80* %1, align 4, !dbg !1608
  store x86_fp80 %6, x86_fp80* %la, align 4, !dbg !1608
  %7 = load float* %fa, align 4, !dbg !1608
  %8 = fpext float %7 to double, !dbg !1608
  %9 = load double* %da, align 8, !dbg !1608
  %10 = load x86_fp80* %la, align 4, !dbg !1608
  %11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str180, i32 0, i32 0), double %8, double %9, x86_fp80 %10), !dbg !1608
  %12 = load x86_fp80* %1, align 4, !dbg !1608
  %13 = fptosi x86_fp80 %12 to i32, !dbg !1608
  store i32 %13, i32* %ia, align 4, !dbg !1608
  %14 = load x86_fp80* %1, align 4, !dbg !1608
  %15 = fptoui x86_fp80 %14 to i32, !dbg !1608
  store i32 %15, i32* %ua, align 4, !dbg !1608
  %16 = load i32* %ia, align 4, !dbg !1608
  %17 = load i32* %ua, align 4, !dbg !1608
  %18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str181, i32 0, i32 0), i32 %16, i32 %17), !dbg !1608
  store i32 -1234, i32* %ia, align 4, !dbg !1608
  store i32 -2128395008, i32* %ua, align 4, !dbg !1608
  %19 = load i32* %ia, align 4, !dbg !1608
  %20 = sitofp i32 %19 to x86_fp80, !dbg !1608
  store x86_fp80 %20, x86_fp80* %b, align 4, !dbg !1608
  %21 = load x86_fp80* %b, align 4, !dbg !1608
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str189, i32 0, i32 0), x86_fp80 %21), !dbg !1608
  %23 = load i32* %ua, align 4, !dbg !1608
  %24 = uitofp i32 %23 to x86_fp80, !dbg !1608
  store x86_fp80 %24, x86_fp80* %b, align 4, !dbg !1608
  %25 = load x86_fp80* %b, align 4, !dbg !1608
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str190, i32 0, i32 0), x86_fp80 %25), !dbg !1608
  ret void, !dbg !1608
}

; Function Attrs: nounwind
define void @ldtest() #0 {
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str184, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str191, i32 0, i32 0)), !dbg !1615
  call void @ldcmp(x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK4000A000000000000000), !dbg !1615
  call void @ldcmp(x86_fp80 0xK40008000000000000000, x86_fp80 0xK3FFFC000000000000000), !dbg !1615
  call void @ldcmp(x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK3FFF8000000000000000), !dbg !1615
  call void @ldfcast(x86_fp80 0xK4006EA99999999999800), !dbg !1615
  call void @ldfcast(x86_fp80 0xKC00A91E9999999999800), !dbg !1615
  ret void, !dbg !1615
}

; Function Attrs: nounwind
define void @funcptr_test() #0 {
  %func = alloca void (i32)*, align 4
  %a = alloca i32, align 4
  %st1 = alloca %struct.anon.0, align 4
  call void @llvm.dbg.declare(metadata !{void (i32)** %func}, metadata !1616), !dbg !1618
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1619), !dbg !1620
  call void @llvm.dbg.declare(metadata !{%struct.anon.0* %st1}, metadata !1621), !dbg !1626
  %1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str201, i32 0, i32 0)), !dbg !1627
  store void (i32)* @num, void (i32)** %func, align 4, !dbg !1628
  %2 = load void (i32)** %func, align 4, !dbg !1629
  call void %2(i32 12345), !dbg !1629
  store void (i32)* @num, void (i32)** %func, align 4, !dbg !1630
  store i32 1, i32* %a, align 4, !dbg !1631
  store i32 1, i32* %a, align 4, !dbg !1632
  %3 = load void (i32)** %func, align 4, !dbg !1633
  call void %3(i32 12345), !dbg !1633
  %4 = getelementptr inbounds %struct.anon.0* %st1, i32 0, i32 1, !dbg !1634
  store void (i32)* @num, void (i32)** %4, align 4, !dbg !1634
  %5 = getelementptr inbounds %struct.anon.0* %st1, i32 0, i32 1, !dbg !1635
  %6 = load void (i32)** %5, align 4, !dbg !1635
  call void %6(i32 12346), !dbg !1635
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str202, i32 0, i32 0), i32 1), !dbg !1636
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str203, i32 0, i32 0), i32 1), !dbg !1637
  %9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str204, i32 0, i32 0), i32 4), !dbg !1638
  %10 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str205, i32 0, i32 0), i32 4), !dbg !1639
  ret void, !dbg !1640
}

; Function Attrs: nounwind
define void @lloptest(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %ua = alloca i64, align 8
  %ub = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !1641), !dbg !1642
  store i64 %b, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !1643), !dbg !1644
  call void @llvm.dbg.declare(metadata !{i64* %ua}, metadata !1645), !dbg !1646
  call void @llvm.dbg.declare(metadata !{i64* %ub}, metadata !1647), !dbg !1648
  %3 = load i64* %1, align 8, !dbg !1649
  store i64 %3, i64* %ua, align 8, !dbg !1649
  %4 = load i64* %2, align 8, !dbg !1650
  store i64 %4, i64* %ub, align 8, !dbg !1650
  %5 = load i64* %1, align 8, !dbg !1651
  %6 = load i64* %2, align 8, !dbg !1651
  %7 = add nsw i64 %5, %6, !dbg !1651
  %8 = load i64* %1, align 8, !dbg !1651
  %9 = load i64* %2, align 8, !dbg !1651
  %10 = sub nsw i64 %8, %9, !dbg !1651
  %11 = load i64* %1, align 8, !dbg !1651
  %12 = load i64* %2, align 8, !dbg !1651
  %13 = mul nsw i64 %11, %12, !dbg !1651
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str206, i32 0, i32 0), i64 %7, i64 %10, i64 %13), !dbg !1651
  %15 = load i64* %2, align 8, !dbg !1652
  %16 = icmp ne i64 %15, 0, !dbg !1652
  br i1 %16, label %17, label %25, !dbg !1652

; <label>:17                                      ; preds = %0
  %18 = load i64* %1, align 8, !dbg !1654
  %19 = load i64* %2, align 8, !dbg !1654
  %20 = sdiv i64 %18, %19, !dbg !1654
  %21 = load i64* %1, align 8, !dbg !1654
  %22 = load i64* %2, align 8, !dbg !1654
  %23 = srem i64 %21, %22, !dbg !1654
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str207, i32 0, i32 0), i64 %20, i64 %23), !dbg !1654
  br label %25, !dbg !1656

; <label>:25                                      ; preds = %17, %0
  %26 = load i64* %1, align 8, !dbg !1657
  %27 = load i64* %2, align 8, !dbg !1657
  %28 = and i64 %26, %27, !dbg !1657
  %29 = load i64* %1, align 8, !dbg !1657
  %30 = load i64* %2, align 8, !dbg !1657
  %31 = or i64 %29, %30, !dbg !1657
  %32 = load i64* %1, align 8, !dbg !1657
  %33 = load i64* %2, align 8, !dbg !1657
  %34 = xor i64 %32, %33, !dbg !1657
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str208, i32 0, i32 0), i64 %28, i64 %31, i64 %34), !dbg !1657
  %36 = load i64* %1, align 8, !dbg !1658
  %37 = load i64* %2, align 8, !dbg !1658
  %38 = icmp eq i64 %36, %37, !dbg !1658
  %39 = zext i1 %38 to i32, !dbg !1658
  %40 = load i64* %1, align 8, !dbg !1658
  %41 = load i64* %2, align 8, !dbg !1658
  %42 = icmp ne i64 %40, %41, !dbg !1658
  %43 = zext i1 %42 to i32, !dbg !1658
  %44 = load i64* %1, align 8, !dbg !1658
  %45 = load i64* %2, align 8, !dbg !1658
  %46 = icmp slt i64 %44, %45, !dbg !1658
  %47 = zext i1 %46 to i32, !dbg !1658
  %48 = load i64* %1, align 8, !dbg !1658
  %49 = load i64* %2, align 8, !dbg !1658
  %50 = icmp sgt i64 %48, %49, !dbg !1658
  %51 = zext i1 %50 to i32, !dbg !1658
  %52 = load i64* %1, align 8, !dbg !1658
  %53 = load i64* %2, align 8, !dbg !1658
  %54 = icmp sge i64 %52, %53, !dbg !1658
  %55 = zext i1 %54 to i32, !dbg !1658
  %56 = load i64* %1, align 8, !dbg !1658
  %57 = load i64* %2, align 8, !dbg !1658
  %58 = icmp sle i64 %56, %57, !dbg !1658
  %59 = zext i1 %58 to i32, !dbg !1658
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str209, i32 0, i32 0), i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59), !dbg !1658
  %61 = load i64* %ua, align 8, !dbg !1659
  %62 = load i64* %ub, align 8, !dbg !1659
  %63 = icmp eq i64 %61, %62, !dbg !1659
  %64 = zext i1 %63 to i32, !dbg !1659
  %65 = load i64* %ua, align 8, !dbg !1659
  %66 = load i64* %ub, align 8, !dbg !1659
  %67 = icmp ne i64 %65, %66, !dbg !1659
  %68 = zext i1 %67 to i32, !dbg !1659
  %69 = load i64* %ua, align 8, !dbg !1659
  %70 = load i64* %ub, align 8, !dbg !1659
  %71 = icmp ult i64 %69, %70, !dbg !1659
  %72 = zext i1 %71 to i32, !dbg !1659
  %73 = load i64* %ua, align 8, !dbg !1659
  %74 = load i64* %ub, align 8, !dbg !1659
  %75 = icmp ugt i64 %73, %74, !dbg !1659
  %76 = zext i1 %75 to i32, !dbg !1659
  %77 = load i64* %ua, align 8, !dbg !1659
  %78 = load i64* %ub, align 8, !dbg !1659
  %79 = icmp uge i64 %77, %78, !dbg !1659
  %80 = zext i1 %79 to i32, !dbg !1659
  %81 = load i64* %ua, align 8, !dbg !1659
  %82 = load i64* %ub, align 8, !dbg !1659
  %83 = icmp ule i64 %81, %82, !dbg !1659
  %84 = zext i1 %83 to i32, !dbg !1659
  %85 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str210, i32 0, i32 0), i32 %64, i32 %68, i32 %72, i32 %76, i32 %80, i32 %84), !dbg !1659
  %86 = load i64* %1, align 8, !dbg !1660
  %87 = add nsw i64 %86, 1, !dbg !1660
  store i64 %87, i64* %1, align 8, !dbg !1660
  %88 = load i64* %2, align 8, !dbg !1661
  %89 = add nsw i64 %88, 1, !dbg !1661
  store i64 %89, i64* %2, align 8, !dbg !1661
  %90 = load i64* %1, align 8, !dbg !1662
  %91 = load i64* %2, align 8, !dbg !1662
  %92 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str211, i32 0, i32 0), i64 %90, i64 %91), !dbg !1662
  %93 = load i64* %1, align 8, !dbg !1663
  %94 = add nsw i64 %93, 1, !dbg !1663
  store i64 %94, i64* %1, align 8, !dbg !1663
  %95 = load i64* %2, align 8, !dbg !1663
  %96 = add nsw i64 %95, 1, !dbg !1663
  store i64 %96, i64* %2, align 8, !dbg !1663
  %97 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str211, i32 0, i32 0), i64 %93, i64 %95), !dbg !1663
  %98 = load i64* %1, align 8, !dbg !1664
  %99 = add nsw i64 %98, -1, !dbg !1664
  store i64 %99, i64* %1, align 8, !dbg !1664
  %100 = load i64* %2, align 8, !dbg !1664
  %101 = add nsw i64 %100, -1, !dbg !1664
  store i64 %101, i64* %2, align 8, !dbg !1664
  %102 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str211, i32 0, i32 0), i64 %99, i64 %101), !dbg !1664
  %103 = load i64* %1, align 8, !dbg !1665
  %104 = load i64* %2, align 8, !dbg !1665
  %105 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str211, i32 0, i32 0), i64 %103, i64 %104), !dbg !1665
  ret void, !dbg !1666
}

; Function Attrs: nounwind
define void @llshift(i64 %a, i32 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 %a, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !1667), !dbg !1668
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1669), !dbg !1670
  %3 = load i64* %1, align 8, !dbg !1671
  %4 = load i32* %2, align 4, !dbg !1671
  %5 = zext i32 %4 to i64, !dbg !1671
  %6 = lshr i64 %3, %5, !dbg !1671
  %7 = load i64* %1, align 8, !dbg !1671
  %8 = load i32* %2, align 4, !dbg !1671
  %9 = zext i32 %8 to i64, !dbg !1671
  %10 = ashr i64 %7, %9, !dbg !1671
  %11 = load i64* %1, align 8, !dbg !1671
  %12 = load i32* %2, align 4, !dbg !1671
  %13 = zext i32 %12 to i64, !dbg !1671
  %14 = shl i64 %11, %13, !dbg !1671
  %15 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str212, i32 0, i32 0), i64 %6, i64 %10, i64 %14), !dbg !1671
  %16 = load i64* %1, align 8, !dbg !1672
  %17 = lshr i64 %16, 3, !dbg !1672
  %18 = load i64* %1, align 8, !dbg !1672
  %19 = ashr i64 %18, 3, !dbg !1672
  %20 = load i64* %1, align 8, !dbg !1672
  %21 = shl i64 %20, 3, !dbg !1672
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str213, i32 0, i32 0), i64 %17, i64 %19, i64 %21), !dbg !1672
  %23 = load i64* %1, align 8, !dbg !1673
  %24 = lshr i64 %23, 35, !dbg !1673
  %25 = load i64* %1, align 8, !dbg !1673
  %26 = ashr i64 %25, 35, !dbg !1673
  %27 = load i64* %1, align 8, !dbg !1673
  %28 = shl i64 %27, 35, !dbg !1673
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str213, i32 0, i32 0), i64 %24, i64 %26, i64 %28), !dbg !1673
  ret void, !dbg !1674
}

; Function Attrs: nounwind
define void @llfloat() #0 {
  %fa = alloca float, align 4
  %da = alloca double, align 8
  %lda = alloca x86_fp80, align 4
  %la = alloca i64, align 8
  %lb = alloca i64, align 8
  %lc = alloca i64, align 8
  %ula = alloca i64, align 8
  %ulb = alloca i64, align 8
  %ulc = alloca i64, align 8
  call void @llvm.dbg.declare(metadata !{float* %fa}, metadata !1675), !dbg !1676
  call void @llvm.dbg.declare(metadata !{double* %da}, metadata !1677), !dbg !1678
  call void @llvm.dbg.declare(metadata !{x86_fp80* %lda}, metadata !1679), !dbg !1680
  call void @llvm.dbg.declare(metadata !{i64* %la}, metadata !1681), !dbg !1682
  call void @llvm.dbg.declare(metadata !{i64* %lb}, metadata !1683), !dbg !1684
  call void @llvm.dbg.declare(metadata !{i64* %lc}, metadata !1685), !dbg !1686
  call void @llvm.dbg.declare(metadata !{i64* %ula}, metadata !1687), !dbg !1688
  call void @llvm.dbg.declare(metadata !{i64* %ulb}, metadata !1689), !dbg !1690
  call void @llvm.dbg.declare(metadata !{i64* %ulc}, metadata !1691), !dbg !1692
  store i64 305419896, i64* %la, align 8, !dbg !1693
  store i64 1916032632, i64* %ula, align 8, !dbg !1694
  %1 = load i64* %la, align 8, !dbg !1695
  %2 = shl i64 %1, 20, !dbg !1695
  %3 = or i64 %2, 74565, !dbg !1695
  store i64 %3, i64* %la, align 8, !dbg !1695
  %4 = load i64* %ula, align 8, !dbg !1696
  %5 = shl i64 %4, 33, !dbg !1696
  store i64 %5, i64* %ula, align 8, !dbg !1696
  %6 = load i64* %la, align 8, !dbg !1697
  %7 = load i64* %ula, align 8, !dbg !1697
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str214, i32 0, i32 0), i64 %6, i64 %7), !dbg !1697
  %9 = load i64* %la, align 8, !dbg !1698
  %10 = sitofp i64 %9 to float, !dbg !1698
  store float %10, float* %fa, align 4, !dbg !1698
  %11 = load i64* %la, align 8, !dbg !1699
  %12 = sitofp i64 %11 to double, !dbg !1699
  store double %12, double* %da, align 8, !dbg !1699
  %13 = load i64* %la, align 8, !dbg !1700
  %14 = sitofp i64 %13 to x86_fp80, !dbg !1700
  store x86_fp80 %14, x86_fp80* %lda, align 4, !dbg !1700
  %15 = load float* %fa, align 4, !dbg !1701
  %16 = fpext float %15 to double, !dbg !1701
  %17 = load double* %da, align 8, !dbg !1701
  %18 = load x86_fp80* %lda, align 4, !dbg !1701
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str215, i32 0, i32 0), double %16, double %17, x86_fp80 %18), !dbg !1701
  %20 = load float* %fa, align 4, !dbg !1702
  %21 = fptosi float %20 to i64, !dbg !1702
  store i64 %21, i64* %la, align 8, !dbg !1702
  %22 = load double* %da, align 8, !dbg !1703
  %23 = fptosi double %22 to i64, !dbg !1703
  store i64 %23, i64* %lb, align 8, !dbg !1703
  %24 = load x86_fp80* %lda, align 4, !dbg !1704
  %25 = fptosi x86_fp80 %24 to i64, !dbg !1704
  store i64 %25, i64* %lc, align 8, !dbg !1704
  %26 = load i64* %la, align 8, !dbg !1705
  %27 = load i64* %lb, align 8, !dbg !1705
  %28 = load i64* %lc, align 8, !dbg !1705
  %29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([20 x i8]* @.str216, i32 0, i32 0), i64 %26, i64 %27, i64 %28), !dbg !1705
  %30 = load i64* %ula, align 8, !dbg !1706
  %31 = uitofp i64 %30 to float, !dbg !1706
  store float %31, float* %fa, align 4, !dbg !1706
  %32 = load i64* %ula, align 8, !dbg !1707
  %33 = uitofp i64 %32 to double, !dbg !1707
  store double %33, double* %da, align 8, !dbg !1707
  %34 = load i64* %ula, align 8, !dbg !1708
  %35 = uitofp i64 %34 to x86_fp80, !dbg !1708
  store x86_fp80 %35, x86_fp80* %lda, align 4, !dbg !1708
  %36 = load float* %fa, align 4, !dbg !1709
  %37 = fpext float %36 to double, !dbg !1709
  %38 = load double* %da, align 8, !dbg !1709
  %39 = load x86_fp80* %lda, align 4, !dbg !1709
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str217, i32 0, i32 0), double %37, double %38, x86_fp80 %39), !dbg !1709
  %41 = load float* %fa, align 4, !dbg !1710
  %42 = fptoui float %41 to i64, !dbg !1710
  store i64 %42, i64* %ula, align 8, !dbg !1710
  %43 = load double* %da, align 8, !dbg !1711
  %44 = fptoui double %43 to i64, !dbg !1711
  store i64 %44, i64* %ulb, align 8, !dbg !1711
  %45 = load x86_fp80* %lda, align 4, !dbg !1712
  %46 = fptoui x86_fp80 %45 to i64, !dbg !1712
  store i64 %46, i64* %ulc, align 8, !dbg !1712
  %47 = load i64* %ula, align 8, !dbg !1713
  %48 = load i64* %ulb, align 8, !dbg !1713
  %49 = load i64* %ulc, align 8, !dbg !1713
  %50 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str218, i32 0, i32 0), i64 %47, i64 %48, i64 %49), !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: nounwind
define i64 @llfunc1(i32 %a) #0 {
  %1 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1715), !dbg !1716
  %2 = load i32* %1, align 4, !dbg !1717
  %3 = mul nsw i32 %2, 2, !dbg !1717
  %4 = sext i32 %3 to i64, !dbg !1717
  ret i64 %4, !dbg !1717
}

; Function Attrs: nounwind
define i64 @value(%struct.S* %v) #0 {
  %1 = alloca %struct.S*, align 4
  store %struct.S* %v, %struct.S** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.S** %1}, metadata !1718), !dbg !1719
  %2 = load %struct.S** %1, align 4, !dbg !1720
  %3 = getelementptr inbounds %struct.S* %2, i32 0, i32 1, !dbg !1720
  %4 = load i8* %3, align 1, !dbg !1720
  %5 = sext i8 %4 to i64, !dbg !1720
  ret i64 %5, !dbg !1720
}

; Function Attrs: nounwind
define void @putchar(i8 signext %c) #0 {
  %1 = alloca i8, align 1
  store i8 %c, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !1721), !dbg !1722
  ret void, !dbg !1723
}

; Function Attrs: nounwind
define void @vprintf1(i8* %fmt, ...) #0 {
  %1 = alloca i8*, align 4
  %ap = alloca i8*, align 4
  %p = alloca i8*, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %ll = alloca i64, align 8
  store i8* %fmt, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !1724), !dbg !1725
  call void @llvm.dbg.declare(metadata !{i8** %ap}, metadata !1726), !dbg !1728
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1729), !dbg !1730
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1731), !dbg !1732
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1733), !dbg !1734
  call void @llvm.dbg.declare(metadata !{double* %d}, metadata !1735), !dbg !1736
  call void @llvm.dbg.declare(metadata !{i64* %ll}, metadata !1737), !dbg !1738
  %2 = bitcast i8** %1 to i8*, !dbg !1739
  %3 = getelementptr inbounds i8* %2, i32 4, !dbg !1739
  store i8* %3, i8** %ap, align 4, !dbg !1739
  %4 = load i8** %1, align 4, !dbg !1740
  store i8* %4, i8** %p, align 4, !dbg !1740
  br label %5, !dbg !1741

; <label>:5                                       ; preds = %56, %0
  %6 = load i8** %p, align 4, !dbg !1743
  %7 = load i8* %6, align 1, !dbg !1743
  %8 = sext i8 %7 to i32, !dbg !1743
  store i32 %8, i32* %c, align 4, !dbg !1743
  %9 = load i32* %c, align 4, !dbg !1745
  %10 = icmp eq i32 %9, 0, !dbg !1745
  br i1 %10, label %11, label %12, !dbg !1745

; <label>:11                                      ; preds = %5
  br label %57, !dbg !1747

; <label>:12                                      ; preds = %5
  %13 = load i8** %p, align 4, !dbg !1748
  %14 = getelementptr inbounds i8* %13, i32 1, !dbg !1748
  store i8* %14, i8** %p, align 4, !dbg !1748
  %15 = load i32* %c, align 4, !dbg !1749
  %16 = icmp eq i32 %15, 37, !dbg !1749
  br i1 %16, label %17, label %53, !dbg !1749

; <label>:17                                      ; preds = %12
  %18 = load i8** %p, align 4, !dbg !1751
  %19 = load i8* %18, align 1, !dbg !1751
  %20 = sext i8 %19 to i32, !dbg !1751
  store i32 %20, i32* %c, align 4, !dbg !1751
  %21 = load i32* %c, align 4, !dbg !1753
  switch i32 %21, label %50 [
    i32 0, label %22
    i32 100, label %23
    i32 102, label %32
    i32 108, label %41
  ], !dbg !1753

; <label>:22                                      ; preds = %17
  br label %58, !dbg !1754

; <label>:23                                      ; preds = %17
  %24 = load i8** %ap, align 4, !dbg !1756
  %25 = getelementptr inbounds i8* %24, i32 4, !dbg !1756
  store i8* %25, i8** %ap, align 4, !dbg !1756
  %26 = load i8** %ap, align 4, !dbg !1756
  %27 = getelementptr inbounds i8* %26, i32 -4, !dbg !1756
  %28 = bitcast i8* %27 to i32*, !dbg !1756
  %29 = load i32* %28, align 4, !dbg !1756
  store i32 %29, i32* %i, align 4, !dbg !1756
  %30 = load i32* %i, align 4, !dbg !1757
  %31 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i32 %30), !dbg !1757
  br label %50, !dbg !1758

; <label>:32                                      ; preds = %17
  %33 = load i8** %ap, align 4, !dbg !1759
  %34 = getelementptr inbounds i8* %33, i32 8, !dbg !1759
  store i8* %34, i8** %ap, align 4, !dbg !1759
  %35 = load i8** %ap, align 4, !dbg !1759
  %36 = getelementptr inbounds i8* %35, i32 -8, !dbg !1759
  %37 = bitcast i8* %36 to double*, !dbg !1759
  %38 = load double* %37, align 4, !dbg !1759
  store double %38, double* %d, align 8, !dbg !1759
  %39 = load double* %d, align 8, !dbg !1760
  %40 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str226, i32 0, i32 0), double %39), !dbg !1760
  br label %50, !dbg !1761

; <label>:41                                      ; preds = %17
  %42 = load i8** %ap, align 4, !dbg !1762
  %43 = getelementptr inbounds i8* %42, i32 8, !dbg !1762
  store i8* %43, i8** %ap, align 4, !dbg !1762
  %44 = load i8** %ap, align 4, !dbg !1762
  %45 = getelementptr inbounds i8* %44, i32 -8, !dbg !1762
  %46 = bitcast i8* %45 to i64*, !dbg !1762
  %47 = load i64* %46, align 4, !dbg !1762
  store i64 %47, i64* %ll, align 8, !dbg !1762
  %48 = load i64* %ll, align 8, !dbg !1763
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str227, i32 0, i32 0), i64 %48), !dbg !1763
  br label %50, !dbg !1764

; <label>:50                                      ; preds = %41, %32, %23, %17
  %51 = load i8** %p, align 4, !dbg !1765
  %52 = getelementptr inbounds i8* %51, i32 1, !dbg !1765
  store i8* %52, i8** %p, align 4, !dbg !1765
  br label %56, !dbg !1766

; <label>:53                                      ; preds = %12
  %54 = load i32* %c, align 4, !dbg !1767
  %55 = trunc i32 %54 to i8, !dbg !1767
  call void @putchar(i8 signext %55), !dbg !1767
  br label %56

; <label>:56                                      ; preds = %53, %50
  br label %5, !dbg !1769

; <label>:57                                      ; preds = %11
  br label %58, !dbg !1770

; <label>:58                                      ; preds = %57, %22
  ret void, !dbg !1771
}

; Function Attrs: nounwind
define void @stdarg_test() #0 {
  call void (i8*, ...)* @vprintf1(i8* getelementptr inbounds ([10 x i8]* @.str69, i32 0, i32 0), i32 1, i32 2, i32 3), !dbg !1772
  call void (i8*, ...)* @vprintf1(i8* getelementptr inbounds ([10 x i8]* @.str228, i32 0, i32 0), double 1.000000e+00, i32 2, double 3.000000e+00), !dbg !1773
  call void (i8*, ...)* @vprintf1(i8* getelementptr inbounds ([13 x i8]* @.str229, i32 0, i32 0), i64 1234567891234, i64 987654321986, i32 3, double 1.234000e+03), !dbg !1774
  ret void, !dbg !1775
}

; Function Attrs: nounwind
define void @old_style_f(i32 %a, i32 %b, double %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1776), !dbg !1777
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1778), !dbg !1779
  store double %c, double* %3, align 8
  call void @llvm.dbg.declare(metadata !{double* %3}, metadata !1780), !dbg !1781
  %4 = load i32* %1, align 4, !dbg !1782
  %5 = load i32* %2, align 4, !dbg !1782
  %6 = load double* %3, align 8, !dbg !1782
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str233, i32 0, i32 0), i32 %4, i32 %5, double %6), !dbg !1782
  ret void, !dbg !1783
}

; Function Attrs: nounwind
define void @decl_func1(i32 (...)* %cmpfn) #0 {
  %1 = alloca i32 (...)*, align 4
  store i32 (...)* %cmpfn, i32 (...)** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32 (...)** %1}, metadata !1784), !dbg !1785
  %2 = load i32 (...)** %1, align 4, !dbg !1786
  %3 = ptrtoint i32 (...)* %2 to i32, !dbg !1786
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str234, i32 0, i32 0), i32 %3), !dbg !1786
  ret void, !dbg !1787
}

; Function Attrs: nounwind
define void @decl_func2(i32 (...)* %cmpfn) #0 {
  %1 = alloca i32 (...)*, align 4
  store i32 (...)* %cmpfn, i32 (...)** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32 (...)** %1}, metadata !1788), !dbg !1789
  %2 = load i32 (...)** %1, align 4, !dbg !1790
  %3 = ptrtoint i32 (...)* %2 to i32, !dbg !1790
  %4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str234, i32 0, i32 0), i32 %3), !dbg !1790
  ret void, !dbg !1791
}

; Function Attrs: inlinehint nounwind
define internal i8* @memcpy1(i8* %to, i8* %from, i32 %n) #4 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %d0 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  store i8* %to, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !1792), !dbg !1793
  store i8* %from, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1794), !dbg !1795
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1796), !dbg !1797
  call void @llvm.dbg.declare(metadata !{i32* %d0}, metadata !1798), !dbg !1799
  call void @llvm.dbg.declare(metadata !{i32* %d1}, metadata !1800), !dbg !1801
  call void @llvm.dbg.declare(metadata !{i32* %d2}, metadata !1802), !dbg !1803
  %4 = load i32* %3, align 4, !dbg !1804
  %5 = udiv i32 %4, 4, !dbg !1804
  %6 = load i32* %3, align 4, !dbg !1804
  %7 = load i8** %1, align 4, !dbg !1804
  %8 = ptrtoint i8* %7 to i32, !dbg !1804
  %9 = load i8** %2, align 4, !dbg !1804
  %10 = ptrtoint i8* %9 to i32, !dbg !1804
  %11 = call { i32, i32, i32 } asm sideeffect "rep ; movsl\0A\09testb $$2,${4:b}\0A\09je 1f\0A\09movsw\0A1:\09testb $$1,${4:b}\0A\09je 2f\0A\09movsb\0A2:", "=&{cx},=&{di},=&{si},0,q,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %6, i32 %8, i32 %10) #3, !dbg !1804, !srcloc !1805
  %12 = extractvalue { i32, i32, i32 } %11, 0, !dbg !1804
  %13 = extractvalue { i32, i32, i32 } %11, 1, !dbg !1804
  %14 = extractvalue { i32, i32, i32 } %11, 2, !dbg !1804
  store i32 %12, i32* %d0, align 4, !dbg !1804
  store i32 %13, i32* %d1, align 4, !dbg !1804
  store i32 %14, i32* %d2, align 4, !dbg !1804
  %15 = load i8** %1, align 4, !dbg !1806
  ret i8* %15, !dbg !1806
}

; Function Attrs: nounwind
define internal i8* @strncat1(i8* %dest, i8* %src, i32 %count) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %d0 = alloca i32, align 4
  %d1 = alloca i32, align 4
  %d2 = alloca i32, align 4
  %d3 = alloca i32, align 4
  store i8* %dest, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !1807), !dbg !1808
  store i8* %src, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1809), !dbg !1810
  store i32 %count, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1811), !dbg !1812
  call void @llvm.dbg.declare(metadata !{i32* %d0}, metadata !1813), !dbg !1814
  call void @llvm.dbg.declare(metadata !{i32* %d1}, metadata !1815), !dbg !1816
  call void @llvm.dbg.declare(metadata !{i32* %d2}, metadata !1817), !dbg !1818
  call void @llvm.dbg.declare(metadata !{i32* %d3}, metadata !1819), !dbg !1820
  %4 = load i8** %2, align 4, !dbg !1821
  %5 = load i8** %1, align 4, !dbg !1821
  %6 = load i32* %3, align 4, !dbg !1821
  %7 = call { i32, i32, i32, i32 } asm sideeffect "repne\0A\09scasb\0A\09decl $1\0A\09movl $8,$3\0A1:\09decl $3\0A\09js 2f\0A\09lodsb\0A\09stosb\0A\09testb %al,%al\0A\09jne 1b\0A2:\09xorl $2,$2\0A\09stosb", "=&{si},=&{di},=&{ax},=&{cx},0,1,2,3,imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %4, i8* %5, i32 0, i32 -1, i32 %6) #3, !dbg !1821, !srcloc !1822
  %8 = extractvalue { i32, i32, i32, i32 } %7, 0, !dbg !1821
  %9 = extractvalue { i32, i32, i32, i32 } %7, 1, !dbg !1821
  %10 = extractvalue { i32, i32, i32, i32 } %7, 2, !dbg !1821
  %11 = extractvalue { i32, i32, i32, i32 } %7, 3, !dbg !1821
  store i32 %8, i32* %d0, align 4, !dbg !1821
  store i32 %9, i32* %d1, align 4, !dbg !1821
  store i32 %10, i32* %d2, align 4, !dbg !1821
  store i32 %11, i32* %d3, align 4, !dbg !1821
  %12 = load i8** %1, align 4, !dbg !1823
  ret i8* %12, !dbg !1823
}

; Function Attrs: inlinehint nounwind
define internal i64 @mul64(i32 %a, i32 %b) #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %res = alloca i64, align 8
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1824), !dbg !1825
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1826), !dbg !1827
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !1828), !dbg !1829
  %3 = load i32* %1, align 4, !dbg !1830
  %4 = load i32* %2, align 4, !dbg !1830
  %5 = call i64 asm "mull $2", "=A,{ax},r,~{dirflag},~{fpsr},~{flags}"(i32 %3, i32 %4) #3, !dbg !1830, !srcloc !1831
  store i64 %5, i64* %res, align 8, !dbg !1830
  %6 = load i64* %res, align 8, !dbg !1832
  ret i64 %6, !dbg !1832
}

; Function Attrs: inlinehint nounwind
define internal i64 @inc64(i64 %a) #4 {
  %1 = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !1833), !dbg !1834
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !1835), !dbg !1836
  %2 = load i64* %1, align 8, !dbg !1837
  %3 = call i64 asm "addl $$1, %eax ; adcl $$0, %edx", "=A,A,~{dirflag},~{fpsr},~{flags}"(i64 %2) #3, !dbg !1837, !srcloc !1838
  store i64 %3, i64* %res, align 8, !dbg !1837
  %4 = load i64* %res, align 8, !dbg !1839
  ret i64 %4, !dbg !1839
}

; Function Attrs: inlinehint nounwind
define internal void @sigdelset1(i32* %set, i32 %_sig) #4 {
  %1 = alloca i32*, align 4
  %2 = alloca i32, align 4
  store i32* %set, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !1840), !dbg !1841
  store i32 %_sig, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1842), !dbg !1843
  %3 = load i32** %1, align 4, !dbg !1844
  %4 = load i32* %2, align 4, !dbg !1844
  %5 = sub nsw i32 %4, 1, !dbg !1844
  call void asm "btrl $1,$0", "=*m,Ir,~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %3, i32 %5) #3, !dbg !1844, !srcloc !1845
  ret void, !dbg !1846
}

; Function Attrs: inlinehint nounwind
define internal void @sigaddset1(i32* %set, i32 %_sig) #4 {
  %1 = alloca i32*, align 4
  %2 = alloca i32, align 4
  store i32* %set, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !1847), !dbg !1848
  store i32 %_sig, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1849), !dbg !1850
  %3 = load i32** %1, align 4, !dbg !1851
  %4 = load i32* %2, align 4, !dbg !1851
  %5 = sub nsw i32 %4, 1, !dbg !1851
  call void asm "btsl $1,$0", "=*m,Ir,~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %3, i32 %5) #3, !dbg !1851, !srcloc !1852
  ret void, !dbg !1853
}

; Function Attrs: inlinehint nounwind
define internal i32 @swab32(i32 %x) #4 {
  %1 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1854), !dbg !1855
  %2 = load i32* %1, align 4, !dbg !1856
  %3 = call i32 asm "xchgb ${0:b},${0:h}\0A\09rorl $$16,$0\0A\09xchgb ${0:b},${0:h}", "=q,0,~{dirflag},~{fpsr},~{flags}"(i32 %2) #3, !dbg !1856, !srcloc !1857
  store i32 %3, i32* %1, align 4, !dbg !1856
  %4 = load i32* %1, align 4, !dbg !1858
  ret i32 %4, !dbg !1858
}

; Function Attrs: nounwind
define void @const_func(i32 %a) #0 {
  %1 = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !1859), !dbg !1860
  ret void, !dbg !1861
}

; Function Attrs: nounwind
define void @const_warn_test() #0 {
  call void @const_func(i32 1), !dbg !1862
  ret void, !dbg !1863
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!298, !299}
!llvm.ident = !{!300}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !13, metadata !14, metadata !206, metadata !13, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c] [DW_LANG_C99]
!1 = metadata !{metadata !"test/tcctest_file.c", metadata !"/mnt/hgfs/sf_vm_share/Stensal/Klarum"}
!2 = metadata !{metadata !3, metadata !6}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"test", i32 369, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [test] [line 369, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786472, metadata !"E5", i64 1000} ; [ DW_TAG_enumerator ] [E5 :: 1000]
!6 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 361, i64 32, i64 32, i32 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 361, size 32, align 32, offset 0] [def] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !10, metadata !11, metadata !12}
!8 = metadata !{i32 786472, metadata !"E0", i64 0} ; [ DW_TAG_enumerator ] [E0 :: 0]
!9 = metadata !{i32 786472, metadata !"E1", i64 2} ; [ DW_TAG_enumerator ] [E1 :: 2]
!10 = metadata !{i32 786472, metadata !"E2", i64 4} ; [ DW_TAG_enumerator ] [E2 :: 4]
!11 = metadata !{i32 786472, metadata !"E3", i64 5} ; [ DW_TAG_enumerator ] [E3 :: 5]
!12 = metadata !{i32 786472, metadata !"E4", i64 6} ; [ DW_TAG_enumerator ] [E4 :: 6]
!13 = metadata !{}
!14 = metadata !{metadata !15, metadata !20, metadata !23, metadata !26, metadata !27, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !45, metadata !48, metadata !49, metadata !53, metadata !54, metadata !55, metadata !58, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !82, metadata !85, metadata !86, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !103, metadata !106, metadata !107, metadata !111, metadata !114, metadata !115, metadata !119, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !130, metadata !133, metadata !134, metadata !137, metadata !145, metadata !146, metadata !149, metadata !153, metadata !154, metadata !155, metadata !156, metadata !159, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !177, metadata !178, metadata !183, metadata !187, metadata !188, metadata !192, metadata !195, metadata !199, metadata !205}
!15 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"qq", metadata !"qq", metadata !"", i32 123, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @qq, null, null, metadata !13, i32 124} ; [ DW_TAG_subprogram ] [line 123] [def] [scope 124] [qq]
!16 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !19, metadata !19}
!19 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!20 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"macro_test", metadata !"macro_test", metadata !"", i32 133, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @macro_test, null, null, metadata !13, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [macro_test]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null}
!23 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"op", metadata !"op", metadata !"", i32 221, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32, i32)* @op, null, null, metadata !13, i32 222} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 222] [op]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !19, metadata !19, metadata !19}
!26 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"ret", metadata !"ret", metadata !"", i32 226, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32)* @ret, null, null, metadata !13, i32 227} ; [ DW_TAG_subprogram ] [line 226] [def] [scope 227] [ret]
!27 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"ps", metadata !"ps", metadata !"", i32 235, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @ps, null, null, metadata !13, i32 236} ; [ DW_TAG_subprogram ] [line 235] [def] [scope 236] [ps]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{null, metadata !30}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!31 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"string_test", metadata !"string_test", metadata !"", i32 252, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @string_test, null, null, metadata !13, i32 253} ; [ DW_TAG_subprogram ] [line 252] [def] [scope 253] [string_test]
!34 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"loop_test", metadata !"loop_test", metadata !"", i32 281, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @loop_test, null, null, metadata !13, i32 282} ; [ DW_TAG_subprogram ] [line 281] [def] [scope 282] [loop_test]
!35 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"goto_test", metadata !"goto_test", metadata !"", i32 330, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @goto_test, null, null, metadata !13, i32 331} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 331] [goto_test]
!36 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"enum_test", metadata !"enum_test", metadata !"", i32 373, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @enum_test, null, null, metadata !13, i32 374} ; [ DW_TAG_subprogram ] [line 373] [def] [scope 374] [enum_test]
!37 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"typedef_test", metadata !"typedef_test", metadata !"", i32 387, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @typedef_test, null, null, metadata !13, i32 388} ; [ DW_TAG_subprogram ] [line 387] [def] [scope 388] [typedef_test]
!38 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"forward_test", metadata !"forward_test", metadata !"", i32 401, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @forward_test, null, null, metadata !13, i32 402} ; [ DW_TAG_subprogram ] [line 401] [def] [scope 402] [forward_test]
!39 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"forward_ref", metadata !"forward_ref", metadata !"", i32 409, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @forward_ref, null, null, metadata !13, i32 410} ; [ DW_TAG_subprogram ] [line 409] [def] [scope 410] [forward_ref]
!40 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"main", metadata !"main", metadata !"", i32 436, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !13, i32 437} ; [ DW_TAG_subprogram ] [line 436] [def] [scope 437] [main]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !19, metadata !19, metadata !43}
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!45 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"f1", metadata !"f1", metadata !"", i32 484, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (i32)* @f1, null, null, metadata !13, i32 485} ; [ DW_TAG_subprogram ] [line 484] [def] [scope 485] [f1]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null, metadata !19}
!48 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"scope_test", metadata !"scope_test", metadata !"", i32 489, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @scope_test, null, null, metadata !13, i32 490} ; [ DW_TAG_subprogram ] [line 489] [def] [scope 490] [scope_test]
!49 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"array_test", metadata !"array_test", metadata !"", i32 508, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*)* @array_test, null, null, metadata !13, i32 509} ; [ DW_TAG_subprogram ] [line 508] [def] [scope 509] [array_test]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !52}
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!53 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"expr_test", metadata !"expr_test", metadata !"", i32 533, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @expr_test, null, null, metadata !13, i32 534} ; [ DW_TAG_subprogram ] [line 533] [def] [scope 534] [expr_test]
!54 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"isid", metadata !"isid", metadata !"", i32 590, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @isid, null, null, metadata !13, i32 591} ; [ DW_TAG_subprogram ] [line 590] [def] [scope 591] [isid]
!55 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"vpush", metadata !"vpush", metadata !"", i32 599, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @vpush, null, null, metadata !13, i32 600} ; [ DW_TAG_subprogram ] [line 599] [def] [scope 600] [vpush]
!56 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !19, metadata !19}
!58 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"vpop", metadata !"vpop", metadata !"", i32 605, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @vpop, null, null, metadata !13, i32 606} ; [ DW_TAG_subprogram ] [line 605] [def] [scope 606] [vpop]
!59 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !52, metadata !52}
!61 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"expr2_test", metadata !"expr2_test", metadata !"", i32 611, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @expr2_test, null, null, metadata !13, i32 612} ; [ DW_TAG_subprogram ] [line 611] [def] [scope 612] [expr2_test]
!62 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"constant_expr_test", metadata !"constant_expr_test", metadata !"", i32 623, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @constant_expr_test, null, null, metadata !13, i32 624} ; [ DW_TAG_subprogram ] [line 623] [def] [scope 624] [constant_expr_test]
!63 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"expr_ptr_test", metadata !"expr_ptr_test", metadata !"", i32 635, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @expr_ptr_test, null, null, metadata !13, i32 636} ; [ DW_TAG_subprogram ] [line 635] [def] [scope 636] [expr_ptr_test]
!64 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"expr_cmp_test", metadata !"expr_cmp_test", metadata !"", i32 655, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @expr_cmp_test, null, null, metadata !13, i32 656} ; [ DW_TAG_subprogram ] [line 655] [def] [scope 656] [expr_cmp_test]
!65 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"struct_test", metadata !"struct_test", metadata !"", i32 699, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @struct_test, null, null, metadata !13, i32 700} ; [ DW_TAG_subprogram ] [line 699] [def] [scope 700] [struct_test]
!66 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"char_short_test", metadata !"char_short_test", metadata !"", i32 745, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @char_short_test, null, null, metadata !13, i32 746} ; [ DW_TAG_subprogram ] [line 745] [def] [scope 746] [char_short_test]
!67 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"bool_test", metadata !"bool_test", metadata !"", i32 791, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @bool_test, null, null, metadata !13, i32 792} ; [ DW_TAG_subprogram ] [line 791] [def] [scope 792] [bool_test]
!68 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"compound_literal_test", metadata !"compound_literal_test", metadata !"", i32 875, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @compound_literal_test, null, null, metadata !13, i32 876} ; [ DW_TAG_subprogram ] [line 875] [def] [scope 876] [compound_literal_test]
!69 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"kr_func1", metadata !"kr_func1", metadata !"", i32 921, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32, i32)* @kr_func1, null, null, metadata !13, i32 922} ; [ DW_TAG_subprogram ] [line 921] [def] [scope 922] [kr_func1]
!70 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"kr_func2", metadata !"kr_func2", metadata !"", i32 926, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 (i32, i32)* @kr_func2, null, null, metadata !13, i32 927} ; [ DW_TAG_subprogram ] [line 926] [def] [scope 927] [kr_func2]
!71 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"kr_test", metadata !"kr_test", metadata !"", i32 931, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @kr_test, null, null, metadata !13, i32 932} ; [ DW_TAG_subprogram ] [line 931] [def] [scope 932] [kr_test]
!72 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{metadata !19}
!74 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"num", metadata !"num", metadata !"", i32 941, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @num, null, null, metadata !13, i32 942} ; [ DW_TAG_subprogram ] [line 941] [def] [scope 942] [num]
!75 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"struct_assign_test1", metadata !"struct_assign_test1", metadata !"", i32 968, metadata !76, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.structa1*, i32)* @struct_assign_test1, null, null, metadata !13, i32 969} ; [ DW_TAG_subprogram ] [line 968] [def] [scope 969] [struct_assign_test1]
!76 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{null, metadata !78, metadata !19}
!78 = metadata !{i32 786451, metadata !1, null, metadata !"structa1", i32 961, i64 64, i64 32, i32 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [structa1] [line 961, size 64, align 32, offset 0] [def] [from ]
!79 = metadata !{metadata !80, metadata !81}
!80 = metadata !{i32 786445, metadata !1, metadata !78, metadata !"f1", i32 962, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [f1] [line 962, size 32, align 32, offset 0] [from int]
!81 = metadata !{i32 786445, metadata !1, metadata !78, metadata !"f2", i32 963, i64 8, i64 8, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [f2] [line 963, size 8, align 8, offset 32] [from char]
!82 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"struct_assign_test2", metadata !"struct_assign_test2", metadata !"", i32 973, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.structa1*, %struct.structa1*, i32)* @struct_assign_test2, null, null, metadata !13, i32 974} ; [ DW_TAG_subprogram ] [line 973] [def] [scope 974] [struct_assign_test2]
!83 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{metadata !78, metadata !78, metadata !19}
!85 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"struct_assign_test", metadata !"struct_assign_test", metadata !"", i32 980, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @struct_assign_test, null, null, metadata !13, i32 981} ; [ DW_TAG_subprogram ] [line 980] [def] [scope 981] [struct_assign_test]
!86 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"cast1", metadata !"cast1", metadata !"", i32 1063, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8, i16, i8, i16)* @cast1, null, null, metadata !13, i32 1064} ; [ DW_TAG_subprogram ] [line 1063] [def] [scope 1064] [cast1]
!87 = metadata !{metadata !"tcctest.c", metadata !"/mnt/hgfs/sf_vm_share/Stensal/Klarum"}
!88 = metadata !{i32 786473, metadata !87}        ; [ DW_TAG_file_type ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!89 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{null, metadata !32, metadata !91, metadata !92, metadata !93}
!91 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!92 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!93 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!94 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"cast_test", metadata !"cast_test", metadata !"", i32 1071, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @cast_test, null, null, metadata !13, i32 1072} ; [ DW_TAG_subprogram ] [line 1071] [def] [scope 1072] [cast_test]
!95 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"init_test", metadata !"init_test", metadata !"", i32 1173, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @init_test, null, null, metadata !13, i32 1174} ; [ DW_TAG_subprogram ] [line 1173] [def] [scope 1174] [init_test]
!96 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"switch_test", metadata !"switch_test", metadata !"", i32 1268, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @switch_test, null, null, metadata !13, i32 1269} ; [ DW_TAG_subprogram ] [line 1268] [def] [scope 1269] [switch_test]
!97 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"c99_bool_test", metadata !"c99_bool_test", metadata !"", i32 1293, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @c99_bool_test, null, null, metadata !13, i32 1294} ; [ DW_TAG_subprogram ] [line 1293] [def] [scope 1294] [c99_bool_test]
!98 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"bitfield_test", metadata !"bitfield_test", metadata !"", i32 1310, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @bitfield_test, null, null, metadata !13, i32 1311} ; [ DW_TAG_subprogram ] [line 1310] [def] [scope 1311] [bitfield_test]
!99 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"fcmp", metadata !"fcmp", metadata !"", i32 1401, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float, float)* @fcmp, null, null, metadata !13, i32 1401} ; [ DW_TAG_subprogram ] [line 1401] [def] [fcmp]
!100 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{null, metadata !102, metadata !102}
!102 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!103 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"ffcast", metadata !"ffcast", metadata !"", i32 1401, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float)* @ffcast, null, null, metadata !13, i32 1401} ; [ DW_TAG_subprogram ] [line 1401] [def] [ffcast]
!104 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !102}
!106 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"ftest", metadata !"ftest", metadata !"", i32 1401, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @ftest, null, null, metadata !13, i32 1401} ; [ DW_TAG_subprogram ] [line 1401] [def] [ftest]
!107 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"dcmp", metadata !"dcmp", metadata !"", i32 1402, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, double)* @dcmp, null, null, metadata !13, i32 1402} ; [ DW_TAG_subprogram ] [line 1402] [def] [dcmp]
!108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null, metadata !110, metadata !110}
!110 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 32, offset 0, enc DW_ATE_float]
!111 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"dfcast", metadata !"dfcast", metadata !"", i32 1402, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double)* @dfcast, null, null, metadata !13, i32 1402} ; [ DW_TAG_subprogram ] [line 1402] [def] [dfcast]
!112 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{null, metadata !110}
!114 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"dtest", metadata !"dtest", metadata !"", i32 1402, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @dtest, null, null, metadata !13, i32 1402} ; [ DW_TAG_subprogram ] [line 1402] [def] [dtest]
!115 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"ldcmp", metadata !"ldcmp", metadata !"", i32 1403, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (x86_fp80, x86_fp80)* @ldcmp, null, null, metadata !13, i32 1403} ; [ DW_TAG_subprogram ] [line 1403] [def] [ldcmp]
!116 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !118, metadata !118}
!118 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 96, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 96, align 32, offset 0, enc DW_ATE_float]
!119 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"ldfcast", metadata !"ldfcast", metadata !"", i32 1403, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (x86_fp80)* @ldfcast, null, null, metadata !13, i32 1403} ; [ DW_TAG_subprogram ] [line 1403] [def] [ldfcast]
!120 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!121 = metadata !{null, metadata !118}
!122 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"ldtest", metadata !"ldtest", metadata !"", i32 1403, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @ldtest, null, null, metadata !13, i32 1403} ; [ DW_TAG_subprogram ] [line 1403] [def] [ldtest]
!123 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"float_test", metadata !"float_test", metadata !"", i32 1408, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @float_test, null, null, metadata !13, i32 1409} ; [ DW_TAG_subprogram ] [line 1408] [def] [scope 1409] [float_test]
!124 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"fib", metadata !"fib", metadata !"", i32 1437, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @fib, null, null, metadata !13, i32 1438} ; [ DW_TAG_subprogram ] [line 1437] [def] [scope 1438] [fib]
!125 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"funcptr_test", metadata !"funcptr_test", metadata !"", i32 1445, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void ()* @funcptr_test, null, null, metadata !13, i32 1446} ; [ DW_TAG_subprogram ] [line 1445] [def] [scope 1446] [funcptr_test]
!126 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"lloptest", metadata !"lloptest", metadata !"", i32 1470, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, i64)* @lloptest, null, null, metadata !13, i32 1471} ; [ DW_TAG_subprogram ] [line 1470] [def] [scope 1471] [lloptest]
!127 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{null, metadata !129, metadata !129}
!129 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!130 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"llshift", metadata !"llshift", metadata !"", i32 1520, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, i32)* @llshift, null, null, metadata !13, i32 1521} ; [ DW_TAG_subprogram ] [line 1520] [def] [scope 1521] [llshift]
!131 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{null, metadata !129, metadata !19}
!133 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"llfloat", metadata !"llfloat", metadata !"", i32 1536, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @llfloat, null, null, metadata !13, i32 1537} ; [ DW_TAG_subprogram ] [line 1536] [def] [scope 1537] [llfloat]
!134 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"llfunc1", metadata !"llfunc1", metadata !"", i32 1570, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32)* @llfunc1, null, null, metadata !13, i32 1571} ; [ DW_TAG_subprogram ] [line 1570] [def] [scope 1571] [llfunc1]
!135 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!136 = metadata !{metadata !129, metadata !19}
!137 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"value", metadata !"value", metadata !"", i32 1580, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.S*)* @value, null, null, metadata !13, i32 1581} ; [ DW_TAG_subprogram ] [line 1580] [def] [scope 1581] [value]
!138 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!139 = metadata !{metadata !129, metadata !140}
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from S]
!141 = metadata !{i32 786451, metadata !87, null, metadata !"S", i32 1575, i64 64, i64 32, i32 0, i32 0, null, metadata !142, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [S] [line 1575, size 64, align 32, offset 0] [def] [from ]
!142 = metadata !{metadata !143, metadata !144}
!143 = metadata !{i32 786445, metadata !87, metadata !141, metadata !"id", i32 1576, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [id] [line 1576, size 32, align 32, offset 0] [from int]
!144 = metadata !{i32 786445, metadata !87, metadata !141, metadata !"item", i32 1577, i64 8, i64 8, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [item] [line 1577, size 8, align 8, offset 32] [from char]
!145 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"longlong_test", metadata !"longlong_test", metadata !"", i32 1585, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @longlong_test, null, null, metadata !13, i32 1586} ; [ DW_TAG_subprogram ] [line 1585] [def] [scope 1586] [longlong_test]
!146 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"putchar", metadata !"putchar", metadata !"", i32 1641, metadata !147, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8)* @putchar, null, null, metadata !13, i32 1641} ; [ DW_TAG_subprogram ] [line 1641] [def] [putchar]
!147 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{null, metadata !32}
!149 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"vprintf1", metadata !"vprintf1", metadata !"", i32 1643, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, ...)* @vprintf1, null, null, metadata !13, i32 1644} ; [ DW_TAG_subprogram ] [line 1643] [def] [scope 1644] [vprintf1]
!150 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{null, metadata !30, metadata !152}
!152 = metadata !{i32 786456}                     ; [ DW_TAG_unspecified_parameters ]
!153 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"stdarg_test", metadata !"stdarg_test", metadata !"", i32 1687, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @stdarg_test, null, null, metadata !13, i32 1688} ; [ DW_TAG_subprogram ] [line 1687] [def] [scope 1688] [stdarg_test]
!154 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"whitespace_test", metadata !"whitespace_test", metadata !"", i32 1694, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @whitespace_test, null, null, metadata !13, i32 1695} ; [ DW_TAG_subprogram ] [line 1694] [def] [scope 1695] [whitespace_test]
!155 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"relocation_test", metadata !"relocation_test", metadata !"", i32 1731, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @relocation_test, null, null, metadata !13, i32 1732} ; [ DW_TAG_subprogram ] [line 1731] [def] [scope 1732] [relocation_test]
!156 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"old_style_f", metadata !"old_style_f", metadata !"", i32 1737, metadata !157, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (i32, i32, double)* @old_style_f, null, null, metadata !13, i32 1740} ; [ DW_TAG_subprogram ] [line 1737] [def] [scope 1740] [old_style_f]
!157 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{null, metadata !19, metadata !19, metadata !110}
!159 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"decl_func1", metadata !"decl_func1", metadata !"", i32 1744, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32 (...)*)* @decl_func1, null, null, metadata !13, i32 1745} ; [ DW_TAG_subprogram ] [line 1744] [def] [scope 1745] [decl_func1]
!160 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!161 = metadata !{null, metadata !162}
!162 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!163 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !19, metadata !152}
!165 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"decl_func2", metadata !"decl_func2", metadata !"", i32 1749, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, void (i32 (...)*)* @decl_func2, null, null, metadata !13, i32 1751} ; [ DW_TAG_subprogram ] [line 1749] [def] [scope 1751] [decl_func2]
!166 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"old_style_function", metadata !"old_style_function", metadata !"", i32 1755, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @old_style_function, null, null, metadata !13, i32 1756} ; [ DW_TAG_subprogram ] [line 1755] [def] [scope 1756] [old_style_function]
!167 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"sizeof_test", metadata !"sizeof_test", metadata !"", i32 1762, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @sizeof_test, null, null, metadata !13, i32 1763} ; [ DW_TAG_subprogram ] [line 1762] [def] [scope 1763] [sizeof_test]
!168 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"typeof_test", metadata !"typeof_test", metadata !"", i32 1790, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @typeof_test, null, null, metadata !13, i32 1791} ; [ DW_TAG_subprogram ] [line 1790] [def] [scope 1791] [typeof_test]
!169 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"statement_expr_test", metadata !"statement_expr_test", metadata !"", i32 1802, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @statement_expr_test, null, null, metadata !13, i32 1803} ; [ DW_TAG_subprogram ] [line 1802] [def] [scope 1803] [statement_expr_test]
!170 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"local_label_test", metadata !"local_label_test", metadata !"", i32 1819, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @local_label_test, null, null, metadata !13, i32 1820} ; [ DW_TAG_subprogram ] [line 1819] [def] [scope 1820] [local_label_test]
!171 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"asm_test", metadata !"asm_test", metadata !"", i32 1929, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @asm_test, null, null, metadata !13, i32 1930} ; [ DW_TAG_subprogram ] [line 1929] [def] [scope 1930] [asm_test]
!172 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"builtin_test", metadata !"builtin_test", metadata !"", i32 1978, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @builtin_test, null, null, metadata !13, i32 1979} ; [ DW_TAG_subprogram ] [line 1978] [def] [scope 1979] [builtin_test]
!173 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"const_func", metadata !"const_func", metadata !"", i32 2000, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @const_func, null, null, metadata !13, i32 2001} ; [ DW_TAG_subprogram ] [line 2000] [def] [scope 2001] [const_func]
!174 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!175 = metadata !{null, metadata !176}
!176 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!177 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"const_warn_test", metadata !"const_warn_test", metadata !"", i32 2004, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @const_warn_test, null, null, metadata !13, i32 2005} ; [ DW_TAG_subprogram ] [line 2004] [def] [scope 2005] [const_warn_test]
!178 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"swab32", metadata !"swab32", metadata !"", i32 1903, metadata !179, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @swab32, null, null, metadata !13, i32 1904} ; [ DW_TAG_subprogram ] [line 1903] [local] [def] [scope 1904] [swab32]
!179 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !181, metadata !182}
!181 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!182 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!183 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"sigaddset1", metadata !"sigaddset1", metadata !"", i32 1893, metadata !184, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32)* @sigaddset1, null, null, metadata !13, i32 1894} ; [ DW_TAG_subprogram ] [line 1893] [local] [def] [scope 1894] [sigaddset1]
!184 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!185 = metadata !{null, metadata !186, metadata !19}
!186 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!187 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"sigdelset1", metadata !"sigdelset1", metadata !"", i32 1898, metadata !184, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32)* @sigdelset1, null, null, metadata !13, i32 1899} ; [ DW_TAG_subprogram ] [line 1898] [local] [def] [scope 1899] [sigdelset1]
!188 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"inc64", metadata !"inc64", metadata !"", i32 1920, metadata !189, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @inc64, null, null, metadata !13, i32 1921} ; [ DW_TAG_subprogram ] [line 1920] [local] [def] [scope 1921] [inc64]
!189 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!190 = metadata !{metadata !191, metadata !191}
!191 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!192 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"mul64", metadata !"mul64", metadata !"", i32 1913, metadata !193, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @mul64, null, null, metadata !13, i32 1914} ; [ DW_TAG_subprogram ] [line 1913] [local] [def] [scope 1914] [mul64]
!193 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{metadata !191, metadata !182, metadata !182}
!195 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"strncat1", metadata !"strncat1", metadata !"", i32 1853, metadata !196, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i32)* @strncat1, null, null, metadata !13, i32 1854} ; [ DW_TAG_subprogram ] [line 1853] [local] [def] [scope 1854] [strncat1]
!196 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!197 = metadata !{metadata !44, metadata !44, metadata !30, metadata !198}
!198 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 1, i64 0, i64 0, i64 0, i32 0, metadata !182} ; [ DW_TAG_typedef ] [size_t] [line 1, size 0, align 0, offset 0] [from unsigned int]
!199 = metadata !{i32 786478, metadata !87, metadata !88, metadata !"memcpy1", metadata !"memcpy1", metadata !"", i32 1875, metadata !200, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i32)* @memcpy1, null, null, metadata !13, i32 1876} ; [ DW_TAG_subprogram ] [line 1875] [local] [def] [scope 1876] [memcpy1]
!200 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{metadata !202, metadata !202, metadata !203, metadata !198}
!202 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!204 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{i32 786478, metadata !1, metadata !16, metadata !"toupper1", metadata !"toupper1", metadata !"", i32 786, metadata !17, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @toupper1, null, null, metadata !13, i32 787} ; [ DW_TAG_subprogram ] [line 786] [local] [def] [scope 787] [toupper1]
!206 = metadata !{metadata !207, metadata !211, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !223, metadata !227, metadata !228, metadata !229, metadata !230, metadata !234, metadata !241, metadata !242, metadata !243, metadata !244, metadata !246, metadata !248, metadata !249, metadata !256, metadata !262, metadata !264, metadata !266, metadata !267, metadata !268, metadata !269, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297}
!207 = metadata !{i32 786484, i32 0, null, metadata !"foo1_string", metadata !"foo1_string", metadata !"", metadata !16, i32 247, metadata !208, i32 0, i32 1, [10 x i8]* @foo1_string, null} ; [ DW_TAG_variable ] [foo1_string] [line 247] [def]
!208 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !31, metadata !209, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from ]
!209 = metadata !{metadata !210}
!210 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!211 = metadata !{i32 786484, i32 0, metadata !35, metadata !"label_table", metadata !"label_table", metadata !"", metadata !16, i32 333, metadata !212, i32 1, i32 1, [3 x i8*]* @goto_test.label_table, null} ; [ DW_TAG_variable ] [label_table] [line 333] [local] [def]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !202, metadata !213, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from ]
!213 = metadata !{metadata !214}
!214 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!215 = metadata !{i32 786484, i32 0, metadata !67, metadata !"v1", metadata !"v1", metadata !"", metadata !16, i32 850, metadata !19, i32 1, i32 1, i32* @bool_test.v1, null} ; [ DW_TAG_variable ] [v1] [line 850] [local] [def]
!216 = metadata !{i32 786484, i32 0, metadata !67, metadata !"v2", metadata !"v2", metadata !"", metadata !16, i32 851, metadata !19, i32 1, i32 1, i32* @bool_test.v2, null} ; [ DW_TAG_variable ] [v2] [line 851] [local] [def]
!217 = metadata !{i32 786484, i32 0, null, metadata !"cinit1", metadata !"cinit1", metadata !"", metadata !16, i32 872, metadata !19, i32 0, i32 1, i32* @cinit1, null} ; [ DW_TAG_variable ] [cinit1] [line 872] [def]
!218 = metadata !{i32 786484, i32 0, null, metadata !"cinit2", metadata !"cinit2", metadata !"", metadata !16, i32 873, metadata !52, i32 0, i32 1, i32** @cinit2, null} ; [ DW_TAG_variable ] [cinit2] [line 873] [def]
!219 = metadata !{i32 786484, i32 0, null, metadata !"sinit1", metadata !"sinit1", metadata !"", metadata !88, i32 1129, metadata !19, i32 0, i32 1, i32* @sinit1, null} ; [ DW_TAG_variable ] [sinit1] [line 1129] [def]
!220 = metadata !{i32 786484, i32 0, null, metadata !"sinit2", metadata !"sinit2", metadata !"", metadata !88, i32 1130, metadata !19, i32 0, i32 1, i32* @sinit2, null} ; [ DW_TAG_variable ] [sinit2] [line 1130] [def]
!221 = metadata !{i32 786484, i32 0, null, metadata !"sinit3", metadata !"sinit3", metadata !"", metadata !88, i32 1131, metadata !222, i32 0, i32 1, [3 x i32]* @sinit3, null} ; [ DW_TAG_variable ] [sinit3] [line 1131] [def]
!222 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !19, metadata !213, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!223 = metadata !{i32 786484, i32 0, null, metadata !"sinit4", metadata !"sinit4", metadata !"", metadata !88, i32 1132, metadata !224, i32 0, i32 1, [3 x [2 x i32]]* @sinit4, null} ; [ DW_TAG_variable ] [sinit4] [line 1132] [def]
!224 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !19, metadata !225, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!225 = metadata !{metadata !214, metadata !226}
!226 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!227 = metadata !{i32 786484, i32 0, null, metadata !"sinit5", metadata !"sinit5", metadata !"", metadata !88, i32 1133, metadata !224, i32 0, i32 1, [3 x [2 x i32]]* @sinit5, null} ; [ DW_TAG_variable ] [sinit5] [line 1133] [def]
!228 = metadata !{i32 786484, i32 0, null, metadata !"sinit6", metadata !"sinit6", metadata !"", metadata !88, i32 1134, metadata !222, i32 0, i32 1, [3 x i32]* @sinit6, null} ; [ DW_TAG_variable ] [sinit6] [line 1134] [def]
!229 = metadata !{i32 786484, i32 0, null, metadata !"sinit7", metadata !"sinit7", metadata !"", metadata !88, i32 1135, metadata !222, i32 0, i32 1, [3 x i32]* @sinit7, null} ; [ DW_TAG_variable ] [sinit7] [line 1135] [def]
!230 = metadata !{i32 786484, i32 0, null, metadata !"sinit8", metadata !"sinit8", metadata !"", metadata !88, i32 1136, metadata !231, i32 0, i32 1, [11 x i8]* @sinit8, null} ; [ DW_TAG_variable ] [sinit8] [line 1136] [def]
!231 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 88, i64 8, i32 0, i32 0, metadata !32, metadata !232, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 88, align 8, offset 0] [from char]
!232 = metadata !{metadata !233}
!233 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!234 = metadata !{i32 786484, i32 0, null, metadata !"sinit9", metadata !"sinit9", metadata !"", metadata !88, i32 1138, metadata !235, i32 0, i32 1, %struct.structinit1* @sinit9, null} ; [ DW_TAG_variable ] [sinit9] [line 1138] [def]
!235 = metadata !{i32 786451, metadata !87, null, metadata !"structinit1", i32 1122, i64 160, i64 32, i32 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [structinit1] [line 1122, size 160, align 32, offset 0] [def] [from ]
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240}
!237 = metadata !{i32 786445, metadata !87, metadata !235, metadata !"f1", i32 1123, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [f1] [line 1123, size 32, align 32, offset 0] [from int]
!238 = metadata !{i32 786445, metadata !87, metadata !235, metadata !"f2", i32 1124, i64 8, i64 8, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [f2] [line 1124, size 8, align 8, offset 32] [from char]
!239 = metadata !{i32 786445, metadata !87, metadata !235, metadata !"f3", i32 1125, i64 16, i64 16, i64 48, i32 0, metadata !91} ; [ DW_TAG_member ] [f3] [line 1125, size 16, align 16, offset 48] [from short]
!240 = metadata !{i32 786445, metadata !87, metadata !235, metadata !"farray", i32 1126, i64 96, i64 32, i64 64, i32 0, metadata !222} ; [ DW_TAG_member ] [farray] [line 1126, size 96, align 32, offset 64] [from ]
!241 = metadata !{i32 786484, i32 0, null, metadata !"sinit10", metadata !"sinit10", metadata !"", metadata !88, i32 1139, metadata !235, i32 0, i32 1, %struct.structinit1* @sinit10, null} ; [ DW_TAG_variable ] [sinit10] [line 1139] [def]
!242 = metadata !{i32 786484, i32 0, null, metadata !"sinit11", metadata !"sinit11", metadata !"", metadata !88, i32 1140, metadata !235, i32 0, i32 1, %struct.structinit1* @sinit11, null} ; [ DW_TAG_variable ] [sinit11] [line 1140] [def]
!243 = metadata !{i32 786484, i32 0, null, metadata !"sinit12", metadata !"sinit12", metadata !"", metadata !88, i32 1148, metadata !44, i32 0, i32 1, i8** @sinit12, null} ; [ DW_TAG_variable ] [sinit12] [line 1148] [def]
!244 = metadata !{i32 786484, i32 0, null, metadata !"sinit13", metadata !"sinit13", metadata !"", metadata !88, i32 1149, metadata !245, i32 0, i32 1, [3 x i8*]* @sinit13, null} ; [ DW_TAG_variable ] [sinit13] [line 1149] [def]
!245 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !44, metadata !213, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from ]
!246 = metadata !{i32 786484, i32 0, null, metadata !"sinit14", metadata !"sinit14", metadata !"", metadata !88, i32 1154, metadata !247, i32 0, i32 1, [10 x i8]* @sinit14, null} ; [ DW_TAG_variable ] [sinit14] [line 1154] [def]
!247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 80, i64 8, i32 0, i32 0, metadata !32, metadata !209, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from char]
!248 = metadata !{i32 786484, i32 0, null, metadata !"sinit15", metadata !"sinit15", metadata !"", metadata !88, i32 1155, metadata !222, i32 0, i32 1, [3 x i32]* @sinit15, null} ; [ DW_TAG_variable ] [sinit15] [line 1155] [def]
!249 = metadata !{i32 786484, i32 0, null, metadata !"sinit16", metadata !"sinit16", metadata !"", metadata !88, i32 1157, metadata !250, i32 0, i32 1, [2 x %struct.anon]* @sinit16, null} ; [ DW_TAG_variable ] [sinit16] [line 1157] [def]
!250 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !251, metadata !255, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!251 = metadata !{i32 786451, metadata !87, null, metadata !"", i32 1157, i64 128, i64 32, i32 0, i32 0, null, metadata !252, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 1157, size 128, align 32, offset 0] [def] [from ]
!252 = metadata !{metadata !253, metadata !254}
!253 = metadata !{i32 786445, metadata !87, metadata !251, metadata !"a", i32 1157, i64 96, i64 32, i64 0, i32 0, metadata !222} ; [ DW_TAG_member ] [a] [line 1157, size 96, align 32, offset 0] [from ]
!254 = metadata !{i32 786445, metadata !87, metadata !251, metadata !"b", i32 1157, i64 32, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [b] [line 1157, size 32, align 32, offset 96] [from int]
!255 = metadata !{metadata !226}
!256 = metadata !{i32 786484, i32 0, null, metadata !"sinit17", metadata !"sinit17", metadata !"", metadata !88, i32 1162, metadata !257, i32 0, i32 1, [2 x %struct.bar]* @sinit17, null} ; [ DW_TAG_variable ] [sinit17] [line 1162] [def]
!257 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !258, metadata !255, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from bar]
!258 = metadata !{i32 786451, metadata !87, null, metadata !"bar", i32 1159, i64 64, i64 32, i32 0, i32 0, null, metadata !259, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [bar] [line 1159, size 64, align 32, offset 0] [def] [from ]
!259 = metadata !{metadata !260, metadata !261}
!260 = metadata !{i32 786445, metadata !87, metadata !258, metadata !"s", i32 1160, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [s] [line 1160, size 32, align 32, offset 0] [from ]
!261 = metadata !{i32 786445, metadata !87, metadata !258, metadata !"len", i32 1161, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [len] [line 1161, size 32, align 32, offset 32] [from int]
!262 = metadata !{i32 786484, i32 0, null, metadata !"sinit18", metadata !"sinit18", metadata !"", metadata !88, i32 1167, metadata !263, i32 0, i32 1, [10 x i32]* @sinit18, null} ; [ DW_TAG_variable ] [sinit18] [line 1167] [def]
!263 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !19, metadata !209, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from int]
!264 = metadata !{i32 786484, i32 0, null, metadata !"ftab1", metadata !"ftab1", metadata !"", metadata !88, i32 1405, metadata !265, i32 0, i32 1, [3 x double]* @ftab1, null} ; [ DW_TAG_variable ] [ftab1] [line 1405] [def]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !110, metadata !213, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from double]
!266 = metadata !{i32 786484, i32 0, null, metadata !"reltab", metadata !"reltab", metadata !"", metadata !88, i32 1726, metadata !222, i32 0, i32 1, [3 x i32]* @reltab, null} ; [ DW_TAG_variable ] [reltab] [line 1726] [def]
!267 = metadata !{i32 786484, i32 0, null, metadata !"rel1", metadata !"rel1", metadata !"", metadata !88, i32 1728, metadata !52, i32 0, i32 1, i32** @rel1, null} ; [ DW_TAG_variable ] [rel1] [line 1728] [def]
!268 = metadata !{i32 786484, i32 0, null, metadata !"rel2", metadata !"rel2", metadata !"", metadata !88, i32 1729, metadata !52, i32 0, i32 1, i32** @rel2, null} ; [ DW_TAG_variable ] [rel2] [line 1729] [def]
!269 = metadata !{i32 786484, i32 0, null, metadata !"st1", metadata !"st1", metadata !"", metadata !16, i32 434, metadata !270, i32 0, i32 1, %struct.struct1* @st1, null} ; [ DW_TAG_variable ] [st1] [line 434] [def]
!270 = metadata !{i32 786451, metadata !1, null, metadata !"struct1", i32 414, i64 160, i64 32, i32 0, i32 0, null, metadata !271, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [struct1] [line 414, size 160, align 32, offset 0] [def] [from ]
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !275, metadata !280}
!272 = metadata !{i32 786445, metadata !1, metadata !270, metadata !"f1", i32 415, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [f1] [line 415, size 32, align 32, offset 0] [from int]
!273 = metadata !{i32 786445, metadata !1, metadata !270, metadata !"f2", i32 416, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [f2] [line 416, size 32, align 32, offset 32] [from int]
!274 = metadata !{i32 786445, metadata !1, metadata !270, metadata !"f3", i32 416, i64 32, i64 32, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [f3] [line 416, size 32, align 32, offset 64] [from int]
!275 = metadata !{i32 786445, metadata !1, metadata !270, metadata !"u", i32 420, i64 32, i64 32, i64 96, i32 0, metadata !276} ; [ DW_TAG_member ] [u] [line 420, size 32, align 32, offset 96] [from union1]
!276 = metadata !{i32 786455, metadata !1, null, metadata !"union1", i32 417, i64 32, i64 32, i64 0, i32 0, null, metadata !277, i32 0, null, null, null} ; [ DW_TAG_union_type ] [union1] [line 417, size 32, align 32, offset 0] [def] [from ]
!277 = metadata !{metadata !278, metadata !279}
!278 = metadata !{i32 786445, metadata !1, metadata !276, metadata !"v1", i32 418, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [v1] [line 418, size 32, align 32, offset 0] [from int]
!279 = metadata !{i32 786445, metadata !1, metadata !276, metadata !"v2", i32 419, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [v2] [line 419, size 32, align 32, offset 0] [from int]
!280 = metadata !{i32 786445, metadata !1, metadata !270, metadata !"str", i32 421, i64 24, i64 8, i64 128, i32 0, metadata !281} ; [ DW_TAG_member ] [str] [line 421, size 24, align 8, offset 128] [from ]
!281 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !32, metadata !213, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from char]
!282 = metadata !{i32 786484, i32 0, null, metadata !"st2", metadata !"st2", metadata !"", metadata !16, i32 434, metadata !270, i32 0, i32 1, %struct.struct1* @st2, null} ; [ DW_TAG_variable ] [st2] [line 434] [def]
!283 = metadata !{i32 786484, i32 0, null, metadata !"tab", metadata !"tab", metadata !"", metadata !16, i32 479, metadata !222, i32 0, i32 1, [3 x i32]* @tab, null} ; [ DW_TAG_variable ] [tab] [line 479] [def]
!284 = metadata !{i32 786484, i32 0, null, metadata !"tab2", metadata !"tab2", metadata !"", metadata !16, i32 480, metadata !224, i32 0, i32 1, [3 x [2 x i32]]* @tab2, null} ; [ DW_TAG_variable ] [tab2] [line 480] [def]
!285 = metadata !{i32 786484, i32 0, null, metadata !"g", metadata !"g", metadata !"", metadata !16, i32 482, metadata !19, i32 0, i32 1, i32* @g, null} ; [ DW_TAG_variable ] [g] [line 482] [def]
!286 = metadata !{i32 786484, i32 0, null, metadata !"vstack", metadata !"vstack", metadata !"", metadata !16, i32 597, metadata !263, i32 0, i32 1, [10 x i32]* @vstack, null} ; [ DW_TAG_variable ] [vstack] [line 597] [def]
!287 = metadata !{i32 786484, i32 0, null, metadata !"vstack_ptr", metadata !"vstack_ptr", metadata !"", metadata !16, i32 597, metadata !52, i32 0, i32 1, i32** @vstack_ptr, null} ; [ DW_TAG_variable ] [vstack_ptr] [line 597] [def]
!288 = metadata !{i32 786484, i32 0, null, metadata !"tab4", metadata !"tab4", metadata !"", metadata !16, i32 633, metadata !263, i32 0, i32 1, [10 x i32]* @tab4, null} ; [ DW_TAG_variable ] [tab4] [line 633] [def]
!289 = metadata !{i32 786484, i32 0, null, metadata !"malloc_20", metadata !"malloc_20", metadata !"", metadata !16, i32 939, metadata !290, i32 0, i32 1, [20 x i8]* @malloc_20, null} ; [ DW_TAG_variable ] [malloc_20] [line 939] [def]
!290 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !32, metadata !291, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!291 = metadata !{metadata !292}
!292 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!293 = metadata !{i32 786484, i32 0, null, metadata !"ssta1", metadata !"ssta1", metadata !"", metadata !16, i32 966, metadata !78, i32 0, i32 1, %struct.structa1* @ssta1, null} ; [ DW_TAG_variable ] [ssta1] [line 966] [def]
!294 = metadata !{i32 786484, i32 0, null, metadata !"bcast", metadata !"bcast", metadata !"", metadata !88, i32 1068, metadata !32, i32 0, i32 1, i8* @bcast, null} ; [ DW_TAG_variable ] [bcast] [line 1068] [def]
!295 = metadata !{i32 786484, i32 0, null, metadata !"scast", metadata !"scast", metadata !"", metadata !88, i32 1069, metadata !91, i32 0, i32 1, i16* @scast, null} ; [ DW_TAG_variable ] [scast] [line 1069] [def]
!296 = metadata !{i32 786484, i32 0, null, metadata !"set", metadata !"set", metadata !"", metadata !88, i32 1927, metadata !182, i32 0, i32 1, i32* @set, null} ; [ DW_TAG_variable ] [set] [line 1927] [def]
!297 = metadata !{i32 786484, i32 0, null, metadata !"constant_p_var", metadata !"constant_p_var", metadata !"", metadata !88, i32 1976, metadata !19, i32 0, i32 1, i32* @constant_p_var, null} ; [ DW_TAG_variable ] [constant_p_var] [line 1976] [def]
!298 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!299 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!300 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!301 = metadata !{i32 786689, metadata !15, metadata !"x", metadata !16, i32 16777339, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 123]
!302 = metadata !{i32 123, i32 12, metadata !15, null}
!303 = metadata !{i32 125, i32 5, metadata !15, null}
!304 = metadata !{i32 135, i32 5, metadata !20, null}
!305 = metadata !{i32 136, i32 5, metadata !20, null}
!306 = metadata !{i32 137, i32 5, metadata !20, null}
!307 = metadata !{i32 139, i32 5, metadata !20, null}
!308 = metadata !{i32 141, i32 5, metadata !20, null}
!309 = metadata !{i32 142, i32 5, metadata !20, null}
!310 = metadata !{i32 143, i32 5, metadata !20, null}
!311 = metadata !{i32 144, i32 5, metadata !20, null}
!312 = metadata !{i32 145, i32 5, metadata !20, null}
!313 = metadata !{i32 148, i32 5, metadata !20, null}
!314 = metadata !{i32 154, i32 5, metadata !20, null}
!315 = metadata !{i32 161, i32 5, metadata !20, null}
!316 = metadata !{i32 165, i32 5, metadata !20, null}
!317 = metadata !{i32 169, i32 5, metadata !20, null}
!318 = metadata !{i32 170, i32 5, metadata !20, null}
!319 = metadata !{i32 171, i32 5, metadata !20, null}
!320 = metadata !{i32 172, i32 5, metadata !20, null}
!321 = metadata !{i32 174, i32 5, metadata !20, null}
!322 = metadata !{i32 177, i32 5, metadata !20, null}
!323 = metadata !{i32 178, i32 5, metadata !20, null}
!324 = metadata !{i32 179, i32 5, metadata !20, null}
!325 = metadata !{i32 181, i32 5, metadata !20, null}
!326 = metadata !{i32 182, i32 5, metadata !20, null}
!327 = metadata !{i32 184, i32 5, metadata !20, null}
!328 = metadata !{i32 185, i32 5, metadata !20, null}
!329 = metadata !{i32 186, i32 5, metadata !20, null}
!330 = metadata !{i32 189, i32 5, metadata !20, null}
!331 = metadata !{i32 192, i32 5, metadata !20, null}
!332 = metadata !{i32 786688, metadata !333, metadata !"a", metadata !16, i32 194, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 194]
!333 = metadata !{i32 786443, metadata !1, metadata !20, i32 193, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!334 = metadata !{i32 194, i32 13, metadata !333, null}
!335 = metadata !{i32 195, i32 9, metadata !333, null}
!336 = metadata !{i32 196, i32 9, metadata !333, null}
!337 = metadata !{i32 197, i32 9, metadata !333, null}
!338 = metadata !{i32 198, i32 9, metadata !333, null}
!339 = metadata !{i32 199, i32 9, metadata !333, null}
!340 = metadata !{i32 208, i32 5, metadata !20, null}
!341 = metadata !{i32 209, i32 5, metadata !20, null}
!342 = metadata !{i32 209, i32 26, metadata !20, null}
!343 = metadata !{i32 212, i32 23, metadata !20, null}
!344 = metadata !{i32 212, i32 5, metadata !20, null}
!345 = metadata !{i32 218, i32 5, metadata !20, null}
!346 = metadata !{i32 219, i32 1, metadata !20, null}
!347 = metadata !{i32 786689, metadata !23, metadata !"a", metadata !16, i32 16777437, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 221]
!348 = metadata !{i32 221, i32 8, metadata !23, null}
!349 = metadata !{i32 786689, metadata !23, metadata !"b", metadata !16, i32 33554653, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 221]
!350 = metadata !{i32 221, i32 10, metadata !23, null}
!351 = metadata !{i32 223, i32 5, metadata !23, null}
!352 = metadata !{i32 786689, metadata !26, metadata !"a", metadata !16, i32 16777442, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 226]
!353 = metadata !{i32 226, i32 9, metadata !26, null}
!354 = metadata !{i32 228, i32 9, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !26, i32 228, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!356 = metadata !{i32 229, i32 9, metadata !355, null}
!357 = metadata !{i32 230, i32 9, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !26, i32 230, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!359 = metadata !{i32 231, i32 9, metadata !358, null}
!360 = metadata !{i32 232, i32 5, metadata !26, null}
!361 = metadata !{i32 233, i32 1, metadata !26, null}
!362 = metadata !{i32 786689, metadata !27, metadata !"s", metadata !16, i32 16777451, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 235]
!363 = metadata !{i32 235, i32 21, metadata !27, null}
!364 = metadata !{i32 786688, metadata !27, metadata !"c", metadata !16, i32 237, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 237]
!365 = metadata !{i32 237, i32 9, metadata !27, null}
!366 = metadata !{i32 238, i32 5, metadata !27, null}
!367 = metadata !{i32 239, i32 9, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !27, i32 238, i32 15, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!369 = metadata !{i32 240, i32 13, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !368, i32 240, i32 13, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!371 = metadata !{i32 241, i32 13, metadata !370, null}
!372 = metadata !{i32 242, i32 9, metadata !368, null}
!373 = metadata !{i32 243, i32 9, metadata !368, null}
!374 = metadata !{i32 244, i32 5, metadata !368, null}
!375 = metadata !{i32 245, i32 1, metadata !27, null}
!376 = metadata !{i32 786688, metadata !33, metadata !"b", metadata !16, i32 254, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 254]
!377 = metadata !{i32 254, i32 9, metadata !33, null}
!378 = metadata !{i32 255, i32 5, metadata !33, null}
!379 = metadata !{i32 256, i32 5, metadata !33, null}
!380 = metadata !{i32 257, i32 5, metadata !33, null}
!381 = metadata !{i32 258, i32 5, metadata !33, null}
!382 = metadata !{i32 259, i32 5, metadata !33, null}
!383 = metadata !{i32 260, i32 5, metadata !33, null}
!384 = metadata !{i32 267, i32 5, metadata !33, null}
!385 = metadata !{i32 268, i32 5, metadata !33, null}
!386 = metadata !{i32 269, i32 5, metadata !33, null}
!387 = metadata !{i32 269, i32 5, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !33, i32 269, i32 5, i32 1, i32 82} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!389 = metadata !{i32 270, i32 9, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !33, i32 269, i32 30, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!391 = metadata !{i32 271, i32 5, metadata !390, null}
!392 = metadata !{i32 272, i32 5, metadata !33, null}
!393 = metadata !{i32 273, i32 24, metadata !33, null}
!394 = metadata !{i32 273, i32 5, metadata !33, null}
!395 = metadata !{i32 274, i32 5, metadata !33, null}
!396 = metadata !{i32 275, i32 5, metadata !33, null}
!397 = metadata !{i32 275, i32 5, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !33, i32 275, i32 5, i32 1, i32 83} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!399 = metadata !{i32 276, i32 9, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !33, i32 275, i32 29, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!401 = metadata !{i32 277, i32 9, metadata !400, null}
!402 = metadata !{i32 278, i32 5, metadata !400, null}
!403 = metadata !{i32 279, i32 1, metadata !33, null}
!404 = metadata !{i32 786689, metadata !124, metadata !"n", metadata !88, i32 16778653, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1437]
!405 = metadata !{i32 1437, i32 13, metadata !124, null}
!406 = metadata !{i32 1439, i32 9, metadata !407, null}
!407 = metadata !{i32 786443, metadata !87, metadata !124, i32 1439, i32 9, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!408 = metadata !{i32 1440, i32 9, metadata !407, null}
!409 = metadata !{i32 1442, i32 16, metadata !407, null}
!410 = metadata !{i32 1442, i32 27, metadata !407, null}
!411 = metadata !{i32 1443, i32 1, metadata !124, null}
!412 = metadata !{i32 786689, metadata !74, metadata !"n", metadata !16, i32 16778157, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 941]
!413 = metadata !{i32 941, i32 14, metadata !74, null}
!414 = metadata !{i32 786688, metadata !74, metadata !"tab", metadata !16, i32 943, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tab] [line 943]
!415 = metadata !{i32 943, i32 11, metadata !74, null}
!416 = metadata !{i32 786688, metadata !74, metadata !"p", metadata !16, i32 943, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 943]
!417 = metadata !{i32 943, i32 17, metadata !74, null}
!418 = metadata !{i32 944, i32 5, metadata !74, null}
!419 = metadata !{i32 945, i32 5, metadata !74, null}
!420 = metadata !{i32 946, i32 5, metadata !74, null}
!421 = metadata !{i32 947, i32 9, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !74, i32 946, i32 15, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!423 = metadata !{i32 948, i32 9, metadata !422, null}
!424 = metadata !{i32 949, i32 9, metadata !422, null}
!425 = metadata !{i32 950, i32 13, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !422, i32 950, i32 13, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!427 = metadata !{i32 951, i32 13, metadata !426, null}
!428 = metadata !{i32 952, i32 5, metadata !422, null}
!429 = metadata !{i32 953, i32 5, metadata !74, null}
!430 = metadata !{i32 953, i32 5, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !74, i32 953, i32 5, i32 1, i32 84} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!432 = metadata !{i32 954, i32 9, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !74, i32 953, i32 22, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!434 = metadata !{i32 955, i32 9, metadata !433, null}
!435 = metadata !{i32 956, i32 5, metadata !433, null}
!436 = metadata !{i32 957, i32 5, metadata !74, null}
!437 = metadata !{i32 958, i32 1, metadata !74, null}
!438 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !16, i32 283, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 283]
!439 = metadata !{i32 283, i32 9, metadata !34, null}
!440 = metadata !{i32 284, i32 5, metadata !34, null}
!441 = metadata !{i32 285, i32 5, metadata !34, null}
!442 = metadata !{i32 285, i32 5, metadata !443, null}
!443 = metadata !{i32 786443, metadata !1, metadata !34, i32 285, i32 5, i32 1, i32 85} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!444 = metadata !{i32 286, i32 9, metadata !34, null}
!445 = metadata !{i32 287, i32 5, metadata !34, null}
!446 = metadata !{i32 288, i32 9, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !34, i32 288, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!448 = metadata !{i32 288, i32 9, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !450, i32 288, i32 9, i32 2, i32 87} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!450 = metadata !{i32 786443, metadata !1, metadata !447, i32 288, i32 9, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!451 = metadata !{i32 289, i32 9, metadata !447, null}
!452 = metadata !{i32 288, i32 23, metadata !447, null}
!453 = metadata !{i32 290, i32 5, metadata !34, null}
!454 = metadata !{i32 291, i32 5, metadata !34, null}
!455 = metadata !{i32 292, i32 5, metadata !34, null}
!456 = metadata !{i32 293, i32 9, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !34, i32 292, i32 8, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!458 = metadata !{i32 294, i32 5, metadata !457, null}
!459 = metadata !{i32 294, i32 5, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !457, i32 294, i32 5, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!461 = metadata !{i32 295, i32 5, metadata !34, null}
!462 = metadata !{i32 298, i32 5, metadata !34, null}
!463 = metadata !{i32 299, i32 5, metadata !34, null}
!464 = metadata !{i32 300, i32 13, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !466, i32 300, i32 13, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!466 = metadata !{i32 786443, metadata !1, metadata !34, i32 299, i32 15, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!467 = metadata !{i32 301, i32 13, metadata !465, null}
!468 = metadata !{i32 302, i32 9, metadata !466, null}
!469 = metadata !{i32 303, i32 13, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !466, i32 303, i32 13, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!471 = metadata !{i32 304, i32 13, metadata !470, null}
!472 = metadata !{i32 305, i32 9, metadata !466, null}
!473 = metadata !{i32 306, i32 5, metadata !466, null}
!474 = metadata !{i32 307, i32 5, metadata !34, null}
!475 = metadata !{i32 310, i32 5, metadata !34, null}
!476 = metadata !{i32 311, i32 5, metadata !34, null}
!477 = metadata !{i32 312, i32 13, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !479, i32 312, i32 13, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!479 = metadata !{i32 786443, metadata !1, metadata !34, i32 311, i32 8, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!480 = metadata !{i32 313, i32 13, metadata !478, null}
!481 = metadata !{i32 314, i32 9, metadata !479, null}
!482 = metadata !{i32 315, i32 13, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !479, i32 315, i32 13, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!484 = metadata !{i32 316, i32 13, metadata !483, null}
!485 = metadata !{i32 317, i32 9, metadata !479, null}
!486 = metadata !{i32 318, i32 5, metadata !479, null}
!487 = metadata !{i32 318, i32 5, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !479, i32 318, i32 5, i32 1, i32 89} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!489 = metadata !{i32 319, i32 5, metadata !34, null}
!490 = metadata !{i32 321, i32 9, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !34, i32 321, i32 5, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!492 = metadata !{i32 321, i32 9, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !494, i32 321, i32 9, i32 2, i32 91} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!494 = metadata !{i32 786443, metadata !1, metadata !491, i32 321, i32 9, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!495 = metadata !{i32 322, i32 13, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !497, i32 322, i32 13, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!497 = metadata !{i32 786443, metadata !1, metadata !491, i32 321, i32 27, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!498 = metadata !{i32 323, i32 13, metadata !496, null}
!499 = metadata !{i32 324, i32 9, metadata !497, null}
!500 = metadata !{i32 325, i32 5, metadata !497, null}
!501 = metadata !{i32 321, i32 22, metadata !491, null}
!502 = metadata !{i32 326, i32 5, metadata !34, null}
!503 = metadata !{i32 327, i32 1, metadata !34, null}
!504 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !16, i32 332, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 332]
!505 = metadata !{i32 332, i32 9, metadata !35, null}
!506 = metadata !{i32 335, i32 5, metadata !35, null}
!507 = metadata !{i32 336, i32 5, metadata !35, null}
!508 = metadata !{i32 338, i32 9, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !35, i32 338, i32 9, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!510 = metadata !{i32 339, i32 9, metadata !509, null}
!511 = metadata !{i32 340, i32 5, metadata !35, null}
!512 = metadata !{i32 341, i32 5, metadata !35, null}
!513 = metadata !{i32 342, i32 5, metadata !35, null}
!514 = metadata !{i32 344, i32 5, metadata !35, null}
!515 = metadata !{i32 347, i32 9, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !35, i32 347, i32 5, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!517 = metadata !{i32 347, i32 9, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !519, i32 347, i32 9, i32 2, i32 93} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!519 = metadata !{i32 786443, metadata !1, metadata !516, i32 347, i32 9, i32 1, i32 92} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!520 = metadata !{i32 348, i32 9, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !516, i32 347, i32 22, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!522 = metadata !{i32 350, i32 9, metadata !521, null}
!523 = metadata !{i32 351, i32 9, metadata !521, null}
!524 = metadata !{i32 353, i32 9, metadata !521, null}
!525 = metadata !{i32 354, i32 9, metadata !521, null}
!526 = metadata !{i32 356, i32 9, metadata !521, null}
!527 = metadata !{i32 358, i32 5, metadata !521, null}
!528 = metadata !{i32 347, i32 17, metadata !516, null}
!529 = metadata !{i32 359, i32 1, metadata !35, null}
!530 = metadata !{i32 786688, metadata !36, metadata !"b1", metadata !16, i32 375, metadata !3, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b1] [line 375]
!531 = metadata !{i32 375, i32 15, metadata !36, null}
!532 = metadata !{i32 376, i32 5, metadata !36, null}
!533 = metadata !{i32 378, i32 5, metadata !36, null}
!534 = metadata !{i32 379, i32 5, metadata !36, null}
!535 = metadata !{i32 380, i32 1, metadata !36, null}
!536 = metadata !{i32 786688, metadata !37, metadata !"a", metadata !16, i32 389, metadata !537, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 389]
!537 = metadata !{i32 786454, metadata !1, null, metadata !"my_ptr", i32 382, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [my_ptr] [line 382, size 0, align 0, offset 0] [from ]
!538 = metadata !{i32 389, i32 12, metadata !37, null}
!539 = metadata !{i32 786688, metadata !37, metadata !"mytype2", metadata !16, i32 390, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mytype2] [line 390]
!540 = metadata !{i32 786454, metadata !1, null, metadata !"mytype1", i32 384, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [mytype1] [line 384, size 0, align 0, offset 0] [from int]
!541 = metadata !{i32 390, i32 13, metadata !37, null}
!542 = metadata !{i32 786688, metadata !37, metadata !"b", metadata !16, i32 391, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 391]
!543 = metadata !{i32 391, i32 9, metadata !37, null}
!544 = metadata !{i32 393, i32 5, metadata !37, null}
!545 = metadata !{i32 394, i32 5, metadata !37, null}
!546 = metadata !{i32 395, i32 5, metadata !37, null}
!547 = metadata !{i32 396, i32 5, metadata !37, null}
!548 = metadata !{i32 397, i32 5, metadata !37, null}
!549 = metadata !{i32 398, i32 5, metadata !37, null}
!550 = metadata !{i32 399, i32 1, metadata !37, null}
!551 = metadata !{i32 403, i32 5, metadata !38, null}
!552 = metadata !{i32 404, i32 5, metadata !38, null}
!553 = metadata !{i32 405, i32 5, metadata !38, null}
!554 = metadata !{i32 406, i32 1, metadata !38, null}
!555 = metadata !{i32 411, i32 5, metadata !39, null}
!556 = metadata !{i32 412, i32 1, metadata !39, null}
!557 = metadata !{i32 786689, metadata !40, metadata !"argc", metadata !16, i32 16777652, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 436]
!558 = metadata !{i32 436, i32 14, metadata !40, null}
!559 = metadata !{i32 786689, metadata !40, metadata !"argv", metadata !16, i32 33554868, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 436]
!560 = metadata !{i32 436, i32 27, metadata !40, null}
!561 = metadata !{i32 438, i32 5, metadata !40, null}
!562 = metadata !{i32 439, i32 5, metadata !40, null}
!563 = metadata !{i32 440, i32 5, metadata !40, null}
!564 = metadata !{i32 441, i32 5, metadata !40, null}
!565 = metadata !{i32 442, i32 5, metadata !40, null}
!566 = metadata !{i32 443, i32 5, metadata !40, null}
!567 = metadata !{i32 444, i32 5, metadata !40, null}
!568 = metadata !{i32 445, i32 5, metadata !40, null}
!569 = metadata !{i32 446, i32 5, metadata !40, null}
!570 = metadata !{i32 447, i32 5, metadata !40, null}
!571 = metadata !{i32 448, i32 5, metadata !40, null}
!572 = metadata !{i32 449, i32 5, metadata !40, null}
!573 = metadata !{i32 450, i32 5, metadata !40, null}
!574 = metadata !{i32 451, i32 5, metadata !40, null}
!575 = metadata !{i32 452, i32 5, metadata !40, null}
!576 = metadata !{i32 453, i32 5, metadata !40, null}
!577 = metadata !{i32 454, i32 5, metadata !40, null}
!578 = metadata !{i32 455, i32 5, metadata !40, null}
!579 = metadata !{i32 456, i32 5, metadata !40, null}
!580 = metadata !{i32 457, i32 5, metadata !40, null}
!581 = metadata !{i32 458, i32 5, metadata !40, null}
!582 = metadata !{i32 459, i32 5, metadata !40, null}
!583 = metadata !{i32 460, i32 5, metadata !40, null}
!584 = metadata !{i32 461, i32 5, metadata !40, null}
!585 = metadata !{i32 462, i32 5, metadata !40, null}
!586 = metadata !{i32 463, i32 5, metadata !40, null}
!587 = metadata !{i32 464, i32 5, metadata !40, null}
!588 = metadata !{i32 465, i32 5, metadata !40, null}
!589 = metadata !{i32 467, i32 5, metadata !40, null}
!590 = metadata !{i32 468, i32 5, metadata !40, null}
!591 = metadata !{i32 469, i32 5, metadata !40, null}
!592 = metadata !{i32 470, i32 5, metadata !40, null}
!593 = metadata !{i32 471, i32 5, metadata !40, null}
!594 = metadata !{i32 472, i32 5, metadata !40, null}
!595 = metadata !{i32 473, i32 5, metadata !40, null}
!596 = metadata !{i32 474, i32 5, metadata !40, null}
!597 = metadata !{i32 475, i32 5, metadata !40, null}
!598 = metadata !{i32 476, i32 5, metadata !40, null}
!599 = metadata !{i32 786688, metadata !95, metadata !"linit1", metadata !88, i32 1175, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit1] [line 1175]
!600 = metadata !{i32 1175, i32 9, metadata !95, null}
!601 = metadata !{i32 1175, i32 5, metadata !95, null}
!602 = metadata !{i32 786688, metadata !95, metadata !"linit2", metadata !88, i32 1176, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit2] [line 1176]
!603 = metadata !{i32 1176, i32 9, metadata !95, null}
!604 = metadata !{i32 1176, i32 5, metadata !95, null}
!605 = metadata !{i32 786688, metadata !95, metadata !"linit4", metadata !88, i32 1177, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit4] [line 1177]
!606 = metadata !{i32 1177, i32 9, metadata !95, null}
!607 = metadata !{i32 1177, i32 5, metadata !95, null}
!608 = metadata !{i32 786688, metadata !95, metadata !"linit6", metadata !88, i32 1178, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit6] [line 1178]
!609 = metadata !{i32 1178, i32 9, metadata !95, null}
!610 = metadata !{i32 1178, i32 5, metadata !95, null}
!611 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !88, i32 1179, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1179]
!612 = metadata !{i32 1179, i32 9, metadata !95, null}
!613 = metadata !{i32 786688, metadata !95, metadata !"j", metadata !88, i32 1179, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1179]
!614 = metadata !{i32 1179, i32 12, metadata !95, null}
!615 = metadata !{i32 786688, metadata !95, metadata !"linit8", metadata !88, i32 1180, metadata !231, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit8] [line 1180]
!616 = metadata !{i32 1180, i32 10, metadata !95, null}
!617 = metadata !{i32 1180, i32 5, metadata !95, null}
!618 = metadata !{i32 786688, metadata !95, metadata !"linit12", metadata !88, i32 1181, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit12] [line 1181]
!619 = metadata !{i32 1181, i32 9, metadata !95, null}
!620 = metadata !{i32 1181, i32 5, metadata !95, null}
!621 = metadata !{i32 786688, metadata !95, metadata !"linit13", metadata !88, i32 1182, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit13] [line 1182]
!622 = metadata !{i32 1182, i32 9, metadata !95, null}
!623 = metadata !{i32 1182, i32 5, metadata !95, null}
!624 = metadata !{i32 786688, metadata !95, metadata !"linit14", metadata !88, i32 1183, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit14] [line 1183]
!625 = metadata !{i32 1183, i32 10, metadata !95, null}
!626 = metadata !{i32 1183, i32 5, metadata !95, null}
!627 = metadata !{i32 786688, metadata !95, metadata !"linit15", metadata !88, i32 1184, metadata !263, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit15] [line 1184]
!628 = metadata !{i32 1184, i32 9, metadata !95, null}
!629 = metadata !{i32 1184, i32 5, metadata !95, null}
!630 = metadata !{i32 1184, i32 5, metadata !631, null}
!631 = metadata !{i32 786443, metadata !87, metadata !632, i32 1184, i32 5, i32 2, i32 95} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!632 = metadata !{i32 786443, metadata !87, metadata !95, i32 1184, i32 5, i32 1, i32 94} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!633 = metadata !{i32 786688, metadata !95, metadata !"linit16", metadata !88, i32 1185, metadata !634, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit16] [line 1185]
!634 = metadata !{i32 786451, metadata !87, metadata !95, metadata !"linit16", i32 1185, i64 128, i64 32, i32 0, i32 0, null, metadata !635, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [linit16] [line 1185, size 128, align 32, offset 0] [def] [from ]
!635 = metadata !{metadata !636, metadata !637, metadata !638, metadata !639}
!636 = metadata !{i32 786445, metadata !87, metadata !634, metadata !"a1", i32 1185, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [a1] [line 1185, size 32, align 32, offset 0] [from int]
!637 = metadata !{i32 786445, metadata !87, metadata !634, metadata !"a2", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [a2] [line 1185, size 32, align 32, offset 32] [from int]
!638 = metadata !{i32 786445, metadata !87, metadata !634, metadata !"a3", i32 1185, i64 32, i64 32, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [a3] [line 1185, size 32, align 32, offset 64] [from int]
!639 = metadata !{i32 786445, metadata !87, metadata !634, metadata !"a4", i32 1185, i64 32, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [a4] [line 1185, size 32, align 32, offset 96] [from int]
!640 = metadata !{i32 1185, i32 44, metadata !95, null}
!641 = metadata !{i32 1185, i32 5, metadata !95, null}
!642 = metadata !{i32 786688, metadata !95, metadata !"linit17", metadata !88, i32 1186, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [linit17] [line 1186]
!643 = metadata !{i32 1186, i32 9, metadata !95, null}
!644 = metadata !{i32 1186, i32 5, metadata !95, null}
!645 = metadata !{i32 1188, i32 5, metadata !95, null}
!646 = metadata !{i32 1190, i32 5, metadata !95, null}
!647 = metadata !{i32 1191, i32 5, metadata !95, null}
!648 = metadata !{i32 1192, i32 5, metadata !95, null}
!649 = metadata !{i32 1198, i32 5, metadata !95, null}
!650 = metadata !{i32 1199, i32 5, metadata !95, null}
!651 = metadata !{i32 1205, i32 5, metadata !95, null}
!652 = metadata !{i32 1206, i32 5, metadata !95, null}
!653 = metadata !{i32 1211, i32 5, metadata !95, null}
!654 = metadata !{i32 1216, i32 5, metadata !95, null}
!655 = metadata !{i32 1225, i32 9, metadata !656, null}
!656 = metadata !{i32 786443, metadata !87, metadata !95, i32 1225, i32 5, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!657 = metadata !{i32 1225, i32 9, metadata !658, null}
!658 = metadata !{i32 786443, metadata !87, metadata !659, i32 1225, i32 9, i32 2, i32 99} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!659 = metadata !{i32 786443, metadata !87, metadata !656, i32 1225, i32 9, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!660 = metadata !{i32 1226, i32 13, metadata !661, null}
!661 = metadata !{i32 786443, metadata !87, metadata !656, i32 1226, i32 9, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!662 = metadata !{i32 1226, i32 13, metadata !663, null}
!663 = metadata !{i32 786443, metadata !87, metadata !664, i32 1226, i32 13, i32 2, i32 98} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!664 = metadata !{i32 786443, metadata !87, metadata !661, i32 1226, i32 13, i32 1, i32 97} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!665 = metadata !{i32 1227, i32 13, metadata !661, null}
!666 = metadata !{i32 1226, i32 21, metadata !661, null}
!667 = metadata !{i32 1228, i32 66, metadata !661, null}
!668 = metadata !{i32 1225, i32 17, metadata !656, null}
!669 = metadata !{i32 1229, i32 5, metadata !95, null}
!670 = metadata !{i32 1230, i32 5, metadata !95, null}
!671 = metadata !{i32 1231, i32 5, metadata !95, null}
!672 = metadata !{i32 1232, i32 5, metadata !95, null}
!673 = metadata !{i32 1234, i32 5, metadata !95, null}
!674 = metadata !{i32 1235, i32 5, metadata !95, null}
!675 = metadata !{i32 1240, i32 5, metadata !95, null}
!676 = metadata !{i32 1242, i32 9, metadata !677, null}
!677 = metadata !{i32 786443, metadata !87, metadata !95, i32 1242, i32 5, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!678 = metadata !{i32 1242, i32 9, metadata !679, null}
!679 = metadata !{i32 786443, metadata !87, metadata !680, i32 1242, i32 9, i32 4, i32 103} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!680 = metadata !{i32 786443, metadata !87, metadata !677, i32 1242, i32 9, i32 1, i32 100} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!681 = metadata !{i32 1242, i32 23, metadata !682, null}
!682 = metadata !{i32 786443, metadata !87, metadata !677, i32 1242, i32 23, i32 2, i32 101} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!683 = metadata !{i32 1242, i32 18, metadata !684, null}
!684 = metadata !{i32 786443, metadata !87, metadata !677, i32 1242, i32 18, i32 3, i32 102} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!685 = metadata !{i32 1243, i32 5, metadata !95, null}
!686 = metadata !{i32 1244, i32 9, metadata !687, null}
!687 = metadata !{i32 786443, metadata !87, metadata !95, i32 1244, i32 5, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!688 = metadata !{i32 1244, i32 9, metadata !689, null}
!689 = metadata !{i32 786443, metadata !87, metadata !690, i32 1244, i32 9, i32 4, i32 107} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!690 = metadata !{i32 786443, metadata !87, metadata !687, i32 1244, i32 9, i32 1, i32 104} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!691 = metadata !{i32 1244, i32 23, metadata !692, null}
!692 = metadata !{i32 786443, metadata !87, metadata !687, i32 1244, i32 23, i32 2, i32 105} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!693 = metadata !{i32 1244, i32 18, metadata !694, null}
!694 = metadata !{i32 786443, metadata !87, metadata !687, i32 1244, i32 18, i32 3, i32 106} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!695 = metadata !{i32 1245, i32 5, metadata !95, null}
!696 = metadata !{i32 1246, i32 9, metadata !697, null}
!697 = metadata !{i32 786443, metadata !87, metadata !95, i32 1246, i32 5, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!698 = metadata !{i32 1246, i32 9, metadata !699, null}
!699 = metadata !{i32 786443, metadata !87, metadata !700, i32 1246, i32 9, i32 4, i32 111} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!700 = metadata !{i32 786443, metadata !87, metadata !697, i32 1246, i32 9, i32 1, i32 108} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!701 = metadata !{i32 1246, i32 23, metadata !702, null}
!702 = metadata !{i32 786443, metadata !87, metadata !697, i32 1246, i32 23, i32 2, i32 109} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!703 = metadata !{i32 1246, i32 18, metadata !704, null}
!704 = metadata !{i32 786443, metadata !87, metadata !697, i32 1246, i32 18, i32 3, i32 110} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!705 = metadata !{i32 1247, i32 5, metadata !95, null}
!706 = metadata !{i32 1248, i32 9, metadata !707, null}
!707 = metadata !{i32 786443, metadata !87, metadata !95, i32 1248, i32 5, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!708 = metadata !{i32 1248, i32 9, metadata !709, null}
!709 = metadata !{i32 786443, metadata !87, metadata !710, i32 1248, i32 9, i32 4, i32 115} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!710 = metadata !{i32 786443, metadata !87, metadata !707, i32 1248, i32 9, i32 1, i32 112} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!711 = metadata !{i32 1248, i32 23, metadata !712, null}
!712 = metadata !{i32 786443, metadata !87, metadata !707, i32 1248, i32 23, i32 2, i32 113} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!713 = metadata !{i32 1248, i32 18, metadata !714, null}
!714 = metadata !{i32 786443, metadata !87, metadata !707, i32 1248, i32 18, i32 3, i32 114} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!715 = metadata !{i32 1249, i32 5, metadata !95, null}
!716 = metadata !{i32 1250, i32 5, metadata !95, null}
!717 = metadata !{i32 1256, i32 5, metadata !95, null}
!718 = metadata !{i32 1257, i32 5, metadata !95, null}
!719 = metadata !{i32 1258, i32 5, metadata !95, null}
!720 = metadata !{i32 1259, i32 5, metadata !95, null}
!721 = metadata !{i32 1262, i32 9, metadata !722, null}
!722 = metadata !{i32 786443, metadata !87, metadata !95, i32 1262, i32 5, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!723 = metadata !{i32 1262, i32 9, metadata !724, null}
!724 = metadata !{i32 786443, metadata !87, metadata !725, i32 1262, i32 9, i32 2, i32 117} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!725 = metadata !{i32 786443, metadata !87, metadata !722, i32 1262, i32 9, i32 1, i32 116} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!726 = metadata !{i32 1263, i32 9, metadata !722, null}
!727 = metadata !{i32 1262, i32 18, metadata !722, null}
!728 = metadata !{i32 1264, i32 5, metadata !95, null}
!729 = metadata !{i32 1265, i32 1, metadata !95, null}
!730 = metadata !{i32 786688, metadata !68, metadata !"p", metadata !16, i32 877, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 877]
!731 = metadata !{i32 877, i32 10, metadata !68, null}
!732 = metadata !{i32 786688, metadata !68, metadata !"i", metadata !16, i32 877, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 877]
!733 = metadata !{i32 877, i32 13, metadata !68, null}
!734 = metadata !{i32 786688, metadata !68, metadata !"q", metadata !16, i32 878, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 878]
!735 = metadata !{i32 878, i32 11, metadata !68, null}
!736 = metadata !{i32 786688, metadata !68, metadata !"q3", metadata !16, i32 878, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q3] [line 878]
!737 = metadata !{i32 878, i32 15, metadata !68, null}
!738 = metadata !{i32 880, i32 5, metadata !68, null}
!739 = metadata !{i32 882, i32 5, metadata !68, null}
!740 = metadata !{i32 883, i32 9, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !68, i32 883, i32 5, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!742 = metadata !{i32 883, i32 9, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !744, i32 883, i32 9, i32 2, i32 119} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!744 = metadata !{i32 786443, metadata !1, metadata !741, i32 883, i32 9, i32 1, i32 118} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!745 = metadata !{i32 884, i32 9, metadata !741, null}
!746 = metadata !{i32 883, i32 17, metadata !741, null}
!747 = metadata !{i32 885, i32 5, metadata !68, null}
!748 = metadata !{i32 887, i32 9, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !68, i32 887, i32 5, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!750 = metadata !{i32 887, i32 9, metadata !751, null}
!751 = metadata !{i32 786443, metadata !1, metadata !752, i32 887, i32 9, i32 2, i32 121} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!752 = metadata !{i32 786443, metadata !1, metadata !749, i32 887, i32 9, i32 1, i32 120} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!753 = metadata !{i32 888, i32 9, metadata !749, null}
!754 = metadata !{i32 887, i32 17, metadata !749, null}
!755 = metadata !{i32 889, i32 5, metadata !68, null}
!756 = metadata !{i32 891, i32 5, metadata !68, null}
!757 = metadata !{i32 892, i32 5, metadata !68, null}
!758 = metadata !{i32 894, i32 5, metadata !68, null}
!759 = metadata !{i32 895, i32 5, metadata !68, null}
!760 = metadata !{i32 897, i32 5, metadata !68, null}
!761 = metadata !{i32 898, i32 5, metadata !68, null}
!762 = metadata !{i32 900, i32 5, metadata !68, null}
!763 = metadata !{i32 901, i32 5, metadata !68, null}
!764 = metadata !{i32 904, i32 5, metadata !68, null}
!765 = metadata !{i32 905, i32 9, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !68, i32 905, i32 5, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!767 = metadata !{i32 905, i32 9, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !769, i32 905, i32 9, i32 2, i32 123} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!769 = metadata !{i32 786443, metadata !1, metadata !766, i32 905, i32 9, i32 1, i32 122} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!770 = metadata !{i32 906, i32 9, metadata !766, null}
!771 = metadata !{i32 905, i32 17, metadata !766, null}
!772 = metadata !{i32 907, i32 5, metadata !68, null}
!773 = metadata !{i32 909, i32 9, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !68, i32 909, i32 5, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!775 = metadata !{i32 909, i32 9, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !777, i32 909, i32 9, i32 2, i32 125} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!777 = metadata !{i32 786443, metadata !1, metadata !774, i32 909, i32 9, i32 1, i32 124} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!778 = metadata !{i32 910, i32 9, metadata !779, null}
!779 = metadata !{i32 786443, metadata !1, metadata !774, i32 909, i32 22, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!780 = metadata !{i32 911, i32 9, metadata !779, null}
!781 = metadata !{i32 915, i32 5, metadata !779, null}
!782 = metadata !{i32 909, i32 17, metadata !774, null}
!783 = metadata !{i32 917, i32 1, metadata !68, null}
!784 = metadata !{i32 786688, metadata !85, metadata !"lsta1", metadata !16, i32 982, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsta1] [line 982]
!785 = metadata !{i32 982, i32 21, metadata !85, null}
!786 = metadata !{i32 786688, metadata !85, metadata !"lsta2", metadata !16, i32 982, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsta2] [line 982]
!787 = metadata !{i32 982, i32 28, metadata !85, null}
!788 = metadata !{i32 1051, i32 5, metadata !789, null}
!789 = metadata !{i32 786443, metadata !87, metadata !85} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!790 = metadata !{i32 1052, i32 5, metadata !789, null}
!791 = metadata !{i32 1054, i32 5, metadata !789, null}
!792 = metadata !{i32 1056, i32 5, metadata !789, null}
!793 = metadata !{i32 1057, i32 13, metadata !789, null}
!794 = metadata !{i32 1058, i32 5, metadata !789, null}
!795 = metadata !{i32 1059, i32 1, metadata !789, null}
!796 = metadata !{i32 786688, metadata !94, metadata !"a", metadata !88, i32 1073, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1073]
!797 = metadata !{i32 1073, i32 9, metadata !94, null}
!798 = metadata !{i32 786688, metadata !94, metadata !"c", metadata !88, i32 1074, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1074]
!799 = metadata !{i32 1074, i32 10, metadata !94, null}
!800 = metadata !{i32 786688, metadata !94, metadata !"tab", metadata !88, i32 1075, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tab] [line 1075]
!801 = metadata !{i32 1075, i32 10, metadata !94, null}
!802 = metadata !{i32 786688, metadata !94, metadata !"b", metadata !88, i32 1076, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1076]
!803 = metadata !{i32 1076, i32 14, metadata !94, null}
!804 = metadata !{i32 786688, metadata !94, metadata !"d", metadata !88, i32 1076, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 1076]
!805 = metadata !{i32 1076, i32 16, metadata !94, null}
!806 = metadata !{i32 786688, metadata !94, metadata !"s", metadata !88, i32 1077, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1077]
!807 = metadata !{i32 1077, i32 11, metadata !94, null}
!808 = metadata !{i32 1079, i32 5, metadata !94, null}
!809 = metadata !{i32 1080, i32 5, metadata !94, null}
!810 = metadata !{i32 1081, i32 5, metadata !94, null}
!811 = metadata !{i32 1082, i32 5, metadata !94, null}
!812 = metadata !{i32 1083, i32 5, metadata !94, null}
!813 = metadata !{i32 1088, i32 5, metadata !94, null}
!814 = metadata !{i32 1094, i32 5, metadata !94, null}
!815 = metadata !{i32 1095, i32 5, metadata !94, null}
!816 = metadata !{i32 1096, i32 5, metadata !94, null}
!817 = metadata !{i32 1097, i32 5, metadata !94, null}
!818 = metadata !{i32 1099, i32 5, metadata !94, null}
!819 = metadata !{i32 1102, i32 5, metadata !94, null}
!820 = metadata !{i32 1103, i32 5, metadata !94, null}
!821 = metadata !{i32 1104, i32 5, metadata !94, null}
!822 = metadata !{i32 1105, i32 5, metadata !94, null}
!823 = metadata !{i32 1106, i32 5, metadata !94, null}
!824 = metadata !{i32 1107, i32 5, metadata !94, null}
!825 = metadata !{i32 1110, i32 5, metadata !94, null}
!826 = metadata !{i32 1111, i32 5, metadata !94, null}
!827 = metadata !{i32 1112, i32 5, metadata !94, null}
!828 = metadata !{i32 1113, i32 5, metadata !94, null}
!829 = metadata !{i32 1116, i32 5, metadata !94, null}
!830 = metadata !{i32 1117, i32 5, metadata !94, null}
!831 = metadata !{i32 1118, i32 5, metadata !94, null}
!832 = metadata !{i32 1119, i32 1, metadata !94, null}
!833 = metadata !{i32 786688, metadata !98, metadata !"a", metadata !88, i32 1312, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1312]
!834 = metadata !{i32 1312, i32 9, metadata !98, null}
!835 = metadata !{i32 786688, metadata !98, metadata !"st1", metadata !88, i32 1321, metadata !836, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [st1] [line 1321]
!836 = metadata !{i32 786451, metadata !87, metadata !98, metadata !"sbf1", i32 1313, i64 64, i64 32, i32 0, i32 0, null, metadata !837, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [sbf1] [line 1313, size 64, align 32, offset 0] [def] [from ]
!837 = metadata !{metadata !838, metadata !839, metadata !840, metadata !841, metadata !842}
!838 = metadata !{i32 786445, metadata !87, metadata !836, metadata !"f1", i32 1314, i64 3, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [f1] [line 1314, size 3, align 32, offset 0] [from int]
!839 = metadata !{i32 786445, metadata !87, metadata !836, metadata !"f2", i32 1316, i64 1, i64 32, i64 5, i32 0, metadata !19} ; [ DW_TAG_member ] [f2] [line 1316, size 1, align 32, offset 5] [from int]
!840 = metadata !{i32 786445, metadata !87, metadata !836, metadata !"f3", i32 1318, i64 5, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [f3] [line 1318, size 5, align 32, offset 32] [from int]
!841 = metadata !{i32 786445, metadata !87, metadata !836, metadata !"f4", i32 1319, i64 7, i64 32, i64 37, i32 0, metadata !19} ; [ DW_TAG_member ] [f4] [line 1319, size 7, align 32, offset 37] [from int]
!842 = metadata !{i32 786445, metadata !87, metadata !836, metadata !"f5", i32 1320, i64 7, i64 32, i64 44, i32 0, metadata !182} ; [ DW_TAG_member ] [f5] [line 1320, size 7, align 32, offset 44] [from unsigned int]
!843 = metadata !{i32 1321, i32 7, metadata !98, null}
!844 = metadata !{i32 1322, i32 5, metadata !98, null}
!845 = metadata !{i32 1323, i32 5, metadata !98, null}
!846 = metadata !{i32 1325, i32 5, metadata !98, null}
!847 = metadata !{i32 1326, i32 5, metadata !98, null}
!848 = metadata !{i32 1327, i32 5, metadata !98, null}
!849 = metadata !{i32 1328, i32 5, metadata !98, null}
!850 = metadata !{i32 1329, i32 5, metadata !98, null}
!851 = metadata !{i32 1330, i32 5, metadata !98, null}
!852 = metadata !{i32 1331, i32 5, metadata !98, null}
!853 = metadata !{i32 1332, i32 5, metadata !98, null}
!854 = metadata !{i32 1335, i32 5, metadata !98, null}
!855 = metadata !{i32 1336, i32 9, metadata !856, null}
!856 = metadata !{i32 786443, metadata !87, metadata !98, i32 1336, i32 9, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!857 = metadata !{i32 1337, i32 9, metadata !856, null}
!858 = metadata !{i32 1339, i32 9, metadata !856, null}
!859 = metadata !{i32 1340, i32 9, metadata !860, null}
!860 = metadata !{i32 786443, metadata !87, metadata !98, i32 1340, i32 9, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!861 = metadata !{i32 1341, i32 9, metadata !860, null}
!862 = metadata !{i32 1343, i32 9, metadata !860, null}
!863 = metadata !{i32 1344, i32 1, metadata !98, null}
!864 = metadata !{i32 786688, metadata !97, metadata !"a", metadata !88, i32 1296, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1296]
!865 = metadata !{i32 1296, i32 9, metadata !97, null}
!866 = metadata !{i32 786688, metadata !97, metadata !"b", metadata !88, i32 1297, metadata !867, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1297]
!867 = metadata !{i32 786468, null, null, metadata !"_Bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [_Bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!868 = metadata !{i32 1297, i32 11, metadata !97, null}
!869 = metadata !{i32 1299, i32 5, metadata !97, null}
!870 = metadata !{i32 1300, i32 5, metadata !97, null}
!871 = metadata !{i32 1301, i32 5, metadata !97, null}
!872 = metadata !{i32 1302, i32 5, metadata !97, null}
!873 = metadata !{i32 1303, i32 5, metadata !97, null}
!874 = metadata !{i32 1304, i32 5, metadata !97, null}
!875 = metadata !{i32 1305, i32 5, metadata !97, null}
!876 = metadata !{i32 1306, i32 5, metadata !97, null}
!877 = metadata !{i32 1308, i32 1, metadata !97, null}
!878 = metadata !{i32 786688, metadata !123, metadata !"fa", metadata !88, i32 1410, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fa] [line 1410]
!879 = metadata !{i32 1410, i32 11, metadata !123, null}
!880 = metadata !{i32 786688, metadata !123, metadata !"fb", metadata !88, i32 1410, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fb] [line 1410]
!881 = metadata !{i32 1410, i32 15, metadata !123, null}
!882 = metadata !{i32 786688, metadata !123, metadata !"da", metadata !88, i32 1411, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [da] [line 1411]
!883 = metadata !{i32 1411, i32 12, metadata !123, null}
!884 = metadata !{i32 786688, metadata !123, metadata !"db", metadata !88, i32 1411, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [db] [line 1411]
!885 = metadata !{i32 1411, i32 16, metadata !123, null}
!886 = metadata !{i32 786688, metadata !123, metadata !"a", metadata !88, i32 1412, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1412]
!887 = metadata !{i32 1412, i32 9, metadata !123, null}
!888 = metadata !{i32 786688, metadata !123, metadata !"b", metadata !88, i32 1413, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1413]
!889 = metadata !{i32 1413, i32 18, metadata !123, null}
!890 = metadata !{i32 1415, i32 5, metadata !123, null}
!891 = metadata !{i32 1416, i32 5, metadata !123, null}
!892 = metadata !{i32 1417, i32 5, metadata !123, null}
!893 = metadata !{i32 1418, i32 5, metadata !123, null}
!894 = metadata !{i32 1419, i32 5, metadata !123, null}
!895 = metadata !{i32 1420, i32 5, metadata !123, null}
!896 = metadata !{i32 1421, i32 5, metadata !123, null}
!897 = metadata !{i32 1422, i32 5, metadata !123, null}
!898 = metadata !{i32 1423, i32 5, metadata !123, null}
!899 = metadata !{i32 1425, i32 5, metadata !123, null}
!900 = metadata !{i32 1426, i32 5, metadata !123, null}
!901 = metadata !{i32 1427, i32 5, metadata !123, null}
!902 = metadata !{i32 1428, i32 5, metadata !123, null}
!903 = metadata !{i32 1429, i32 5, metadata !123, null}
!904 = metadata !{i32 1430, i32 5, metadata !123, null}
!905 = metadata !{i32 1431, i32 5, metadata !123, null}
!906 = metadata !{i32 1432, i32 5, metadata !123, null}
!907 = metadata !{i32 1433, i32 5, metadata !123, null}
!908 = metadata !{i32 1434, i32 5, metadata !123, null}
!909 = metadata !{i32 1435, i32 1, metadata !123, null}
!910 = metadata !{i32 786688, metadata !145, metadata !"a", metadata !88, i32 1587, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1587]
!911 = metadata !{i32 1587, i32 15, metadata !145, null}
!912 = metadata !{i32 786688, metadata !145, metadata !"b", metadata !88, i32 1587, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1587]
!913 = metadata !{i32 1587, i32 18, metadata !145, null}
!914 = metadata !{i32 786688, metadata !145, metadata !"c", metadata !88, i32 1587, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1587]
!915 = metadata !{i32 1587, i32 21, metadata !145, null}
!916 = metadata !{i32 786688, metadata !145, metadata !"ia", metadata !88, i32 1588, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 1588]
!917 = metadata !{i32 1588, i32 9, metadata !145, null}
!918 = metadata !{i32 786688, metadata !145, metadata !"ua", metadata !88, i32 1589, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ua] [line 1589]
!919 = metadata !{i32 1589, i32 18, metadata !145, null}
!920 = metadata !{i32 1590, i32 5, metadata !145, null}
!921 = metadata !{i32 1591, i32 5, metadata !145, null}
!922 = metadata !{i32 1592, i32 5, metadata !145, null}
!923 = metadata !{i32 1593, i32 5, metadata !145, null}
!924 = metadata !{i32 1594, i32 5, metadata !145, null}
!925 = metadata !{i32 1595, i32 5, metadata !145, null}
!926 = metadata !{i32 1596, i32 5, metadata !145, null}
!927 = metadata !{i32 1597, i32 5, metadata !145, null}
!928 = metadata !{i32 1602, i32 9, metadata !145, null}
!929 = metadata !{i32 1603, i32 5, metadata !145, null}
!930 = metadata !{i32 1605, i32 5, metadata !145, null}
!931 = metadata !{i32 1606, i32 5, metadata !145, null}
!932 = metadata !{i32 1607, i32 5, metadata !145, null}
!933 = metadata !{i32 1608, i32 5, metadata !145, null}
!934 = metadata !{i32 1609, i32 5, metadata !145, null}
!935 = metadata !{i32 1610, i32 5, metadata !145, null}
!936 = metadata !{i32 1611, i32 5, metadata !145, null}
!937 = metadata !{i32 1612, i32 5, metadata !145, null}
!938 = metadata !{i32 1614, i32 5, metadata !145, null}
!939 = metadata !{i32 1616, i32 5, metadata !145, null}
!940 = metadata !{i32 1617, i32 5, metadata !145, null}
!941 = metadata !{i32 1618, i32 5, metadata !145, null}
!942 = metadata !{i32 1619, i32 5, metadata !145, null}
!943 = metadata !{i32 786688, metadata !944, metadata !"a", metadata !88, i32 1624, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1624]
!944 = metadata !{i32 786443, metadata !87, metadata !145, i32 1623, i32 5, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!945 = metadata !{i32 1624, i32 20, metadata !944, null}
!946 = metadata !{i32 1626, i32 11, metadata !944, null}
!947 = metadata !{i32 1627, i32 28, metadata !944, null}
!948 = metadata !{i32 1627, i32 11, metadata !944, null}
!949 = metadata !{i32 1629, i32 5, metadata !145, null}
!950 = metadata !{i32 786688, metadata !951, metadata !"p", metadata !88, i32 1633, metadata !952, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1633]
!951 = metadata !{i32 786443, metadata !87, metadata !145, i32 1632, i32 5, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!952 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from long long int]
!953 = metadata !{i32 1633, i32 20, metadata !951, null}
!954 = metadata !{i32 786688, metadata !951, metadata !"v", metadata !88, i32 1633, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1633]
!955 = metadata !{i32 1633, i32 23, metadata !951, null}
!956 = metadata !{i32 1634, i32 9, metadata !951, null}
!957 = metadata !{i32 1635, i32 9, metadata !951, null}
!958 = metadata !{i32 1636, i32 9, metadata !951, null}
!959 = metadata !{i32 1637, i32 9, metadata !951, null}
!960 = metadata !{i32 1639, i32 1, metadata !145, null}
!961 = metadata !{i32 786688, metadata !154, metadata !"str", metadata !88, i32 1696, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 1696]
!962 = metadata !{i32 1696, i32 11, metadata !154, null}
!963 = metadata !{i32 1700, i32 5, metadata !154, null}
!964 = metadata !{i32 1703, i32 5, metadata !154, null}
!965 = metadata !{i32 1706, i32 5, metadata !154, null}
!966 = metadata !{i32 1710, i32 5, metadata !154, null}
!967 = metadata !{i32 1724, i32 1, metadata !154, null}
!968 = metadata !{i32 1733, i32 5, metadata !155, null}
!969 = metadata !{i32 1734, i32 5, metadata !155, null}
!970 = metadata !{i32 1735, i32 1, metadata !155, null}
!971 = metadata !{i32 1757, i32 5, metadata !166, null}
!972 = metadata !{i32 1758, i32 5, metadata !166, null}
!973 = metadata !{i32 1759, i32 5, metadata !166, null}
!974 = metadata !{i32 1760, i32 1, metadata !166, null}
!975 = metadata !{i32 786688, metadata !167, metadata !"a", metadata !88, i32 1764, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1764]
!976 = metadata !{i32 1764, i32 9, metadata !167, null}
!977 = metadata !{i32 786688, metadata !167, metadata !"ptr", metadata !88, i32 1765, metadata !978, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 1765]
!978 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!979 = metadata !{i32 1765, i32 11, metadata !167, null}
!980 = metadata !{i32 1767, i32 5, metadata !167, null}
!981 = metadata !{i32 1768, i32 5, metadata !167, null}
!982 = metadata !{i32 1769, i32 5, metadata !167, null}
!983 = metadata !{i32 1770, i32 5, metadata !167, null}
!984 = metadata !{i32 1771, i32 5, metadata !167, null}
!985 = metadata !{i32 1772, i32 5, metadata !167, null}
!986 = metadata !{i32 1773, i32 5, metadata !167, null}
!987 = metadata !{i32 1774, i32 5, metadata !167, null}
!988 = metadata !{i32 1775, i32 5, metadata !167, null}
!989 = metadata !{i32 1776, i32 5, metadata !167, null}
!990 = metadata !{i32 1777, i32 5, metadata !167, null}
!991 = metadata !{i32 1778, i32 5, metadata !167, null}
!992 = metadata !{i32 1781, i32 5, metadata !167, null}
!993 = metadata !{i32 1782, i32 5, metadata !167, null}
!994 = metadata !{i32 1783, i32 5, metadata !167, null}
!995 = metadata !{i32 1784, i32 5, metadata !167, null}
!996 = metadata !{i32 1785, i32 5, metadata !167, null}
!997 = metadata !{i32 1786, i32 5, metadata !167, null}
!998 = metadata !{i32 1787, i32 5, metadata !167, null}
!999 = metadata !{i32 1788, i32 1, metadata !167, null}
!1000 = metadata !{i32 786688, metadata !168, metadata !"a", metadata !88, i32 1792, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1792]
!1001 = metadata !{i32 1792, i32 12, metadata !168, null}
!1002 = metadata !{i32 786688, metadata !168, metadata !"b", metadata !88, i32 1793, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1793]
!1003 = metadata !{i32 1793, i32 15, metadata !168, null}
!1004 = metadata !{i32 786688, metadata !168, metadata !"c", metadata !88, i32 1794, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1794]
!1005 = metadata !{i32 1794, i32 19, metadata !168, null}
!1006 = metadata !{i32 1796, i32 5, metadata !168, null}
!1007 = metadata !{i32 1797, i32 5, metadata !168, null}
!1008 = metadata !{i32 1798, i32 5, metadata !168, null}
!1009 = metadata !{i32 1799, i32 5, metadata !168, null}
!1010 = metadata !{i32 1800, i32 1, metadata !168, null}
!1011 = metadata !{i32 786688, metadata !169, metadata !"a", metadata !88, i32 1804, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1804]
!1012 = metadata !{i32 1804, i32 9, metadata !169, null}
!1013 = metadata !{i32 786688, metadata !169, metadata !"i", metadata !88, i32 1804, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1804]
!1014 = metadata !{i32 1804, i32 12, metadata !169, null}
!1015 = metadata !{i32 1806, i32 5, metadata !169, null}
!1016 = metadata !{i32 1807, i32 9, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !87, metadata !169, i32 1807, i32 5, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1018 = metadata !{i32 1807, i32 9, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !87, metadata !1020, i32 1807, i32 9, i32 2, i32 129} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1020 = metadata !{i32 786443, metadata !87, metadata !1017, i32 1807, i32 9, i32 1, i32 126} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1021 = metadata !{i32 786688, metadata !1022, metadata !"b", metadata !88, i32 1809, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1809]
!1022 = metadata !{i32 786443, metadata !87, metadata !1023, i32 1809, i32 15, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1023 = metadata !{i32 786443, metadata !87, metadata !1017, i32 1807, i32 23, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1024 = metadata !{i32 1809, i32 21, metadata !1022, null}
!1025 = metadata !{i32 786688, metadata !1022, metadata !"j", metadata !88, i32 1809, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1809]
!1026 = metadata !{i32 1809, i32 24, metadata !1022, null}
!1027 = metadata !{i32 1810, i32 17, metadata !1022, null}
!1028 = metadata !{i32 1811, i32 21, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !87, metadata !1022, i32 1811, i32 17, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1030 = metadata !{i32 1811, i32 21, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !87, metadata !1032, i32 1811, i32 21, i32 2, i32 128} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1032 = metadata !{i32 786443, metadata !87, metadata !1029, i32 1811, i32 21, i32 1, i32 127} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1033 = metadata !{i32 1812, i32 21, metadata !1029, null}
!1034 = metadata !{i32 1811, i32 29, metadata !1029, null}
!1035 = metadata !{i32 1812, i32 26, metadata !1029, null}
!1036 = metadata !{i32 1813, i32 13, metadata !1022, null}
!1037 = metadata !{i32 1814, i32 5, metadata !1023, null}
!1038 = metadata !{i32 1807, i32 18, metadata !1017, null}
!1039 = metadata !{i32 1815, i32 5, metadata !169, null}
!1040 = metadata !{i32 1817, i32 1, metadata !169, null}
!1041 = metadata !{i32 786688, metadata !170, metadata !"a", metadata !88, i32 1821, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1821]
!1042 = metadata !{i32 1821, i32 9, metadata !170, null}
!1043 = metadata !{i32 1822, i32 5, metadata !170, null}
!1044 = metadata !{i32 1826, i32 9, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !87, metadata !170, i32 1824, i32 14, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1046 = metadata !{i32 1828, i32 9, metadata !1045, null}
!1047 = metadata !{i32 1829, i32 9, metadata !1045, null}
!1048 = metadata !{i32 1831, i32 9, metadata !1045, null}
!1049 = metadata !{i32 1832, i32 9, metadata !1045, null}
!1050 = metadata !{i32 1834, i32 9, metadata !1045, null}
!1051 = metadata !{i32 1835, i32 9, metadata !1045, null}
!1052 = metadata !{i32 1838, i32 5, metadata !1045, null}
!1053 = metadata !{i32 1839, i32 5, metadata !170, null}
!1054 = metadata !{i32 1840, i32 5, metadata !170, null}
!1055 = metadata !{i32 1842, i32 5, metadata !170, null}
!1056 = metadata !{i32 1843, i32 5, metadata !170, null}
!1057 = metadata !{i32 1845, i32 5, metadata !170, null}
!1058 = metadata !{i32 1846, i32 5, metadata !170, null}
!1059 = metadata !{i32 786688, metadata !171, metadata !"buf", metadata !88, i32 1931, metadata !1060, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 1931]
!1060 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !32, metadata !1061, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!1061 = metadata !{metadata !1062}
!1062 = metadata !{i32 786465, i64 0, i64 128}    ; [ DW_TAG_subrange_type ] [0, 127]
!1063 = metadata !{i32 1931, i32 10, metadata !171, null}
!1064 = metadata !{i32 786688, metadata !171, metadata !"val", metadata !88, i32 1932, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 1932]
!1065 = metadata !{i32 1932, i32 18, metadata !171, null}
!1066 = metadata !{i32 1934, i32 5, metadata !171, null}
!1067 = metadata !{i32 1936, i32 5, metadata !171, null}
!1068 = metadata !{i32 36782}
!1069 = metadata !{i32 1938, i32 5, metadata !171, null}
!1070 = metadata !{i32 1939, i32 5, metadata !171, null}
!1071 = metadata !{i32 1940, i32 5, metadata !171, null}
!1072 = metadata !{i32 1943, i32 29, metadata !171, null}
!1073 = metadata !{i32 1943, i32 5, metadata !171, null}
!1074 = metadata !{i32 1944, i32 29, metadata !171, null}
!1075 = metadata !{i32 1944, i32 5, metadata !171, null}
!1076 = metadata !{i32 1946, i32 5, metadata !171, null}
!1077 = metadata !{i32 1947, i32 5, metadata !171, null}
!1078 = metadata !{i32 1948, i32 5, metadata !171, null}
!1079 = metadata !{i32 1951, i32 5, metadata !171, null}
!1080 = metadata !{i32 1953, i32 5, metadata !171, null}
!1081 = metadata !{i32 37121}
!1082 = metadata !{i32 1954, i32 5, metadata !171, null}
!1083 = metadata !{i32 1955, i32 5, metadata !171, null}
!1084 = metadata !{i32 1956, i32 5, metadata !171, null}
!1085 = metadata !{i32 1956, i32 45, metadata !171, null}
!1086 = metadata !{i32 1957, i32 5, metadata !171, null}
!1087 = metadata !{i32 1959, i32 5, metadata !171, null}
!1088 = metadata !{i32 1981, i32 7, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !87, metadata !172, i32 1981, i32 5, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1090 = metadata !{i32 1982, i32 7, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !87, metadata !172, i32 1982, i32 5, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1092 = metadata !{i32 1983, i32 7, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !87, metadata !172, i32 1983, i32 5, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1094 = metadata !{i32 1984, i32 7, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !87, metadata !172, i32 1984, i32 5, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1096 = metadata !{i32 1985, i32 7, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !87, metadata !172, i32 1985, i32 5, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1098 = metadata !{i32 1986, i32 7, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !87, metadata !172, i32 1986, i32 5, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1100 = metadata !{i32 1987, i32 7, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !87, metadata !172, i32 1987, i32 5, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1102 = metadata !{i32 1988, i32 7, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !87, metadata !172, i32 1988, i32 5, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1104 = metadata !{i32 1989, i32 7, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !87, metadata !172, i32 1989, i32 5, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1106 = metadata !{i32 1991, i32 7, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !87, metadata !172, i32 1991, i32 5, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1108 = metadata !{i32 1993, i32 5, metadata !172, null}
!1109 = metadata !{i32 1994, i32 5, metadata !172, null}
!1110 = metadata !{i32 1995, i32 5, metadata !172, null}
!1111 = metadata !{i32 1996, i32 5, metadata !172, null}
!1112 = metadata !{i32 1997, i32 1, metadata !172, null}
!1113 = metadata !{i32 786689, metadata !45, metadata !"g", metadata !16, i32 16777700, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 484]
!1114 = metadata !{i32 484, i32 9, metadata !45, null}
!1115 = metadata !{i32 486, i32 5, metadata !45, null}
!1116 = metadata !{i32 487, i32 1, metadata !45, null}
!1117 = metadata !{i32 491, i32 5, metadata !48, null}
!1118 = metadata !{i32 492, i32 5, metadata !48, null}
!1119 = metadata !{i32 493, i32 5, metadata !48, null}
!1120 = metadata !{i32 494, i32 5, metadata !48, null}
!1121 = metadata !{i32 786688, metadata !1122, metadata !"g", metadata !16, i32 496, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 496]
!1122 = metadata !{i32 786443, metadata !1, metadata !48, i32 495, i32 5, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1123 = metadata !{i32 496, i32 13, metadata !1122, null}
!1124 = metadata !{i32 497, i32 9, metadata !1122, null}
!1125 = metadata !{i32 498, i32 9, metadata !1122, null}
!1126 = metadata !{i32 786688, metadata !1127, metadata !"g", metadata !16, i32 500, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 500]
!1127 = metadata !{i32 786443, metadata !1, metadata !1122, i32 499, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1128 = metadata !{i32 500, i32 17, metadata !1127, null}
!1129 = metadata !{i32 501, i32 13, metadata !1127, null}
!1130 = metadata !{i32 502, i32 13, metadata !1127, null}
!1131 = metadata !{i32 505, i32 5, metadata !48, null}
!1132 = metadata !{i32 506, i32 1, metadata !48, null}
!1133 = metadata !{i32 786689, metadata !49, metadata !"a", metadata !16, i32 16777724, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 508]
!1134 = metadata !{i32 508, i32 21, metadata !49, null}
!1135 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !16, i32 510, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 510]
!1136 = metadata !{i32 510, i32 9, metadata !49, null}
!1137 = metadata !{i32 786688, metadata !49, metadata !"j", metadata !16, i32 510, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 510]
!1138 = metadata !{i32 510, i32 12, metadata !49, null}
!1139 = metadata !{i32 512, i32 5, metadata !49, null}
!1140 = metadata !{i32 513, i32 5, metadata !49, null}
!1141 = metadata !{i32 514, i32 5, metadata !49, null}
!1142 = metadata !{i32 516, i32 5, metadata !49, null}
!1143 = metadata !{i32 518, i32 5, metadata !49, null}
!1144 = metadata !{i32 519, i32 5, metadata !49, null}
!1145 = metadata !{i32 520, i32 5, metadata !49, null}
!1146 = metadata !{i32 521, i32 5, metadata !49, null}
!1147 = metadata !{i32 522, i32 5, metadata !49, null}
!1148 = metadata !{i32 523, i32 5, metadata !49, null}
!1149 = metadata !{i32 524, i32 9, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !49, i32 524, i32 5, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1151 = metadata !{i32 524, i32 9, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1153, i32 524, i32 9, i32 2, i32 133} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1153 = metadata !{i32 786443, metadata !1, metadata !1150, i32 524, i32 9, i32 1, i32 130} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1154 = metadata !{i32 525, i32 13, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1150, i32 525, i32 9, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1156 = metadata !{i32 525, i32 13, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !1, metadata !1158, i32 525, i32 13, i32 2, i32 132} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1158 = metadata !{i32 786443, metadata !1, metadata !1155, i32 525, i32 13, i32 1, i32 131} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1159 = metadata !{i32 526, i32 13, metadata !1155, null}
!1160 = metadata !{i32 525, i32 21, metadata !1155, null}
!1161 = metadata !{i32 526, i32 35, metadata !1155, null}
!1162 = metadata !{i32 524, i32 17, metadata !1150, null}
!1163 = metadata !{i32 527, i32 9, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1, metadata !49, i32 527, i32 5, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1165 = metadata !{i32 527, i32 9, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !1, metadata !1167, i32 527, i32 9, i32 2, i32 135} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1167 = metadata !{i32 786443, metadata !1, metadata !1164, i32 527, i32 9, i32 1, i32 134} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1168 = metadata !{i32 528, i32 9, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !1164, i32 527, i32 24, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1170 = metadata !{i32 529, i32 5, metadata !1169, null}
!1171 = metadata !{i32 527, i32 19, metadata !1164, null}
!1172 = metadata !{i32 530, i32 5, metadata !49, null}
!1173 = metadata !{i32 531, i32 1, metadata !49, null}
!1174 = metadata !{i32 786688, metadata !53, metadata !"a", metadata !16, i32 535, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 535]
!1175 = metadata !{i32 535, i32 9, metadata !53, null}
!1176 = metadata !{i32 786688, metadata !53, metadata !"b", metadata !16, i32 535, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 535]
!1177 = metadata !{i32 535, i32 12, metadata !53, null}
!1178 = metadata !{i32 536, i32 5, metadata !53, null}
!1179 = metadata !{i32 537, i32 5, metadata !53, null}
!1180 = metadata !{i32 538, i32 5, metadata !53, null}
!1181 = metadata !{i32 539, i32 5, metadata !53, null}
!1182 = metadata !{i32 540, i32 5, metadata !53, null}
!1183 = metadata !{i32 541, i32 5, metadata !53, null}
!1184 = metadata !{i32 542, i32 5, metadata !53, null}
!1185 = metadata !{i32 543, i32 5, metadata !53, null}
!1186 = metadata !{i32 544, i32 5, metadata !53, null}
!1187 = metadata !{i32 545, i32 5, metadata !53, null}
!1188 = metadata !{i32 546, i32 5, metadata !53, null}
!1189 = metadata !{i32 548, i32 5, metadata !53, null}
!1190 = metadata !{i32 549, i32 5, metadata !53, null}
!1191 = metadata !{i32 550, i32 5, metadata !53, null}
!1192 = metadata !{i32 551, i32 5, metadata !53, null}
!1193 = metadata !{i32 552, i32 5, metadata !53, null}
!1194 = metadata !{i32 553, i32 5, metadata !53, null}
!1195 = metadata !{i32 554, i32 5, metadata !53, null}
!1196 = metadata !{i32 555, i32 5, metadata !53, null}
!1197 = metadata !{i32 556, i32 5, metadata !53, null}
!1198 = metadata !{i32 557, i32 5, metadata !53, null}
!1199 = metadata !{i32 558, i32 5, metadata !53, null}
!1200 = metadata !{i32 559, i32 5, metadata !53, null}
!1201 = metadata !{i32 560, i32 5, metadata !53, null}
!1202 = metadata !{i32 561, i32 5, metadata !53, null}
!1203 = metadata !{i32 562, i32 5, metadata !53, null}
!1204 = metadata !{i32 563, i32 5, metadata !53, null}
!1205 = metadata !{i32 564, i32 5, metadata !53, null}
!1206 = metadata !{i32 565, i32 5, metadata !53, null}
!1207 = metadata !{i32 566, i32 5, metadata !53, null}
!1208 = metadata !{i32 567, i32 5, metadata !53, null}
!1209 = metadata !{i32 568, i32 5, metadata !53, null}
!1210 = metadata !{i32 570, i32 5, metadata !53, null}
!1211 = metadata !{i32 571, i32 5, metadata !53, null}
!1212 = metadata !{i32 572, i32 5, metadata !53, null}
!1213 = metadata !{i32 573, i32 5, metadata !53, null}
!1214 = metadata !{i32 574, i32 5, metadata !53, null}
!1215 = metadata !{i32 575, i32 5, metadata !53, null}
!1216 = metadata !{i32 576, i32 5, metadata !53, null}
!1217 = metadata !{i32 577, i32 5, metadata !53, null}
!1218 = metadata !{i32 578, i32 5, metadata !53, null}
!1219 = metadata !{i32 579, i32 5, metadata !53, null}
!1220 = metadata !{i32 580, i32 5, metadata !53, null}
!1221 = metadata !{i32 581, i32 5, metadata !53, null}
!1222 = metadata !{i32 582, i32 5, metadata !53, null}
!1223 = metadata !{i32 584, i32 12, metadata !53, null}
!1224 = metadata !{i32 585, i32 12, metadata !53, null}
!1225 = metadata !{i32 586, i32 12, metadata !53, null}
!1226 = metadata !{i32 587, i32 12, metadata !53, null}
!1227 = metadata !{i32 583, i32 5, metadata !53, null}
!1228 = metadata !{i32 588, i32 1, metadata !53, null}
!1229 = metadata !{i32 786689, metadata !54, metadata !"c", metadata !16, i32 16777806, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 590]
!1230 = metadata !{i32 590, i32 14, metadata !54, null}
!1231 = metadata !{i32 592, i32 5, metadata !54, null}
!1232 = metadata !{i32 786689, metadata !55, metadata !"vt", metadata !16, i32 16777815, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vt] [line 599]
!1233 = metadata !{i32 599, i32 16, metadata !55, null}
!1234 = metadata !{i32 786689, metadata !55, metadata !"vc", metadata !16, i32 33555031, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vc] [line 599]
!1235 = metadata !{i32 599, i32 24, metadata !55, null}
!1236 = metadata !{i32 601, i32 5, metadata !55, null}
!1237 = metadata !{i32 602, i32 5, metadata !55, null}
!1238 = metadata !{i32 603, i32 1, metadata !55, null}
!1239 = metadata !{i32 786689, metadata !58, metadata !"ft", metadata !16, i32 16777821, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ft] [line 605]
!1240 = metadata !{i32 605, i32 16, metadata !58, null}
!1241 = metadata !{i32 786689, metadata !58, metadata !"fc", metadata !16, i32 33555037, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fc] [line 605]
!1242 = metadata !{i32 605, i32 25, metadata !58, null}
!1243 = metadata !{i32 607, i32 5, metadata !58, null}
!1244 = metadata !{i32 608, i32 5, metadata !58, null}
!1245 = metadata !{i32 609, i32 1, metadata !58, null}
!1246 = metadata !{i32 786688, metadata !61, metadata !"a", metadata !16, i32 613, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 613]
!1247 = metadata !{i32 613, i32 9, metadata !61, null}
!1248 = metadata !{i32 786688, metadata !61, metadata !"b", metadata !16, i32 613, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 613]
!1249 = metadata !{i32 613, i32 12, metadata !61, null}
!1250 = metadata !{i32 615, i32 5, metadata !61, null}
!1251 = metadata !{i32 616, i32 5, metadata !61, null}
!1252 = metadata !{i32 617, i32 5, metadata !61, null}
!1253 = metadata !{i32 618, i32 5, metadata !61, null}
!1254 = metadata !{i32 619, i32 5, metadata !61, null}
!1255 = metadata !{i32 620, i32 5, metadata !61, null}
!1256 = metadata !{i32 621, i32 1, metadata !61, null}
!1257 = metadata !{i32 786688, metadata !62, metadata !"a", metadata !16, i32 625, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 625]
!1258 = metadata !{i32 625, i32 9, metadata !62, null}
!1259 = metadata !{i32 626, i32 5, metadata !62, null}
!1260 = metadata !{i32 627, i32 5, metadata !62, null}
!1261 = metadata !{i32 628, i32 5, metadata !62, null}
!1262 = metadata !{i32 629, i32 5, metadata !62, null}
!1263 = metadata !{i32 630, i32 5, metadata !62, null}
!1264 = metadata !{i32 631, i32 1, metadata !62, null}
!1265 = metadata !{i32 786688, metadata !63, metadata !"p", metadata !16, i32 637, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 637]
!1266 = metadata !{i32 637, i32 10, metadata !63, null}
!1267 = metadata !{i32 786688, metadata !63, metadata !"q", metadata !16, i32 637, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 637]
!1268 = metadata !{i32 637, i32 14, metadata !63, null}
!1269 = metadata !{i32 639, i32 5, metadata !63, null}
!1270 = metadata !{i32 640, i32 5, metadata !63, null}
!1271 = metadata !{i32 641, i32 5, metadata !63, null}
!1272 = metadata !{i32 642, i32 5, metadata !63, null}
!1273 = metadata !{i32 643, i32 5, metadata !63, null}
!1274 = metadata !{i32 644, i32 5, metadata !63, null}
!1275 = metadata !{i32 645, i32 5, metadata !63, null}
!1276 = metadata !{i32 646, i32 5, metadata !63, null}
!1277 = metadata !{i32 647, i32 5, metadata !63, null}
!1278 = metadata !{i32 648, i32 5, metadata !63, null}
!1279 = metadata !{i32 649, i32 5, metadata !63, null}
!1280 = metadata !{i32 650, i32 5, metadata !63, null}
!1281 = metadata !{i32 651, i32 5, metadata !63, null}
!1282 = metadata !{i32 652, i32 5, metadata !63, null}
!1283 = metadata !{i32 653, i32 1, metadata !63, null}
!1284 = metadata !{i32 786688, metadata !64, metadata !"a", metadata !16, i32 657, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 657]
!1285 = metadata !{i32 657, i32 9, metadata !64, null}
!1286 = metadata !{i32 786688, metadata !64, metadata !"b", metadata !16, i32 657, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 657]
!1287 = metadata !{i32 657, i32 12, metadata !64, null}
!1288 = metadata !{i32 658, i32 5, metadata !64, null}
!1289 = metadata !{i32 659, i32 5, metadata !64, null}
!1290 = metadata !{i32 660, i32 5, metadata !64, null}
!1291 = metadata !{i32 661, i32 5, metadata !64, null}
!1292 = metadata !{i32 662, i32 5, metadata !64, null}
!1293 = metadata !{i32 664, i32 5, metadata !64, null}
!1294 = metadata !{i32 665, i32 5, metadata !64, null}
!1295 = metadata !{i32 666, i32 5, metadata !64, null}
!1296 = metadata !{i32 667, i32 5, metadata !64, null}
!1297 = metadata !{i32 668, i32 5, metadata !64, null}
!1298 = metadata !{i32 669, i32 5, metadata !64, null}
!1299 = metadata !{i32 671, i32 5, metadata !64, null}
!1300 = metadata !{i32 672, i32 5, metadata !64, null}
!1301 = metadata !{i32 673, i32 5, metadata !64, null}
!1302 = metadata !{i32 674, i32 5, metadata !64, null}
!1303 = metadata !{i32 675, i32 5, metadata !64, null}
!1304 = metadata !{i32 676, i32 5, metadata !64, null}
!1305 = metadata !{i32 677, i32 1, metadata !64, null}
!1306 = metadata !{i32 786688, metadata !65, metadata !"s", metadata !16, i32 701, metadata !1307, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 701]
!1307 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1308} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from struct1]
!1308 = metadata !{i32 786454, metadata !1, null, metadata !"struct1", i32 422, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [struct1] [line 422, size 0, align 0, offset 0] [from struct1]
!1309 = metadata !{i32 701, i32 14, metadata !65, null}
!1310 = metadata !{i32 786688, metadata !65, metadata !"u", metadata !16, i32 702, metadata !1311, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 702]
!1311 = metadata !{i32 786455, metadata !1, null, metadata !"union2", i32 429, i64 32, i64 32, i64 0, i32 0, null, metadata !1312, i32 0, null, null, null} ; [ DW_TAG_union_type ] [union2] [line 429, size 32, align 32, offset 0] [def] [from ]
!1312 = metadata !{metadata !1313, metadata !1314}
!1313 = metadata !{i32 786445, metadata !1, metadata !1311, metadata !"w1", i32 430, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [w1] [line 430, size 32, align 32, offset 0] [from int]
!1314 = metadata !{i32 786445, metadata !1, metadata !1311, metadata !"w2", i32 431, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [w2] [line 431, size 32, align 32, offset 0] [from int]
!1315 = metadata !{i32 702, i32 18, metadata !65, null}
!1316 = metadata !{i32 704, i32 5, metadata !65, null}
!1317 = metadata !{i32 705, i32 5, metadata !65, null}
!1318 = metadata !{i32 710, i32 5, metadata !65, null}
!1319 = metadata !{i32 711, i32 5, metadata !65, null}
!1320 = metadata !{i32 712, i32 5, metadata !65, null}
!1321 = metadata !{i32 713, i32 5, metadata !65, null}
!1322 = metadata !{i32 715, i32 5, metadata !65, null}
!1323 = metadata !{i32 716, i32 5, metadata !65, null}
!1324 = metadata !{i32 717, i32 5, metadata !65, null}
!1325 = metadata !{i32 718, i32 5, metadata !65, null}
!1326 = metadata !{i32 719, i32 5, metadata !65, null}
!1327 = metadata !{i32 720, i32 5, metadata !65, null}
!1328 = metadata !{i32 721, i32 5, metadata !65, null}
!1329 = metadata !{i32 722, i32 5, metadata !65, null}
!1330 = metadata !{i32 723, i32 5, metadata !65, null}
!1331 = metadata !{i32 724, i32 5, metadata !65, null}
!1332 = metadata !{i32 725, i32 5, metadata !65, null}
!1333 = metadata !{i32 727, i32 5, metadata !65, null}
!1334 = metadata !{i32 730, i32 5, metadata !65, null}
!1335 = metadata !{i32 732, i32 5, metadata !65, null}
!1336 = metadata !{i32 734, i32 5, metadata !65, null}
!1337 = metadata !{i32 736, i32 5, metadata !65, null}
!1338 = metadata !{i32 740, i32 5, metadata !65, null}
!1339 = metadata !{i32 741, i32 5, metadata !65, null}
!1340 = metadata !{i32 742, i32 1, metadata !65, null}
!1341 = metadata !{i32 786688, metadata !66, metadata !"var1", metadata !16, i32 747, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var1] [line 747]
!1342 = metadata !{i32 747, i32 9, metadata !66, null}
!1343 = metadata !{i32 786688, metadata !66, metadata !"var2", metadata !16, i32 747, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var2] [line 747]
!1344 = metadata !{i32 747, i32 15, metadata !66, null}
!1345 = metadata !{i32 749, i32 5, metadata !66, null}
!1346 = metadata !{i32 751, i32 5, metadata !66, null}
!1347 = metadata !{i32 752, i32 5, metadata !66, null}
!1348 = metadata !{i32 753, i32 5, metadata !66, null}
!1349 = metadata !{i32 755, i32 5, metadata !66, null}
!1350 = metadata !{i32 757, i32 5, metadata !66, null}
!1351 = metadata !{i32 759, i32 5, metadata !66, null}
!1352 = metadata !{i32 761, i32 5, metadata !66, null}
!1353 = metadata !{i32 763, i32 5, metadata !66, null}
!1354 = metadata !{i32 765, i32 5, metadata !66, null}
!1355 = metadata !{i32 766, i32 5, metadata !66, null}
!1356 = metadata !{i32 767, i32 5, metadata !66, null}
!1357 = metadata !{i32 768, i32 5, metadata !66, null}
!1358 = metadata !{i32 769, i32 5, metadata !66, null}
!1359 = metadata !{i32 770, i32 5, metadata !66, null}
!1360 = metadata !{i32 771, i32 1, metadata !66, null}
!1361 = metadata !{i32 786688, metadata !67, metadata !"s", metadata !16, i32 793, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 793]
!1362 = metadata !{i32 793, i32 10, metadata !67, null}
!1363 = metadata !{i32 786688, metadata !67, metadata !"a", metadata !16, i32 793, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 793]
!1364 = metadata !{i32 793, i32 13, metadata !67, null}
!1365 = metadata !{i32 786688, metadata !67, metadata !"b", metadata !16, i32 793, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 793]
!1366 = metadata !{i32 793, i32 16, metadata !67, null}
!1367 = metadata !{i32 786688, metadata !67, metadata !"t", metadata !16, i32 793, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 793]
!1368 = metadata !{i32 793, i32 19, metadata !67, null}
!1369 = metadata !{i32 786688, metadata !67, metadata !"f", metadata !16, i32 793, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 793]
!1370 = metadata !{i32 793, i32 22, metadata !67, null}
!1371 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !16, i32 793, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 793]
!1372 = metadata !{i32 793, i32 25, metadata !67, null}
!1373 = metadata !{i32 795, i32 5, metadata !67, null}
!1374 = metadata !{i32 796, i32 5, metadata !67, null}
!1375 = metadata !{i32 797, i32 5, metadata !67, null}
!1376 = metadata !{i32 799, i32 9, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !1, metadata !67, i32 799, i32 9, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1378 = metadata !{i32 799, i32 9, metadata !1379, null}
!1379 = metadata !{i32 786443, metadata !1, metadata !1377, i32 799, i32 9, i32 1, i32 136} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1380 = metadata !{i32 800, i32 9, metadata !1377, null}
!1381 = metadata !{i32 801, i32 5, metadata !67, null}
!1382 = metadata !{i32 803, i32 5, metadata !67, null}
!1383 = metadata !{i32 804, i32 5, metadata !67, null}
!1384 = metadata !{i32 805, i32 5, metadata !67, null}
!1385 = metadata !{i32 807, i32 5, metadata !67, null}
!1386 = metadata !{i32 810, i32 5, metadata !67, null}
!1387 = metadata !{i32 816, i32 5, metadata !67, null}
!1388 = metadata !{i32 819, i32 5, metadata !67, null}
!1389 = metadata !{i32 820, i32 5, metadata !67, null}
!1390 = metadata !{i32 823, i32 5, metadata !67, null}
!1391 = metadata !{i32 824, i32 5, metadata !67, null}
!1392 = metadata !{i32 825, i32 5, metadata !67, null}
!1393 = metadata !{i32 825, i32 5, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !1, metadata !67, i32 825, i32 5, i32 1, i32 137} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1395 = metadata !{i32 825, i32 5, metadata !1396, null}
!1396 = metadata !{i32 786443, metadata !1, metadata !67, i32 825, i32 5, i32 2, i32 138} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1397 = metadata !{i32 825, i32 5, metadata !1398, null}
!1398 = metadata !{i32 786443, metadata !1, metadata !1399, i32 825, i32 5, i32 4, i32 140} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1399 = metadata !{i32 786443, metadata !1, metadata !67, i32 825, i32 5, i32 3, i32 139} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1400 = metadata !{i32 827, i32 5, metadata !67, null}
!1401 = metadata !{i32 830, i32 5, metadata !67, null}
!1402 = metadata !{i32 831, i32 5, metadata !67, null}
!1403 = metadata !{i32 832, i32 5, metadata !67, null}
!1404 = metadata !{i32 833, i32 5, metadata !67, null}
!1405 = metadata !{i32 833, i32 5, metadata !1406, null}
!1406 = metadata !{i32 786443, metadata !1, metadata !67, i32 833, i32 5, i32 1, i32 141} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1407 = metadata !{i32 833, i32 5, metadata !1408, null}
!1408 = metadata !{i32 786443, metadata !1, metadata !67, i32 833, i32 5, i32 2, i32 142} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1409 = metadata !{i32 834, i32 5, metadata !67, null}
!1410 = metadata !{i32 834, i32 5, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !1, metadata !67, i32 834, i32 5, i32 2, i32 144} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1412 = metadata !{i32 834, i32 5, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !1, metadata !1414, i32 834, i32 5, i32 3, i32 145} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1414 = metadata !{i32 786443, metadata !1, metadata !67, i32 834, i32 5, i32 1, i32 143} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1415 = metadata !{i32 834, i32 5, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !1, metadata !67, i32 834, i32 5, i32 4, i32 146} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1417 = metadata !{i32 834, i32 5, metadata !1418, null}
!1418 = metadata !{i32 786443, metadata !1, metadata !67, i32 834, i32 5, i32 5, i32 147} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1419 = metadata !{i32 786688, metadata !1420, metadata !"aspect_on", metadata !16, i32 838, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aspect_on] [line 838]
!1420 = metadata !{i32 786443, metadata !1, metadata !67, i32 837, i32 5, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1421 = metadata !{i32 838, i32 13, metadata !1420, null}
!1422 = metadata !{i32 786688, metadata !1420, metadata !"aspect_native", metadata !16, i32 839, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aspect_native] [line 839]
!1423 = metadata !{i32 839, i32 13, metadata !1420, null}
!1424 = metadata !{i32 839, i32 9, metadata !1420, null}
!1425 = metadata !{i32 786688, metadata !1420, metadata !"bfu_aspect", metadata !16, i32 840, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bfu_aspect] [line 840]
!1426 = metadata !{i32 840, i32 16, metadata !1420, null}
!1427 = metadata !{i32 840, i32 9, metadata !1420, null}
!1428 = metadata !{i32 786688, metadata !1420, metadata !"aspect", metadata !16, i32 841, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aspect] [line 841]
!1429 = metadata !{i32 841, i32 13, metadata !1420, null}
!1430 = metadata !{i32 842, i32 13, metadata !1431, null}
!1431 = metadata !{i32 786443, metadata !1, metadata !1420, i32 842, i32 9, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1432 = metadata !{i32 842, i32 13, metadata !1433, null}
!1433 = metadata !{i32 786443, metadata !1, metadata !1434, i32 842, i32 13, i32 2, i32 153} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1434 = metadata !{i32 786443, metadata !1, metadata !1431, i32 842, i32 13, i32 1, i32 148} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1435 = metadata !{i32 843, i32 13, metadata !1436, null}
!1436 = metadata !{i32 786443, metadata !1, metadata !1431, i32 842, i32 56, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1437 = metadata !{i32 843, i32 13, metadata !1438, null}
!1438 = metadata !{i32 786443, metadata !1, metadata !1436, i32 843, i32 13, i32 1, i32 149} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1439 = metadata !{i32 843, i32 13, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !1, metadata !1436, i32 843, i32 13, i32 2, i32 150} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1441 = metadata !{i32 843, i32 13, metadata !1442, null}
!1442 = metadata !{i32 786443, metadata !1, metadata !1443, i32 843, i32 13, i32 4, i32 152} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1443 = metadata !{i32 786443, metadata !1, metadata !1436, i32 843, i32 13, i32 3, i32 151} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1444 = metadata !{i32 844, i32 13, metadata !1436, null}
!1445 = metadata !{i32 845, i32 9, metadata !1436, null}
!1446 = metadata !{i32 842, i32 43, metadata !1431, null}
!1447 = metadata !{i32 786688, metadata !1448, metadata !"a", metadata !16, i32 852, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 852]
!1448 = metadata !{i32 786443, metadata !1, metadata !67, i32 849, i32 5, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1449 = metadata !{i32 852, i32 13, metadata !1448, null}
!1450 = metadata !{i32 852, i32 9, metadata !1448, null}
!1451 = metadata !{i32 854, i32 9, metadata !1448, null}
!1452 = metadata !{i32 855, i32 9, metadata !1448, null}
!1453 = metadata !{i32 855, i32 9, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !1, metadata !1448, i32 855, i32 9, i32 1, i32 154} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1455 = metadata !{i32 855, i32 9, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !1, metadata !1448, i32 855, i32 9, i32 2, i32 155} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1457 = metadata !{i32 855, i32 9, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !1, metadata !1459, i32 855, i32 9, i32 4, i32 157} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1459 = metadata !{i32 786443, metadata !1, metadata !1448, i32 855, i32 9, i32 3, i32 156} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1460 = metadata !{i32 855, i32 9, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !1, metadata !1448, i32 855, i32 9, i32 5, i32 158} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1462 = metadata !{i32 855, i32 9, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !1, metadata !1448, i32 855, i32 9, i32 6, i32 159} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1464 = metadata !{i32 855, i32 9, metadata !1465, null}
!1465 = metadata !{i32 786443, metadata !1, metadata !1466, i32 855, i32 9, i32 8, i32 161} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1466 = metadata !{i32 786443, metadata !1, metadata !1448, i32 855, i32 9, i32 7, i32 160} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1467 = metadata !{i32 859, i32 9, metadata !1468, null}
!1468 = metadata !{i32 786443, metadata !1, metadata !67, i32 859, i32 5, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1469 = metadata !{i32 859, i32 9, metadata !1470, null}
!1470 = metadata !{i32 786443, metadata !1, metadata !1471, i32 859, i32 9, i32 2, i32 169} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1471 = metadata !{i32 786443, metadata !1, metadata !1468, i32 859, i32 9, i32 1, i32 162} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1472 = metadata !{i32 860, i32 13, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !1, metadata !1474, i32 860, i32 13, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1474 = metadata !{i32 786443, metadata !1, metadata !1468, i32 859, i32 24, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1475 = metadata !{i32 860, i32 13, metadata !1476, null}
!1476 = metadata !{i32 786443, metadata !1, metadata !1473, i32 860, i32 13, i32 1, i32 163} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1477 = metadata !{i32 860, i32 13, metadata !1478, null}
!1478 = metadata !{i32 786443, metadata !1, metadata !1473, i32 860, i32 13, i32 3, i32 165} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1479 = metadata !{i32 860, i32 13, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !1, metadata !1481, i32 860, i32 13, i32 4, i32 166} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1481 = metadata !{i32 786443, metadata !1, metadata !1473, i32 860, i32 13, i32 2, i32 164} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1482 = metadata !{i32 860, i32 13, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !1, metadata !1484, i32 860, i32 13, i32 6, i32 168} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1484 = metadata !{i32 786443, metadata !1, metadata !1473, i32 860, i32 13, i32 5, i32 167} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1485 = metadata !{i32 861, i32 13, metadata !1473, null}
!1486 = metadata !{i32 862, i32 5, metadata !1474, null}
!1487 = metadata !{i32 859, i32 19, metadata !1468, null}
!1488 = metadata !{i32 863, i32 1, metadata !67, null}
!1489 = metadata !{i32 786689, metadata !205, metadata !"a", metadata !16, i32 16778002, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 786]
!1490 = metadata !{i32 786, i32 25, metadata !205, null}
!1491 = metadata !{i32 788, i32 5, metadata !205, null}
!1492 = metadata !{i32 788, i32 5, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !1, metadata !205, i32 788, i32 5, i32 1, i32 170} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1494 = metadata !{i32 788, i32 5, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !1, metadata !205, i32 788, i32 5, i32 3, i32 172} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1496 = metadata !{i32 788, i32 5, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !1, metadata !1498, i32 788, i32 5, i32 4, i32 173} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1498 = metadata !{i32 786443, metadata !1, metadata !205, i32 788, i32 5, i32 2, i32 171} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1499 = metadata !{i32 788, i32 5, metadata !1500, null}
!1500 = metadata !{i32 786443, metadata !1, metadata !1501, i32 788, i32 5, i32 6, i32 175} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1501 = metadata !{i32 786443, metadata !1, metadata !205, i32 788, i32 5, i32 5, i32 174} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/test/tcctest_file.c]
!1502 = metadata !{i32 786689, metadata !69, metadata !"a", metadata !16, i32 16778137, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 921]
!1503 = metadata !{i32 921, i32 10, metadata !69, null}
!1504 = metadata !{i32 786689, metadata !69, metadata !"b", metadata !16, i32 33555353, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 921]
!1505 = metadata !{i32 921, i32 13, metadata !69, null}
!1506 = metadata !{i32 923, i32 5, metadata !69, null}
!1507 = metadata !{i32 786689, metadata !70, metadata !"a", metadata !16, i32 16778142, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 926]
!1508 = metadata !{i32 926, i32 14, metadata !70, null}
!1509 = metadata !{i32 786689, metadata !70, metadata !"b", metadata !16, i32 33555358, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 926]
!1510 = metadata !{i32 926, i32 17, metadata !70, null}
!1511 = metadata !{i32 928, i32 5, metadata !70, null}
!1512 = metadata !{i32 933, i32 5, metadata !71, null}
!1513 = metadata !{i32 934, i32 26, metadata !71, null}
!1514 = metadata !{i32 934, i32 5, metadata !71, null}
!1515 = metadata !{i32 935, i32 26, metadata !71, null}
!1516 = metadata !{i32 935, i32 5, metadata !71, null}
!1517 = metadata !{i32 936, i32 5, metadata !71, null}
!1518 = metadata !{i32 786689, metadata !75, metadata !"s1", metadata !16, i32 16778184, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 968]
!1519 = metadata !{i32 968, i32 42, metadata !75, null}
!1520 = metadata !{i32 786689, metadata !75, metadata !"t", metadata !16, i32 33555400, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 968]
!1521 = metadata !{i32 968, i32 50, metadata !75, null}
!1522 = metadata !{i32 970, i32 5, metadata !75, null}
!1523 = metadata !{i32 971, i32 1, metadata !75, null}
!1524 = metadata !{i32 786689, metadata !82, metadata !"s1", metadata !16, i32 16778189, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 973]
!1525 = metadata !{i32 973, i32 53, metadata !82, null}
!1526 = metadata !{i32 786689, metadata !82, metadata !"t", metadata !16, i32 33555405, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 973]
!1527 = metadata !{i32 973, i32 61, metadata !82, null}
!1528 = metadata !{i32 975, i32 5, metadata !82, null}
!1529 = metadata !{i32 976, i32 5, metadata !82, null}
!1530 = metadata !{i32 977, i32 5, metadata !82, null}
!1531 = metadata !{i32 786689, metadata !86, metadata !"a", metadata !88, i32 16778279, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1063]
!1532 = metadata !{i32 1063, i32 17, metadata !86, null}
!1533 = metadata !{i32 786689, metadata !86, metadata !"b", metadata !88, i32 33555495, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1063]
!1534 = metadata !{i32 1063, i32 26, metadata !86, null}
!1535 = metadata !{i32 786689, metadata !86, metadata !"c", metadata !88, i32 50332711, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1063]
!1536 = metadata !{i32 1063, i32 43, metadata !86, null}
!1537 = metadata !{i32 786689, metadata !86, metadata !"d", metadata !88, i32 67109927, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 1063]
!1538 = metadata !{i32 1063, i32 61, metadata !86, null}
!1539 = metadata !{i32 1065, i32 5, metadata !86, null}
!1540 = metadata !{i32 1066, i32 1, metadata !86, null}
!1541 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !88, i32 1270, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1270]
!1542 = metadata !{i32 1270, i32 9, metadata !96, null}
!1543 = metadata !{i32 1272, i32 9, metadata !1544, null}
!1544 = metadata !{i32 786443, metadata !87, metadata !96, i32 1272, i32 5, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1545 = metadata !{i32 1272, i32 9, metadata !1546, null}
!1546 = metadata !{i32 786443, metadata !87, metadata !1547, i32 1272, i32 9, i32 2, i32 177} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1547 = metadata !{i32 786443, metadata !87, metadata !1544, i32 1272, i32 9, i32 1, i32 176} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1548 = metadata !{i32 1273, i32 9, metadata !1549, null}
!1549 = metadata !{i32 786443, metadata !87, metadata !1544, i32 1272, i32 23, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1550 = metadata !{i32 1276, i32 13, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !87, metadata !1549, i32 1273, i32 19, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1552 = metadata !{i32 1277, i32 13, metadata !1551, null}
!1553 = metadata !{i32 1279, i32 13, metadata !1551, null}
!1554 = metadata !{i32 1280, i32 13, metadata !1551, null}
!1555 = metadata !{i32 1282, i32 13, metadata !1551, null}
!1556 = metadata !{i32 1283, i32 13, metadata !1551, null}
!1557 = metadata !{i32 1285, i32 13, metadata !1551, null}
!1558 = metadata !{i32 1286, i32 13, metadata !1551, null}
!1559 = metadata !{i32 1288, i32 5, metadata !1549, null}
!1560 = metadata !{i32 1272, i32 18, metadata !1544, null}
!1561 = metadata !{i32 1289, i32 5, metadata !96, null}
!1562 = metadata !{i32 1290, i32 1, metadata !96, null}
!1563 = metadata !{i32 786689, metadata !99, metadata !"a", metadata !88, i32 16778617, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1401]
!1564 = metadata !{i32 1401, i32 17, metadata !99, null}
!1565 = metadata !{i32 786689, metadata !99, metadata !"b", metadata !88, i32 33555833, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1401]
!1566 = metadata !{i32 1401, i32 26, metadata !99, null}
!1567 = metadata !{i32 1401, i32 30, metadata !99, null}
!1568 = metadata !{i32 1401, i32 107, metadata !99, null}
!1569 = metadata !{i32 1401, i32 218, metadata !99, null}
!1570 = metadata !{i32 1401, i32 242, metadata !99, null}
!1571 = metadata !{i32 1401, i32 0, metadata !99, null}
!1572 = metadata !{i32 786689, metadata !103, metadata !"a", metadata !88, i32 16778617, metadata !102, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1401]
!1573 = metadata !{i32 1401, i32 0, metadata !103, null}
!1574 = metadata !{i32 786688, metadata !103, metadata !"fa", metadata !88, i32 1401, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fa] [line 1401]
!1575 = metadata !{i32 786688, metadata !103, metadata !"da", metadata !88, i32 1401, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [da] [line 1401]
!1576 = metadata !{i32 786688, metadata !103, metadata !"la", metadata !88, i32 1401, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la] [line 1401]
!1577 = metadata !{i32 786688, metadata !103, metadata !"ia", metadata !88, i32 1401, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 1401]
!1578 = metadata !{i32 786688, metadata !103, metadata !"ua", metadata !88, i32 1401, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ua] [line 1401]
!1579 = metadata !{i32 786688, metadata !103, metadata !"b", metadata !88, i32 1401, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1401]
!1580 = metadata !{i32 1401, i32 0, metadata !106, null}
!1581 = metadata !{i32 786689, metadata !107, metadata !"a", metadata !88, i32 16778618, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1402]
!1582 = metadata !{i32 1402, i32 18, metadata !107, null}
!1583 = metadata !{i32 786689, metadata !107, metadata !"b", metadata !88, i32 33555834, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1402]
!1584 = metadata !{i32 1402, i32 28, metadata !107, null}
!1585 = metadata !{i32 1402, i32 32, metadata !107, null}
!1586 = metadata !{i32 1402, i32 109, metadata !107, null}
!1587 = metadata !{i32 1402, i32 220, metadata !107, null}
!1588 = metadata !{i32 1402, i32 244, metadata !107, null}
!1589 = metadata !{i32 1402, i32 0, metadata !107, null}
!1590 = metadata !{i32 786689, metadata !111, metadata !"a", metadata !88, i32 16778618, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1402]
!1591 = metadata !{i32 1402, i32 0, metadata !111, null}
!1592 = metadata !{i32 786688, metadata !111, metadata !"fa", metadata !88, i32 1402, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fa] [line 1402]
!1593 = metadata !{i32 786688, metadata !111, metadata !"da", metadata !88, i32 1402, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [da] [line 1402]
!1594 = metadata !{i32 786688, metadata !111, metadata !"la", metadata !88, i32 1402, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la] [line 1402]
!1595 = metadata !{i32 786688, metadata !111, metadata !"ia", metadata !88, i32 1402, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 1402]
!1596 = metadata !{i32 786688, metadata !111, metadata !"ua", metadata !88, i32 1402, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ua] [line 1402]
!1597 = metadata !{i32 786688, metadata !111, metadata !"b", metadata !88, i32 1402, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1402]
!1598 = metadata !{i32 1402, i32 0, metadata !114, null}
!1599 = metadata !{i32 786689, metadata !115, metadata !"a", metadata !88, i32 16778619, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1403]
!1600 = metadata !{i32 1403, i32 24, metadata !115, null}
!1601 = metadata !{i32 786689, metadata !115, metadata !"b", metadata !88, i32 33555835, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1403]
!1602 = metadata !{i32 1403, i32 39, metadata !115, null}
!1603 = metadata !{i32 1403, i32 43, metadata !115, null}
!1604 = metadata !{i32 1403, i32 120, metadata !115, null}
!1605 = metadata !{i32 1403, i32 238, metadata !115, null}
!1606 = metadata !{i32 1403, i32 0, metadata !115, null}
!1607 = metadata !{i32 786689, metadata !119, metadata !"a", metadata !88, i32 16778619, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1403]
!1608 = metadata !{i32 1403, i32 0, metadata !119, null}
!1609 = metadata !{i32 786688, metadata !119, metadata !"fa", metadata !88, i32 1403, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fa] [line 1403]
!1610 = metadata !{i32 786688, metadata !119, metadata !"da", metadata !88, i32 1403, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [da] [line 1403]
!1611 = metadata !{i32 786688, metadata !119, metadata !"la", metadata !88, i32 1403, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la] [line 1403]
!1612 = metadata !{i32 786688, metadata !119, metadata !"ia", metadata !88, i32 1403, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ia] [line 1403]
!1613 = metadata !{i32 786688, metadata !119, metadata !"ua", metadata !88, i32 1403, metadata !182, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ua] [line 1403]
!1614 = metadata !{i32 786688, metadata !119, metadata !"b", metadata !88, i32 1403, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1403]
!1615 = metadata !{i32 1403, i32 0, metadata !122, null}
!1616 = metadata !{i32 786688, metadata !125, metadata !"func", metadata !88, i32 1447, metadata !1617, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 1447]
!1617 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1618 = metadata !{i32 1447, i32 12, metadata !125, null}
!1619 = metadata !{i32 786688, metadata !125, metadata !"a", metadata !88, i32 1448, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1448]
!1620 = metadata !{i32 1448, i32 9, metadata !125, null}
!1621 = metadata !{i32 786688, metadata !125, metadata !"st1", metadata !88, i32 1452, metadata !1622, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [st1] [line 1452]
!1622 = metadata !{i32 786451, metadata !87, metadata !125, metadata !"", i32 1449, i64 64, i64 32, i32 0, i32 0, null, metadata !1623, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 1449, size 64, align 32, offset 0] [def] [from ]
!1623 = metadata !{metadata !1624, metadata !1625}
!1624 = metadata !{i32 786445, metadata !87, metadata !1622, metadata !"dummy", i32 1450, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [dummy] [line 1450, size 32, align 32, offset 0] [from int]
!1625 = metadata !{i32 786445, metadata !87, metadata !1622, metadata !"func", i32 1451, i64 32, i64 32, i64 32, i32 0, metadata !1617} ; [ DW_TAG_member ] [func] [line 1451, size 32, align 32, offset 32] [from ]
!1626 = metadata !{i32 1452, i32 7, metadata !125, null}
!1627 = metadata !{i32 1454, i32 5, metadata !125, null}
!1628 = metadata !{i32 1455, i32 5, metadata !125, null}
!1629 = metadata !{i32 1456, i32 5, metadata !125, null}
!1630 = metadata !{i32 1457, i32 5, metadata !125, null}
!1631 = metadata !{i32 1458, i32 5, metadata !125, null}
!1632 = metadata !{i32 1459, i32 5, metadata !125, null}
!1633 = metadata !{i32 1460, i32 5, metadata !125, null}
!1634 = metadata !{i32 1462, i32 5, metadata !125, null}
!1635 = metadata !{i32 1463, i32 5, metadata !125, null}
!1636 = metadata !{i32 1464, i32 5, metadata !125, null}
!1637 = metadata !{i32 1465, i32 5, metadata !125, null}
!1638 = metadata !{i32 1466, i32 5, metadata !125, null}
!1639 = metadata !{i32 1467, i32 5, metadata !125, null}
!1640 = metadata !{i32 1468, i32 1, metadata !125, null}
!1641 = metadata !{i32 786689, metadata !126, metadata !"a", metadata !88, i32 16778686, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1470]
!1642 = metadata !{i32 1470, i32 25, metadata !126, null}
!1643 = metadata !{i32 786689, metadata !126, metadata !"b", metadata !88, i32 33555902, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1470]
!1644 = metadata !{i32 1470, i32 38, metadata !126, null}
!1645 = metadata !{i32 786688, metadata !126, metadata !"ua", metadata !88, i32 1472, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ua] [line 1472]
!1646 = metadata !{i32 1472, i32 24, metadata !126, null}
!1647 = metadata !{i32 786688, metadata !126, metadata !"ub", metadata !88, i32 1472, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ub] [line 1472]
!1648 = metadata !{i32 1472, i32 28, metadata !126, null}
!1649 = metadata !{i32 1474, i32 5, metadata !126, null}
!1650 = metadata !{i32 1475, i32 5, metadata !126, null}
!1651 = metadata !{i32 1477, i32 5, metadata !126, null}
!1652 = metadata !{i32 1482, i32 9, metadata !1653, null}
!1653 = metadata !{i32 786443, metadata !87, metadata !126, i32 1482, i32 9, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1654 = metadata !{i32 1483, i32 9, metadata !1655, null}
!1655 = metadata !{i32 786443, metadata !87, metadata !1653, i32 1482, i32 17, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1656 = metadata !{i32 1486, i32 5, metadata !1655, null}
!1657 = metadata !{i32 1489, i32 5, metadata !126, null}
!1658 = metadata !{i32 1495, i32 5, metadata !126, null}
!1659 = metadata !{i32 1503, i32 5, metadata !126, null}
!1660 = metadata !{i32 1512, i32 5, metadata !126, null}
!1661 = metadata !{i32 1513, i32 5, metadata !126, null}
!1662 = metadata !{i32 1514, i32 5, metadata !126, null}
!1663 = metadata !{i32 1515, i32 5, metadata !126, null}
!1664 = metadata !{i32 1516, i32 5, metadata !126, null}
!1665 = metadata !{i32 1517, i32 5, metadata !126, null}
!1666 = metadata !{i32 1518, i32 1, metadata !126, null}
!1667 = metadata !{i32 786689, metadata !130, metadata !"a", metadata !88, i32 16778736, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1520]
!1668 = metadata !{i32 1520, i32 24, metadata !130, null}
!1669 = metadata !{i32 786689, metadata !130, metadata !"b", metadata !88, i32 33555952, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1520]
!1670 = metadata !{i32 1520, i32 31, metadata !130, null}
!1671 = metadata !{i32 1522, i32 5, metadata !130, null}
!1672 = metadata !{i32 1526, i32 5, metadata !130, null}
!1673 = metadata !{i32 1530, i32 5, metadata !130, null}
!1674 = metadata !{i32 1534, i32 1, metadata !130, null}
!1675 = metadata !{i32 786688, metadata !133, metadata !"fa", metadata !88, i32 1538, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fa] [line 1538]
!1676 = metadata !{i32 1538, i32 11, metadata !133, null}
!1677 = metadata !{i32 786688, metadata !133, metadata !"da", metadata !88, i32 1539, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [da] [line 1539]
!1678 = metadata !{i32 1539, i32 12, metadata !133, null}
!1679 = metadata !{i32 786688, metadata !133, metadata !"lda", metadata !88, i32 1540, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lda] [line 1540]
!1680 = metadata !{i32 1540, i32 17, metadata !133, null}
!1681 = metadata !{i32 786688, metadata !133, metadata !"la", metadata !88, i32 1541, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [la] [line 1541]
!1682 = metadata !{i32 1541, i32 15, metadata !133, null}
!1683 = metadata !{i32 786688, metadata !133, metadata !"lb", metadata !88, i32 1541, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lb] [line 1541]
!1684 = metadata !{i32 1541, i32 19, metadata !133, null}
!1685 = metadata !{i32 786688, metadata !133, metadata !"lc", metadata !88, i32 1541, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lc] [line 1541]
!1686 = metadata !{i32 1541, i32 23, metadata !133, null}
!1687 = metadata !{i32 786688, metadata !133, metadata !"ula", metadata !88, i32 1542, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ula] [line 1542]
!1688 = metadata !{i32 1542, i32 24, metadata !133, null}
!1689 = metadata !{i32 786688, metadata !133, metadata !"ulb", metadata !88, i32 1542, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ulb] [line 1542]
!1690 = metadata !{i32 1542, i32 29, metadata !133, null}
!1691 = metadata !{i32 786688, metadata !133, metadata !"ulc", metadata !88, i32 1542, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ulc] [line 1542]
!1692 = metadata !{i32 1542, i32 34, metadata !133, null}
!1693 = metadata !{i32 1543, i32 5, metadata !133, null}
!1694 = metadata !{i32 1544, i32 5, metadata !133, null}
!1695 = metadata !{i32 1545, i32 5, metadata !133, null}
!1696 = metadata !{i32 1546, i32 5, metadata !133, null}
!1697 = metadata !{i32 1547, i32 5, metadata !133, null}
!1698 = metadata !{i32 1549, i32 5, metadata !133, null}
!1699 = metadata !{i32 1550, i32 5, metadata !133, null}
!1700 = metadata !{i32 1551, i32 5, metadata !133, null}
!1701 = metadata !{i32 1552, i32 5, metadata !133, null}
!1702 = metadata !{i32 1554, i32 5, metadata !133, null}
!1703 = metadata !{i32 1555, i32 5, metadata !133, null}
!1704 = metadata !{i32 1556, i32 5, metadata !133, null}
!1705 = metadata !{i32 1557, i32 5, metadata !133, null}
!1706 = metadata !{i32 1559, i32 5, metadata !133, null}
!1707 = metadata !{i32 1560, i32 5, metadata !133, null}
!1708 = metadata !{i32 1561, i32 5, metadata !133, null}
!1709 = metadata !{i32 1562, i32 5, metadata !133, null}
!1710 = metadata !{i32 1564, i32 5, metadata !133, null}
!1711 = metadata !{i32 1565, i32 5, metadata !133, null}
!1712 = metadata !{i32 1566, i32 5, metadata !133, null}
!1713 = metadata !{i32 1567, i32 5, metadata !133, null}
!1714 = metadata !{i32 1568, i32 1, metadata !133, null}
!1715 = metadata !{i32 786689, metadata !134, metadata !"a", metadata !88, i32 16778786, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1570]
!1716 = metadata !{i32 1570, i32 23, metadata !134, null}
!1717 = metadata !{i32 1572, i32 5, metadata !134, null}
!1718 = metadata !{i32 786689, metadata !137, metadata !"v", metadata !88, i32 16778796, metadata !140, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 1580]
!1719 = metadata !{i32 1580, i32 31, metadata !137, null}
!1720 = metadata !{i32 1582, i32 5, metadata !137, null}
!1721 = metadata !{i32 786689, metadata !146, metadata !"c", metadata !88, i32 16778857, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1641]
!1722 = metadata !{i32 1641, i32 19, metadata !146, null}
!1723 = metadata !{i32 1641, i32 23, metadata !146, null}
!1724 = metadata !{i32 786689, metadata !149, metadata !"fmt", metadata !88, i32 16778859, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 1643]
!1725 = metadata !{i32 1643, i32 27, metadata !149, null}
!1726 = metadata !{i32 786688, metadata !149, metadata !"ap", metadata !88, i32 1645, metadata !1727, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 1645]
!1727 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [va_list] [line 14, size 0, align 0, offset 0] [from ]
!1728 = metadata !{i32 1645, i32 13, metadata !149, null}
!1729 = metadata !{i32 786688, metadata !149, metadata !"p", metadata !88, i32 1646, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1646]
!1730 = metadata !{i32 1646, i32 17, metadata !149, null}
!1731 = metadata !{i32 786688, metadata !149, metadata !"c", metadata !88, i32 1647, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1647]
!1732 = metadata !{i32 1647, i32 9, metadata !149, null}
!1733 = metadata !{i32 786688, metadata !149, metadata !"i", metadata !88, i32 1647, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1647]
!1734 = metadata !{i32 1647, i32 12, metadata !149, null}
!1735 = metadata !{i32 786688, metadata !149, metadata !"d", metadata !88, i32 1648, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 1648]
!1736 = metadata !{i32 1648, i32 12, metadata !149, null}
!1737 = metadata !{i32 786688, metadata !149, metadata !"ll", metadata !88, i32 1649, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 1649]
!1738 = metadata !{i32 1649, i32 15, metadata !149, null}
!1739 = metadata !{i32 1651, i32 5, metadata !149, null}
!1740 = metadata !{i32 1653, i32 5, metadata !149, null}
!1741 = metadata !{i32 1654, i32 5, metadata !1742, null}
!1742 = metadata !{i32 786443, metadata !87, metadata !149, i32 1654, i32 5, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1743 = metadata !{i32 1655, i32 9, metadata !1744, null}
!1744 = metadata !{i32 786443, metadata !87, metadata !1742, i32 1654, i32 13, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1745 = metadata !{i32 1656, i32 13, metadata !1746, null}
!1746 = metadata !{i32 786443, metadata !87, metadata !1744, i32 1656, i32 13, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1747 = metadata !{i32 1657, i32 13, metadata !1746, null}
!1748 = metadata !{i32 1658, i32 9, metadata !1744, null}
!1749 = metadata !{i32 1659, i32 13, metadata !1750, null}
!1750 = metadata !{i32 786443, metadata !87, metadata !1744, i32 1659, i32 13, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1751 = metadata !{i32 1660, i32 13, metadata !1752, null}
!1752 = metadata !{i32 786443, metadata !87, metadata !1750, i32 1659, i32 23, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1753 = metadata !{i32 1661, i32 13, metadata !1752, null}
!1754 = metadata !{i32 1663, i32 17, metadata !1755, null}
!1755 = metadata !{i32 786443, metadata !87, metadata !1752, i32 1661, i32 23, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1756 = metadata !{i32 1665, i32 17, metadata !1755, null}
!1757 = metadata !{i32 1666, i32 17, metadata !1755, null}
!1758 = metadata !{i32 1667, i32 17, metadata !1755, null}
!1759 = metadata !{i32 1669, i32 17, metadata !1755, null}
!1760 = metadata !{i32 1670, i32 17, metadata !1755, null}
!1761 = metadata !{i32 1671, i32 17, metadata !1755, null}
!1762 = metadata !{i32 1673, i32 17, metadata !1755, null}
!1763 = metadata !{i32 1674, i32 17, metadata !1755, null}
!1764 = metadata !{i32 1675, i32 17, metadata !1755, null}
!1765 = metadata !{i32 1677, i32 13, metadata !1752, null}
!1766 = metadata !{i32 1678, i32 9, metadata !1752, null}
!1767 = metadata !{i32 1679, i32 13, metadata !1768, null}
!1768 = metadata !{i32 786443, metadata !87, metadata !1750, i32 1678, i32 16, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/mnt/hgfs/sf_vm_share/Stensal/Klarum/tcctest.c]
!1769 = metadata !{i32 1681, i32 5, metadata !1744, null}
!1770 = metadata !{i32 1681, i32 5, metadata !1742, null}
!1771 = metadata !{i32 1684, i32 1, metadata !149, null}
!1772 = metadata !{i32 1689, i32 5, metadata !153, null}
!1773 = metadata !{i32 1690, i32 5, metadata !153, null}
!1774 = metadata !{i32 1691, i32 5, metadata !153, null}
!1775 = metadata !{i32 1692, i32 1, metadata !153, null}
!1776 = metadata !{i32 786689, metadata !156, metadata !"a", metadata !88, i32 16778954, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1738]
!1777 = metadata !{i32 1738, i32 10, metadata !156, null}
!1778 = metadata !{i32 786689, metadata !156, metadata !"b", metadata !88, i32 33556170, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1738]
!1779 = metadata !{i32 1738, i32 13, metadata !156, null}
!1780 = metadata !{i32 786689, metadata !156, metadata !"c", metadata !88, i32 50333387, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1739]
!1781 = metadata !{i32 1739, i32 13, metadata !156, null}
!1782 = metadata !{i32 1741, i32 5, metadata !156, null}
!1783 = metadata !{i32 1742, i32 1, metadata !156, null}
!1784 = metadata !{i32 786689, metadata !159, metadata !"cmpfn", metadata !88, i32 16778960, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmpfn] [line 1744]
!1785 = metadata !{i32 1744, i32 21, metadata !159, null}
!1786 = metadata !{i32 1746, i32 5, metadata !159, null}
!1787 = metadata !{i32 1747, i32 1, metadata !159, null}
!1788 = metadata !{i32 786689, metadata !165, metadata !"cmpfn", metadata !88, i32 16778966, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmpfn] [line 1750]
!1789 = metadata !{i32 1750, i32 5, metadata !165, null}
!1790 = metadata !{i32 1752, i32 5, metadata !165, null}
!1791 = metadata !{i32 1753, i32 1, metadata !165, null}
!1792 = metadata !{i32 786689, metadata !199, metadata !"to", metadata !88, i32 16779091, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 1875]
!1793 = metadata !{i32 1875, i32 37, metadata !199, null}
!1794 = metadata !{i32 786689, metadata !199, metadata !"from", metadata !88, i32 33556307, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 1875]
!1795 = metadata !{i32 1875, i32 54, metadata !199, null}
!1796 = metadata !{i32 786689, metadata !199, metadata !"n", metadata !88, i32 50333523, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1875]
!1797 = metadata !{i32 1875, i32 67, metadata !199, null}
!1798 = metadata !{i32 786688, metadata !199, metadata !"d0", metadata !88, i32 1877, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d0] [line 1877]
!1799 = metadata !{i32 1877, i32 5, metadata !199, null}
!1800 = metadata !{i32 786688, metadata !199, metadata !"d1", metadata !88, i32 1877, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d1] [line 1877]
!1801 = metadata !{i32 1877, i32 9, metadata !199, null}
!1802 = metadata !{i32 786688, metadata !199, metadata !"d2", metadata !88, i32 1877, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d2] [line 1877]
!1803 = metadata !{i32 1877, i32 13, metadata !199, null}
!1804 = metadata !{i32 1878, i32 1, metadata !199, null}
!1805 = metadata !{i32 35620, i32 35634, i32 35654, i32 35667, i32 35684, i32 35702, i32 35715, i32 35732}
!1806 = metadata !{i32 1890, i32 1, metadata !199, null}
!1807 = metadata !{i32 786689, metadata !195, metadata !"dest", metadata !88, i32 16779069, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 1853]
!1808 = metadata !{i32 1853, i32 31, metadata !195, null}
!1809 = metadata !{i32 786689, metadata !195, metadata !"src", metadata !88, i32 33556285, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 1853]
!1810 = metadata !{i32 1853, i32 49, metadata !195, null}
!1811 = metadata !{i32 786689, metadata !195, metadata !"count", metadata !88, i32 50333501, metadata !198, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 1853]
!1812 = metadata !{i32 1853, i32 60, metadata !195, null}
!1813 = metadata !{i32 786688, metadata !195, metadata !"d0", metadata !88, i32 1855, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d0] [line 1855]
!1814 = metadata !{i32 1855, i32 5, metadata !195, null}
!1815 = metadata !{i32 786688, metadata !195, metadata !"d1", metadata !88, i32 1855, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d1] [line 1855]
!1816 = metadata !{i32 1855, i32 9, metadata !195, null}
!1817 = metadata !{i32 786688, metadata !195, metadata !"d2", metadata !88, i32 1855, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d2] [line 1855]
!1818 = metadata !{i32 1855, i32 13, metadata !195, null}
!1819 = metadata !{i32 786688, metadata !195, metadata !"d3", metadata !88, i32 1855, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d3] [line 1855]
!1820 = metadata !{i32 1855, i32 17, metadata !195, null}
!1821 = metadata !{i32 1856, i32 1, metadata !195, null}
!1822 = metadata !{i32 35188, i32 35196, i32 35209, i32 35224, i32 35246, i32 35259, i32 35272, i32 35285, i32 35298, i32 35321, i32 35339, i32 35355}
!1823 = metadata !{i32 1872, i32 1, metadata !195, null}
!1824 = metadata !{i32 786689, metadata !192, metadata !"a", metadata !88, i32 16779129, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1913]
!1825 = metadata !{i32 1913, i32 57, metadata !192, null}
!1826 = metadata !{i32 786689, metadata !192, metadata !"b", metadata !88, i32 33556345, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1913]
!1827 = metadata !{i32 1913, i32 73, metadata !192, null}
!1828 = metadata !{i32 786688, metadata !192, metadata !"res", metadata !88, i32 1915, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1915]
!1829 = metadata !{i32 1915, i32 24, metadata !192, null}
!1830 = metadata !{i32 1916, i32 5, metadata !192, null}
!1831 = metadata !{i32 36403}
!1832 = metadata !{i32 1917, i32 5, metadata !192, null}
!1833 = metadata !{i32 786689, metadata !188, metadata !"a", metadata !88, i32 16779136, metadata !191, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 1920]
!1834 = metadata !{i32 1920, i32 63, metadata !188, null}
!1835 = metadata !{i32 786688, metadata !188, metadata !"res", metadata !88, i32 1922, metadata !191, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1922]
!1836 = metadata !{i32 1922, i32 24, metadata !188, null}
!1837 = metadata !{i32 1923, i32 5, metadata !188, null}
!1838 = metadata !{i32 36573}
!1839 = metadata !{i32 1924, i32 5, metadata !188, null}
!1840 = metadata !{i32 786689, metadata !187, metadata !"set", metadata !88, i32 16779114, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [set] [line 1898]
!1841 = metadata !{i32 1898, i32 49, metadata !187, null}
!1842 = metadata !{i32 786689, metadata !187, metadata !"_sig", metadata !88, i32 33556330, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_sig] [line 1898]
!1843 = metadata !{i32 1898, i32 58, metadata !187, null}
!1844 = metadata !{i32 1900, i32 2, metadata !187, null}
!1845 = metadata !{i32 36058}
!1846 = metadata !{i32 1901, i32 1, metadata !187, null}
!1847 = metadata !{i32 786689, metadata !183, metadata !"set", metadata !88, i32 16779109, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [set] [line 1893]
!1848 = metadata !{i32 1893, i32 49, metadata !183, null}
!1849 = metadata !{i32 786689, metadata !183, metadata !"_sig", metadata !88, i32 33556325, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_sig] [line 1893]
!1850 = metadata !{i32 1893, i32 58, metadata !183, null}
!1851 = metadata !{i32 1895, i32 2, metadata !183, null}
!1852 = metadata !{i32 35933}
!1853 = metadata !{i32 1896, i32 1, metadata !183, null}
!1854 = metadata !{i32 786689, metadata !178, metadata !"x", metadata !88, i32 16779119, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1903]
!1855 = metadata !{i32 1903, i32 62, metadata !178, null}
!1856 = metadata !{i32 1905, i32 2, metadata !178, null}
!1857 = metadata !{i32 36188, i32 36204, i32 36224}
!1858 = metadata !{i32 1910, i32 2, metadata !178, null}
!1859 = metadata !{i32 786689, metadata !173, metadata !"a", metadata !88, i32 16779216, metadata !176, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 2000]
!1860 = metadata !{i32 2000, i32 27, metadata !173, null}
!1861 = metadata !{i32 2002, i32 1, metadata !173, null}
!1862 = metadata !{i32 2006, i32 5, metadata !177, null}
!1863 = metadata !{i32 2007, i32 1, metadata !177, null}
