; ModuleID = 'expr.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.quoting_options = type { i32, [8 x i32] }
%struct.slotvec = type { i64, i8* }
%struct.valinfo = type { i32, %union.anon }
%union.anon = type { i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_registers = type { i32, i32*, i32* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__mbstate_t = type { i32, %union.anon.5 }
%union.anon.5 = type { i32 }

@after_divergence = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"KLEE_DIVERGENCE_FILE\00", align 1
@klee_div_file_env = global i8* getelementptr inbounds ([21 x i8]* @.str, i32 0, i32 0), align 8
@.str1 = private unnamed_addr constant [21 x i8] c"EKLEEPSE_MARKER_FILE\00", align 1
@klee_div_marker_file_env = global i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0), align 8
@.str2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [26 x i8] c"fopen failed for file %s\0A\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"getenv failed for key %s\0A\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"Try `%s --help' for more information.\0A\00", align 1
@program_name = common global i8* null, align 8
@.str8 = private unnamed_addr constant [39 x i8] c"Usage: %s EXPRESSION\0A  or:  %s OPTION\0A\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str11 = private unnamed_addr constant [274 x i8] c"\0APrint the value of EXPRESSION to standard output.  A blank line below\0Aseparates increasing precedence groups.  EXPRESSION may be:\0A\0A  ARG1 | ARG2       ARG1 if it is neither null nor 0, otherwise ARG2\0A\0A  ARG1 & ARG2       ARG1 if neither argument is null or 0, otherwise 0\0A\00", align 1
@.str12 = private unnamed_addr constant [290 x i8] c"\0A  ARG1 < ARG2       ARG1 is less than ARG2\0A  ARG1 <= ARG2      ARG1 is less than or equal to ARG2\0A  ARG1 = ARG2       ARG1 is equal to ARG2\0A  ARG1 != ARG2      ARG1 is unequal to ARG2\0A  ARG1 >= ARG2      ARG1 is greater than or equal to ARG2\0A  ARG1 > ARG2       ARG1 is greater than ARG2\0A\00", align 1
@.str13 = private unnamed_addr constant [113 x i8] c"\0A  ARG1 + ARG2       arithmetic sum of ARG1 and ARG2\0A  ARG1 - ARG2       arithmetic difference of ARG1 and ARG2\0A\00", align 1
@.str14 = private unnamed_addr constant [187 x i8] c"\0A  ARG1 * ARG2       arithmetic product of ARG1 and ARG2\0A  ARG1 / ARG2       arithmetic quotient of ARG1 divided by ARG2\0A  ARG1 % ARG2       arithmetic remainder of ARG1 divided by ARG2\0A\00", align 1
@.str15 = private unnamed_addr constant [310 x i8] c"\0A  STRING : REGEXP   anchored pattern match of REGEXP in STRING\0A\0A  match STRING REGEXP        same as STRING : REGEXP\0A  substr STRING POS LENGTH   substring of STRING, POS counted from 1\0A  index STRING CHARS         index in STRING where any CHARS is found, or 0\0A  length STRING              length of STRING\0A\00", align 1
@.str16 = private unnamed_addr constant [201 x i8] c"  + TOKEN                    interpret TOKEN as a string, even if it is a\0A                               keyword like `match' or an operator like `/'\0A\0A  ( EXPRESSION )             value of EXPRESSION\0A\00", align 1
@.str17 = private unnamed_addr constant [292 x i8] c"\0ABeware that many operators need to be escaped or quoted for shells.\0AComparisons are arithmetic if both ARGs are numbers, else lexicographical.\0APattern matches return the string matched between \5C( and \5C) or null; if\0A\5C( and \5C) are not used, they return the number of characters matched or 0.\0A\00", align 1
@.str18 = private unnamed_addr constant [156 x i8] c"\0AExit status is 0 if EXPRESSION is neither null nor 0, 1 if EXPRESSION is null\0Aor 0, 2 if EXPRESSION is syntactically invalid, and 3 if an error occurred.\0A\00", align 1
@.str19 = private unnamed_addr constant [23 x i8] c"\0AReport bugs to <%s>.\0A\00", align 1
@.str20 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str22 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"5.3.1\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str27 = private unnamed_addr constant [17 x i8] c"missing operand\0A\00", align 1
@args = internal global i8** null, align 8
@.str28 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str32 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str36 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str37 = private unnamed_addr constant [26 x i8] c"string comparison failed\0A\00", align 1
@.str38 = private unnamed_addr constant [44 x i8] c"Set LC_ALL='C' to work around the problem.\0A\00", align 1
@.str39 = private unnamed_addr constant [38 x i8] c"The strings compared were %s and %s.\0A\00", align 1
@.str40 = private unnamed_addr constant [26 x i8] c"integer is too large: %s\0A\00", align 1
@.str41 = private unnamed_addr constant [26 x i8] c"integer is too small: %s\0A\00", align 1
@.str42 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str44 = private unnamed_addr constant [22 x i8] c"non-numeric argument\0A\00", align 1
@.str45 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str46 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str47 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str48 = private unnamed_addr constant [18 x i8] c"division by zero\0A\00", align 1
@.str49 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str50 = private unnamed_addr constant [134 x i8] c"warning: unportable BRE: `%s': using `^' as the first character\0Aof the basic regular expression is not portable; it is being ignored\0A\00", align 1
@re_syntax_options = external global i64
@.str51 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str52 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str55 = private unnamed_addr constant [7 x i8] c"substr\00", align 1
@.str56 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str57 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str58 = private unnamed_addr constant [14 x i8] c"syntax error\0A\00", align 1
@file_name = internal global i8* null, align 8
@.str59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str160 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str261 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@opterr = external global i32
@.str68 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@optind = external global i32
@.str169 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str270 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@long_options = internal constant <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str169, i32 0, i32 0), i32 0, i32* null, i32 104, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str270, i32 0, i32 0), i32 0, i32* null, i32 118, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@.str73 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str174 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str275 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str376 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str477 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str578 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str679 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str174, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str275, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str376, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str477, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str578, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str679, i32 0, i32 0), i8* null], align 16
@quoting_style_vals = constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 16
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 4
@quotearg_n_options.slot0 = internal global [256 x i8] zeroinitializer, align 16
@quotearg_n_options.nslots = internal global i32 1, align 4
@quotearg_n_options.slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8]* @quotearg_n_options.slot0, i32 0, i32 0) }, align 8
@quotearg_n_options.slotvec = internal global %struct.slotvec* @quotearg_n_options.slotvec0, align 8
@.str780 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str881 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str982 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str87 = private unnamed_addr constant [50 x i8] c"Copyright (C) 2005 Free Software Foundation, Inc.\00", align 1
@version_etc_copyright = global i8* getelementptr inbounds ([50 x i8]* @.str87, i32 0, i32 0), align 8
@.str188 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str289 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str390 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str491 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str592 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str693 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str794 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str895 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str996 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str1097 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str1198 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str1299 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str13100 = private unnamed_addr constant [152 x i8] c"This is free software; see the source for copying conditions.  There is NO\0Awarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\0A\00", align 1
@.str103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str1104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1

; Function Attrs: nounwind uwtable
define i64 @klee_change(i64 %x, i64 %y) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %file = alloca i8*, align 8
  %marker_file = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %x.addr}, metadata !405), !dbg !406
  store i64 %y, i64* %y.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %y.addr}, metadata !407), !dbg !406
  %0 = load i64* %x.addr, align 8, !dbg !408
  %1 = load i64* %y.addr, align 8, !dbg !408
  %cmp = icmp eq i64 %0, %1, !dbg !408
  br i1 %cmp, label %if.then, label %if.else, !dbg !408

if.then:                                          ; preds = %entry
  %2 = load i64* %x.addr, align 8, !dbg !410
  store i64 %2, i64* %retval, !dbg !410
  br label %return, !dbg !410

if.else:                                          ; preds = %entry
  %3 = load i32* @after_divergence, align 4, !dbg !411
  %tobool = icmp ne i32 %3, 0, !dbg !411
  br i1 %tobool, label %if.end29, label %if.then1, !dbg !411

if.then1:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata !{i8** %file}, metadata !414), !dbg !416
  %4 = load i8** @klee_div_file_env, align 8, !dbg !416
  %call = call i8* @getenv(i8* %4) #9, !dbg !416
  store i8* %call, i8** %file, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata !{i8** %marker_file}, metadata !417), !dbg !418
  %5 = load i8** @klee_div_marker_file_env, align 8, !dbg !418
  %call2 = call i8* @getenv(i8* %5) #9, !dbg !418
  store i8* %call2, i8** %marker_file, align 8, !dbg !418
  %6 = load i8** %file, align 8, !dbg !419
  %tobool3 = icmp ne i8* %6, null, !dbg !419
  br i1 %tobool3, label %if.then4, label %if.else26, !dbg !419

if.then4:                                         ; preds = %if.then1
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %f}, metadata !421), !dbg !467
  %7 = load i8** %file, align 8, !dbg !467
  %call5 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !467
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8, !dbg !467
  %8 = load %struct._IO_FILE** %f, align 8, !dbg !468
  %tobool6 = icmp ne %struct._IO_FILE* %8, null, !dbg !468
  br i1 %tobool6, label %if.then7, label %if.else11, !dbg !468

if.then7:                                         ; preds = %if.then4
  %9 = load %struct._IO_FILE** %f, align 8, !dbg !470
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0)), !dbg !470
  %10 = load %struct._IO_FILE** %f, align 8, !dbg !472
  %call9 = call i32 @fflush_unlocked(%struct._IO_FILE* %10), !dbg !472
  %11 = load %struct._IO_FILE** %f, align 8, !dbg !473
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !473
  br label %if.end, !dbg !474

if.else11:                                        ; preds = %if.then4
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !475
  %13 = load i8** %file, align 8, !dbg !475
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %13), !dbg !475
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then7
  %14 = load i8** %marker_file, align 8, !dbg !477
  %tobool13 = icmp ne i8* %14, null, !dbg !477
  br i1 %tobool13, label %if.then14, label %if.else23, !dbg !477

if.then14:                                        ; preds = %if.end
  %15 = load i8** %marker_file, align 8, !dbg !479
  %call15 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0)), !dbg !479
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %f, align 8, !dbg !479
  %16 = load %struct._IO_FILE** %f, align 8, !dbg !481
  %tobool16 = icmp ne %struct._IO_FILE* %16, null, !dbg !481
  br i1 %tobool16, label %if.then17, label %if.else20, !dbg !481

if.then17:                                        ; preds = %if.then14
  %17 = load %struct._IO_FILE** %f, align 8, !dbg !483
  %call18 = call i32 @fflush_unlocked(%struct._IO_FILE* %17), !dbg !483
  %18 = load %struct._IO_FILE** %f, align 8, !dbg !485
  %call19 = call i32 @fclose(%struct._IO_FILE* %18), !dbg !485
  br label %if.end22, !dbg !486

if.else20:                                        ; preds = %if.then14
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !487
  %20 = load i8** %file, align 8, !dbg !487
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %20), !dbg !487
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then17
  br label %if.end25, !dbg !489

if.else23:                                        ; preds = %if.end
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !490
  %22 = load i8** @klee_div_marker_file_env, align 8, !dbg !490
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %22), !dbg !490
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.end22
  br label %if.end28, !dbg !492

if.else26:                                        ; preds = %if.then1
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !493
  %24 = load i8** @klee_div_file_env, align 8, !dbg !493
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %24), !dbg !493
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.end25
  store i32 1, i32* @after_divergence, align 4, !dbg !495
  br label %if.end29, !dbg !496

if.end29:                                         ; preds = %if.end28, %if.else
  %25 = load i64* %y.addr, align 8, !dbg !497
  store i64 %25, i64* %retval, !dbg !497
  br label %return, !dbg !497

return:                                           ; preds = %if.end29, %if.then
  %26 = load i64* %retval, !dbg !498
  ret i64 %26, !dbg !498
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fflush_unlocked(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define i32 @klee_get_true() #4 {
entry:
  ret i32 1, !dbg !499
}

; Function Attrs: noinline nounwind uwtable
define i32 @klee_get_false() #4 {
entry:
  ret i32 0, !dbg !501
}

; Function Attrs: nounwind uwtable
define void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %status.addr}, metadata !502), !dbg !503
  %0 = load i32* %status.addr, align 4, !dbg !504
  %cmp = icmp ne i32 %0, 0, !dbg !504
  br i1 %cmp, label %if.then, label %if.else, !dbg !504

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !507
  %2 = load i8** @program_name, align 8, !dbg !507
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i8* %2), !dbg !507
  br label %if.end, !dbg !507

if.else:                                          ; preds = %entry
  %3 = load i8** @program_name, align 8, !dbg !508
  %4 = load i8** @program_name, align 8, !dbg !508
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([39 x i8]* @.str8, i32 0, i32 0), i8* %3, i8* %4), !dbg !508
  %call2 = call i32 @putchar_unlocked(i32 10), !dbg !510
  %5 = load %struct._IO_FILE** @stdout, align 8, !dbg !511
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8]* @.str9, i32 0, i32 0), %struct._IO_FILE* %5), !dbg !511
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !512
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8]* @.str10, i32 0, i32 0), %struct._IO_FILE* %6), !dbg !512
  %7 = load %struct._IO_FILE** @stdout, align 8, !dbg !513
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([274 x i8]* @.str11, i32 0, i32 0), %struct._IO_FILE* %7), !dbg !513
  %8 = load %struct._IO_FILE** @stdout, align 8, !dbg !514
  %call6 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([290 x i8]* @.str12, i32 0, i32 0), %struct._IO_FILE* %8), !dbg !514
  %9 = load %struct._IO_FILE** @stdout, align 8, !dbg !515
  %call7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([113 x i8]* @.str13, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !515
  %10 = load %struct._IO_FILE** @stdout, align 8, !dbg !516
  %call8 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([187 x i8]* @.str14, i32 0, i32 0), %struct._IO_FILE* %10), !dbg !516
  %11 = load %struct._IO_FILE** @stdout, align 8, !dbg !517
  %call9 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([310 x i8]* @.str15, i32 0, i32 0), %struct._IO_FILE* %11), !dbg !517
  %12 = load %struct._IO_FILE** @stdout, align 8, !dbg !518
  %call10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([201 x i8]* @.str16, i32 0, i32 0), %struct._IO_FILE* %12), !dbg !518
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !519
  %call11 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([292 x i8]* @.str17, i32 0, i32 0), %struct._IO_FILE* %13), !dbg !519
  %14 = load %struct._IO_FILE** @stdout, align 8, !dbg !520
  %call12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([156 x i8]* @.str18, i32 0, i32 0), %struct._IO_FILE* %14), !dbg !520
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str20, i32 0, i32 0)), !dbg !521
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32* %status.addr, align 4, !dbg !522
  call void @exit(i32 %15) #11, !dbg !522
  unreachable, !dbg !522

return:                                           ; No predecessors!
  ret void, !dbg !523
}

declare i32 @printf(i8*, ...) #3

declare i32 @putchar_unlocked(i32) #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %v = alloca %struct.valinfo*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !524), !dbg !525
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !526), !dbg !525
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v}, metadata !527), !dbg !528
  %0 = load i8*** %argv.addr, align 8, !dbg !529
  %arrayidx = getelementptr inbounds i8** %0, i64 0, !dbg !529
  %1 = load i8** %arrayidx, align 8, !dbg !529
  store i8* %1, i8** @program_name, align 8, !dbg !529
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8]* @.str21, i32 0, i32 0)) #9, !dbg !530
  call void @initialize_exit_failure(i32 3), !dbg !531
  %call1 = call i32 @atexit(void ()* @close_stdout) #9, !dbg !532
  %2 = load i32* %argc.addr, align 4, !dbg !533
  %3 = load i8*** %argv.addr, align 8, !dbg !533
  call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...)* @parse_long_options(i32 %2, i8** %3, i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str24, i32 0, i32 0), void (i32)* @usage, i8* getelementptr inbounds ([12 x i8]* @.str25, i32 0, i32 0), i8* null), !dbg !533
  %4 = load i32* %argc.addr, align 4, !dbg !534
  %cmp = icmp sgt i32 %4, 1, !dbg !534
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !534

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*** %argv.addr, align 8, !dbg !534
  %arrayidx2 = getelementptr inbounds i8** %5, i64 1, !dbg !534
  %6 = load i8** %arrayidx2, align 8, !dbg !534
  %call3 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0)) #12, !dbg !534
  %cmp4 = icmp eq i32 %call3, 0, !dbg !534
  br i1 %cmp4, label %if.then, label %if.end, !dbg !534

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32* %argc.addr, align 4, !dbg !536
  %dec = add nsw i32 %7, -1, !dbg !536
  store i32 %dec, i32* %argc.addr, align 4, !dbg !536
  %8 = load i8*** %argv.addr, align 8, !dbg !538
  %incdec.ptr = getelementptr inbounds i8** %8, i32 1, !dbg !538
  store i8** %incdec.ptr, i8*** %argv.addr, align 8, !dbg !538
  br label %if.end, !dbg !539

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32* %argc.addr, align 4, !dbg !540
  %cmp5 = icmp sle i32 %9, 1, !dbg !540
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !540

if.then6:                                         ; preds = %if.end
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([17 x i8]* @.str27, i32 0, i32 0)), !dbg !542
  call void @usage(i32 2), !dbg !544
  br label %if.end7, !dbg !545

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load i8*** %argv.addr, align 8, !dbg !546
  %add.ptr = getelementptr inbounds i8** %10, i64 1, !dbg !546
  store i8** %add.ptr, i8*** @args, align 8, !dbg !546
  %call8 = call %struct.valinfo* @eval(i1 zeroext true), !dbg !547
  store %struct.valinfo* %call8, %struct.valinfo** %v, align 8, !dbg !547
  %call9 = call zeroext i1 @nomoreargs(), !dbg !548
  br i1 %call9, label %if.end11, label %if.then10, !dbg !548

if.then10:                                        ; preds = %if.end7
  call void @syntax_error(), !dbg !550
  br label %if.end11, !dbg !550

if.end11:                                         ; preds = %if.then10, %if.end7
  %11 = load %struct.valinfo** %v, align 8, !dbg !551
  call void @printv(%struct.valinfo* %11), !dbg !551
  %12 = load %struct.valinfo** %v, align 8, !dbg !552
  %call12 = call zeroext i1 @null(%struct.valinfo* %12), !dbg !552
  %conv = zext i1 %call12 to i32, !dbg !552
  call void @exit(i32 %conv) #11, !dbg !552
  unreachable, !dbg !552

return:                                           ; No predecessors!
  %13 = load i32* %retval, !dbg !553
  ret i32 %13, !dbg !553
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @initialize_exit_failure(i32 %status) #6 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %status.addr}, metadata !554), !dbg !555
  %0 = load i32* %status.addr, align 4, !dbg !556
  %cmp = icmp ne i32 %0, 1, !dbg !556
  br i1 %cmp, label %if.then, label %if.end, !dbg !556

if.then:                                          ; preds = %entry
  %1 = load i32* %status.addr, align 4, !dbg !559
  store volatile i32 %1, i32* @exit_failure, align 4, !dbg !559
  br label %if.end, !dbg !559

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !560
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal void @klee_compatible_error(i32 %status, i32* (...)* %__errno_location, i8* %format, ...) #0 {
entry:
  %status.addr = alloca i32, align 4
  %__errno_location.addr = alloca i32* (...)*, align 8
  %format.addr = alloca i8*, align 8
  %err_args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %status.addr}, metadata !561), !dbg !562
  store i32* (...)* %__errno_location, i32* (...)** %__errno_location.addr, align 8
  call void @llvm.dbg.declare(metadata !{i32* (...)** %__errno_location.addr}, metadata !563), !dbg !562
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %format.addr}, metadata !564), !dbg !562
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %err_args}, metadata !565), !dbg !577
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !578
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !578
  call void @llvm.va_start(i8* %arraydecay1), !dbg !578
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !579
  %1 = load i8** %format.addr, align 8, !dbg !579
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !579
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !579
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !580
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !580
  call void @llvm.va_end(i8* %arraydecay34), !dbg !580
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !581
  %call5 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %2), !dbg !581
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !582
  %call6 = call i32 @fflush_unlocked(%struct._IO_FILE* %3), !dbg !582
  %4 = load i32* %status.addr, align 4, !dbg !583
  %tobool = icmp ne i32 %4, 0, !dbg !583
  br i1 %tobool, label %if.then, label %if.end, !dbg !583

if.then:                                          ; preds = %entry
  %5 = load i32* %status.addr, align 4, !dbg !585
  call void @exit(i32 %5) #11, !dbg !585
  unreachable, !dbg !585

if.end:                                           ; preds = %entry
  ret void, !dbg !587
}

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval(i1 zeroext %evaluate) #0 {
entry:
  %evaluate.addr = alloca i8, align 1
  %l = alloca %struct.valinfo*, align 8
  %r = alloca %struct.valinfo*, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !588), !dbg !589
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %l}, metadata !590), !dbg !591
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %r}, metadata !592), !dbg !593
  %0 = load i8* %evaluate.addr, align 1, !dbg !594
  %tobool = trunc i8 %0 to i1, !dbg !594
  %call = call %struct.valinfo* @eval1(i1 zeroext %tobool), !dbg !594
  store %struct.valinfo* %call, %struct.valinfo** %l, align 8, !dbg !594
  br label %while.body, !dbg !595

while.body:                                       ; preds = %if.end14, %entry
  %call1 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str28, i32 0, i32 0)), !dbg !596
  br i1 %call1, label %if.then, label %if.else13, !dbg !596

if.then:                                          ; preds = %while.body
  %1 = load i8* %evaluate.addr, align 1, !dbg !599
  %tobool2 = trunc i8 %1 to i1, !dbg !599
  %conv = zext i1 %tobool2 to i32, !dbg !599
  %2 = load %struct.valinfo** %l, align 8, !dbg !599
  %call3 = call zeroext i1 @null(%struct.valinfo* %2), !dbg !599
  %conv4 = zext i1 %call3 to i32, !dbg !599
  %and = and i32 %conv, %conv4, !dbg !599
  %tobool5 = icmp ne i32 %and, 0, !dbg !599
  %call6 = call %struct.valinfo* @eval1(i1 zeroext %tobool5), !dbg !599
  store %struct.valinfo* %call6, %struct.valinfo** %r, align 8, !dbg !599
  %3 = load %struct.valinfo** %l, align 8, !dbg !601
  %call7 = call zeroext i1 @null(%struct.valinfo* %3), !dbg !601
  br i1 %call7, label %if.then8, label %if.else, !dbg !601

if.then8:                                         ; preds = %if.then
  %4 = load %struct.valinfo** %l, align 8, !dbg !603
  call void @freev(%struct.valinfo* %4), !dbg !603
  %5 = load %struct.valinfo** %r, align 8, !dbg !605
  store %struct.valinfo* %5, %struct.valinfo** %l, align 8, !dbg !605
  %6 = load %struct.valinfo** %l, align 8, !dbg !606
  %call9 = call zeroext i1 @null(%struct.valinfo* %6), !dbg !606
  br i1 %call9, label %if.then10, label %if.end, !dbg !606

if.then10:                                        ; preds = %if.then8
  %7 = load %struct.valinfo** %l, align 8, !dbg !608
  call void @freev(%struct.valinfo* %7), !dbg !608
  %call11 = call %struct.valinfo* @int_value(i64 0), !dbg !610
  store %struct.valinfo* %call11, %struct.valinfo** %l, align 8, !dbg !610
  br label %if.end, !dbg !611

if.end:                                           ; preds = %if.then10, %if.then8
  br label %if.end12, !dbg !612

if.else:                                          ; preds = %if.then
  %8 = load %struct.valinfo** %r, align 8, !dbg !613
  call void @freev(%struct.valinfo* %8), !dbg !613
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  br label %if.end14, !dbg !614

if.else13:                                        ; preds = %while.body
  %9 = load %struct.valinfo** %l, align 8, !dbg !615
  ret %struct.valinfo* %9, !dbg !615

if.end14:                                         ; preds = %if.end12
  br label %while.body, !dbg !616
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @nomoreargs() #0 {
entry:
  %0 = load i8*** @args, align 8, !dbg !617
  %1 = load i8** %0, align 8, !dbg !617
  %cmp = icmp eq i8* %1, null, !dbg !617
  ret i1 %cmp, !dbg !617
}

; Function Attrs: nounwind uwtable
define internal void @syntax_error() #0 {
entry:
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 2, i32* (...)* null, i8* getelementptr inbounds ([14 x i8]* @.str58, i32 0, i32 0)), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: nounwind uwtable
define internal void @printv(%struct.valinfo* %v) #0 {
entry:
  %v.addr = alloca %struct.valinfo*, align 8
  %p = alloca i8*, align 8
  %buf = alloca [22 x i8], align 16
  store %struct.valinfo* %v, %struct.valinfo** %v.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v.addr}, metadata !620), !dbg !621
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !622), !dbg !623
  call void @llvm.dbg.declare(metadata !{[22 x i8]* %buf}, metadata !624), !dbg !628
  %0 = load %struct.valinfo** %v.addr, align 8, !dbg !629
  %type = getelementptr inbounds %struct.valinfo* %0, i32 0, i32 0, !dbg !629
  %1 = load i32* %type, align 4, !dbg !629
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !629

sw.bb:                                            ; preds = %entry
  %2 = load %struct.valinfo** %v.addr, align 8, !dbg !630
  %u = getelementptr inbounds %struct.valinfo* %2, i32 0, i32 1, !dbg !630
  %i = bitcast %union.anon* %u to i64*, !dbg !630
  %3 = load i64* %i, align 8, !dbg !630
  %arraydecay = getelementptr inbounds [22 x i8]* %buf, i32 0, i32 0, !dbg !630
  %call = call i8* @imaxtostr(i64 %3, i8* %arraydecay), !dbg !630
  store i8* %call, i8** %p, align 8, !dbg !630
  br label %sw.epilog, !dbg !632

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.valinfo** %v.addr, align 8, !dbg !633
  %u2 = getelementptr inbounds %struct.valinfo* %4, i32 0, i32 1, !dbg !633
  %s = bitcast %union.anon* %u2 to i8**, !dbg !633
  %5 = load i8** %s, align 8, !dbg !633
  store i8* %5, i8** %p, align 8, !dbg !633
  br label %sw.epilog, !dbg !634

sw.default:                                       ; preds = %entry
  call void @abort() #11, !dbg !635
  unreachable, !dbg !635

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %6 = load i8** %p, align 8, !dbg !636
  %call3 = call i32 @puts(i8* %6), !dbg !636
  ret void, !dbg !637
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @null(%struct.valinfo* %v) #0 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca %struct.valinfo*, align 8
  %cp = alloca i8*, align 8
  store %struct.valinfo* %v, %struct.valinfo** %v.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v.addr}, metadata !638), !dbg !639
  %0 = load %struct.valinfo** %v.addr, align 8, !dbg !640
  %type = getelementptr inbounds %struct.valinfo* %0, i32 0, i32 0, !dbg !640
  %1 = load i32* %type, align 4, !dbg !640
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !640

sw.bb:                                            ; preds = %entry
  %2 = load %struct.valinfo** %v.addr, align 8, !dbg !641
  %u = getelementptr inbounds %struct.valinfo* %2, i32 0, i32 1, !dbg !641
  %i = bitcast %union.anon* %u to i64*, !dbg !641
  %3 = load i64* %i, align 8, !dbg !641
  %cmp = icmp eq i64 %3, 0, !dbg !641
  store i1 %cmp, i1* %retval, !dbg !641
  br label %return, !dbg !641

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i8** %cp}, metadata !643), !dbg !645
  %4 = load %struct.valinfo** %v.addr, align 8, !dbg !645
  %u2 = getelementptr inbounds %struct.valinfo* %4, i32 0, i32 1, !dbg !645
  %s = bitcast %union.anon* %u2 to i8**, !dbg !645
  %5 = load i8** %s, align 8, !dbg !645
  store i8* %5, i8** %cp, align 8, !dbg !645
  %6 = load i8** %cp, align 8, !dbg !646
  %7 = load i8* %6, align 1, !dbg !646
  %conv = sext i8 %7 to i32, !dbg !646
  %cmp3 = icmp eq i32 %conv, 0, !dbg !646
  br i1 %cmp3, label %if.then, label %if.end, !dbg !646

if.then:                                          ; preds = %sw.bb1
  store i1 true, i1* %retval, !dbg !648
  br label %return, !dbg !648

if.end:                                           ; preds = %sw.bb1
  %8 = load i8** %cp, align 8, !dbg !649
  %9 = load i8* %8, align 1, !dbg !649
  %conv5 = sext i8 %9 to i32, !dbg !649
  %cmp6 = icmp eq i32 %conv5, 45, !dbg !649
  %conv7 = zext i1 %cmp6 to i32, !dbg !649
  %10 = load i8** %cp, align 8, !dbg !649
  %idx.ext = sext i32 %conv7 to i64, !dbg !649
  %add.ptr = getelementptr inbounds i8* %10, i64 %idx.ext, !dbg !649
  store i8* %add.ptr, i8** %cp, align 8, !dbg !649
  br label %do.body, !dbg !650

do.body:                                          ; preds = %do.cond, %if.end
  %11 = load i8** %cp, align 8, !dbg !651
  %12 = load i8* %11, align 1, !dbg !651
  %conv8 = sext i8 %12 to i32, !dbg !651
  %cmp9 = icmp ne i32 %conv8, 48, !dbg !651
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !651

if.then11:                                        ; preds = %do.body
  store i1 false, i1* %retval, !dbg !654
  br label %return, !dbg !654

if.end12:                                         ; preds = %do.body
  br label %do.cond, !dbg !655

do.cond:                                          ; preds = %if.end12
  %13 = load i8** %cp, align 8, !dbg !655
  %incdec.ptr = getelementptr inbounds i8* %13, i32 1, !dbg !655
  store i8* %incdec.ptr, i8** %cp, align 8, !dbg !655
  %14 = load i8* %incdec.ptr, align 1, !dbg !655
  %tobool = icmp ne i8 %14, 0, !dbg !655
  br i1 %tobool, label %do.body, label %do.end, !dbg !655

do.end:                                           ; preds = %do.cond
  store i1 true, i1* %retval, !dbg !656
  br label %return, !dbg !656

sw.default:                                       ; preds = %entry
  call void @abort() #11, !dbg !657
  unreachable, !dbg !657

return:                                           ; preds = %do.end, %if.then11, %if.then, %sw.bb
  %15 = load i1* %retval, !dbg !658
  ret i1 %15, !dbg !658
}

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval1(i1 zeroext %evaluate) #0 {
entry:
  %evaluate.addr = alloca i8, align 1
  %l = alloca %struct.valinfo*, align 8
  %r = alloca %struct.valinfo*, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !659), !dbg !660
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %l}, metadata !661), !dbg !662
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %r}, metadata !663), !dbg !664
  %0 = load i8* %evaluate.addr, align 1, !dbg !665
  %tobool = trunc i8 %0 to i1, !dbg !665
  %call = call %struct.valinfo* @eval2(i1 zeroext %tobool), !dbg !665
  store %struct.valinfo* %call, %struct.valinfo** %l, align 8, !dbg !665
  br label %while.body, !dbg !666

while.body:                                       ; preds = %if.end14, %entry
  %call1 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str29, i32 0, i32 0)), !dbg !667
  br i1 %call1, label %if.then, label %if.else13, !dbg !667

if.then:                                          ; preds = %while.body
  %1 = load i8* %evaluate.addr, align 1, !dbg !670
  %tobool2 = trunc i8 %1 to i1, !dbg !670
  %conv = zext i1 %tobool2 to i32, !dbg !670
  %2 = load %struct.valinfo** %l, align 8, !dbg !670
  %call3 = call zeroext i1 @null(%struct.valinfo* %2), !dbg !670
  %conv4 = zext i1 %call3 to i32, !dbg !670
  %neg = xor i32 %conv4, -1, !dbg !670
  %and = and i32 %conv, %neg, !dbg !670
  %tobool5 = icmp ne i32 %and, 0, !dbg !670
  %call6 = call %struct.valinfo* @eval2(i1 zeroext %tobool5), !dbg !670
  store %struct.valinfo* %call6, %struct.valinfo** %r, align 8, !dbg !670
  %3 = load %struct.valinfo** %l, align 8, !dbg !672
  %call7 = call zeroext i1 @null(%struct.valinfo* %3), !dbg !672
  br i1 %call7, label %if.then11, label %lor.lhs.false, !dbg !672

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.valinfo** %r, align 8, !dbg !672
  %call9 = call zeroext i1 @null(%struct.valinfo* %4), !dbg !672
  br i1 %call9, label %if.then11, label %if.else, !dbg !672

if.then11:                                        ; preds = %lor.lhs.false, %if.then
  %5 = load %struct.valinfo** %l, align 8, !dbg !674
  call void @freev(%struct.valinfo* %5), !dbg !674
  %6 = load %struct.valinfo** %r, align 8, !dbg !676
  call void @freev(%struct.valinfo* %6), !dbg !676
  %call12 = call %struct.valinfo* @int_value(i64 0), !dbg !677
  store %struct.valinfo* %call12, %struct.valinfo** %l, align 8, !dbg !677
  br label %if.end, !dbg !678

if.else:                                          ; preds = %lor.lhs.false
  %7 = load %struct.valinfo** %r, align 8, !dbg !679
  call void @freev(%struct.valinfo* %7), !dbg !679
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %if.end14, !dbg !680

if.else13:                                        ; preds = %while.body
  %8 = load %struct.valinfo** %l, align 8, !dbg !681
  ret %struct.valinfo* %8, !dbg !681

if.end14:                                         ; preds = %if.end
  br label %while.body, !dbg !682
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @nextarg(i8* %str) #0 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca i8*, align 8
  %r = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %str.addr}, metadata !683), !dbg !684
  %0 = load i8*** @args, align 8, !dbg !685
  %1 = load i8** %0, align 8, !dbg !685
  %cmp = icmp eq i8* %1, null, !dbg !685
  br i1 %cmp, label %if.then, label %if.else, !dbg !685

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, !dbg !687
  br label %return, !dbg !687

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i8* %r}, metadata !688), !dbg !690
  %2 = load i8*** @args, align 8, !dbg !690
  %3 = load i8** %2, align 8, !dbg !690
  %4 = load i8** %str.addr, align 8, !dbg !690
  %call = call i32 @strcmp(i8* %3, i8* %4) #12, !dbg !690
  %cmp1 = icmp eq i32 %call, 0, !dbg !690
  %frombool = zext i1 %cmp1 to i8, !dbg !690
  store i8 %frombool, i8* %r, align 1, !dbg !690
  %5 = load i8* %r, align 1, !dbg !691
  %tobool = trunc i8 %5 to i1, !dbg !691
  %conv = zext i1 %tobool to i32, !dbg !691
  %6 = load i8*** @args, align 8, !dbg !691
  %idx.ext = sext i32 %conv to i64, !dbg !691
  %add.ptr = getelementptr inbounds i8** %6, i64 %idx.ext, !dbg !691
  store i8** %add.ptr, i8*** @args, align 8, !dbg !691
  %7 = load i8* %r, align 1, !dbg !692
  %tobool2 = trunc i8 %7 to i1, !dbg !692
  store i1 %tobool2, i1* %retval, !dbg !692
  br label %return, !dbg !692

return:                                           ; preds = %if.else, %if.then
  %8 = load i1* %retval, !dbg !693
  ret i1 %8, !dbg !693
}

; Function Attrs: nounwind uwtable
define internal void @freev(%struct.valinfo* %v) #0 {
entry:
  %v.addr = alloca %struct.valinfo*, align 8
  store %struct.valinfo* %v, %struct.valinfo** %v.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v.addr}, metadata !694), !dbg !695
  %0 = load %struct.valinfo** %v.addr, align 8, !dbg !696
  %type = getelementptr inbounds %struct.valinfo* %0, i32 0, i32 0, !dbg !696
  %1 = load i32* %type, align 4, !dbg !696
  %cmp = icmp eq i32 %1, 1, !dbg !696
  br i1 %cmp, label %if.then, label %if.end, !dbg !696

if.then:                                          ; preds = %entry
  %2 = load %struct.valinfo** %v.addr, align 8, !dbg !698
  %u = getelementptr inbounds %struct.valinfo* %2, i32 0, i32 1, !dbg !698
  %s = bitcast %union.anon* %u to i8**, !dbg !698
  %3 = load i8** %s, align 8, !dbg !698
  call void @free(i8* %3) #9, !dbg !698
  br label %if.end, !dbg !698

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.valinfo** %v.addr, align 8, !dbg !699
  %5 = bitcast %struct.valinfo* %4 to i8*, !dbg !699
  call void @free(i8* %5) #9, !dbg !699
  ret void, !dbg !700
}

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @int_value(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  %v = alloca %struct.valinfo*, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %i.addr}, metadata !701), !dbg !702
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v}, metadata !703), !dbg !704
  %call = call i8* @xmalloc(i64 16), !dbg !704
  %0 = bitcast i8* %call to %struct.valinfo*, !dbg !704
  store %struct.valinfo* %0, %struct.valinfo** %v, align 8, !dbg !704
  %1 = load %struct.valinfo** %v, align 8, !dbg !705
  %type = getelementptr inbounds %struct.valinfo* %1, i32 0, i32 0, !dbg !705
  store i32 0, i32* %type, align 4, !dbg !705
  %2 = load i64* %i.addr, align 8, !dbg !706
  %3 = load %struct.valinfo** %v, align 8, !dbg !706
  %u = getelementptr inbounds %struct.valinfo* %3, i32 0, i32 1, !dbg !706
  %i1 = bitcast %union.anon* %u to i64*, !dbg !706
  store i64 %2, i64* %i1, align 8, !dbg !706
  %4 = load %struct.valinfo** %v, align 8, !dbg !707
  ret %struct.valinfo* %4, !dbg !707
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval2(i1 zeroext %evaluate) #0 {
entry:
  %evaluate.addr = alloca i8, align 1
  %l = alloca %struct.valinfo*, align 8
  %r = alloca %struct.valinfo*, align 8
  %fxn = alloca i32, align 4
  %val = alloca i8, align 1
  %lval = alloca i64, align 8
  %rval = alloca i64, align 8
  %collation_errno = alloca i32, align 4
  %collation_arg1 = alloca i8*, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !708), !dbg !709
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %l}, metadata !710), !dbg !711
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %r}, metadata !712), !dbg !713
  call void @llvm.dbg.declare(metadata !{i32* %fxn}, metadata !714), !dbg !715
  call void @llvm.dbg.declare(metadata !{i8* %val}, metadata !716), !dbg !717
  call void @llvm.dbg.declare(metadata !{i64* %lval}, metadata !718), !dbg !719
  call void @llvm.dbg.declare(metadata !{i64* %rval}, metadata !720), !dbg !721
  call void @llvm.dbg.declare(metadata !{i32* %collation_errno}, metadata !722), !dbg !723
  call void @llvm.dbg.declare(metadata !{i8** %collation_arg1}, metadata !724), !dbg !725
  %0 = load i8* %evaluate.addr, align 1, !dbg !726
  %tobool = trunc i8 %0 to i1, !dbg !726
  %call = call %struct.valinfo* @eval3(i1 zeroext %tobool), !dbg !726
  store %struct.valinfo* %call, %struct.valinfo** %l, align 8, !dbg !726
  br label %while.body, !dbg !727

while.body:                                       ; preds = %sw.epilog, %entry
  %call1 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str30, i32 0, i32 0)), !dbg !728
  br i1 %call1, label %if.then, label %if.else, !dbg !728

if.then:                                          ; preds = %while.body
  store i32 0, i32* %fxn, align 4, !dbg !731
  br label %if.end22, !dbg !731

if.else:                                          ; preds = %while.body
  %call2 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0)), !dbg !732
  br i1 %call2, label %if.then3, label %if.else4, !dbg !732

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %fxn, align 4, !dbg !734
  br label %if.end21, !dbg !734

if.else4:                                         ; preds = %if.else
  %call5 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str32, i32 0, i32 0)), !dbg !735
  br i1 %call5, label %if.then7, label %lor.lhs.false, !dbg !735

lor.lhs.false:                                    ; preds = %if.else4
  %call6 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0)), !dbg !735
  br i1 %call6, label %if.then7, label %if.else8, !dbg !735

if.then7:                                         ; preds = %lor.lhs.false, %if.else4
  store i32 2, i32* %fxn, align 4, !dbg !737
  br label %if.end20, !dbg !737

if.else8:                                         ; preds = %lor.lhs.false
  %call9 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0)), !dbg !738
  br i1 %call9, label %if.then10, label %if.else11, !dbg !738

if.then10:                                        ; preds = %if.else8
  store i32 3, i32* %fxn, align 4, !dbg !740
  br label %if.end19, !dbg !740

if.else11:                                        ; preds = %if.else8
  %call12 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0)), !dbg !741
  br i1 %call12, label %if.then13, label %if.else14, !dbg !741

if.then13:                                        ; preds = %if.else11
  store i32 4, i32* %fxn, align 4, !dbg !743
  br label %if.end18, !dbg !743

if.else14:                                        ; preds = %if.else11
  %call15 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str36, i32 0, i32 0)), !dbg !744
  br i1 %call15, label %if.then16, label %if.else17, !dbg !744

if.then16:                                        ; preds = %if.else14
  store i32 5, i32* %fxn, align 4, !dbg !746
  br label %if.end, !dbg !746

if.else17:                                        ; preds = %if.else14
  %1 = load %struct.valinfo** %l, align 8, !dbg !747
  ret %struct.valinfo* %1, !dbg !747

if.end:                                           ; preds = %if.then16
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then7
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then3
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %2 = load i8* %evaluate.addr, align 1, !dbg !748
  %tobool23 = trunc i8 %2 to i1, !dbg !748
  %call24 = call %struct.valinfo* @eval3(i1 zeroext %tobool23), !dbg !748
  store %struct.valinfo* %call24, %struct.valinfo** %r, align 8, !dbg !748
  %3 = load %struct.valinfo** %l, align 8, !dbg !749
  call void @tostring(%struct.valinfo* %3), !dbg !749
  %4 = load %struct.valinfo** %r, align 8, !dbg !750
  call void @tostring(%struct.valinfo* %4), !dbg !750
  %5 = load %struct.valinfo** %l, align 8, !dbg !751
  %u = getelementptr inbounds %struct.valinfo* %5, i32 0, i32 1, !dbg !751
  %s = bitcast %union.anon* %u to i8**, !dbg !751
  %6 = load i8** %s, align 8, !dbg !751
  %call25 = call i8* @xstrdup(i8* %6), !dbg !751
  store i8* %call25, i8** %collation_arg1, align 8, !dbg !751
  %call26 = call i32* @__errno_location() #1, !dbg !752
  store i32 0, i32* %call26, align 4, !dbg !752
  %7 = load i8** %collation_arg1, align 8, !dbg !753
  %8 = load %struct.valinfo** %r, align 8, !dbg !753
  %u27 = getelementptr inbounds %struct.valinfo* %8, i32 0, i32 1, !dbg !753
  %s28 = bitcast %union.anon* %u27 to i8**, !dbg !753
  %9 = load i8** %s28, align 8, !dbg !753
  %call29 = call i32 @strcoll(i8* %7, i8* %9) #12, !dbg !753
  %conv = sext i32 %call29 to i64, !dbg !753
  store i64 %conv, i64* %lval, align 8, !dbg !753
  %call30 = call i32* @__errno_location() #1, !dbg !754
  %10 = load i32* %call30, align 4, !dbg !754
  store i32 %10, i32* %collation_errno, align 4, !dbg !754
  store i64 0, i64* %rval, align 8, !dbg !755
  %11 = load %struct.valinfo** %l, align 8, !dbg !756
  %call31 = call zeroext i1 @toarith(%struct.valinfo* %11), !dbg !756
  br i1 %call31, label %land.lhs.true, label %if.else39, !dbg !756

land.lhs.true:                                    ; preds = %if.end22
  %12 = load %struct.valinfo** %r, align 8, !dbg !756
  %call33 = call zeroext i1 @toarith(%struct.valinfo* %12), !dbg !756
  br i1 %call33, label %if.then35, label %if.else39, !dbg !756

if.then35:                                        ; preds = %land.lhs.true
  %13 = load %struct.valinfo** %l, align 8, !dbg !758
  %u36 = getelementptr inbounds %struct.valinfo* %13, i32 0, i32 1, !dbg !758
  %i = bitcast %union.anon* %u36 to i64*, !dbg !758
  %14 = load i64* %i, align 8, !dbg !758
  store i64 %14, i64* %lval, align 8, !dbg !758
  %15 = load %struct.valinfo** %r, align 8, !dbg !760
  %u37 = getelementptr inbounds %struct.valinfo* %15, i32 0, i32 1, !dbg !760
  %i38 = bitcast %union.anon* %u37 to i64*, !dbg !760
  %16 = load i64* %i38, align 8, !dbg !760
  store i64 %16, i64* %rval, align 8, !dbg !760
  br label %if.end51, !dbg !761

if.else39:                                        ; preds = %land.lhs.true, %if.end22
  %17 = load i32* %collation_errno, align 4, !dbg !762
  %tobool40 = icmp ne i32 %17, 0, !dbg !762
  br i1 %tobool40, label %land.lhs.true41, label %if.end50, !dbg !762

land.lhs.true41:                                  ; preds = %if.else39
  %18 = load i8* %evaluate.addr, align 1, !dbg !762
  %tobool42 = trunc i8 %18 to i1, !dbg !762
  br i1 %tobool42, label %if.then44, label %if.end50, !dbg !762

if.then44:                                        ; preds = %land.lhs.true41
  %19 = load i32* %collation_errno, align 4, !dbg !764
  %conv45 = sext i32 %19 to i64, !dbg !764
  %20 = inttoptr i64 %conv45 to i32* (...)*, !dbg !764
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %20, i8* getelementptr inbounds ([26 x i8]* @.str37, i32 0, i32 0)), !dbg !764
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([44 x i8]* @.str38, i32 0, i32 0)), !dbg !766
  %21 = load i8** %collation_arg1, align 8, !dbg !767
  %call46 = call i8* @quotearg_n_style(i32 0, i32 5, i8* %21), !dbg !767
  %22 = load %struct.valinfo** %r, align 8, !dbg !768
  %u47 = getelementptr inbounds %struct.valinfo* %22, i32 0, i32 1, !dbg !768
  %s48 = bitcast %union.anon* %u47 to i8**, !dbg !768
  %23 = load i8** %s48, align 8, !dbg !768
  %call49 = call i8* @quotearg_n_style(i32 1, i32 5, i8* %23), !dbg !768
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 3, i32* (...)* null, i8* getelementptr inbounds ([38 x i8]* @.str39, i32 0, i32 0), i8* %call46, i8* %call49), !dbg !769
  br label %if.end50, !dbg !770

if.end50:                                         ; preds = %if.then44, %land.lhs.true41, %if.else39
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then35
  %24 = load i32* %fxn, align 4, !dbg !771
  switch i32 %24, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb54
    i32 2, label %sw.bb58
    i32 3, label %sw.bb62
    i32 4, label %sw.bb66
    i32 5, label %sw.bb70
  ], !dbg !771

sw.bb:                                            ; preds = %if.end51
  %25 = load i64* %lval, align 8, !dbg !772
  %26 = load i64* %rval, align 8, !dbg !772
  %cmp = icmp slt i64 %25, %26, !dbg !772
  %frombool53 = zext i1 %cmp to i8, !dbg !772
  store i8 %frombool53, i8* %val, align 1, !dbg !772
  br label %sw.epilog, !dbg !772

sw.bb54:                                          ; preds = %if.end51
  %27 = load i64* %lval, align 8, !dbg !774
  %28 = load i64* %rval, align 8, !dbg !774
  %cmp55 = icmp sle i64 %27, %28, !dbg !774
  %frombool57 = zext i1 %cmp55 to i8, !dbg !774
  store i8 %frombool57, i8* %val, align 1, !dbg !774
  br label %sw.epilog, !dbg !774

sw.bb58:                                          ; preds = %if.end51
  %29 = load i64* %lval, align 8, !dbg !775
  %30 = load i64* %rval, align 8, !dbg !775
  %cmp59 = icmp eq i64 %29, %30, !dbg !775
  %frombool61 = zext i1 %cmp59 to i8, !dbg !775
  store i8 %frombool61, i8* %val, align 1, !dbg !775
  br label %sw.epilog, !dbg !775

sw.bb62:                                          ; preds = %if.end51
  %31 = load i64* %lval, align 8, !dbg !776
  %32 = load i64* %rval, align 8, !dbg !776
  %cmp63 = icmp ne i64 %31, %32, !dbg !776
  %frombool65 = zext i1 %cmp63 to i8, !dbg !776
  store i8 %frombool65, i8* %val, align 1, !dbg !776
  br label %sw.epilog, !dbg !776

sw.bb66:                                          ; preds = %if.end51
  %33 = load i64* %lval, align 8, !dbg !777
  %34 = load i64* %rval, align 8, !dbg !777
  %cmp67 = icmp sge i64 %33, %34, !dbg !777
  %frombool69 = zext i1 %cmp67 to i8, !dbg !777
  store i8 %frombool69, i8* %val, align 1, !dbg !777
  br label %sw.epilog, !dbg !777

sw.bb70:                                          ; preds = %if.end51
  %35 = load i64* %lval, align 8, !dbg !778
  %36 = load i64* %rval, align 8, !dbg !778
  %cmp71 = icmp sgt i64 %35, %36, !dbg !778
  %frombool73 = zext i1 %cmp71 to i8, !dbg !778
  store i8 %frombool73, i8* %val, align 1, !dbg !778
  br label %sw.epilog, !dbg !778

sw.default:                                       ; preds = %if.end51
  call void @abort() #11, !dbg !779
  unreachable, !dbg !779

sw.epilog:                                        ; preds = %sw.bb70, %sw.bb66, %sw.bb62, %sw.bb58, %sw.bb54, %sw.bb
  %37 = load %struct.valinfo** %l, align 8, !dbg !780
  call void @freev(%struct.valinfo* %37), !dbg !780
  %38 = load %struct.valinfo** %r, align 8, !dbg !781
  call void @freev(%struct.valinfo* %38), !dbg !781
  %39 = load i8** %collation_arg1, align 8, !dbg !782
  call void @free(i8* %39) #9, !dbg !782
  %40 = load i8* %val, align 1, !dbg !783
  %tobool74 = trunc i8 %40 to i1, !dbg !783
  %conv75 = zext i1 %tobool74 to i64, !dbg !783
  %call76 = call %struct.valinfo* @int_value(i64 %conv75), !dbg !783
  store %struct.valinfo* %call76, %struct.valinfo** %l, align 8, !dbg !783
  br label %while.body, !dbg !784
}

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval3(i1 zeroext %evaluate) #0 {
entry:
  %evaluate.addr = alloca i8, align 1
  %l = alloca %struct.valinfo*, align 8
  %r = alloca %struct.valinfo*, align 8
  %fxn = alloca i32, align 4
  %val = alloca i64, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !785), !dbg !786
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %l}, metadata !787), !dbg !788
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %r}, metadata !789), !dbg !790
  call void @llvm.dbg.declare(metadata !{i32* %fxn}, metadata !791), !dbg !792
  call void @llvm.dbg.declare(metadata !{i64* %val}, metadata !793), !dbg !794
  store i64 0, i64* %val, align 8, !dbg !794
  %0 = load i8* %evaluate.addr, align 1, !dbg !795
  %tobool = trunc i8 %0 to i1, !dbg !795
  %call = call %struct.valinfo* @eval4(i1 zeroext %tobool), !dbg !795
  store %struct.valinfo* %call, %struct.valinfo** %l, align 8, !dbg !795
  br label %while.body, !dbg !796

while.body:                                       ; preds = %if.end20, %entry
  %call1 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0)), !dbg !797
  br i1 %call1, label %if.then, label %if.else, !dbg !797

if.then:                                          ; preds = %while.body
  store i32 0, i32* %fxn, align 4, !dbg !800
  br label %if.end5, !dbg !800

if.else:                                          ; preds = %while.body
  %call2 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str43, i32 0, i32 0)), !dbg !801
  br i1 %call2, label %if.then3, label %if.else4, !dbg !801

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %fxn, align 4, !dbg !803
  br label %if.end, !dbg !803

if.else4:                                         ; preds = %if.else
  %1 = load %struct.valinfo** %l, align 8, !dbg !804
  ret %struct.valinfo* %1, !dbg !804

if.end:                                           ; preds = %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %2 = load i8* %evaluate.addr, align 1, !dbg !805
  %tobool6 = trunc i8 %2 to i1, !dbg !805
  %call7 = call %struct.valinfo* @eval4(i1 zeroext %tobool6), !dbg !805
  store %struct.valinfo* %call7, %struct.valinfo** %r, align 8, !dbg !805
  %3 = load i8* %evaluate.addr, align 1, !dbg !806
  %tobool8 = trunc i8 %3 to i1, !dbg !806
  br i1 %tobool8, label %if.then9, label %if.end20, !dbg !806

if.then9:                                         ; preds = %if.end5
  %4 = load %struct.valinfo** %l, align 8, !dbg !808
  %call10 = call zeroext i1 @toarith(%struct.valinfo* %4), !dbg !808
  br i1 %call10, label %lor.lhs.false, label %if.then12, !dbg !808

lor.lhs.false:                                    ; preds = %if.then9
  %5 = load %struct.valinfo** %r, align 8, !dbg !808
  %call11 = call zeroext i1 @toarith(%struct.valinfo* %5), !dbg !808
  br i1 %call11, label %if.end13, label %if.then12, !dbg !808

if.then12:                                        ; preds = %lor.lhs.false, %if.then9
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 3, i32* (...)* null, i8* getelementptr inbounds ([22 x i8]* @.str44, i32 0, i32 0)), !dbg !811
  br label %if.end13, !dbg !813

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  %6 = load i32* %fxn, align 4, !dbg !814
  %cmp = icmp eq i32 %6, 0, !dbg !814
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !814

cond.true:                                        ; preds = %if.end13
  %7 = load %struct.valinfo** %l, align 8, !dbg !814
  %u = getelementptr inbounds %struct.valinfo* %7, i32 0, i32 1, !dbg !814
  %i = bitcast %union.anon* %u to i64*, !dbg !814
  %8 = load i64* %i, align 8, !dbg !814
  %9 = load %struct.valinfo** %r, align 8, !dbg !814
  %u14 = getelementptr inbounds %struct.valinfo* %9, i32 0, i32 1, !dbg !814
  %i15 = bitcast %union.anon* %u14 to i64*, !dbg !814
  %10 = load i64* %i15, align 8, !dbg !814
  %add = add nsw i64 %8, %10, !dbg !814
  br label %cond.end, !dbg !814

cond.false:                                       ; preds = %if.end13
  %11 = load %struct.valinfo** %l, align 8, !dbg !814
  %u16 = getelementptr inbounds %struct.valinfo* %11, i32 0, i32 1, !dbg !814
  %i17 = bitcast %union.anon* %u16 to i64*, !dbg !814
  %12 = load i64* %i17, align 8, !dbg !814
  %13 = load %struct.valinfo** %r, align 8, !dbg !814
  %u18 = getelementptr inbounds %struct.valinfo* %13, i32 0, i32 1, !dbg !814
  %i19 = bitcast %union.anon* %u18 to i64*, !dbg !814
  %14 = load i64* %i19, align 8, !dbg !814
  %sub = sub nsw i64 %12, %14, !dbg !814
  br label %cond.end, !dbg !814

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %sub, %cond.false ], !dbg !814
  store i64 %cond, i64* %val, align 8, !dbg !814
  br label %if.end20, !dbg !815

if.end20:                                         ; preds = %cond.end, %if.end5
  %15 = load %struct.valinfo** %l, align 8, !dbg !816
  call void @freev(%struct.valinfo* %15), !dbg !816
  %16 = load %struct.valinfo** %r, align 8, !dbg !817
  call void @freev(%struct.valinfo* %16), !dbg !817
  %17 = load i64* %val, align 8, !dbg !818
  %call21 = call %struct.valinfo* @int_value(i64 %17), !dbg !818
  store %struct.valinfo* %call21, %struct.valinfo** %l, align 8, !dbg !818
  br label %while.body, !dbg !819
}

; Function Attrs: nounwind uwtable
define internal void @tostring(%struct.valinfo* %v) #0 {
entry:
  %v.addr = alloca %struct.valinfo*, align 8
  %buf = alloca [22 x i8], align 16
  store %struct.valinfo* %v, %struct.valinfo** %v.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v.addr}, metadata !820), !dbg !821
  call void @llvm.dbg.declare(metadata !{[22 x i8]* %buf}, metadata !822), !dbg !823
  %0 = load %struct.valinfo** %v.addr, align 8, !dbg !824
  %type = getelementptr inbounds %struct.valinfo* %0, i32 0, i32 0, !dbg !824
  %1 = load i32* %type, align 4, !dbg !824
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !824

sw.bb:                                            ; preds = %entry
  %2 = load %struct.valinfo** %v.addr, align 8, !dbg !825
  %u = getelementptr inbounds %struct.valinfo* %2, i32 0, i32 1, !dbg !825
  %i = bitcast %union.anon* %u to i64*, !dbg !825
  %3 = load i64* %i, align 8, !dbg !825
  %arraydecay = getelementptr inbounds [22 x i8]* %buf, i32 0, i32 0, !dbg !825
  %call = call i8* @imaxtostr(i64 %3, i8* %arraydecay), !dbg !825
  %call1 = call i8* @xstrdup(i8* %call), !dbg !825
  %4 = load %struct.valinfo** %v.addr, align 8, !dbg !825
  %u2 = getelementptr inbounds %struct.valinfo* %4, i32 0, i32 1, !dbg !825
  %s = bitcast %union.anon* %u2 to i8**, !dbg !825
  store i8* %call1, i8** %s, align 8, !dbg !825
  %5 = load %struct.valinfo** %v.addr, align 8, !dbg !827
  %type3 = getelementptr inbounds %struct.valinfo* %5, i32 0, i32 0, !dbg !827
  store i32 1, i32* %type3, align 4, !dbg !827
  br label %sw.epilog, !dbg !828

sw.bb4:                                           ; preds = %entry
  br label %sw.epilog, !dbg !829

sw.default:                                       ; preds = %entry
  call void @abort() #11, !dbg !830
  unreachable, !dbg !830

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  ret void, !dbg !831
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal zeroext i1 @toarith(%struct.valinfo* %v) #0 {
entry:
  %retval = alloca i1, align 1
  %v.addr = alloca %struct.valinfo*, align 8
  %value = alloca i64, align 8
  %cp = alloca i8*, align 8
  %sign = alloca i32, align 4
  %neg = alloca i8, align 1
  %new_v = alloca i64, align 8
  store %struct.valinfo* %v, %struct.valinfo** %v.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v.addr}, metadata !832), !dbg !833
  %0 = load %struct.valinfo** %v.addr, align 8, !dbg !834
  %type = getelementptr inbounds %struct.valinfo* %0, i32 0, i32 0, !dbg !834
  %1 = load i32* %type, align 4, !dbg !834
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !834

sw.bb:                                            ; preds = %entry
  store i1 true, i1* %retval, !dbg !835
  br label %return, !dbg !835

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i64* %value}, metadata !837), !dbg !839
  store i64 0, i64* %value, align 8, !dbg !839
  call void @llvm.dbg.declare(metadata !{i8** %cp}, metadata !840), !dbg !841
  %2 = load %struct.valinfo** %v.addr, align 8, !dbg !841
  %u = getelementptr inbounds %struct.valinfo* %2, i32 0, i32 1, !dbg !841
  %s = bitcast %union.anon* %u to i8**, !dbg !841
  %3 = load i8** %s, align 8, !dbg !841
  store i8* %3, i8** %cp, align 8, !dbg !841
  call void @llvm.dbg.declare(metadata !{i32* %sign}, metadata !842), !dbg !843
  %4 = load i8** %cp, align 8, !dbg !843
  %5 = load i8* %4, align 1, !dbg !843
  %conv = sext i8 %5 to i32, !dbg !843
  %cmp = icmp eq i32 %conv, 45, !dbg !843
  %cond = select i1 %cmp, i32 -1, i32 1, !dbg !843
  store i32 %cond, i32* %sign, align 4, !dbg !843
  call void @llvm.dbg.declare(metadata !{i8* %neg}, metadata !844), !dbg !845
  %6 = load i8** %cp, align 8, !dbg !845
  %7 = load i8* %6, align 1, !dbg !845
  %conv3 = sext i8 %7 to i32, !dbg !845
  %cmp4 = icmp eq i32 %conv3, 45, !dbg !845
  %frombool = zext i1 %cmp4 to i8, !dbg !845
  store i8 %frombool, i8* %neg, align 1, !dbg !845
  br i1 false, label %cond.true, label %cond.false, !dbg !846

cond.true:                                        ; preds = %sw.bb1
  %8 = load i8* %neg, align 1, !dbg !846
  %tobool = trunc i8 %8 to i1, !dbg !846
  br i1 %tobool, label %if.then, label %if.end, !dbg !846

cond.false:                                       ; preds = %sw.bb1
  br i1 false, label %cond.true7, label %cond.false12, !dbg !846

cond.true7:                                       ; preds = %cond.false
  %9 = load i32* %sign, align 4, !dbg !846
  %cmp8 = icmp slt i32 %9, 0, !dbg !846
  %conv9 = zext i1 %cmp8 to i32, !dbg !846
  %conv10 = sext i32 %conv9 to i64, !dbg !846
  %tobool11 = icmp ne i64 %conv10, 0, !dbg !846
  br i1 %tobool11, label %if.then, label %if.end, !dbg !846

cond.false12:                                     ; preds = %cond.false
  %10 = load i8* %neg, align 1, !dbg !846
  %tobool13 = trunc i8 %10 to i1, !dbg !846
  %conv14 = zext i1 %tobool13 to i64, !dbg !846
  %11 = load i32* %sign, align 4, !dbg !846
  %cmp15 = icmp slt i32 %11, 0, !dbg !846
  %conv16 = zext i1 %cmp15 to i32, !dbg !846
  %conv17 = sext i32 %conv16 to i64, !dbg !846
  %call = call i64 @klee_change(i64 %conv14, i64 %conv17), !dbg !846
  %tobool18 = icmp ne i64 %call, 0, !dbg !846
  br i1 %tobool18, label %if.then, label %if.end, !dbg !846

if.then:                                          ; preds = %cond.false12, %cond.true7, %cond.true
  %12 = load i8** %cp, align 8, !dbg !848
  %incdec.ptr = getelementptr inbounds i8* %12, i32 1, !dbg !848
  store i8* %incdec.ptr, i8** %cp, align 8, !dbg !848
  br label %if.end, !dbg !848

if.end:                                           ; preds = %if.then, %cond.false12, %cond.true7, %cond.true
  br label %do.body, !dbg !849

do.body:                                          ; preds = %do.cond, %if.end
  %13 = load i8** %cp, align 8, !dbg !850
  %14 = load i8* %13, align 1, !dbg !850
  %conv19 = sext i8 %14 to i32, !dbg !850
  %sub = sub i32 %conv19, 48, !dbg !850
  %cmp20 = icmp ule i32 %sub, 9, !dbg !850
  br i1 %cmp20, label %if.then22, label %if.else94, !dbg !850

if.then22:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata !{i64* %new_v}, metadata !853), !dbg !855
  %15 = load i64* %value, align 8, !dbg !855
  %mul = mul nsw i64 10, %15, !dbg !855
  %16 = load i32* %sign, align 4, !dbg !855
  %17 = load i8** %cp, align 8, !dbg !855
  %18 = load i8* %17, align 1, !dbg !855
  %conv23 = sext i8 %18 to i32, !dbg !855
  %sub24 = sub nsw i32 %conv23, 48, !dbg !855
  %mul25 = mul nsw i32 %16, %sub24, !dbg !855
  %conv26 = sext i32 %mul25 to i64, !dbg !855
  %add = add nsw i64 %mul, %conv26, !dbg !855
  store i64 %add, i64* %new_v, align 8, !dbg !855
  br i1 false, label %cond.true27, label %cond.false31, !dbg !856

cond.true27:                                      ; preds = %if.then22
  %call28 = call i32 @klee_get_false(), !dbg !856
  %conv29 = sext i32 %call28 to i64, !dbg !856
  %tobool30 = icmp ne i64 %conv29, 0, !dbg !856
  br i1 %tobool30, label %if.then77, label %if.end88, !dbg !856

cond.false31:                                     ; preds = %if.then22
  br i1 false, label %cond.true32, label %cond.false51, !dbg !856

cond.true32:                                      ; preds = %cond.false31
  %19 = load i32* %sign, align 4, !dbg !856
  %cmp33 = icmp slt i32 0, %19, !dbg !856
  br i1 %cmp33, label %cond.true35, label %cond.false40, !dbg !856

cond.true35:                                      ; preds = %cond.true32
  %20 = load i64* %value, align 8, !dbg !856
  %cmp36 = icmp slt i64 922337203685477580, %20, !dbg !856
  br i1 %cmp36, label %lor.end, label %lor.rhs, !dbg !856

lor.rhs:                                          ; preds = %cond.true35
  %21 = load i64* %new_v, align 8, !dbg !856
  %cmp38 = icmp slt i64 %21, 0, !dbg !856
  br label %lor.end, !dbg !856

lor.end:                                          ; preds = %lor.rhs, %cond.true35
  %22 = phi i1 [ true, %cond.true35 ], [ %cmp38, %lor.rhs ]
  %lor.ext = zext i1 %22 to i32, !dbg !856
  br label %cond.end, !dbg !856

cond.false40:                                     ; preds = %cond.true32
  %23 = load i64* %value, align 8, !dbg !856
  %cmp41 = icmp slt i64 %23, -922337203685477580, !dbg !856
  br i1 %cmp41, label %lor.end46, label %lor.rhs43, !dbg !856

lor.rhs43:                                        ; preds = %cond.false40
  %24 = load i64* %new_v, align 8, !dbg !856
  %cmp44 = icmp slt i64 0, %24, !dbg !856
  br label %lor.end46, !dbg !856

lor.end46:                                        ; preds = %lor.rhs43, %cond.false40
  %25 = phi i1 [ true, %cond.false40 ], [ %cmp44, %lor.rhs43 ]
  %lor.ext47 = zext i1 %25 to i32, !dbg !856
  br label %cond.end, !dbg !856

cond.end:                                         ; preds = %lor.end46, %lor.end
  %cond48 = phi i32 [ %lor.ext, %lor.end ], [ %lor.ext47, %lor.end46 ], !dbg !856
  %conv49 = sext i32 %cond48 to i64, !dbg !856
  %tobool50 = icmp ne i64 %conv49, 0, !dbg !856
  br i1 %tobool50, label %if.then77, label %if.end88, !dbg !856

cond.false51:                                     ; preds = %cond.false31
  %call52 = call i32 @klee_get_false(), !dbg !856
  %conv53 = sext i32 %call52 to i64, !dbg !856
  %26 = load i32* %sign, align 4, !dbg !856
  %cmp54 = icmp slt i32 0, %26, !dbg !856
  br i1 %cmp54, label %cond.true56, label %cond.false64, !dbg !856

cond.true56:                                      ; preds = %cond.false51
  %27 = load i64* %value, align 8, !dbg !856
  %cmp57 = icmp slt i64 922337203685477580, %27, !dbg !856
  br i1 %cmp57, label %lor.end62, label %lor.rhs59, !dbg !856

lor.rhs59:                                        ; preds = %cond.true56
  %28 = load i64* %new_v, align 8, !dbg !856
  %cmp60 = icmp slt i64 %28, 0, !dbg !856
  br label %lor.end62, !dbg !856

lor.end62:                                        ; preds = %lor.rhs59, %cond.true56
  %29 = phi i1 [ true, %cond.true56 ], [ %cmp60, %lor.rhs59 ]
  %lor.ext63 = zext i1 %29 to i32, !dbg !856
  br label %cond.end72, !dbg !856

cond.false64:                                     ; preds = %cond.false51
  %30 = load i64* %value, align 8, !dbg !856
  %cmp65 = icmp slt i64 %30, -922337203685477580, !dbg !856
  br i1 %cmp65, label %lor.end70, label %lor.rhs67, !dbg !856

lor.rhs67:                                        ; preds = %cond.false64
  %31 = load i64* %new_v, align 8, !dbg !856
  %cmp68 = icmp slt i64 0, %31, !dbg !856
  br label %lor.end70, !dbg !856

lor.end70:                                        ; preds = %lor.rhs67, %cond.false64
  %32 = phi i1 [ true, %cond.false64 ], [ %cmp68, %lor.rhs67 ]
  %lor.ext71 = zext i1 %32 to i32, !dbg !856
  br label %cond.end72, !dbg !856

cond.end72:                                       ; preds = %lor.end70, %lor.end62
  %cond73 = phi i32 [ %lor.ext63, %lor.end62 ], [ %lor.ext71, %lor.end70 ], !dbg !856
  %conv74 = sext i32 %cond73 to i64, !dbg !856
  %call75 = call i64 @klee_change(i64 %conv53, i64 %conv74), !dbg !856
  %tobool76 = icmp ne i64 %call75, 0, !dbg !856
  br i1 %tobool76, label %if.then77, label %if.end88, !dbg !856

if.then77:                                        ; preds = %cond.end72, %cond.end, %cond.true27
  %33 = load i32* %sign, align 4, !dbg !858
  %cmp78 = icmp slt i32 0, %33, !dbg !858
  br i1 %cmp78, label %if.then80, label %if.else, !dbg !858

if.then80:                                        ; preds = %if.then77
  %34 = load %struct.valinfo** %v.addr, align 8, !dbg !861
  %u81 = getelementptr inbounds %struct.valinfo* %34, i32 0, i32 1, !dbg !861
  %s82 = bitcast %union.anon* %u81 to i8**, !dbg !861
  %35 = load i8** %s82, align 8, !dbg !861
  %call83 = call i8* @quotearg_colon(i8* %35), !dbg !861
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 3, i32* (...)* null, i8* getelementptr inbounds ([26 x i8]* @.str40, i32 0, i32 0), i8* %call83), !dbg !861
  br label %if.end87, !dbg !863

if.else:                                          ; preds = %if.then77
  %36 = load %struct.valinfo** %v.addr, align 8, !dbg !864
  %u84 = getelementptr inbounds %struct.valinfo* %36, i32 0, i32 1, !dbg !864
  %s85 = bitcast %union.anon* %u84 to i8**, !dbg !864
  %37 = load i8** %s85, align 8, !dbg !864
  %call86 = call i8* @quotearg_colon(i8* %37), !dbg !864
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 3, i32* (...)* null, i8* getelementptr inbounds ([26 x i8]* @.str41, i32 0, i32 0), i8* %call86), !dbg !864
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then80
  br label %if.end88, !dbg !866

if.end88:                                         ; preds = %if.end87, %cond.end72, %cond.end, %cond.true27
  %38 = load i64* %value, align 8, !dbg !867
  %mul89 = mul nsw i64 %38, 10, !dbg !867
  %39 = load i8** %cp, align 8, !dbg !867
  %40 = load i8* %39, align 1, !dbg !867
  %conv90 = sext i8 %40 to i64, !dbg !867
  %add91 = add nsw i64 %mul89, %conv90, !dbg !867
  %sub92 = sub nsw i64 %add91, 48, !dbg !867
  %41 = load i64* %new_v, align 8, !dbg !867
  %call93 = call i64 @klee_change(i64 %sub92, i64 %41), !dbg !867
  store i64 %call93, i64* %value, align 8, !dbg !867
  br label %if.end95, !dbg !868

if.else94:                                        ; preds = %do.body
  store i1 false, i1* %retval, !dbg !869
  br label %return, !dbg !869

if.end95:                                         ; preds = %if.end88
  br label %do.cond, !dbg !870

do.cond:                                          ; preds = %if.end95
  %42 = load i8** %cp, align 8, !dbg !870
  %incdec.ptr96 = getelementptr inbounds i8* %42, i32 1, !dbg !870
  store i8* %incdec.ptr96, i8** %cp, align 8, !dbg !870
  %43 = load i8* %incdec.ptr96, align 1, !dbg !870
  %tobool97 = icmp ne i8 %43, 0, !dbg !870
  br i1 %tobool97, label %do.body, label %do.end, !dbg !870

do.end:                                           ; preds = %do.cond
  %44 = load %struct.valinfo** %v.addr, align 8, !dbg !871
  %u98 = getelementptr inbounds %struct.valinfo* %44, i32 0, i32 1, !dbg !871
  %s99 = bitcast %union.anon* %u98 to i8**, !dbg !871
  %45 = load i8** %s99, align 8, !dbg !871
  call void @free(i8* %45) #9, !dbg !871
  %46 = load i64* %value, align 8, !dbg !872
  %47 = load i8* %neg, align 1, !dbg !872
  %tobool100 = trunc i8 %47 to i1, !dbg !872
  %cond102 = select i1 %tobool100, i32 -1, i32 1, !dbg !872
  %conv103 = sext i32 %cond102 to i64, !dbg !872
  %48 = load i32* %sign, align 4, !dbg !872
  %conv104 = sext i32 %48 to i64, !dbg !872
  %call105 = call i64 @klee_change(i64 %conv103, i64 %conv104), !dbg !872
  %mul106 = mul i64 %46, %call105, !dbg !872
  %49 = load %struct.valinfo** %v.addr, align 8, !dbg !872
  %u107 = getelementptr inbounds %struct.valinfo* %49, i32 0, i32 1, !dbg !872
  %i = bitcast %union.anon* %u107 to i64*, !dbg !872
  store i64 %mul106, i64* %i, align 8, !dbg !872
  %50 = load %struct.valinfo** %v.addr, align 8, !dbg !873
  %type108 = getelementptr inbounds %struct.valinfo* %50, i32 0, i32 0, !dbg !873
  store i32 0, i32* %type108, align 4, !dbg !873
  store i1 true, i1* %retval, !dbg !874
  br label %return, !dbg !874

sw.default:                                       ; preds = %entry
  call void @abort() #11, !dbg !875
  unreachable, !dbg !875

return:                                           ; preds = %do.end, %if.else94, %sw.bb
  %51 = load i1* %retval, !dbg !876
  ret i1 %51, !dbg !876
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval4(i1 zeroext %evaluate) #0 {
entry:
  %evaluate.addr = alloca i8, align 1
  %l = alloca %struct.valinfo*, align 8
  %r = alloca %struct.valinfo*, align 8
  %fxn = alloca i32, align 4
  %val = alloca i64, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !877), !dbg !878
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %l}, metadata !879), !dbg !880
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %r}, metadata !881), !dbg !882
  call void @llvm.dbg.declare(metadata !{i32* %fxn}, metadata !883), !dbg !884
  call void @llvm.dbg.declare(metadata !{i64* %val}, metadata !885), !dbg !886
  store i64 0, i64* %val, align 8, !dbg !886
  %0 = load i8* %evaluate.addr, align 1, !dbg !887
  %tobool = trunc i8 %0 to i1, !dbg !887
  %call = call %struct.valinfo* @eval5(i1 zeroext %tobool), !dbg !887
  store %struct.valinfo* %call, %struct.valinfo** %l, align 8, !dbg !887
  br label %while.body, !dbg !888

while.body:                                       ; preds = %if.end37, %entry
  %call1 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str45, i32 0, i32 0)), !dbg !889
  br i1 %call1, label %if.then, label %if.else, !dbg !889

if.then:                                          ; preds = %while.body
  store i32 0, i32* %fxn, align 4, !dbg !892
  br label %if.end9, !dbg !892

if.else:                                          ; preds = %while.body
  %call2 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str46, i32 0, i32 0)), !dbg !893
  br i1 %call2, label %if.then3, label %if.else4, !dbg !893

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %fxn, align 4, !dbg !895
  br label %if.end8, !dbg !895

if.else4:                                         ; preds = %if.else
  %call5 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str47, i32 0, i32 0)), !dbg !896
  br i1 %call5, label %if.then6, label %if.else7, !dbg !896

if.then6:                                         ; preds = %if.else4
  store i32 2, i32* %fxn, align 4, !dbg !898
  br label %if.end, !dbg !898

if.else7:                                         ; preds = %if.else4
  %1 = load %struct.valinfo** %l, align 8, !dbg !899
  ret %struct.valinfo* %1, !dbg !899

if.end:                                           ; preds = %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %2 = load i8* %evaluate.addr, align 1, !dbg !900
  %tobool10 = trunc i8 %2 to i1, !dbg !900
  %call11 = call %struct.valinfo* @eval5(i1 zeroext %tobool10), !dbg !900
  store %struct.valinfo* %call11, %struct.valinfo** %r, align 8, !dbg !900
  %3 = load i8* %evaluate.addr, align 1, !dbg !901
  %tobool12 = trunc i8 %3 to i1, !dbg !901
  br i1 %tobool12, label %if.then13, label %if.end37, !dbg !901

if.then13:                                        ; preds = %if.end9
  %4 = load %struct.valinfo** %l, align 8, !dbg !903
  %call14 = call zeroext i1 @toarith(%struct.valinfo* %4), !dbg !903
  br i1 %call14, label %lor.lhs.false, label %if.then16, !dbg !903

lor.lhs.false:                                    ; preds = %if.then13
  %5 = load %struct.valinfo** %r, align 8, !dbg !903
  %call15 = call zeroext i1 @toarith(%struct.valinfo* %5), !dbg !903
  br i1 %call15, label %if.end17, label %if.then16, !dbg !903

if.then16:                                        ; preds = %lor.lhs.false, %if.then13
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 3, i32* (...)* null, i8* getelementptr inbounds ([22 x i8]* @.str44, i32 0, i32 0)), !dbg !906
  br label %if.end17, !dbg !908

if.end17:                                         ; preds = %if.then16, %lor.lhs.false
  %6 = load i32* %fxn, align 4, !dbg !909
  %cmp = icmp eq i32 %6, 0, !dbg !909
  br i1 %cmp, label %if.then18, label %if.else21, !dbg !909

if.then18:                                        ; preds = %if.end17
  %7 = load %struct.valinfo** %l, align 8, !dbg !911
  %u = getelementptr inbounds %struct.valinfo* %7, i32 0, i32 1, !dbg !911
  %i = bitcast %union.anon* %u to i64*, !dbg !911
  %8 = load i64* %i, align 8, !dbg !911
  %9 = load %struct.valinfo** %r, align 8, !dbg !911
  %u19 = getelementptr inbounds %struct.valinfo* %9, i32 0, i32 1, !dbg !911
  %i20 = bitcast %union.anon* %u19 to i64*, !dbg !911
  %10 = load i64* %i20, align 8, !dbg !911
  %mul = mul nsw i64 %8, %10, !dbg !911
  store i64 %mul, i64* %val, align 8, !dbg !911
  br label %if.end36, !dbg !911

if.else21:                                        ; preds = %if.end17
  %11 = load %struct.valinfo** %r, align 8, !dbg !912
  %u22 = getelementptr inbounds %struct.valinfo* %11, i32 0, i32 1, !dbg !912
  %i23 = bitcast %union.anon* %u22 to i64*, !dbg !912
  %12 = load i64* %i23, align 8, !dbg !912
  %cmp24 = icmp eq i64 %12, 0, !dbg !912
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !912

if.then25:                                        ; preds = %if.else21
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 3, i32* (...)* null, i8* getelementptr inbounds ([18 x i8]* @.str48, i32 0, i32 0)), !dbg !915
  br label %if.end26, !dbg !917

if.end26:                                         ; preds = %if.then25, %if.else21
  %13 = load i32* %fxn, align 4, !dbg !918
  %cmp27 = icmp eq i32 %13, 1, !dbg !918
  br i1 %cmp27, label %cond.true, label %cond.false, !dbg !918

cond.true:                                        ; preds = %if.end26
  %14 = load %struct.valinfo** %l, align 8, !dbg !918
  %u28 = getelementptr inbounds %struct.valinfo* %14, i32 0, i32 1, !dbg !918
  %i29 = bitcast %union.anon* %u28 to i64*, !dbg !918
  %15 = load i64* %i29, align 8, !dbg !918
  %16 = load %struct.valinfo** %r, align 8, !dbg !918
  %u30 = getelementptr inbounds %struct.valinfo* %16, i32 0, i32 1, !dbg !918
  %i31 = bitcast %union.anon* %u30 to i64*, !dbg !918
  %17 = load i64* %i31, align 8, !dbg !918
  %div = sdiv i64 %15, %17, !dbg !918
  br label %cond.end, !dbg !918

cond.false:                                       ; preds = %if.end26
  %18 = load %struct.valinfo** %l, align 8, !dbg !918
  %u32 = getelementptr inbounds %struct.valinfo* %18, i32 0, i32 1, !dbg !918
  %i33 = bitcast %union.anon* %u32 to i64*, !dbg !918
  %19 = load i64* %i33, align 8, !dbg !918
  %20 = load %struct.valinfo** %r, align 8, !dbg !918
  %u34 = getelementptr inbounds %struct.valinfo* %20, i32 0, i32 1, !dbg !918
  %i35 = bitcast %union.anon* %u34 to i64*, !dbg !918
  %21 = load i64* %i35, align 8, !dbg !918
  %rem = srem i64 %19, %21, !dbg !918
  br label %cond.end, !dbg !918

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ %rem, %cond.false ], !dbg !918
  store i64 %cond, i64* %val, align 8, !dbg !918
  br label %if.end36

if.end36:                                         ; preds = %cond.end, %if.then18
  br label %if.end37, !dbg !919

if.end37:                                         ; preds = %if.end36, %if.end9
  %22 = load %struct.valinfo** %l, align 8, !dbg !920
  call void @freev(%struct.valinfo* %22), !dbg !920
  %23 = load %struct.valinfo** %r, align 8, !dbg !921
  call void @freev(%struct.valinfo* %23), !dbg !921
  %24 = load i64* %val, align 8, !dbg !922
  %call38 = call %struct.valinfo* @int_value(i64 %24), !dbg !922
  store %struct.valinfo* %call38, %struct.valinfo** %l, align 8, !dbg !922
  br label %while.body, !dbg !923
}

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval5(i1 zeroext %evaluate) #0 {
entry:
  %evaluate.addr = alloca i8, align 1
  %l = alloca %struct.valinfo*, align 8
  %r = alloca %struct.valinfo*, align 8
  %v = alloca %struct.valinfo*, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !924), !dbg !925
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %l}, metadata !926), !dbg !927
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %r}, metadata !928), !dbg !929
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v}, metadata !930), !dbg !931
  %0 = load i8* %evaluate.addr, align 1, !dbg !932
  %tobool = trunc i8 %0 to i1, !dbg !932
  %call = call %struct.valinfo* @eval6(i1 zeroext %tobool), !dbg !932
  store %struct.valinfo* %call, %struct.valinfo** %l, align 8, !dbg !932
  br label %while.body, !dbg !933

while.body:                                       ; preds = %if.end7, %entry
  %call1 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str49, i32 0, i32 0)), !dbg !934
  br i1 %call1, label %if.then, label %if.else, !dbg !934

if.then:                                          ; preds = %while.body
  %1 = load i8* %evaluate.addr, align 1, !dbg !937
  %tobool2 = trunc i8 %1 to i1, !dbg !937
  %call3 = call %struct.valinfo* @eval6(i1 zeroext %tobool2), !dbg !937
  store %struct.valinfo* %call3, %struct.valinfo** %r, align 8, !dbg !937
  %2 = load i8* %evaluate.addr, align 1, !dbg !939
  %tobool4 = trunc i8 %2 to i1, !dbg !939
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !939

if.then5:                                         ; preds = %if.then
  %3 = load %struct.valinfo** %l, align 8, !dbg !941
  %4 = load %struct.valinfo** %r, align 8, !dbg !941
  %call6 = call %struct.valinfo* @docolon(%struct.valinfo* %3, %struct.valinfo* %4), !dbg !941
  store %struct.valinfo* %call6, %struct.valinfo** %v, align 8, !dbg !941
  %5 = load %struct.valinfo** %l, align 8, !dbg !943
  call void @freev(%struct.valinfo* %5), !dbg !943
  %6 = load %struct.valinfo** %v, align 8, !dbg !944
  store %struct.valinfo* %6, %struct.valinfo** %l, align 8, !dbg !944
  br label %if.end, !dbg !945

if.end:                                           ; preds = %if.then5, %if.then
  %7 = load %struct.valinfo** %r, align 8, !dbg !946
  call void @freev(%struct.valinfo* %7), !dbg !946
  br label %if.end7, !dbg !947

if.else:                                          ; preds = %while.body
  %8 = load %struct.valinfo** %l, align 8, !dbg !948
  ret %struct.valinfo* %8, !dbg !948

if.end7:                                          ; preds = %if.end
  br label %while.body, !dbg !949
}

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval6(i1 zeroext %evaluate) #0 {
entry:
  %retval = alloca %struct.valinfo*, align 8
  %evaluate.addr = alloca i8, align 1
  %l = alloca %struct.valinfo*, align 8
  %r = alloca %struct.valinfo*, align 8
  %v = alloca %struct.valinfo*, align 8
  %i1 = alloca %struct.valinfo*, align 8
  %i2 = alloca %struct.valinfo*, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !950), !dbg !951
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %l}, metadata !952), !dbg !953
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %r}, metadata !954), !dbg !955
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v}, metadata !956), !dbg !957
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %i1}, metadata !958), !dbg !959
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %i2}, metadata !960), !dbg !961
  %call = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str42, i32 0, i32 0)), !dbg !962
  br i1 %call, label %if.then, label %if.else, !dbg !962

if.then:                                          ; preds = %entry
  %call1 = call zeroext i1 @nomoreargs(), !dbg !964
  br i1 %call1, label %if.then2, label %if.end, !dbg !964

if.then2:                                         ; preds = %if.then
  call void @syntax_error(), !dbg !967
  br label %if.end, !dbg !967

if.end:                                           ; preds = %if.then2, %if.then
  %0 = load i8*** @args, align 8, !dbg !968
  %incdec.ptr = getelementptr inbounds i8** %0, i32 1, !dbg !968
  store i8** %incdec.ptr, i8*** @args, align 8, !dbg !968
  %1 = load i8** %0, align 8, !dbg !968
  %call3 = call %struct.valinfo* @str_value(i8* %1), !dbg !968
  store %struct.valinfo* %call3, %struct.valinfo** %retval, !dbg !968
  br label %return, !dbg !968

if.else:                                          ; preds = %entry
  %call4 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([7 x i8]* @.str52, i32 0, i32 0)), !dbg !969
  br i1 %call4, label %if.then5, label %if.else9, !dbg !969

if.then5:                                         ; preds = %if.else
  %2 = load i8* %evaluate.addr, align 1, !dbg !971
  %tobool = trunc i8 %2 to i1, !dbg !971
  %call6 = call %struct.valinfo* @eval6(i1 zeroext %tobool), !dbg !971
  store %struct.valinfo* %call6, %struct.valinfo** %r, align 8, !dbg !971
  %3 = load %struct.valinfo** %r, align 8, !dbg !973
  call void @tostring(%struct.valinfo* %3), !dbg !973
  %4 = load %struct.valinfo** %r, align 8, !dbg !974
  %u = getelementptr inbounds %struct.valinfo* %4, i32 0, i32 1, !dbg !974
  %s = bitcast %union.anon* %u to i8**, !dbg !974
  %5 = load i8** %s, align 8, !dbg !974
  %call7 = call i64 @strlen(i8* %5) #12, !dbg !974
  %call8 = call %struct.valinfo* @int_value(i64 %call7), !dbg !974
  store %struct.valinfo* %call8, %struct.valinfo** %v, align 8, !dbg !974
  %6 = load %struct.valinfo** %r, align 8, !dbg !975
  call void @freev(%struct.valinfo* %6), !dbg !975
  %7 = load %struct.valinfo** %v, align 8, !dbg !976
  store %struct.valinfo* %7, %struct.valinfo** %retval, !dbg !976
  br label %return, !dbg !976

if.else9:                                         ; preds = %if.else
  %call10 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([6 x i8]* @.str53, i32 0, i32 0)), !dbg !977
  br i1 %call10, label %if.then11, label %if.else21, !dbg !977

if.then11:                                        ; preds = %if.else9
  %8 = load i8* %evaluate.addr, align 1, !dbg !979
  %tobool12 = trunc i8 %8 to i1, !dbg !979
  %call13 = call %struct.valinfo* @eval6(i1 zeroext %tobool12), !dbg !979
  store %struct.valinfo* %call13, %struct.valinfo** %l, align 8, !dbg !979
  %9 = load i8* %evaluate.addr, align 1, !dbg !981
  %tobool14 = trunc i8 %9 to i1, !dbg !981
  %call15 = call %struct.valinfo* @eval6(i1 zeroext %tobool14), !dbg !981
  store %struct.valinfo* %call15, %struct.valinfo** %r, align 8, !dbg !981
  %10 = load i8* %evaluate.addr, align 1, !dbg !982
  %tobool16 = trunc i8 %10 to i1, !dbg !982
  br i1 %tobool16, label %if.then17, label %if.else19, !dbg !982

if.then17:                                        ; preds = %if.then11
  %11 = load %struct.valinfo** %l, align 8, !dbg !984
  %12 = load %struct.valinfo** %r, align 8, !dbg !984
  %call18 = call %struct.valinfo* @docolon(%struct.valinfo* %11, %struct.valinfo* %12), !dbg !984
  store %struct.valinfo* %call18, %struct.valinfo** %v, align 8, !dbg !984
  %13 = load %struct.valinfo** %l, align 8, !dbg !986
  call void @freev(%struct.valinfo* %13), !dbg !986
  br label %if.end20, !dbg !987

if.else19:                                        ; preds = %if.then11
  %14 = load %struct.valinfo** %l, align 8, !dbg !988
  store %struct.valinfo* %14, %struct.valinfo** %v, align 8, !dbg !988
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then17
  %15 = load %struct.valinfo** %r, align 8, !dbg !989
  call void @freev(%struct.valinfo* %15), !dbg !989
  %16 = load %struct.valinfo** %v, align 8, !dbg !990
  store %struct.valinfo* %16, %struct.valinfo** %retval, !dbg !990
  br label %return, !dbg !990

if.else21:                                        ; preds = %if.else9
  %call22 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0)), !dbg !991
  br i1 %call22, label %if.then23, label %if.else43, !dbg !991

if.then23:                                        ; preds = %if.else21
  %17 = load i8* %evaluate.addr, align 1, !dbg !993
  %tobool24 = trunc i8 %17 to i1, !dbg !993
  %call25 = call %struct.valinfo* @eval6(i1 zeroext %tobool24), !dbg !993
  store %struct.valinfo* %call25, %struct.valinfo** %l, align 8, !dbg !993
  %18 = load i8* %evaluate.addr, align 1, !dbg !995
  %tobool26 = trunc i8 %18 to i1, !dbg !995
  %call27 = call %struct.valinfo* @eval6(i1 zeroext %tobool26), !dbg !995
  store %struct.valinfo* %call27, %struct.valinfo** %r, align 8, !dbg !995
  %19 = load %struct.valinfo** %l, align 8, !dbg !996
  call void @tostring(%struct.valinfo* %19), !dbg !996
  %20 = load %struct.valinfo** %r, align 8, !dbg !997
  call void @tostring(%struct.valinfo* %20), !dbg !997
  %21 = load %struct.valinfo** %l, align 8, !dbg !998
  %u28 = getelementptr inbounds %struct.valinfo* %21, i32 0, i32 1, !dbg !998
  %s29 = bitcast %union.anon* %u28 to i8**, !dbg !998
  %22 = load i8** %s29, align 8, !dbg !998
  %23 = load %struct.valinfo** %r, align 8, !dbg !998
  %u30 = getelementptr inbounds %struct.valinfo* %23, i32 0, i32 1, !dbg !998
  %s31 = bitcast %union.anon* %u30 to i8**, !dbg !998
  %24 = load i8** %s31, align 8, !dbg !998
  %call32 = call i64 @strcspn(i8* %22, i8* %24) #12, !dbg !998
  %add = add i64 %call32, 1, !dbg !998
  %call33 = call %struct.valinfo* @int_value(i64 %add), !dbg !998
  store %struct.valinfo* %call33, %struct.valinfo** %v, align 8, !dbg !998
  %25 = load %struct.valinfo** %v, align 8, !dbg !999
  %u34 = getelementptr inbounds %struct.valinfo* %25, i32 0, i32 1, !dbg !999
  %i = bitcast %union.anon* %u34 to i64*, !dbg !999
  %26 = load i64* %i, align 8, !dbg !999
  %27 = load %struct.valinfo** %l, align 8, !dbg !999
  %u35 = getelementptr inbounds %struct.valinfo* %27, i32 0, i32 1, !dbg !999
  %s36 = bitcast %union.anon* %u35 to i8**, !dbg !999
  %28 = load i8** %s36, align 8, !dbg !999
  %call37 = call i64 @strlen(i8* %28) #12, !dbg !999
  %add38 = add i64 %call37, 1, !dbg !999
  %cmp = icmp eq i64 %26, %add38, !dbg !999
  br i1 %cmp, label %if.then39, label %if.end42, !dbg !999

if.then39:                                        ; preds = %if.then23
  %29 = load %struct.valinfo** %v, align 8, !dbg !1001
  %u40 = getelementptr inbounds %struct.valinfo* %29, i32 0, i32 1, !dbg !1001
  %i41 = bitcast %union.anon* %u40 to i64*, !dbg !1001
  store i64 0, i64* %i41, align 8, !dbg !1001
  br label %if.end42, !dbg !1001

if.end42:                                         ; preds = %if.then39, %if.then23
  %30 = load %struct.valinfo** %l, align 8, !dbg !1002
  call void @freev(%struct.valinfo* %30), !dbg !1002
  %31 = load %struct.valinfo** %r, align 8, !dbg !1003
  call void @freev(%struct.valinfo* %31), !dbg !1003
  %32 = load %struct.valinfo** %v, align 8, !dbg !1004
  store %struct.valinfo* %32, %struct.valinfo** %retval, !dbg !1004
  br label %return, !dbg !1004

if.else43:                                        ; preds = %if.else21
  %call44 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([7 x i8]* @.str55, i32 0, i32 0)), !dbg !1005
  br i1 %call44, label %if.then45, label %if.else92, !dbg !1005

if.then45:                                        ; preds = %if.else43
  %33 = load i8* %evaluate.addr, align 1, !dbg !1007
  %tobool46 = trunc i8 %33 to i1, !dbg !1007
  %call47 = call %struct.valinfo* @eval6(i1 zeroext %tobool46), !dbg !1007
  store %struct.valinfo* %call47, %struct.valinfo** %l, align 8, !dbg !1007
  %34 = load i8* %evaluate.addr, align 1, !dbg !1009
  %tobool48 = trunc i8 %34 to i1, !dbg !1009
  %call49 = call %struct.valinfo* @eval6(i1 zeroext %tobool48), !dbg !1009
  store %struct.valinfo* %call49, %struct.valinfo** %i1, align 8, !dbg !1009
  %35 = load i8* %evaluate.addr, align 1, !dbg !1010
  %tobool50 = trunc i8 %35 to i1, !dbg !1010
  %call51 = call %struct.valinfo* @eval6(i1 zeroext %tobool50), !dbg !1010
  store %struct.valinfo* %call51, %struct.valinfo** %i2, align 8, !dbg !1010
  %36 = load %struct.valinfo** %l, align 8, !dbg !1011
  call void @tostring(%struct.valinfo* %36), !dbg !1011
  %37 = load %struct.valinfo** %i1, align 8, !dbg !1012
  %call52 = call zeroext i1 @toarith(%struct.valinfo* %37), !dbg !1012
  br i1 %call52, label %lor.lhs.false, label %if.then69, !dbg !1012

lor.lhs.false:                                    ; preds = %if.then45
  %38 = load %struct.valinfo** %i2, align 8, !dbg !1012
  %call53 = call zeroext i1 @toarith(%struct.valinfo* %38), !dbg !1012
  br i1 %call53, label %lor.lhs.false54, label %if.then69, !dbg !1012

lor.lhs.false54:                                  ; preds = %lor.lhs.false
  %39 = load %struct.valinfo** %l, align 8, !dbg !1014
  %u55 = getelementptr inbounds %struct.valinfo* %39, i32 0, i32 1, !dbg !1014
  %s56 = bitcast %union.anon* %u55 to i8**, !dbg !1014
  %40 = load i8** %s56, align 8, !dbg !1014
  %call57 = call i64 @strlen(i8* %40) #12, !dbg !1014
  %41 = load %struct.valinfo** %i1, align 8, !dbg !1014
  %u58 = getelementptr inbounds %struct.valinfo* %41, i32 0, i32 1, !dbg !1014
  %i59 = bitcast %union.anon* %u58 to i64*, !dbg !1014
  %42 = load i64* %i59, align 8, !dbg !1014
  %cmp60 = icmp ult i64 %call57, %42, !dbg !1014
  br i1 %cmp60, label %if.then69, label %lor.lhs.false61, !dbg !1014

lor.lhs.false61:                                  ; preds = %lor.lhs.false54
  %43 = load %struct.valinfo** %i1, align 8, !dbg !1014
  %u62 = getelementptr inbounds %struct.valinfo* %43, i32 0, i32 1, !dbg !1014
  %i63 = bitcast %union.anon* %u62 to i64*, !dbg !1014
  %44 = load i64* %i63, align 8, !dbg !1014
  %cmp64 = icmp sle i64 %44, 0, !dbg !1014
  br i1 %cmp64, label %if.then69, label %lor.lhs.false65, !dbg !1014

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %45 = load %struct.valinfo** %i2, align 8, !dbg !1014
  %u66 = getelementptr inbounds %struct.valinfo* %45, i32 0, i32 1, !dbg !1014
  %i67 = bitcast %union.anon* %u66 to i64*, !dbg !1014
  %46 = load i64* %i67, align 8, !dbg !1014
  %cmp68 = icmp sle i64 %46, 0, !dbg !1014
  br i1 %cmp68, label %if.then69, label %if.else71, !dbg !1014

if.then69:                                        ; preds = %lor.lhs.false65, %lor.lhs.false61, %lor.lhs.false54, %lor.lhs.false, %if.then45
  %call70 = call %struct.valinfo* @str_value(i8* getelementptr inbounds ([1 x i8]* @.str21, i32 0, i32 0)), !dbg !1015
  store %struct.valinfo* %call70, %struct.valinfo** %v, align 8, !dbg !1015
  br label %if.end91, !dbg !1015

if.else71:                                        ; preds = %lor.lhs.false65
  %call72 = call i8* @xmalloc(i64 16), !dbg !1016
  %47 = bitcast i8* %call72 to %struct.valinfo*, !dbg !1016
  store %struct.valinfo* %47, %struct.valinfo** %v, align 8, !dbg !1016
  %48 = load %struct.valinfo** %v, align 8, !dbg !1018
  %type = getelementptr inbounds %struct.valinfo* %48, i32 0, i32 0, !dbg !1018
  store i32 1, i32* %type, align 4, !dbg !1018
  %49 = load %struct.valinfo** %i2, align 8, !dbg !1019
  %u73 = getelementptr inbounds %struct.valinfo* %49, i32 0, i32 1, !dbg !1019
  %i74 = bitcast %union.anon* %u73 to i64*, !dbg !1019
  %50 = load i64* %i74, align 8, !dbg !1019
  %add75 = add nsw i64 %50, 1, !dbg !1019
  %call76 = call i8* @xmalloc(i64 %add75), !dbg !1019
  %51 = load %struct.valinfo** %l, align 8, !dbg !1019
  %u77 = getelementptr inbounds %struct.valinfo* %51, i32 0, i32 1, !dbg !1019
  %s78 = bitcast %union.anon* %u77 to i8**, !dbg !1019
  %52 = load i8** %s78, align 8, !dbg !1019
  %53 = load %struct.valinfo** %i1, align 8, !dbg !1019
  %u79 = getelementptr inbounds %struct.valinfo* %53, i32 0, i32 1, !dbg !1019
  %i80 = bitcast %union.anon* %u79 to i64*, !dbg !1019
  %54 = load i64* %i80, align 8, !dbg !1019
  %add.ptr = getelementptr inbounds i8* %52, i64 %54, !dbg !1019
  %add.ptr81 = getelementptr inbounds i8* %add.ptr, i64 -1, !dbg !1019
  %55 = load %struct.valinfo** %i2, align 8, !dbg !1019
  %u82 = getelementptr inbounds %struct.valinfo* %55, i32 0, i32 1, !dbg !1019
  %i83 = bitcast %union.anon* %u82 to i64*, !dbg !1019
  %56 = load i64* %i83, align 8, !dbg !1019
  %call84 = call i8* @strncpy(i8* %call76, i8* %add.ptr81, i64 %56) #9, !dbg !1019
  %57 = load %struct.valinfo** %v, align 8, !dbg !1019
  %u85 = getelementptr inbounds %struct.valinfo* %57, i32 0, i32 1, !dbg !1019
  %s86 = bitcast %union.anon* %u85 to i8**, !dbg !1019
  store i8* %call84, i8** %s86, align 8, !dbg !1019
  %58 = load %struct.valinfo** %i2, align 8, !dbg !1020
  %u87 = getelementptr inbounds %struct.valinfo* %58, i32 0, i32 1, !dbg !1020
  %i88 = bitcast %union.anon* %u87 to i64*, !dbg !1020
  %59 = load i64* %i88, align 8, !dbg !1020
  %60 = load %struct.valinfo** %v, align 8, !dbg !1020
  %u89 = getelementptr inbounds %struct.valinfo* %60, i32 0, i32 1, !dbg !1020
  %s90 = bitcast %union.anon* %u89 to i8**, !dbg !1020
  %61 = load i8** %s90, align 8, !dbg !1020
  %arrayidx = getelementptr inbounds i8* %61, i64 %59, !dbg !1020
  store i8 0, i8* %arrayidx, align 1, !dbg !1020
  br label %if.end91

if.end91:                                         ; preds = %if.else71, %if.then69
  %62 = load %struct.valinfo** %l, align 8, !dbg !1021
  call void @freev(%struct.valinfo* %62), !dbg !1021
  %63 = load %struct.valinfo** %i1, align 8, !dbg !1022
  call void @freev(%struct.valinfo* %63), !dbg !1022
  %64 = load %struct.valinfo** %i2, align 8, !dbg !1023
  call void @freev(%struct.valinfo* %64), !dbg !1023
  %65 = load %struct.valinfo** %v, align 8, !dbg !1024
  store %struct.valinfo* %65, %struct.valinfo** %retval, !dbg !1024
  br label %return, !dbg !1024

if.else92:                                        ; preds = %if.else43
  %66 = load i8* %evaluate.addr, align 1, !dbg !1025
  %tobool93 = trunc i8 %66 to i1, !dbg !1025
  %call94 = call %struct.valinfo* @eval7(i1 zeroext %tobool93), !dbg !1025
  store %struct.valinfo* %call94, %struct.valinfo** %retval, !dbg !1025
  br label %return, !dbg !1025

return:                                           ; preds = %if.else92, %if.end91, %if.end42, %if.end20, %if.then5, %if.end
  %67 = load %struct.valinfo** %retval, !dbg !1026
  ret %struct.valinfo* %67, !dbg !1026
}

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @docolon(%struct.valinfo* %sv, %struct.valinfo* %pv) #0 {
entry:
  %sv.addr = alloca %struct.valinfo*, align 8
  %pv.addr = alloca %struct.valinfo*, align 8
  %v = alloca %struct.valinfo*, align 8
  %errmsg = alloca i8*, align 8
  %re_buffer = alloca %struct.re_pattern_buffer, align 8
  %re_regs = alloca %struct.re_registers, align 8
  %len = alloca i64, align 8
  %matchlen = alloca i32, align 4
  store %struct.valinfo* %sv, %struct.valinfo** %sv.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %sv.addr}, metadata !1027), !dbg !1028
  store %struct.valinfo* %pv, %struct.valinfo** %pv.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %pv.addr}, metadata !1029), !dbg !1028
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v}, metadata !1030), !dbg !1031
  call void @llvm.dbg.declare(metadata !{i8** %errmsg}, metadata !1032), !dbg !1033
  call void @llvm.dbg.declare(metadata !{%struct.re_pattern_buffer* %re_buffer}, metadata !1034), !dbg !1055
  call void @llvm.dbg.declare(metadata !{%struct.re_registers* %re_regs}, metadata !1056), !dbg !1064
  call void @llvm.dbg.declare(metadata !{i64* %len}, metadata !1065), !dbg !1066
  call void @llvm.dbg.declare(metadata !{i32* %matchlen}, metadata !1067), !dbg !1068
  %0 = load %struct.valinfo** %sv.addr, align 8, !dbg !1069
  call void @tostring(%struct.valinfo* %0), !dbg !1069
  %1 = load %struct.valinfo** %pv.addr, align 8, !dbg !1070
  call void @tostring(%struct.valinfo* %1), !dbg !1070
  %2 = load %struct.valinfo** %pv.addr, align 8, !dbg !1071
  %u = getelementptr inbounds %struct.valinfo* %2, i32 0, i32 1, !dbg !1071
  %s = bitcast %union.anon* %u to i8**, !dbg !1071
  %3 = load i8** %s, align 8, !dbg !1071
  %arrayidx = getelementptr inbounds i8* %3, i64 0, !dbg !1071
  %4 = load i8* %arrayidx, align 1, !dbg !1071
  %conv = sext i8 %4 to i32, !dbg !1071
  %cmp = icmp eq i32 %conv, 94, !dbg !1071
  br i1 %cmp, label %if.then, label %if.end, !dbg !1071

if.then:                                          ; preds = %entry
  %5 = load %struct.valinfo** %pv.addr, align 8, !dbg !1073
  %u2 = getelementptr inbounds %struct.valinfo* %5, i32 0, i32 1, !dbg !1073
  %s3 = bitcast %union.anon* %u2 to i8**, !dbg !1073
  %6 = load i8** %s3, align 8, !dbg !1073
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([134 x i8]* @.str50, i32 0, i32 0), i8* %6), !dbg !1073
  br label %if.end, !dbg !1075

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.valinfo** %pv.addr, align 8, !dbg !1076
  %u4 = getelementptr inbounds %struct.valinfo* %7, i32 0, i32 1, !dbg !1076
  %s5 = bitcast %union.anon* %u4 to i8**, !dbg !1076
  %8 = load i8** %s5, align 8, !dbg !1076
  %call = call i64 @strlen(i8* %8) #12, !dbg !1076
  store i64 %call, i64* %len, align 8, !dbg !1076
  %9 = bitcast %struct.re_pattern_buffer* %re_buffer to i8*, !dbg !1077
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 64, i32 8, i1 false), !dbg !1077
  %10 = bitcast %struct.re_registers* %re_regs to i8*, !dbg !1078
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false), !dbg !1078
  %11 = load i64* %len, align 8, !dbg !1079
  %mul = mul i64 2, %11, !dbg !1079
  %allocated = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 1, !dbg !1079
  store i64 %mul, i64* %allocated, align 8, !dbg !1079
  %allocated6 = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 1, !dbg !1080
  %12 = load i64* %allocated6, align 8, !dbg !1080
  %13 = load i64* %len, align 8, !dbg !1080
  %cmp7 = icmp ult i64 %12, %13, !dbg !1080
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1080

if.then9:                                         ; preds = %if.end
  call void @xalloc_die() #13, !dbg !1082
  unreachable, !dbg !1082

if.end10:                                         ; preds = %if.end
  %allocated11 = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 1, !dbg !1083
  %14 = load i64* %allocated11, align 8, !dbg !1083
  %call12 = call i8* @xmalloc(i64 %14), !dbg !1083
  %buffer = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 0, !dbg !1083
  store i8* %call12, i8** %buffer, align 8, !dbg !1083
  %translate = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 5, !dbg !1084
  store i8* null, i8** %translate, align 8, !dbg !1084
  store i64 66246, i64* @re_syntax_options, align 8, !dbg !1085
  %15 = load %struct.valinfo** %pv.addr, align 8, !dbg !1086
  %u13 = getelementptr inbounds %struct.valinfo* %15, i32 0, i32 1, !dbg !1086
  %s14 = bitcast %union.anon* %u13 to i8**, !dbg !1086
  %16 = load i8** %s14, align 8, !dbg !1086
  %17 = load i64* %len, align 8, !dbg !1086
  %call15 = call i8* @re_compile_pattern(i8* %16, i64 %17, %struct.re_pattern_buffer* %re_buffer), !dbg !1086
  store i8* %call15, i8** %errmsg, align 8, !dbg !1086
  %18 = load i8** %errmsg, align 8, !dbg !1087
  %tobool = icmp ne i8* %18, null, !dbg !1087
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !1087

if.then16:                                        ; preds = %if.end10
  %19 = load i8** %errmsg, align 8, !dbg !1089
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 3, i32* (...)* null, i8* getelementptr inbounds ([4 x i8]* @.str51, i32 0, i32 0), i8* %19), !dbg !1089
  br label %if.end17, !dbg !1091

if.end17:                                         ; preds = %if.then16, %if.end10
  %20 = load %struct.valinfo** %sv.addr, align 8, !dbg !1092
  %u18 = getelementptr inbounds %struct.valinfo* %20, i32 0, i32 1, !dbg !1092
  %s19 = bitcast %union.anon* %u18 to i8**, !dbg !1092
  %21 = load i8** %s19, align 8, !dbg !1092
  %22 = load %struct.valinfo** %sv.addr, align 8, !dbg !1092
  %u20 = getelementptr inbounds %struct.valinfo* %22, i32 0, i32 1, !dbg !1092
  %s21 = bitcast %union.anon* %u20 to i8**, !dbg !1092
  %23 = load i8** %s21, align 8, !dbg !1092
  %call22 = call i64 @strlen(i8* %23) #12, !dbg !1092
  %conv23 = trunc i64 %call22 to i32, !dbg !1092
  %call24 = call i32 @re_match(%struct.re_pattern_buffer* %re_buffer, i8* %21, i32 %conv23, i32 0, %struct.re_registers* %re_regs), !dbg !1092
  store i32 %call24, i32* %matchlen, align 4, !dbg !1092
  %24 = load i32* %matchlen, align 4, !dbg !1093
  %cmp25 = icmp sle i32 0, %24, !dbg !1093
  br i1 %cmp25, label %if.then27, label %if.else42, !dbg !1093

if.then27:                                        ; preds = %if.end17
  %re_nsub = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 6, !dbg !1095
  %25 = load i64* %re_nsub, align 8, !dbg !1095
  %cmp28 = icmp ugt i64 %25, 0, !dbg !1095
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !1095

if.then30:                                        ; preds = %if.then27
  %end = getelementptr inbounds %struct.re_registers* %re_regs, i32 0, i32 2, !dbg !1098
  %26 = load i32** %end, align 8, !dbg !1098
  %arrayidx31 = getelementptr inbounds i32* %26, i64 1, !dbg !1098
  %27 = load i32* %arrayidx31, align 4, !dbg !1098
  %idxprom = sext i32 %27 to i64, !dbg !1098
  %28 = load %struct.valinfo** %sv.addr, align 8, !dbg !1098
  %u32 = getelementptr inbounds %struct.valinfo* %28, i32 0, i32 1, !dbg !1098
  %s33 = bitcast %union.anon* %u32 to i8**, !dbg !1098
  %29 = load i8** %s33, align 8, !dbg !1098
  %arrayidx34 = getelementptr inbounds i8* %29, i64 %idxprom, !dbg !1098
  store i8 0, i8* %arrayidx34, align 1, !dbg !1098
  %30 = load %struct.valinfo** %sv.addr, align 8, !dbg !1100
  %u35 = getelementptr inbounds %struct.valinfo* %30, i32 0, i32 1, !dbg !1100
  %s36 = bitcast %union.anon* %u35 to i8**, !dbg !1100
  %31 = load i8** %s36, align 8, !dbg !1100
  %start = getelementptr inbounds %struct.re_registers* %re_regs, i32 0, i32 1, !dbg !1100
  %32 = load i32** %start, align 8, !dbg !1100
  %arrayidx37 = getelementptr inbounds i32* %32, i64 1, !dbg !1100
  %33 = load i32* %arrayidx37, align 4, !dbg !1100
  %idx.ext = sext i32 %33 to i64, !dbg !1100
  %add.ptr = getelementptr inbounds i8* %31, i64 %idx.ext, !dbg !1100
  %call38 = call %struct.valinfo* @str_value(i8* %add.ptr), !dbg !1100
  store %struct.valinfo* %call38, %struct.valinfo** %v, align 8, !dbg !1100
  br label %if.end41, !dbg !1101

if.else:                                          ; preds = %if.then27
  %34 = load i32* %matchlen, align 4, !dbg !1102
  %conv39 = sext i32 %34 to i64, !dbg !1102
  %call40 = call %struct.valinfo* @int_value(i64 %conv39), !dbg !1102
  store %struct.valinfo* %call40, %struct.valinfo** %v, align 8, !dbg !1102
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then30
  br label %if.end51, !dbg !1103

if.else42:                                        ; preds = %if.end17
  %re_nsub43 = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 6, !dbg !1104
  %35 = load i64* %re_nsub43, align 8, !dbg !1104
  %cmp44 = icmp ugt i64 %35, 0, !dbg !1104
  br i1 %cmp44, label %if.then46, label %if.else48, !dbg !1104

if.then46:                                        ; preds = %if.else42
  %call47 = call %struct.valinfo* @str_value(i8* getelementptr inbounds ([1 x i8]* @.str21, i32 0, i32 0)), !dbg !1107
  store %struct.valinfo* %call47, %struct.valinfo** %v, align 8, !dbg !1107
  br label %if.end50, !dbg !1107

if.else48:                                        ; preds = %if.else42
  %call49 = call %struct.valinfo* @int_value(i64 0), !dbg !1108
  store %struct.valinfo* %call49, %struct.valinfo** %v, align 8, !dbg !1108
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end41
  %buffer52 = getelementptr inbounds %struct.re_pattern_buffer* %re_buffer, i32 0, i32 0, !dbg !1109
  %36 = load i8** %buffer52, align 8, !dbg !1109
  call void @free(i8* %36) #9, !dbg !1109
  %37 = load %struct.valinfo** %v, align 8, !dbg !1110
  ret %struct.valinfo* %37, !dbg !1110
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #9

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) #3

declare i32 @re_match(%struct.re_pattern_buffer*, i8*, i32, i32, %struct.re_registers*) #3

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @str_value(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %v = alloca %struct.valinfo*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %s.addr}, metadata !1111), !dbg !1112
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v}, metadata !1113), !dbg !1114
  %call = call i8* @xmalloc(i64 16), !dbg !1114
  %0 = bitcast i8* %call to %struct.valinfo*, !dbg !1114
  store %struct.valinfo* %0, %struct.valinfo** %v, align 8, !dbg !1114
  %1 = load %struct.valinfo** %v, align 8, !dbg !1115
  %type = getelementptr inbounds %struct.valinfo* %1, i32 0, i32 0, !dbg !1115
  store i32 1, i32* %type, align 4, !dbg !1115
  %2 = load i8** %s.addr, align 8, !dbg !1116
  %call1 = call i8* @xstrdup(i8* %2), !dbg !1116
  %3 = load %struct.valinfo** %v, align 8, !dbg !1116
  %u = getelementptr inbounds %struct.valinfo* %3, i32 0, i32 1, !dbg !1116
  %s2 = bitcast %union.anon* %u to i8**, !dbg !1116
  store i8* %call1, i8** %s2, align 8, !dbg !1116
  %4 = load %struct.valinfo** %v, align 8, !dbg !1117
  ret %struct.valinfo* %4, !dbg !1117
}

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #7

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.valinfo* @eval7(i1 zeroext %evaluate) #0 {
entry:
  %retval = alloca %struct.valinfo*, align 8
  %evaluate.addr = alloca i8, align 1
  %v = alloca %struct.valinfo*, align 8
  %frombool = zext i1 %evaluate to i8
  store i8 %frombool, i8* %evaluate.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %evaluate.addr}, metadata !1118), !dbg !1119
  call void @llvm.dbg.declare(metadata !{%struct.valinfo** %v}, metadata !1120), !dbg !1121
  %call = call zeroext i1 @nomoreargs(), !dbg !1122
  br i1 %call, label %if.then, label %if.end, !dbg !1122

if.then:                                          ; preds = %entry
  call void @syntax_error(), !dbg !1124
  br label %if.end, !dbg !1124

if.end:                                           ; preds = %if.then, %entry
  %call1 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0)), !dbg !1125
  br i1 %call1, label %if.then2, label %if.end7, !dbg !1125

if.then2:                                         ; preds = %if.end
  %0 = load i8* %evaluate.addr, align 1, !dbg !1127
  %tobool = trunc i8 %0 to i1, !dbg !1127
  %call3 = call %struct.valinfo* @eval(i1 zeroext %tobool), !dbg !1127
  store %struct.valinfo* %call3, %struct.valinfo** %v, align 8, !dbg !1127
  %call4 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str57, i32 0, i32 0)), !dbg !1129
  br i1 %call4, label %if.end6, label %if.then5, !dbg !1129

if.then5:                                         ; preds = %if.then2
  call void @syntax_error(), !dbg !1131
  br label %if.end6, !dbg !1131

if.end6:                                          ; preds = %if.then5, %if.then2
  %1 = load %struct.valinfo** %v, align 8, !dbg !1132
  store %struct.valinfo* %1, %struct.valinfo** %retval, !dbg !1132
  br label %return, !dbg !1132

if.end7:                                          ; preds = %if.end
  %call8 = call zeroext i1 @nextarg(i8* getelementptr inbounds ([2 x i8]* @.str57, i32 0, i32 0)), !dbg !1133
  br i1 %call8, label %if.then9, label %if.end10, !dbg !1133

if.then9:                                         ; preds = %if.end7
  call void @syntax_error(), !dbg !1135
  br label %if.end10, !dbg !1135

if.end10:                                         ; preds = %if.then9, %if.end7
  %2 = load i8*** @args, align 8, !dbg !1136
  %incdec.ptr = getelementptr inbounds i8** %2, i32 1, !dbg !1136
  store i8** %incdec.ptr, i8*** @args, align 8, !dbg !1136
  %3 = load i8** %2, align 8, !dbg !1136
  %call11 = call %struct.valinfo* @str_value(i8* %3), !dbg !1136
  store %struct.valinfo* %call11, %struct.valinfo** %retval, !dbg !1136
  br label %return, !dbg !1136

return:                                           ; preds = %if.end10, %if.end6
  %4 = load %struct.valinfo** %retval, !dbg !1137
  ret %struct.valinfo* %4, !dbg !1137
}

declare i32 @puts(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @putc_unlocked(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @close_stdout_set_file_name(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %file.addr}, metadata !1138), !dbg !1139
  %0 = load i8** %file.addr, align 8, !dbg !1140
  store i8* %0, i8** @file_name, align 8, !dbg !1140
  ret void, !dbg !1141
}

; Function Attrs: nounwind uwtable
define void @close_stdout() #0 {
entry:
  %prev_fail = alloca i8, align 1
  %none_pending = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  %e = alloca i32, align 4
  %write_error = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata !{i8* %prev_fail}, metadata !1142), !dbg !1143
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !1143
  %call = call i32 @ferror_unlocked(%struct._IO_FILE* %0) #9, !dbg !1143
  %tobool = icmp ne i32 %call, 0, !dbg !1143
  %frombool = zext i1 %tobool to i8, !dbg !1143
  store i8 %frombool, i8* %prev_fail, align 1, !dbg !1143
  call void @llvm.dbg.declare(metadata !{i8* %none_pending}, metadata !1144), !dbg !1145
  %1 = load %struct._IO_FILE** @stdout, align 8, !dbg !1145
  %call1 = call i64 @__fpending(%struct._IO_FILE* %1) #9, !dbg !1145
  %cmp = icmp eq i64 0, %call1, !dbg !1145
  %frombool2 = zext i1 %cmp to i8, !dbg !1145
  store i8 %frombool2, i8* %none_pending, align 1, !dbg !1145
  call void @llvm.dbg.declare(metadata !{i8* %fclose_fail}, metadata !1146), !dbg !1147
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !1147
  %call3 = call i32 @fclose(%struct._IO_FILE* %2), !dbg !1147
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1147
  %frombool5 = zext i1 %tobool4 to i8, !dbg !1147
  store i8 %frombool5, i8* %fclose_fail, align 1, !dbg !1147
  %3 = load i8* %prev_fail, align 1, !dbg !1148
  %tobool6 = trunc i8 %3 to i1, !dbg !1148
  br i1 %tobool6, label %if.then, label %lor.lhs.false, !dbg !1148

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8* %fclose_fail, align 1, !dbg !1148
  %tobool7 = trunc i8 %4 to i1, !dbg !1148
  br i1 %tobool7, label %if.then, label %if.end19, !dbg !1148

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1150), !dbg !1152
  %5 = load i8* %fclose_fail, align 1, !dbg !1152
  %tobool8 = trunc i8 %5 to i1, !dbg !1152
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !1152

cond.true:                                        ; preds = %if.then
  %call9 = call i32* @__errno_location() #1, !dbg !1152
  %6 = load i32* %call9, align 4, !dbg !1152
  br label %cond.end, !dbg !1152

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !1152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ], !dbg !1152
  store i32 %cond, i32* %e, align 4, !dbg !1152
  call void @llvm.dbg.declare(metadata !{i8** %write_error}, metadata !1153), !dbg !1154
  %7 = load i32* %e, align 4, !dbg !1155
  %cmp10 = icmp eq i32 %7, 9, !dbg !1155
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !1155

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8* %prev_fail, align 1, !dbg !1155
  %tobool11 = trunc i8 %8 to i1, !dbg !1155
  br i1 %tobool11, label %if.end, label %land.lhs.true12, !dbg !1155

land.lhs.true12:                                  ; preds = %land.lhs.true
  %9 = load i8* %none_pending, align 1, !dbg !1155
  %tobool13 = trunc i8 %9 to i1, !dbg !1155
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !1155

if.then14:                                        ; preds = %land.lhs.true12
  br label %if.end19, !dbg !1157

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true, %cond.end
  store i8* getelementptr inbounds ([12 x i8]* @.str59, i32 0, i32 0), i8** %write_error, align 8, !dbg !1158
  %10 = load i8** @file_name, align 8, !dbg !1159
  %tobool15 = icmp ne i8* %10, null, !dbg !1159
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !1159

if.then16:                                        ; preds = %if.end
  %11 = load volatile i32* @exit_failure, align 4, !dbg !1161
  %12 = load i32* %e, align 4, !dbg !1161
  %13 = load i8** @file_name, align 8, !dbg !1161
  %call17 = call i8* @quotearg_colon(i8* %13), !dbg !1161
  %14 = load i8** %write_error, align 8, !dbg !1161
  call void (i32, i32, i8*, ...)* @error(i32 %11, i32 %12, i8* getelementptr inbounds ([7 x i8]* @.str160, i32 0, i32 0), i8* %call17, i8* %14), !dbg !1161
  br label %if.end18, !dbg !1161

if.else:                                          ; preds = %if.end
  %15 = load volatile i32* @exit_failure, align 4, !dbg !1162
  %16 = load i32* %e, align 4, !dbg !1162
  %17 = load i8** %write_error, align 8, !dbg !1162
  call void (i32, i32, i8*, ...)* @error(i32 %15, i32 %16, i8* getelementptr inbounds ([3 x i8]* @.str261, i32 0, i32 0), i8* %17), !dbg !1162
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  br label %if.end19, !dbg !1163

if.end19:                                         ; preds = %if.end18, %if.then14, %lor.lhs.false
  ret void, !dbg !1164
}

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #2

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @imaxtostr(i64 %i, i8* %buf) #0 {
entry:
  %i.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %i.addr}, metadata !1165), !dbg !1166
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %buf.addr}, metadata !1167), !dbg !1166
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1168), !dbg !1169
  %0 = load i8** %buf.addr, align 8, !dbg !1169
  %add.ptr = getelementptr inbounds i8* %0, i64 21, !dbg !1169
  store i8* %add.ptr, i8** %p, align 8, !dbg !1169
  %1 = load i8** %p, align 8, !dbg !1170
  store i8 0, i8* %1, align 1, !dbg !1170
  %2 = load i64* %i.addr, align 8, !dbg !1171
  %cmp = icmp slt i64 %2, 0, !dbg !1171
  br i1 %cmp, label %if.then, label %if.else, !dbg !1171

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1173

do.body:                                          ; preds = %do.cond, %if.then
  %3 = load i64* %i.addr, align 8, !dbg !1175
  %rem = srem i64 %3, 10, !dbg !1175
  %sub = sub nsw i64 48, %rem, !dbg !1175
  %conv = trunc i64 %sub to i8, !dbg !1175
  %4 = load i8** %p, align 8, !dbg !1175
  %incdec.ptr = getelementptr inbounds i8* %4, i32 -1, !dbg !1175
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1175
  store i8 %conv, i8* %incdec.ptr, align 1, !dbg !1175
  br label %do.cond, !dbg !1175

do.cond:                                          ; preds = %do.body
  %5 = load i64* %i.addr, align 8, !dbg !1175
  %div = sdiv i64 %5, 10, !dbg !1175
  store i64 %div, i64* %i.addr, align 8, !dbg !1175
  %cmp1 = icmp ne i64 %div, 0, !dbg !1175
  br i1 %cmp1, label %do.body, label %do.end, !dbg !1175

do.end:                                           ; preds = %do.cond
  %6 = load i8** %p, align 8, !dbg !1176
  %incdec.ptr3 = getelementptr inbounds i8* %6, i32 -1, !dbg !1176
  store i8* %incdec.ptr3, i8** %p, align 8, !dbg !1176
  store i8 45, i8* %incdec.ptr3, align 1, !dbg !1176
  br label %if.end, !dbg !1177

if.else:                                          ; preds = %entry
  br label %do.body4, !dbg !1178

do.body4:                                         ; preds = %do.cond8, %if.else
  %7 = load i64* %i.addr, align 8, !dbg !1180
  %rem5 = srem i64 %7, 10, !dbg !1180
  %add = add nsw i64 48, %rem5, !dbg !1180
  %conv6 = trunc i64 %add to i8, !dbg !1180
  %8 = load i8** %p, align 8, !dbg !1180
  %incdec.ptr7 = getelementptr inbounds i8* %8, i32 -1, !dbg !1180
  store i8* %incdec.ptr7, i8** %p, align 8, !dbg !1180
  store i8 %conv6, i8* %incdec.ptr7, align 1, !dbg !1180
  br label %do.cond8, !dbg !1180

do.cond8:                                         ; preds = %do.body4
  %9 = load i64* %i.addr, align 8, !dbg !1180
  %div9 = sdiv i64 %9, 10, !dbg !1180
  store i64 %div9, i64* %i.addr, align 8, !dbg !1180
  %cmp10 = icmp ne i64 %div9, 0, !dbg !1180
  br i1 %cmp10, label %do.body4, label %do.end12, !dbg !1180

do.end12:                                         ; preds = %do.cond8
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end
  %10 = load i8** %p, align 8, !dbg !1181
  ret i8* %10, !dbg !1181
}

; Function Attrs: nounwind uwtable
define void @parse_long_options(i32 %argc, i8** %argv, i8* %command_name, i8* %package, i8* %version, void (i32)* %usage_func, ...) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %usage_func.addr = alloca void (i32)*, align 8
  %c = alloca i32, align 4
  %saved_opterr = alloca i32, align 4
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !1182), !dbg !1183
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !1184), !dbg !1185
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %command_name.addr}, metadata !1186), !dbg !1187
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %package.addr}, metadata !1188), !dbg !1189
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %version.addr}, metadata !1190), !dbg !1191
  store void (i32)* %usage_func, void (i32)** %usage_func.addr, align 8
  call void @llvm.dbg.declare(metadata !{void (i32)** %usage_func.addr}, metadata !1192), !dbg !1193
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1194), !dbg !1195
  call void @llvm.dbg.declare(metadata !{i32* %saved_opterr}, metadata !1196), !dbg !1197
  %0 = load i32* @opterr, align 4, !dbg !1198
  store i32 %0, i32* %saved_opterr, align 4, !dbg !1198
  store i32 0, i32* @opterr, align 4, !dbg !1199
  %1 = load i32* %argc.addr, align 4, !dbg !1200
  %cmp = icmp eq i32 %1, 2, !dbg !1200
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1200

land.lhs.true:                                    ; preds = %entry
  %2 = load i32* %argc.addr, align 4, !dbg !1202
  %3 = load i8*** %argv.addr, align 8, !dbg !1202
  %call = call i32 @getopt_long(i32 %2, i8** %3, i8* getelementptr inbounds ([2 x i8]* @.str68, i32 0, i32 0), %struct.option* getelementptr inbounds ([3 x %struct.option]* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @long_options to [3 x %struct.option]*), i32 0, i32 0), i32* null) #9, !dbg !1202
  store i32 %call, i32* %c, align 4, !dbg !1202
  %cmp1 = icmp ne i32 %call, -1, !dbg !1202
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1202

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32* %c, align 4, !dbg !1203
  switch i32 %4, label %sw.default [
    i32 104, label %sw.bb
    i32 118, label %sw.bb2
  ], !dbg !1203

sw.bb:                                            ; preds = %if.then
  %5 = load void (i32)** %usage_func.addr, align 8, !dbg !1205
  call void %5(i32 0), !dbg !1205
  br label %sw.bb2, !dbg !1205

sw.bb2:                                           ; preds = %sw.bb, %if.then
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %authors}, metadata !1207), !dbg !1220
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !1221
  %arraydecay3 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1221
  call void @llvm.va_start(i8* %arraydecay3), !dbg !1221
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !1222
  %7 = load i8** %command_name.addr, align 8, !dbg !1222
  %8 = load i8** %package.addr, align 8, !dbg !1222
  %9 = load i8** %version.addr, align 8, !dbg !1222
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !1222
  call void @version_etc_va(%struct._IO_FILE* %6, i8* %7, i8* %8, i8* %9, %struct.__va_list_tag* %arraydecay4), !dbg !1222
  call void @exit(i32 0) #11, !dbg !1223
  unreachable, !dbg !1223

sw.default:                                       ; preds = %if.then
  br label %sw.epilog, !dbg !1224

sw.epilog:                                        ; preds = %sw.default
  br label %if.end, !dbg !1225

if.end:                                           ; preds = %sw.epilog, %land.lhs.true, %entry
  %10 = load i32* %saved_opterr, align 4, !dbg !1226
  store i32 %10, i32* @opterr, align 4, !dbg !1226
  store i32 0, i32* @optind, align 4, !dbg !1227
  ret void, !dbg !1228
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1229), !dbg !1230
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1231), !dbg !1232
  %call = call i32* @__errno_location() #1, !dbg !1232
  %0 = load i32* %call, align 4, !dbg !1232
  store i32 %0, i32* %e, align 4, !dbg !1232
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %p}, metadata !1233), !dbg !1234
  %call1 = call i8* @xmalloc(i64 36), !dbg !1234
  %1 = bitcast i8* %call1 to %struct.quoting_options*, !dbg !1234
  store %struct.quoting_options* %1, %struct.quoting_options** %p, align 8, !dbg !1234
  %2 = load %struct.quoting_options** %p, align 8, !dbg !1235
  %3 = load %struct.quoting_options** %o.addr, align 8, !dbg !1235
  %tobool = icmp ne %struct.quoting_options* %3, null, !dbg !1235
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1235

cond.true:                                        ; preds = %entry
  %4 = load %struct.quoting_options** %o.addr, align 8, !dbg !1235
  br label %cond.end, !dbg !1235

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1235

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %4, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1235
  %5 = bitcast %struct.quoting_options* %2 to i8*, !dbg !1235
  %6 = bitcast %struct.quoting_options* %cond to i8*, !dbg !1235
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 36, i32 4, i1 false), !dbg !1235
  %7 = load i32* %e, align 4, !dbg !1236
  %call2 = call i32* @__errno_location() #1, !dbg !1236
  store i32 %7, i32* %call2, align 4, !dbg !1236
  %8 = load %struct.quoting_options** %p, align 8, !dbg !1237
  ret %struct.quoting_options* %8, !dbg !1237
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1238), !dbg !1239
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !1240
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1240
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1240

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1240
  br label %cond.end, !dbg !1240

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1240

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1240
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !1240
  %2 = load i32* %style, align 4, !dbg !1240
  ret i32 %2, !dbg !1240
}

; Function Attrs: nounwind uwtable
define void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1241), !dbg !1242
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1243), !dbg !1242
  %0 = load i32* %s.addr, align 4, !dbg !1244
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1244
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !1244
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1244

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !1244
  br label %cond.end, !dbg !1244

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1244

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1244
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !1244
  store i32 %0, i32* %style, align 4, !dbg !1244
  ret void, !dbg !1245
}

; Function Attrs: nounwind uwtable
define i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1246), !dbg !1247
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %c.addr}, metadata !1248), !dbg !1247
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i.addr}, metadata !1249), !dbg !1247
  call void @llvm.dbg.declare(metadata !{i8* %uc}, metadata !1250), !dbg !1251
  %0 = load i8* %c.addr, align 1, !dbg !1251
  store i8 %0, i8* %uc, align 1, !dbg !1251
  call void @llvm.dbg.declare(metadata !{i32** %p}, metadata !1252), !dbg !1254
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1254
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !1254
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1254

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !1254
  br label %cond.end, !dbg !1254

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1254

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1254
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 1, !dbg !1254
  %arraydecay = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !1254
  %3 = load i8* %uc, align 1, !dbg !1254
  %conv = zext i8 %3 to i64, !dbg !1254
  %div = udiv i64 %conv, 32, !dbg !1254
  %add.ptr = getelementptr inbounds i32* %arraydecay, i64 %div, !dbg !1254
  store i32* %add.ptr, i32** %p, align 8, !dbg !1254
  call void @llvm.dbg.declare(metadata !{i32* %shift}, metadata !1255), !dbg !1256
  %4 = load i8* %uc, align 1, !dbg !1256
  %conv1 = zext i8 %4 to i64, !dbg !1256
  %rem = urem i64 %conv1, 32, !dbg !1256
  %conv2 = trunc i64 %rem to i32, !dbg !1256
  store i32 %conv2, i32* %shift, align 4, !dbg !1256
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1257), !dbg !1258
  %5 = load i32** %p, align 8, !dbg !1258
  %6 = load i32* %5, align 4, !dbg !1258
  %7 = load i32* %shift, align 4, !dbg !1258
  %shr = lshr i32 %6, %7, !dbg !1258
  %and = and i32 %shr, 1, !dbg !1258
  store i32 %and, i32* %r, align 4, !dbg !1258
  %8 = load i32* %i.addr, align 4, !dbg !1259
  %and3 = and i32 %8, 1, !dbg !1259
  %9 = load i32* %r, align 4, !dbg !1259
  %xor = xor i32 %and3, %9, !dbg !1259
  %10 = load i32* %shift, align 4, !dbg !1259
  %shl = shl i32 %xor, %10, !dbg !1259
  %11 = load i32** %p, align 8, !dbg !1259
  %12 = load i32* %11, align 4, !dbg !1259
  %xor4 = xor i32 %12, %shl, !dbg !1259
  store i32 %xor4, i32* %11, align 4, !dbg !1259
  %13 = load i32* %r, align 4, !dbg !1260
  ret i32 %13, !dbg !1260
}

; Function Attrs: nounwind uwtable
define i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %r = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %buffer.addr}, metadata !1261), !dbg !1262
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %buffersize.addr}, metadata !1263), !dbg !1262
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1264), !dbg !1265
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1266), !dbg !1265
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1267), !dbg !1268
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %p}, metadata !1269), !dbg !1270
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !1270
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1270
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1270

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1270
  br label %cond.end, !dbg !1270

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1270

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !1270
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !1270
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1271), !dbg !1272
  %call = call i32* @__errno_location() #1, !dbg !1272
  %2 = load i32* %call, align 4, !dbg !1272
  store i32 %2, i32* %e, align 4, !dbg !1272
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !1273), !dbg !1274
  %3 = load i8** %buffer.addr, align 8, !dbg !1274
  %4 = load i64* %buffersize.addr, align 8, !dbg !1274
  %5 = load i8** %arg.addr, align 8, !dbg !1274
  %6 = load i64* %argsize.addr, align 8, !dbg !1274
  %7 = load %struct.quoting_options** %p, align 8, !dbg !1274
  %style = getelementptr inbounds %struct.quoting_options* %7, i32 0, i32 0, !dbg !1274
  %8 = load i32* %style, align 4, !dbg !1274
  %9 = load %struct.quoting_options** %p, align 8, !dbg !1274
  %call1 = call i64 @quotearg_buffer_restyled(i8* %3, i64 %4, i8* %5, i64 %6, i32 %8, %struct.quoting_options* %9), !dbg !1274
  store i64 %call1, i64* %r, align 8, !dbg !1274
  %10 = load i32* %e, align 4, !dbg !1275
  %call2 = call i32* @__errno_location() #1, !dbg !1275
  store i32 %10, i32* %call2, align 4, !dbg !1275
  %11 = load i64* %r, align 8, !dbg !1276
  ret i64 %11, !dbg !1276
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_alloc(i8* %arg, i64 %argsize, %struct.quoting_options* %o) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %bufsize = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1277), !dbg !1278
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1279), !dbg !1278
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1280), !dbg !1281
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1282), !dbg !1283
  %call = call i32* @__errno_location() #1, !dbg !1283
  %0 = load i32* %call, align 4, !dbg !1283
  store i32 %0, i32* %e, align 4, !dbg !1283
  call void @llvm.dbg.declare(metadata !{i64* %bufsize}, metadata !1284), !dbg !1285
  %1 = load i8** %arg.addr, align 8, !dbg !1285
  %2 = load i64* %argsize.addr, align 8, !dbg !1285
  %3 = load %struct.quoting_options** %o.addr, align 8, !dbg !1285
  %call1 = call i64 @quotearg_buffer(i8* null, i64 0, i8* %1, i64 %2, %struct.quoting_options* %3), !dbg !1285
  %add = add i64 %call1, 1, !dbg !1285
  store i64 %add, i64* %bufsize, align 8, !dbg !1285
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !1286), !dbg !1287
  %4 = load i64* %bufsize, align 8, !dbg !1287
  %call2 = call i8* @xmalloc(i64 %4), !dbg !1287
  store i8* %call2, i8** %buf, align 8, !dbg !1287
  %5 = load i8** %buf, align 8, !dbg !1288
  %6 = load i64* %bufsize, align 8, !dbg !1288
  %7 = load i8** %arg.addr, align 8, !dbg !1288
  %8 = load i64* %argsize.addr, align 8, !dbg !1288
  %9 = load %struct.quoting_options** %o.addr, align 8, !dbg !1288
  %call3 = call i64 @quotearg_buffer(i8* %5, i64 %6, i8* %7, i64 %8, %struct.quoting_options* %9), !dbg !1288
  %10 = load i32* %e, align 4, !dbg !1289
  %call4 = call i32* @__errno_location() #1, !dbg !1289
  store i32 %10, i32* %call4, align 4, !dbg !1289
  %11 = load i8** %buf, align 8, !dbg !1290
  ret i8* %11, !dbg !1290
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n(i32 %n, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1291), !dbg !1292
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1293), !dbg !1292
  %0 = load i32* %n.addr, align 4, !dbg !1294
  %1 = load i8** %arg.addr, align 8, !dbg !1294
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !1294
  ret i8* %call, !dbg !1294
}

; Function Attrs: nounwind uwtable
define i8* @quotearg(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1295), !dbg !1296
  %0 = load i8** %arg.addr, align 8, !dbg !1297
  %call = call i8* @quotearg_n(i32 0, i8* %0), !dbg !1297
  ret i8* %call, !dbg !1297
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1298), !dbg !1299
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1300), !dbg !1299
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1301), !dbg !1299
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !1302), !dbg !1303
  %0 = load i32* %s.addr, align 4, !dbg !1303
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1303
  %1 = load i32* %n.addr, align 4, !dbg !1304
  %2 = load i8** %arg.addr, align 8, !dbg !1304
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 -1, %struct.quoting_options* %o), !dbg !1304
  ret i8* %call, !dbg !1304
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i64 %argsize) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1305), !dbg !1306
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1307), !dbg !1306
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1308), !dbg !1309
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1310), !dbg !1309
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !1311), !dbg !1312
  %0 = load i32* %s.addr, align 4, !dbg !1312
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1312
  %1 = load i32* %n.addr, align 4, !dbg !1313
  %2 = load i8** %arg.addr, align 8, !dbg !1313
  %3 = load i64* %argsize.addr, align 8, !dbg !1313
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 %3, %struct.quoting_options* %o), !dbg !1313
  ret i8* %call, !dbg !1313
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_style(i32 %s, i8* %arg) #0 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1314), !dbg !1315
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1316), !dbg !1315
  %0 = load i32* %s.addr, align 4, !dbg !1317
  %1 = load i8** %arg.addr, align 8, !dbg !1317
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1), !dbg !1317
  ret i8* %call, !dbg !1317
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_char(i8* %arg, i8 signext %ch) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 4
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1318), !dbg !1319
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %ch.addr}, metadata !1320), !dbg !1319
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %options}, metadata !1321), !dbg !1322
  %0 = bitcast %struct.quoting_options* %options to i8*, !dbg !1323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 36, i32 4, i1 false), !dbg !1323
  %1 = load i8* %ch.addr, align 1, !dbg !1324
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %1, i32 1), !dbg !1324
  %2 = load i8** %arg.addr, align 8, !dbg !1325
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* %options), !dbg !1325
  ret i8* %call1, !dbg !1325
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_colon(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1326), !dbg !1327
  %0 = load i8** %arg.addr, align 8, !dbg !1328
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58), !dbg !1328
  ret i8* %call, !dbg !1328
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #2

; Function Attrs: nounwind
declare i32 @iswprint(i32) #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #7

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, %struct.quoting_options* %o) #0 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %quoting_style.addr = alloca i32, align 4
  %o.addr = alloca %struct.quoting_options*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %quote_string = alloca i8*, align 8
  %quote_string_len = alloca i64, align 8
  %backslash_escapes = alloca i8, align 1
  %unibyte_locale = alloca i8, align 1
  %left = alloca i8*, align 8
  %right = alloca i8*, align 8
  %c = alloca i8, align 1
  %esc = alloca i8, align 1
  %m = alloca i64, align 8
  %printable = alloca i8, align 1
  %mbstate = alloca %struct.__mbstate_t, align 4
  %w = alloca i32, align 4
  %bytes = alloca i64, align 8
  %j = alloca i64, align 8
  %ilim = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %buffer.addr}, metadata !1329), !dbg !1330
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %buffersize.addr}, metadata !1331), !dbg !1330
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1332), !dbg !1333
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1334), !dbg !1333
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %quoting_style.addr}, metadata !1335), !dbg !1336
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !1337), !dbg !1338
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !1339), !dbg !1340
  call void @llvm.dbg.declare(metadata !{i64* %len}, metadata !1341), !dbg !1342
  store i64 0, i64* %len, align 8, !dbg !1342
  call void @llvm.dbg.declare(metadata !{i8** %quote_string}, metadata !1343), !dbg !1344
  store i8* null, i8** %quote_string, align 8, !dbg !1344
  call void @llvm.dbg.declare(metadata !{i64* %quote_string_len}, metadata !1345), !dbg !1346
  store i64 0, i64* %quote_string_len, align 8, !dbg !1346
  call void @llvm.dbg.declare(metadata !{i8* %backslash_escapes}, metadata !1347), !dbg !1348
  store i8 0, i8* %backslash_escapes, align 1, !dbg !1348
  call void @llvm.dbg.declare(metadata !{i8* %unibyte_locale}, metadata !1349), !dbg !1350
  %call = call i64 @__ctype_get_mb_cur_max() #9, !dbg !1350
  %cmp = icmp eq i64 %call, 1, !dbg !1350
  %frombool = zext i1 %cmp to i8, !dbg !1350
  store i8 %frombool, i8* %unibyte_locale, align 1, !dbg !1350
  %0 = load i32* %quoting_style.addr, align 4, !dbg !1351
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb3
    i32 2, label %sw.bb14
  ], !dbg !1351

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !1352

do.body:                                          ; preds = %sw.bb
  %1 = load i64* %len, align 8, !dbg !1354
  %2 = load i64* %buffersize.addr, align 8, !dbg !1354
  %cmp1 = icmp ult i64 %1, %2, !dbg !1354
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1354

if.then:                                          ; preds = %do.body
  %3 = load i64* %len, align 8, !dbg !1354
  %4 = load i8** %buffer.addr, align 8, !dbg !1354
  %arrayidx = getelementptr inbounds i8* %4, i64 %3, !dbg !1354
  store i8 34, i8* %arrayidx, align 1, !dbg !1354
  br label %if.end, !dbg !1354

if.end:                                           ; preds = %if.then, %do.body
  %5 = load i64* %len, align 8, !dbg !1357
  %inc = add i64 %5, 1, !dbg !1357
  store i64 %inc, i64* %len, align 8, !dbg !1357
  br label %do.end, !dbg !1357

do.end:                                           ; preds = %if.end
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1358
  store i8* getelementptr inbounds ([2 x i8]* @.str780, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1359
  store i64 1, i64* %quote_string_len, align 8, !dbg !1360
  br label %sw.epilog, !dbg !1361

sw.bb2:                                           ; preds = %entry
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1362
  br label %sw.epilog, !dbg !1363

sw.bb3:                                           ; preds = %entry, %entry
  call void @llvm.dbg.declare(metadata !{i8** %left}, metadata !1364), !dbg !1366
  %6 = load i32* %quoting_style.addr, align 4, !dbg !1366
  %call4 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str881, i32 0, i32 0), i32 %6), !dbg !1366
  store i8* %call4, i8** %left, align 8, !dbg !1366
  call void @llvm.dbg.declare(metadata !{i8** %right}, metadata !1367), !dbg !1368
  %7 = load i32* %quoting_style.addr, align 4, !dbg !1368
  %call5 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str982, i32 0, i32 0), i32 %7), !dbg !1368
  store i8* %call5, i8** %right, align 8, !dbg !1368
  %8 = load i8** %left, align 8, !dbg !1369
  store i8* %8, i8** %quote_string, align 8, !dbg !1369
  br label %for.cond, !dbg !1369

for.cond:                                         ; preds = %for.inc, %sw.bb3
  %9 = load i8** %quote_string, align 8, !dbg !1369
  %10 = load i8* %9, align 1, !dbg !1369
  %tobool = icmp ne i8 %10, 0, !dbg !1369
  br i1 %tobool, label %for.body, label %for.end, !dbg !1369

for.body:                                         ; preds = %for.cond
  br label %do.body6, !dbg !1371

do.body6:                                         ; preds = %for.body
  %11 = load i64* %len, align 8, !dbg !1372
  %12 = load i64* %buffersize.addr, align 8, !dbg !1372
  %cmp7 = icmp ult i64 %11, %12, !dbg !1372
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !1372

if.then8:                                         ; preds = %do.body6
  %13 = load i8** %quote_string, align 8, !dbg !1372
  %14 = load i8* %13, align 1, !dbg !1372
  %15 = load i64* %len, align 8, !dbg !1372
  %16 = load i8** %buffer.addr, align 8, !dbg !1372
  %arrayidx9 = getelementptr inbounds i8* %16, i64 %15, !dbg !1372
  store i8 %14, i8* %arrayidx9, align 1, !dbg !1372
  br label %if.end10, !dbg !1372

if.end10:                                         ; preds = %if.then8, %do.body6
  %17 = load i64* %len, align 8, !dbg !1375
  %inc11 = add i64 %17, 1, !dbg !1375
  store i64 %inc11, i64* %len, align 8, !dbg !1375
  br label %do.end12, !dbg !1375

do.end12:                                         ; preds = %if.end10
  br label %for.inc, !dbg !1375

for.inc:                                          ; preds = %do.end12
  %18 = load i8** %quote_string, align 8, !dbg !1369
  %incdec.ptr = getelementptr inbounds i8* %18, i32 1, !dbg !1369
  store i8* %incdec.ptr, i8** %quote_string, align 8, !dbg !1369
  br label %for.cond, !dbg !1369

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1376
  %19 = load i8** %right, align 8, !dbg !1377
  store i8* %19, i8** %quote_string, align 8, !dbg !1377
  %20 = load i8** %quote_string, align 8, !dbg !1378
  %call13 = call i64 @strlen(i8* %20) #12, !dbg !1378
  store i64 %call13, i64* %quote_string_len, align 8, !dbg !1378
  br label %sw.epilog, !dbg !1379

sw.bb14:                                          ; preds = %entry
  br label %do.body15, !dbg !1380

do.body15:                                        ; preds = %sw.bb14
  %21 = load i64* %len, align 8, !dbg !1381
  %22 = load i64* %buffersize.addr, align 8, !dbg !1381
  %cmp16 = icmp ult i64 %21, %22, !dbg !1381
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1381

if.then17:                                        ; preds = %do.body15
  %23 = load i64* %len, align 8, !dbg !1381
  %24 = load i8** %buffer.addr, align 8, !dbg !1381
  %arrayidx18 = getelementptr inbounds i8* %24, i64 %23, !dbg !1381
  store i8 39, i8* %arrayidx18, align 1, !dbg !1381
  br label %if.end19, !dbg !1381

if.end19:                                         ; preds = %if.then17, %do.body15
  %25 = load i64* %len, align 8, !dbg !1384
  %inc20 = add i64 %25, 1, !dbg !1384
  store i64 %inc20, i64* %len, align 8, !dbg !1384
  br label %do.end21, !dbg !1384

do.end21:                                         ; preds = %if.end19
  store i8* getelementptr inbounds ([2 x i8]* @.str982, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1385
  store i64 1, i64* %quote_string_len, align 8, !dbg !1386
  br label %sw.epilog, !dbg !1387

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1388

sw.epilog:                                        ; preds = %sw.default, %do.end21, %for.end, %sw.bb2, %do.end
  store i64 0, i64* %i, align 8, !dbg !1389
  br label %for.cond22, !dbg !1389

for.cond22:                                       ; preds = %for.inc366, %sw.epilog
  %26 = load i64* %argsize.addr, align 8, !dbg !1389
  %cmp23 = icmp eq i64 %26, -1, !dbg !1389
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !1389

cond.true:                                        ; preds = %for.cond22
  %27 = load i64* %i, align 8, !dbg !1389
  %28 = load i8** %arg.addr, align 8, !dbg !1389
  %arrayidx24 = getelementptr inbounds i8* %28, i64 %27, !dbg !1389
  %29 = load i8* %arrayidx24, align 1, !dbg !1389
  %conv = sext i8 %29 to i32, !dbg !1389
  %cmp25 = icmp eq i32 %conv, 0, !dbg !1389
  br i1 %cmp25, label %for.end368, label %for.body29, !dbg !1389

cond.false:                                       ; preds = %for.cond22
  %30 = load i64* %i, align 8, !dbg !1389
  %31 = load i64* %argsize.addr, align 8, !dbg !1389
  %cmp27 = icmp eq i64 %30, %31, !dbg !1389
  br i1 %cmp27, label %for.end368, label %for.body29, !dbg !1389

for.body29:                                       ; preds = %cond.false, %cond.true
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !1391), !dbg !1393
  call void @llvm.dbg.declare(metadata !{i8* %esc}, metadata !1394), !dbg !1395
  %32 = load i8* %backslash_escapes, align 1, !dbg !1396
  %tobool30 = trunc i8 %32 to i1, !dbg !1396
  br i1 %tobool30, label %land.lhs.true, label %if.end49, !dbg !1396

land.lhs.true:                                    ; preds = %for.body29
  %33 = load i64* %quote_string_len, align 8, !dbg !1396
  %tobool32 = icmp ne i64 %33, 0, !dbg !1396
  br i1 %tobool32, label %land.lhs.true33, label %if.end49, !dbg !1396

land.lhs.true33:                                  ; preds = %land.lhs.true
  %34 = load i64* %i, align 8, !dbg !1396
  %35 = load i64* %quote_string_len, align 8, !dbg !1396
  %add = add i64 %34, %35, !dbg !1396
  %36 = load i64* %argsize.addr, align 8, !dbg !1396
  %cmp34 = icmp ule i64 %add, %36, !dbg !1396
  br i1 %cmp34, label %land.lhs.true36, label %if.end49, !dbg !1396

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %37 = load i8** %arg.addr, align 8, !dbg !1398
  %38 = load i64* %i, align 8, !dbg !1398
  %add.ptr = getelementptr inbounds i8* %37, i64 %38, !dbg !1398
  %39 = load i8** %quote_string, align 8, !dbg !1398
  %40 = load i64* %quote_string_len, align 8, !dbg !1398
  %call37 = call i32 @memcmp(i8* %add.ptr, i8* %39, i64 %40) #12, !dbg !1398
  %cmp38 = icmp eq i32 %call37, 0, !dbg !1398
  br i1 %cmp38, label %if.then40, label %if.end49, !dbg !1398

if.then40:                                        ; preds = %land.lhs.true36
  br label %do.body41, !dbg !1399

do.body41:                                        ; preds = %if.then40
  %41 = load i64* %len, align 8, !dbg !1400
  %42 = load i64* %buffersize.addr, align 8, !dbg !1400
  %cmp42 = icmp ult i64 %41, %42, !dbg !1400
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1400

if.then44:                                        ; preds = %do.body41
  %43 = load i64* %len, align 8, !dbg !1400
  %44 = load i8** %buffer.addr, align 8, !dbg !1400
  %arrayidx45 = getelementptr inbounds i8* %44, i64 %43, !dbg !1400
  store i8 92, i8* %arrayidx45, align 1, !dbg !1400
  br label %if.end46, !dbg !1400

if.end46:                                         ; preds = %if.then44, %do.body41
  %45 = load i64* %len, align 8, !dbg !1403
  %inc47 = add i64 %45, 1, !dbg !1403
  store i64 %inc47, i64* %len, align 8, !dbg !1403
  br label %do.end48, !dbg !1403

do.end48:                                         ; preds = %if.end46
  br label %if.end49, !dbg !1403

if.end49:                                         ; preds = %do.end48, %land.lhs.true36, %land.lhs.true33, %land.lhs.true, %for.body29
  %46 = load i64* %i, align 8, !dbg !1404
  %47 = load i8** %arg.addr, align 8, !dbg !1404
  %arrayidx50 = getelementptr inbounds i8* %47, i64 %46, !dbg !1404
  %48 = load i8* %arrayidx50, align 1, !dbg !1404
  store i8 %48, i8* %c, align 1, !dbg !1404
  %49 = load i8* %c, align 1, !dbg !1405
  %conv51 = zext i8 %49 to i32, !dbg !1405
  switch i32 %conv51, label %sw.default196 [
    i32 0, label %sw.bb52
    i32 63, label %sw.bb80
    i32 7, label %sw.bb128
    i32 8, label %sw.bb129
    i32 12, label %sw.bb130
    i32 10, label %sw.bb131
    i32 13, label %sw.bb132
    i32 9, label %sw.bb133
    i32 11, label %sw.bb134
    i32 92, label %sw.bb135
    i32 123, label %sw.bb143
    i32 125, label %sw.bb143
    i32 35, label %sw.bb156
    i32 126, label %sw.bb156
    i32 32, label %sw.bb161
    i32 33, label %sw.bb161
    i32 34, label %sw.bb161
    i32 36, label %sw.bb161
    i32 38, label %sw.bb161
    i32 40, label %sw.bb161
    i32 41, label %sw.bb161
    i32 42, label %sw.bb161
    i32 59, label %sw.bb161
    i32 60, label %sw.bb161
    i32 61, label %sw.bb161
    i32 62, label %sw.bb161
    i32 91, label %sw.bb161
    i32 94, label %sw.bb161
    i32 96, label %sw.bb161
    i32 124, label %sw.bb161
    i32 39, label %sw.bb166
    i32 37, label %sw.bb195
    i32 43, label %sw.bb195
    i32 44, label %sw.bb195
    i32 45, label %sw.bb195
    i32 46, label %sw.bb195
    i32 47, label %sw.bb195
    i32 48, label %sw.bb195
    i32 49, label %sw.bb195
    i32 50, label %sw.bb195
    i32 51, label %sw.bb195
    i32 52, label %sw.bb195
    i32 53, label %sw.bb195
    i32 54, label %sw.bb195
    i32 55, label %sw.bb195
    i32 56, label %sw.bb195
    i32 57, label %sw.bb195
    i32 58, label %sw.bb195
    i32 65, label %sw.bb195
    i32 66, label %sw.bb195
    i32 67, label %sw.bb195
    i32 68, label %sw.bb195
    i32 69, label %sw.bb195
    i32 70, label %sw.bb195
    i32 71, label %sw.bb195
    i32 72, label %sw.bb195
    i32 73, label %sw.bb195
    i32 74, label %sw.bb195
    i32 75, label %sw.bb195
    i32 76, label %sw.bb195
    i32 77, label %sw.bb195
    i32 78, label %sw.bb195
    i32 79, label %sw.bb195
    i32 80, label %sw.bb195
    i32 81, label %sw.bb195
    i32 82, label %sw.bb195
    i32 83, label %sw.bb195
    i32 84, label %sw.bb195
    i32 85, label %sw.bb195
    i32 86, label %sw.bb195
    i32 87, label %sw.bb195
    i32 88, label %sw.bb195
    i32 89, label %sw.bb195
    i32 90, label %sw.bb195
    i32 93, label %sw.bb195
    i32 95, label %sw.bb195
    i32 97, label %sw.bb195
    i32 98, label %sw.bb195
    i32 99, label %sw.bb195
    i32 100, label %sw.bb195
    i32 101, label %sw.bb195
    i32 102, label %sw.bb195
    i32 103, label %sw.bb195
    i32 104, label %sw.bb195
    i32 105, label %sw.bb195
    i32 106, label %sw.bb195
    i32 107, label %sw.bb195
    i32 108, label %sw.bb195
    i32 109, label %sw.bb195
    i32 110, label %sw.bb195
    i32 111, label %sw.bb195
    i32 112, label %sw.bb195
    i32 113, label %sw.bb195
    i32 114, label %sw.bb195
    i32 115, label %sw.bb195
    i32 116, label %sw.bb195
    i32 117, label %sw.bb195
    i32 118, label %sw.bb195
    i32 119, label %sw.bb195
    i32 120, label %sw.bb195
    i32 121, label %sw.bb195
    i32 122, label %sw.bb195
  ], !dbg !1405

sw.bb52:                                          ; preds = %if.end49
  %50 = load i8* %backslash_escapes, align 1, !dbg !1406
  %tobool53 = trunc i8 %50 to i1, !dbg !1406
  br i1 %tobool53, label %if.then54, label %if.end79, !dbg !1406

if.then54:                                        ; preds = %sw.bb52
  br label %do.body55, !dbg !1409

do.body55:                                        ; preds = %if.then54
  %51 = load i64* %len, align 8, !dbg !1411
  %52 = load i64* %buffersize.addr, align 8, !dbg !1411
  %cmp56 = icmp ult i64 %51, %52, !dbg !1411
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1411

if.then58:                                        ; preds = %do.body55
  %53 = load i64* %len, align 8, !dbg !1411
  %54 = load i8** %buffer.addr, align 8, !dbg !1411
  %arrayidx59 = getelementptr inbounds i8* %54, i64 %53, !dbg !1411
  store i8 92, i8* %arrayidx59, align 1, !dbg !1411
  br label %if.end60, !dbg !1411

if.end60:                                         ; preds = %if.then58, %do.body55
  %55 = load i64* %len, align 8, !dbg !1414
  %inc61 = add i64 %55, 1, !dbg !1414
  store i64 %inc61, i64* %len, align 8, !dbg !1414
  br label %do.end62, !dbg !1414

do.end62:                                         ; preds = %if.end60
  br label %do.body63, !dbg !1415

do.body63:                                        ; preds = %do.end62
  %56 = load i64* %len, align 8, !dbg !1416
  %57 = load i64* %buffersize.addr, align 8, !dbg !1416
  %cmp64 = icmp ult i64 %56, %57, !dbg !1416
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !1416

if.then66:                                        ; preds = %do.body63
  %58 = load i64* %len, align 8, !dbg !1416
  %59 = load i8** %buffer.addr, align 8, !dbg !1416
  %arrayidx67 = getelementptr inbounds i8* %59, i64 %58, !dbg !1416
  store i8 48, i8* %arrayidx67, align 1, !dbg !1416
  br label %if.end68, !dbg !1416

if.end68:                                         ; preds = %if.then66, %do.body63
  %60 = load i64* %len, align 8, !dbg !1419
  %inc69 = add i64 %60, 1, !dbg !1419
  store i64 %inc69, i64* %len, align 8, !dbg !1419
  br label %do.end70, !dbg !1419

do.end70:                                         ; preds = %if.end68
  br label %do.body71, !dbg !1420

do.body71:                                        ; preds = %do.end70
  %61 = load i64* %len, align 8, !dbg !1421
  %62 = load i64* %buffersize.addr, align 8, !dbg !1421
  %cmp72 = icmp ult i64 %61, %62, !dbg !1421
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !1421

if.then74:                                        ; preds = %do.body71
  %63 = load i64* %len, align 8, !dbg !1421
  %64 = load i8** %buffer.addr, align 8, !dbg !1421
  %arrayidx75 = getelementptr inbounds i8* %64, i64 %63, !dbg !1421
  store i8 48, i8* %arrayidx75, align 1, !dbg !1421
  br label %if.end76, !dbg !1421

if.end76:                                         ; preds = %if.then74, %do.body71
  %65 = load i64* %len, align 8, !dbg !1424
  %inc77 = add i64 %65, 1, !dbg !1424
  store i64 %inc77, i64* %len, align 8, !dbg !1424
  br label %do.end78, !dbg !1424

do.end78:                                         ; preds = %if.end76
  store i8 48, i8* %c, align 1, !dbg !1425
  br label %if.end79, !dbg !1426

if.end79:                                         ; preds = %do.end78, %sw.bb52
  br label %sw.epilog337, !dbg !1427

sw.bb80:                                          ; preds = %if.end49
  %66 = load i32* %quoting_style.addr, align 4, !dbg !1428
  switch i32 %66, label %sw.default126 [
    i32 1, label %sw.bb81
    i32 3, label %sw.bb82
  ], !dbg !1428

sw.bb81:                                          ; preds = %sw.bb80
  br label %use_shell_always_quoting_style, !dbg !1429

sw.bb82:                                          ; preds = %sw.bb80
  %67 = load i64* %i, align 8, !dbg !1431
  %add83 = add i64 %67, 2, !dbg !1431
  %68 = load i64* %argsize.addr, align 8, !dbg !1431
  %cmp84 = icmp ult i64 %add83, %68, !dbg !1431
  br i1 %cmp84, label %land.lhs.true86, label %if.end125, !dbg !1431

land.lhs.true86:                                  ; preds = %sw.bb82
  %69 = load i64* %i, align 8, !dbg !1431
  %add87 = add i64 %69, 1, !dbg !1431
  %70 = load i8** %arg.addr, align 8, !dbg !1431
  %arrayidx88 = getelementptr inbounds i8* %70, i64 %add87, !dbg !1431
  %71 = load i8* %arrayidx88, align 1, !dbg !1431
  %conv89 = sext i8 %71 to i32, !dbg !1431
  %cmp90 = icmp eq i32 %conv89, 63, !dbg !1431
  br i1 %cmp90, label %if.then92, label %if.end125, !dbg !1431

if.then92:                                        ; preds = %land.lhs.true86
  %72 = load i64* %i, align 8, !dbg !1433
  %add93 = add i64 %72, 2, !dbg !1433
  %73 = load i8** %arg.addr, align 8, !dbg !1433
  %arrayidx94 = getelementptr inbounds i8* %73, i64 %add93, !dbg !1433
  %74 = load i8* %arrayidx94, align 1, !dbg !1433
  %conv95 = sext i8 %74 to i32, !dbg !1433
  switch i32 %conv95, label %sw.epilog124 [
    i32 33, label %sw.bb96
    i32 39, label %sw.bb96
    i32 40, label %sw.bb96
    i32 41, label %sw.bb96
    i32 45, label %sw.bb96
    i32 47, label %sw.bb96
    i32 60, label %sw.bb96
    i32 61, label %sw.bb96
    i32 62, label %sw.bb96
  ], !dbg !1433

sw.bb96:                                          ; preds = %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92
  %75 = load i64* %i, align 8, !dbg !1434
  %add97 = add i64 %75, 2, !dbg !1434
  %76 = load i8** %arg.addr, align 8, !dbg !1434
  %arrayidx98 = getelementptr inbounds i8* %76, i64 %add97, !dbg !1434
  %77 = load i8* %arrayidx98, align 1, !dbg !1434
  store i8 %77, i8* %c, align 1, !dbg !1434
  %78 = load i64* %i, align 8, !dbg !1436
  %add99 = add i64 %78, 2, !dbg !1436
  store i64 %add99, i64* %i, align 8, !dbg !1436
  br label %do.body100, !dbg !1437

do.body100:                                       ; preds = %sw.bb96
  %79 = load i64* %len, align 8, !dbg !1438
  %80 = load i64* %buffersize.addr, align 8, !dbg !1438
  %cmp101 = icmp ult i64 %79, %80, !dbg !1438
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !1438

if.then103:                                       ; preds = %do.body100
  %81 = load i64* %len, align 8, !dbg !1438
  %82 = load i8** %buffer.addr, align 8, !dbg !1438
  %arrayidx104 = getelementptr inbounds i8* %82, i64 %81, !dbg !1438
  store i8 63, i8* %arrayidx104, align 1, !dbg !1438
  br label %if.end105, !dbg !1438

if.end105:                                        ; preds = %if.then103, %do.body100
  %83 = load i64* %len, align 8, !dbg !1441
  %inc106 = add i64 %83, 1, !dbg !1441
  store i64 %inc106, i64* %len, align 8, !dbg !1441
  br label %do.end107, !dbg !1441

do.end107:                                        ; preds = %if.end105
  br label %do.body108, !dbg !1442

do.body108:                                       ; preds = %do.end107
  %84 = load i64* %len, align 8, !dbg !1443
  %85 = load i64* %buffersize.addr, align 8, !dbg !1443
  %cmp109 = icmp ult i64 %84, %85, !dbg !1443
  br i1 %cmp109, label %if.then111, label %if.end113, !dbg !1443

if.then111:                                       ; preds = %do.body108
  %86 = load i64* %len, align 8, !dbg !1443
  %87 = load i8** %buffer.addr, align 8, !dbg !1443
  %arrayidx112 = getelementptr inbounds i8* %87, i64 %86, !dbg !1443
  store i8 92, i8* %arrayidx112, align 1, !dbg !1443
  br label %if.end113, !dbg !1443

if.end113:                                        ; preds = %if.then111, %do.body108
  %88 = load i64* %len, align 8, !dbg !1446
  %inc114 = add i64 %88, 1, !dbg !1446
  store i64 %inc114, i64* %len, align 8, !dbg !1446
  br label %do.end115, !dbg !1446

do.end115:                                        ; preds = %if.end113
  br label %do.body116, !dbg !1447

do.body116:                                       ; preds = %do.end115
  %89 = load i64* %len, align 8, !dbg !1448
  %90 = load i64* %buffersize.addr, align 8, !dbg !1448
  %cmp117 = icmp ult i64 %89, %90, !dbg !1448
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !1448

if.then119:                                       ; preds = %do.body116
  %91 = load i64* %len, align 8, !dbg !1448
  %92 = load i8** %buffer.addr, align 8, !dbg !1448
  %arrayidx120 = getelementptr inbounds i8* %92, i64 %91, !dbg !1448
  store i8 63, i8* %arrayidx120, align 1, !dbg !1448
  br label %if.end121, !dbg !1448

if.end121:                                        ; preds = %if.then119, %do.body116
  %93 = load i64* %len, align 8, !dbg !1451
  %inc122 = add i64 %93, 1, !dbg !1451
  store i64 %inc122, i64* %len, align 8, !dbg !1451
  br label %do.end123, !dbg !1451

do.end123:                                        ; preds = %if.end121
  br label %sw.epilog124, !dbg !1452

sw.epilog124:                                     ; preds = %do.end123, %if.then92
  br label %if.end125, !dbg !1453

if.end125:                                        ; preds = %sw.epilog124, %land.lhs.true86, %sw.bb82
  br label %sw.epilog127, !dbg !1454

sw.default126:                                    ; preds = %sw.bb80
  br label %sw.epilog127, !dbg !1455

sw.epilog127:                                     ; preds = %sw.default126, %if.end125
  br label %sw.epilog337, !dbg !1456

sw.bb128:                                         ; preds = %if.end49
  store i8 97, i8* %esc, align 1, !dbg !1457
  br label %c_escape, !dbg !1457

sw.bb129:                                         ; preds = %if.end49
  store i8 98, i8* %esc, align 1, !dbg !1458
  br label %c_escape, !dbg !1458

sw.bb130:                                         ; preds = %if.end49
  store i8 102, i8* %esc, align 1, !dbg !1459
  br label %c_escape, !dbg !1459

sw.bb131:                                         ; preds = %if.end49
  store i8 110, i8* %esc, align 1, !dbg !1460
  br label %c_and_shell_escape, !dbg !1460

sw.bb132:                                         ; preds = %if.end49
  store i8 114, i8* %esc, align 1, !dbg !1461
  br label %c_and_shell_escape, !dbg !1461

sw.bb133:                                         ; preds = %if.end49
  store i8 116, i8* %esc, align 1, !dbg !1462
  br label %c_and_shell_escape, !dbg !1462

sw.bb134:                                         ; preds = %if.end49
  store i8 118, i8* %esc, align 1, !dbg !1463
  br label %c_escape, !dbg !1463

sw.bb135:                                         ; preds = %if.end49
  %94 = load i8* %c, align 1, !dbg !1464
  store i8 %94, i8* %esc, align 1, !dbg !1464
  br label %c_and_shell_escape, !dbg !1464

c_and_shell_escape:                               ; preds = %sw.bb135, %sw.bb133, %sw.bb132, %sw.bb131
  %95 = load i32* %quoting_style.addr, align 4, !dbg !1465
  %cmp136 = icmp eq i32 %95, 1, !dbg !1465
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !1465

if.then138:                                       ; preds = %c_and_shell_escape
  br label %use_shell_always_quoting_style, !dbg !1467

if.end139:                                        ; preds = %c_and_shell_escape
  br label %c_escape, !dbg !1467

c_escape:                                         ; preds = %if.end139, %sw.bb134, %sw.bb130, %sw.bb129, %sw.bb128
  %96 = load i8* %backslash_escapes, align 1, !dbg !1468
  %tobool140 = trunc i8 %96 to i1, !dbg !1468
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !1468

if.then141:                                       ; preds = %c_escape
  %97 = load i8* %esc, align 1, !dbg !1470
  store i8 %97, i8* %c, align 1, !dbg !1470
  br label %store_escape, !dbg !1472

if.end142:                                        ; preds = %c_escape
  br label %sw.epilog337, !dbg !1473

sw.bb143:                                         ; preds = %if.end49, %if.end49
  %98 = load i64* %argsize.addr, align 8, !dbg !1474
  %cmp144 = icmp eq i64 %98, -1, !dbg !1474
  br i1 %cmp144, label %cond.true146, label %cond.false151, !dbg !1474

cond.true146:                                     ; preds = %sw.bb143
  %99 = load i8** %arg.addr, align 8, !dbg !1474
  %arrayidx147 = getelementptr inbounds i8* %99, i64 1, !dbg !1474
  %100 = load i8* %arrayidx147, align 1, !dbg !1474
  %conv148 = sext i8 %100 to i32, !dbg !1474
  %cmp149 = icmp eq i32 %conv148, 0, !dbg !1474
  br i1 %cmp149, label %if.end155, label %if.then154, !dbg !1474

cond.false151:                                    ; preds = %sw.bb143
  %101 = load i64* %argsize.addr, align 8, !dbg !1474
  %cmp152 = icmp eq i64 %101, 1, !dbg !1474
  br i1 %cmp152, label %if.end155, label %if.then154, !dbg !1474

if.then154:                                       ; preds = %cond.false151, %cond.true146
  br label %sw.epilog337, !dbg !1476

if.end155:                                        ; preds = %cond.false151, %cond.true146
  br label %sw.bb156, !dbg !1476

sw.bb156:                                         ; preds = %if.end155, %if.end49, %if.end49
  %102 = load i64* %i, align 8, !dbg !1477
  %cmp157 = icmp ne i64 %102, 0, !dbg !1477
  br i1 %cmp157, label %if.then159, label %if.end160, !dbg !1477

if.then159:                                       ; preds = %sw.bb156
  br label %sw.epilog337, !dbg !1479

if.end160:                                        ; preds = %sw.bb156
  br label %sw.bb161, !dbg !1479

sw.bb161:                                         ; preds = %if.end160, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  %103 = load i32* %quoting_style.addr, align 4, !dbg !1480
  %cmp162 = icmp eq i32 %103, 1, !dbg !1480
  br i1 %cmp162, label %if.then164, label %if.end165, !dbg !1480

if.then164:                                       ; preds = %sw.bb161
  br label %use_shell_always_quoting_style, !dbg !1482

if.end165:                                        ; preds = %sw.bb161
  br label %sw.epilog337, !dbg !1483

sw.bb166:                                         ; preds = %if.end49
  %104 = load i32* %quoting_style.addr, align 4, !dbg !1484
  switch i32 %104, label %sw.default193 [
    i32 1, label %sw.bb167
    i32 2, label %sw.bb168
  ], !dbg !1484

sw.bb167:                                         ; preds = %sw.bb166
  br label %use_shell_always_quoting_style, !dbg !1485

sw.bb168:                                         ; preds = %sw.bb166
  br label %do.body169, !dbg !1487

do.body169:                                       ; preds = %sw.bb168
  %105 = load i64* %len, align 8, !dbg !1488
  %106 = load i64* %buffersize.addr, align 8, !dbg !1488
  %cmp170 = icmp ult i64 %105, %106, !dbg !1488
  br i1 %cmp170, label %if.then172, label %if.end174, !dbg !1488

if.then172:                                       ; preds = %do.body169
  %107 = load i64* %len, align 8, !dbg !1488
  %108 = load i8** %buffer.addr, align 8, !dbg !1488
  %arrayidx173 = getelementptr inbounds i8* %108, i64 %107, !dbg !1488
  store i8 39, i8* %arrayidx173, align 1, !dbg !1488
  br label %if.end174, !dbg !1488

if.end174:                                        ; preds = %if.then172, %do.body169
  %109 = load i64* %len, align 8, !dbg !1491
  %inc175 = add i64 %109, 1, !dbg !1491
  store i64 %inc175, i64* %len, align 8, !dbg !1491
  br label %do.end176, !dbg !1491

do.end176:                                        ; preds = %if.end174
  br label %do.body177, !dbg !1492

do.body177:                                       ; preds = %do.end176
  %110 = load i64* %len, align 8, !dbg !1493
  %111 = load i64* %buffersize.addr, align 8, !dbg !1493
  %cmp178 = icmp ult i64 %110, %111, !dbg !1493
  br i1 %cmp178, label %if.then180, label %if.end182, !dbg !1493

if.then180:                                       ; preds = %do.body177
  %112 = load i64* %len, align 8, !dbg !1493
  %113 = load i8** %buffer.addr, align 8, !dbg !1493
  %arrayidx181 = getelementptr inbounds i8* %113, i64 %112, !dbg !1493
  store i8 92, i8* %arrayidx181, align 1, !dbg !1493
  br label %if.end182, !dbg !1493

if.end182:                                        ; preds = %if.then180, %do.body177
  %114 = load i64* %len, align 8, !dbg !1496
  %inc183 = add i64 %114, 1, !dbg !1496
  store i64 %inc183, i64* %len, align 8, !dbg !1496
  br label %do.end184, !dbg !1496

do.end184:                                        ; preds = %if.end182
  br label %do.body185, !dbg !1497

do.body185:                                       ; preds = %do.end184
  %115 = load i64* %len, align 8, !dbg !1498
  %116 = load i64* %buffersize.addr, align 8, !dbg !1498
  %cmp186 = icmp ult i64 %115, %116, !dbg !1498
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !1498

if.then188:                                       ; preds = %do.body185
  %117 = load i64* %len, align 8, !dbg !1498
  %118 = load i8** %buffer.addr, align 8, !dbg !1498
  %arrayidx189 = getelementptr inbounds i8* %118, i64 %117, !dbg !1498
  store i8 39, i8* %arrayidx189, align 1, !dbg !1498
  br label %if.end190, !dbg !1498

if.end190:                                        ; preds = %if.then188, %do.body185
  %119 = load i64* %len, align 8, !dbg !1501
  %inc191 = add i64 %119, 1, !dbg !1501
  store i64 %inc191, i64* %len, align 8, !dbg !1501
  br label %do.end192, !dbg !1501

do.end192:                                        ; preds = %if.end190
  br label %sw.epilog194, !dbg !1502

sw.default193:                                    ; preds = %sw.bb166
  br label %sw.epilog194, !dbg !1503

sw.epilog194:                                     ; preds = %sw.default193, %do.end192
  br label %sw.epilog337, !dbg !1504

sw.bb195:                                         ; preds = %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  br label %sw.epilog337, !dbg !1505

sw.default196:                                    ; preds = %if.end49
  call void @llvm.dbg.declare(metadata !{i64* %m}, metadata !1506), !dbg !1508
  call void @llvm.dbg.declare(metadata !{i8* %printable}, metadata !1509), !dbg !1510
  %120 = load i8* %unibyte_locale, align 1, !dbg !1511
  %tobool197 = trunc i8 %120 to i1, !dbg !1511
  br i1 %tobool197, label %if.then198, label %if.else, !dbg !1511

if.then198:                                       ; preds = %sw.default196
  store i64 1, i64* %m, align 8, !dbg !1513
  %121 = load i8* %c, align 1, !dbg !1515
  %conv199 = zext i8 %121 to i32, !dbg !1515
  %idxprom = sext i32 %conv199 to i64, !dbg !1515
  %call200 = call i16** @__ctype_b_loc() #1, !dbg !1515
  %122 = load i16** %call200, align 8, !dbg !1515
  %arrayidx201 = getelementptr inbounds i16* %122, i64 %idxprom, !dbg !1515
  %123 = load i16* %arrayidx201, align 2, !dbg !1515
  %conv202 = zext i16 %123 to i32, !dbg !1515
  %and = and i32 %conv202, 16384, !dbg !1515
  %cmp203 = icmp ne i32 %and, 0, !dbg !1515
  %frombool205 = zext i1 %cmp203 to i8, !dbg !1515
  store i8 %frombool205, i8* %printable, align 1, !dbg !1515
  br label %if.end264, !dbg !1516

if.else:                                          ; preds = %sw.default196
  call void @llvm.dbg.declare(metadata !{%struct.__mbstate_t* %mbstate}, metadata !1517), !dbg !1533
  %124 = bitcast %struct.__mbstate_t* %mbstate to i8*, !dbg !1534
  call void @llvm.memset.p0i8.i64(i8* %124, i8 0, i64 8, i32 4, i1 false), !dbg !1534
  store i64 0, i64* %m, align 8, !dbg !1535
  store i8 1, i8* %printable, align 1, !dbg !1536
  %125 = load i64* %argsize.addr, align 8, !dbg !1537
  %cmp206 = icmp eq i64 %125, -1, !dbg !1537
  br i1 %cmp206, label %if.then208, label %if.end210, !dbg !1537

if.then208:                                       ; preds = %if.else
  %126 = load i8** %arg.addr, align 8, !dbg !1539
  %call209 = call i64 @strlen(i8* %126) #12, !dbg !1539
  store i64 %call209, i64* %argsize.addr, align 8, !dbg !1539
  br label %if.end210, !dbg !1539

if.end210:                                        ; preds = %if.then208, %if.else
  br label %do.body211, !dbg !1540

do.body211:                                       ; preds = %do.cond, %if.end210
  call void @llvm.dbg.declare(metadata !{i32* %w}, metadata !1541), !dbg !1544
  call void @llvm.dbg.declare(metadata !{i64* %bytes}, metadata !1545), !dbg !1546
  %127 = load i64* %i, align 8, !dbg !1546
  %128 = load i64* %m, align 8, !dbg !1546
  %add212 = add i64 %127, %128, !dbg !1546
  %129 = load i8** %arg.addr, align 8, !dbg !1546
  %arrayidx213 = getelementptr inbounds i8* %129, i64 %add212, !dbg !1546
  %130 = load i64* %argsize.addr, align 8, !dbg !1546
  %131 = load i64* %i, align 8, !dbg !1546
  %132 = load i64* %m, align 8, !dbg !1546
  %add214 = add i64 %131, %132, !dbg !1546
  %sub = sub i64 %130, %add214, !dbg !1546
  %call215 = call i64 @mbrtowc(i32* %w, i8* %arrayidx213, i64 %sub, %struct.__mbstate_t* %mbstate) #9, !dbg !1546
  store i64 %call215, i64* %bytes, align 8, !dbg !1546
  %133 = load i64* %bytes, align 8, !dbg !1547
  %cmp216 = icmp eq i64 %133, 0, !dbg !1547
  br i1 %cmp216, label %if.then218, label %if.else219, !dbg !1547

if.then218:                                       ; preds = %do.body211
  br label %do.end263, !dbg !1549

if.else219:                                       ; preds = %do.body211
  %134 = load i64* %bytes, align 8, !dbg !1550
  %cmp220 = icmp eq i64 %134, -1, !dbg !1550
  br i1 %cmp220, label %if.then222, label %if.else223, !dbg !1550

if.then222:                                       ; preds = %if.else219
  store i8 0, i8* %printable, align 1, !dbg !1552
  br label %do.end263, !dbg !1554

if.else223:                                       ; preds = %if.else219
  %135 = load i64* %bytes, align 8, !dbg !1555
  %cmp224 = icmp eq i64 %135, -2, !dbg !1555
  br i1 %cmp224, label %if.then226, label %if.else235, !dbg !1555

if.then226:                                       ; preds = %if.else223
  store i8 0, i8* %printable, align 1, !dbg !1557
  br label %while.cond, !dbg !1559

while.cond:                                       ; preds = %while.body, %if.then226
  %136 = load i64* %i, align 8, !dbg !1559
  %137 = load i64* %m, align 8, !dbg !1559
  %add227 = add i64 %136, %137, !dbg !1559
  %138 = load i64* %argsize.addr, align 8, !dbg !1559
  %cmp228 = icmp ult i64 %add227, %138, !dbg !1559
  br i1 %cmp228, label %land.rhs, label %land.end, !dbg !1559

land.rhs:                                         ; preds = %while.cond
  %139 = load i64* %i, align 8, !dbg !1559
  %140 = load i64* %m, align 8, !dbg !1559
  %add230 = add i64 %139, %140, !dbg !1559
  %141 = load i8** %arg.addr, align 8, !dbg !1559
  %arrayidx231 = getelementptr inbounds i8* %141, i64 %add230, !dbg !1559
  %142 = load i8* %arrayidx231, align 1, !dbg !1559
  %conv232 = sext i8 %142 to i32, !dbg !1559
  %tobool233 = icmp ne i32 %conv232, 0, !dbg !1559
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %143 = phi i1 [ false, %while.cond ], [ %tobool233, %land.rhs ]
  br i1 %143, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %144 = load i64* %m, align 8, !dbg !1560
  %inc234 = add i64 %144, 1, !dbg !1560
  store i64 %inc234, i64* %m, align 8, !dbg !1560
  br label %while.cond, !dbg !1560

while.end:                                        ; preds = %land.end
  br label %do.end263, !dbg !1561

if.else235:                                       ; preds = %if.else223
  %145 = load i32* %quoting_style.addr, align 4, !dbg !1562
  %cmp236 = icmp eq i32 %145, 1, !dbg !1562
  br i1 %cmp236, label %if.then238, label %if.end252, !dbg !1562

if.then238:                                       ; preds = %if.else235
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !1565), !dbg !1567
  store i64 1, i64* %j, align 8, !dbg !1568
  br label %for.cond239, !dbg !1568

for.cond239:                                      ; preds = %for.inc249, %if.then238
  %146 = load i64* %j, align 8, !dbg !1568
  %147 = load i64* %bytes, align 8, !dbg !1568
  %cmp240 = icmp ult i64 %146, %147, !dbg !1568
  br i1 %cmp240, label %for.body242, label %for.end251, !dbg !1568

for.body242:                                      ; preds = %for.cond239
  %148 = load i64* %i, align 8, !dbg !1570
  %149 = load i64* %m, align 8, !dbg !1570
  %add243 = add i64 %148, %149, !dbg !1570
  %150 = load i64* %j, align 8, !dbg !1570
  %add244 = add i64 %add243, %150, !dbg !1570
  %151 = load i8** %arg.addr, align 8, !dbg !1570
  %arrayidx245 = getelementptr inbounds i8* %151, i64 %add244, !dbg !1570
  %152 = load i8* %arrayidx245, align 1, !dbg !1570
  %conv246 = sext i8 %152 to i32, !dbg !1570
  switch i32 %conv246, label %sw.epilog248 [
    i32 91, label %sw.bb247
    i32 92, label %sw.bb247
    i32 94, label %sw.bb247
    i32 96, label %sw.bb247
    i32 124, label %sw.bb247
  ], !dbg !1570

sw.bb247:                                         ; preds = %for.body242, %for.body242, %for.body242, %for.body242, %for.body242
  br label %use_shell_always_quoting_style, !dbg !1571

sw.epilog248:                                     ; preds = %for.body242
  br label %for.inc249, !dbg !1573

for.inc249:                                       ; preds = %sw.epilog248
  %153 = load i64* %j, align 8, !dbg !1568
  %inc250 = add i64 %153, 1, !dbg !1568
  store i64 %inc250, i64* %j, align 8, !dbg !1568
  br label %for.cond239, !dbg !1568

for.end251:                                       ; preds = %for.cond239
  br label %if.end252, !dbg !1574

if.end252:                                        ; preds = %for.end251, %if.else235
  %154 = load i32* %w, align 4, !dbg !1575
  %call253 = call i32 @iswprint(i32 %154) #9, !dbg !1575
  %tobool254 = icmp ne i32 %call253, 0, !dbg !1575
  br i1 %tobool254, label %if.end256, label %if.then255, !dbg !1575

if.then255:                                       ; preds = %if.end252
  store i8 0, i8* %printable, align 1, !dbg !1577
  br label %if.end256, !dbg !1577

if.end256:                                        ; preds = %if.then255, %if.end252
  %155 = load i64* %bytes, align 8, !dbg !1578
  %156 = load i64* %m, align 8, !dbg !1578
  %add257 = add i64 %156, %155, !dbg !1578
  store i64 %add257, i64* %m, align 8, !dbg !1578
  br label %if.end258

if.end258:                                        ; preds = %if.end256
  br label %if.end259

if.end259:                                        ; preds = %if.end258
  br label %if.end260

if.end260:                                        ; preds = %if.end259
  br label %do.cond, !dbg !1579

do.cond:                                          ; preds = %if.end260
  %call261 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #12, !dbg !1580
  %tobool262 = icmp ne i32 %call261, 0, !dbg !1580
  %lnot = xor i1 %tobool262, true, !dbg !1580
  br i1 %lnot, label %do.body211, label %do.end263, !dbg !1580

do.end263:                                        ; preds = %do.cond, %while.end, %if.then222, %if.then218
  br label %if.end264

if.end264:                                        ; preds = %do.end263, %if.then198
  %157 = load i64* %m, align 8, !dbg !1581
  %cmp265 = icmp ult i64 1, %157, !dbg !1581
  br i1 %cmp265, label %if.then271, label %lor.lhs.false, !dbg !1581

lor.lhs.false:                                    ; preds = %if.end264
  %158 = load i8* %backslash_escapes, align 1, !dbg !1581
  %tobool267 = trunc i8 %158 to i1, !dbg !1581
  br i1 %tobool267, label %land.lhs.true269, label %if.end336, !dbg !1581

land.lhs.true269:                                 ; preds = %lor.lhs.false
  %159 = load i8* %printable, align 1, !dbg !1581
  %tobool270 = trunc i8 %159 to i1, !dbg !1581
  br i1 %tobool270, label %if.end336, label %if.then271, !dbg !1581

if.then271:                                       ; preds = %land.lhs.true269, %if.end264
  call void @llvm.dbg.declare(metadata !{i64* %ilim}, metadata !1583), !dbg !1585
  %160 = load i64* %i, align 8, !dbg !1585
  %161 = load i64* %m, align 8, !dbg !1585
  %add272 = add i64 %160, %161, !dbg !1585
  store i64 %add272, i64* %ilim, align 8, !dbg !1585
  br label %for.cond273, !dbg !1586

for.cond273:                                      ; preds = %do.end332, %if.then271
  %162 = load i8* %backslash_escapes, align 1, !dbg !1588
  %tobool274 = trunc i8 %162 to i1, !dbg !1588
  br i1 %tobool274, label %land.lhs.true276, label %if.end318, !dbg !1588

land.lhs.true276:                                 ; preds = %for.cond273
  %163 = load i8* %printable, align 1, !dbg !1588
  %tobool277 = trunc i8 %163 to i1, !dbg !1588
  br i1 %tobool277, label %if.end318, label %if.then278, !dbg !1588

if.then278:                                       ; preds = %land.lhs.true276
  br label %do.body279, !dbg !1591

do.body279:                                       ; preds = %if.then278
  %164 = load i64* %len, align 8, !dbg !1593
  %165 = load i64* %buffersize.addr, align 8, !dbg !1593
  %cmp280 = icmp ult i64 %164, %165, !dbg !1593
  br i1 %cmp280, label %if.then282, label %if.end284, !dbg !1593

if.then282:                                       ; preds = %do.body279
  %166 = load i64* %len, align 8, !dbg !1593
  %167 = load i8** %buffer.addr, align 8, !dbg !1593
  %arrayidx283 = getelementptr inbounds i8* %167, i64 %166, !dbg !1593
  store i8 92, i8* %arrayidx283, align 1, !dbg !1593
  br label %if.end284, !dbg !1593

if.end284:                                        ; preds = %if.then282, %do.body279
  %168 = load i64* %len, align 8, !dbg !1596
  %inc285 = add i64 %168, 1, !dbg !1596
  store i64 %inc285, i64* %len, align 8, !dbg !1596
  br label %do.end287, !dbg !1596

do.end287:                                        ; preds = %if.end284
  br label %do.body288, !dbg !1597

do.body288:                                       ; preds = %do.end287
  %169 = load i64* %len, align 8, !dbg !1598
  %170 = load i64* %buffersize.addr, align 8, !dbg !1598
  %cmp289 = icmp ult i64 %169, %170, !dbg !1598
  br i1 %cmp289, label %if.then291, label %if.end296, !dbg !1598

if.then291:                                       ; preds = %do.body288
  %171 = load i8* %c, align 1, !dbg !1598
  %conv292 = zext i8 %171 to i32, !dbg !1598
  %shr = ashr i32 %conv292, 6, !dbg !1598
  %add293 = add nsw i32 48, %shr, !dbg !1598
  %conv294 = trunc i32 %add293 to i8, !dbg !1598
  %172 = load i64* %len, align 8, !dbg !1598
  %173 = load i8** %buffer.addr, align 8, !dbg !1598
  %arrayidx295 = getelementptr inbounds i8* %173, i64 %172, !dbg !1598
  store i8 %conv294, i8* %arrayidx295, align 1, !dbg !1598
  br label %if.end296, !dbg !1598

if.end296:                                        ; preds = %if.then291, %do.body288
  %174 = load i64* %len, align 8, !dbg !1601
  %inc297 = add i64 %174, 1, !dbg !1601
  store i64 %inc297, i64* %len, align 8, !dbg !1601
  br label %do.end299, !dbg !1601

do.end299:                                        ; preds = %if.end296
  br label %do.body300, !dbg !1602

do.body300:                                       ; preds = %do.end299
  %175 = load i64* %len, align 8, !dbg !1603
  %176 = load i64* %buffersize.addr, align 8, !dbg !1603
  %cmp301 = icmp ult i64 %175, %176, !dbg !1603
  br i1 %cmp301, label %if.then303, label %if.end310, !dbg !1603

if.then303:                                       ; preds = %do.body300
  %177 = load i8* %c, align 1, !dbg !1603
  %conv304 = zext i8 %177 to i32, !dbg !1603
  %shr305 = ashr i32 %conv304, 3, !dbg !1603
  %and306 = and i32 %shr305, 7, !dbg !1603
  %add307 = add nsw i32 48, %and306, !dbg !1603
  %conv308 = trunc i32 %add307 to i8, !dbg !1603
  %178 = load i64* %len, align 8, !dbg !1603
  %179 = load i8** %buffer.addr, align 8, !dbg !1603
  %arrayidx309 = getelementptr inbounds i8* %179, i64 %178, !dbg !1603
  store i8 %conv308, i8* %arrayidx309, align 1, !dbg !1603
  br label %if.end310, !dbg !1603

if.end310:                                        ; preds = %if.then303, %do.body300
  %180 = load i64* %len, align 8, !dbg !1606
  %inc311 = add i64 %180, 1, !dbg !1606
  store i64 %inc311, i64* %len, align 8, !dbg !1606
  br label %do.end313, !dbg !1606

do.end313:                                        ; preds = %if.end310
  %181 = load i8* %c, align 1, !dbg !1607
  %conv314 = zext i8 %181 to i32, !dbg !1607
  %and315 = and i32 %conv314, 7, !dbg !1607
  %add316 = add nsw i32 48, %and315, !dbg !1607
  %conv317 = trunc i32 %add316 to i8, !dbg !1607
  store i8 %conv317, i8* %c, align 1, !dbg !1607
  br label %if.end318, !dbg !1608

if.end318:                                        ; preds = %do.end313, %land.lhs.true276, %for.cond273
  %182 = load i64* %ilim, align 8, !dbg !1609
  %183 = load i64* %i, align 8, !dbg !1609
  %add319 = add i64 %183, 1, !dbg !1609
  %cmp320 = icmp ule i64 %182, %add319, !dbg !1609
  br i1 %cmp320, label %if.then322, label %if.end323, !dbg !1609

if.then322:                                       ; preds = %if.end318
  br label %for.end335, !dbg !1611

if.end323:                                        ; preds = %if.end318
  br label %do.body324, !dbg !1612

do.body324:                                       ; preds = %if.end323
  %184 = load i64* %len, align 8, !dbg !1613
  %185 = load i64* %buffersize.addr, align 8, !dbg !1613
  %cmp325 = icmp ult i64 %184, %185, !dbg !1613
  br i1 %cmp325, label %if.then327, label %if.end329, !dbg !1613

if.then327:                                       ; preds = %do.body324
  %186 = load i8* %c, align 1, !dbg !1613
  %187 = load i64* %len, align 8, !dbg !1613
  %188 = load i8** %buffer.addr, align 8, !dbg !1613
  %arrayidx328 = getelementptr inbounds i8* %188, i64 %187, !dbg !1613
  store i8 %186, i8* %arrayidx328, align 1, !dbg !1613
  br label %if.end329, !dbg !1613

if.end329:                                        ; preds = %if.then327, %do.body324
  %189 = load i64* %len, align 8, !dbg !1616
  %inc330 = add i64 %189, 1, !dbg !1616
  store i64 %inc330, i64* %len, align 8, !dbg !1616
  br label %do.end332, !dbg !1616

do.end332:                                        ; preds = %if.end329
  %190 = load i64* %i, align 8, !dbg !1617
  %inc333 = add i64 %190, 1, !dbg !1617
  store i64 %inc333, i64* %i, align 8, !dbg !1617
  %191 = load i8** %arg.addr, align 8, !dbg !1617
  %arrayidx334 = getelementptr inbounds i8* %191, i64 %inc333, !dbg !1617
  %192 = load i8* %arrayidx334, align 1, !dbg !1617
  store i8 %192, i8* %c, align 1, !dbg !1617
  br label %for.cond273, !dbg !1618

for.end335:                                       ; preds = %if.then322
  br label %store_c, !dbg !1619

if.end336:                                        ; preds = %land.lhs.true269, %lor.lhs.false
  br label %sw.epilog337, !dbg !1620

sw.epilog337:                                     ; preds = %if.end336, %sw.bb195, %sw.epilog194, %if.end165, %if.then159, %if.then154, %if.end142, %sw.epilog127, %if.end79
  %193 = load i8* %backslash_escapes, align 1, !dbg !1621
  %tobool338 = trunc i8 %193 to i1, !dbg !1621
  br i1 %tobool338, label %land.lhs.true340, label %if.then346, !dbg !1621

land.lhs.true340:                                 ; preds = %sw.epilog337
  %194 = load i8* %c, align 1, !dbg !1621
  %conv341 = zext i8 %194 to i64, !dbg !1621
  %div = udiv i64 %conv341, 32, !dbg !1621
  %195 = load %struct.quoting_options** %o.addr, align 8, !dbg !1621
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %195, i32 0, i32 1, !dbg !1621
  %arrayidx342 = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i64 %div, !dbg !1621
  %196 = load i32* %arrayidx342, align 4, !dbg !1621
  %197 = load i8* %c, align 1, !dbg !1621
  %conv343 = zext i8 %197 to i64, !dbg !1621
  %rem = urem i64 %conv343, 32, !dbg !1621
  %sh_prom = trunc i64 %rem to i32, !dbg !1621
  %shl = shl i32 1, %sh_prom, !dbg !1621
  %and344 = and i32 %196, %shl, !dbg !1621
  %tobool345 = icmp ne i32 %and344, 0, !dbg !1621
  br i1 %tobool345, label %if.end347, label %if.then346, !dbg !1621

if.then346:                                       ; preds = %land.lhs.true340, %sw.epilog337
  br label %store_c, !dbg !1623

if.end347:                                        ; preds = %land.lhs.true340
  br label %store_escape, !dbg !1623

store_escape:                                     ; preds = %if.end347, %if.then141
  br label %do.body348, !dbg !1624

do.body348:                                       ; preds = %store_escape
  %198 = load i64* %len, align 8, !dbg !1625
  %199 = load i64* %buffersize.addr, align 8, !dbg !1625
  %cmp349 = icmp ult i64 %198, %199, !dbg !1625
  br i1 %cmp349, label %if.then351, label %if.end353, !dbg !1625

if.then351:                                       ; preds = %do.body348
  %200 = load i64* %len, align 8, !dbg !1625
  %201 = load i8** %buffer.addr, align 8, !dbg !1625
  %arrayidx352 = getelementptr inbounds i8* %201, i64 %200, !dbg !1625
  store i8 92, i8* %arrayidx352, align 1, !dbg !1625
  br label %if.end353, !dbg !1625

if.end353:                                        ; preds = %if.then351, %do.body348
  %202 = load i64* %len, align 8, !dbg !1628
  %inc354 = add i64 %202, 1, !dbg !1628
  store i64 %inc354, i64* %len, align 8, !dbg !1628
  br label %do.end356, !dbg !1628

do.end356:                                        ; preds = %if.end353
  br label %store_c, !dbg !1628

store_c:                                          ; preds = %do.end356, %if.then346, %for.end335
  br label %do.body357, !dbg !1629

do.body357:                                       ; preds = %store_c
  %203 = load i64* %len, align 8, !dbg !1630
  %204 = load i64* %buffersize.addr, align 8, !dbg !1630
  %cmp358 = icmp ult i64 %203, %204, !dbg !1630
  br i1 %cmp358, label %if.then360, label %if.end362, !dbg !1630

if.then360:                                       ; preds = %do.body357
  %205 = load i8* %c, align 1, !dbg !1630
  %206 = load i64* %len, align 8, !dbg !1630
  %207 = load i8** %buffer.addr, align 8, !dbg !1630
  %arrayidx361 = getelementptr inbounds i8* %207, i64 %206, !dbg !1630
  store i8 %205, i8* %arrayidx361, align 1, !dbg !1630
  br label %if.end362, !dbg !1630

if.end362:                                        ; preds = %if.then360, %do.body357
  %208 = load i64* %len, align 8, !dbg !1633
  %inc363 = add i64 %208, 1, !dbg !1633
  store i64 %inc363, i64* %len, align 8, !dbg !1633
  br label %do.end365, !dbg !1633

do.end365:                                        ; preds = %if.end362
  br label %for.inc366, !dbg !1634

for.inc366:                                       ; preds = %do.end365
  %209 = load i64* %i, align 8, !dbg !1389
  %inc367 = add i64 %209, 1, !dbg !1389
  store i64 %inc367, i64* %i, align 8, !dbg !1389
  br label %for.cond22, !dbg !1389

for.end368:                                       ; preds = %cond.false, %cond.true
  %210 = load i64* %i, align 8, !dbg !1635
  %cmp369 = icmp eq i64 %210, 0, !dbg !1635
  br i1 %cmp369, label %land.lhs.true371, label %if.end375, !dbg !1635

land.lhs.true371:                                 ; preds = %for.end368
  %211 = load i32* %quoting_style.addr, align 4, !dbg !1635
  %cmp372 = icmp eq i32 %211, 1, !dbg !1635
  br i1 %cmp372, label %if.then374, label %if.end375, !dbg !1635

if.then374:                                       ; preds = %land.lhs.true371
  br label %use_shell_always_quoting_style, !dbg !1637

if.end375:                                        ; preds = %land.lhs.true371, %for.end368
  %212 = load i8** %quote_string, align 8, !dbg !1638
  %tobool376 = icmp ne i8* %212, null, !dbg !1638
  br i1 %tobool376, label %if.then377, label %if.end393, !dbg !1638

if.then377:                                       ; preds = %if.end375
  br label %for.cond378, !dbg !1640

for.cond378:                                      ; preds = %for.inc390, %if.then377
  %213 = load i8** %quote_string, align 8, !dbg !1640
  %214 = load i8* %213, align 1, !dbg !1640
  %tobool379 = icmp ne i8 %214, 0, !dbg !1640
  br i1 %tobool379, label %for.body380, label %for.end392, !dbg !1640

for.body380:                                      ; preds = %for.cond378
  br label %do.body381, !dbg !1642

do.body381:                                       ; preds = %for.body380
  %215 = load i64* %len, align 8, !dbg !1643
  %216 = load i64* %buffersize.addr, align 8, !dbg !1643
  %cmp382 = icmp ult i64 %215, %216, !dbg !1643
  br i1 %cmp382, label %if.then384, label %if.end386, !dbg !1643

if.then384:                                       ; preds = %do.body381
  %217 = load i8** %quote_string, align 8, !dbg !1643
  %218 = load i8* %217, align 1, !dbg !1643
  %219 = load i64* %len, align 8, !dbg !1643
  %220 = load i8** %buffer.addr, align 8, !dbg !1643
  %arrayidx385 = getelementptr inbounds i8* %220, i64 %219, !dbg !1643
  store i8 %218, i8* %arrayidx385, align 1, !dbg !1643
  br label %if.end386, !dbg !1643

if.end386:                                        ; preds = %if.then384, %do.body381
  %221 = load i64* %len, align 8, !dbg !1646
  %inc387 = add i64 %221, 1, !dbg !1646
  store i64 %inc387, i64* %len, align 8, !dbg !1646
  br label %do.end389, !dbg !1646

do.end389:                                        ; preds = %if.end386
  br label %for.inc390, !dbg !1646

for.inc390:                                       ; preds = %do.end389
  %222 = load i8** %quote_string, align 8, !dbg !1640
  %incdec.ptr391 = getelementptr inbounds i8* %222, i32 1, !dbg !1640
  store i8* %incdec.ptr391, i8** %quote_string, align 8, !dbg !1640
  br label %for.cond378, !dbg !1640

for.end392:                                       ; preds = %for.cond378
  br label %if.end393, !dbg !1642

if.end393:                                        ; preds = %for.end392, %if.end375
  %223 = load i64* %len, align 8, !dbg !1647
  %224 = load i64* %buffersize.addr, align 8, !dbg !1647
  %cmp394 = icmp ult i64 %223, %224, !dbg !1647
  br i1 %cmp394, label %if.then396, label %if.end398, !dbg !1647

if.then396:                                       ; preds = %if.end393
  %225 = load i64* %len, align 8, !dbg !1649
  %226 = load i8** %buffer.addr, align 8, !dbg !1649
  %arrayidx397 = getelementptr inbounds i8* %226, i64 %225, !dbg !1649
  store i8 0, i8* %arrayidx397, align 1, !dbg !1649
  br label %if.end398, !dbg !1649

if.end398:                                        ; preds = %if.then396, %if.end393
  %227 = load i64* %len, align 8, !dbg !1650
  store i64 %227, i64* %retval, !dbg !1650
  br label %return, !dbg !1650

use_shell_always_quoting_style:                   ; preds = %if.then374, %sw.bb247, %sw.bb167, %if.then164, %if.then138, %sw.bb81
  %228 = load i8** %buffer.addr, align 8, !dbg !1651
  %229 = load i64* %buffersize.addr, align 8, !dbg !1651
  %230 = load i8** %arg.addr, align 8, !dbg !1651
  %231 = load i64* %argsize.addr, align 8, !dbg !1651
  %232 = load %struct.quoting_options** %o.addr, align 8, !dbg !1651
  %call399 = call i64 @quotearg_buffer_restyled(i8* %228, i64 %229, i8* %230, i64 %231, i32 2, %struct.quoting_options* %232), !dbg !1651
  store i64 %call399, i64* %retval, !dbg !1651
  br label %return, !dbg !1651

return:                                           ; preds = %use_shell_always_quoting_style, %if.end398
  %233 = load i64* %retval, !dbg !1652
  ret i64 %233, !dbg !1652
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, i64 %argsize, %struct.quoting_options* %options) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %options.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %qsize = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !1653), !dbg !1654
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !1655), !dbg !1654
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !1656), !dbg !1654
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %options.addr}, metadata !1657), !dbg !1658
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1659), !dbg !1660
  %call = call i32* @__errno_location() #1, !dbg !1660
  %0 = load i32* %call, align 4, !dbg !1660
  store i32 %0, i32* %e, align 4, !dbg !1660
  call void @llvm.dbg.declare(metadata !{i32* %n0}, metadata !1661), !dbg !1662
  %1 = load i32* %n.addr, align 4, !dbg !1662
  store i32 %1, i32* %n0, align 4, !dbg !1662
  %2 = load i32* %n.addr, align 4, !dbg !1663
  %cmp = icmp slt i32 %2, 0, !dbg !1663
  br i1 %cmp, label %if.then, label %if.end, !dbg !1663

if.then:                                          ; preds = %entry
  call void @abort() #11, !dbg !1665
  unreachable, !dbg !1665

if.end:                                           ; preds = %entry
  %3 = load i32* @quotearg_n_options.nslots, align 4, !dbg !1666
  %4 = load i32* %n0, align 4, !dbg !1666
  %cmp1 = icmp ule i32 %3, %4, !dbg !1666
  br i1 %cmp1, label %if.then2, label %if.end16, !dbg !1666

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{i32* %n1}, metadata !1668), !dbg !1670
  %5 = load i32* %n0, align 4, !dbg !1670
  %add = add i32 %5, 1, !dbg !1670
  store i32 %add, i32* %n1, align 4, !dbg !1670
  %6 = load i32* %n1, align 4, !dbg !1671
  %conv = zext i32 %6 to i64, !dbg !1671
  %cmp3 = icmp ult i64 1152921504606846975, %conv, !dbg !1671
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1671

if.then5:                                         ; preds = %if.then2
  call void @xalloc_die() #13, !dbg !1673
  unreachable, !dbg !1673

if.end6:                                          ; preds = %if.then2
  %7 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1674
  %cmp7 = icmp eq %struct.slotvec* %7, @quotearg_n_options.slotvec0, !dbg !1674
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !1674

if.then9:                                         ; preds = %if.end6
  %call10 = call i8* @xmalloc(i64 16), !dbg !1676
  %8 = bitcast i8* %call10 to %struct.slotvec*, !dbg !1676
  store %struct.slotvec* %8, %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1676
  %9 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1678
  %10 = bitcast %struct.slotvec* %9 to i8*, !dbg !1678
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.slotvec* @quotearg_n_options.slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !1678
  br label %if.end11, !dbg !1679

if.end11:                                         ; preds = %if.then9, %if.end6
  %11 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1680
  %12 = bitcast %struct.slotvec* %11 to i8*, !dbg !1680
  %13 = load i32* %n1, align 4, !dbg !1680
  %conv12 = zext i32 %13 to i64, !dbg !1680
  %mul = mul i64 %conv12, 16, !dbg !1680
  %call13 = call i8* @xrealloc(i8* %12, i64 %mul), !dbg !1680
  %14 = bitcast i8* %call13 to %struct.slotvec*, !dbg !1680
  store %struct.slotvec* %14, %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1680
  %15 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1681
  %16 = load i32* @quotearg_n_options.nslots, align 4, !dbg !1681
  %idx.ext = zext i32 %16 to i64, !dbg !1681
  %add.ptr = getelementptr inbounds %struct.slotvec* %15, i64 %idx.ext, !dbg !1681
  %17 = bitcast %struct.slotvec* %add.ptr to i8*, !dbg !1681
  %18 = load i32* %n1, align 4, !dbg !1681
  %19 = load i32* @quotearg_n_options.nslots, align 4, !dbg !1681
  %sub = sub i32 %18, %19, !dbg !1681
  %conv14 = zext i32 %sub to i64, !dbg !1681
  %mul15 = mul i64 %conv14, 16, !dbg !1681
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 %mul15, i32 8, i1 false), !dbg !1681
  %20 = load i32* %n1, align 4, !dbg !1682
  store i32 %20, i32* @quotearg_n_options.nslots, align 4, !dbg !1682
  br label %if.end16, !dbg !1683

if.end16:                                         ; preds = %if.end11, %if.end
  call void @llvm.dbg.declare(metadata !{i64* %size}, metadata !1684), !dbg !1686
  %21 = load i32* %n.addr, align 4, !dbg !1686
  %idxprom = sext i32 %21 to i64, !dbg !1686
  %22 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1686
  %arrayidx = getelementptr inbounds %struct.slotvec* %22, i64 %idxprom, !dbg !1686
  %size17 = getelementptr inbounds %struct.slotvec* %arrayidx, i32 0, i32 0, !dbg !1686
  %23 = load i64* %size17, align 8, !dbg !1686
  store i64 %23, i64* %size, align 8, !dbg !1686
  call void @llvm.dbg.declare(metadata !{i8** %val}, metadata !1687), !dbg !1688
  %24 = load i32* %n.addr, align 4, !dbg !1688
  %idxprom18 = sext i32 %24 to i64, !dbg !1688
  %25 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1688
  %arrayidx19 = getelementptr inbounds %struct.slotvec* %25, i64 %idxprom18, !dbg !1688
  %val20 = getelementptr inbounds %struct.slotvec* %arrayidx19, i32 0, i32 1, !dbg !1688
  %26 = load i8** %val20, align 8, !dbg !1688
  store i8* %26, i8** %val, align 8, !dbg !1688
  call void @llvm.dbg.declare(metadata !{i64* %qsize}, metadata !1689), !dbg !1690
  %27 = load i8** %val, align 8, !dbg !1690
  %28 = load i64* %size, align 8, !dbg !1690
  %29 = load i8** %arg.addr, align 8, !dbg !1690
  %30 = load i64* %argsize.addr, align 8, !dbg !1690
  %31 = load %struct.quoting_options** %options.addr, align 8, !dbg !1690
  %call21 = call i64 @quotearg_buffer(i8* %27, i64 %28, i8* %29, i64 %30, %struct.quoting_options* %31), !dbg !1690
  store i64 %call21, i64* %qsize, align 8, !dbg !1690
  %32 = load i64* %size, align 8, !dbg !1691
  %33 = load i64* %qsize, align 8, !dbg !1691
  %cmp22 = icmp ule i64 %32, %33, !dbg !1691
  br i1 %cmp22, label %if.then24, label %if.end38, !dbg !1691

if.then24:                                        ; preds = %if.end16
  %34 = load i64* %qsize, align 8, !dbg !1693
  %add25 = add i64 %34, 1, !dbg !1693
  store i64 %add25, i64* %size, align 8, !dbg !1693
  %35 = load i32* %n.addr, align 4, !dbg !1693
  %idxprom26 = sext i32 %35 to i64, !dbg !1693
  %36 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1693
  %arrayidx27 = getelementptr inbounds %struct.slotvec* %36, i64 %idxprom26, !dbg !1693
  %size28 = getelementptr inbounds %struct.slotvec* %arrayidx27, i32 0, i32 0, !dbg !1693
  store i64 %add25, i64* %size28, align 8, !dbg !1693
  %37 = load i8** %val, align 8, !dbg !1695
  %cmp29 = icmp ne i8* %37, getelementptr inbounds ([256 x i8]* @quotearg_n_options.slot0, i32 0, i32 0), !dbg !1695
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !1695

if.then31:                                        ; preds = %if.then24
  %38 = load i8** %val, align 8, !dbg !1697
  call void @free(i8* %38) #9, !dbg !1697
  br label %if.end32, !dbg !1697

if.end32:                                         ; preds = %if.then31, %if.then24
  %39 = load i64* %size, align 8, !dbg !1698
  %call33 = call i8* @xmalloc(i64 %39), !dbg !1698
  store i8* %call33, i8** %val, align 8, !dbg !1698
  %40 = load i32* %n.addr, align 4, !dbg !1698
  %idxprom34 = sext i32 %40 to i64, !dbg !1698
  %41 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !1698
  %arrayidx35 = getelementptr inbounds %struct.slotvec* %41, i64 %idxprom34, !dbg !1698
  %val36 = getelementptr inbounds %struct.slotvec* %arrayidx35, i32 0, i32 1, !dbg !1698
  store i8* %call33, i8** %val36, align 8, !dbg !1698
  %42 = load i8** %val, align 8, !dbg !1699
  %43 = load i64* %size, align 8, !dbg !1699
  %44 = load i8** %arg.addr, align 8, !dbg !1699
  %45 = load i64* %argsize.addr, align 8, !dbg !1699
  %46 = load %struct.quoting_options** %options.addr, align 8, !dbg !1699
  %call37 = call i64 @quotearg_buffer(i8* %42, i64 %43, i8* %44, i64 %45, %struct.quoting_options* %46), !dbg !1699
  br label %if.end38, !dbg !1700

if.end38:                                         ; preds = %if.end32, %if.end16
  %47 = load i32* %e, align 4, !dbg !1701
  %call39 = call i32* @__errno_location() #1, !dbg !1701
  store i32 %47, i32* %call39, align 4, !dbg !1701
  %48 = load i8** %val, align 8, !dbg !1702
  ret i8* %48, !dbg !1702
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #0 {
entry:
  %style.addr = alloca i32, align 4
  %o = alloca %struct.quoting_options, align 4
  store i32 %style, i32* %style.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %style.addr}, metadata !1703), !dbg !1704
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !1705), !dbg !1706
  %0 = load i32* %style.addr, align 4, !dbg !1707
  %style1 = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 0, !dbg !1707
  store i32 %0, i32* %style1, align 4, !dbg !1707
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 1, !dbg !1708
  %1 = bitcast [8 x i32]* %quote_these_too to i8*, !dbg !1708
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false), !dbg !1708
  %2 = bitcast %struct.quoting_options* %agg.result to i8*, !dbg !1709
  %3 = bitcast %struct.quoting_options* %o to i8*, !dbg !1709
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 36, i32 4, i1 false), !dbg !1709
  ret void, !dbg !1709
}

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %msgid.addr}, metadata !1710), !dbg !1711
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !1712), !dbg !1711
  call void @llvm.dbg.declare(metadata !{i8** %translation}, metadata !1713), !dbg !1714
  %0 = load i8** %msgid.addr, align 8, !dbg !1714
  store i8* %0, i8** %translation, align 8, !dbg !1714
  %1 = load i8** %translation, align 8, !dbg !1715
  %2 = load i8** %msgid.addr, align 8, !dbg !1715
  %cmp = icmp eq i8* %1, %2, !dbg !1715
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1715

land.lhs.true:                                    ; preds = %entry
  %3 = load i32* %s.addr, align 4, !dbg !1715
  %cmp1 = icmp eq i32 %3, 6, !dbg !1715
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1715

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([2 x i8]* @.str780, i32 0, i32 0), i8** %translation, align 8, !dbg !1717
  br label %if.end, !dbg !1717

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8** %translation, align 8, !dbg !1718
  ret i8* %4, !dbg !1718
}

; Function Attrs: nounwind uwtable
define void @version_etc_va(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* %authors) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca %struct.__va_list_tag*, align 8
  %n_authors = alloca i64, align 8
  %tmp_authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !1719), !dbg !1720
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %command_name.addr}, metadata !1721), !dbg !1722
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %package.addr}, metadata !1723), !dbg !1722
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %version.addr}, metadata !1724), !dbg !1725
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.__va_list_tag** %authors.addr}, metadata !1726), !dbg !1725
  call void @llvm.dbg.declare(metadata !{i64* %n_authors}, metadata !1727), !dbg !1728
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %tmp_authors}, metadata !1729), !dbg !1735
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !1736
  %0 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1736
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1736
  %2 = bitcast %struct.__va_list_tag* %0 to i8*, !dbg !1736
  call void @llvm.va_copy(i8* %1, i8* %2), !dbg !1736
  store i64 0, i64* %n_authors, align 8, !dbg !1737
  br label %while.cond, !dbg !1738

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !1738
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 0, !dbg !1738
  %gp_offset = load i32* %gp_offset_p, !dbg !1738
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1738
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1738

vaarg.in_reg:                                     ; preds = %while.cond
  %3 = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 3, !dbg !1738
  %reg_save_area = load i8** %3, !dbg !1738
  %4 = getelementptr i8* %reg_save_area, i32 %gp_offset, !dbg !1738
  %5 = bitcast i8* %4 to i8**, !dbg !1738
  %6 = add i32 %gp_offset, 8, !dbg !1738
  store i32 %6, i32* %gp_offset_p, !dbg !1738
  br label %vaarg.end, !dbg !1738

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 2, !dbg !1738
  %overflow_arg_area = load i8** %overflow_arg_area_p, !dbg !1738
  %7 = bitcast i8* %overflow_arg_area to i8**, !dbg !1738
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8, !dbg !1738
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !1738
  br label %vaarg.end, !dbg !1738

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ], !dbg !1738
  %8 = load i8** %vaarg.addr, !dbg !1738
  %cmp = icmp ne i8* %8, null, !dbg !1738
  br i1 %cmp, label %while.body, label %while.end, !dbg !1738

while.body:                                       ; preds = %vaarg.end
  %9 = load i64* %n_authors, align 8, !dbg !1739
  %inc = add i64 %9, 1, !dbg !1739
  store i64 %inc, i64* %n_authors, align 8, !dbg !1739
  br label %while.cond, !dbg !1739

while.end:                                        ; preds = %vaarg.end
  %10 = load i8** %command_name.addr, align 8, !dbg !1740
  %tobool = icmp ne i8* %10, null, !dbg !1740
  br i1 %tobool, label %if.then, label %if.else, !dbg !1740

if.then:                                          ; preds = %while.end
  %11 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1742
  %12 = load i8** %command_name.addr, align 8, !dbg !1742
  %13 = load i8** %package.addr, align 8, !dbg !1742
  %14 = load i8** %version.addr, align 8, !dbg !1742
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([12 x i8]* @.str188, i32 0, i32 0), i8* %12, i8* %13, i8* %14), !dbg !1742
  br label %if.end, !dbg !1742

if.else:                                          ; preds = %while.end
  %15 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1743
  %16 = load i8** %package.addr, align 8, !dbg !1743
  %17 = load i8** %version.addr, align 8, !dbg !1743
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8]* @.str289, i32 0, i32 0), i8* %16, i8* %17), !dbg !1743
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i64* %n_authors, align 8, !dbg !1744
  switch i64 %18, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb3
    i64 2, label %sw.bb5
    i64 3, label %sw.bb7
    i64 4, label %sw.bb9
    i64 5, label %sw.bb11
    i64 6, label %sw.bb13
    i64 7, label %sw.bb15
    i64 8, label %sw.bb17
    i64 9, label %sw.bb19
  ], !dbg !1744

sw.bb:                                            ; preds = %if.end
  call void @abort() #11, !dbg !1745
  unreachable, !dbg !1745

sw.bb3:                                           ; preds = %if.end
  %19 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1747
  %20 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1747
  %call4 = call i32 @vfprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([16 x i8]* @.str390, i32 0, i32 0), %struct.__va_list_tag* %20), !dbg !1747
  br label %sw.epilog, !dbg !1748

sw.bb5:                                           ; preds = %if.end
  %21 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1749
  %22 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1749
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([23 x i8]* @.str491, i32 0, i32 0), %struct.__va_list_tag* %22), !dbg !1749
  br label %sw.epilog, !dbg !1750

sw.bb7:                                           ; preds = %if.end
  %23 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1751
  %24 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1751
  %call8 = call i32 @vfprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([28 x i8]* @.str592, i32 0, i32 0), %struct.__va_list_tag* %24), !dbg !1751
  br label %sw.epilog, !dbg !1752

sw.bb9:                                           ; preds = %if.end
  %25 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1753
  %26 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1753
  %call10 = call i32 @vfprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([32 x i8]* @.str693, i32 0, i32 0), %struct.__va_list_tag* %26), !dbg !1753
  br label %sw.epilog, !dbg !1754

sw.bb11:                                          ; preds = %if.end
  %27 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1755
  %28 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1755
  %call12 = call i32 @vfprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([36 x i8]* @.str794, i32 0, i32 0), %struct.__va_list_tag* %28), !dbg !1755
  br label %sw.epilog, !dbg !1756

sw.bb13:                                          ; preds = %if.end
  %29 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1757
  %30 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1757
  %call14 = call i32 @vfprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([40 x i8]* @.str895, i32 0, i32 0), %struct.__va_list_tag* %30), !dbg !1757
  br label %sw.epilog, !dbg !1758

sw.bb15:                                          ; preds = %if.end
  %31 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1759
  %32 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1759
  %call16 = call i32 @vfprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([44 x i8]* @.str996, i32 0, i32 0), %struct.__va_list_tag* %32), !dbg !1759
  br label %sw.epilog, !dbg !1760

sw.bb17:                                          ; preds = %if.end
  %33 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1761
  %34 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1761
  %call18 = call i32 @vfprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([48 x i8]* @.str1097, i32 0, i32 0), %struct.__va_list_tag* %34), !dbg !1761
  br label %sw.epilog, !dbg !1762

sw.bb19:                                          ; preds = %if.end
  %35 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1763
  %36 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1763
  %call20 = call i32 @vfprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([52 x i8]* @.str1198, i32 0, i32 0), %struct.__va_list_tag* %36), !dbg !1763
  br label %sw.epilog, !dbg !1764

sw.default:                                       ; preds = %if.end
  %37 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1765
  %38 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1765
  %call21 = call i32 @vfprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([60 x i8]* @.str1299, i32 0, i32 0), %struct.__va_list_tag* %38), !dbg !1765
  br label %sw.epilog, !dbg !1766

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3
  %39 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1767
  %40 = bitcast %struct.__va_list_tag* %39 to i8*, !dbg !1767
  call void @llvm.va_end(i8* %40), !dbg !1767
  %41 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1768
  %call22 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %41), !dbg !1768
  %42 = load i8** @version_etc_copyright, align 8, !dbg !1769
  %43 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1769
  %call23 = call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43), !dbg !1769
  %44 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1770
  %call24 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %44), !dbg !1770
  %45 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1771
  %call25 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([152 x i8]* @.str13100, i32 0, i32 0), %struct._IO_FILE* %45), !dbg !1771
  ret void, !dbg !1772
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #9

; Function Attrs: nounwind uwtable
define void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !1773), !dbg !1774
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %command_name.addr}, metadata !1775), !dbg !1776
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %package.addr}, metadata !1777), !dbg !1776
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %version.addr}, metadata !1778), !dbg !1779
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %authors}, metadata !1780), !dbg !1781
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !1782
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1782
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1782
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1783
  %1 = load i8** %command_name.addr, align 8, !dbg !1783
  %2 = load i8** %package.addr, align 8, !dbg !1783
  %3 = load i8** %version.addr, align 8, !dbg !1783
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !1783
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2), !dbg !1783
  ret void, !dbg !1784
}

; Function Attrs: noreturn nounwind uwtable
define void @xalloc_die() #10 {
entry:
  %0 = load volatile i32* @exit_failure, align 4, !dbg !1785
  call void (i32, i32, i8*, ...)* @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str103, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1104, i32 0, i32 0)), !dbg !1785
  call void @abort() #11, !dbg !1786
  unreachable, !dbg !1786

return:                                           ; No predecessors!
  ret void, !dbg !1787
}

; Function Attrs: nounwind uwtable
define i8* @xnmalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1788), !dbg !1789
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1790), !dbg !1789
  %0 = load i64* %n.addr, align 8, !dbg !1791
  %1 = load i64* %s.addr, align 8, !dbg !1791
  %call = call i8* @xnmalloc_inline(i64 %0, i64 %1), !dbg !1791
  ret i8* %call, !dbg !1791
}

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1792), !dbg !1793
  %0 = load i64* %n.addr, align 8, !dbg !1794
  %call = call i8* @xnmalloc_inline(i64 %0, i64 1), !dbg !1794
  ret i8* %call, !dbg !1794
}

; Function Attrs: nounwind uwtable
define i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1795), !dbg !1796
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1797), !dbg !1796
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1798), !dbg !1796
  %0 = load i8** %p.addr, align 8, !dbg !1799
  %1 = load i64* %n.addr, align 8, !dbg !1799
  %2 = load i64* %s.addr, align 8, !dbg !1799
  %call = call i8* @xnrealloc_inline(i8* %0, i64 %1, i64 %2), !dbg !1799
  ret i8* %call, !dbg !1799
}

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %p, i64 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1800), !dbg !1801
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1802), !dbg !1801
  %0 = load i8** %p.addr, align 8, !dbg !1803
  %1 = load i64* %n.addr, align 8, !dbg !1803
  %call = call i8* @xnrealloc_inline(i8* %0, i64 %1, i64 1), !dbg !1803
  ret i8* %call, !dbg !1803
}

; Function Attrs: nounwind uwtable
define i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1804), !dbg !1805
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !1806), !dbg !1805
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1807), !dbg !1805
  %0 = load i8** %p.addr, align 8, !dbg !1808
  %1 = load i64** %pn.addr, align 8, !dbg !1808
  %2 = load i64* %s.addr, align 8, !dbg !1808
  %call = call i8* @x2nrealloc_inline(i8* %0, i64* %1, i64 %2), !dbg !1808
  ret i8* %call, !dbg !1808
}

; Function Attrs: nounwind uwtable
define i8* @x2realloc(i8* %p, i64* %pn) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1809), !dbg !1810
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !1811), !dbg !1810
  %0 = load i8** %p.addr, align 8, !dbg !1812
  %1 = load i64** %pn.addr, align 8, !dbg !1812
  %call = call i8* @x2nrealloc_inline(i8* %0, i64* %1, i64 1), !dbg !1812
  ret i8* %call, !dbg !1812
}

; Function Attrs: nounwind uwtable
define i8* @xzalloc(i64 %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1813), !dbg !1814
  %0 = load i64* %s.addr, align 8, !dbg !1815
  %call = call i8* @xmalloc(i64 %0), !dbg !1815
  %1 = load i64* %s.addr, align 8, !dbg !1815
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %1, i32 1, i1 false), !dbg !1815
  ret i8* %call, !dbg !1815
}

; Function Attrs: nounwind uwtable
define i8* @xcalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1816), !dbg !1817
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1818), !dbg !1817
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1819), !dbg !1820
  %0 = load i64* %s.addr, align 8, !dbg !1821
  %div = udiv i64 -1, %0, !dbg !1821
  %1 = load i64* %n.addr, align 8, !dbg !1821
  %cmp = icmp ult i64 %div, %1, !dbg !1821
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1821

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64* %n.addr, align 8, !dbg !1821
  %3 = load i64* %s.addr, align 8, !dbg !1821
  %call = call noalias i8* @calloc(i64 %2, i64 %3) #9, !dbg !1821
  store i8* %call, i8** %p, align 8, !dbg !1821
  %tobool = icmp ne i8* %call, null, !dbg !1821
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1821

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i64* %n.addr, align 8, !dbg !1821
  %cmp1 = icmp ne i64 %4, 0, !dbg !1821
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1821

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @xalloc_die() #13, !dbg !1823
  unreachable, !dbg !1823

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i8** %p, align 8, !dbg !1824
  ret i8* %5, !dbg !1824
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define i8* @xmemdup(i8* %p, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1825), !dbg !1826
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1827), !dbg !1826
  %0 = load i64* %s.addr, align 8, !dbg !1828
  %call = call i8* @xmalloc(i64 %0), !dbg !1828
  %1 = load i8** %p.addr, align 8, !dbg !1828
  %2 = load i64* %s.addr, align 8, !dbg !1828
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %1, i64 %2, i32 1, i1 false), !dbg !1828
  ret i8* %call, !dbg !1828
}

; Function Attrs: nounwind uwtable
define i8* @xstrdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %string.addr}, metadata !1829), !dbg !1830
  %0 = load i8** %string.addr, align 8, !dbg !1831
  %1 = load i8** %string.addr, align 8, !dbg !1831
  %call = call i64 @strlen(i8* %1) #12, !dbg !1831
  %add = add i64 %call, 1, !dbg !1831
  %call1 = call i8* @xmemdup(i8* %0, i64 %add), !dbg !1831
  ret i8* %call1, !dbg !1831
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @xnmalloc_inline(i64 %n, i64 %s) #6 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1832), !dbg !1833
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1834), !dbg !1833
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !1835), !dbg !1836
  %0 = load i64* %s.addr, align 8, !dbg !1837
  %div = udiv i64 -1, %0, !dbg !1837
  %1 = load i64* %n.addr, align 8, !dbg !1837
  %cmp = icmp ult i64 %div, %1, !dbg !1837
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1837

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64* %n.addr, align 8, !dbg !1837
  %3 = load i64* %s.addr, align 8, !dbg !1837
  %mul = mul i64 %2, %3, !dbg !1837
  %call = call noalias i8* @malloc(i64 %mul) #9, !dbg !1837
  store i8* %call, i8** %p, align 8, !dbg !1837
  %tobool = icmp ne i8* %call, null, !dbg !1837
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1837

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i64* %n.addr, align 8, !dbg !1837
  %cmp1 = icmp ne i64 %4, 0, !dbg !1837
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1837

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @xalloc_die() #13, !dbg !1839
  unreachable, !dbg !1839

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i8** %p, align 8, !dbg !1840
  ret i8* %5, !dbg !1840
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @xnrealloc_inline(i8* %p, i64 %n, i64 %s) #6 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1841), !dbg !1842
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !1843), !dbg !1842
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1844), !dbg !1842
  %0 = load i64* %s.addr, align 8, !dbg !1845
  %div = udiv i64 -1, %0, !dbg !1845
  %1 = load i64* %n.addr, align 8, !dbg !1845
  %cmp = icmp ult i64 %div, %1, !dbg !1845
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1845

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8** %p.addr, align 8, !dbg !1845
  %3 = load i64* %n.addr, align 8, !dbg !1845
  %4 = load i64* %s.addr, align 8, !dbg !1845
  %mul = mul i64 %3, %4, !dbg !1845
  %call = call i8* @realloc(i8* %2, i64 %mul) #9, !dbg !1845
  store i8* %call, i8** %p.addr, align 8, !dbg !1845
  %tobool = icmp ne i8* %call, null, !dbg !1845
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1845

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i64* %n.addr, align 8, !dbg !1845
  %cmp1 = icmp ne i64 %5, 0, !dbg !1845
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1845

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @xalloc_die() #13, !dbg !1847
  unreachable, !dbg !1847

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i8** %p.addr, align 8, !dbg !1848
  ret i8* %6, !dbg !1848
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @x2nrealloc_inline(i8* %p, i64* %pn, i64 %s) #6 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !1849), !dbg !1850
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !1851), !dbg !1850
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !1852), !dbg !1850
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !1853), !dbg !1854
  %0 = load i64** %pn.addr, align 8, !dbg !1854
  %1 = load i64* %0, align 8, !dbg !1854
  store i64 %1, i64* %n, align 8, !dbg !1854
  %2 = load i8** %p.addr, align 8, !dbg !1855
  %tobool = icmp ne i8* %2, null, !dbg !1855
  br i1 %tobool, label %if.else, label %if.then, !dbg !1855

if.then:                                          ; preds = %entry
  %3 = load i64* %n, align 8, !dbg !1857
  %tobool1 = icmp ne i64 %3, 0, !dbg !1857
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !1857

if.then2:                                         ; preds = %if.then
  %4 = load i64* %s.addr, align 8, !dbg !1860
  %div = udiv i64 64, %4, !dbg !1860
  store i64 %div, i64* %n, align 8, !dbg !1860
  %5 = load i64* %n, align 8, !dbg !1862
  %tobool3 = icmp ne i64 %5, 0, !dbg !1862
  %lnot = xor i1 %tobool3, true, !dbg !1862
  %lnot.ext = zext i1 %lnot to i32, !dbg !1862
  %conv = sext i32 %lnot.ext to i64, !dbg !1862
  %6 = load i64* %n, align 8, !dbg !1862
  %add = add i64 %6, %conv, !dbg !1862
  store i64 %add, i64* %n, align 8, !dbg !1862
  br label %if.end, !dbg !1863

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end8, !dbg !1864

if.else:                                          ; preds = %entry
  %7 = load i64* %s.addr, align 8, !dbg !1865
  %div4 = udiv i64 9223372036854775807, %7, !dbg !1865
  %8 = load i64* %n, align 8, !dbg !1865
  %cmp = icmp ult i64 %div4, %8, !dbg !1865
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !1865

if.then6:                                         ; preds = %if.else
  call void @xalloc_die() #13, !dbg !1868
  unreachable, !dbg !1868

if.end7:                                          ; preds = %if.else
  %9 = load i64* %n, align 8, !dbg !1869
  %mul = mul i64 %9, 2, !dbg !1869
  store i64 %mul, i64* %n, align 8, !dbg !1869
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %10 = load i64* %n, align 8, !dbg !1870
  %11 = load i64** %pn.addr, align 8, !dbg !1870
  store i64 %10, i64* %11, align 8, !dbg !1870
  %12 = load i8** %p.addr, align 8, !dbg !1871
  %13 = load i64* %n, align 8, !dbg !1871
  %14 = load i64* %s.addr, align 8, !dbg !1871
  %mul9 = mul i64 %13, %14, !dbg !1871
  %call = call i8* @xrealloc(i8* %12, i64 %mul9), !dbg !1871
  ret i8* %call, !dbg !1871
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!0, !134, !144, !150, !159, !180, !285, !358, !363}
!llvm.module.flags = !{!402, !403}
!llvm.ident = !{!404, !404, !404, !404, !404, !404, !404, !404, !404}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !32, metadata !61, metadata !128, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c] [DW_LANG_C99]
!1 = metadata !{metadata !"expr.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src"}
!2 = metadata !{metadata !3, metadata !7, metadata !11, metadata !40, metadata !50, metadata !55}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"valtype", i32 63, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [valtype] [line 63, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 786472, metadata !"integer", i64 0} ; [ DW_TAG_enumerator ] [integer :: 0]
!6 = metadata !{i32 786472, metadata !"string", i64 1} ; [ DW_TAG_enumerator ] [string :: 1]
!7 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [def] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786472, metadata !"EXPR_INVALID", i64 2} ; [ DW_TAG_enumerator ] [EXPR_INVALID :: 2]
!10 = metadata !{i32 786472, metadata !"EXPR_FAILURE", i64 3} ; [ DW_TAG_enumerator ] [EXPR_FAILURE :: 3]
!11 = metadata !{i32 786436, metadata !1, metadata !12, metadata !"", i32 750, i64 32, i64 32, i32 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 750, size 32, align 32, offset 0] [def] [from ]
!12 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval2", metadata !"eval2", metadata !"", i32 746, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval2, null, null, metadata !32, i32 747} ; [ DW_TAG_subprogram ] [line 746] [local] [def] [scope 747] [eval2]
!13 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !31}
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from VALUE]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"VALUE", i32 80, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [VALUE] [line 80, size 0, align 0, offset 0] [from valinfo]
!18 = metadata !{i32 786451, metadata !1, null, metadata !"valinfo", i32 71, i64 128, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [valinfo] [line 71, size 128, align 64, offset 0] [def] [from ]
!19 = metadata !{metadata !20, metadata !22}
!20 = metadata !{i32 786445, metadata !1, metadata !18, metadata !"type", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [type] [line 73, size 32, align 32, offset 0] [from TYPE]
!21 = metadata !{i32 786454, metadata !1, null, metadata !"TYPE", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [TYPE] [line 68, size 0, align 0, offset 0] [from valtype]
!22 = metadata !{i32 786445, metadata !1, metadata !18, metadata !"u", i32 78, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [u] [line 78, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786455, metadata !1, metadata !18, metadata !"", i32 74, i64 64, i64 64, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 74, size 64, align 64, offset 0] [def] [from ]
!24 = metadata !{metadata !25, metadata !28}
!25 = metadata !{i32 786445, metadata !1, metadata !23, metadata !"i", i32 76, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [i] [line 76, size 64, align 64, offset 0] [from intmax_t]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"intmax_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [intmax_t] [line 134, size 0, align 0, offset 0] [from long int]
!27 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!28 = metadata !{i32 786445, metadata !1, metadata !23, metadata !"s", i32 77, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [s] [line 77, size 64, align 64, offset 0] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!30 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!31 = metadata !{i32 786468, null, null, metadata !"_Bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [_Bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!32 = metadata !{i32 0}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!34 = metadata !{i32 786472, metadata !"less_than", i64 0} ; [ DW_TAG_enumerator ] [less_than :: 0]
!35 = metadata !{i32 786472, metadata !"less_equal", i64 1} ; [ DW_TAG_enumerator ] [less_equal :: 1]
!36 = metadata !{i32 786472, metadata !"equal", i64 2} ; [ DW_TAG_enumerator ] [equal :: 2]
!37 = metadata !{i32 786472, metadata !"not_equal", i64 3} ; [ DW_TAG_enumerator ] [not_equal :: 3]
!38 = metadata !{i32 786472, metadata !"greater_equal", i64 4} ; [ DW_TAG_enumerator ] [greater_equal :: 4]
!39 = metadata !{i32 786472, metadata !"greater_than", i64 5} ; [ DW_TAG_enumerator ] [greater_than :: 5]
!40 = metadata !{i32 786436, metadata !41, null, metadata !"quoting_style", i32 28, i64 32, i64 32, i32 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [quoting_style] [line 28, size 32, align 32, offset 0] [def] [from ]
!41 = metadata !{metadata !"../lib/quotearg.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src"}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!43 = metadata !{i32 786472, metadata !"literal_quoting_style", i64 0} ; [ DW_TAG_enumerator ] [literal_quoting_style :: 0]
!44 = metadata !{i32 786472, metadata !"shell_quoting_style", i64 1} ; [ DW_TAG_enumerator ] [shell_quoting_style :: 1]
!45 = metadata !{i32 786472, metadata !"shell_always_quoting_style", i64 2} ; [ DW_TAG_enumerator ] [shell_always_quoting_style :: 2]
!46 = metadata !{i32 786472, metadata !"c_quoting_style", i64 3} ; [ DW_TAG_enumerator ] [c_quoting_style :: 3]
!47 = metadata !{i32 786472, metadata !"escape_quoting_style", i64 4} ; [ DW_TAG_enumerator ] [escape_quoting_style :: 4]
!48 = metadata !{i32 786472, metadata !"locale_quoting_style", i64 5} ; [ DW_TAG_enumerator ] [locale_quoting_style :: 5]
!49 = metadata !{i32 786472, metadata !"clocale_quoting_style", i64 6} ; [ DW_TAG_enumerator ] [clocale_quoting_style :: 6]
!50 = metadata !{i32 786436, metadata !1, metadata !51, metadata !"", i32 713, i64 32, i64 32, i32 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 713, size 32, align 32, offset 0] [def] [from ]
!51 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval3", metadata !"eval3", metadata !"", i32 709, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval3, null, null, metadata !32, i32 710} ; [ DW_TAG_subprogram ] [line 709] [local] [def] [scope 710] [eval3]
!52 = metadata !{metadata !53, metadata !54}
!53 = metadata !{i32 786472, metadata !"plus", i64 0} ; [ DW_TAG_enumerator ] [plus :: 0]
!54 = metadata !{i32 786472, metadata !"minus", i64 1} ; [ DW_TAG_enumerator ] [minus :: 1]
!55 = metadata !{i32 786436, metadata !1, metadata !56, metadata !"", i32 665, i64 32, i64 32, i32 0, i32 0, null, metadata !57, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 665, size 32, align 32, offset 0] [def] [from ]
!56 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval4", metadata !"eval4", metadata !"", i32 661, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval4, null, null, metadata !32, i32 662} ; [ DW_TAG_subprogram ] [line 661] [local] [def] [scope 662] [eval4]
!57 = metadata !{metadata !58, metadata !59, metadata !60}
!58 = metadata !{i32 786472, metadata !"multiply", i64 0} ; [ DW_TAG_enumerator ] [multiply :: 0]
!59 = metadata !{i32 786472, metadata !"divide", i64 1} ; [ DW_TAG_enumerator ] [divide :: 1]
!60 = metadata !{i32 786472, metadata !"mod", i64 2} ; [ DW_TAG_enumerator ] [mod :: 2]
!61 = metadata !{metadata !62, metadata !69, metadata !75, metadata !76, metadata !79, metadata !83, metadata !84, metadata !87, metadata !90, metadata !95, metadata !12, metadata !96, metadata !99, metadata !51, metadata !56, metadata !100, metadata !101, metadata !104, metadata !107, metadata !108, metadata !109, metadata !112, metadata !113, metadata !114, metadata !117, metadata !125}
!62 = metadata !{i32 786478, metadata !63, metadata !64, metadata !"klee_change", metadata !"klee_change", metadata !"", i32 18, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64)* @klee_change, null, null, metadata !32, i32 18} ; [ DW_TAG_subprogram ] [line 18] [def] [klee_change]
!63 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src"}
!64 = metadata !{i32 786473, metadata !63}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !67, metadata !67}
!67 = metadata !{i32 786454, metadata !63, null, metadata !"uintptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [uintptr_t] [line 122, size 0, align 0, offset 0] [from long unsigned int]
!68 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!69 = metadata !{i32 786478, metadata !70, metadata !71, metadata !"klee_get_true", metadata !"klee_get_true", metadata !"", i32 4, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_true, null, null, metadata !32, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [klee_get_true]
!70 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src"}
!71 = metadata !{i32 786473, metadata !70}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!72 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!75 = metadata !{i32 786478, metadata !70, metadata !71, metadata !"klee_get_false", metadata !"klee_get_false", metadata !"", i32 5, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_false, null, null, metadata !32, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [klee_get_false]
!76 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"usage", metadata !"usage", metadata !"", i32 106, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @usage, null, null, metadata !32, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [usage]
!77 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{null, metadata !74}
!79 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"main", metadata !"main", metadata !"", i32 191, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !32, i32 192} ; [ DW_TAG_subprogram ] [line 191] [def] [scope 192] [main]
!80 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{metadata !74, metadata !74, metadata !82}
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval", metadata !"eval", metadata !"", i32 867, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval, null, null, metadata !32, i32 868} ; [ DW_TAG_subprogram ] [line 867] [local] [def] [scope 868] [eval]
!84 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"int_value", metadata !"int_value", metadata !"", i32 234, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i64)* @int_value, null, null, metadata !32, i32 235} ; [ DW_TAG_subprogram ] [line 234] [local] [def] [scope 235] [int_value]
!85 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !16, metadata !26}
!87 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"freev", metadata !"freev", metadata !"", i32 256, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.valinfo*)* @freev, null, null, metadata !32, i32 257} ; [ DW_TAG_subprogram ] [line 256] [local] [def] [scope 257] [freev]
!88 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !16}
!90 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"nextarg", metadata !"nextarg", metadata !"", i32 409, metadata !91, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*)* @nextarg, null, null, metadata !32, i32 410} ; [ DW_TAG_subprogram ] [line 409] [local] [def] [scope 410] [nextarg]
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !31, metadata !93}
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!95 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval1", metadata !"eval1", metadata !"", i32 836, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval1, null, null, metadata !32, i32 837} ; [ DW_TAG_subprogram ] [line 836] [local] [def] [scope 837] [eval1]
!96 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"toarith", metadata !"toarith", metadata !"", i32 344, metadata !97, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.valinfo*)* @toarith, null, null, metadata !32, i32 345} ; [ DW_TAG_subprogram ] [line 344] [local] [def] [scope 345] [toarith]
!97 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !31, metadata !16}
!99 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"tostring", metadata !"tostring", metadata !"", i32 320, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.valinfo*)* @tostring, null, null, metadata !32, i32 321} ; [ DW_TAG_subprogram ] [line 320] [local] [def] [scope 321] [tostring]
!100 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval5", metadata !"eval5", metadata !"", i32 630, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval5, null, null, metadata !32, i32 631} ; [ DW_TAG_subprogram ] [line 630] [local] [def] [scope 631] [eval5]
!101 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"docolon", metadata !"docolon", metadata !"", i32 450, metadata !102, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (%struct.valinfo*, %struct.valinfo*)* @docolon, null, null, metadata !32, i32 451} ; [ DW_TAG_subprogram ] [line 450] [local] [def] [scope 451] [docolon]
!102 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{metadata !16, metadata !16, metadata !16}
!104 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"str_value", metadata !"str_value", metadata !"", i32 245, metadata !105, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i8*)* @str_value, null, null, metadata !32, i32 246} ; [ DW_TAG_subprogram ] [line 245] [local] [def] [scope 246] [str_value]
!105 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{metadata !16, metadata !29}
!107 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval6", metadata !"eval6", metadata !"", i32 547, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval6, null, null, metadata !32, i32 548} ; [ DW_TAG_subprogram ] [line 547] [local] [def] [scope 548] [eval6]
!108 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"eval7", metadata !"eval7", metadata !"", i32 520, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.valinfo* (i1)* @eval7, null, null, metadata !32, i32 521} ; [ DW_TAG_subprogram ] [line 520] [local] [def] [scope 521] [eval7]
!109 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"nomoreargs", metadata !"nomoreargs", metadata !"", i32 424, metadata !110, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 ()* @nomoreargs, null, null, metadata !32, i32 425} ; [ DW_TAG_subprogram ] [line 424] [local] [def] [scope 425] [nomoreargs]
!110 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!111 = metadata !{metadata !31}
!112 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"null", metadata !"null", metadata !"", i32 289, metadata !97, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.valinfo*)* @null, null, null, metadata !32, i32 290} ; [ DW_TAG_subprogram ] [line 289] [local] [def] [scope 290] [null]
!113 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"printv", metadata !"printv", metadata !"", i32 266, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.valinfo*)* @printv, null, null, metadata !32, i32 267} ; [ DW_TAG_subprogram ] [line 266] [local] [def] [scope 267] [printv]
!114 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"syntax_error", metadata !"syntax_error", metadata !"", i32 184, metadata !115, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @syntax_error, null, null, metadata !32, i32 185} ; [ DW_TAG_subprogram ] [line 184] [local] [def] [scope 185] [syntax_error]
!115 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{null}
!117 = metadata !{i32 786478, metadata !1, metadata !13, metadata !"klee_compatible_error", metadata !"klee_compatible_error", metadata !"", i32 93, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error, null, null, metadata !32, i32 93} ; [ DW_TAG_subprogram ] [line 93] [local] [def] [klee_compatible_error]
!118 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{null, metadata !74, metadata !120, metadata !93}
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{metadata !123, metadata !124}
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!124 = metadata !{i32 786456}
!125 = metadata !{i32 786478, metadata !126, metadata !127, metadata !"initialize_exit_failure", metadata !"initialize_exit_failure", metadata !"", i32 159, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @initialize_exit_failure, null, null, metadata !32, i32 160} ; [ DW_TAG_subprogram ] [line 159] [local] [def] [scope 160] [initialize_exit_failure]
!126 = metadata !{metadata !"./system.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src"}
!127 = metadata !{i32 786473, metadata !126}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/./system.h]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!129 = metadata !{i32 786484, i32 0, null, metadata !"after_divergence", metadata !"after_divergence", metadata !"", metadata !64, i32 14, metadata !74, i32 0, i32 1, i32* @after_divergence, null} ; [ DW_TAG_variable ] [after_divergence] [line 14] [def]
!130 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_file_env", metadata !"klee_div_file_env", metadata !"", metadata !64, i32 15, metadata !93, i32 0, i32 1, i8** @klee_div_file_env, null} ; [ DW_TAG_variable ] [klee_div_file_env] [line 15] [def]
!131 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_marker_file_env", metadata !"klee_div_marker_file_env", metadata !"", metadata !64, i32 16, metadata !93, i32 0, i32 1, i8** @klee_div_marker_file_env, null} ; [ DW_TAG_variable ] [klee_div_marker_file_env] [line 16] [def]
!132 = metadata !{i32 786484, i32 0, null, metadata !"args", metadata !"args", metadata !"", metadata !13, i32 83, metadata !82, i32 1, i32 1, i8*** @args, null} ; [ DW_TAG_variable ] [args] [line 83] [local] [def]
!133 = metadata !{i32 786484, i32 0, null, metadata !"program_name", metadata !"program_name", metadata !"", metadata !13, i32 86, metadata !29, i32 0, i32 1, i8** @program_name, null} ; [ DW_TAG_variable ] [program_name] [line 86] [def]
!134 = metadata !{i32 786449, metadata !135, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !32, metadata !32, metadata !136, metadata !142, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/closeout.c] [DW_LANG_C99]
!135 = metadata !{metadata !"closeout.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!136 = metadata !{metadata !137, metadata !141}
!137 = metadata !{i32 786478, metadata !135, metadata !138, metadata !"close_stdout_set_file_name", metadata !"close_stdout_set_file_name", metadata !"", i32 47, metadata !139, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @close_stdout_set_file_name, null, null, metadata !32, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [close_stdout_set_file_name]
!138 = metadata !{i32 786473, metadata !135}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/closeout.c]
!139 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{null, metadata !93}
!141 = metadata !{i32 786478, metadata !135, metadata !138, metadata !"close_stdout", metadata !"close_stdout", metadata !"", i32 74, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @close_stdout, null, null, metadata !32, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [close_stdout]
!142 = metadata !{metadata !143}
!143 = metadata !{i32 786484, i32 0, null, metadata !"file_name", metadata !"file_name", metadata !"", metadata !138, i32 42, metadata !93, i32 1, i32 1, i8** @file_name, null} ; [ DW_TAG_variable ] [file_name] [line 42] [local] [def]
!144 = metadata !{i32 786449, metadata !145, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !32, metadata !32, metadata !32, metadata !146, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/exitfail.c] [DW_LANG_C99]
!145 = metadata !{metadata !"exitfail.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786484, i32 0, null, metadata !"exit_failure", metadata !"exit_failure", metadata !"", metadata !148, i32 27, metadata !149, i32 0, i32 1, i32* @exit_failure, null} ; [ DW_TAG_variable ] [exit_failure] [line 27] [def]
!148 = metadata !{i32 786473, metadata !145}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/exitfail.c]
!149 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from int]
!150 = metadata !{i32 786449, metadata !151, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !32, metadata !32, metadata !152, metadata !32, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/imaxtostr.c] [DW_LANG_C99]
!151 = metadata !{metadata !"imaxtostr.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 786478, metadata !154, metadata !155, metadata !"imaxtostr", metadata !"imaxtostr", metadata !"", i32 28, metadata !156, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i8*)* @imaxtostr, null, null, metadata !32, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [imaxtostr]
!154 = metadata !{metadata !"./inttostr.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!155 = metadata !{i32 786473, metadata !154}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/./inttostr.c]
!156 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!157 = metadata !{metadata !29, metadata !158, metadata !29}
!158 = metadata !{i32 786454, metadata !154, null, metadata !"intmax_t", i32 134, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [intmax_t] [line 134, size 0, align 0, offset 0] [from long int]
!159 = metadata !{i32 786449, metadata !160, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !32, metadata !32, metadata !161, metadata !167, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/long-options.c] [DW_LANG_C99]
!160 = metadata !{metadata !"long-options.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 786478, metadata !160, metadata !163, metadata !"parse_long_options", metadata !"parse_long_options", metadata !"", i32 47, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...)* @parse_long_options, null, null, metadata !32, i32 54} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 54] [parse_long_options]
!163 = metadata !{i32 786473, metadata !160}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/long-options.c]
!164 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{null, metadata !74, metadata !82, metadata !93, metadata !93, metadata !93, metadata !166}
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786484, i32 0, null, metadata !"long_options", metadata !"long_options", metadata !"", metadata !163, i32 36, metadata !169, i32 1, i32 1, <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @long_options, null} ; [ DW_TAG_variable ] [long_options] [line 36] [local] [def]
!169 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 64, i32 0, i32 0, metadata !170, metadata !178, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 64, offset 0] [from ]
!170 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from option]
!171 = metadata !{i32 786451, metadata !172, null, metadata !"option", i32 104, i64 256, i64 64, i32 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [option] [line 104, size 256, align 64, offset 0] [def] [from ]
!172 = metadata !{metadata !"/usr/include/getopt.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177}
!174 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"name", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ] [name] [line 106, size 64, align 64, offset 0] [from ]
!175 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"has_arg", i32 109, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [has_arg] [line 109, size 32, align 32, offset 64] [from int]
!176 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"flag", i32 110, i64 64, i64 64, i64 128, i32 0, metadata !123} ; [ DW_TAG_member ] [flag] [line 110, size 64, align 64, offset 128] [from ]
!177 = metadata !{i32 786445, metadata !172, metadata !171, metadata !"val", i32 111, i64 32, i64 32, i64 192, i32 0, metadata !74} ; [ DW_TAG_member ] [val] [line 111, size 32, align 32, offset 192] [from int]
!178 = metadata !{metadata !179}
!179 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!180 = metadata !{i32 786449, metadata !181, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !182, metadata !32, metadata !200, metadata !263, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c] [DW_LANG_C99]
!181 = metadata !{metadata !"quotearg.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!182 = metadata !{metadata !183, metadata !185}
!183 = metadata !{i32 786436, metadata !184, null, metadata !"quoting_style", i32 28, i64 32, i64 32, i32 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [quoting_style] [line 28, size 32, align 32, offset 0] [def] [from ]
!184 = metadata !{metadata !"./quotearg.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!185 = metadata !{i32 786436, metadata !186, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !187, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!186 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199}
!188 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!189 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!190 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!191 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!192 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!193 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!194 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!195 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!196 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!197 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!198 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!199 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!200 = metadata !{metadata !201, metadata !214, metadata !217, metadata !220, metadata !223, metadata !229, metadata !232, metadata !235, metadata !238, metadata !241, metadata !244, metadata !247, metadata !250, metadata !251, metadata !254, metadata !257, metadata !260}
!201 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"clone_quoting_options", metadata !"clone_quoting_options", metadata !"", i32 122, metadata !203, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.quoting_options* (%struct.quoting_options*)* @clone_quoting_options, null, null, metadata !32, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [clone_quoting_options]
!202 = metadata !{i32 786473, metadata !181}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!203 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !205}
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from quoting_options]
!206 = metadata !{i32 786451, metadata !181, null, metadata !"quoting_options", i32 80, i64 288, i64 32, i32 0, i32 0, null, metadata !207, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [quoting_options] [line 80, size 288, align 32, offset 0] [def] [from ]
!207 = metadata !{metadata !208, metadata !209}
!208 = metadata !{i32 786445, metadata !181, metadata !206, metadata !"style", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [style] [line 83, size 32, align 32, offset 0] [from quoting_style]
!209 = metadata !{i32 786445, metadata !181, metadata !206, metadata !"quote_these_too", i32 87, i64 256, i64 32, i64 32, i32 0, metadata !210} ; [ DW_TAG_member ] [quote_these_too] [line 87, size 256, align 32, offset 32] [from ]
!210 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !211, metadata !212, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!211 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!212 = metadata !{metadata !213}
!213 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!214 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"get_quoting_style", metadata !"get_quoting_style", metadata !"", i32 133, metadata !215, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*)* @get_quoting_style, null, null, metadata !32, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [get_quoting_style]
!215 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{metadata !183, metadata !205}
!217 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"set_quoting_style", metadata !"set_quoting_style", metadata !"", i32 141, metadata !218, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoting_options*, i32)* @set_quoting_style, null, null, metadata !32, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [set_quoting_style]
!218 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!219 = metadata !{null, metadata !205, metadata !183}
!220 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"set_char_quoting", metadata !"set_char_quoting", metadata !"", i32 152, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*, i8, i32)* @set_char_quoting, null, null, metadata !32, i32 153} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 153] [set_char_quoting]
!221 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{metadata !74, metadata !205, metadata !30, metadata !74}
!223 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_buffer", metadata !"quotearg_buffer", metadata !"", i32 526, metadata !224, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64, %struct.quoting_options*)* @quotearg_buffer, null, null, metadata !32, i32 529} ; [ DW_TAG_subprogram ] [line 526] [def] [scope 529] [quotearg_buffer]
!224 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !225, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!225 = metadata !{metadata !226, metadata !29, metadata !226, metadata !93, metadata !226, metadata !227}
!226 = metadata !{i32 786454, metadata !181, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!228 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_options]
!229 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_alloc", metadata !"quotearg_alloc", metadata !"", i32 541, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, %struct.quoting_options*)* @quotearg_alloc, null, null, metadata !32, i32 543} ; [ DW_TAG_subprogram ] [line 541] [def] [scope 543] [quotearg_alloc]
!230 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{metadata !29, metadata !93, metadata !226, metadata !227}
!232 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_n", metadata !"quotearg_n", metadata !"", i32 619, metadata !233, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_n, null, null, metadata !32, i32 620} ; [ DW_TAG_subprogram ] [line 619] [def] [scope 620] [quotearg_n]
!233 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !234, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!234 = metadata !{metadata !29, metadata !74, metadata !93}
!235 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg", metadata !"quotearg", metadata !"", i32 625, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg, null, null, metadata !32, i32 626} ; [ DW_TAG_subprogram ] [line 625] [def] [scope 626] [quotearg]
!236 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !29, metadata !93}
!238 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_n_style", metadata !"quotearg_n_style", metadata !"", i32 641, metadata !239, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*)* @quotearg_n_style, null, null, metadata !32, i32 642} ; [ DW_TAG_subprogram ] [line 641] [def] [scope 642] [quotearg_n_style]
!239 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!240 = metadata !{metadata !29, metadata !74, metadata !183, metadata !93}
!241 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_n_style_mem", metadata !"quotearg_n_style_mem", metadata !"", i32 648, metadata !242, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*, i64)* @quotearg_n_style_mem, null, null, metadata !32, i32 650} ; [ DW_TAG_subprogram ] [line 648] [def] [scope 650] [quotearg_n_style_mem]
!242 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !29, metadata !74, metadata !183, metadata !93, metadata !226}
!244 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_style", metadata !"quotearg_style", metadata !"", i32 656, metadata !245, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_style, null, null, metadata !32, i32 657} ; [ DW_TAG_subprogram ] [line 656] [def] [scope 657] [quotearg_style]
!245 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !246, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!246 = metadata !{metadata !29, metadata !183, metadata !93}
!247 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_char", metadata !"quotearg_char", metadata !"", i32 662, metadata !248, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8)* @quotearg_char, null, null, metadata !32, i32 663} ; [ DW_TAG_subprogram ] [line 662] [def] [scope 663] [quotearg_char]
!248 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!249 = metadata !{metadata !29, metadata !93, metadata !30}
!250 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_colon", metadata !"quotearg_colon", metadata !"", i32 671, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg_colon, null, null, metadata !32, i32 672} ; [ DW_TAG_subprogram ] [line 671] [def] [scope 672] [quotearg_colon]
!251 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quoting_options_from_style", metadata !"quoting_options_from_style", metadata !"", i32 632, metadata !252, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoting_options*, i32)* @quoting_options_from_style, null, null, metadata !32, i32 633} ; [ DW_TAG_subprogram ] [line 632] [local] [def] [scope 633] [quoting_options_from_style]
!252 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!253 = metadata !{metadata !206, metadata !183}
!254 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_n_options", metadata !"quotearg_n_options", metadata !"", i32 561, metadata !255, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*, i64, %struct.quoting_options*)* @quotearg_n_options, null, null, metadata !32, i32 563} ; [ DW_TAG_subprogram ] [line 561] [local] [def] [scope 563] [quotearg_n_options]
!255 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{metadata !29, metadata !74, metadata !93, metadata !226, metadata !227}
!257 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"quotearg_buffer_restyled", metadata !"quotearg_buffer_restyled", metadata !"", i32 188, metadata !258, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64, i32, %struct.quoting_options*)* @quotearg_buffer_restyled, null, null, metadata !32, i32 192} ; [ DW_TAG_subprogram ] [line 188] [local] [def] [scope 192] [quotearg_buffer_restyled]
!258 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!259 = metadata !{metadata !226, metadata !29, metadata !226, metadata !93, metadata !226, metadata !183, metadata !227}
!260 = metadata !{i32 786478, metadata !181, metadata !202, metadata !"gettext_quote", metadata !"gettext_quote", metadata !"", i32 166, metadata !261, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @gettext_quote, null, null, metadata !32, i32 167} ; [ DW_TAG_subprogram ] [line 166] [local] [def] [scope 167] [gettext_quote]
!261 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!262 = metadata !{metadata !93, metadata !93, metadata !183}
!263 = metadata !{metadata !264, metadata !267, metadata !272, metadata !273, metadata !277, metadata !278, metadata !283}
!264 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_args", metadata !"quoting_style_args", metadata !"", metadata !202, i32 91, metadata !265, i32 0, i32 1, [8 x i8*]* @quoting_style_args, null} ; [ DW_TAG_variable ] [quoting_style_args] [line 91] [def]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !266, metadata !212, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!266 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!267 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_vals", metadata !"quoting_style_vals", metadata !"", metadata !202, i32 104, metadata !268, i32 0, i32 1, [7 x i32]* @quoting_style_vals, null} ; [ DW_TAG_variable ] [quoting_style_vals] [line 104] [def]
!268 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !269, metadata !270, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from ]
!269 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_style]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!272 = metadata !{i32 786484, i32 0, null, metadata !"default_quoting_options", metadata !"default_quoting_options", metadata !"", metadata !202, i32 116, metadata !206, i32 1, i32 1, %struct.quoting_options* @default_quoting_options, null} ; [ DW_TAG_variable ] [default_quoting_options] [line 116] [local] [def]
!273 = metadata !{i32 786484, i32 0, metadata !254, metadata !"slot0", metadata !"slot0", metadata !"", metadata !202, i32 568, metadata !274, i32 1, i32 1, [256 x i8]* @quotearg_n_options.slot0, null} ; [ DW_TAG_variable ] [slot0] [line 568] [local] [def]
!274 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !30, metadata !275, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!275 = metadata !{metadata !276}
!276 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!277 = metadata !{i32 786484, i32 0, metadata !254, metadata !"nslots", metadata !"nslots", metadata !"", metadata !202, i32 569, metadata !211, i32 1, i32 1, i32* @quotearg_n_options.nslots, null} ; [ DW_TAG_variable ] [nslots] [line 569] [local] [def]
!278 = metadata !{i32 786484, i32 0, metadata !254, metadata !"slotvec0", metadata !"slotvec0", metadata !"", metadata !202, i32 576, metadata !279, i32 1, i32 1, %struct.slotvec* @quotearg_n_options.slotvec0, null} ; [ DW_TAG_variable ] [slotvec0] [line 576] [local] [def]
!279 = metadata !{i32 786451, metadata !181, metadata !254, metadata !"slotvec", i32 571, i64 128, i64 64, i32 0, i32 0, null, metadata !280, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [slotvec] [line 571, size 128, align 64, offset 0] [def] [from ]
!280 = metadata !{metadata !281, metadata !282}
!281 = metadata !{i32 786445, metadata !181, metadata !279, metadata !"size", i32 573, i64 64, i64 64, i64 0, i32 0, metadata !226} ; [ DW_TAG_member ] [size] [line 573, size 64, align 64, offset 0] [from size_t]
!282 = metadata !{i32 786445, metadata !181, metadata !279, metadata !"val", i32 574, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [val] [line 574, size 64, align 64, offset 64] [from ]
!283 = metadata !{i32 786484, i32 0, metadata !254, metadata !"slotvec", metadata !"slotvec", metadata !"", metadata !202, i32 577, metadata !284, i32 1, i32 1, %struct.slotvec** @quotearg_n_options.slotvec, null} ; [ DW_TAG_variable ] [slotvec] [line 577] [local] [def]
!284 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !279} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from slotvec]
!285 = metadata !{i32 786449, metadata !286, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !32, metadata !32, metadata !287, metadata !356, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/version-etc.c] [DW_LANG_C99]
!286 = metadata !{metadata !"version-etc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!287 = metadata !{metadata !288, metadata !353}
!288 = metadata !{i32 786478, metadata !286, metadata !289, metadata !"version_etc_va", metadata !"version_etc_va", metadata !"", i32 48, metadata !290, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag*)* @version_etc_va, null, null, metadata !32, i32 51} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 51] [version_etc_va]
!289 = metadata !{i32 786473, metadata !286}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/version-etc.c]
!290 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{null, metadata !292, metadata !93, metadata !93, metadata !93, metadata !345}
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!293 = metadata !{i32 786454, metadata !286, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!294 = metadata !{i32 786451, metadata !295, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !296, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!295 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!296 = metadata !{metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !317, metadata !318, metadata !319, metadata !320, metadata !322, metadata !324, metadata !326, metadata !330, metadata !332, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !340, metadata !341}
!297 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!298 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!299 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!300 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!301 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!302 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!303 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!304 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!305 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!306 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!307 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!308 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!309 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !310} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!310 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !311} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!311 = metadata !{i32 786451, metadata !295, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !312, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!312 = metadata !{metadata !313, metadata !314, metadata !316}
!313 = metadata !{i32 786445, metadata !295, metadata !311, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !310} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!314 = metadata !{i32 786445, metadata !295, metadata !311, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!315 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !294} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!316 = metadata !{i32 786445, metadata !295, metadata !311, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!317 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !315} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!318 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !74} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!319 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !74} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!320 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !321} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!321 = metadata !{i32 786454, metadata !295, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!322 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !323} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!323 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!324 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !325} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!325 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!326 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !327} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!327 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !30, metadata !328, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!328 = metadata !{metadata !329}
!329 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!330 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !331} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!332 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !333} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!333 = metadata !{i32 786454, metadata !295, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!334 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!335 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!336 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!337 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!338 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !339} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!339 = metadata !{i32 786454, metadata !295, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!340 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !74} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!341 = metadata !{i32 786445, metadata !295, metadata !294, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !342} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!342 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !30, metadata !343, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!343 = metadata !{metadata !344}
!344 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!345 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !346} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!346 = metadata !{i32 786454, metadata !286, null, metadata !"__va_list_tag", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !347} ; [ DW_TAG_typedef ] [__va_list_tag] [line 51, size 0, align 0, offset 0] [from __va_list_tag]
!347 = metadata !{i32 786451, metadata !286, null, metadata !"__va_list_tag", i32 51, i64 192, i64 64, i32 0, i32 0, null, metadata !348, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 51, size 192, align 64, offset 0] [def] [from ]
!348 = metadata !{metadata !349, metadata !350, metadata !351, metadata !352}
!349 = metadata !{i32 786445, metadata !286, metadata !347, metadata !"gp_offset", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [gp_offset] [line 51, size 32, align 32, offset 0] [from unsigned int]
!350 = metadata !{i32 786445, metadata !286, metadata !347, metadata !"fp_offset", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [fp_offset] [line 51, size 32, align 32, offset 32] [from unsigned int]
!351 = metadata !{i32 786445, metadata !286, metadata !347, metadata !"overflow_arg_area", i32 51, i64 64, i64 64, i64 64, i32 0, metadata !331} ; [ DW_TAG_member ] [overflow_arg_area] [line 51, size 64, align 64, offset 64] [from ]
!352 = metadata !{i32 786445, metadata !286, metadata !347, metadata !"reg_save_area", i32 51, i64 64, i64 64, i64 128, i32 0, metadata !331} ; [ DW_TAG_member ] [reg_save_area] [line 51, size 64, align 64, offset 128] [from ]
!353 = metadata !{i32 786478, metadata !286, metadata !289, metadata !"version_etc", metadata !"version_etc", metadata !"", i32 171, metadata !354, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc, null, null, metadata !32, i32 174} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 174] [version_etc]
!354 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!355 = metadata !{null, metadata !292, metadata !93, metadata !93, metadata !93}
!356 = metadata !{metadata !357}
!357 = metadata !{i32 786484, i32 0, null, metadata !"version_etc_copyright", metadata !"version_etc_copyright", metadata !"", metadata !289, i32 40, metadata !93, i32 0, i32 1, i8** @version_etc_copyright, null} ; [ DW_TAG_variable ] [version_etc_copyright] [line 40] [def]
!358 = metadata !{i32 786449, metadata !359, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !32, metadata !32, metadata !360, metadata !32, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xalloc-die.c] [DW_LANG_C99]
!359 = metadata !{metadata !"xalloc-die.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!360 = metadata !{metadata !361}
!361 = metadata !{i32 786478, metadata !359, metadata !362, metadata !"xalloc_die", metadata !"xalloc_die", metadata !"", i32 36, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @xalloc_die, null, null, metadata !32, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [xalloc_die]
!362 = metadata !{i32 786473, metadata !359}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xalloc-die.c]
!363 = metadata !{i32 786449, metadata !364, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !365, metadata !32, metadata !375, metadata !32, metadata !32, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c] [DW_LANG_C99]
!364 = metadata !{metadata !"xmalloc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!365 = metadata !{metadata !366}
!366 = metadata !{i32 786436, metadata !364, metadata !367, metadata !"", i32 154, i64 32, i64 32, i32 0, i32 0, null, metadata !373, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 154, size 32, align 32, offset 0] [def] [from ]
!367 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"x2nrealloc_inline", metadata !"x2nrealloc_inline", metadata !"", i32 142, metadata !369, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*, i64)* @x2nrealloc_inline, null, null, metadata !32, i32 143} ; [ DW_TAG_subprogram ] [line 142] [local] [def] [scope 143] [x2nrealloc_inline]
!368 = metadata !{i32 786473, metadata !364}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!369 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!370 = metadata !{metadata !331, metadata !331, metadata !371, metadata !372}
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from size_t]
!372 = metadata !{i32 786454, metadata !364, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!373 = metadata !{metadata !374}
!374 = metadata !{i32 786472, metadata !"DEFAULT_MXFAST", i64 64} ; [ DW_TAG_enumerator ] [DEFAULT_MXFAST :: 64]
!375 = metadata !{metadata !376, metadata !379, metadata !382, metadata !385, metadata !388, metadata !389, metadata !392, metadata !393, metadata !394, metadata !399, metadata !367, metadata !400, metadata !401}
!376 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xnmalloc", metadata !"xnmalloc", metadata !"", i32 46, metadata !377, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xnmalloc, null, null, metadata !32, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [xnmalloc]
!377 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!378 = metadata !{metadata !331, metadata !372, metadata !372}
!379 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xmalloc", metadata !"xmalloc", metadata !"", i32 54, metadata !380, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xmalloc, null, null, metadata !32, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [xmalloc]
!380 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !381, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!381 = metadata !{metadata !331, metadata !372}
!382 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xnrealloc", metadata !"xnrealloc", metadata !"", i32 71, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, i64)* @xnrealloc, null, null, metadata !32, i32 72} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 72] [xnrealloc]
!383 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!384 = metadata !{metadata !331, metadata !331, metadata !372, metadata !372}
!385 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xrealloc", metadata !"xrealloc", metadata !"", i32 80, metadata !386, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xrealloc, null, null, metadata !32, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [xrealloc]
!386 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!387 = metadata !{metadata !331, metadata !331, metadata !372}
!388 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"x2nrealloc", metadata !"x2nrealloc", metadata !"", i32 172, metadata !369, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*, i64)* @x2nrealloc, null, null, metadata !32, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [x2nrealloc]
!389 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"x2realloc", metadata !"x2realloc", metadata !"", i32 184, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*)* @x2realloc, null, null, metadata !32, i32 185} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 185] [x2realloc]
!390 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!391 = metadata !{metadata !331, metadata !331, metadata !371}
!392 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xzalloc", metadata !"xzalloc", metadata !"", i32 194, metadata !380, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xzalloc, null, null, metadata !32, i32 195} ; [ DW_TAG_subprogram ] [line 194] [def] [scope 195] [xzalloc]
!393 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xcalloc", metadata !"xcalloc", metadata !"", i32 203, metadata !377, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xcalloc, null, null, metadata !32, i32 204} ; [ DW_TAG_subprogram ] [line 203] [def] [scope 204] [xcalloc]
!394 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xmemdup", metadata !"xmemdup", metadata !"", i32 218, metadata !395, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xmemdup, null, null, metadata !32, i32 219} ; [ DW_TAG_subprogram ] [line 218] [def] [scope 219] [xmemdup]
!395 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!396 = metadata !{metadata !331, metadata !397, metadata !372}
!397 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !398} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!398 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!399 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xstrdup", metadata !"xstrdup", metadata !"", i32 226, metadata !236, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @xstrdup, null, null, metadata !32, i32 227} ; [ DW_TAG_subprogram ] [line 226] [def] [scope 227] [xstrdup]
!400 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xnrealloc_inline", metadata !"xnrealloc_inline", metadata !"", i32 63, metadata !383, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, i64)* @xnrealloc_inline, null, null, metadata !32, i32 64} ; [ DW_TAG_subprogram ] [line 63] [local] [def] [scope 64] [xnrealloc_inline]
!401 = metadata !{i32 786478, metadata !364, metadata !368, metadata !"xnmalloc_inline", metadata !"xnmalloc_inline", metadata !"", i32 37, metadata !377, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xnmalloc_inline, null, null, metadata !32, i32 38} ; [ DW_TAG_subprogram ] [line 37] [local] [def] [scope 38] [xnmalloc_inline]
!402 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!403 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!404 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!405 = metadata !{i32 786689, metadata !62, metadata !"x", metadata !64, i32 16777234, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 18]
!406 = metadata !{i32 18, i32 0, metadata !62, null}
!407 = metadata !{i32 786689, metadata !62, metadata !"y", metadata !64, i32 33554450, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 18]
!408 = metadata !{i32 19, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !63, metadata !62, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!410 = metadata !{i32 20, i32 0, metadata !409, null}
!411 = metadata !{i32 22, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !63, metadata !413, i32 22, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!413 = metadata !{i32 786443, metadata !63, metadata !409, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!414 = metadata !{i32 786688, metadata !415, metadata !"file", metadata !64, i32 25, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 25]
!415 = metadata !{i32 786443, metadata !63, metadata !412, i32 22, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!416 = metadata !{i32 25, i32 0, metadata !415, null}
!417 = metadata !{i32 786688, metadata !415, metadata !"marker_file", metadata !64, i32 26, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marker_file] [line 26]
!418 = metadata !{i32 26, i32 0, metadata !415, null}
!419 = metadata !{i32 28, i32 0, metadata !420, null}
!420 = metadata !{i32 786443, metadata !63, metadata !415, i32 28, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!421 = metadata !{i32 786688, metadata !422, metadata !"f", metadata !64, i32 31, metadata !423, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 31]
!422 = metadata !{i32 786443, metadata !63, metadata !420, i32 28, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!423 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !424} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!424 = metadata !{i32 786454, metadata !63, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !425} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!425 = metadata !{i32 786451, metadata !426, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !427, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!426 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src"}
!427 = metadata !{metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !448, metadata !449, metadata !450, metadata !451, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !465, metadata !466}
!428 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!429 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!430 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!431 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!432 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!433 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!434 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!435 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!436 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!437 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!438 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!439 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!440 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !441} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!441 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !442} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!442 = metadata !{i32 786451, metadata !426, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !443, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!443 = metadata !{metadata !444, metadata !445, metadata !447}
!444 = metadata !{i32 786445, metadata !426, metadata !442, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !441} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!445 = metadata !{i32 786445, metadata !426, metadata !442, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !446} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!446 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !425} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!447 = metadata !{i32 786445, metadata !426, metadata !442, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!448 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !446} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!449 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !74} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!450 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !74} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!451 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !452} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!452 = metadata !{i32 786454, metadata !426, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!453 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !323} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!454 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !325} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!455 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !327} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!456 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !331} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!457 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !458} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!458 = metadata !{i32 786454, metadata !426, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!459 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!460 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!461 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!462 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !331} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!463 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !464} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!464 = metadata !{i32 786454, metadata !426, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!465 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !74} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!466 = metadata !{i32 786445, metadata !426, metadata !425, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !342} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!467 = metadata !{i32 31, i32 0, metadata !422, null}
!468 = metadata !{i32 32, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !63, metadata !422, i32 32, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!470 = metadata !{i32 33, i32 0, metadata !471, null}
!471 = metadata !{i32 786443, metadata !63, metadata !469, i32 32, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!472 = metadata !{i32 34, i32 0, metadata !471, null}
!473 = metadata !{i32 35, i32 0, metadata !471, null}
!474 = metadata !{i32 36, i32 0, metadata !471, null}
!475 = metadata !{i32 38, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !63, metadata !469, i32 37, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!477 = metadata !{i32 40, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !63, metadata !422, i32 40, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!479 = metadata !{i32 41, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !63, metadata !478, i32 40, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!481 = metadata !{i32 42, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !63, metadata !480, i32 42, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!483 = metadata !{i32 43, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !63, metadata !482, i32 42, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!485 = metadata !{i32 44, i32 0, metadata !484, null}
!486 = metadata !{i32 45, i32 0, metadata !484, null}
!487 = metadata !{i32 47, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !63, metadata !482, i32 46, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!489 = metadata !{i32 49, i32 0, metadata !480, null}
!490 = metadata !{i32 51, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !63, metadata !478, i32 50, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!492 = metadata !{i32 54, i32 0, metadata !422, null}
!493 = metadata !{i32 56, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !63, metadata !420, i32 55, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!495 = metadata !{i32 59, i32 0, metadata !415, null}
!496 = metadata !{i32 60, i32 0, metadata !415, null}
!497 = metadata !{i32 61, i32 0, metadata !413, null}
!498 = metadata !{i32 64, i32 0, metadata !62, null}
!499 = metadata !{i32 4, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !70, metadata !69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!501 = metadata !{i32 5, i32 0, metadata !75, null}
!502 = metadata !{i32 786689, metadata !76, metadata !"status", metadata !13, i32 16777322, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 106]
!503 = metadata !{i32 106, i32 0, metadata !76, null}
!504 = metadata !{i32 108, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !506, i32 108, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!506 = metadata !{i32 786443, metadata !1, metadata !76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!507 = metadata !{i32 109, i32 0, metadata !505, null}
!508 = metadata !{i32 113, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !505, i32 112, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!510 = metadata !{i32 118, i32 0, metadata !509, null}
!511 = metadata !{i32 119, i32 0, metadata !509, null}
!512 = metadata !{i32 120, i32 0, metadata !509, null}
!513 = metadata !{i32 121, i32 0, metadata !509, null}
!514 = metadata !{i32 130, i32 0, metadata !509, null}
!515 = metadata !{i32 139, i32 0, metadata !509, null}
!516 = metadata !{i32 144, i32 0, metadata !509, null}
!517 = metadata !{i32 150, i32 0, metadata !509, null}
!518 = metadata !{i32 159, i32 0, metadata !509, null}
!519 = metadata !{i32 165, i32 0, metadata !509, null}
!520 = metadata !{i32 172, i32 0, metadata !509, null}
!521 = metadata !{i32 177, i32 0, metadata !509, null}
!522 = metadata !{i32 179, i32 0, metadata !506, null}
!523 = metadata !{i32 180, i32 0, metadata !506, null}
!524 = metadata !{i32 786689, metadata !79, metadata !"argc", metadata !13, i32 16777407, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 191]
!525 = metadata !{i32 191, i32 0, metadata !79, null}
!526 = metadata !{i32 786689, metadata !79, metadata !"argv", metadata !13, i32 33554623, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 191]
!527 = metadata !{i32 786688, metadata !79, metadata !"v", metadata !13, i32 193, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 193]
!528 = metadata !{i32 193, i32 0, metadata !79, null}
!529 = metadata !{i32 196, i32 0, metadata !79, null}
!530 = metadata !{i32 197, i32 0, metadata !79, null}
!531 = metadata !{i32 201, i32 0, metadata !79, null}
!532 = metadata !{i32 202, i32 0, metadata !79, null}
!533 = metadata !{i32 204, i32 0, metadata !79, null}
!534 = metadata !{i32 208, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !79, i32 208, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!536 = metadata !{i32 210, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !535, i32 209, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!538 = metadata !{i32 211, i32 0, metadata !537, null}
!539 = metadata !{i32 212, i32 0, metadata !537, null}
!540 = metadata !{i32 214, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !79, i32 214, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!542 = metadata !{i32 217, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !541, i32 215, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!544 = metadata !{i32 218, i32 0, metadata !543, null}
!545 = metadata !{i32 219, i32 0, metadata !543, null}
!546 = metadata !{i32 221, i32 0, metadata !79, null}
!547 = metadata !{i32 223, i32 0, metadata !79, null}
!548 = metadata !{i32 224, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !79, i32 224, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!550 = metadata !{i32 225, i32 0, metadata !549, null}
!551 = metadata !{i32 226, i32 0, metadata !79, null}
!552 = metadata !{i32 228, i32 0, metadata !79, null}
!553 = metadata !{i32 229, i32 0, metadata !79, null}
!554 = metadata !{i32 786689, metadata !125, metadata !"status", metadata !127, i32 16777375, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 159]
!555 = metadata !{i32 159, i32 0, metadata !125, null}
!556 = metadata !{i32 161, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !126, metadata !558, i32 161, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/./system.h]
!558 = metadata !{i32 786443, metadata !126, metadata !125} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/./system.h]
!559 = metadata !{i32 162, i32 0, metadata !557, null}
!560 = metadata !{i32 163, i32 0, metadata !558, null}
!561 = metadata !{i32 786689, metadata !117, metadata !"status", metadata !13, i32 16777309, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 93]
!562 = metadata !{i32 93, i32 0, metadata !117, null}
!563 = metadata !{i32 786689, metadata !117, metadata !"__errno_location", metadata !13, i32 33554525, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__errno_location] [line 93]
!564 = metadata !{i32 786689, metadata !117, metadata !"format", metadata !13, i32 50331741, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 93]
!565 = metadata !{i32 786688, metadata !117, metadata !"err_args", metadata !13, i32 94, metadata !566, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err_args] [line 94]
!566 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !567} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!567 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !568} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!568 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !569} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 94, size 0, align 0, offset 0] [from ]
!569 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !570, metadata !328, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!570 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !571} ; [ DW_TAG_typedef ] [__va_list_tag] [line 94, size 0, align 0, offset 0] [from __va_list_tag]
!571 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 94, i64 192, i64 64, i32 0, i32 0, null, metadata !572, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 94, size 192, align 64, offset 0] [def] [from ]
!572 = metadata !{metadata !573, metadata !574, metadata !575, metadata !576}
!573 = metadata !{i32 786445, metadata !1, metadata !571, metadata !"gp_offset", i32 94, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [gp_offset] [line 94, size 32, align 32, offset 0] [from unsigned int]
!574 = metadata !{i32 786445, metadata !1, metadata !571, metadata !"fp_offset", i32 94, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [fp_offset] [line 94, size 32, align 32, offset 32] [from unsigned int]
!575 = metadata !{i32 786445, metadata !1, metadata !571, metadata !"overflow_arg_area", i32 94, i64 64, i64 64, i64 64, i32 0, metadata !331} ; [ DW_TAG_member ] [overflow_arg_area] [line 94, size 64, align 64, offset 64] [from ]
!576 = metadata !{i32 786445, metadata !1, metadata !571, metadata !"reg_save_area", i32 94, i64 64, i64 64, i64 128, i32 0, metadata !331} ; [ DW_TAG_member ] [reg_save_area] [line 94, size 64, align 64, offset 128] [from ]
!577 = metadata !{i32 94, i32 0, metadata !117, null}
!578 = metadata !{i32 95, i32 0, metadata !117, null}
!579 = metadata !{i32 96, i32 0, metadata !117, null}
!580 = metadata !{i32 97, i32 0, metadata !117, null}
!581 = metadata !{i32 98, i32 0, metadata !117, null}
!582 = metadata !{i32 99, i32 0, metadata !117, null}
!583 = metadata !{i32 100, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !117, i32 100, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!585 = metadata !{i32 101, i32 0, metadata !586, null}
!586 = metadata !{i32 786443, metadata !1, metadata !584, i32 100, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!587 = metadata !{i32 103, i32 0, metadata !117, null}
!588 = metadata !{i32 786689, metadata !83, metadata !"evaluate", metadata !13, i32 16778083, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 867]
!589 = metadata !{i32 867, i32 0, metadata !83, null}
!590 = metadata !{i32 786688, metadata !83, metadata !"l", metadata !13, i32 869, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 869]
!591 = metadata !{i32 869, i32 0, metadata !83, null}
!592 = metadata !{i32 786688, metadata !83, metadata !"r", metadata !13, i32 870, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 870]
!593 = metadata !{i32 870, i32 0, metadata !83, null}
!594 = metadata !{i32 875, i32 0, metadata !83, null}
!595 = metadata !{i32 876, i32 0, metadata !83, null}
!596 = metadata !{i32 878, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !1, metadata !598, i32 878, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!598 = metadata !{i32 786443, metadata !1, metadata !83, i32 877, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!599 = metadata !{i32 880, i32 0, metadata !600, null}
!600 = metadata !{i32 786443, metadata !1, metadata !597, i32 879, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!601 = metadata !{i32 881, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !600, i32 881, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!603 = metadata !{i32 883, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !602, i32 882, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!605 = metadata !{i32 884, i32 0, metadata !604, null}
!606 = metadata !{i32 885, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !604, i32 885, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!608 = metadata !{i32 887, i32 0, metadata !609, null}
!609 = metadata !{i32 786443, metadata !1, metadata !607, i32 886, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!610 = metadata !{i32 888, i32 0, metadata !609, null}
!611 = metadata !{i32 889, i32 0, metadata !609, null}
!612 = metadata !{i32 890, i32 0, metadata !604, null}
!613 = metadata !{i32 892, i32 0, metadata !602, null}
!614 = metadata !{i32 893, i32 0, metadata !600, null}
!615 = metadata !{i32 895, i32 0, metadata !597, null}
!616 = metadata !{i32 896, i32 0, metadata !598, null}
!617 = metadata !{i32 426, i32 0, metadata !109, null}
!618 = metadata !{i32 187, i32 0, metadata !114, null}
!619 = metadata !{i32 188, i32 0, metadata !114, null}
!620 = metadata !{i32 786689, metadata !113, metadata !"v", metadata !13, i32 16777482, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 266]
!621 = metadata !{i32 266, i32 0, metadata !113, null}
!622 = metadata !{i32 786688, metadata !113, metadata !"p", metadata !13, i32 268, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 268]
!623 = metadata !{i32 268, i32 0, metadata !113, null}
!624 = metadata !{i32 786688, metadata !113, metadata !"buf", metadata !13, i32 269, metadata !625, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 269]
!625 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 176, i64 8, i32 0, i32 0, metadata !30, metadata !626, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 176, align 8, offset 0] [from char]
!626 = metadata !{metadata !627}
!627 = metadata !{i32 786465, i64 0, i64 22}      ; [ DW_TAG_subrange_type ] [0, 21]
!628 = metadata !{i32 269, i32 0, metadata !113, null}
!629 = metadata !{i32 271, i32 0, metadata !113, null}
!630 = metadata !{i32 274, i32 0, metadata !631, null}
!631 = metadata !{i32 786443, metadata !1, metadata !113, i32 272, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!632 = metadata !{i32 275, i32 0, metadata !631, null}
!633 = metadata !{i32 277, i32 0, metadata !631, null}
!634 = metadata !{i32 278, i32 0, metadata !631, null}
!635 = metadata !{i32 280, i32 0, metadata !631, null}
!636 = metadata !{i32 283, i32 0, metadata !113, null}
!637 = metadata !{i32 284, i32 0, metadata !113, null}
!638 = metadata !{i32 786689, metadata !112, metadata !"v", metadata !13, i32 16777505, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 289]
!639 = metadata !{i32 289, i32 0, metadata !112, null}
!640 = metadata !{i32 291, i32 0, metadata !112, null}
!641 = metadata !{i32 294, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !112, i32 292, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!643 = metadata !{i32 786688, metadata !644, metadata !"cp", metadata !13, i32 297, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 297]
!644 = metadata !{i32 786443, metadata !1, metadata !642, i32 296, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!645 = metadata !{i32 297, i32 0, metadata !644, null}
!646 = metadata !{i32 298, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !644, i32 298, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!648 = metadata !{i32 299, i32 0, metadata !647, null}
!649 = metadata !{i32 301, i32 0, metadata !644, null}
!650 = metadata !{i32 303, i32 0, metadata !644, null}
!651 = metadata !{i32 305, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !1, metadata !653, i32 305, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!653 = metadata !{i32 786443, metadata !1, metadata !644, i32 304, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!654 = metadata !{i32 306, i32 0, metadata !652, null}
!655 = metadata !{i32 307, i32 0, metadata !653, null}
!656 = metadata !{i32 310, i32 0, metadata !644, null}
!657 = metadata !{i32 313, i32 0, metadata !642, null}
!658 = metadata !{i32 315, i32 0, metadata !112, null}
!659 = metadata !{i32 786689, metadata !95, metadata !"evaluate", metadata !13, i32 16778052, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 836]
!660 = metadata !{i32 836, i32 0, metadata !95, null}
!661 = metadata !{i32 786688, metadata !95, metadata !"l", metadata !13, i32 838, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 838]
!662 = metadata !{i32 838, i32 0, metadata !95, null}
!663 = metadata !{i32 786688, metadata !95, metadata !"r", metadata !13, i32 839, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 839]
!664 = metadata !{i32 839, i32 0, metadata !95, null}
!665 = metadata !{i32 844, i32 0, metadata !95, null}
!666 = metadata !{i32 845, i32 0, metadata !95, null}
!667 = metadata !{i32 847, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !669, i32 847, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!669 = metadata !{i32 786443, metadata !1, metadata !95, i32 846, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!670 = metadata !{i32 849, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !668, i32 848, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!672 = metadata !{i32 850, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !1, metadata !671, i32 850, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!674 = metadata !{i32 852, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !673, i32 851, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!676 = metadata !{i32 853, i32 0, metadata !675, null}
!677 = metadata !{i32 854, i32 0, metadata !675, null}
!678 = metadata !{i32 855, i32 0, metadata !675, null}
!679 = metadata !{i32 857, i32 0, metadata !673, null}
!680 = metadata !{i32 858, i32 0, metadata !671, null}
!681 = metadata !{i32 860, i32 0, metadata !668, null}
!682 = metadata !{i32 861, i32 0, metadata !669, null}
!683 = metadata !{i32 786689, metadata !90, metadata !"str", metadata !13, i32 16777625, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 409]
!684 = metadata !{i32 409, i32 0, metadata !90, null}
!685 = metadata !{i32 411, i32 0, metadata !686, null}
!686 = metadata !{i32 786443, metadata !1, metadata !90, i32 411, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!687 = metadata !{i32 412, i32 0, metadata !686, null}
!688 = metadata !{i32 786688, metadata !689, metadata !"r", metadata !13, i32 415, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 415]
!689 = metadata !{i32 786443, metadata !1, metadata !686, i32 414, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!690 = metadata !{i32 415, i32 0, metadata !689, null}
!691 = metadata !{i32 416, i32 0, metadata !689, null}
!692 = metadata !{i32 417, i32 0, metadata !689, null}
!693 = metadata !{i32 419, i32 0, metadata !90, null}
!694 = metadata !{i32 786689, metadata !87, metadata !"v", metadata !13, i32 16777472, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 256]
!695 = metadata !{i32 256, i32 0, metadata !87, null}
!696 = metadata !{i32 258, i32 0, metadata !697, null}
!697 = metadata !{i32 786443, metadata !1, metadata !87, i32 258, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!698 = metadata !{i32 259, i32 0, metadata !697, null}
!699 = metadata !{i32 260, i32 0, metadata !87, null}
!700 = metadata !{i32 261, i32 0, metadata !87, null}
!701 = metadata !{i32 786689, metadata !84, metadata !"i", metadata !13, i32 16777450, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 234]
!702 = metadata !{i32 234, i32 0, metadata !84, null}
!703 = metadata !{i32 786688, metadata !84, metadata !"v", metadata !13, i32 236, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 236]
!704 = metadata !{i32 236, i32 0, metadata !84, null}
!705 = metadata !{i32 237, i32 0, metadata !84, null}
!706 = metadata !{i32 238, i32 0, metadata !84, null}
!707 = metadata !{i32 239, i32 0, metadata !84, null}
!708 = metadata !{i32 786689, metadata !12, metadata !"evaluate", metadata !13, i32 16777962, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 746]
!709 = metadata !{i32 746, i32 0, metadata !12, null}
!710 = metadata !{i32 786688, metadata !12, metadata !"l", metadata !13, i32 748, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 748]
!711 = metadata !{i32 748, i32 0, metadata !12, null}
!712 = metadata !{i32 786688, metadata !12, metadata !"r", metadata !13, i32 749, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 749]
!713 = metadata !{i32 749, i32 0, metadata !12, null}
!714 = metadata !{i32 786688, metadata !12, metadata !"fxn", metadata !13, i32 753, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fxn] [line 753]
!715 = metadata !{i32 753, i32 0, metadata !12, null}
!716 = metadata !{i32 786688, metadata !12, metadata !"val", metadata !13, i32 754, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 754]
!717 = metadata !{i32 754, i32 0, metadata !12, null}
!718 = metadata !{i32 786688, metadata !12, metadata !"lval", metadata !13, i32 755, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lval] [line 755]
!719 = metadata !{i32 755, i32 0, metadata !12, null}
!720 = metadata !{i32 786688, metadata !12, metadata !"rval", metadata !13, i32 756, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rval] [line 756]
!721 = metadata !{i32 756, i32 0, metadata !12, null}
!722 = metadata !{i32 786688, metadata !12, metadata !"collation_errno", metadata !13, i32 757, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [collation_errno] [line 757]
!723 = metadata !{i32 757, i32 0, metadata !12, null}
!724 = metadata !{i32 786688, metadata !12, metadata !"collation_arg1", metadata !13, i32 758, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [collation_arg1] [line 758]
!725 = metadata !{i32 758, i32 0, metadata !12, null}
!726 = metadata !{i32 763, i32 0, metadata !12, null}
!727 = metadata !{i32 764, i32 0, metadata !12, null}
!728 = metadata !{i32 766, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !730, i32 766, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!730 = metadata !{i32 786443, metadata !1, metadata !12, i32 765, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!731 = metadata !{i32 767, i32 0, metadata !729, null}
!732 = metadata !{i32 768, i32 0, metadata !733, null}
!733 = metadata !{i32 786443, metadata !1, metadata !729, i32 768, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!734 = metadata !{i32 769, i32 0, metadata !733, null}
!735 = metadata !{i32 770, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !733, i32 770, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!737 = metadata !{i32 771, i32 0, metadata !736, null}
!738 = metadata !{i32 772, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !736, i32 772, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!740 = metadata !{i32 773, i32 0, metadata !739, null}
!741 = metadata !{i32 774, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !739, i32 774, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!743 = metadata !{i32 775, i32 0, metadata !742, null}
!744 = metadata !{i32 776, i32 0, metadata !745, null}
!745 = metadata !{i32 786443, metadata !1, metadata !742, i32 776, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!746 = metadata !{i32 777, i32 0, metadata !745, null}
!747 = metadata !{i32 779, i32 0, metadata !745, null}
!748 = metadata !{i32 780, i32 0, metadata !730, null}
!749 = metadata !{i32 781, i32 0, metadata !730, null}
!750 = metadata !{i32 782, i32 0, metadata !730, null}
!751 = metadata !{i32 787, i32 0, metadata !730, null}
!752 = metadata !{i32 789, i32 0, metadata !730, null}
!753 = metadata !{i32 790, i32 0, metadata !730, null}
!754 = metadata !{i32 791, i32 0, metadata !730, null}
!755 = metadata !{i32 792, i32 0, metadata !730, null}
!756 = metadata !{i32 793, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !730, i32 793, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!758 = metadata !{i32 795, i32 0, metadata !759, null}
!759 = metadata !{i32 786443, metadata !1, metadata !757, i32 794, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!760 = metadata !{i32 796, i32 0, metadata !759, null}
!761 = metadata !{i32 797, i32 0, metadata !759, null}
!762 = metadata !{i32 798, i32 0, metadata !763, null}
!763 = metadata !{i32 786443, metadata !1, metadata !757, i32 798, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!764 = metadata !{i32 809, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !1, metadata !763, i32 799, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!766 = metadata !{i32 810, i32 0, metadata !765, null}
!767 = metadata !{i32 812, i32 0, metadata !765, null}
!768 = metadata !{i32 813, i32 0, metadata !765, null}
!769 = metadata !{i32 811, i32 0, metadata !765, null}
!770 = metadata !{i32 814, i32 0, metadata !765, null}
!771 = metadata !{i32 816, i32 0, metadata !730, null}
!772 = metadata !{i32 818, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !730, i32 817, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!774 = metadata !{i32 819, i32 0, metadata !773, null}
!775 = metadata !{i32 820, i32 0, metadata !773, null}
!776 = metadata !{i32 821, i32 0, metadata !773, null}
!777 = metadata !{i32 822, i32 0, metadata !773, null}
!778 = metadata !{i32 823, i32 0, metadata !773, null}
!779 = metadata !{i32 824, i32 0, metadata !773, null}
!780 = metadata !{i32 826, i32 0, metadata !730, null}
!781 = metadata !{i32 827, i32 0, metadata !730, null}
!782 = metadata !{i32 828, i32 0, metadata !730, null}
!783 = metadata !{i32 829, i32 0, metadata !730, null}
!784 = metadata !{i32 830, i32 0, metadata !730, null}
!785 = metadata !{i32 786689, metadata !51, metadata !"evaluate", metadata !13, i32 16777925, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 709]
!786 = metadata !{i32 709, i32 0, metadata !51, null}
!787 = metadata !{i32 786688, metadata !51, metadata !"l", metadata !13, i32 711, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 711]
!788 = metadata !{i32 711, i32 0, metadata !51, null}
!789 = metadata !{i32 786688, metadata !51, metadata !"r", metadata !13, i32 712, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 712]
!790 = metadata !{i32 712, i32 0, metadata !51, null}
!791 = metadata !{i32 786688, metadata !51, metadata !"fxn", metadata !13, i32 713, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fxn] [line 713]
!792 = metadata !{i32 713, i32 0, metadata !51, null}
!793 = metadata !{i32 786688, metadata !51, metadata !"val", metadata !13, i32 714, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 714]
!794 = metadata !{i32 714, i32 0, metadata !51, null}
!795 = metadata !{i32 719, i32 0, metadata !51, null}
!796 = metadata !{i32 720, i32 0, metadata !51, null}
!797 = metadata !{i32 722, i32 0, metadata !798, null}
!798 = metadata !{i32 786443, metadata !1, metadata !799, i32 722, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!799 = metadata !{i32 786443, metadata !1, metadata !51, i32 721, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!800 = metadata !{i32 723, i32 0, metadata !798, null}
!801 = metadata !{i32 724, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !798, i32 724, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!803 = metadata !{i32 725, i32 0, metadata !802, null}
!804 = metadata !{i32 727, i32 0, metadata !802, null}
!805 = metadata !{i32 728, i32 0, metadata !799, null}
!806 = metadata !{i32 729, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !799, i32 729, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!808 = metadata !{i32 731, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !810, i32 731, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!810 = metadata !{i32 786443, metadata !1, metadata !807, i32 730, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!811 = metadata !{i32 733, i32 0, metadata !812, null}
!812 = metadata !{i32 786443, metadata !1, metadata !809, i32 731, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!813 = metadata !{i32 734, i32 0, metadata !812, null}
!814 = metadata !{i32 735, i32 0, metadata !810, null}
!815 = metadata !{i32 736, i32 0, metadata !810, null}
!816 = metadata !{i32 737, i32 0, metadata !799, null}
!817 = metadata !{i32 738, i32 0, metadata !799, null}
!818 = metadata !{i32 739, i32 0, metadata !799, null}
!819 = metadata !{i32 740, i32 0, metadata !799, null}
!820 = metadata !{i32 786689, metadata !99, metadata !"v", metadata !13, i32 16777536, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 320]
!821 = metadata !{i32 320, i32 0, metadata !99, null}
!822 = metadata !{i32 786688, metadata !99, metadata !"buf", metadata !13, i32 322, metadata !625, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 322]
!823 = metadata !{i32 322, i32 0, metadata !99, null}
!824 = metadata !{i32 324, i32 0, metadata !99, null}
!825 = metadata !{i32 327, i32 0, metadata !826, null}
!826 = metadata !{i32 786443, metadata !1, metadata !99, i32 325, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!827 = metadata !{i32 328, i32 0, metadata !826, null}
!828 = metadata !{i32 329, i32 0, metadata !826, null}
!829 = metadata !{i32 331, i32 0, metadata !826, null}
!830 = metadata !{i32 333, i32 0, metadata !826, null}
!831 = metadata !{i32 335, i32 0, metadata !99, null}
!832 = metadata !{i32 786689, metadata !96, metadata !"v", metadata !13, i32 16777560, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 344]
!833 = metadata !{i32 344, i32 0, metadata !96, null}
!834 = metadata !{i32 346, i32 0, metadata !96, null}
!835 = metadata !{i32 349, i32 0, metadata !836, null}
!836 = metadata !{i32 786443, metadata !1, metadata !96, i32 347, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!837 = metadata !{i32 786688, metadata !838, metadata !"value", metadata !13, i32 352, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 352]
!838 = metadata !{i32 786443, metadata !1, metadata !836, i32 351, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!839 = metadata !{i32 352, i32 0, metadata !838, null}
!840 = metadata !{i32 786688, metadata !838, metadata !"cp", metadata !13, i32 353, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 353]
!841 = metadata !{i32 353, i32 0, metadata !838, null}
!842 = metadata !{i32 786688, metadata !838, metadata !"sign", metadata !13, i32 354, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 354]
!843 = metadata !{i32 354, i32 0, metadata !838, null}
!844 = metadata !{i32 786688, metadata !838, metadata !"neg", metadata !13, i32 356, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neg] [line 356]
!845 = metadata !{i32 356, i32 0, metadata !838, null}
!846 = metadata !{i32 358, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !838, i32 358, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!848 = metadata !{i32 359, i32 0, metadata !847, null}
!849 = metadata !{i32 361, i32 0, metadata !838, null}
!850 = metadata !{i32 363, i32 0, metadata !851, null}
!851 = metadata !{i32 786443, metadata !1, metadata !852, i32 363, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!852 = metadata !{i32 786443, metadata !1, metadata !838, i32 362, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!853 = metadata !{i32 786688, metadata !854, metadata !"new_v", metadata !13, i32 365, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_v] [line 365]
!854 = metadata !{i32 786443, metadata !1, metadata !851, i32 364, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!855 = metadata !{i32 365, i32 0, metadata !854, null}
!856 = metadata !{i32 366, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !854, i32 366, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!858 = metadata !{i32 371, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !860, i32 371, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!860 = metadata !{i32 786443, metadata !1, metadata !857, i32 368, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!861 = metadata !{i32 372, i32 0, metadata !862, null}
!862 = metadata !{i32 786443, metadata !1, metadata !859, i32 371, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!863 = metadata !{i32 373, i32 0, metadata !862, null}
!864 = metadata !{i32 375, i32 0, metadata !865, null}
!865 = metadata !{i32 786443, metadata !1, metadata !859, i32 374, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!866 = metadata !{i32 387, i32 0, metadata !860, null}
!867 = metadata !{i32 388, i32 0, metadata !854, null}
!868 = metadata !{i32 389, i32 0, metadata !854, null}
!869 = metadata !{i32 391, i32 0, metadata !851, null}
!870 = metadata !{i32 392, i32 0, metadata !852, null}
!871 = metadata !{i32 395, i32 0, metadata !838, null}
!872 = metadata !{i32 396, i32 0, metadata !838, null}
!873 = metadata !{i32 397, i32 0, metadata !838, null}
!874 = metadata !{i32 398, i32 0, metadata !838, null}
!875 = metadata !{i32 401, i32 0, metadata !836, null}
!876 = metadata !{i32 403, i32 0, metadata !96, null}
!877 = metadata !{i32 786689, metadata !56, metadata !"evaluate", metadata !13, i32 16777877, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 661]
!878 = metadata !{i32 661, i32 0, metadata !56, null}
!879 = metadata !{i32 786688, metadata !56, metadata !"l", metadata !13, i32 663, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 663]
!880 = metadata !{i32 663, i32 0, metadata !56, null}
!881 = metadata !{i32 786688, metadata !56, metadata !"r", metadata !13, i32 664, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 664]
!882 = metadata !{i32 664, i32 0, metadata !56, null}
!883 = metadata !{i32 786688, metadata !56, metadata !"fxn", metadata !13, i32 665, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fxn] [line 665]
!884 = metadata !{i32 665, i32 0, metadata !56, null}
!885 = metadata !{i32 786688, metadata !56, metadata !"val", metadata !13, i32 666, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 666]
!886 = metadata !{i32 666, i32 0, metadata !56, null}
!887 = metadata !{i32 671, i32 0, metadata !56, null}
!888 = metadata !{i32 672, i32 0, metadata !56, null}
!889 = metadata !{i32 674, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !891, i32 674, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!891 = metadata !{i32 786443, metadata !1, metadata !56, i32 673, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!892 = metadata !{i32 675, i32 0, metadata !890, null}
!893 = metadata !{i32 676, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !890, i32 676, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!895 = metadata !{i32 677, i32 0, metadata !894, null}
!896 = metadata !{i32 678, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !1, metadata !894, i32 678, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!898 = metadata !{i32 679, i32 0, metadata !897, null}
!899 = metadata !{i32 681, i32 0, metadata !897, null}
!900 = metadata !{i32 682, i32 0, metadata !891, null}
!901 = metadata !{i32 683, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !891, i32 683, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!903 = metadata !{i32 685, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !905, i32 685, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!905 = metadata !{i32 786443, metadata !1, metadata !902, i32 684, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!906 = metadata !{i32 687, i32 0, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !904, i32 685, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!908 = metadata !{i32 688, i32 0, metadata !907, null}
!909 = metadata !{i32 689, i32 0, metadata !910, null}
!910 = metadata !{i32 786443, metadata !1, metadata !905, i32 689, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!911 = metadata !{i32 690, i32 0, metadata !910, null}
!912 = metadata !{i32 693, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !914, i32 693, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!914 = metadata !{i32 786443, metadata !1, metadata !910, i32 692, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!915 = metadata !{i32 695, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !913, i32 693, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!917 = metadata !{i32 696, i32 0, metadata !916, null}
!918 = metadata !{i32 697, i32 0, metadata !914, null}
!919 = metadata !{i32 699, i32 0, metadata !905, null}
!920 = metadata !{i32 700, i32 0, metadata !891, null}
!921 = metadata !{i32 701, i32 0, metadata !891, null}
!922 = metadata !{i32 702, i32 0, metadata !891, null}
!923 = metadata !{i32 703, i32 0, metadata !891, null}
!924 = metadata !{i32 786689, metadata !100, metadata !"evaluate", metadata !13, i32 16777846, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 630]
!925 = metadata !{i32 630, i32 0, metadata !100, null}
!926 = metadata !{i32 786688, metadata !100, metadata !"l", metadata !13, i32 632, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 632]
!927 = metadata !{i32 632, i32 0, metadata !100, null}
!928 = metadata !{i32 786688, metadata !100, metadata !"r", metadata !13, i32 633, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 633]
!929 = metadata !{i32 633, i32 0, metadata !100, null}
!930 = metadata !{i32 786688, metadata !100, metadata !"v", metadata !13, i32 634, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 634]
!931 = metadata !{i32 634, i32 0, metadata !100, null}
!932 = metadata !{i32 639, i32 0, metadata !100, null}
!933 = metadata !{i32 640, i32 0, metadata !100, null}
!934 = metadata !{i32 642, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !936, i32 642, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!936 = metadata !{i32 786443, metadata !1, metadata !100, i32 641, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!937 = metadata !{i32 644, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !935, i32 643, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!939 = metadata !{i32 645, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !938, i32 645, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!941 = metadata !{i32 647, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !940, i32 646, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!943 = metadata !{i32 648, i32 0, metadata !942, null}
!944 = metadata !{i32 649, i32 0, metadata !942, null}
!945 = metadata !{i32 650, i32 0, metadata !942, null}
!946 = metadata !{i32 651, i32 0, metadata !938, null}
!947 = metadata !{i32 652, i32 0, metadata !938, null}
!948 = metadata !{i32 654, i32 0, metadata !935, null}
!949 = metadata !{i32 655, i32 0, metadata !936, null}
!950 = metadata !{i32 786689, metadata !107, metadata !"evaluate", metadata !13, i32 16777763, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 547]
!951 = metadata !{i32 547, i32 0, metadata !107, null}
!952 = metadata !{i32 786688, metadata !107, metadata !"l", metadata !13, i32 549, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 549]
!953 = metadata !{i32 549, i32 0, metadata !107, null}
!954 = metadata !{i32 786688, metadata !107, metadata !"r", metadata !13, i32 550, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 550]
!955 = metadata !{i32 550, i32 0, metadata !107, null}
!956 = metadata !{i32 786688, metadata !107, metadata !"v", metadata !13, i32 551, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 551]
!957 = metadata !{i32 551, i32 0, metadata !107, null}
!958 = metadata !{i32 786688, metadata !107, metadata !"i1", metadata !13, i32 552, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 552]
!959 = metadata !{i32 552, i32 0, metadata !107, null}
!960 = metadata !{i32 786688, metadata !107, metadata !"i2", metadata !13, i32 553, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 553]
!961 = metadata !{i32 553, i32 0, metadata !107, null}
!962 = metadata !{i32 558, i32 0, metadata !963, null}
!963 = metadata !{i32 786443, metadata !1, metadata !107, i32 558, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!964 = metadata !{i32 560, i32 0, metadata !965, null}
!965 = metadata !{i32 786443, metadata !1, metadata !966, i32 560, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!966 = metadata !{i32 786443, metadata !1, metadata !963, i32 559, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!967 = metadata !{i32 561, i32 0, metadata !965, null}
!968 = metadata !{i32 562, i32 0, metadata !966, null}
!969 = metadata !{i32 564, i32 0, metadata !970, null}
!970 = metadata !{i32 786443, metadata !1, metadata !963, i32 564, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!971 = metadata !{i32 566, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !970, i32 565, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!973 = metadata !{i32 567, i32 0, metadata !972, null}
!974 = metadata !{i32 568, i32 0, metadata !972, null}
!975 = metadata !{i32 569, i32 0, metadata !972, null}
!976 = metadata !{i32 570, i32 0, metadata !972, null}
!977 = metadata !{i32 572, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !970, i32 572, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!979 = metadata !{i32 574, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !978, i32 573, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!981 = metadata !{i32 575, i32 0, metadata !980, null}
!982 = metadata !{i32 576, i32 0, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !980, i32 576, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!984 = metadata !{i32 578, i32 0, metadata !985, null}
!985 = metadata !{i32 786443, metadata !1, metadata !983, i32 577, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!986 = metadata !{i32 579, i32 0, metadata !985, null}
!987 = metadata !{i32 580, i32 0, metadata !985, null}
!988 = metadata !{i32 582, i32 0, metadata !983, null}
!989 = metadata !{i32 583, i32 0, metadata !980, null}
!990 = metadata !{i32 584, i32 0, metadata !980, null}
!991 = metadata !{i32 586, i32 0, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !978, i32 586, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!993 = metadata !{i32 588, i32 0, metadata !994, null}
!994 = metadata !{i32 786443, metadata !1, metadata !992, i32 587, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!995 = metadata !{i32 589, i32 0, metadata !994, null}
!996 = metadata !{i32 590, i32 0, metadata !994, null}
!997 = metadata !{i32 591, i32 0, metadata !994, null}
!998 = metadata !{i32 592, i32 0, metadata !994, null}
!999 = metadata !{i32 593, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !994, i32 593, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1001 = metadata !{i32 594, i32 0, metadata !1000, null}
!1002 = metadata !{i32 595, i32 0, metadata !994, null}
!1003 = metadata !{i32 596, i32 0, metadata !994, null}
!1004 = metadata !{i32 597, i32 0, metadata !994, null}
!1005 = metadata !{i32 599, i32 0, metadata !1006, null}
!1006 = metadata !{i32 786443, metadata !1, metadata !992, i32 599, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1007 = metadata !{i32 601, i32 0, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !1, metadata !1006, i32 600, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1009 = metadata !{i32 602, i32 0, metadata !1008, null}
!1010 = metadata !{i32 603, i32 0, metadata !1008, null}
!1011 = metadata !{i32 604, i32 0, metadata !1008, null}
!1012 = metadata !{i32 605, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !1008, i32 605, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1014 = metadata !{i32 606, i32 0, metadata !1013, null}
!1015 = metadata !{i32 608, i32 0, metadata !1013, null}
!1016 = metadata !{i32 611, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1013, i32 610, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1018 = metadata !{i32 612, i32 0, metadata !1017, null}
!1019 = metadata !{i32 613, i32 0, metadata !1017, null}
!1020 = metadata !{i32 615, i32 0, metadata !1017, null}
!1021 = metadata !{i32 617, i32 0, metadata !1008, null}
!1022 = metadata !{i32 618, i32 0, metadata !1008, null}
!1023 = metadata !{i32 619, i32 0, metadata !1008, null}
!1024 = metadata !{i32 620, i32 0, metadata !1008, null}
!1025 = metadata !{i32 623, i32 0, metadata !1006, null}
!1026 = metadata !{i32 624, i32 0, metadata !107, null}
!1027 = metadata !{i32 786689, metadata !101, metadata !"sv", metadata !13, i32 16777666, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sv] [line 450]
!1028 = metadata !{i32 450, i32 0, metadata !101, null}
!1029 = metadata !{i32 786689, metadata !101, metadata !"pv", metadata !13, i32 33554882, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pv] [line 450]
!1030 = metadata !{i32 786688, metadata !101, metadata !"v", metadata !13, i32 452, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 452]
!1031 = metadata !{i32 452, i32 0, metadata !101, null}
!1032 = metadata !{i32 786688, metadata !101, metadata !"errmsg", metadata !13, i32 453, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errmsg] [line 453]
!1033 = metadata !{i32 453, i32 0, metadata !101, null}
!1034 = metadata !{i32 786688, metadata !101, metadata !"re_buffer", metadata !13, i32 454, metadata !1035, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [re_buffer] [line 454]
!1035 = metadata !{i32 786451, metadata !1036, null, metadata !"re_pattern_buffer", i32 334, i64 512, i64 64, i32 0, i32 0, null, metadata !1037, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [re_pattern_buffer] [line 334, size 512, align 64, offset 0] [def] [from ]
!1036 = metadata !{metadata !"../lib/regex.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src"}
!1037 = metadata !{metadata !1038, metadata !1041, metadata !1042, metadata !1043, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054}
!1038 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"buffer", i32 340, i64 64, i64 64, i64 0, i32 0, metadata !1039} ; [ DW_TAG_member ] [buffer] [line 340, size 64, align 64, offset 0] [from ]
!1039 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1040} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!1040 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!1041 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"allocated", i32 343, i64 64, i64 64, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [allocated] [line 343, size 64, align 64, offset 64] [from long unsigned int]
!1042 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"used", i32 346, i64 64, i64 64, i64 128, i32 0, metadata !68} ; [ DW_TAG_member ] [used] [line 346, size 64, align 64, offset 128] [from long unsigned int]
!1043 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"syntax", i32 349, i64 64, i64 64, i64 192, i32 0, metadata !1044} ; [ DW_TAG_member ] [syntax] [line 349, size 64, align 64, offset 192] [from reg_syntax_t]
!1044 = metadata !{i32 786454, metadata !1036, null, metadata !"reg_syntax_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [reg_syntax_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!1045 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"fastmap", i32 354, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [fastmap] [line 354, size 64, align 64, offset 256] [from ]
!1046 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"translate", i32 360, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [translate] [line 360, size 64, align 64, offset 320] [from ]
!1047 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"re_nsub", i32 363, i64 64, i64 64, i64 384, i32 0, metadata !464} ; [ DW_TAG_member ] [re_nsub] [line 363, size 64, align 64, offset 384] [from size_t]
!1048 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"can_be_null", i32 370, i64 1, i64 32, i64 448, i32 0, metadata !211} ; [ DW_TAG_member ] [can_be_null] [line 370, size 1, align 32, offset 448] [from unsigned int]
!1049 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"regs_allocated", i32 379, i64 2, i64 32, i64 449, i32 0, metadata !211} ; [ DW_TAG_member ] [regs_allocated] [line 379, size 2, align 32, offset 449] [from unsigned int]
!1050 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"fastmap_accurate", i32 383, i64 1, i64 32, i64 451, i32 0, metadata !211} ; [ DW_TAG_member ] [fastmap_accurate] [line 383, size 1, align 32, offset 451] [from unsigned int]
!1051 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"no_sub", i32 387, i64 1, i64 32, i64 452, i32 0, metadata !211} ; [ DW_TAG_member ] [no_sub] [line 387, size 1, align 32, offset 452] [from unsigned int]
!1052 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"not_bol", i32 391, i64 1, i64 32, i64 453, i32 0, metadata !211} ; [ DW_TAG_member ] [not_bol] [line 391, size 1, align 32, offset 453] [from unsigned int]
!1053 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"not_eol", i32 394, i64 1, i64 32, i64 454, i32 0, metadata !211} ; [ DW_TAG_member ] [not_eol] [line 394, size 1, align 32, offset 454] [from unsigned int]
!1054 = metadata !{i32 786445, metadata !1036, metadata !1035, metadata !"newline_anchor", i32 397, i64 1, i64 32, i64 455, i32 0, metadata !211} ; [ DW_TAG_member ] [newline_anchor] [line 397, size 1, align 32, offset 455] [from unsigned int]
!1055 = metadata !{i32 454, i32 0, metadata !101, null}
!1056 = metadata !{i32 786688, metadata !101, metadata !"re_regs", metadata !13, i32 455, metadata !1057, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [re_regs] [line 455]
!1057 = metadata !{i32 786451, metadata !1036, null, metadata !"re_registers", i32 410, i64 192, i64 64, i32 0, i32 0, null, metadata !1058, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [re_registers] [line 410, size 192, align 64, offset 0] [def] [from ]
!1058 = metadata !{metadata !1059, metadata !1060, metadata !1063}
!1059 = metadata !{i32 786445, metadata !1036, metadata !1057, metadata !"num_regs", i32 412, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [num_regs] [line 412, size 32, align 32, offset 0] [from unsigned int]
!1060 = metadata !{i32 786445, metadata !1036, metadata !1057, metadata !"start", i32 413, i64 64, i64 64, i64 64, i32 0, metadata !1061} ; [ DW_TAG_member ] [start] [line 413, size 64, align 64, offset 64] [from ]
!1061 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1062} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from regoff_t]
!1062 = metadata !{i32 786454, metadata !1036, null, metadata !"regoff_t", i32 405, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [regoff_t] [line 405, size 0, align 0, offset 0] [from int]
!1063 = metadata !{i32 786445, metadata !1036, metadata !1057, metadata !"end", i32 414, i64 64, i64 64, i64 128, i32 0, metadata !1061} ; [ DW_TAG_member ] [end] [line 414, size 64, align 64, offset 128] [from ]
!1064 = metadata !{i32 455, i32 0, metadata !101, null}
!1065 = metadata !{i32 786688, metadata !101, metadata !"len", metadata !13, i32 456, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 456]
!1066 = metadata !{i32 456, i32 0, metadata !101, null}
!1067 = metadata !{i32 786688, metadata !101, metadata !"matchlen", metadata !13, i32 457, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matchlen] [line 457]
!1068 = metadata !{i32 457, i32 0, metadata !101, null}
!1069 = metadata !{i32 459, i32 0, metadata !101, null}
!1070 = metadata !{i32 460, i32 0, metadata !101, null}
!1071 = metadata !{i32 462, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !101, i32 462, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1073 = metadata !{i32 470, i32 0, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !1, metadata !1072, i32 463, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1075 = metadata !{i32 476, i32 0, metadata !1074, null}
!1076 = metadata !{i32 478, i32 0, metadata !101, null}
!1077 = metadata !{i32 479, i32 0, metadata !101, null}
!1078 = metadata !{i32 480, i32 0, metadata !101, null}
!1079 = metadata !{i32 481, i32 0, metadata !101, null}
!1080 = metadata !{i32 482, i32 0, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !1, metadata !101, i32 482, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1082 = metadata !{i32 483, i32 0, metadata !1081, null}
!1083 = metadata !{i32 484, i32 0, metadata !101, null}
!1084 = metadata !{i32 485, i32 0, metadata !101, null}
!1085 = metadata !{i32 486, i32 0, metadata !101, null}
!1086 = metadata !{i32 487, i32 0, metadata !101, null}
!1087 = metadata !{i32 488, i32 0, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !1, metadata !101, i32 488, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1089 = metadata !{i32 490, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1088, i32 488, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1091 = metadata !{i32 491, i32 0, metadata !1090, null}
!1092 = metadata !{i32 493, i32 0, metadata !101, null}
!1093 = metadata !{i32 494, i32 0, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !1, metadata !101, i32 494, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1095 = metadata !{i32 497, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1097, i32 497, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1097 = metadata !{i32 786443, metadata !1, metadata !1094, i32 495, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1098 = metadata !{i32 499, i32 0, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !1, metadata !1096, i32 498, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1100 = metadata !{i32 500, i32 0, metadata !1099, null}
!1101 = metadata !{i32 501, i32 0, metadata !1099, null}
!1102 = metadata !{i32 503, i32 0, metadata !1096, null}
!1103 = metadata !{i32 504, i32 0, metadata !1097, null}
!1104 = metadata !{i32 508, i32 0, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1, metadata !1106, i32 508, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1106 = metadata !{i32 786443, metadata !1, metadata !1094, i32 506, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1107 = metadata !{i32 509, i32 0, metadata !1105, null}
!1108 = metadata !{i32 511, i32 0, metadata !1105, null}
!1109 = metadata !{i32 513, i32 0, metadata !101, null}
!1110 = metadata !{i32 514, i32 0, metadata !101, null}
!1111 = metadata !{i32 786689, metadata !104, metadata !"s", metadata !13, i32 16777461, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 245]
!1112 = metadata !{i32 245, i32 0, metadata !104, null}
!1113 = metadata !{i32 786688, metadata !104, metadata !"v", metadata !13, i32 247, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 247]
!1114 = metadata !{i32 247, i32 0, metadata !104, null}
!1115 = metadata !{i32 248, i32 0, metadata !104, null}
!1116 = metadata !{i32 249, i32 0, metadata !104, null}
!1117 = metadata !{i32 250, i32 0, metadata !104, null}
!1118 = metadata !{i32 786689, metadata !108, metadata !"evaluate", metadata !13, i32 16777736, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [evaluate] [line 520]
!1119 = metadata !{i32 520, i32 0, metadata !108, null}
!1120 = metadata !{i32 786688, metadata !108, metadata !"v", metadata !13, i32 522, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 522]
!1121 = metadata !{i32 522, i32 0, metadata !108, null}
!1122 = metadata !{i32 527, i32 0, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !1, metadata !108, i32 527, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1124 = metadata !{i32 528, i32 0, metadata !1123, null}
!1125 = metadata !{i32 530, i32 0, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !1, metadata !108, i32 530, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1127 = metadata !{i32 532, i32 0, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !1, metadata !1126, i32 531, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1129 = metadata !{i32 533, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !1128, i32 533, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1131 = metadata !{i32 534, i32 0, metadata !1130, null}
!1132 = metadata !{i32 535, i32 0, metadata !1128, null}
!1133 = metadata !{i32 538, i32 0, metadata !1134, null}
!1134 = metadata !{i32 786443, metadata !1, metadata !108, i32 538, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/src/expr.c]
!1135 = metadata !{i32 539, i32 0, metadata !1134, null}
!1136 = metadata !{i32 541, i32 0, metadata !108, null}
!1137 = metadata !{i32 542, i32 0, metadata !108, null}
!1138 = metadata !{i32 786689, metadata !137, metadata !"file", metadata !138, i32 16777263, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 47]
!1139 = metadata !{i32 47, i32 0, metadata !137, null}
!1140 = metadata !{i32 49, i32 0, metadata !137, null}
!1141 = metadata !{i32 50, i32 0, metadata !137, null}
!1142 = metadata !{i32 786688, metadata !141, metadata !"prev_fail", metadata !138, i32 76, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev_fail] [line 76]
!1143 = metadata !{i32 76, i32 0, metadata !141, null}
!1144 = metadata !{i32 786688, metadata !141, metadata !"none_pending", metadata !138, i32 77, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [none_pending] [line 77]
!1145 = metadata !{i32 77, i32 0, metadata !141, null}
!1146 = metadata !{i32 786688, metadata !141, metadata !"fclose_fail", metadata !138, i32 78, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fclose_fail] [line 78]
!1147 = metadata !{i32 78, i32 0, metadata !141, null}
!1148 = metadata !{i32 80, i32 0, metadata !1149, null}
!1149 = metadata !{i32 786443, metadata !135, metadata !141, i32 80, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/closeout.c]
!1150 = metadata !{i32 786688, metadata !1151, metadata !"e", metadata !138, i32 82, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 82]
!1151 = metadata !{i32 786443, metadata !135, metadata !1149, i32 81, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/closeout.c]
!1152 = metadata !{i32 82, i32 0, metadata !1151, null}
!1153 = metadata !{i32 786688, metadata !1151, metadata !"write_error", metadata !138, i32 83, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [write_error] [line 83]
!1154 = metadata !{i32 83, i32 0, metadata !1151, null}
!1155 = metadata !{i32 91, i32 0, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !135, metadata !1151, i32 91, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/closeout.c]
!1157 = metadata !{i32 92, i32 0, metadata !1156, null}
!1158 = metadata !{i32 94, i32 0, metadata !1151, null}
!1159 = metadata !{i32 95, i32 0, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !135, metadata !1151, i32 95, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/closeout.c]
!1161 = metadata !{i32 96, i32 0, metadata !1160, null}
!1162 = metadata !{i32 99, i32 0, metadata !1160, null}
!1163 = metadata !{i32 100, i32 0, metadata !1151, null}
!1164 = metadata !{i32 101, i32 0, metadata !141, null}
!1165 = metadata !{i32 786689, metadata !153, metadata !"i", metadata !155, i32 16777244, metadata !158, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 28]
!1166 = metadata !{i32 28, i32 0, metadata !153, null}
!1167 = metadata !{i32 786689, metadata !153, metadata !"buf", metadata !155, i32 33554460, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 28]
!1168 = metadata !{i32 786688, metadata !153, metadata !"p", metadata !155, i32 30, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 30]
!1169 = metadata !{i32 30, i32 0, metadata !153, null}
!1170 = metadata !{i32 31, i32 0, metadata !153, null}
!1171 = metadata !{i32 33, i32 0, metadata !1172, null}
!1172 = metadata !{i32 786443, metadata !154, metadata !153, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/./inttostr.c]
!1173 = metadata !{i32 35, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !154, metadata !1172, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/./inttostr.c]
!1175 = metadata !{i32 36, i32 0, metadata !1174, null}
!1176 = metadata !{i32 39, i32 0, metadata !1174, null}
!1177 = metadata !{i32 40, i32 0, metadata !1174, null}
!1178 = metadata !{i32 43, i32 0, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !154, metadata !1172, i32 42, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/./inttostr.c]
!1180 = metadata !{i32 44, i32 0, metadata !1179, null}
!1181 = metadata !{i32 48, i32 0, metadata !153, null}
!1182 = metadata !{i32 786689, metadata !162, metadata !"argc", metadata !163, i32 16777263, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 47]
!1183 = metadata !{i32 47, i32 0, metadata !162, null}
!1184 = metadata !{i32 786689, metadata !162, metadata !"argv", metadata !163, i32 33554480, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 48]
!1185 = metadata !{i32 48, i32 0, metadata !162, null}
!1186 = metadata !{i32 786689, metadata !162, metadata !"command_name", metadata !163, i32 50331697, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [command_name] [line 49]
!1187 = metadata !{i32 49, i32 0, metadata !162, null}
!1188 = metadata !{i32 786689, metadata !162, metadata !"package", metadata !163, i32 67108914, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [package] [line 50]
!1189 = metadata !{i32 50, i32 0, metadata !162, null}
!1190 = metadata !{i32 786689, metadata !162, metadata !"version", metadata !163, i32 83886131, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 51]
!1191 = metadata !{i32 51, i32 0, metadata !162, null}
!1192 = metadata !{i32 786689, metadata !162, metadata !"usage_func", metadata !163, i32 100663348, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [usage_func] [line 52]
!1193 = metadata !{i32 52, i32 0, metadata !162, null}
!1194 = metadata !{i32 786688, metadata !162, metadata !"c", metadata !163, i32 55, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 55]
!1195 = metadata !{i32 55, i32 0, metadata !162, null}
!1196 = metadata !{i32 786688, metadata !162, metadata !"saved_opterr", metadata !163, i32 56, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [saved_opterr] [line 56]
!1197 = metadata !{i32 56, i32 0, metadata !162, null}
!1198 = metadata !{i32 58, i32 0, metadata !162, null} ; [ DW_TAG_imported_module ]
!1199 = metadata !{i32 61, i32 0, metadata !162, null}
!1200 = metadata !{i32 63, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !160, metadata !162, i32 63, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/long-options.c]
!1202 = metadata !{i32 64, i32 0, metadata !1201, null}
!1203 = metadata !{i32 66, i32 0, metadata !1204, null}
!1204 = metadata !{i32 786443, metadata !160, metadata !1201, i32 65, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/long-options.c]
!1205 = metadata !{i32 69, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !160, metadata !1204, i32 67, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/long-options.c]
!1207 = metadata !{i32 786688, metadata !1208, metadata !"authors", metadata !163, i32 73, metadata !1209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [authors] [line 73]
!1208 = metadata !{i32 786443, metadata !160, metadata !1206, i32 72, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/long-options.c]
!1209 = metadata !{i32 786454, metadata !160, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !1210} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!1210 = metadata !{i32 786454, metadata !160, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !1211} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!1211 = metadata !{i32 786454, metadata !160, null, metadata !"__builtin_va_list", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !1212} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 73, size 0, align 0, offset 0] [from ]
!1212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !1213, metadata !328, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!1213 = metadata !{i32 786454, metadata !160, null, metadata !"__va_list_tag", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !1214} ; [ DW_TAG_typedef ] [__va_list_tag] [line 73, size 0, align 0, offset 0] [from __va_list_tag]
!1214 = metadata !{i32 786451, metadata !160, null, metadata !"__va_list_tag", i32 73, i64 192, i64 64, i32 0, i32 0, null, metadata !1215, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 73, size 192, align 64, offset 0] [def] [from ]
!1215 = metadata !{metadata !1216, metadata !1217, metadata !1218, metadata !1219}
!1216 = metadata !{i32 786445, metadata !160, metadata !1214, metadata !"gp_offset", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [gp_offset] [line 73, size 32, align 32, offset 0] [from unsigned int]
!1217 = metadata !{i32 786445, metadata !160, metadata !1214, metadata !"fp_offset", i32 73, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [fp_offset] [line 73, size 32, align 32, offset 32] [from unsigned int]
!1218 = metadata !{i32 786445, metadata !160, metadata !1214, metadata !"overflow_arg_area", i32 73, i64 64, i64 64, i64 64, i32 0, metadata !331} ; [ DW_TAG_member ] [overflow_arg_area] [line 73, size 64, align 64, offset 64] [from ]
!1219 = metadata !{i32 786445, metadata !160, metadata !1214, metadata !"reg_save_area", i32 73, i64 64, i64 64, i64 128, i32 0, metadata !331} ; [ DW_TAG_member ] [reg_save_area] [line 73, size 64, align 64, offset 128] [from ]
!1220 = metadata !{i32 73, i32 0, metadata !1208, null}
!1221 = metadata !{i32 74, i32 0, metadata !1208, null}
!1222 = metadata !{i32 75, i32 0, metadata !1208, null}
!1223 = metadata !{i32 76, i32 0, metadata !1208, null}
!1224 = metadata !{i32 81, i32 0, metadata !1206, null}
!1225 = metadata !{i32 83, i32 0, metadata !1204, null}
!1226 = metadata !{i32 86, i32 0, metadata !162, null}
!1227 = metadata !{i32 90, i32 0, metadata !162, null}
!1228 = metadata !{i32 91, i32 0, metadata !162, null}
!1229 = metadata !{i32 786689, metadata !201, metadata !"o", metadata !202, i32 16777338, metadata !205, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 122]
!1230 = metadata !{i32 122, i32 0, metadata !201, null}
!1231 = metadata !{i32 786688, metadata !201, metadata !"e", metadata !202, i32 124, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 124]
!1232 = metadata !{i32 124, i32 0, metadata !201, null}
!1233 = metadata !{i32 786688, metadata !201, metadata !"p", metadata !202, i32 125, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 125]
!1234 = metadata !{i32 125, i32 0, metadata !201, null}
!1235 = metadata !{i32 126, i32 0, metadata !201, null}
!1236 = metadata !{i32 127, i32 0, metadata !201, null}
!1237 = metadata !{i32 128, i32 0, metadata !201, null}
!1238 = metadata !{i32 786689, metadata !214, metadata !"o", metadata !202, i32 16777349, metadata !205, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 133]
!1239 = metadata !{i32 133, i32 0, metadata !214, null}
!1240 = metadata !{i32 135, i32 0, metadata !214, null}
!1241 = metadata !{i32 786689, metadata !217, metadata !"o", metadata !202, i32 16777357, metadata !205, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 141]
!1242 = metadata !{i32 141, i32 0, metadata !217, null}
!1243 = metadata !{i32 786689, metadata !217, metadata !"s", metadata !202, i32 33554573, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 141]
!1244 = metadata !{i32 143, i32 0, metadata !217, null}
!1245 = metadata !{i32 144, i32 0, metadata !217, null}
!1246 = metadata !{i32 786689, metadata !220, metadata !"o", metadata !202, i32 16777368, metadata !205, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 152]
!1247 = metadata !{i32 152, i32 0, metadata !220, null}
!1248 = metadata !{i32 786689, metadata !220, metadata !"c", metadata !202, i32 33554584, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 152]
!1249 = metadata !{i32 786689, metadata !220, metadata !"i", metadata !202, i32 50331800, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 152]
!1250 = metadata !{i32 786688, metadata !220, metadata !"uc", metadata !202, i32 154, metadata !1040, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc] [line 154]
!1251 = metadata !{i32 154, i32 0, metadata !220, null}
!1252 = metadata !{i32 786688, metadata !220, metadata !"p", metadata !202, i32 155, metadata !1253, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 155]
!1253 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!1254 = metadata !{i32 155, i32 0, metadata !220, null}
!1255 = metadata !{i32 786688, metadata !220, metadata !"shift", metadata !202, i32 157, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 157]
!1256 = metadata !{i32 157, i32 0, metadata !220, null}
!1257 = metadata !{i32 786688, metadata !220, metadata !"r", metadata !202, i32 158, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 158]
!1258 = metadata !{i32 158, i32 0, metadata !220, null}
!1259 = metadata !{i32 159, i32 0, metadata !220, null}
!1260 = metadata !{i32 160, i32 0, metadata !220, null}
!1261 = metadata !{i32 786689, metadata !223, metadata !"buffer", metadata !202, i32 16777742, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 526]
!1262 = metadata !{i32 526, i32 0, metadata !223, null}
!1263 = metadata !{i32 786689, metadata !223, metadata !"buffersize", metadata !202, i32 33554958, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffersize] [line 526]
!1264 = metadata !{i32 786689, metadata !223, metadata !"arg", metadata !202, i32 50332175, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 527]
!1265 = metadata !{i32 527, i32 0, metadata !223, null}
!1266 = metadata !{i32 786689, metadata !223, metadata !"argsize", metadata !202, i32 67109391, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 527]
!1267 = metadata !{i32 786689, metadata !223, metadata !"o", metadata !202, i32 83886608, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 528]
!1268 = metadata !{i32 528, i32 0, metadata !223, null}
!1269 = metadata !{i32 786688, metadata !223, metadata !"p", metadata !202, i32 530, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 530]
!1270 = metadata !{i32 530, i32 0, metadata !223, null}
!1271 = metadata !{i32 786688, metadata !223, metadata !"e", metadata !202, i32 531, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 531]
!1272 = metadata !{i32 531, i32 0, metadata !223, null}
!1273 = metadata !{i32 786688, metadata !223, metadata !"r", metadata !202, i32 532, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 532]
!1274 = metadata !{i32 532, i32 0, metadata !223, null}
!1275 = metadata !{i32 534, i32 0, metadata !223, null}
!1276 = metadata !{i32 535, i32 0, metadata !223, null}
!1277 = metadata !{i32 786689, metadata !229, metadata !"arg", metadata !202, i32 16777757, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 541]
!1278 = metadata !{i32 541, i32 0, metadata !229, null}
!1279 = metadata !{i32 786689, metadata !229, metadata !"argsize", metadata !202, i32 33554973, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 541]
!1280 = metadata !{i32 786689, metadata !229, metadata !"o", metadata !202, i32 50332190, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 542]
!1281 = metadata !{i32 542, i32 0, metadata !229, null}
!1282 = metadata !{i32 786688, metadata !229, metadata !"e", metadata !202, i32 544, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 544]
!1283 = metadata !{i32 544, i32 0, metadata !229, null}
!1284 = metadata !{i32 786688, metadata !229, metadata !"bufsize", metadata !202, i32 545, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufsize] [line 545]
!1285 = metadata !{i32 545, i32 0, metadata !229, null}
!1286 = metadata !{i32 786688, metadata !229, metadata !"buf", metadata !202, i32 546, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 546]
!1287 = metadata !{i32 546, i32 0, metadata !229, null}
!1288 = metadata !{i32 547, i32 0, metadata !229, null}
!1289 = metadata !{i32 548, i32 0, metadata !229, null}
!1290 = metadata !{i32 549, i32 0, metadata !229, null}
!1291 = metadata !{i32 786689, metadata !232, metadata !"n", metadata !202, i32 16777835, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 619]
!1292 = metadata !{i32 619, i32 0, metadata !232, null}
!1293 = metadata !{i32 786689, metadata !232, metadata !"arg", metadata !202, i32 33555051, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 619]
!1294 = metadata !{i32 621, i32 0, metadata !232, null}
!1295 = metadata !{i32 786689, metadata !235, metadata !"arg", metadata !202, i32 16777841, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 625]
!1296 = metadata !{i32 625, i32 0, metadata !235, null}
!1297 = metadata !{i32 627, i32 0, metadata !235, null}
!1298 = metadata !{i32 786689, metadata !238, metadata !"n", metadata !202, i32 16777857, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 641]
!1299 = metadata !{i32 641, i32 0, metadata !238, null}
!1300 = metadata !{i32 786689, metadata !238, metadata !"s", metadata !202, i32 33555073, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 641]
!1301 = metadata !{i32 786689, metadata !238, metadata !"arg", metadata !202, i32 50332289, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 641]
!1302 = metadata !{i32 786688, metadata !238, metadata !"o", metadata !202, i32 643, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 643]
!1303 = metadata !{i32 643, i32 0, metadata !238, null}
!1304 = metadata !{i32 644, i32 0, metadata !238, null}
!1305 = metadata !{i32 786689, metadata !241, metadata !"n", metadata !202, i32 16777864, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 648]
!1306 = metadata !{i32 648, i32 0, metadata !241, null}
!1307 = metadata !{i32 786689, metadata !241, metadata !"s", metadata !202, i32 33555080, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 648]
!1308 = metadata !{i32 786689, metadata !241, metadata !"arg", metadata !202, i32 50332297, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 649]
!1309 = metadata !{i32 649, i32 0, metadata !241, null}
!1310 = metadata !{i32 786689, metadata !241, metadata !"argsize", metadata !202, i32 67109513, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 649]
!1311 = metadata !{i32 786688, metadata !241, metadata !"o", metadata !202, i32 651, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 651]
!1312 = metadata !{i32 651, i32 0, metadata !241, null}
!1313 = metadata !{i32 652, i32 0, metadata !241, null}
!1314 = metadata !{i32 786689, metadata !244, metadata !"s", metadata !202, i32 16777872, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 656]
!1315 = metadata !{i32 656, i32 0, metadata !244, null}
!1316 = metadata !{i32 786689, metadata !244, metadata !"arg", metadata !202, i32 33555088, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 656]
!1317 = metadata !{i32 658, i32 0, metadata !244, null}
!1318 = metadata !{i32 786689, metadata !247, metadata !"arg", metadata !202, i32 16777878, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 662]
!1319 = metadata !{i32 662, i32 0, metadata !247, null}
!1320 = metadata !{i32 786689, metadata !247, metadata !"ch", metadata !202, i32 33555094, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ch] [line 662]
!1321 = metadata !{i32 786688, metadata !247, metadata !"options", metadata !202, i32 664, metadata !206, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [options] [line 664]
!1322 = metadata !{i32 664, i32 0, metadata !247, null}
!1323 = metadata !{i32 665, i32 0, metadata !247, null}
!1324 = metadata !{i32 666, i32 0, metadata !247, null}
!1325 = metadata !{i32 667, i32 0, metadata !247, null}
!1326 = metadata !{i32 786689, metadata !250, metadata !"arg", metadata !202, i32 16777887, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 671]
!1327 = metadata !{i32 671, i32 0, metadata !250, null}
!1328 = metadata !{i32 673, i32 0, metadata !250, null}
!1329 = metadata !{i32 786689, metadata !257, metadata !"buffer", metadata !202, i32 16777404, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 188]
!1330 = metadata !{i32 188, i32 0, metadata !257, null}
!1331 = metadata !{i32 786689, metadata !257, metadata !"buffersize", metadata !202, i32 33554620, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffersize] [line 188]
!1332 = metadata !{i32 786689, metadata !257, metadata !"arg", metadata !202, i32 50331837, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 189]
!1333 = metadata !{i32 189, i32 0, metadata !257, null}
!1334 = metadata !{i32 786689, metadata !257, metadata !"argsize", metadata !202, i32 67109053, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 189]
!1335 = metadata !{i32 786689, metadata !257, metadata !"quoting_style", metadata !202, i32 83886270, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [quoting_style] [line 190]
!1336 = metadata !{i32 190, i32 0, metadata !257, null}
!1337 = metadata !{i32 786689, metadata !257, metadata !"o", metadata !202, i32 100663487, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 191]
!1338 = metadata !{i32 191, i32 0, metadata !257, null}
!1339 = metadata !{i32 786688, metadata !257, metadata !"i", metadata !202, i32 193, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 193]
!1340 = metadata !{i32 193, i32 0, metadata !257, null}
!1341 = metadata !{i32 786688, metadata !257, metadata !"len", metadata !202, i32 194, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 194]
!1342 = metadata !{i32 194, i32 0, metadata !257, null}
!1343 = metadata !{i32 786688, metadata !257, metadata !"quote_string", metadata !202, i32 195, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quote_string] [line 195]
!1344 = metadata !{i32 195, i32 0, metadata !257, null}
!1345 = metadata !{i32 786688, metadata !257, metadata !"quote_string_len", metadata !202, i32 196, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quote_string_len] [line 196]
!1346 = metadata !{i32 196, i32 0, metadata !257, null}
!1347 = metadata !{i32 786688, metadata !257, metadata !"backslash_escapes", metadata !202, i32 197, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [backslash_escapes] [line 197]
!1348 = metadata !{i32 197, i32 0, metadata !257, null}
!1349 = metadata !{i32 786688, metadata !257, metadata !"unibyte_locale", metadata !202, i32 198, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unibyte_locale] [line 198]
!1350 = metadata !{i32 198, i32 0, metadata !257, null}
!1351 = metadata !{i32 209, i32 0, metadata !257, null}
!1352 = metadata !{i32 212, i32 0, metadata !1353, null}
!1353 = metadata !{i32 786443, metadata !181, metadata !257, i32 210, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1354 = metadata !{i32 212, i32 0, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !181, metadata !1356, i32 212, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1356 = metadata !{i32 786443, metadata !181, metadata !1353, i32 212, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1357 = metadata !{i32 212, i32 0, metadata !1356, null}
!1358 = metadata !{i32 213, i32 0, metadata !1353, null}
!1359 = metadata !{i32 214, i32 0, metadata !1353, null}
!1360 = metadata !{i32 215, i32 0, metadata !1353, null}
!1361 = metadata !{i32 216, i32 0, metadata !1353, null}
!1362 = metadata !{i32 219, i32 0, metadata !1353, null}
!1363 = metadata !{i32 220, i32 0, metadata !1353, null}
!1364 = metadata !{i32 786688, metadata !1365, metadata !"left", metadata !202, i32 240, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 240]
!1365 = metadata !{i32 786443, metadata !181, metadata !1353, i32 224, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1366 = metadata !{i32 240, i32 0, metadata !1365, null}
!1367 = metadata !{i32 786688, metadata !1365, metadata !"right", metadata !202, i32 241, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 241]
!1368 = metadata !{i32 241, i32 0, metadata !1365, null}
!1369 = metadata !{i32 242, i32 0, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !181, metadata !1365, i32 242, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1371 = metadata !{i32 243, i32 0, metadata !1370, null}
!1372 = metadata !{i32 243, i32 0, metadata !1373, null}
!1373 = metadata !{i32 786443, metadata !181, metadata !1374, i32 243, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1374 = metadata !{i32 786443, metadata !181, metadata !1370, i32 243, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1375 = metadata !{i32 243, i32 0, metadata !1374, null}
!1376 = metadata !{i32 244, i32 0, metadata !1365, null}
!1377 = metadata !{i32 245, i32 0, metadata !1365, null}
!1378 = metadata !{i32 246, i32 0, metadata !1365, null}
!1379 = metadata !{i32 248, i32 0, metadata !1353, null}
!1380 = metadata !{i32 251, i32 0, metadata !1353, null}
!1381 = metadata !{i32 251, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !181, metadata !1383, i32 251, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1383 = metadata !{i32 786443, metadata !181, metadata !1353, i32 251, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1384 = metadata !{i32 251, i32 0, metadata !1383, null}
!1385 = metadata !{i32 252, i32 0, metadata !1353, null}
!1386 = metadata !{i32 253, i32 0, metadata !1353, null}
!1387 = metadata !{i32 254, i32 0, metadata !1353, null}
!1388 = metadata !{i32 257, i32 0, metadata !1353, null}
!1389 = metadata !{i32 260, i32 0, metadata !1390, null}
!1390 = metadata !{i32 786443, metadata !181, metadata !257, i32 260, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1391 = metadata !{i32 786688, metadata !1392, metadata !"c", metadata !202, i32 262, metadata !1040, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 262]
!1392 = metadata !{i32 786443, metadata !181, metadata !1390, i32 261, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1393 = metadata !{i32 262, i32 0, metadata !1392, null}
!1394 = metadata !{i32 786688, metadata !1392, metadata !"esc", metadata !202, i32 263, metadata !1040, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [esc] [line 263]
!1395 = metadata !{i32 263, i32 0, metadata !1392, null}
!1396 = metadata !{i32 265, i32 0, metadata !1397, null}
!1397 = metadata !{i32 786443, metadata !181, metadata !1392, i32 265, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1398 = metadata !{i32 268, i32 0, metadata !1397, null}
!1399 = metadata !{i32 269, i32 0, metadata !1397, null}
!1400 = metadata !{i32 269, i32 0, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !181, metadata !1402, i32 269, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1402 = metadata !{i32 786443, metadata !181, metadata !1397, i32 269, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1403 = metadata !{i32 269, i32 0, metadata !1402, null}
!1404 = metadata !{i32 271, i32 0, metadata !1392, null}
!1405 = metadata !{i32 272, i32 0, metadata !1392, null}
!1406 = metadata !{i32 275, i32 0, metadata !1407, null}
!1407 = metadata !{i32 786443, metadata !181, metadata !1408, i32 275, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1408 = metadata !{i32 786443, metadata !181, metadata !1392, i32 273, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1409 = metadata !{i32 277, i32 0, metadata !1410, null}
!1410 = metadata !{i32 786443, metadata !181, metadata !1407, i32 276, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1411 = metadata !{i32 277, i32 0, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !181, metadata !1413, i32 277, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1413 = metadata !{i32 786443, metadata !181, metadata !1410, i32 277, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1414 = metadata !{i32 277, i32 0, metadata !1413, null}
!1415 = metadata !{i32 278, i32 0, metadata !1410, null}
!1416 = metadata !{i32 278, i32 0, metadata !1417, null}
!1417 = metadata !{i32 786443, metadata !181, metadata !1418, i32 278, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1418 = metadata !{i32 786443, metadata !181, metadata !1410, i32 278, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1419 = metadata !{i32 278, i32 0, metadata !1418, null}
!1420 = metadata !{i32 279, i32 0, metadata !1410, null}
!1421 = metadata !{i32 279, i32 0, metadata !1422, null}
!1422 = metadata !{i32 786443, metadata !181, metadata !1423, i32 279, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1423 = metadata !{i32 786443, metadata !181, metadata !1410, i32 279, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1424 = metadata !{i32 279, i32 0, metadata !1423, null}
!1425 = metadata !{i32 280, i32 0, metadata !1410, null}
!1426 = metadata !{i32 281, i32 0, metadata !1410, null}
!1427 = metadata !{i32 282, i32 0, metadata !1408, null}
!1428 = metadata !{i32 285, i32 0, metadata !1408, null}
!1429 = metadata !{i32 288, i32 0, metadata !1430, null}
!1430 = metadata !{i32 786443, metadata !181, metadata !1408, i32 286, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1431 = metadata !{i32 291, i32 0, metadata !1432, null}
!1432 = metadata !{i32 786443, metadata !181, metadata !1430, i32 291, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1433 = metadata !{i32 292, i32 0, metadata !1432, null}
!1434 = metadata !{i32 299, i32 0, metadata !1435, null}
!1435 = metadata !{i32 786443, metadata !181, metadata !1432, i32 293, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1436 = metadata !{i32 300, i32 0, metadata !1435, null}
!1437 = metadata !{i32 301, i32 0, metadata !1435, null}
!1438 = metadata !{i32 301, i32 0, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !181, metadata !1440, i32 301, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1440 = metadata !{i32 786443, metadata !181, metadata !1435, i32 301, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1441 = metadata !{i32 301, i32 0, metadata !1440, null}
!1442 = metadata !{i32 302, i32 0, metadata !1435, null}
!1443 = metadata !{i32 302, i32 0, metadata !1444, null}
!1444 = metadata !{i32 786443, metadata !181, metadata !1445, i32 302, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1445 = metadata !{i32 786443, metadata !181, metadata !1435, i32 302, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1446 = metadata !{i32 302, i32 0, metadata !1445, null}
!1447 = metadata !{i32 303, i32 0, metadata !1435, null}
!1448 = metadata !{i32 303, i32 0, metadata !1449, null}
!1449 = metadata !{i32 786443, metadata !181, metadata !1450, i32 303, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1450 = metadata !{i32 786443, metadata !181, metadata !1435, i32 303, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1451 = metadata !{i32 303, i32 0, metadata !1450, null}
!1452 = metadata !{i32 304, i32 0, metadata !1435, null}
!1453 = metadata !{i32 305, i32 0, metadata !1435, null}
!1454 = metadata !{i32 306, i32 0, metadata !1430, null}
!1455 = metadata !{i32 309, i32 0, metadata !1430, null}
!1456 = metadata !{i32 311, i32 0, metadata !1408, null}
!1457 = metadata !{i32 313, i32 0, metadata !1408, null}
!1458 = metadata !{i32 314, i32 0, metadata !1408, null}
!1459 = metadata !{i32 315, i32 0, metadata !1408, null}
!1460 = metadata !{i32 316, i32 0, metadata !1408, null}
!1461 = metadata !{i32 317, i32 0, metadata !1408, null}
!1462 = metadata !{i32 318, i32 0, metadata !1408, null}
!1463 = metadata !{i32 319, i32 0, metadata !1408, null}
!1464 = metadata !{i32 320, i32 0, metadata !1408, null}
!1465 = metadata !{i32 323, i32 0, metadata !1466, null}
!1466 = metadata !{i32 786443, metadata !181, metadata !1408, i32 323, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1467 = metadata !{i32 324, i32 0, metadata !1466, null}
!1468 = metadata !{i32 326, i32 0, metadata !1469, null}
!1469 = metadata !{i32 786443, metadata !181, metadata !1408, i32 326, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1470 = metadata !{i32 328, i32 0, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !181, metadata !1469, i32 327, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1472 = metadata !{i32 329, i32 0, metadata !1471, null}
!1473 = metadata !{i32 331, i32 0, metadata !1408, null}
!1474 = metadata !{i32 334, i32 0, metadata !1475, null}
!1475 = metadata !{i32 786443, metadata !181, metadata !1408, i32 334, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1476 = metadata !{i32 335, i32 0, metadata !1475, null}
!1477 = metadata !{i32 338, i32 0, metadata !1478, null}
!1478 = metadata !{i32 786443, metadata !181, metadata !1408, i32 338, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1479 = metadata !{i32 339, i32 0, metadata !1478, null}
!1480 = metadata !{i32 354, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !181, metadata !1408, i32 354, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1482 = metadata !{i32 355, i32 0, metadata !1481, null}
!1483 = metadata !{i32 356, i32 0, metadata !1408, null}
!1484 = metadata !{i32 359, i32 0, metadata !1408, null}
!1485 = metadata !{i32 362, i32 0, metadata !1486, null}
!1486 = metadata !{i32 786443, metadata !181, metadata !1408, i32 360, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1487 = metadata !{i32 365, i32 0, metadata !1486, null}
!1488 = metadata !{i32 365, i32 0, metadata !1489, null}
!1489 = metadata !{i32 786443, metadata !181, metadata !1490, i32 365, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1490 = metadata !{i32 786443, metadata !181, metadata !1486, i32 365, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1491 = metadata !{i32 365, i32 0, metadata !1490, null}
!1492 = metadata !{i32 366, i32 0, metadata !1486, null}
!1493 = metadata !{i32 366, i32 0, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !181, metadata !1495, i32 366, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1495 = metadata !{i32 786443, metadata !181, metadata !1486, i32 366, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1496 = metadata !{i32 366, i32 0, metadata !1495, null}
!1497 = metadata !{i32 367, i32 0, metadata !1486, null}
!1498 = metadata !{i32 367, i32 0, metadata !1499, null}
!1499 = metadata !{i32 786443, metadata !181, metadata !1500, i32 367, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1500 = metadata !{i32 786443, metadata !181, metadata !1486, i32 367, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1501 = metadata !{i32 367, i32 0, metadata !1500, null}
!1502 = metadata !{i32 368, i32 0, metadata !1486, null}
!1503 = metadata !{i32 371, i32 0, metadata !1486, null}
!1504 = metadata !{i32 373, i32 0, metadata !1408, null}
!1505 = metadata !{i32 389, i32 0, metadata !1408, null}
!1506 = metadata !{i32 786688, metadata !1507, metadata !"m", metadata !202, i32 399, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 399]
!1507 = metadata !{i32 786443, metadata !181, metadata !1408, i32 397, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1508 = metadata !{i32 399, i32 0, metadata !1507, null}
!1509 = metadata !{i32 786688, metadata !1507, metadata !"printable", metadata !202, i32 401, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [printable] [line 401]
!1510 = metadata !{i32 401, i32 0, metadata !1507, null}
!1511 = metadata !{i32 403, i32 0, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !181, metadata !1507, i32 403, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1513 = metadata !{i32 405, i32 0, metadata !1514, null}
!1514 = metadata !{i32 786443, metadata !181, metadata !1512, i32 404, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1515 = metadata !{i32 406, i32 0, metadata !1514, null}
!1516 = metadata !{i32 407, i32 0, metadata !1514, null}
!1517 = metadata !{i32 786688, metadata !1518, metadata !"mbstate", metadata !202, i32 410, metadata !1519, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mbstate] [line 410]
!1518 = metadata !{i32 786443, metadata !181, metadata !1512, i32 409, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1519 = metadata !{i32 786454, metadata !181, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !1520} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!1520 = metadata !{i32 786454, metadata !181, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !1521} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from ]
!1521 = metadata !{i32 786451, metadata !1522, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !1523, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!1522 = metadata !{metadata !"/usr/include/wchar.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib"}
!1523 = metadata !{metadata !1524, metadata !1525}
!1524 = metadata !{i32 786445, metadata !1522, metadata !1521, metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!1525 = metadata !{i32 786445, metadata !1522, metadata !1521, metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !1526} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from ]
!1526 = metadata !{i32 786455, metadata !1522, metadata !1521, metadata !"", i32 85, i64 32, i64 32, i64 0, i32 0, null, metadata !1527, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 85, size 32, align 32, offset 0] [def] [from ]
!1527 = metadata !{metadata !1528, metadata !1529}
!1528 = metadata !{i32 786445, metadata !1522, metadata !1526, metadata !"__wch", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [__wch] [line 88, size 32, align 32, offset 0] [from unsigned int]
!1529 = metadata !{i32 786445, metadata !1522, metadata !1526, metadata !"__wchb", i32 92, i64 32, i64 8, i64 0, i32 0, metadata !1530} ; [ DW_TAG_member ] [__wchb] [line 92, size 32, align 8, offset 0] [from ]
!1530 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !30, metadata !1531, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!1531 = metadata !{metadata !1532}
!1532 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ] [0, 3]
!1533 = metadata !{i32 410, i32 0, metadata !1518, null}
!1534 = metadata !{i32 411, i32 0, metadata !1518, null}
!1535 = metadata !{i32 413, i32 0, metadata !1518, null}
!1536 = metadata !{i32 414, i32 0, metadata !1518, null}
!1537 = metadata !{i32 415, i32 0, metadata !1538, null}
!1538 = metadata !{i32 786443, metadata !181, metadata !1518, i32 415, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1539 = metadata !{i32 416, i32 0, metadata !1538, null}
!1540 = metadata !{i32 418, i32 0, metadata !1518, null}
!1541 = metadata !{i32 786688, metadata !1542, metadata !"w", metadata !202, i32 420, metadata !1543, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 420]
!1542 = metadata !{i32 786443, metadata !181, metadata !1518, i32 419, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1543 = metadata !{i32 786454, metadata !181, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!1544 = metadata !{i32 420, i32 0, metadata !1542, null}
!1545 = metadata !{i32 786688, metadata !1542, metadata !"bytes", metadata !202, i32 421, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 421]
!1546 = metadata !{i32 421, i32 0, metadata !1542, null}
!1547 = metadata !{i32 423, i32 0, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !181, metadata !1542, i32 423, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1549 = metadata !{i32 424, i32 0, metadata !1548, null}
!1550 = metadata !{i32 425, i32 0, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !181, metadata !1548, i32 425, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1552 = metadata !{i32 427, i32 0, metadata !1553, null}
!1553 = metadata !{i32 786443, metadata !181, metadata !1551, i32 426, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1554 = metadata !{i32 428, i32 0, metadata !1553, null}
!1555 = metadata !{i32 430, i32 0, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !181, metadata !1551, i32 430, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1557 = metadata !{i32 432, i32 0, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !181, metadata !1556, i32 431, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1559 = metadata !{i32 433, i32 0, metadata !1558, null}
!1560 = metadata !{i32 434, i32 0, metadata !1558, null}
!1561 = metadata !{i32 435, i32 0, metadata !1558, null}
!1562 = metadata !{i32 443, i32 0, metadata !1563, null}
!1563 = metadata !{i32 786443, metadata !181, metadata !1564, i32 443, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1564 = metadata !{i32 786443, metadata !181, metadata !1556, i32 438, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1565 = metadata !{i32 786688, metadata !1566, metadata !"j", metadata !202, i32 445, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 445]
!1566 = metadata !{i32 786443, metadata !181, metadata !1563, i32 444, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1567 = metadata !{i32 445, i32 0, metadata !1566, null}
!1568 = metadata !{i32 446, i32 0, metadata !1569, null}
!1569 = metadata !{i32 786443, metadata !181, metadata !1566, i32 446, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1570 = metadata !{i32 447, i32 0, metadata !1569, null}
!1571 = metadata !{i32 451, i32 0, metadata !1572, null}
!1572 = metadata !{i32 786443, metadata !181, metadata !1569, i32 448, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1573 = metadata !{i32 452, i32 0, metadata !1572, null}
!1574 = metadata !{i32 453, i32 0, metadata !1566, null}
!1575 = metadata !{i32 455, i32 0, metadata !1576, null}
!1576 = metadata !{i32 786443, metadata !181, metadata !1564, i32 455, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1577 = metadata !{i32 456, i32 0, metadata !1576, null}
!1578 = metadata !{i32 457, i32 0, metadata !1564, null}
!1579 = metadata !{i32 459, i32 0, metadata !1542, null}
!1580 = metadata !{i32 460, i32 0, metadata !1518, null}
!1581 = metadata !{i32 463, i32 0, metadata !1582, null}
!1582 = metadata !{i32 786443, metadata !181, metadata !1507, i32 463, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1583 = metadata !{i32 786688, metadata !1584, metadata !"ilim", metadata !202, i32 467, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilim] [line 467]
!1584 = metadata !{i32 786443, metadata !181, metadata !1582, i32 464, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1585 = metadata !{i32 467, i32 0, metadata !1584, null}
!1586 = metadata !{i32 469, i32 0, metadata !1587, null}
!1587 = metadata !{i32 786443, metadata !181, metadata !1584, i32 469, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1588 = metadata !{i32 471, i32 0, metadata !1589, null}
!1589 = metadata !{i32 786443, metadata !181, metadata !1590, i32 471, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1590 = metadata !{i32 786443, metadata !181, metadata !1587, i32 470, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1591 = metadata !{i32 473, i32 0, metadata !1592, null}
!1592 = metadata !{i32 786443, metadata !181, metadata !1589, i32 472, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1593 = metadata !{i32 473, i32 0, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !181, metadata !1595, i32 473, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1595 = metadata !{i32 786443, metadata !181, metadata !1592, i32 473, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1596 = metadata !{i32 473, i32 0, metadata !1595, null}
!1597 = metadata !{i32 474, i32 0, metadata !1592, null}
!1598 = metadata !{i32 474, i32 0, metadata !1599, null}
!1599 = metadata !{i32 786443, metadata !181, metadata !1600, i32 474, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1600 = metadata !{i32 786443, metadata !181, metadata !1592, i32 474, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1601 = metadata !{i32 474, i32 0, metadata !1600, null}
!1602 = metadata !{i32 475, i32 0, metadata !1592, null}
!1603 = metadata !{i32 475, i32 0, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !181, metadata !1605, i32 475, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1605 = metadata !{i32 786443, metadata !181, metadata !1592, i32 475, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1606 = metadata !{i32 475, i32 0, metadata !1605, null}
!1607 = metadata !{i32 476, i32 0, metadata !1592, null}
!1608 = metadata !{i32 477, i32 0, metadata !1592, null}
!1609 = metadata !{i32 478, i32 0, metadata !1610, null}
!1610 = metadata !{i32 786443, metadata !181, metadata !1590, i32 478, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1611 = metadata !{i32 479, i32 0, metadata !1610, null}
!1612 = metadata !{i32 480, i32 0, metadata !1590, null}
!1613 = metadata !{i32 480, i32 0, metadata !1614, null}
!1614 = metadata !{i32 786443, metadata !181, metadata !1615, i32 480, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1615 = metadata !{i32 786443, metadata !181, metadata !1590, i32 480, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1616 = metadata !{i32 480, i32 0, metadata !1615, null}
!1617 = metadata !{i32 481, i32 0, metadata !1590, null}
!1618 = metadata !{i32 482, i32 0, metadata !1590, null}
!1619 = metadata !{i32 484, i32 0, metadata !1584, null}
!1620 = metadata !{i32 487, i32 0, metadata !1408, null}
!1621 = metadata !{i32 489, i32 0, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !181, metadata !1392, i32 489, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1623 = metadata !{i32 491, i32 0, metadata !1622, null}
!1624 = metadata !{i32 494, i32 0, metadata !1392, null}
!1625 = metadata !{i32 494, i32 0, metadata !1626, null}
!1626 = metadata !{i32 786443, metadata !181, metadata !1627, i32 494, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1627 = metadata !{i32 786443, metadata !181, metadata !1392, i32 494, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1628 = metadata !{i32 494, i32 0, metadata !1627, null}
!1629 = metadata !{i32 497, i32 0, metadata !1392, null}
!1630 = metadata !{i32 497, i32 0, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !181, metadata !1632, i32 497, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1632 = metadata !{i32 786443, metadata !181, metadata !1392, i32 497, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1633 = metadata !{i32 497, i32 0, metadata !1632, null}
!1634 = metadata !{i32 498, i32 0, metadata !1392, null}
!1635 = metadata !{i32 500, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !181, metadata !257, i32 500, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1637 = metadata !{i32 501, i32 0, metadata !1636, null}
!1638 = metadata !{i32 503, i32 0, metadata !1639, null}
!1639 = metadata !{i32 786443, metadata !181, metadata !257, i32 503, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1640 = metadata !{i32 504, i32 0, metadata !1641, null}
!1641 = metadata !{i32 786443, metadata !181, metadata !1639, i32 504, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1642 = metadata !{i32 505, i32 0, metadata !1641, null}
!1643 = metadata !{i32 505, i32 0, metadata !1644, null}
!1644 = metadata !{i32 786443, metadata !181, metadata !1645, i32 505, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1645 = metadata !{i32 786443, metadata !181, metadata !1641, i32 505, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1646 = metadata !{i32 505, i32 0, metadata !1645, null}
!1647 = metadata !{i32 507, i32 0, metadata !1648, null}
!1648 = metadata !{i32 786443, metadata !181, metadata !257, i32 507, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1649 = metadata !{i32 508, i32 0, metadata !1648, null}
!1650 = metadata !{i32 509, i32 0, metadata !257, null}
!1651 = metadata !{i32 512, i32 0, metadata !257, null}
!1652 = metadata !{i32 514, i32 0, metadata !257, null}
!1653 = metadata !{i32 786689, metadata !254, metadata !"n", metadata !202, i32 16777777, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 561]
!1654 = metadata !{i32 561, i32 0, metadata !254, null}
!1655 = metadata !{i32 786689, metadata !254, metadata !"arg", metadata !202, i32 33554993, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 561]
!1656 = metadata !{i32 786689, metadata !254, metadata !"argsize", metadata !202, i32 50332209, metadata !226, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 561]
!1657 = metadata !{i32 786689, metadata !254, metadata !"options", metadata !202, i32 67109426, metadata !227, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 562]
!1658 = metadata !{i32 562, i32 0, metadata !254, null}
!1659 = metadata !{i32 786688, metadata !254, metadata !"e", metadata !202, i32 564, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 564]
!1660 = metadata !{i32 564, i32 0, metadata !254, null}
!1661 = metadata !{i32 786688, metadata !254, metadata !"n0", metadata !202, i32 570, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n0] [line 570]
!1662 = metadata !{i32 570, i32 0, metadata !254, null}
!1663 = metadata !{i32 579, i32 0, metadata !1664, null}
!1664 = metadata !{i32 786443, metadata !181, metadata !254, i32 579, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1665 = metadata !{i32 580, i32 0, metadata !1664, null}
!1666 = metadata !{i32 582, i32 0, metadata !1667, null}
!1667 = metadata !{i32 786443, metadata !181, metadata !254, i32 582, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1668 = metadata !{i32 786688, metadata !1669, metadata !"n1", metadata !202, i32 584, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 584]
!1669 = metadata !{i32 786443, metadata !181, metadata !1667, i32 583, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1670 = metadata !{i32 584, i32 0, metadata !1669, null}
!1671 = metadata !{i32 586, i32 0, metadata !1672, null}
!1672 = metadata !{i32 786443, metadata !181, metadata !1669, i32 586, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1673 = metadata !{i32 587, i32 0, metadata !1672, null}
!1674 = metadata !{i32 589, i32 0, metadata !1675, null}
!1675 = metadata !{i32 786443, metadata !181, metadata !1669, i32 589, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1676 = metadata !{i32 591, i32 0, metadata !1677, null}
!1677 = metadata !{i32 786443, metadata !181, metadata !1675, i32 590, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1678 = metadata !{i32 592, i32 0, metadata !1677, null}
!1679 = metadata !{i32 593, i32 0, metadata !1677, null}
!1680 = metadata !{i32 594, i32 0, metadata !1669, null}
!1681 = metadata !{i32 595, i32 0, metadata !1669, null}
!1682 = metadata !{i32 596, i32 0, metadata !1669, null}
!1683 = metadata !{i32 597, i32 0, metadata !1669, null}
!1684 = metadata !{i32 786688, metadata !1685, metadata !"size", metadata !202, i32 600, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 600]
!1685 = metadata !{i32 786443, metadata !181, metadata !254, i32 599, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1686 = metadata !{i32 600, i32 0, metadata !1685, null}
!1687 = metadata !{i32 786688, metadata !1685, metadata !"val", metadata !202, i32 601, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 601]
!1688 = metadata !{i32 601, i32 0, metadata !1685, null}
!1689 = metadata !{i32 786688, metadata !1685, metadata !"qsize", metadata !202, i32 602, metadata !226, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qsize] [line 602]
!1690 = metadata !{i32 602, i32 0, metadata !1685, null}
!1691 = metadata !{i32 604, i32 0, metadata !1692, null}
!1692 = metadata !{i32 786443, metadata !181, metadata !1685, i32 604, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1693 = metadata !{i32 606, i32 0, metadata !1694, null}
!1694 = metadata !{i32 786443, metadata !181, metadata !1692, i32 605, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1695 = metadata !{i32 607, i32 0, metadata !1696, null}
!1696 = metadata !{i32 786443, metadata !181, metadata !1694, i32 607, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1697 = metadata !{i32 608, i32 0, metadata !1696, null}
!1698 = metadata !{i32 609, i32 0, metadata !1694, null}
!1699 = metadata !{i32 610, i32 0, metadata !1694, null}
!1700 = metadata !{i32 611, i32 0, metadata !1694, null}
!1701 = metadata !{i32 613, i32 0, metadata !1685, null}
!1702 = metadata !{i32 614, i32 0, metadata !1685, null}
!1703 = metadata !{i32 786689, metadata !251, metadata !"style", metadata !202, i32 16777848, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [style] [line 632]
!1704 = metadata !{i32 632, i32 0, metadata !251, null}
!1705 = metadata !{i32 786688, metadata !251, metadata !"o", metadata !202, i32 634, metadata !206, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 634]
!1706 = metadata !{i32 634, i32 0, metadata !251, null}
!1707 = metadata !{i32 635, i32 0, metadata !251, null}
!1708 = metadata !{i32 636, i32 0, metadata !251, null}
!1709 = metadata !{i32 637, i32 0, metadata !251, null}
!1710 = metadata !{i32 786689, metadata !260, metadata !"msgid", metadata !202, i32 16777382, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgid] [line 166]
!1711 = metadata !{i32 166, i32 0, metadata !260, null}
!1712 = metadata !{i32 786689, metadata !260, metadata !"s", metadata !202, i32 33554598, metadata !183, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 166]
!1713 = metadata !{i32 786688, metadata !260, metadata !"translation", metadata !202, i32 168, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [translation] [line 168]
!1714 = metadata !{i32 168, i32 0, metadata !260, null}
!1715 = metadata !{i32 169, i32 0, metadata !1716, null}
!1716 = metadata !{i32 786443, metadata !181, metadata !260, i32 169, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/quotearg.c]
!1717 = metadata !{i32 170, i32 0, metadata !1716, null}
!1718 = metadata !{i32 171, i32 0, metadata !260, null}
!1719 = metadata !{i32 786689, metadata !288, metadata !"stream", metadata !289, i32 16777264, metadata !292, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 48]
!1720 = metadata !{i32 48, i32 0, metadata !288, null}
!1721 = metadata !{i32 786689, metadata !288, metadata !"command_name", metadata !289, i32 33554481, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [command_name] [line 49]
!1722 = metadata !{i32 49, i32 0, metadata !288, null}
!1723 = metadata !{i32 786689, metadata !288, metadata !"package", metadata !289, i32 50331697, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [package] [line 49]
!1724 = metadata !{i32 786689, metadata !288, metadata !"version", metadata !289, i32 67108914, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 50]
!1725 = metadata !{i32 50, i32 0, metadata !288, null}
!1726 = metadata !{i32 786689, metadata !288, metadata !"authors", metadata !289, i32 83886130, metadata !345, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [authors] [line 50]
!1727 = metadata !{i32 786688, metadata !288, metadata !"n_authors", metadata !289, i32 52, metadata !339, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_authors] [line 52]
!1728 = metadata !{i32 52, i32 0, metadata !288, null}
!1729 = metadata !{i32 786688, metadata !1730, metadata !"tmp_authors", metadata !289, i32 56, metadata !1731, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_authors] [line 56]
!1730 = metadata !{i32 786443, metadata !286, metadata !288, i32 55, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/version-etc.c]
!1731 = metadata !{i32 786454, metadata !286, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !1732} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!1732 = metadata !{i32 786454, metadata !286, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !1733} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!1733 = metadata !{i32 786454, metadata !286, null, metadata !"__builtin_va_list", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !1734} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 56, size 0, align 0, offset 0] [from ]
!1734 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !346, metadata !328, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!1735 = metadata !{i32 56, i32 0, metadata !1730, null}
!1736 = metadata !{i32 59, i32 0, metadata !1730, null}
!1737 = metadata !{i32 64, i32 0, metadata !1730, null}
!1738 = metadata !{i32 65, i32 0, metadata !1730, null}
!1739 = metadata !{i32 66, i32 0, metadata !1730, null}
!1740 = metadata !{i32 69, i32 0, metadata !1741, null}
!1741 = metadata !{i32 786443, metadata !286, metadata !288, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/version-etc.c]
!1742 = metadata !{i32 70, i32 0, metadata !1741, null}
!1743 = metadata !{i32 72, i32 0, metadata !1741, null}
!1744 = metadata !{i32 74, i32 0, metadata !288, null}
!1745 = metadata !{i32 78, i32 0, metadata !1746, null}
!1746 = metadata !{i32 786443, metadata !286, metadata !288, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/version-etc.c]
!1747 = metadata !{i32 81, i32 0, metadata !1746, null}
!1748 = metadata !{i32 82, i32 0, metadata !1746, null}
!1749 = metadata !{i32 85, i32 0, metadata !1746, null}
!1750 = metadata !{i32 86, i32 0, metadata !1746, null}
!1751 = metadata !{i32 89, i32 0, metadata !1746, null}
!1752 = metadata !{i32 90, i32 0, metadata !1746, null}
!1753 = metadata !{i32 95, i32 0, metadata !1746, null}
!1754 = metadata !{i32 96, i32 0, metadata !1746, null}
!1755 = metadata !{i32 101, i32 0, metadata !1746, null}
!1756 = metadata !{i32 102, i32 0, metadata !1746, null}
!1757 = metadata !{i32 107, i32 0, metadata !1746, null}
!1758 = metadata !{i32 109, i32 0, metadata !1746, null}
!1759 = metadata !{i32 114, i32 0, metadata !1746, null}
!1760 = metadata !{i32 116, i32 0, metadata !1746, null}
!1761 = metadata !{i32 121, i32 0, metadata !1746, null}
!1762 = metadata !{i32 124, i32 0, metadata !1746, null}
!1763 = metadata !{i32 129, i32 0, metadata !1746, null}
!1764 = metadata !{i32 132, i32 0, metadata !1746, null}
!1765 = metadata !{i32 139, i32 0, metadata !1746, null}
!1766 = metadata !{i32 142, i32 0, metadata !1746, null}
!1767 = metadata !{i32 144, i32 0, metadata !288, null}
!1768 = metadata !{i32 145, i32 0, metadata !288, null}
!1769 = metadata !{i32 147, i32 0, metadata !288, null}
!1770 = metadata !{i32 148, i32 0, metadata !288, null}
!1771 = metadata !{i32 150, i32 0, metadata !288, null}
!1772 = metadata !{i32 154, i32 0, metadata !288, null}
!1773 = metadata !{i32 786689, metadata !353, metadata !"stream", metadata !289, i32 16777387, metadata !292, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 171]
!1774 = metadata !{i32 171, i32 0, metadata !353, null}
!1775 = metadata !{i32 786689, metadata !353, metadata !"command_name", metadata !289, i32 33554604, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [command_name] [line 172]
!1776 = metadata !{i32 172, i32 0, metadata !353, null}
!1777 = metadata !{i32 786689, metadata !353, metadata !"package", metadata !289, i32 50331820, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [package] [line 172]
!1778 = metadata !{i32 786689, metadata !353, metadata !"version", metadata !289, i32 67109037, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 173]
!1779 = metadata !{i32 173, i32 0, metadata !353, null}
!1780 = metadata !{i32 786688, metadata !353, metadata !"authors", metadata !289, i32 175, metadata !1731, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [authors] [line 175]
!1781 = metadata !{i32 175, i32 0, metadata !353, null}
!1782 = metadata !{i32 177, i32 0, metadata !353, null}
!1783 = metadata !{i32 178, i32 0, metadata !353, null}
!1784 = metadata !{i32 179, i32 0, metadata !353, null}
!1785 = metadata !{i32 38, i32 0, metadata !361, null}
!1786 = metadata !{i32 44, i32 0, metadata !361, null}
!1787 = metadata !{i32 45, i32 0, metadata !361, null}
!1788 = metadata !{i32 786689, metadata !376, metadata !"n", metadata !368, i32 16777262, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 46]
!1789 = metadata !{i32 46, i32 0, metadata !376, null}
!1790 = metadata !{i32 786689, metadata !376, metadata !"s", metadata !368, i32 33554478, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 46]
!1791 = metadata !{i32 48, i32 10, metadata !376, null}
!1792 = metadata !{i32 786689, metadata !379, metadata !"n", metadata !368, i32 16777270, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 54]
!1793 = metadata !{i32 54, i32 0, metadata !379, null}
!1794 = metadata !{i32 56, i32 10, metadata !379, null}
!1795 = metadata !{i32 786689, metadata !382, metadata !"p", metadata !368, i32 16777287, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 71]
!1796 = metadata !{i32 71, i32 0, metadata !382, null}
!1797 = metadata !{i32 786689, metadata !382, metadata !"n", metadata !368, i32 33554503, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 71]
!1798 = metadata !{i32 786689, metadata !382, metadata !"s", metadata !368, i32 50331719, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 71]
!1799 = metadata !{i32 73, i32 10, metadata !382, null}
!1800 = metadata !{i32 786689, metadata !385, metadata !"p", metadata !368, i32 16777296, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 80]
!1801 = metadata !{i32 80, i32 0, metadata !385, null}
!1802 = metadata !{i32 786689, metadata !385, metadata !"n", metadata !368, i32 33554512, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 80]
!1803 = metadata !{i32 82, i32 10, metadata !385, null}
!1804 = metadata !{i32 786689, metadata !388, metadata !"p", metadata !368, i32 16777388, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 172]
!1805 = metadata !{i32 172, i32 0, metadata !388, null}
!1806 = metadata !{i32 786689, metadata !388, metadata !"pn", metadata !368, i32 33554604, metadata !371, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 172]
!1807 = metadata !{i32 786689, metadata !388, metadata !"s", metadata !368, i32 50331820, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 172]
!1808 = metadata !{i32 174, i32 10, metadata !388, null}
!1809 = metadata !{i32 786689, metadata !389, metadata !"p", metadata !368, i32 16777400, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 184]
!1810 = metadata !{i32 184, i32 0, metadata !389, null}
!1811 = metadata !{i32 786689, metadata !389, metadata !"pn", metadata !368, i32 33554616, metadata !371, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 184]
!1812 = metadata !{i32 186, i32 10, metadata !389, null}
!1813 = metadata !{i32 786689, metadata !392, metadata !"s", metadata !368, i32 16777410, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 194]
!1814 = metadata !{i32 194, i32 0, metadata !392, null}
!1815 = metadata !{i32 196, i32 0, metadata !392, null}
!1816 = metadata !{i32 786689, metadata !393, metadata !"n", metadata !368, i32 16777419, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 203]
!1817 = metadata !{i32 203, i32 0, metadata !393, null}
!1818 = metadata !{i32 786689, metadata !393, metadata !"s", metadata !368, i32 33554635, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 203]
!1819 = metadata !{i32 786688, metadata !393, metadata !"p", metadata !368, i32 205, metadata !331, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 205]
!1820 = metadata !{i32 205, i32 0, metadata !393, null}
!1821 = metadata !{i32 208, i32 0, metadata !1822, null}
!1822 = metadata !{i32 786443, metadata !364, metadata !393, i32 208, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1823 = metadata !{i32 209, i32 0, metadata !1822, null}
!1824 = metadata !{i32 210, i32 0, metadata !393, null}
!1825 = metadata !{i32 786689, metadata !394, metadata !"p", metadata !368, i32 16777434, metadata !397, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 218]
!1826 = metadata !{i32 218, i32 0, metadata !394, null}
!1827 = metadata !{i32 786689, metadata !394, metadata !"s", metadata !368, i32 33554650, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 218]
!1828 = metadata !{i32 220, i32 0, metadata !394, null}
!1829 = metadata !{i32 786689, metadata !399, metadata !"string", metadata !368, i32 16777442, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 226]
!1830 = metadata !{i32 226, i32 0, metadata !399, null}
!1831 = metadata !{i32 228, i32 0, metadata !399, null}
!1832 = metadata !{i32 786689, metadata !401, metadata !"n", metadata !368, i32 16777253, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 37]
!1833 = metadata !{i32 37, i32 0, metadata !401, null}
!1834 = metadata !{i32 786689, metadata !401, metadata !"s", metadata !368, i32 33554469, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 37]
!1835 = metadata !{i32 786688, metadata !401, metadata !"p", metadata !368, i32 39, metadata !331, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 39]
!1836 = metadata !{i32 39, i32 0, metadata !401, null}
!1837 = metadata !{i32 40, i32 0, metadata !1838, null}
!1838 = metadata !{i32 786443, metadata !364, metadata !401, i32 40, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1839 = metadata !{i32 41, i32 0, metadata !1838, null}
!1840 = metadata !{i32 42, i32 0, metadata !401, null}
!1841 = metadata !{i32 786689, metadata !400, metadata !"p", metadata !368, i32 16777279, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 63]
!1842 = metadata !{i32 63, i32 0, metadata !400, null}
!1843 = metadata !{i32 786689, metadata !400, metadata !"n", metadata !368, i32 33554495, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 63]
!1844 = metadata !{i32 786689, metadata !400, metadata !"s", metadata !368, i32 50331711, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 63]
!1845 = metadata !{i32 65, i32 0, metadata !1846, null}
!1846 = metadata !{i32 786443, metadata !364, metadata !400, i32 65, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1847 = metadata !{i32 66, i32 0, metadata !1846, null}
!1848 = metadata !{i32 67, i32 0, metadata !400, null}
!1849 = metadata !{i32 786689, metadata !367, metadata !"p", metadata !368, i32 16777358, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 142]
!1850 = metadata !{i32 142, i32 0, metadata !367, null}
!1851 = metadata !{i32 786689, metadata !367, metadata !"pn", metadata !368, i32 33554574, metadata !371, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 142]
!1852 = metadata !{i32 786689, metadata !367, metadata !"s", metadata !368, i32 50331790, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 142]
!1853 = metadata !{i32 786688, metadata !367, metadata !"n", metadata !368, i32 144, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 144]
!1854 = metadata !{i32 144, i32 0, metadata !367, null}
!1855 = metadata !{i32 146, i32 0, metadata !1856, null}
!1856 = metadata !{i32 786443, metadata !364, metadata !367, i32 146, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1857 = metadata !{i32 148, i32 0, metadata !1858, null}
!1858 = metadata !{i32 786443, metadata !364, metadata !1859, i32 148, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1859 = metadata !{i32 786443, metadata !364, metadata !1856, i32 147, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1860 = metadata !{i32 156, i32 0, metadata !1861, null}
!1861 = metadata !{i32 786443, metadata !364, metadata !1858, i32 149, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1862 = metadata !{i32 157, i32 0, metadata !1861, null}
!1863 = metadata !{i32 158, i32 0, metadata !1861, null}
!1864 = metadata !{i32 159, i32 0, metadata !1859, null}
!1865 = metadata !{i32 162, i32 0, metadata !1866, null}
!1866 = metadata !{i32 786443, metadata !364, metadata !1867, i32 162, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1867 = metadata !{i32 786443, metadata !364, metadata !1856, i32 161, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-22/lib/xmalloc.c]
!1868 = metadata !{i32 163, i32 0, metadata !1866, null}
!1869 = metadata !{i32 164, i32 0, metadata !1867, null}
!1870 = metadata !{i32 167, i32 0, metadata !367, null}
!1871 = metadata !{i32 168, i32 0, metadata !367, null}
