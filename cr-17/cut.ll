; ModuleID = 'cut.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.quoting_options = type { i32, [8 x i32] }
%struct.slotvec = type { i64, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.range_pair = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

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
@.str8 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str9 = private unnamed_addr constant [67 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str11 = private unnamed_addr constant [177 x i8] c"  -b, --bytes=LIST        select only these bytes\0A  -c, --characters=LIST   select only these characters\0A  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter\0A\00", align 1
@.str12 = private unnamed_addr constant [238 x i8] c"  -f, --fields=LIST       select only these fields;  also print any line\0A                            that contains no delimiter character, unless\0A                            the -s option is specified\0A  -n                      (ignored)\0A\00", align 1
@.str13 = private unnamed_addr constant [115 x i8] c"      --complement        complement the set of selected bytes, characters\0A                            or fields.\0A\00", align 1
@.str14 = private unnamed_addr constant [210 x i8] c"  -s, --only-delimited    do not print lines not containing delimiters\0A      --output-delimiter=STRING  use STRING as the output delimiter\0A                            the default is to use the input delimiter\0A\00", align 1
@.str15 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str16 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str17 = private unnamed_addr constant [520 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactly once.\0AEach range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or field\0A  -M    from first to M'th (included) byte, character or field\0A\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"\0AReport bugs to <%s>.\0A\00", align 1
@.str19 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@operating_mode = internal global i32 0, align 4
@suppress_non_delimited = internal global i8 0, align 1
@delim = internal global i8 0, align 1
@have_read_stdin = internal global i8 0, align 1
@.str21 = private unnamed_addr constant [11 x i8] c"b:c:d:f:ns\00", align 1
@.str22 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external global i8*
@.str23 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal global i8 0, align 1
@output_delimiter_length = internal global i64 0, align 8
@output_delimiter_string = internal global i8* null, align 8
@complement = internal global i8 0, align 1
@.str24 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"5.3.0\00", align 1
@.str27 = private unnamed_addr constant [12 x i8] c"David Ihnat\00", align 1
@.str28 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str29 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str30 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str31 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str32 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@range_start_ht = internal global %struct.hash_table* null, align 8
@.str33 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@.str34 = private unnamed_addr constant [26 x i8] c"missing list of positions\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1
@optind = external global i32
@.str35 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*
@.str36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@field_1_buffer = internal global i8* null, align 8
@field_1_bufsize = internal global i64 0, align 8
@.str38 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"cut.c\00", align 1
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1
@eol_range_start = internal global i64 0, align 8
@max_range_endpoint = internal global i64 0, align 8
@printable_field = internal global i8* null, align 8
@.str40 = private unnamed_addr constant [27 x i8] c"invalid byte or field list\00", align 1
@set_fields.num_start = internal global i8* null, align 8
@.str41 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str42 = private unnamed_addr constant [28 x i8] c"byte offset %s is too large\00", align 1
@.str43 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str44 = private unnamed_addr constant [31 x i8] c"(size_t) ent_from_table == rsi\00", align 1
@__PRETTY_FUNCTION__.set_fields = private unnamed_addr constant [31 x i8] c"_Bool set_fields(const char *)\00", align 1
@.str45 = private unnamed_addr constant [29 x i8] c"(size_t) ent_from_table == i\00", align 1
@__PRETTY_FUNCTION__.mark_range_start = private unnamed_addr constant [30 x i8] c"void mark_range_start(size_t)\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str47 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str49 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str50 = private unnamed_addr constant [15 x i8] c"only-delimited\00", align 1
@.str51 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str52 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@longopts = internal constant <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }> <{ { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([6 x i8]* @.str46, i32 0, i32 0), i32 1, i32* null, i32 98, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str47, i32 0, i32 0), i32 1, i32* null, i32 99, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([7 x i8]* @.str48, i32 0, i32 0), i32 1, i32* null, i32 102, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([10 x i8]* @.str49, i32 0, i32 0), i32 1, i32* null, i32 100, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([15 x i8]* @.str50, i32 0, i32 0), i32 0, i32* null, i32 115, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([17 x i8]* @.str51, i32 0, i32 0), i32 1, i32* null, i32 128, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([11 x i8]* @.str52, i32 0, i32 0), i32 0, i32* null, i32 129, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i32 0, i32* null, i32 -130, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* getelementptr inbounds ([8 x i8]* @.str54, i32 0, i32 0), i32 0, i32* null, i32 -131, [4 x i8] undef }, { i8*, i32, i32*, i32, [4 x i8] } { i8* null, i32 0, i32* null, i32 0, [4 x i8] undef } }>, align 16
@.str55 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str156 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str257 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str358 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant { float, float, float, float, i8, [3 x i8] } { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0, [3 x i8] undef }, align 4
@file_name = internal global i8* null, align 8
@.str67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str168 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str269 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str76 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str177 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str278 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str379 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str480 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str581 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str682 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str177, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str278, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str379, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str480, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str581, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str682, i32 0, i32 0), i8* null], align 16
@quoting_style_vals = constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 16
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 4
@quotearg_n_options.slot0 = internal global [256 x i8] zeroinitializer, align 16
@quotearg_n_options.nslots = internal global i32 1, align 4
@quotearg_n_options.slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8]* @quotearg_n_options.slot0, i32 0, i32 0) }, align 8
@quotearg_n_options.slotvec = internal global %struct.slotvec* @quotearg_n_options.slotvec0, align 8
@.str783 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str884 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str985 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str90 = private unnamed_addr constant [50 x i8] c"Copyright (C) 2004 Free Software Foundation, Inc.\00", align 1
@version_etc_copyright = global i8* getelementptr inbounds ([50 x i8]* @.str90, i32 0, i32 0), align 8
@.str191 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str292 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str393 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str494 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str595 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str696 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str797 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str898 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str999 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str10100 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str11101 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str12102 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str13103 = private unnamed_addr constant [152 x i8] c"This is free software; see the source for copying conditions.  There is NO\0Awarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\0A\00", align 1
@.str106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str1107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1

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
  call void @llvm.dbg.declare(metadata !{i64* %x.addr}, metadata !654), !dbg !655
  store i64 %y, i64* %y.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %y.addr}, metadata !656), !dbg !655
  %0 = load i64* %x.addr, align 8, !dbg !657
  %1 = load i64* %y.addr, align 8, !dbg !657
  %cmp = icmp eq i64 %0, %1, !dbg !657
  br i1 %cmp, label %if.then, label %if.else, !dbg !657

if.then:                                          ; preds = %entry
  %2 = load i64* %x.addr, align 8, !dbg !659
  store i64 %2, i64* %retval, !dbg !659
  br label %return, !dbg !659

if.else:                                          ; preds = %entry
  %3 = load i32* @after_divergence, align 4, !dbg !660
  %tobool = icmp ne i32 %3, 0, !dbg !660
  br i1 %tobool, label %if.end29, label %if.then1, !dbg !660

if.then1:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata !{i8** %file}, metadata !663), !dbg !665
  %4 = load i8** @klee_div_file_env, align 8, !dbg !665
  %call = call i8* @getenv(i8* %4) #9, !dbg !665
  store i8* %call, i8** %file, align 8, !dbg !665
  call void @llvm.dbg.declare(metadata !{i8** %marker_file}, metadata !666), !dbg !667
  %5 = load i8** @klee_div_marker_file_env, align 8, !dbg !667
  %call2 = call i8* @getenv(i8* %5) #9, !dbg !667
  store i8* %call2, i8** %marker_file, align 8, !dbg !667
  %6 = load i8** %file, align 8, !dbg !668
  %tobool3 = icmp ne i8* %6, null, !dbg !668
  br i1 %tobool3, label %if.then4, label %if.else26, !dbg !668

if.then4:                                         ; preds = %if.then1
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %f}, metadata !670), !dbg !672
  %7 = load i8** %file, align 8, !dbg !672
  %call5 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !672
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8, !dbg !672
  %8 = load %struct._IO_FILE** %f, align 8, !dbg !673
  %tobool6 = icmp ne %struct._IO_FILE* %8, null, !dbg !673
  br i1 %tobool6, label %if.then7, label %if.else11, !dbg !673

if.then7:                                         ; preds = %if.then4
  %9 = load %struct._IO_FILE** %f, align 8, !dbg !675
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0)), !dbg !675
  %10 = load %struct._IO_FILE** %f, align 8, !dbg !677
  %call9 = call i32 @fflush_unlocked(%struct._IO_FILE* %10), !dbg !677
  %11 = load %struct._IO_FILE** %f, align 8, !dbg !678
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !678
  br label %if.end, !dbg !679

if.else11:                                        ; preds = %if.then4
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !680
  %13 = load i8** %file, align 8, !dbg !680
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %13), !dbg !680
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then7
  %14 = load i8** %marker_file, align 8, !dbg !682
  %tobool13 = icmp ne i8* %14, null, !dbg !682
  br i1 %tobool13, label %if.then14, label %if.else23, !dbg !682

if.then14:                                        ; preds = %if.end
  %15 = load i8** %marker_file, align 8, !dbg !684
  %call15 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0)), !dbg !684
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %f, align 8, !dbg !684
  %16 = load %struct._IO_FILE** %f, align 8, !dbg !686
  %tobool16 = icmp ne %struct._IO_FILE* %16, null, !dbg !686
  br i1 %tobool16, label %if.then17, label %if.else20, !dbg !686

if.then17:                                        ; preds = %if.then14
  %17 = load %struct._IO_FILE** %f, align 8, !dbg !688
  %call18 = call i32 @fflush_unlocked(%struct._IO_FILE* %17), !dbg !688
  %18 = load %struct._IO_FILE** %f, align 8, !dbg !690
  %call19 = call i32 @fclose(%struct._IO_FILE* %18), !dbg !690
  br label %if.end22, !dbg !691

if.else20:                                        ; preds = %if.then14
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !692
  %20 = load i8** %file, align 8, !dbg !692
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %20), !dbg !692
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then17
  br label %if.end25, !dbg !694

if.else23:                                        ; preds = %if.end
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !695
  %22 = load i8** @klee_div_marker_file_env, align 8, !dbg !695
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %22), !dbg !695
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.end22
  br label %if.end28, !dbg !697

if.else26:                                        ; preds = %if.then1
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !698
  %24 = load i8** @klee_div_file_env, align 8, !dbg !698
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %24), !dbg !698
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.end25
  store i32 1, i32* @after_divergence, align 4, !dbg !700
  br label %if.end29, !dbg !701

if.end29:                                         ; preds = %if.end28, %if.else
  %25 = load i64* %y.addr, align 8, !dbg !702
  store i64 %25, i64* %retval, !dbg !702
  br label %return, !dbg !702

return:                                           ; preds = %if.end29, %if.then
  %26 = load i64* %retval, !dbg !703
  ret i64 %26, !dbg !703
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
  ret i32 1, !dbg !704
}

; Function Attrs: noinline nounwind uwtable
define i32 @klee_get_false() #4 {
entry:
  ret i32 0, !dbg !706
}

; Function Attrs: nounwind uwtable
define void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %status.addr}, metadata !707), !dbg !708
  %0 = load i32* %status.addr, align 4, !dbg !709
  %cmp = icmp ne i32 %0, 0, !dbg !709
  br i1 %cmp, label %if.then, label %if.else, !dbg !709

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !712
  %2 = load i8** @program_name, align 8, !dbg !712
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i8* %2), !dbg !712
  br label %if.end, !dbg !712

if.else:                                          ; preds = %entry
  %3 = load i8** @program_name, align 8, !dbg !713
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str8, i32 0, i32 0), i8* %3), !dbg !713
  %4 = load %struct._IO_FILE** @stdout, align 8, !dbg !715
  %call2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([67 x i8]* @.str9, i32 0, i32 0), %struct._IO_FILE* %4), !dbg !715
  %5 = load %struct._IO_FILE** @stdout, align 8, !dbg !716
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([74 x i8]* @.str10, i32 0, i32 0), %struct._IO_FILE* %5), !dbg !716
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !717
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([177 x i8]* @.str11, i32 0, i32 0), %struct._IO_FILE* %6), !dbg !717
  %7 = load %struct._IO_FILE** @stdout, align 8, !dbg !718
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([238 x i8]* @.str12, i32 0, i32 0), %struct._IO_FILE* %7), !dbg !718
  %8 = load %struct._IO_FILE** @stdout, align 8, !dbg !719
  %call6 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([115 x i8]* @.str13, i32 0, i32 0), %struct._IO_FILE* %8), !dbg !719
  %9 = load %struct._IO_FILE** @stdout, align 8, !dbg !720
  %call7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([210 x i8]* @.str14, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !720
  %10 = load %struct._IO_FILE** @stdout, align 8, !dbg !721
  %call8 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8]* @.str15, i32 0, i32 0), %struct._IO_FILE* %10), !dbg !721
  %11 = load %struct._IO_FILE** @stdout, align 8, !dbg !722
  %call9 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8]* @.str16, i32 0, i32 0), %struct._IO_FILE* %11), !dbg !722
  %12 = load %struct._IO_FILE** @stdout, align 8, !dbg !723
  %call10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([520 x i8]* @.str17, i32 0, i32 0), %struct._IO_FILE* %12), !dbg !723
  %call11 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str19, i32 0, i32 0)), !dbg !724
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32* %status.addr, align 4, !dbg !725
  call void @exit(i32 %13) #11, !dbg !725
  unreachable, !dbg !725

return:                                           ; No predecessors!
  ret void, !dbg !726
}

declare i32 @printf(i8*, ...) #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optc = alloca i32, align 4
  %ok = alloca i8, align 1
  %delim_specified = alloca i8, align 1
  %spec_list_string = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !727), !dbg !728
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !729), !dbg !728
  call void @llvm.dbg.declare(metadata !{i32* %optc}, metadata !730), !dbg !731
  call void @llvm.dbg.declare(metadata !{i8* %ok}, metadata !732), !dbg !733
  call void @llvm.dbg.declare(metadata !{i8* %delim_specified}, metadata !734), !dbg !735
  store i8 0, i8* %delim_specified, align 1, !dbg !735
  call void @llvm.dbg.declare(metadata !{i8** %spec_list_string}, metadata !736), !dbg !737
  %0 = load i8*** %argv.addr, align 8, !dbg !738
  %arrayidx = getelementptr inbounds i8** %0, i64 0, !dbg !738
  %1 = load i8** %arrayidx, align 8, !dbg !738
  store i8* %1, i8** @program_name, align 8, !dbg !738
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8]* @.str20, i32 0, i32 0)) #9, !dbg !739
  %call1 = call i32 @atexit(void ()* @close_stdout) #9, !dbg !740
  store i32 0, i32* @operating_mode, align 4, !dbg !741
  store i8 0, i8* @suppress_non_delimited, align 1, !dbg !742
  store i8 0, i8* @delim, align 1, !dbg !743
  store i8 0, i8* @have_read_stdin, align 1, !dbg !744
  br label %while.cond, !dbg !745

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32* %argc.addr, align 4, !dbg !745
  %3 = load i8*** %argv.addr, align 8, !dbg !745
  %call2 = call i32 @getopt_long(i32 %2, i8** %3, i8* getelementptr inbounds ([11 x i8]* @.str21, i32 0, i32 0), %struct.option* getelementptr inbounds ([10 x %struct.option]* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @longopts to [10 x %struct.option]*), i32 0, i32 0), i32* null) #9, !dbg !745
  store i32 %call2, i32* %optc, align 4, !dbg !745
  %cmp = icmp ne i32 %call2, -1, !dbg !745
  br i1 %cmp, label %while.body, label %while.end, !dbg !745

while.body:                                       ; preds = %while.cond
  %4 = load i32* %optc, align 4, !dbg !746
  switch i32 %4, label %sw.default [
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 102, label %sw.bb4
    i32 100, label %sw.bb10
    i32 128, label %sw.bb23
    i32 110, label %sw.bb30
    i32 115, label %sw.bb31
    i32 129, label %sw.bb32
    i32 -130, label %sw.bb33
    i32 -131, label %sw.bb34
  ], !dbg !746

sw.bb:                                            ; preds = %while.body, %while.body
  %5 = load i32* @operating_mode, align 4, !dbg !748
  %cmp3 = icmp ne i32 %5, 0, !dbg !748
  br i1 %cmp3, label %if.then, label %if.end, !dbg !748

if.then:                                          ; preds = %sw.bb
  br label %do.body, !dbg !751

do.body:                                          ; preds = %if.then
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([39 x i8]* @.str22, i32 0, i32 0)), !dbg !752
  call void @usage(i32 1), !dbg !752
  br label %do.end, !dbg !752

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !752

if.end:                                           ; preds = %do.end, %sw.bb
  store i32 1, i32* @operating_mode, align 4, !dbg !754
  %6 = load i8** @optarg, align 8, !dbg !755
  store i8* %6, i8** %spec_list_string, align 8, !dbg !755
  br label %sw.epilog, !dbg !756

sw.bb4:                                           ; preds = %while.body
  %7 = load i32* @operating_mode, align 4, !dbg !757
  %cmp5 = icmp ne i32 %7, 0, !dbg !757
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !757

if.then6:                                         ; preds = %sw.bb4
  br label %do.body7, !dbg !759

do.body7:                                         ; preds = %if.then6
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([39 x i8]* @.str22, i32 0, i32 0)), !dbg !760
  call void @usage(i32 1), !dbg !760
  br label %do.end8, !dbg !760

do.end8:                                          ; preds = %do.body7
  br label %if.end9, !dbg !760

if.end9:                                          ; preds = %do.end8, %sw.bb4
  store i32 2, i32* @operating_mode, align 4, !dbg !762
  %8 = load i8** @optarg, align 8, !dbg !763
  store i8* %8, i8** %spec_list_string, align 8, !dbg !763
  br label %sw.epilog, !dbg !764

sw.bb10:                                          ; preds = %while.body
  %9 = load i8** @optarg, align 8, !dbg !765
  %arrayidx11 = getelementptr inbounds i8* %9, i64 0, !dbg !765
  %10 = load i8* %arrayidx11, align 1, !dbg !765
  %conv = sext i8 %10 to i32, !dbg !765
  %cmp12 = icmp ne i32 %conv, 0, !dbg !765
  br i1 %cmp12, label %land.lhs.true, label %if.end21, !dbg !765

land.lhs.true:                                    ; preds = %sw.bb10
  %11 = load i8** @optarg, align 8, !dbg !765
  %arrayidx14 = getelementptr inbounds i8* %11, i64 1, !dbg !765
  %12 = load i8* %arrayidx14, align 1, !dbg !765
  %conv15 = sext i8 %12 to i32, !dbg !765
  %cmp16 = icmp ne i32 %conv15, 0, !dbg !765
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !765

if.then18:                                        ; preds = %land.lhs.true
  br label %do.body19, !dbg !767

do.body19:                                        ; preds = %if.then18
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([41 x i8]* @.str23, i32 0, i32 0)), !dbg !768
  call void @usage(i32 1), !dbg !768
  br label %do.end20, !dbg !768

do.end20:                                         ; preds = %do.body19
  br label %if.end21, !dbg !768

if.end21:                                         ; preds = %do.end20, %land.lhs.true, %sw.bb10
  %13 = load i8** @optarg, align 8, !dbg !770
  %arrayidx22 = getelementptr inbounds i8* %13, i64 0, !dbg !770
  %14 = load i8* %arrayidx22, align 1, !dbg !770
  store i8 %14, i8* @delim, align 1, !dbg !770
  store i8 1, i8* %delim_specified, align 1, !dbg !771
  br label %sw.epilog, !dbg !772

sw.bb23:                                          ; preds = %while.body
  store i8 1, i8* @output_delimiter_specified, align 1, !dbg !773
  %15 = load i8** @optarg, align 8, !dbg !774
  %arrayidx24 = getelementptr inbounds i8* %15, i64 0, !dbg !774
  %16 = load i8* %arrayidx24, align 1, !dbg !774
  %conv25 = sext i8 %16 to i32, !dbg !774
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !774
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !774

cond.true:                                        ; preds = %sw.bb23
  br label %cond.end, !dbg !774

cond.false:                                       ; preds = %sw.bb23
  %17 = load i8** @optarg, align 8, !dbg !775
  %call28 = call i64 @strlen(i8* %17) #12, !dbg !775
  br label %cond.end, !dbg !775

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %call28, %cond.false ], !dbg !775
  store i64 %cond, i64* @output_delimiter_length, align 8, !dbg !775
  %18 = load i8** @optarg, align 8, !dbg !776
  %call29 = call i8* @xstrdup(i8* %18), !dbg !776
  store i8* %call29, i8** @output_delimiter_string, align 8, !dbg !776
  br label %sw.epilog, !dbg !777

sw.bb30:                                          ; preds = %while.body
  br label %sw.epilog, !dbg !778

sw.bb31:                                          ; preds = %while.body
  store i8 1, i8* @suppress_non_delimited, align 1, !dbg !779
  br label %sw.epilog, !dbg !780

sw.bb32:                                          ; preds = %while.body
  store i8 1, i8* @complement, align 1, !dbg !781
  br label %sw.epilog, !dbg !782

sw.bb33:                                          ; preds = %while.body
  call void @usage(i32 0), !dbg !783
  br label %sw.epilog, !dbg !783

sw.bb34:                                          ; preds = %while.body
  %19 = load %struct._IO_FILE** @stdout, align 8, !dbg !784
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str29, i32 0, i32 0), i8* null), !dbg !784
  call void @exit(i32 0) #11, !dbg !784
  unreachable, !dbg !784

sw.default:                                       ; preds = %while.body
  call void @usage(i32 1), !dbg !785
  br label %sw.epilog, !dbg !786

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %cond.end, %if.end21, %if.end9, %if.end
  br label %while.cond, !dbg !787

while.end:                                        ; preds = %while.cond
  %20 = load i32* @operating_mode, align 4, !dbg !788
  %cmp35 = icmp eq i32 %20, 0, !dbg !788
  br i1 %cmp35, label %if.then37, label %if.end40, !dbg !788

if.then37:                                        ; preds = %while.end
  br label %do.body38, !dbg !790

do.body38:                                        ; preds = %if.then37
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([56 x i8]* @.str30, i32 0, i32 0)), !dbg !791
  call void @usage(i32 1), !dbg !791
  br label %do.end39, !dbg !791

do.end39:                                         ; preds = %do.body38
  br label %if.end40, !dbg !791

if.end40:                                         ; preds = %do.end39, %while.end
  %21 = load i8* @delim, align 1, !dbg !793
  %conv41 = zext i8 %21 to i32, !dbg !793
  %cmp42 = icmp ne i32 %conv41, 0, !dbg !793
  br i1 %cmp42, label %land.lhs.true44, label %if.end50, !dbg !793

land.lhs.true44:                                  ; preds = %if.end40
  %22 = load i32* @operating_mode, align 4, !dbg !793
  %cmp45 = icmp ne i32 %22, 2, !dbg !793
  br i1 %cmp45, label %if.then47, label %if.end50, !dbg !793

if.then47:                                        ; preds = %land.lhs.true44
  br label %do.body48, !dbg !795

do.body48:                                        ; preds = %if.then47
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([66 x i8]* @.str31, i32 0, i32 0)), !dbg !796
  call void @usage(i32 1), !dbg !796
  br label %do.end49, !dbg !796

do.end49:                                         ; preds = %do.body48
  br label %if.end50, !dbg !796

if.end50:                                         ; preds = %do.end49, %land.lhs.true44, %if.end40
  %23 = load i8* @suppress_non_delimited, align 1, !dbg !798
  %tobool = trunc i8 %23 to i1, !dbg !798
  br i1 %tobool, label %land.lhs.true52, label %if.end58, !dbg !798

land.lhs.true52:                                  ; preds = %if.end50
  %24 = load i32* @operating_mode, align 4, !dbg !798
  %cmp53 = icmp ne i32 %24, 2, !dbg !798
  br i1 %cmp53, label %if.then55, label %if.end58, !dbg !798

if.then55:                                        ; preds = %land.lhs.true52
  br label %do.body56, !dbg !800

do.body56:                                        ; preds = %if.then55
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([75 x i8]* @.str32, i32 0, i32 0)), !dbg !801
  call void @usage(i32 1), !dbg !801
  br label %do.end57, !dbg !801

do.end57:                                         ; preds = %do.body56
  br label %if.end58, !dbg !801

if.end58:                                         ; preds = %do.end57, %land.lhs.true52, %if.end50
  %25 = load i8* @output_delimiter_specified, align 1, !dbg !803
  %tobool59 = trunc i8 %25 to i1, !dbg !803
  br i1 %tobool59, label %if.then60, label %if.end66, !dbg !803

if.then60:                                        ; preds = %if.end58
  %call61 = call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* @hash_int, i1 (i8*, i8*)* @hash_compare_ints, void (i8*)* null), !dbg !805
  store %struct.hash_table* %call61, %struct.hash_table** @range_start_ht, align 8, !dbg !805
  %26 = load %struct.hash_table** @range_start_ht, align 8, !dbg !807
  %cmp62 = icmp eq %struct.hash_table* %26, null, !dbg !807
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !807

if.then64:                                        ; preds = %if.then60
  call void @xalloc_die() #13, !dbg !809
  unreachable, !dbg !809

if.end65:                                         ; preds = %if.then60
  br label %if.end66, !dbg !810

if.end66:                                         ; preds = %if.end65, %if.end58
  %27 = load i8** %spec_list_string, align 8, !dbg !811
  %call67 = call zeroext i1 @set_fields(i8* %27), !dbg !811
  br i1 %call67, label %if.end77, label %if.then68, !dbg !811

if.then68:                                        ; preds = %if.end66
  %28 = load i32* @operating_mode, align 4, !dbg !813
  %cmp69 = icmp eq i32 %28, 2, !dbg !813
  br i1 %cmp69, label %if.then71, label %if.else, !dbg !813

if.then71:                                        ; preds = %if.then68
  br label %do.body72, !dbg !816

do.body72:                                        ; preds = %if.then71
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([23 x i8]* @.str33, i32 0, i32 0)), !dbg !817
  call void @usage(i32 1), !dbg !817
  br label %do.end73, !dbg !817

do.end73:                                         ; preds = %do.body72
  br label %if.end76, !dbg !817

if.else:                                          ; preds = %if.then68
  br label %do.body74, !dbg !819

do.body74:                                        ; preds = %if.else
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([26 x i8]* @.str34, i32 0, i32 0)), !dbg !820
  call void @usage(i32 1), !dbg !820
  br label %do.end75, !dbg !820

do.end75:                                         ; preds = %do.body74
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %do.end73
  br label %if.end77, !dbg !822

if.end77:                                         ; preds = %if.end76, %if.end66
  %29 = load i8* %delim_specified, align 1, !dbg !823
  %tobool78 = trunc i8 %29 to i1, !dbg !823
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !823

if.then79:                                        ; preds = %if.end77
  store i8 9, i8* @delim, align 1, !dbg !825
  br label %if.end80, !dbg !825

if.end80:                                         ; preds = %if.then79, %if.end77
  %30 = load i8** @output_delimiter_string, align 8, !dbg !826
  %cmp81 = icmp eq i8* %30, null, !dbg !826
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !826

if.then83:                                        ; preds = %if.end80
  %31 = load i8* @delim, align 1, !dbg !828
  store i8 %31, i8* getelementptr inbounds ([2 x i8]* @main.dummy, i32 0, i64 0), align 1, !dbg !828
  store i8 0, i8* getelementptr inbounds ([2 x i8]* @main.dummy, i32 0, i64 1), align 1, !dbg !830
  store i8* getelementptr inbounds ([2 x i8]* @main.dummy, i32 0, i32 0), i8** @output_delimiter_string, align 8, !dbg !831
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !832
  br label %if.end84, !dbg !833

if.end84:                                         ; preds = %if.then83, %if.end80
  %32 = load i32* @optind, align 4, !dbg !834
  %33 = load i32* %argc.addr, align 4, !dbg !834
  %cmp85 = icmp eq i32 %32, %33, !dbg !834
  br i1 %cmp85, label %if.then87, label %if.else89, !dbg !834

if.then87:                                        ; preds = %if.end84
  %call88 = call zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0)), !dbg !836
  %frombool = zext i1 %call88 to i8, !dbg !836
  store i8 %frombool, i8* %ok, align 1, !dbg !836
  br label %if.end99, !dbg !836

if.else89:                                        ; preds = %if.end84
  store i8 1, i8* %ok, align 1, !dbg !837
  br label %for.cond, !dbg !837

for.cond:                                         ; preds = %for.inc, %if.else89
  %34 = load i32* @optind, align 4, !dbg !837
  %35 = load i32* %argc.addr, align 4, !dbg !837
  %cmp90 = icmp slt i32 %34, %35, !dbg !837
  br i1 %cmp90, label %for.body, label %for.end, !dbg !837

for.body:                                         ; preds = %for.cond
  %36 = load i32* @optind, align 4, !dbg !839
  %idxprom = sext i32 %36 to i64, !dbg !839
  %37 = load i8*** %argv.addr, align 8, !dbg !839
  %arrayidx92 = getelementptr inbounds i8** %37, i64 %idxprom, !dbg !839
  %38 = load i8** %arrayidx92, align 8, !dbg !839
  %call93 = call zeroext i1 @cut_file(i8* %38), !dbg !839
  %conv94 = zext i1 %call93 to i32, !dbg !839
  %39 = load i8* %ok, align 1, !dbg !839
  %tobool95 = trunc i8 %39 to i1, !dbg !839
  %conv96 = zext i1 %tobool95 to i32, !dbg !839
  %and = and i32 %conv96, %conv94, !dbg !839
  %tobool97 = icmp ne i32 %and, 0, !dbg !839
  %frombool98 = zext i1 %tobool97 to i8, !dbg !839
  store i8 %frombool98, i8* %ok, align 1, !dbg !839
  br label %for.inc, !dbg !839

for.inc:                                          ; preds = %for.body
  %40 = load i32* @optind, align 4, !dbg !837
  %inc = add nsw i32 %40, 1, !dbg !837
  store i32 %inc, i32* @optind, align 4, !dbg !837
  br label %for.cond, !dbg !837

for.end:                                          ; preds = %for.cond
  br label %if.end99

if.end99:                                         ; preds = %for.end, %if.then87
  %41 = load %struct.hash_table** @range_start_ht, align 8, !dbg !840
  %tobool100 = icmp ne %struct.hash_table* %41, null, !dbg !840
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !840

if.then101:                                       ; preds = %if.end99
  %42 = load %struct.hash_table** @range_start_ht, align 8, !dbg !842
  call void @hash_free(%struct.hash_table* %42), !dbg !842
  br label %if.end102, !dbg !842

if.end102:                                        ; preds = %if.then101, %if.end99
  %43 = load i8* @have_read_stdin, align 1, !dbg !843
  %tobool103 = trunc i8 %43 to i1, !dbg !843
  br i1 %tobool103, label %land.lhs.true105, label %if.end112, !dbg !843

land.lhs.true105:                                 ; preds = %if.end102
  %44 = load %struct._IO_FILE** @stdin, align 8, !dbg !843
  %call106 = call i32 @fclose(%struct._IO_FILE* %44), !dbg !843
  %cmp107 = icmp eq i32 %call106, -1, !dbg !843
  br i1 %cmp107, label %if.then109, label %if.end112, !dbg !843

if.then109:                                       ; preds = %land.lhs.true105
  %call110 = call i32* @__errno_location() #1, !dbg !845
  %45 = load i32* %call110, align 4, !dbg !845
  %conv111 = sext i32 %45 to i64, !dbg !845
  %46 = inttoptr i64 %conv111 to i32* (...)*, !dbg !845
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %46, i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0)), !dbg !845
  store i8 0, i8* %ok, align 1, !dbg !847
  br label %if.end112, !dbg !848

if.end112:                                        ; preds = %if.then109, %land.lhs.true105, %if.end102
  %47 = load i8* %ok, align 1, !dbg !849
  %tobool113 = trunc i8 %47 to i1, !dbg !849
  %cond115 = select i1 %tobool113, i32 0, i32 1, !dbg !849
  call void @exit(i32 %cond115) #11, !dbg !849
  unreachable, !dbg !849

return:                                           ; No predecessors!
  %48 = load i32* %retval, !dbg !850
  ret i32 %48, !dbg !850
}

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @klee_compatible_error(i32 %status, i32* (...)* %__errno_location, i8* %format, ...) #0 {
entry:
  %status.addr = alloca i32, align 4
  %__errno_location.addr = alloca i32* (...)*, align 8
  %format.addr = alloca i8*, align 8
  %err_args = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %status, i32* %status.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %status.addr}, metadata !851), !dbg !852
  store i32* (...)* %__errno_location, i32* (...)** %__errno_location.addr, align 8
  call void @llvm.dbg.declare(metadata !{i32* (...)** %__errno_location.addr}, metadata !853), !dbg !852
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %format.addr}, metadata !854), !dbg !852
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %err_args}, metadata !855), !dbg !867
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !868
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !868
  call void @llvm.va_start(i8* %arraydecay1), !dbg !868
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !869
  %1 = load i8** %format.addr, align 8, !dbg !869
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !869
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !869
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !870
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !870
  call void @llvm.va_end(i8* %arraydecay34), !dbg !870
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !871
  %call5 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %2), !dbg !871
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !872
  %call6 = call i32 @fflush_unlocked(%struct._IO_FILE* %3), !dbg !872
  %4 = load i32* %status.addr, align 4, !dbg !873
  %tobool = icmp ne i32 %4, 0, !dbg !873
  br i1 %tobool, label %if.then, label %if.end, !dbg !873

if.then:                                          ; preds = %entry
  %5 = load i32* %status.addr, align 4, !dbg !875
  call void @exit(i32 %5) #11, !dbg !875
  unreachable, !dbg !875

if.end:                                           ; preds = %entry
  ret void, !dbg !877
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind uwtable
define internal i64 @hash_int(i8* %x, i64 %tablesize) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %tablesize.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %x.addr}, metadata !878), !dbg !879
  store i64 %tablesize, i64* %tablesize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %tablesize.addr}, metadata !880), !dbg !879
  call void @llvm.dbg.declare(metadata !{i64* %y}, metadata !881), !dbg !882
  %0 = load i8** %x.addr, align 8, !dbg !882
  %1 = ptrtoint i8* %0 to i64, !dbg !882
  store i64 %1, i64* %y, align 8, !dbg !882
  %2 = load i64* %y, align 8, !dbg !883
  %3 = load i64* %tablesize.addr, align 8, !dbg !883
  %rem = urem i64 %2, %3, !dbg !883
  ret i64 %rem, !dbg !883
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @hash_compare_ints(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %x.addr}, metadata !884), !dbg !885
  store i8* %y, i8** %y.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %y.addr}, metadata !886), !dbg !885
  %0 = load i8** %x.addr, align 8, !dbg !887
  %1 = load i8** %y.addr, align 8, !dbg !887
  %cmp = icmp eq i8* %0, %1, !dbg !887
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !887
  %tobool = icmp ne i32 %cond, 0, !dbg !887
  ret i1 %tobool, !dbg !887
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @set_fields(i8* %fieldstr) #0 {
entry:
  %fieldstr.addr = alloca i8*, align 8
  %initial = alloca i64, align 8
  %value = alloca i64, align 8
  %dash_found = alloca i8, align 1
  %field_found = alloca i8, align 1
  %rp = alloca %struct.range_pair*, align 8
  %n_rp = alloca i64, align 8
  %n_rp_allocated = alloca i64, align 8
  %i = alloca i64, align 8
  %in_digits = alloca i8, align 1
  %new_v = alloca i64, align 8
  %len = alloca i64, align 8
  %bad_num = alloca i8*, align 8
  %j = alloca i64, align 8
  %j198 = alloca i64, align 8
  %rsi = alloca i64, align 8
  %ent_from_table = alloca i8*, align 8
  %j250 = alloca i64, align 8
  %rsi_candidate = alloca i64, align 8
  store i8* %fieldstr, i8** %fieldstr.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %fieldstr.addr}, metadata !888), !dbg !889
  call void @llvm.dbg.declare(metadata !{i64* %initial}, metadata !890), !dbg !891
  store i64 1, i64* %initial, align 8, !dbg !891
  call void @llvm.dbg.declare(metadata !{i64* %value}, metadata !892), !dbg !893
  store i64 0, i64* %value, align 8, !dbg !893
  call void @llvm.dbg.declare(metadata !{i8* %dash_found}, metadata !894), !dbg !895
  store i8 0, i8* %dash_found, align 1, !dbg !895
  call void @llvm.dbg.declare(metadata !{i8* %field_found}, metadata !896), !dbg !897
  store i8 0, i8* %field_found, align 1, !dbg !897
  call void @llvm.dbg.declare(metadata !{%struct.range_pair** %rp}, metadata !898), !dbg !904
  store %struct.range_pair* null, %struct.range_pair** %rp, align 8, !dbg !904
  call void @llvm.dbg.declare(metadata !{i64* %n_rp}, metadata !905), !dbg !906
  store i64 0, i64* %n_rp, align 8, !dbg !906
  call void @llvm.dbg.declare(metadata !{i64* %n_rp_allocated}, metadata !907), !dbg !908
  store i64 0, i64* %n_rp_allocated, align 8, !dbg !908
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !909), !dbg !910
  call void @llvm.dbg.declare(metadata !{i8* %in_digits}, metadata !911), !dbg !912
  store i8 0, i8* %in_digits, align 1, !dbg !912
  br label %for.cond, !dbg !913

for.cond:                                         ; preds = %if.end125, %entry
  %0 = load i8** %fieldstr.addr, align 8, !dbg !915
  %1 = load i8* %0, align 1, !dbg !915
  %conv = sext i8 %1 to i32, !dbg !915
  %cmp = icmp eq i32 %conv, 45, !dbg !915
  br i1 %cmp, label %if.then, label %if.else6, !dbg !915

if.then:                                          ; preds = %for.cond
  store i8 0, i8* %in_digits, align 1, !dbg !918
  %2 = load i8* %dash_found, align 1, !dbg !920
  %tobool = trunc i8 %2 to i1, !dbg !920
  br i1 %tobool, label %if.then2, label %if.end, !dbg !920

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !922

do.body:                                          ; preds = %if.then2
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([27 x i8]* @.str40, i32 0, i32 0)), !dbg !923
  call void @usage(i32 1), !dbg !923
  br label %do.end, !dbg !923

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !923

if.end:                                           ; preds = %do.end, %if.then
  store i8 1, i8* %dash_found, align 1, !dbg !925
  %3 = load i8** %fieldstr.addr, align 8, !dbg !926
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !926
  store i8* %incdec.ptr, i8** %fieldstr.addr, align 8, !dbg !926
  %4 = load i64* %value, align 8, !dbg !927
  %tobool3 = icmp ne i64 %4, 0, !dbg !927
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !927

if.then4:                                         ; preds = %if.end
  %5 = load i64* %value, align 8, !dbg !929
  store i64 %5, i64* %initial, align 8, !dbg !929
  store i64 0, i64* %value, align 8, !dbg !931
  br label %if.end5, !dbg !932

if.else:                                          ; preds = %if.end
  store i64 1, i64* %initial, align 8, !dbg !933
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  br label %if.end125, !dbg !934

if.else6:                                         ; preds = %for.cond
  %6 = load i8** %fieldstr.addr, align 8, !dbg !935
  %7 = load i8* %6, align 1, !dbg !935
  %conv7 = sext i8 %7 to i32, !dbg !935
  %cmp8 = icmp eq i32 %conv7, 44, !dbg !935
  br i1 %cmp8, label %if.then17, label %lor.lhs.false, !dbg !935

lor.lhs.false:                                    ; preds = %if.else6
  %8 = load i8** %fieldstr.addr, align 8, !dbg !935
  %9 = load i8* %8, align 1, !dbg !935
  %conv10 = sext i8 %9 to i32, !dbg !935
  %idxprom = sext i32 %conv10 to i64, !dbg !935
  %call = call i16** @__ctype_b_loc() #1, !dbg !935
  %10 = load i16** %call, align 8, !dbg !935
  %arrayidx = getelementptr inbounds i16* %10, i64 %idxprom, !dbg !935
  %11 = load i16* %arrayidx, align 2, !dbg !935
  %conv11 = zext i16 %11 to i32, !dbg !935
  %and = and i32 %conv11, 1, !dbg !935
  %tobool12 = icmp ne i32 %and, 0, !dbg !935
  br i1 %tobool12, label %if.then17, label %lor.lhs.false13, !dbg !935

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %12 = load i8** %fieldstr.addr, align 8, !dbg !935
  %13 = load i8* %12, align 1, !dbg !935
  %conv14 = sext i8 %13 to i32, !dbg !935
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !935
  br i1 %cmp15, label %if.then17, label %if.else90, !dbg !935

if.then17:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %if.else6
  store i8 0, i8* %in_digits, align 1, !dbg !937
  %14 = load i8* %dash_found, align 1, !dbg !939
  %tobool18 = trunc i8 %14 to i1, !dbg !939
  br i1 %tobool18, label %if.then19, label %if.else66, !dbg !939

if.then19:                                        ; preds = %if.then17
  store i8 0, i8* %dash_found, align 1, !dbg !941
  %15 = load i64* %value, align 8, !dbg !943
  %cmp20 = icmp eq i64 %15, 0, !dbg !943
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !943

if.then22:                                        ; preds = %if.then19
  %16 = load i64* %initial, align 8, !dbg !945
  store i64 %16, i64* @eol_range_start, align 8, !dbg !945
  store i8 1, i8* %field_found, align 1, !dbg !947
  br label %if.end65, !dbg !948

if.else23:                                        ; preds = %if.then19
  %17 = load i64* %value, align 8, !dbg !949
  %18 = load i64* %initial, align 8, !dbg !949
  %cmp24 = icmp ult i64 %17, %18, !dbg !949
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !949

if.then26:                                        ; preds = %if.else23
  br label %do.body27, !dbg !952

do.body27:                                        ; preds = %if.then26
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([27 x i8]* @.str40, i32 0, i32 0)), !dbg !953
  call void @usage(i32 1), !dbg !953
  br label %do.end28, !dbg !953

do.end28:                                         ; preds = %do.body27
  br label %if.end29, !dbg !953

if.end29:                                         ; preds = %do.end28, %if.else23
  %19 = load i64* @eol_range_start, align 8, !dbg !955
  %cmp30 = icmp ne i64 %19, 0, !dbg !955
  br i1 %cmp30, label %if.then32, label %if.else51, !dbg !955

if.then32:                                        ; preds = %if.end29
  %20 = load i64* %initial, align 8, !dbg !957
  %21 = load i64* @eol_range_start, align 8, !dbg !957
  %cmp33 = icmp ult i64 %20, %21, !dbg !957
  br i1 %cmp33, label %if.then35, label %if.end50, !dbg !957

if.then35:                                        ; preds = %if.then32
  %22 = load i64* @eol_range_start, align 8, !dbg !960
  %23 = load i64* %value, align 8, !dbg !960
  %cmp36 = icmp ule i64 %22, %23, !dbg !960
  br i1 %cmp36, label %if.then38, label %if.else39, !dbg !960

if.then38:                                        ; preds = %if.then35
  %24 = load i64* %initial, align 8, !dbg !963
  store i64 %24, i64* @eol_range_start, align 8, !dbg !963
  br label %if.end49, !dbg !965

if.else39:                                        ; preds = %if.then35
  br label %do.body40, !dbg !966

do.body40:                                        ; preds = %if.else39
  %25 = load i64* %n_rp, align 8, !dbg !968
  %26 = load i64* %n_rp_allocated, align 8, !dbg !968
  %cmp41 = icmp uge i64 %25, %26, !dbg !968
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !968

if.then43:                                        ; preds = %do.body40
  %27 = load %struct.range_pair** %rp, align 8, !dbg !971
  %28 = bitcast %struct.range_pair* %27 to i8*, !dbg !971
  %call44 = call i8* @x2nrealloc(i8* %28, i64* %n_rp_allocated, i64 16), !dbg !971
  %29 = bitcast i8* %call44 to %struct.range_pair*, !dbg !971
  store %struct.range_pair* %29, %struct.range_pair** %rp, align 8, !dbg !971
  br label %if.end45, !dbg !971

if.end45:                                         ; preds = %if.then43, %do.body40
  %30 = load i64* %initial, align 8, !dbg !973
  %31 = load i64* %n_rp, align 8, !dbg !973
  %32 = load %struct.range_pair** %rp, align 8, !dbg !973
  %arrayidx46 = getelementptr inbounds %struct.range_pair* %32, i64 %31, !dbg !973
  %lo = getelementptr inbounds %struct.range_pair* %arrayidx46, i32 0, i32 0, !dbg !973
  store i64 %30, i64* %lo, align 8, !dbg !973
  %33 = load i64* %value, align 8, !dbg !973
  %34 = load i64* %n_rp, align 8, !dbg !973
  %35 = load %struct.range_pair** %rp, align 8, !dbg !973
  %arrayidx47 = getelementptr inbounds %struct.range_pair* %35, i64 %34, !dbg !973
  %hi = getelementptr inbounds %struct.range_pair* %arrayidx47, i32 0, i32 1, !dbg !973
  store i64 %33, i64* %hi, align 8, !dbg !973
  %36 = load i64* %n_rp, align 8, !dbg !973
  %inc = add i64 %36, 1, !dbg !973
  store i64 %inc, i64* %n_rp, align 8, !dbg !973
  br label %do.end48, !dbg !973

do.end48:                                         ; preds = %if.end45
  br label %if.end49

if.end49:                                         ; preds = %do.end48, %if.then38
  store i8 1, i8* %field_found, align 1, !dbg !974
  br label %if.end50, !dbg !975

if.end50:                                         ; preds = %if.end49, %if.then32
  br label %if.end64, !dbg !976

if.else51:                                        ; preds = %if.end29
  br label %do.body52, !dbg !977

do.body52:                                        ; preds = %if.else51
  %37 = load i64* %n_rp, align 8, !dbg !979
  %38 = load i64* %n_rp_allocated, align 8, !dbg !979
  %cmp53 = icmp uge i64 %37, %38, !dbg !979
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !979

if.then55:                                        ; preds = %do.body52
  %39 = load %struct.range_pair** %rp, align 8, !dbg !982
  %40 = bitcast %struct.range_pair* %39 to i8*, !dbg !982
  %call56 = call i8* @x2nrealloc(i8* %40, i64* %n_rp_allocated, i64 16), !dbg !982
  %41 = bitcast i8* %call56 to %struct.range_pair*, !dbg !982
  store %struct.range_pair* %41, %struct.range_pair** %rp, align 8, !dbg !982
  br label %if.end57, !dbg !982

if.end57:                                         ; preds = %if.then55, %do.body52
  %42 = load i64* %initial, align 8, !dbg !984
  %43 = load i64* %n_rp, align 8, !dbg !984
  %44 = load %struct.range_pair** %rp, align 8, !dbg !984
  %arrayidx58 = getelementptr inbounds %struct.range_pair* %44, i64 %43, !dbg !984
  %lo59 = getelementptr inbounds %struct.range_pair* %arrayidx58, i32 0, i32 0, !dbg !984
  store i64 %42, i64* %lo59, align 8, !dbg !984
  %45 = load i64* %value, align 8, !dbg !984
  %46 = load i64* %n_rp, align 8, !dbg !984
  %47 = load %struct.range_pair** %rp, align 8, !dbg !984
  %arrayidx60 = getelementptr inbounds %struct.range_pair* %47, i64 %46, !dbg !984
  %hi61 = getelementptr inbounds %struct.range_pair* %arrayidx60, i32 0, i32 1, !dbg !984
  store i64 %45, i64* %hi61, align 8, !dbg !984
  %48 = load i64* %n_rp, align 8, !dbg !984
  %inc62 = add i64 %48, 1, !dbg !984
  store i64 %inc62, i64* %n_rp, align 8, !dbg !984
  br label %do.end63, !dbg !984

do.end63:                                         ; preds = %if.end57
  store i8 1, i8* %field_found, align 1, !dbg !985
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %if.end50
  store i64 0, i64* %value, align 8, !dbg !986
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then22
  br label %if.end83, !dbg !987

if.else66:                                        ; preds = %if.then17
  %49 = load i64* %value, align 8, !dbg !988
  %cmp67 = icmp ne i64 %49, 0, !dbg !988
  br i1 %cmp67, label %if.then69, label %if.end82, !dbg !988

if.then69:                                        ; preds = %if.else66
  br label %do.body70, !dbg !990

do.body70:                                        ; preds = %if.then69
  %50 = load i64* %n_rp, align 8, !dbg !992
  %51 = load i64* %n_rp_allocated, align 8, !dbg !992
  %cmp71 = icmp uge i64 %50, %51, !dbg !992
  br i1 %cmp71, label %if.then73, label %if.end75, !dbg !992

if.then73:                                        ; preds = %do.body70
  %52 = load %struct.range_pair** %rp, align 8, !dbg !995
  %53 = bitcast %struct.range_pair* %52 to i8*, !dbg !995
  %call74 = call i8* @x2nrealloc(i8* %53, i64* %n_rp_allocated, i64 16), !dbg !995
  %54 = bitcast i8* %call74 to %struct.range_pair*, !dbg !995
  store %struct.range_pair* %54, %struct.range_pair** %rp, align 8, !dbg !995
  br label %if.end75, !dbg !995

if.end75:                                         ; preds = %if.then73, %do.body70
  %55 = load i64* %value, align 8, !dbg !997
  %56 = load i64* %n_rp, align 8, !dbg !997
  %57 = load %struct.range_pair** %rp, align 8, !dbg !997
  %arrayidx76 = getelementptr inbounds %struct.range_pair* %57, i64 %56, !dbg !997
  %lo77 = getelementptr inbounds %struct.range_pair* %arrayidx76, i32 0, i32 0, !dbg !997
  store i64 %55, i64* %lo77, align 8, !dbg !997
  %58 = load i64* %value, align 8, !dbg !997
  %59 = load i64* %n_rp, align 8, !dbg !997
  %60 = load %struct.range_pair** %rp, align 8, !dbg !997
  %arrayidx78 = getelementptr inbounds %struct.range_pair* %60, i64 %59, !dbg !997
  %hi79 = getelementptr inbounds %struct.range_pair* %arrayidx78, i32 0, i32 1, !dbg !997
  store i64 %58, i64* %hi79, align 8, !dbg !997
  %61 = load i64* %n_rp, align 8, !dbg !997
  %inc80 = add i64 %61, 1, !dbg !997
  store i64 %inc80, i64* %n_rp, align 8, !dbg !997
  br label %do.end81, !dbg !997

do.end81:                                         ; preds = %if.end75
  store i64 0, i64* %value, align 8, !dbg !998
  store i8 1, i8* %field_found, align 1, !dbg !999
  br label %if.end82, !dbg !1000

if.end82:                                         ; preds = %do.end81, %if.else66
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end65
  %62 = load i8** %fieldstr.addr, align 8, !dbg !1001
  %63 = load i8* %62, align 1, !dbg !1001
  %conv84 = sext i8 %63 to i32, !dbg !1001
  %cmp85 = icmp eq i32 %conv84, 0, !dbg !1001
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !1001

if.then87:                                        ; preds = %if.end83
  br label %for.end, !dbg !1003

if.end88:                                         ; preds = %if.end83
  %64 = load i8** %fieldstr.addr, align 8, !dbg !1005
  %incdec.ptr89 = getelementptr inbounds i8* %64, i32 1, !dbg !1005
  store i8* %incdec.ptr89, i8** %fieldstr.addr, align 8, !dbg !1005
  br label %if.end124, !dbg !1006

if.else90:                                        ; preds = %lor.lhs.false13
  %65 = load i8** %fieldstr.addr, align 8, !dbg !1007
  %66 = load i8* %65, align 1, !dbg !1007
  %conv91 = sext i8 %66 to i32, !dbg !1007
  %sub = sub i32 %conv91, 48, !dbg !1007
  %cmp92 = icmp ule i32 %sub, 9, !dbg !1007
  br i1 %cmp92, label %if.then94, label %if.else120, !dbg !1007

if.then94:                                        ; preds = %if.else90
  call void @llvm.dbg.declare(metadata !{i64* %new_v}, metadata !1009), !dbg !1011
  %67 = load i8* %in_digits, align 1, !dbg !1012
  %tobool95 = trunc i8 %67 to i1, !dbg !1012
  br i1 %tobool95, label %lor.lhs.false96, label %if.then98, !dbg !1012

lor.lhs.false96:                                  ; preds = %if.then94
  %68 = load i8** @set_fields.num_start, align 8, !dbg !1012
  %tobool97 = icmp ne i8* %68, null, !dbg !1012
  br i1 %tobool97, label %if.end99, label %if.then98, !dbg !1012

if.then98:                                        ; preds = %lor.lhs.false96, %if.then94
  %69 = load i8** %fieldstr.addr, align 8, !dbg !1014
  store i8* %69, i8** @set_fields.num_start, align 8, !dbg !1014
  br label %if.end99, !dbg !1014

if.end99:                                         ; preds = %if.then98, %lor.lhs.false96
  store i8 1, i8* %in_digits, align 1, !dbg !1015
  %70 = load i64* %value, align 8, !dbg !1016
  %mul = mul i64 10, %70, !dbg !1016
  %71 = load i8** %fieldstr.addr, align 8, !dbg !1016
  %72 = load i8* %71, align 1, !dbg !1016
  %conv100 = sext i8 %72 to i64, !dbg !1016
  %add = add i64 %mul, %conv100, !dbg !1016
  %sub101 = sub i64 %add, 48, !dbg !1016
  store i64 %sub101, i64* %new_v, align 8, !dbg !1016
  %73 = load i64* %value, align 8, !dbg !1017
  %cmp102 = icmp ult i64 1844674407370955161, %73, !dbg !1017
  br i1 %cmp102, label %if.then108, label %lor.lhs.false104, !dbg !1017

lor.lhs.false104:                                 ; preds = %if.end99
  %74 = load i64* %new_v, align 8, !dbg !1017
  %75 = load i64* %value, align 8, !dbg !1017
  %mul105 = mul i64 %75, 10, !dbg !1017
  %cmp106 = icmp ult i64 %74, %mul105, !dbg !1017
  br i1 %cmp106, label %if.then108, label %if.end118, !dbg !1017

if.then108:                                       ; preds = %lor.lhs.false104, %if.end99
  call void @llvm.dbg.declare(metadata !{i64* %len}, metadata !1019), !dbg !1021
  %76 = load i8** @set_fields.num_start, align 8, !dbg !1021
  %call109 = call i64 @strspn(i8* %76, i8* getelementptr inbounds ([11 x i8]* @.str41, i32 0, i32 0)) #12, !dbg !1021
  store i64 %call109, i64* %len, align 8, !dbg !1021
  call void @llvm.dbg.declare(metadata !{i8** %bad_num}, metadata !1022), !dbg !1023
  %77 = load i8** @set_fields.num_start, align 8, !dbg !1023
  %78 = load i64* %len, align 8, !dbg !1023
  %call110 = call i8* @xstrndup(i8* %77, i64 %78), !dbg !1023
  store i8* %call110, i8** %bad_num, align 8, !dbg !1023
  %79 = load i32* @operating_mode, align 4, !dbg !1024
  %cmp111 = icmp eq i32 %79, 1, !dbg !1024
  br i1 %cmp111, label %if.then113, label %if.else115, !dbg !1024

if.then113:                                       ; preds = %if.then108
  %80 = load i8** %bad_num, align 8, !dbg !1026
  %call114 = call i8* @quote(i8* %80), !dbg !1026
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([28 x i8]* @.str42, i32 0, i32 0), i8* %call114), !dbg !1027
  br label %if.end117, !dbg !1027

if.else115:                                       ; preds = %if.then108
  %81 = load i8** %bad_num, align 8, !dbg !1028
  %call116 = call i8* @quote(i8* %81), !dbg !1028
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([29 x i8]* @.str43, i32 0, i32 0), i8* %call116), !dbg !1029
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then113
  %82 = load i8** %bad_num, align 8, !dbg !1030
  call void @free(i8* %82) #9, !dbg !1030
  call void @exit(i32 1) #11, !dbg !1031
  unreachable, !dbg !1031

if.end118:                                        ; preds = %lor.lhs.false104
  %83 = load i64* %new_v, align 8, !dbg !1032
  store i64 %83, i64* %value, align 8, !dbg !1032
  %84 = load i8** %fieldstr.addr, align 8, !dbg !1033
  %incdec.ptr119 = getelementptr inbounds i8* %84, i32 1, !dbg !1033
  store i8* %incdec.ptr119, i8** %fieldstr.addr, align 8, !dbg !1033
  br label %if.end123, !dbg !1034

if.else120:                                       ; preds = %if.else90
  br label %do.body121, !dbg !1035

do.body121:                                       ; preds = %if.else120
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([27 x i8]* @.str40, i32 0, i32 0)), !dbg !1036
  call void @usage(i32 1), !dbg !1036
  br label %do.end122, !dbg !1036

do.end122:                                        ; preds = %do.body121
  br label %if.end123

if.end123:                                        ; preds = %do.end122, %if.end118
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.end88
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end5
  br label %for.cond, !dbg !1038

for.end:                                          ; preds = %if.then87
  store i64 0, i64* @max_range_endpoint, align 8, !dbg !1039
  store i64 0, i64* %i, align 8, !dbg !1040
  br label %for.cond126, !dbg !1040

for.cond126:                                      ; preds = %for.inc, %for.end
  %85 = load i64* %i, align 8, !dbg !1040
  %86 = load i64* %n_rp, align 8, !dbg !1040
  %cmp127 = icmp ult i64 %85, %86, !dbg !1040
  br i1 %cmp127, label %for.body, label %for.end138, !dbg !1040

for.body:                                         ; preds = %for.cond126
  %87 = load i64* %i, align 8, !dbg !1042
  %88 = load %struct.range_pair** %rp, align 8, !dbg !1042
  %arrayidx129 = getelementptr inbounds %struct.range_pair* %88, i64 %87, !dbg !1042
  %hi130 = getelementptr inbounds %struct.range_pair* %arrayidx129, i32 0, i32 1, !dbg !1042
  %89 = load i64* %hi130, align 8, !dbg !1042
  %90 = load i64* @max_range_endpoint, align 8, !dbg !1042
  %cmp131 = icmp ugt i64 %89, %90, !dbg !1042
  br i1 %cmp131, label %if.then133, label %if.end136, !dbg !1042

if.then133:                                       ; preds = %for.body
  %91 = load i64* %i, align 8, !dbg !1045
  %92 = load %struct.range_pair** %rp, align 8, !dbg !1045
  %arrayidx134 = getelementptr inbounds %struct.range_pair* %92, i64 %91, !dbg !1045
  %hi135 = getelementptr inbounds %struct.range_pair* %arrayidx134, i32 0, i32 1, !dbg !1045
  %93 = load i64* %hi135, align 8, !dbg !1045
  store i64 %93, i64* @max_range_endpoint, align 8, !dbg !1045
  br label %if.end136, !dbg !1045

if.end136:                                        ; preds = %if.then133, %for.body
  br label %for.inc, !dbg !1046

for.inc:                                          ; preds = %if.end136
  %94 = load i64* %i, align 8, !dbg !1040
  %inc137 = add i64 %94, 1, !dbg !1040
  store i64 %inc137, i64* %i, align 8, !dbg !1040
  br label %for.cond126, !dbg !1040

for.end138:                                       ; preds = %for.cond126
  %95 = load i64* @max_range_endpoint, align 8, !dbg !1047
  %div = udiv i64 %95, 8, !dbg !1047
  %add139 = add i64 %div, 1, !dbg !1047
  %call140 = call i8* @xzalloc(i64 %add139), !dbg !1047
  store i8* %call140, i8** @printable_field, align 8, !dbg !1047
  br i1 false, label %cond.true, label %cond.false, !dbg !1048

cond.true:                                        ; preds = %for.end138
  %call141 = call i32 @klee_get_false(), !dbg !1048
  %conv142 = sext i32 %call141 to i64, !dbg !1048
  %tobool143 = icmp ne i64 %conv142, 0, !dbg !1048
  br i1 %tobool143, label %if.then155, label %if.end156, !dbg !1048

cond.false:                                       ; preds = %for.end138
  br i1 false, label %cond.true144, label %cond.false148, !dbg !1048

cond.true144:                                     ; preds = %cond.false
  %call145 = call i32 @klee_get_true(), !dbg !1048
  %conv146 = sext i32 %call145 to i64, !dbg !1048
  %tobool147 = icmp ne i64 %conv146, 0, !dbg !1048
  br i1 %tobool147, label %if.then155, label %if.end156, !dbg !1048

cond.false148:                                    ; preds = %cond.false
  %call149 = call i32 @klee_get_false(), !dbg !1048
  %conv150 = sext i32 %call149 to i64, !dbg !1048
  %call151 = call i32 @klee_get_true(), !dbg !1048
  %conv152 = sext i32 %call151 to i64, !dbg !1048
  %call153 = call i64 @klee_change(i64 %conv150, i64 %conv152), !dbg !1048
  %tobool154 = icmp ne i64 %call153, 0, !dbg !1048
  br i1 %tobool154, label %if.then155, label %if.end156, !dbg !1048

if.then155:                                       ; preds = %cond.false148, %cond.true144, %cond.true
  %96 = load %struct.range_pair** %rp, align 8, !dbg !1050
  %97 = bitcast %struct.range_pair* %96 to i8*, !dbg !1050
  %98 = load i64* %n_rp, align 8, !dbg !1050
  call void @qsort(i8* %97, i64 %98, i64 16, i32 (i8*, i8*)* @compare_ranges), !dbg !1050
  br label %if.end156, !dbg !1052

if.end156:                                        ; preds = %if.then155, %cond.false148, %cond.true144, %cond.true
  br i1 false, label %cond.true157, label %cond.false161, !dbg !1053

cond.true157:                                     ; preds = %if.end156
  %call158 = call i32 @klee_get_true(), !dbg !1053
  %conv159 = sext i32 %call158 to i64, !dbg !1053
  %tobool160 = icmp ne i64 %conv159, 0, !dbg !1053
  br i1 %tobool160, label %if.then173, label %if.else245, !dbg !1053

cond.false161:                                    ; preds = %if.end156
  br i1 false, label %cond.true162, label %cond.false166, !dbg !1053

cond.true162:                                     ; preds = %cond.false161
  %call163 = call i32 @klee_get_false(), !dbg !1053
  %conv164 = sext i32 %call163 to i64, !dbg !1053
  %tobool165 = icmp ne i64 %conv164, 0, !dbg !1053
  br i1 %tobool165, label %if.then173, label %if.else245, !dbg !1053

cond.false166:                                    ; preds = %cond.false161
  %call167 = call i32 @klee_get_true(), !dbg !1053
  %conv168 = sext i32 %call167 to i64, !dbg !1053
  %call169 = call i32 @klee_get_false(), !dbg !1053
  %conv170 = sext i32 %call169 to i64, !dbg !1053
  %call171 = call i64 @klee_change(i64 %conv168, i64 %conv170), !dbg !1053
  %tobool172 = icmp ne i64 %call171, 0, !dbg !1053
  br i1 %tobool172, label %if.then173, label %if.else245, !dbg !1053

if.then173:                                       ; preds = %cond.false166, %cond.true162, %cond.true157
  store i64 0, i64* %i, align 8, !dbg !1055
  br label %for.cond174, !dbg !1055

for.cond174:                                      ; preds = %for.inc189, %if.then173
  %99 = load i64* %i, align 8, !dbg !1055
  %100 = load i64* %n_rp, align 8, !dbg !1055
  %cmp175 = icmp ult i64 %99, %100, !dbg !1055
  br i1 %cmp175, label %for.body177, label %for.end191, !dbg !1055

for.body177:                                      ; preds = %for.cond174
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !1058), !dbg !1060
  %101 = load i64* %i, align 8, !dbg !1061
  %102 = load %struct.range_pair** %rp, align 8, !dbg !1061
  %arrayidx178 = getelementptr inbounds %struct.range_pair* %102, i64 %101, !dbg !1061
  %lo179 = getelementptr inbounds %struct.range_pair* %arrayidx178, i32 0, i32 0, !dbg !1061
  %103 = load i64* %lo179, align 8, !dbg !1061
  store i64 %103, i64* %j, align 8, !dbg !1061
  br label %for.cond180, !dbg !1061

for.cond180:                                      ; preds = %for.inc186, %for.body177
  %104 = load i64* %j, align 8, !dbg !1061
  %105 = load i64* %i, align 8, !dbg !1061
  %106 = load %struct.range_pair** %rp, align 8, !dbg !1061
  %arrayidx181 = getelementptr inbounds %struct.range_pair* %106, i64 %105, !dbg !1061
  %hi182 = getelementptr inbounds %struct.range_pair* %arrayidx181, i32 0, i32 1, !dbg !1061
  %107 = load i64* %hi182, align 8, !dbg !1061
  %cmp183 = icmp ule i64 %104, %107, !dbg !1061
  br i1 %cmp183, label %for.body185, label %for.end188, !dbg !1061

for.body185:                                      ; preds = %for.cond180
  %108 = load i64* %j, align 8, !dbg !1063
  call void @mark_printable_field(i64 %108), !dbg !1063
  br label %for.inc186, !dbg !1065

for.inc186:                                       ; preds = %for.body185
  %109 = load i64* %j, align 8, !dbg !1061
  %inc187 = add i64 %109, 1, !dbg !1061
  store i64 %inc187, i64* %j, align 8, !dbg !1061
  br label %for.cond180, !dbg !1061

for.end188:                                       ; preds = %for.cond180
  br label %for.inc189, !dbg !1066

for.inc189:                                       ; preds = %for.end188
  %110 = load i64* %i, align 8, !dbg !1055
  %inc190 = add i64 %110, 1, !dbg !1055
  store i64 %inc190, i64* %i, align 8, !dbg !1055
  br label %for.cond174, !dbg !1055

for.end191:                                       ; preds = %for.cond174
  %111 = load i8* @output_delimiter_specified, align 1, !dbg !1067
  %tobool192 = trunc i8 %111 to i1, !dbg !1067
  br i1 %tobool192, label %if.then193, label %if.end244, !dbg !1067

if.then193:                                       ; preds = %for.end191
  store i64 0, i64* %i, align 8, !dbg !1069
  br label %for.cond194, !dbg !1069

for.cond194:                                      ; preds = %for.inc241, %if.then193
  %112 = load i64* %i, align 8, !dbg !1069
  %113 = load i64* %n_rp, align 8, !dbg !1069
  %cmp195 = icmp ule i64 %112, %113, !dbg !1069
  br i1 %cmp195, label %for.body197, label %for.end243, !dbg !1069

for.body197:                                      ; preds = %for.cond194
  call void @llvm.dbg.declare(metadata !{i64* %j198}, metadata !1072), !dbg !1074
  call void @llvm.dbg.declare(metadata !{i64* %rsi}, metadata !1075), !dbg !1076
  %114 = load i64* %i, align 8, !dbg !1076
  %115 = load i64* %n_rp, align 8, !dbg !1076
  %cmp199 = icmp ult i64 %114, %115, !dbg !1076
  br i1 %cmp199, label %cond.true201, label %cond.false204, !dbg !1076

cond.true201:                                     ; preds = %for.body197
  %116 = load i64* %i, align 8, !dbg !1076
  %117 = load %struct.range_pair** %rp, align 8, !dbg !1076
  %arrayidx202 = getelementptr inbounds %struct.range_pair* %117, i64 %116, !dbg !1076
  %lo203 = getelementptr inbounds %struct.range_pair* %arrayidx202, i32 0, i32 0, !dbg !1076
  %118 = load i64* %lo203, align 8, !dbg !1076
  br label %cond.end, !dbg !1076

cond.false204:                                    ; preds = %for.body197
  %119 = load i64* @eol_range_start, align 8, !dbg !1076
  br label %cond.end, !dbg !1076

cond.end:                                         ; preds = %cond.false204, %cond.true201
  %cond = phi i64 [ %118, %cond.true201 ], [ %119, %cond.false204 ], !dbg !1076
  store i64 %cond, i64* %rsi, align 8, !dbg !1076
  store i64 0, i64* %j198, align 8, !dbg !1077
  br label %for.cond205, !dbg !1077

for.cond205:                                      ; preds = %for.inc219, %cond.end
  %120 = load i64* %j198, align 8, !dbg !1077
  %121 = load i64* %n_rp, align 8, !dbg !1077
  %cmp206 = icmp ult i64 %120, %121, !dbg !1077
  br i1 %cmp206, label %for.body208, label %for.end221, !dbg !1077

for.body208:                                      ; preds = %for.cond205
  %122 = load i64* %j198, align 8, !dbg !1079
  %123 = load %struct.range_pair** %rp, align 8, !dbg !1079
  %arrayidx209 = getelementptr inbounds %struct.range_pair* %123, i64 %122, !dbg !1079
  %lo210 = getelementptr inbounds %struct.range_pair* %arrayidx209, i32 0, i32 0, !dbg !1079
  %124 = load i64* %lo210, align 8, !dbg !1079
  %125 = load i64* %rsi, align 8, !dbg !1079
  %cmp211 = icmp ult i64 %124, %125, !dbg !1079
  br i1 %cmp211, label %land.lhs.true, label %if.end218, !dbg !1079

land.lhs.true:                                    ; preds = %for.body208
  %126 = load i64* %rsi, align 8, !dbg !1079
  %127 = load i64* %j198, align 8, !dbg !1079
  %128 = load %struct.range_pair** %rp, align 8, !dbg !1079
  %arrayidx213 = getelementptr inbounds %struct.range_pair* %128, i64 %127, !dbg !1079
  %hi214 = getelementptr inbounds %struct.range_pair* %arrayidx213, i32 0, i32 1, !dbg !1079
  %129 = load i64* %hi214, align 8, !dbg !1079
  %cmp215 = icmp ule i64 %126, %129, !dbg !1079
  br i1 %cmp215, label %if.then217, label %if.end218, !dbg !1079

if.then217:                                       ; preds = %land.lhs.true
  store i64 0, i64* %rsi, align 8, !dbg !1082
  br label %for.end221, !dbg !1084

if.end218:                                        ; preds = %land.lhs.true, %for.body208
  br label %for.inc219, !dbg !1085

for.inc219:                                       ; preds = %if.end218
  %130 = load i64* %j198, align 8, !dbg !1077
  %inc220 = add i64 %130, 1, !dbg !1077
  store i64 %inc220, i64* %j198, align 8, !dbg !1077
  br label %for.cond205, !dbg !1077

for.end221:                                       ; preds = %if.then217, %for.cond205
  %131 = load i64* @eol_range_start, align 8, !dbg !1086
  %tobool222 = icmp ne i64 %131, 0, !dbg !1086
  br i1 %tobool222, label %land.lhs.true223, label %if.end227, !dbg !1086

land.lhs.true223:                                 ; preds = %for.end221
  %132 = load i64* @eol_range_start, align 8, !dbg !1086
  %133 = load i64* %rsi, align 8, !dbg !1086
  %cmp224 = icmp ult i64 %132, %133, !dbg !1086
  br i1 %cmp224, label %if.then226, label %if.end227, !dbg !1086

if.then226:                                       ; preds = %land.lhs.true223
  store i64 0, i64* %rsi, align 8, !dbg !1088
  br label %if.end227, !dbg !1088

if.end227:                                        ; preds = %if.then226, %land.lhs.true223, %for.end221
  %134 = load i64* %rsi, align 8, !dbg !1089
  %tobool228 = icmp ne i64 %134, 0, !dbg !1089
  br i1 %tobool228, label %if.then229, label %if.end240, !dbg !1089

if.then229:                                       ; preds = %if.end227
  call void @llvm.dbg.declare(metadata !{i8** %ent_from_table}, metadata !1091), !dbg !1093
  %135 = load %struct.hash_table** @range_start_ht, align 8, !dbg !1093
  %136 = load i64* %rsi, align 8, !dbg !1093
  %137 = inttoptr i64 %136 to i8*, !dbg !1093
  %call230 = call i8* @hash_insert(%struct.hash_table* %135, i8* %137), !dbg !1093
  store i8* %call230, i8** %ent_from_table, align 8, !dbg !1093
  %138 = load i8** %ent_from_table, align 8, !dbg !1094
  %cmp231 = icmp eq i8* %138, null, !dbg !1094
  br i1 %cmp231, label %if.then233, label %if.end234, !dbg !1094

if.then233:                                       ; preds = %if.then229
  call void @xalloc_die() #13, !dbg !1096
  unreachable, !dbg !1096

if.end234:                                        ; preds = %if.then229
  %139 = load i8** %ent_from_table, align 8, !dbg !1098
  %140 = ptrtoint i8* %139 to i64, !dbg !1098
  %141 = load i64* %rsi, align 8, !dbg !1098
  %cmp235 = icmp eq i64 %140, %141, !dbg !1098
  br i1 %cmp235, label %cond.true237, label %cond.false238, !dbg !1098

cond.true237:                                     ; preds = %if.end234
  br label %cond.end239, !dbg !1098

cond.false238:                                    ; preds = %if.end234
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i32 566, i8* getelementptr inbounds ([31 x i8]* @__PRETTY_FUNCTION__.set_fields, i32 0, i32 0)) #11, !dbg !1098
  unreachable, !dbg !1098
                                                  ; No predecessors!
  br label %cond.end239, !dbg !1098

cond.end239:                                      ; preds = %142, %cond.true237
  br label %if.end240, !dbg !1099

if.end240:                                        ; preds = %cond.end239, %if.end227
  br label %for.inc241, !dbg !1100

for.inc241:                                       ; preds = %if.end240
  %143 = load i64* %i, align 8, !dbg !1069
  %inc242 = add i64 %143, 1, !dbg !1069
  store i64 %inc242, i64* %i, align 8, !dbg !1069
  br label %for.cond194, !dbg !1069

for.end243:                                       ; preds = %for.cond194
  br label %if.end244, !dbg !1101

if.end244:                                        ; preds = %for.end243, %for.end191
  br label %if.end292, !dbg !1102

if.else245:                                       ; preds = %cond.false166, %cond.true162, %cond.true157
  store i64 0, i64* %i, align 8, !dbg !1103
  br label %for.cond246, !dbg !1103

for.cond246:                                      ; preds = %for.inc279, %if.else245
  %144 = load i64* %i, align 8, !dbg !1103
  %145 = load i64* %n_rp, align 8, !dbg !1103
  %cmp247 = icmp ult i64 %144, %145, !dbg !1103
  br i1 %cmp247, label %for.body249, label %for.end281, !dbg !1103

for.body249:                                      ; preds = %for.cond246
  call void @llvm.dbg.declare(metadata !{i64* %j250}, metadata !1106), !dbg !1108
  call void @llvm.dbg.declare(metadata !{i64* %rsi_candidate}, metadata !1109), !dbg !1110
  %146 = load i8* @complement, align 1, !dbg !1111
  %tobool251 = trunc i8 %146 to i1, !dbg !1111
  br i1 %tobool251, label %cond.true253, label %cond.false257, !dbg !1111

cond.true253:                                     ; preds = %for.body249
  %147 = load i64* %i, align 8, !dbg !1111
  %148 = load %struct.range_pair** %rp, align 8, !dbg !1111
  %arrayidx254 = getelementptr inbounds %struct.range_pair* %148, i64 %147, !dbg !1111
  %hi255 = getelementptr inbounds %struct.range_pair* %arrayidx254, i32 0, i32 1, !dbg !1111
  %149 = load i64* %hi255, align 8, !dbg !1111
  %add256 = add i64 %149, 1, !dbg !1111
  br label %cond.end260, !dbg !1111

cond.false257:                                    ; preds = %for.body249
  %150 = load i64* %i, align 8, !dbg !1111
  %151 = load %struct.range_pair** %rp, align 8, !dbg !1111
  %arrayidx258 = getelementptr inbounds %struct.range_pair* %151, i64 %150, !dbg !1111
  %lo259 = getelementptr inbounds %struct.range_pair* %arrayidx258, i32 0, i32 0, !dbg !1111
  %152 = load i64* %lo259, align 8, !dbg !1111
  br label %cond.end260, !dbg !1111

cond.end260:                                      ; preds = %cond.false257, %cond.true253
  %cond261 = phi i64 [ %add256, %cond.true253 ], [ %152, %cond.false257 ], !dbg !1111
  store i64 %cond261, i64* %rsi_candidate, align 8, !dbg !1111
  %153 = load i8* @output_delimiter_specified, align 1, !dbg !1112
  %tobool262 = trunc i8 %153 to i1, !dbg !1112
  br i1 %tobool262, label %land.lhs.true264, label %if.end267, !dbg !1112

land.lhs.true264:                                 ; preds = %cond.end260
  %154 = load i64* %rsi_candidate, align 8, !dbg !1114
  %call265 = call zeroext i1 @is_printable_field(i64 %154), !dbg !1114
  br i1 %call265, label %if.end267, label %if.then266, !dbg !1114

if.then266:                                       ; preds = %land.lhs.true264
  %155 = load i64* %rsi_candidate, align 8, !dbg !1115
  call void @mark_range_start(i64 %155), !dbg !1115
  br label %if.end267, !dbg !1115

if.end267:                                        ; preds = %if.then266, %land.lhs.true264, %cond.end260
  %156 = load i64* %i, align 8, !dbg !1116
  %157 = load %struct.range_pair** %rp, align 8, !dbg !1116
  %arrayidx268 = getelementptr inbounds %struct.range_pair* %157, i64 %156, !dbg !1116
  %lo269 = getelementptr inbounds %struct.range_pair* %arrayidx268, i32 0, i32 0, !dbg !1116
  %158 = load i64* %lo269, align 8, !dbg !1116
  store i64 %158, i64* %j250, align 8, !dbg !1116
  br label %for.cond270, !dbg !1116

for.cond270:                                      ; preds = %for.inc276, %if.end267
  %159 = load i64* %j250, align 8, !dbg !1116
  %160 = load i64* %i, align 8, !dbg !1116
  %161 = load %struct.range_pair** %rp, align 8, !dbg !1116
  %arrayidx271 = getelementptr inbounds %struct.range_pair* %161, i64 %160, !dbg !1116
  %hi272 = getelementptr inbounds %struct.range_pair* %arrayidx271, i32 0, i32 1, !dbg !1116
  %162 = load i64* %hi272, align 8, !dbg !1116
  %cmp273 = icmp ule i64 %159, %162, !dbg !1116
  br i1 %cmp273, label %for.body275, label %for.end278, !dbg !1116

for.body275:                                      ; preds = %for.cond270
  %163 = load i64* %j250, align 8, !dbg !1118
  call void @mark_printable_field(i64 %163), !dbg !1118
  br label %for.inc276, !dbg !1118

for.inc276:                                       ; preds = %for.body275
  %164 = load i64* %j250, align 8, !dbg !1116
  %inc277 = add i64 %164, 1, !dbg !1116
  store i64 %inc277, i64* %j250, align 8, !dbg !1116
  br label %for.cond270, !dbg !1116

for.end278:                                       ; preds = %for.cond270
  br label %for.inc279, !dbg !1119

for.inc279:                                       ; preds = %for.end278
  %165 = load i64* %i, align 8, !dbg !1103
  %inc280 = add i64 %165, 1, !dbg !1103
  store i64 %inc280, i64* %i, align 8, !dbg !1103
  br label %for.cond246, !dbg !1103

for.end281:                                       ; preds = %for.cond246
  %166 = load i8* @output_delimiter_specified, align 1, !dbg !1120
  %tobool282 = trunc i8 %166 to i1, !dbg !1120
  br i1 %tobool282, label %land.lhs.true284, label %if.end291, !dbg !1120

land.lhs.true284:                                 ; preds = %for.end281
  %167 = load i8* @complement, align 1, !dbg !1120
  %tobool285 = trunc i8 %167 to i1, !dbg !1120
  br i1 %tobool285, label %if.end291, label %land.lhs.true286, !dbg !1120

land.lhs.true286:                                 ; preds = %land.lhs.true284
  %168 = load i64* @eol_range_start, align 8, !dbg !1120
  %tobool287 = icmp ne i64 %168, 0, !dbg !1120
  br i1 %tobool287, label %land.lhs.true288, label %if.end291, !dbg !1120

land.lhs.true288:                                 ; preds = %land.lhs.true286
  %169 = load i64* @eol_range_start, align 8, !dbg !1122
  %call289 = call zeroext i1 @is_printable_field(i64 %169), !dbg !1122
  br i1 %call289, label %if.end291, label %if.then290, !dbg !1122

if.then290:                                       ; preds = %land.lhs.true288
  %170 = load i64* @eol_range_start, align 8, !dbg !1123
  call void @mark_range_start(i64 %170), !dbg !1123
  br label %if.end291, !dbg !1123

if.end291:                                        ; preds = %if.then290, %land.lhs.true288, %land.lhs.true286, %land.lhs.true284, %for.end281
  br label %if.end292

if.end292:                                        ; preds = %if.end291, %if.end244
  %171 = load %struct.range_pair** %rp, align 8, !dbg !1124
  %172 = bitcast %struct.range_pair* %171 to i8*, !dbg !1124
  call void @free(i8* %172) #9, !dbg !1124
  %173 = load i8* %field_found, align 1, !dbg !1125
  %tobool293 = trunc i8 %173 to i1, !dbg !1125
  ret i1 %tobool293, !dbg !1125
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @cut_file(i8* %file) #0 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca i8*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %file.addr}, metadata !1126), !dbg !1127
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream}, metadata !1128), !dbg !1129
  %0 = load i8** %file.addr, align 8, !dbg !1130
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0)) #12, !dbg !1130
  %cmp = icmp eq i32 %call, 0, !dbg !1130
  br i1 %cmp, label %if.then, label %if.else, !dbg !1130

if.then:                                          ; preds = %entry
  store i8 1, i8* @have_read_stdin, align 1, !dbg !1132
  %1 = load %struct._IO_FILE** @stdin, align 8, !dbg !1134
  store %struct._IO_FILE* %1, %struct._IO_FILE** %stream, align 8, !dbg !1134
  br label %if.end5, !dbg !1135

if.else:                                          ; preds = %entry
  %2 = load i8** %file.addr, align 8, !dbg !1136
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str36, i32 0, i32 0)), !dbg !1136
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %stream, align 8, !dbg !1136
  %3 = load %struct._IO_FILE** %stream, align 8, !dbg !1138
  %cmp2 = icmp eq %struct._IO_FILE* %3, null, !dbg !1138
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1138

if.then3:                                         ; preds = %if.else
  %call4 = call i32* @__errno_location() #1, !dbg !1140
  %4 = load i32* %call4, align 4, !dbg !1140
  %conv = sext i32 %4 to i64, !dbg !1140
  %5 = inttoptr i64 %conv to i32* (...)*, !dbg !1140
  %6 = load i8** %file.addr, align 8, !dbg !1140
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %5, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0), i8* %6), !dbg !1140
  store i1 false, i1* %retval, !dbg !1142
  br label %return, !dbg !1142

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %7 = load %struct._IO_FILE** %stream, align 8, !dbg !1143
  call void @cut_stream(%struct._IO_FILE* %7), !dbg !1143
  %8 = load %struct._IO_FILE** %stream, align 8, !dbg !1144
  %call6 = call i32 @ferror_unlocked(%struct._IO_FILE* %8) #9, !dbg !1144
  %tobool = icmp ne i32 %call6, 0, !dbg !1144
  br i1 %tobool, label %if.then7, label %if.end10, !dbg !1144

if.then7:                                         ; preds = %if.end5
  %call8 = call i32* @__errno_location() #1, !dbg !1146
  %9 = load i32* %call8, align 4, !dbg !1146
  %conv9 = sext i32 %9 to i64, !dbg !1146
  %10 = inttoptr i64 %conv9 to i32* (...)*, !dbg !1146
  %11 = load i8** %file.addr, align 8, !dbg !1146
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %10, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0), i8* %11), !dbg !1146
  store i1 false, i1* %retval, !dbg !1148
  br label %return, !dbg !1148

if.end10:                                         ; preds = %if.end5
  %12 = load i8** %file.addr, align 8, !dbg !1149
  %call11 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0)) #12, !dbg !1149
  %cmp12 = icmp eq i32 %call11, 0, !dbg !1149
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !1149

if.then14:                                        ; preds = %if.end10
  %13 = load %struct._IO_FILE** %stream, align 8, !dbg !1151
  call void @clearerr_unlocked(%struct._IO_FILE* %13) #9, !dbg !1151
  br label %if.end23, !dbg !1151

if.else15:                                        ; preds = %if.end10
  %14 = load %struct._IO_FILE** %stream, align 8, !dbg !1152
  %call16 = call i32 @fclose(%struct._IO_FILE* %14), !dbg !1152
  %cmp17 = icmp eq i32 %call16, -1, !dbg !1152
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !1152

if.then19:                                        ; preds = %if.else15
  %call20 = call i32* @__errno_location() #1, !dbg !1154
  %15 = load i32* %call20, align 4, !dbg !1154
  %conv21 = sext i32 %15 to i64, !dbg !1154
  %16 = inttoptr i64 %conv21 to i32* (...)*, !dbg !1154
  %17 = load i8** %file.addr, align 8, !dbg !1154
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %16, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0), i8* %17), !dbg !1154
  store i1 false, i1* %retval, !dbg !1156
  br label %return, !dbg !1156

if.end22:                                         ; preds = %if.else15
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then14
  store i1 true, i1* %retval, !dbg !1157
  br label %return, !dbg !1157

return:                                           ; preds = %if.end23, %if.then19, %if.then7, %if.then3
  %18 = load i1* %retval, !dbg !1158
  ret i1 %18, !dbg !1158
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define internal void @cut_stream(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !1159), !dbg !1160
  %0 = load i32* @operating_mode, align 4, !dbg !1161
  %cmp = icmp eq i32 %0, 1, !dbg !1161
  br i1 %cmp, label %if.then, label %if.else, !dbg !1161

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1163
  call void @cut_bytes(%struct._IO_FILE* %1), !dbg !1163
  br label %if.end, !dbg !1163

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1164
  call void @cut_fields(%struct._IO_FILE* %2), !dbg !1164
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1165
}

; Function Attrs: nounwind
declare i32 @ferror_unlocked(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @cut_bytes(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %byte_idx = alloca i64, align 8
  %print_delimiter = alloca i8, align 1
  %c = alloca i32, align 4
  %range_start = alloca i8, align 1
  %rs = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !1166), !dbg !1167
  call void @llvm.dbg.declare(metadata !{i64* %byte_idx}, metadata !1168), !dbg !1169
  call void @llvm.dbg.declare(metadata !{i8* %print_delimiter}, metadata !1170), !dbg !1171
  store i64 0, i64* %byte_idx, align 8, !dbg !1172
  store i8 0, i8* %print_delimiter, align 1, !dbg !1173
  br label %while.body, !dbg !1174

while.body:                                       ; preds = %if.end20, %entry
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1175), !dbg !1177
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1178
  %call = call i32 @getc_unlocked(%struct._IO_FILE* %0), !dbg !1178
  store i32 %call, i32* %c, align 4, !dbg !1178
  %1 = load i32* %c, align 4, !dbg !1179
  %cmp = icmp eq i32 %1, 10, !dbg !1179
  br i1 %cmp, label %if.then, label %if.else, !dbg !1179

if.then:                                          ; preds = %while.body
  %call1 = call i32 @putchar_unlocked(i32 10), !dbg !1181
  store i64 0, i64* %byte_idx, align 8, !dbg !1183
  store i8 0, i8* %print_delimiter, align 1, !dbg !1184
  br label %if.end20, !dbg !1185

if.else:                                          ; preds = %while.body
  %2 = load i32* %c, align 4, !dbg !1186
  %cmp2 = icmp eq i32 %2, -1, !dbg !1186
  br i1 %cmp2, label %if.then3, label %if.else7, !dbg !1186

if.then3:                                         ; preds = %if.else
  %3 = load i64* %byte_idx, align 8, !dbg !1188
  %cmp4 = icmp ugt i64 %3, 0, !dbg !1188
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1188

if.then5:                                         ; preds = %if.then3
  %call6 = call i32 @putchar_unlocked(i32 10), !dbg !1191
  br label %if.end, !dbg !1191

if.end:                                           ; preds = %if.then5, %if.then3
  br label %while.end, !dbg !1192

if.else7:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata !{i8* %range_start}, metadata !1193), !dbg !1195
  call void @llvm.dbg.declare(metadata !{i8** %rs}, metadata !1196), !dbg !1197
  %4 = load i8* @output_delimiter_specified, align 1, !dbg !1197
  %tobool = trunc i8 %4 to i1, !dbg !1197
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1197

cond.true:                                        ; preds = %if.else7
  br label %cond.end, !dbg !1197

cond.false:                                       ; preds = %if.else7
  br label %cond.end, !dbg !1197

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %range_start, %cond.true ], [ null, %cond.false ], !dbg !1197
  store i8* %cond, i8** %rs, align 8, !dbg !1197
  %5 = load i64* %byte_idx, align 8, !dbg !1198
  %inc = add i64 %5, 1, !dbg !1198
  store i64 %inc, i64* %byte_idx, align 8, !dbg !1198
  %6 = load i8** %rs, align 8, !dbg !1198
  %call8 = call zeroext i1 @print_kth(i64 %inc, i8* %6), !dbg !1198
  br i1 %call8, label %if.then9, label %if.end18, !dbg !1198

if.then9:                                         ; preds = %cond.end
  %7 = load i8** %rs, align 8, !dbg !1200
  %tobool10 = icmp ne i8* %7, null, !dbg !1200
  br i1 %tobool10, label %land.lhs.true, label %if.end16, !dbg !1200

land.lhs.true:                                    ; preds = %if.then9
  %8 = load i8** %rs, align 8, !dbg !1200
  %9 = load i8* %8, align 1, !dbg !1200
  %tobool11 = trunc i8 %9 to i1, !dbg !1200
  br i1 %tobool11, label %land.lhs.true12, label %if.end16, !dbg !1200

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = load i8* %print_delimiter, align 1, !dbg !1200
  %tobool13 = trunc i8 %10 to i1, !dbg !1200
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !1200

if.then14:                                        ; preds = %land.lhs.true12
  %11 = load i8** @output_delimiter_string, align 8, !dbg !1203
  %12 = load i64* @output_delimiter_length, align 8, !dbg !1203
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !1203
  %call15 = call i64 @fwrite_unlocked(i8* %11, i64 1, i64 %12, %struct._IO_FILE* %13), !dbg !1203
  br label %if.end16, !dbg !1205

if.end16:                                         ; preds = %if.then14, %land.lhs.true12, %land.lhs.true, %if.then9
  store i8 1, i8* %print_delimiter, align 1, !dbg !1206
  %14 = load i32* %c, align 4, !dbg !1207
  %call17 = call i32 @putchar_unlocked(i32 %14), !dbg !1207
  br label %if.end18, !dbg !1208

if.end18:                                         ; preds = %if.end16, %cond.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then
  br label %while.body, !dbg !1209

while.end:                                        ; preds = %if.end
  ret void, !dbg !1210
}

; Function Attrs: nounwind uwtable
define internal void @cut_fields(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %c = alloca i32, align 4
  %field_idx = alloca i64, align 8
  %found_any_selected_field = alloca i8, align 1
  %buffer_first_field = alloca i8, align 1
  %len = alloca i64, align 8
  %n_bytes = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !1211), !dbg !1212
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1213), !dbg !1214
  call void @llvm.dbg.declare(metadata !{i64* %field_idx}, metadata !1215), !dbg !1216
  store i64 1, i64* %field_idx, align 8, !dbg !1216
  call void @llvm.dbg.declare(metadata !{i8* %found_any_selected_field}, metadata !1217), !dbg !1218
  store i8 0, i8* %found_any_selected_field, align 1, !dbg !1218
  call void @llvm.dbg.declare(metadata !{i8* %buffer_first_field}, metadata !1219), !dbg !1220
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1221
  %call = call i32 @getc_unlocked(%struct._IO_FILE* %0), !dbg !1221
  store i32 %call, i32* %c, align 4, !dbg !1221
  %1 = load i32* %c, align 4, !dbg !1222
  %cmp = icmp eq i32 %1, -1, !dbg !1222
  br i1 %cmp, label %if.then, label %if.end, !dbg !1222

if.then:                                          ; preds = %entry
  br label %while.end125, !dbg !1224

if.end:                                           ; preds = %entry
  %2 = load i32* %c, align 4, !dbg !1225
  %3 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1225
  %call1 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3), !dbg !1225
  %4 = load i8* @suppress_non_delimited, align 1, !dbg !1226
  %tobool = trunc i8 %4 to i1, !dbg !1226
  %conv = zext i1 %tobool to i32, !dbg !1226
  %call2 = call zeroext i1 @print_kth(i64 1, i8* null), !dbg !1226
  %lnot = xor i1 %call2, true, !dbg !1226
  %lnot.ext = zext i1 %lnot to i32, !dbg !1226
  %xor = xor i32 %conv, %lnot.ext, !dbg !1226
  %tobool3 = icmp ne i32 %xor, 0, !dbg !1226
  %frombool = zext i1 %tobool3 to i8, !dbg !1226
  store i8 %frombool, i8* %buffer_first_field, align 1, !dbg !1226
  br label %while.body, !dbg !1227

while.body:                                       ; preds = %if.end124, %if.end40, %if.end
  %5 = load i64* %field_idx, align 8, !dbg !1228
  %cmp4 = icmp eq i64 %5, 1, !dbg !1228
  br i1 %cmp4, label %land.lhs.true, label %if.end47, !dbg !1228

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8* %buffer_first_field, align 1, !dbg !1228
  %tobool6 = trunc i8 %6 to i1, !dbg !1228
  br i1 %tobool6, label %if.then8, label %if.end47, !dbg !1228

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata !{i64* %len}, metadata !1231), !dbg !1235
  call void @llvm.dbg.declare(metadata !{i64* %n_bytes}, metadata !1236), !dbg !1237
  %7 = load i8* @delim, align 1, !dbg !1238
  %conv9 = zext i8 %7 to i32, !dbg !1238
  %8 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1238
  %call10 = call i64 @getndelim2(i8** @field_1_buffer, i64* @field_1_bufsize, i64 0, i64 -1, i32 %conv9, i32 10, %struct._IO_FILE* %8), !dbg !1238
  store i64 %call10, i64* %len, align 8, !dbg !1238
  %9 = load i64* %len, align 8, !dbg !1239
  %cmp11 = icmp slt i64 %9, 0, !dbg !1239
  br i1 %cmp11, label %if.then13, label %if.end20, !dbg !1239

if.then13:                                        ; preds = %if.then8
  %10 = load i8** @field_1_buffer, align 8, !dbg !1241
  call void @free(i8* %10) #9, !dbg !1241
  %11 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1243
  %call14 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #9, !dbg !1243
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1243
  br i1 %tobool15, label %if.then18, label %lor.lhs.false, !dbg !1243

lor.lhs.false:                                    ; preds = %if.then13
  %12 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1243
  %call16 = call i32 @feof_unlocked(%struct._IO_FILE* %12) #9, !dbg !1243
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1243
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1243

if.then18:                                        ; preds = %lor.lhs.false, %if.then13
  br label %while.end125, !dbg !1245

if.end19:                                         ; preds = %lor.lhs.false
  call void @xalloc_die() #13, !dbg !1246
  unreachable, !dbg !1246

if.end20:                                         ; preds = %if.then8
  %13 = load i64* %len, align 8, !dbg !1247
  store i64 %13, i64* %n_bytes, align 8, !dbg !1247
  %14 = load i64* %n_bytes, align 8, !dbg !1248
  %cmp21 = icmp ne i64 %14, 0, !dbg !1248
  br i1 %cmp21, label %cond.true, label %cond.false, !dbg !1248

cond.true:                                        ; preds = %if.end20
  br label %cond.end, !dbg !1248

cond.false:                                       ; preds = %if.end20
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i32 690, i8* getelementptr inbounds ([24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i32 0, i32 0)) #11, !dbg !1248
  unreachable, !dbg !1248
                                                  ; No predecessors!
  br label %cond.end, !dbg !1248

cond.end:                                         ; preds = %15, %cond.true
  %16 = load i64* %n_bytes, align 8, !dbg !1249
  %sub = sub i64 %16, 1, !dbg !1249
  %17 = load i8** @field_1_buffer, align 8, !dbg !1249
  %arrayidx = getelementptr inbounds i8* %17, i64 %sub, !dbg !1249
  %18 = load i8* %arrayidx, align 1, !dbg !1249
  %call23 = call zeroext i8 @to_uchar(i8 signext %18), !dbg !1249
  %conv24 = zext i8 %call23 to i32, !dbg !1249
  %19 = load i8* @delim, align 1, !dbg !1249
  %conv25 = zext i8 %19 to i32, !dbg !1249
  %cmp26 = icmp ne i32 %conv24, %conv25, !dbg !1249
  br i1 %cmp26, label %if.then28, label %if.end41, !dbg !1249

if.then28:                                        ; preds = %cond.end
  %20 = load i8* @suppress_non_delimited, align 1, !dbg !1251
  %tobool29 = trunc i8 %20 to i1, !dbg !1251
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !1251

if.then30:                                        ; preds = %if.then28
  br label %if.end40, !dbg !1254

if.else:                                          ; preds = %if.then28
  %21 = load i8** @field_1_buffer, align 8, !dbg !1256
  %22 = load i64* %n_bytes, align 8, !dbg !1256
  %23 = load %struct._IO_FILE** @stdout, align 8, !dbg !1256
  %call31 = call i64 @fwrite_unlocked(i8* %21, i64 1, i64 %22, %struct._IO_FILE* %23), !dbg !1256
  %24 = load i64* %n_bytes, align 8, !dbg !1258
  %sub32 = sub i64 %24, 1, !dbg !1258
  %25 = load i8** @field_1_buffer, align 8, !dbg !1258
  %arrayidx33 = getelementptr inbounds i8* %25, i64 %sub32, !dbg !1258
  %26 = load i8* %arrayidx33, align 1, !dbg !1258
  %conv34 = sext i8 %26 to i32, !dbg !1258
  %cmp35 = icmp ne i32 %conv34, 10, !dbg !1258
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !1258

if.then37:                                        ; preds = %if.else
  %call38 = call i32 @putchar_unlocked(i32 10), !dbg !1260
  br label %if.end39, !dbg !1260

if.end39:                                         ; preds = %if.then37, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then30
  br label %while.body, !dbg !1261

if.end41:                                         ; preds = %cond.end
  %call42 = call zeroext i1 @print_kth(i64 1, i8* null), !dbg !1262
  br i1 %call42, label %if.then43, label %if.end46, !dbg !1262

if.then43:                                        ; preds = %if.end41
  %27 = load i8** @field_1_buffer, align 8, !dbg !1264
  %28 = load i64* %n_bytes, align 8, !dbg !1264
  %sub44 = sub i64 %28, 1, !dbg !1264
  %29 = load %struct._IO_FILE** @stdout, align 8, !dbg !1264
  %call45 = call i64 @fwrite_unlocked(i8* %27, i64 1, i64 %sub44, %struct._IO_FILE* %29), !dbg !1264
  store i8 1, i8* %found_any_selected_field, align 1, !dbg !1266
  br label %if.end46, !dbg !1267

if.end46:                                         ; preds = %if.then43, %if.end41
  %30 = load i64* %field_idx, align 8, !dbg !1268
  %inc = add i64 %30, 1, !dbg !1268
  store i64 %inc, i64* %field_idx, align 8, !dbg !1268
  br label %if.end47, !dbg !1269

if.end47:                                         ; preds = %if.end46, %land.lhs.true, %while.body
  %31 = load i32* %c, align 4, !dbg !1270
  %cmp48 = icmp ne i32 %31, -1, !dbg !1270
  br i1 %cmp48, label %if.then50, label %if.end85, !dbg !1270

if.then50:                                        ; preds = %if.end47
  %32 = load i64* %field_idx, align 8, !dbg !1272
  %call51 = call zeroext i1 @print_kth(i64 %32, i8* null), !dbg !1272
  br i1 %call51, label %if.then52, label %if.else69, !dbg !1272

if.then52:                                        ; preds = %if.then50
  %33 = load i8* %found_any_selected_field, align 1, !dbg !1275
  %tobool53 = trunc i8 %33 to i1, !dbg !1275
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !1275

if.then54:                                        ; preds = %if.then52
  %34 = load i8** @output_delimiter_string, align 8, !dbg !1278
  %35 = load i64* @output_delimiter_length, align 8, !dbg !1278
  %36 = load %struct._IO_FILE** @stdout, align 8, !dbg !1278
  %call55 = call i64 @fwrite_unlocked(i8* %34, i64 1, i64 %35, %struct._IO_FILE* %36), !dbg !1278
  br label %if.end56, !dbg !1280

if.end56:                                         ; preds = %if.then54, %if.then52
  store i8 1, i8* %found_any_selected_field, align 1, !dbg !1281
  br label %while.cond57, !dbg !1282

while.cond57:                                     ; preds = %while.body67, %if.end56
  %37 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1282
  %call58 = call i32 @getc_unlocked(%struct._IO_FILE* %37), !dbg !1282
  store i32 %call58, i32* %c, align 4, !dbg !1282
  %38 = load i8* @delim, align 1, !dbg !1282
  %conv59 = zext i8 %38 to i32, !dbg !1282
  %cmp60 = icmp ne i32 %call58, %conv59, !dbg !1282
  br i1 %cmp60, label %land.lhs.true62, label %land.end, !dbg !1282

land.lhs.true62:                                  ; preds = %while.cond57
  %39 = load i32* %c, align 4, !dbg !1282
  %cmp63 = icmp ne i32 %39, 10, !dbg !1282
  br i1 %cmp63, label %land.rhs, label %land.end, !dbg !1282

land.rhs:                                         ; preds = %land.lhs.true62
  %40 = load i32* %c, align 4, !dbg !1282
  %cmp65 = icmp ne i32 %40, -1, !dbg !1282
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true62, %while.cond57
  %41 = phi i1 [ false, %land.lhs.true62 ], [ false, %while.cond57 ], [ %cmp65, %land.rhs ]
  br i1 %41, label %while.body67, label %while.end

while.body67:                                     ; preds = %land.end
  %42 = load i32* %c, align 4, !dbg !1283
  %call68 = call i32 @putchar_unlocked(i32 %42), !dbg !1283
  br label %while.cond57, !dbg !1285

while.end:                                        ; preds = %land.end
  br label %if.end84, !dbg !1286

if.else69:                                        ; preds = %if.then50
  br label %while.cond70, !dbg !1287

while.cond70:                                     ; preds = %while.body82, %if.else69
  %43 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1287
  %call71 = call i32 @getc_unlocked(%struct._IO_FILE* %43), !dbg !1287
  store i32 %call71, i32* %c, align 4, !dbg !1287
  %44 = load i8* @delim, align 1, !dbg !1287
  %conv72 = zext i8 %44 to i32, !dbg !1287
  %cmp73 = icmp ne i32 %call71, %conv72, !dbg !1287
  br i1 %cmp73, label %land.lhs.true75, label %land.end81, !dbg !1287

land.lhs.true75:                                  ; preds = %while.cond70
  %45 = load i32* %c, align 4, !dbg !1287
  %cmp76 = icmp ne i32 %45, 10, !dbg !1287
  br i1 %cmp76, label %land.rhs78, label %land.end81, !dbg !1287

land.rhs78:                                       ; preds = %land.lhs.true75
  %46 = load i32* %c, align 4, !dbg !1287
  %cmp79 = icmp ne i32 %46, -1, !dbg !1287
  br label %land.end81

land.end81:                                       ; preds = %land.rhs78, %land.lhs.true75, %while.cond70
  %47 = phi i1 [ false, %land.lhs.true75 ], [ false, %while.cond70 ], [ %cmp79, %land.rhs78 ]
  br i1 %47, label %while.body82, label %while.end83

while.body82:                                     ; preds = %land.end81
  br label %while.cond70, !dbg !1289

while.end83:                                      ; preds = %land.end81
  br label %if.end84

if.end84:                                         ; preds = %while.end83, %while.end
  br label %if.end85, !dbg !1291

if.end85:                                         ; preds = %if.end84, %if.end47
  %48 = load i32* %c, align 4, !dbg !1292
  %cmp86 = icmp eq i32 %48, 10, !dbg !1292
  br i1 %cmp86, label %if.then88, label %if.end95, !dbg !1292

if.then88:                                        ; preds = %if.end85
  %49 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1294
  %call89 = call i32 @getc_unlocked(%struct._IO_FILE* %49), !dbg !1294
  store i32 %call89, i32* %c, align 4, !dbg !1294
  %50 = load i32* %c, align 4, !dbg !1296
  %cmp90 = icmp ne i32 %50, -1, !dbg !1296
  br i1 %cmp90, label %if.then92, label %if.end94, !dbg !1296

if.then92:                                        ; preds = %if.then88
  %51 = load i32* %c, align 4, !dbg !1298
  %52 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1298
  %call93 = call i32 @ungetc(i32 %51, %struct._IO_FILE* %52), !dbg !1298
  store i32 10, i32* %c, align 4, !dbg !1300
  br label %if.end94, !dbg !1301

if.end94:                                         ; preds = %if.then92, %if.then88
  br label %if.end95, !dbg !1302

if.end95:                                         ; preds = %if.end94, %if.end85
  %53 = load i32* %c, align 4, !dbg !1303
  %54 = load i8* @delim, align 1, !dbg !1303
  %conv96 = zext i8 %54 to i32, !dbg !1303
  %cmp97 = icmp eq i32 %53, %conv96, !dbg !1303
  br i1 %cmp97, label %if.then99, label %if.else101, !dbg !1303

if.then99:                                        ; preds = %if.end95
  %55 = load i64* %field_idx, align 8, !dbg !1305
  %inc100 = add i64 %55, 1, !dbg !1305
  store i64 %inc100, i64* %field_idx, align 8, !dbg !1305
  br label %if.end124, !dbg !1305

if.else101:                                       ; preds = %if.end95
  %56 = load i32* %c, align 4, !dbg !1306
  %cmp102 = icmp eq i32 %56, 10, !dbg !1306
  br i1 %cmp102, label %if.then107, label %lor.lhs.false104, !dbg !1306

lor.lhs.false104:                                 ; preds = %if.else101
  %57 = load i32* %c, align 4, !dbg !1306
  %cmp105 = icmp eq i32 %57, -1, !dbg !1306
  br i1 %cmp105, label %if.then107, label %if.end123, !dbg !1306

if.then107:                                       ; preds = %lor.lhs.false104, %if.else101
  %58 = load i8* %found_any_selected_field, align 1, !dbg !1308
  %tobool108 = trunc i8 %58 to i1, !dbg !1308
  br i1 %tobool108, label %if.then116, label %lor.lhs.false110, !dbg !1308

lor.lhs.false110:                                 ; preds = %if.then107
  %59 = load i8* @suppress_non_delimited, align 1, !dbg !1308
  %tobool111 = trunc i8 %59 to i1, !dbg !1308
  br i1 %tobool111, label %land.lhs.true113, label %if.then116, !dbg !1308

land.lhs.true113:                                 ; preds = %lor.lhs.false110
  %60 = load i64* %field_idx, align 8, !dbg !1308
  %cmp114 = icmp eq i64 %60, 1, !dbg !1308
  br i1 %cmp114, label %if.end118, label %if.then116, !dbg !1308

if.then116:                                       ; preds = %land.lhs.true113, %lor.lhs.false110, %if.then107
  %call117 = call i32 @putchar_unlocked(i32 10), !dbg !1311
  br label %if.end118, !dbg !1311

if.end118:                                        ; preds = %if.then116, %land.lhs.true113
  %61 = load i32* %c, align 4, !dbg !1312
  %cmp119 = icmp eq i32 %61, -1, !dbg !1312
  br i1 %cmp119, label %if.then121, label %if.end122, !dbg !1312

if.then121:                                       ; preds = %if.end118
  br label %while.end125, !dbg !1314

if.end122:                                        ; preds = %if.end118
  store i64 1, i64* %field_idx, align 8, !dbg !1315
  store i8 0, i8* %found_any_selected_field, align 1, !dbg !1316
  br label %if.end123, !dbg !1317

if.end123:                                        ; preds = %if.end122, %lor.lhs.false104
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then99
  br label %while.body, !dbg !1318

while.end125:                                     ; preds = %if.then121, %if.then18, %if.then
  ret void, !dbg !1319
}

declare i32 @getc_unlocked(%struct._IO_FILE*) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @print_kth(i64 %k, i8* %range_start) #0 {
entry:
  %k.addr = alloca i64, align 8
  %range_start.addr = alloca i8*, align 8
  %k_selected = alloca i8, align 1
  %old_return_val = alloca i8, align 1
  %is_selected = alloca i8, align 1
  store i64 %k, i64* %k.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %k.addr}, metadata !1320), !dbg !1321
  store i8* %range_start, i8** %range_start.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %range_start.addr}, metadata !1322), !dbg !1321
  call void @llvm.dbg.declare(metadata !{i8* %k_selected}, metadata !1323), !dbg !1325
  %0 = load i64* @eol_range_start, align 8, !dbg !1325
  %cmp = icmp ult i64 0, %0, !dbg !1325
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !1325

land.lhs.true:                                    ; preds = %entry
  %1 = load i64* @eol_range_start, align 8, !dbg !1325
  %2 = load i64* %k.addr, align 8, !dbg !1325
  %cmp1 = icmp ule i64 %1, %2, !dbg !1325
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !1325

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %3 = load i64* %k.addr, align 8, !dbg !1325
  %4 = load i64* @max_range_endpoint, align 8, !dbg !1325
  %cmp2 = icmp ule i64 %3, %4, !dbg !1325
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !1325

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i64* %k.addr, align 8, !dbg !1326
  %call = call zeroext i1 @is_printable_field(i64 %5), !dbg !1326
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %call, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %7 = phi i1 [ true, %land.lhs.true ], [ %6, %land.end ]
  %frombool = zext i1 %7 to i8
  store i8 %frombool, i8* %k_selected, align 1
  call void @llvm.dbg.declare(metadata !{i8* %old_return_val}, metadata !1327), !dbg !1328
  %8 = load i8* %k_selected, align 1, !dbg !1328
  %tobool = trunc i8 %8 to i1, !dbg !1328
  %frombool3 = zext i1 %tobool to i8, !dbg !1328
  store i8 %frombool3, i8* %old_return_val, align 1, !dbg !1328
  call void @llvm.dbg.declare(metadata !{i8* %is_selected}, metadata !1329), !dbg !1330
  %9 = load i8* %k_selected, align 1, !dbg !1330
  %tobool4 = trunc i8 %9 to i1, !dbg !1330
  %conv = zext i1 %tobool4 to i32, !dbg !1330
  %10 = load i8* @complement, align 1, !dbg !1330
  %tobool5 = trunc i8 %10 to i1, !dbg !1330
  %conv6 = zext i1 %tobool5 to i32, !dbg !1330
  %xor = xor i32 %conv, %conv6, !dbg !1330
  %tobool7 = icmp ne i32 %xor, 0, !dbg !1330
  %frombool8 = zext i1 %tobool7 to i8, !dbg !1330
  store i8 %frombool8, i8* %is_selected, align 1, !dbg !1330
  br i1 false, label %cond.true, label %cond.false, !dbg !1331

cond.true:                                        ; preds = %lor.end
  %11 = load i8* %k_selected, align 1, !dbg !1331
  %tobool9 = trunc i8 %11 to i1, !dbg !1331
  br i1 %tobool9, label %land.rhs11, label %land.end13, !dbg !1331

land.rhs11:                                       ; preds = %cond.true
  %12 = load i8** %range_start.addr, align 8, !dbg !1331
  %tobool12 = icmp ne i8* %12, null, !dbg !1331
  br label %land.end13

land.end13:                                       ; preds = %land.rhs11, %cond.true
  %13 = phi i1 [ false, %cond.true ], [ %tobool12, %land.rhs11 ]
  %land.ext = zext i1 %13 to i32
  %conv14 = sext i32 %land.ext to i64
  %tobool15 = icmp ne i64 %conv14, 0
  br i1 %tobool15, label %if.then, label %if.end

cond.false:                                       ; preds = %lor.end
  br i1 false, label %cond.true16, label %cond.false25

cond.true16:                                      ; preds = %cond.false
  %14 = load i8** %range_start.addr, align 8
  %tobool17 = icmp ne i8* %14, null
  br i1 %tobool17, label %land.rhs18, label %land.end21

land.rhs18:                                       ; preds = %cond.true16
  %15 = load i8* %is_selected, align 1
  %tobool19 = trunc i8 %15 to i1
  br label %land.end21

land.end21:                                       ; preds = %land.rhs18, %cond.true16
  %16 = phi i1 [ false, %cond.true16 ], [ %tobool19, %land.rhs18 ]
  %land.ext22 = zext i1 %16 to i32
  %conv23 = sext i32 %land.ext22 to i64
  %tobool24 = icmp ne i64 %conv23, 0
  br i1 %tobool24, label %if.then, label %if.end

cond.false25:                                     ; preds = %cond.false
  %17 = load i8* %k_selected, align 1, !dbg !1331
  %tobool26 = trunc i8 %17 to i1, !dbg !1331
  br i1 %tobool26, label %land.rhs28, label %land.end30, !dbg !1331

land.rhs28:                                       ; preds = %cond.false25
  %18 = load i8** %range_start.addr, align 8, !dbg !1331
  %tobool29 = icmp ne i8* %18, null, !dbg !1331
  br label %land.end30

land.end30:                                       ; preds = %land.rhs28, %cond.false25
  %19 = phi i1 [ false, %cond.false25 ], [ %tobool29, %land.rhs28 ]
  %land.ext31 = zext i1 %19 to i32
  %conv32 = sext i32 %land.ext31 to i64
  %20 = load i8** %range_start.addr, align 8, !dbg !1331
  %tobool33 = icmp ne i8* %20, null, !dbg !1331
  br i1 %tobool33, label %land.rhs34, label %land.end37, !dbg !1331

land.rhs34:                                       ; preds = %land.end30
  %21 = load i8* %is_selected, align 1, !dbg !1331
  %tobool35 = trunc i8 %21 to i1, !dbg !1331
  br label %land.end37

land.end37:                                       ; preds = %land.rhs34, %land.end30
  %22 = phi i1 [ false, %land.end30 ], [ %tobool35, %land.rhs34 ]
  %land.ext38 = zext i1 %22 to i32
  %conv39 = sext i32 %land.ext38 to i64
  %call40 = call i64 @klee_change(i64 %conv32, i64 %conv39), !dbg !1331
  %tobool41 = icmp ne i64 %call40, 0, !dbg !1331
  br i1 %tobool41, label %if.then, label %if.end, !dbg !1331

if.then:                                          ; preds = %land.end37, %land.end21, %land.end13
  %23 = load i64* %k.addr, align 8, !dbg !1333
  %call42 = call zeroext i1 @is_range_start_index(i64 %23), !dbg !1333
  %24 = load i8** %range_start.addr, align 8, !dbg !1333
  %frombool43 = zext i1 %call42 to i8, !dbg !1333
  store i8 %frombool43, i8* %24, align 1, !dbg !1333
  br label %if.end, !dbg !1335

if.end:                                           ; preds = %if.then, %land.end37, %land.end21, %land.end13
  %25 = load i8* %old_return_val, align 1, !dbg !1336
  %tobool44 = trunc i8 %25 to i1, !dbg !1336
  %conv45 = zext i1 %tobool44 to i64, !dbg !1336
  %26 = load i8* %is_selected, align 1, !dbg !1336
  %tobool46 = trunc i8 %26 to i1, !dbg !1336
  %conv47 = zext i1 %tobool46 to i64, !dbg !1336
  %call48 = call i64 @klee_change(i64 %conv45, i64 %conv47), !dbg !1336
  %tobool49 = icmp ne i64 %call48, 0, !dbg !1336
  ret i1 %tobool49, !dbg !1336
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i32 @feof_unlocked(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @to_uchar(i8 signext %ch) #8 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %ch.addr}, metadata !1337), !dbg !1338
  %0 = load i8* %ch.addr, align 1, !dbg !1339
  ret i8 %0, !dbg !1339
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @putchar_unlocked(i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @is_printable_field(i64 %i) #8 {
entry:
  %i.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %i.addr}, metadata !1341), !dbg !1342
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !1343), !dbg !1344
  %0 = load i64* %i.addr, align 8, !dbg !1344
  %div = udiv i64 %0, 8, !dbg !1344
  store i64 %div, i64* %n, align 8, !dbg !1344
  %1 = load i64* %n, align 8, !dbg !1345
  %2 = load i8** @printable_field, align 8, !dbg !1345
  %arrayidx = getelementptr inbounds i8* %2, i64 %1, !dbg !1345
  %3 = load i8* %arrayidx, align 1, !dbg !1345
  %conv = zext i8 %3 to i32, !dbg !1345
  %4 = load i64* %i.addr, align 8, !dbg !1345
  %rem = urem i64 %4, 8, !dbg !1345
  %sh_prom = trunc i64 %rem to i32, !dbg !1345
  %shr = ashr i32 %conv, %sh_prom, !dbg !1345
  %and = and i32 %shr, 1, !dbg !1345
  %tobool = icmp ne i32 %and, 0, !dbg !1345
  ret i1 %tobool, !dbg !1345
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_range_start_index(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %i.addr}, metadata !1346), !dbg !1347
  %0 = load %struct.hash_table** @range_start_ht, align 8, !dbg !1348
  %1 = load i64* %i.addr, align 8, !dbg !1348
  %2 = inttoptr i64 %1 to i8*, !dbg !1348
  %call = call i8* @hash_lookup(%struct.hash_table* %0, i8* %2), !dbg !1348
  %tobool = icmp ne i8* %call, null, !dbg !1348
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !1348
  %tobool1 = icmp ne i32 %cond, 0, !dbg !1348
  ret i1 %tobool1, !dbg !1348
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #6

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @compare_ranges(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %a_start = alloca i32, align 4
  %b_start = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %a.addr}, metadata !1349), !dbg !1350
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %b.addr}, metadata !1351), !dbg !1350
  call void @llvm.dbg.declare(metadata !{i32* %a_start}, metadata !1352), !dbg !1353
  %0 = load i8** %a.addr, align 8, !dbg !1353
  %1 = bitcast i8* %0 to %struct.range_pair*, !dbg !1353
  %lo = getelementptr inbounds %struct.range_pair* %1, i32 0, i32 0, !dbg !1353
  %2 = load i64* %lo, align 8, !dbg !1353
  %conv = trunc i64 %2 to i32, !dbg !1353
  store i32 %conv, i32* %a_start, align 4, !dbg !1353
  call void @llvm.dbg.declare(metadata !{i32* %b_start}, metadata !1354), !dbg !1355
  %3 = load i8** %b.addr, align 8, !dbg !1355
  %4 = bitcast i8* %3 to %struct.range_pair*, !dbg !1355
  %lo1 = getelementptr inbounds %struct.range_pair* %4, i32 0, i32 0, !dbg !1355
  %5 = load i64* %lo1, align 8, !dbg !1355
  %conv2 = trunc i64 %5 to i32, !dbg !1355
  store i32 %conv2, i32* %b_start, align 4, !dbg !1355
  %6 = load i32* %a_start, align 4, !dbg !1356
  %7 = load i32* %b_start, align 4, !dbg !1356
  %cmp = icmp slt i32 %6, %7, !dbg !1356
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1356

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1356

cond.false:                                       ; preds = %entry
  %8 = load i32* %a_start, align 4, !dbg !1356
  %9 = load i32* %b_start, align 4, !dbg !1356
  %cmp4 = icmp sgt i32 %8, %9, !dbg !1356
  %conv5 = zext i1 %cmp4 to i32, !dbg !1356
  br label %cond.end, !dbg !1356

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv5, %cond.false ], !dbg !1356
  ret i32 %cond, !dbg !1356
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mark_printable_field(i64 %i) #8 {
entry:
  %i.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %i.addr}, metadata !1357), !dbg !1358
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !1359), !dbg !1360
  %0 = load i64* %i.addr, align 8, !dbg !1360
  %div = udiv i64 %0, 8, !dbg !1360
  store i64 %div, i64* %n, align 8, !dbg !1360
  %1 = load i64* %i.addr, align 8, !dbg !1361
  %rem = urem i64 %1, 8, !dbg !1361
  %sh_prom = trunc i64 %rem to i32, !dbg !1361
  %shl = shl i32 1, %sh_prom, !dbg !1361
  %2 = load i64* %n, align 8, !dbg !1361
  %3 = load i8** @printable_field, align 8, !dbg !1361
  %arrayidx = getelementptr inbounds i8* %3, i64 %2, !dbg !1361
  %4 = load i8* %arrayidx, align 1, !dbg !1361
  %conv = zext i8 %4 to i32, !dbg !1361
  %or = or i32 %conv, %shl, !dbg !1361
  %conv1 = trunc i32 %or to i8, !dbg !1361
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !1361
  ret void, !dbg !1362
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mark_range_start(i64 %i) #8 {
entry:
  %i.addr = alloca i64, align 8
  %ent_from_table = alloca i8*, align 8
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %i.addr}, metadata !1363), !dbg !1364
  call void @llvm.dbg.declare(metadata !{i8** %ent_from_table}, metadata !1365), !dbg !1366
  %0 = load %struct.hash_table** @range_start_ht, align 8, !dbg !1366
  %1 = load i64* %i.addr, align 8, !dbg !1366
  %2 = inttoptr i64 %1 to i8*, !dbg !1366
  %call = call i8* @hash_insert(%struct.hash_table* %0, i8* %2), !dbg !1366
  store i8* %call, i8** %ent_from_table, align 8, !dbg !1366
  %3 = load i8** %ent_from_table, align 8, !dbg !1367
  %cmp = icmp eq i8* %3, null, !dbg !1367
  br i1 %cmp, label %if.then, label %if.end, !dbg !1367

if.then:                                          ; preds = %entry
  call void @xalloc_die() #13, !dbg !1369
  unreachable, !dbg !1369

if.end:                                           ; preds = %entry
  %4 = load i8** %ent_from_table, align 8, !dbg !1371
  %5 = ptrtoint i8* %4 to i64, !dbg !1371
  %6 = load i64* %i.addr, align 8, !dbg !1371
  %cmp1 = icmp eq i64 %5, %6, !dbg !1371
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1371

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1371

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i32 268, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.mark_range_start, i32 0, i32 0)) #11, !dbg !1371
  unreachable, !dbg !1371
                                                  ; No predecessors!
  br label %cond.end, !dbg !1371

cond.end:                                         ; preds = %7, %cond.true
  ret void, !dbg !1372
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @putc_unlocked(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i64 @hash_get_n_buckets(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1373), !dbg !1374
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1375
  %n_buckets = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 2, !dbg !1375
  %1 = load i64* %n_buckets, align 8, !dbg !1375
  ret i64 %1, !dbg !1375
}

; Function Attrs: nounwind uwtable
define i64 @hash_get_n_buckets_used(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1376), !dbg !1377
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1378
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 3, !dbg !1378
  %1 = load i64* %n_buckets_used, align 8, !dbg !1378
  ret i64 %1, !dbg !1378
}

; Function Attrs: nounwind uwtable
define i64 @hash_get_n_entries(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1379), !dbg !1380
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1381
  %n_entries = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 4, !dbg !1381
  %1 = load i64* %n_entries, align 8, !dbg !1381
  ret i64 %1, !dbg !1381
}

; Function Attrs: nounwind uwtable
define i64 @hash_get_max_bucket_length(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %max_bucket_length = alloca i64, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %bucket_length = alloca i64, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1382), !dbg !1383
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1384), !dbg !1385
  call void @llvm.dbg.declare(metadata !{i64* %max_bucket_length}, metadata !1386), !dbg !1387
  store i64 0, i64* %max_bucket_length, align 8, !dbg !1387
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1388
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1388
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1388
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1388
  br label %for.cond, !dbg !1388

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1388
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1388
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1388
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1388
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1388
  br i1 %cmp, label %for.body, label %for.end, !dbg !1388

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1390
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1390
  %6 = load i8** %data, align 8, !dbg !1390
  %tobool = icmp ne i8* %6, null, !dbg !1390
  br i1 %tobool, label %if.then, label %if.end5, !dbg !1390

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1393), !dbg !1395
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1395
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1395
  call void @llvm.dbg.declare(metadata !{i64* %bucket_length}, metadata !1396), !dbg !1397
  store i64 1, i64* %bucket_length, align 8, !dbg !1397
  br label %while.cond, !dbg !1398

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load %struct.hash_entry** %cursor, align 8, !dbg !1398
  %next = getelementptr inbounds %struct.hash_entry* %8, i32 0, i32 1, !dbg !1398
  %9 = load %struct.hash_entry** %next, align 8, !dbg !1398
  store %struct.hash_entry* %9, %struct.hash_entry** %cursor, align 8, !dbg !1398
  %10 = load %struct.hash_entry** %cursor, align 8, !dbg !1398
  %tobool2 = icmp ne %struct.hash_entry* %10, null, !dbg !1398
  br i1 %tobool2, label %while.body, label %while.end, !dbg !1398

while.body:                                       ; preds = %while.cond
  %11 = load i64* %bucket_length, align 8, !dbg !1399
  %inc = add i64 %11, 1, !dbg !1399
  store i64 %inc, i64* %bucket_length, align 8, !dbg !1399
  br label %while.cond, !dbg !1399

while.end:                                        ; preds = %while.cond
  %12 = load i64* %bucket_length, align 8, !dbg !1400
  %13 = load i64* %max_bucket_length, align 8, !dbg !1400
  %cmp3 = icmp ugt i64 %12, %13, !dbg !1400
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1400

if.then4:                                         ; preds = %while.end
  %14 = load i64* %bucket_length, align 8, !dbg !1402
  store i64 %14, i64* %max_bucket_length, align 8, !dbg !1402
  br label %if.end, !dbg !1402

if.end:                                           ; preds = %if.then4, %while.end
  br label %if.end5, !dbg !1403

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !1404

for.inc:                                          ; preds = %if.end5
  %15 = load %struct.hash_entry** %bucket, align 8, !dbg !1388
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %15, i32 1, !dbg !1388
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1388
  br label %for.cond, !dbg !1388

for.end:                                          ; preds = %for.cond
  %16 = load i64* %max_bucket_length, align 8, !dbg !1405
  ret i64 %16, !dbg !1405
}

; Function Attrs: nounwind uwtable
define zeroext i1 @hash_table_ok(%struct.hash_table* %table) #0 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %n_buckets_used = alloca i64, align 8
  %n_entries = alloca i64, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1406), !dbg !1407
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1408), !dbg !1409
  call void @llvm.dbg.declare(metadata !{i64* %n_buckets_used}, metadata !1410), !dbg !1411
  store i64 0, i64* %n_buckets_used, align 8, !dbg !1411
  call void @llvm.dbg.declare(metadata !{i64* %n_entries}, metadata !1412), !dbg !1413
  store i64 0, i64* %n_entries, align 8, !dbg !1413
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1414
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1414
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1414
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1414
  br label %for.cond, !dbg !1414

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1414
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1414
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1414
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1414
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1414
  br i1 %cmp, label %for.body, label %for.end, !dbg !1414

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1416
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1416
  %6 = load i8** %data, align 8, !dbg !1416
  %tobool = icmp ne i8* %6, null, !dbg !1416
  br i1 %tobool, label %if.then, label %if.end, !dbg !1416

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1419), !dbg !1421
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1421
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1421
  %8 = load i64* %n_buckets_used, align 8, !dbg !1422
  %inc = add i64 %8, 1, !dbg !1422
  store i64 %inc, i64* %n_buckets_used, align 8, !dbg !1422
  %9 = load i64* %n_entries, align 8, !dbg !1423
  %inc2 = add i64 %9, 1, !dbg !1423
  store i64 %inc2, i64* %n_entries, align 8, !dbg !1423
  br label %while.cond, !dbg !1424

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load %struct.hash_entry** %cursor, align 8, !dbg !1424
  %next = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 1, !dbg !1424
  %11 = load %struct.hash_entry** %next, align 8, !dbg !1424
  store %struct.hash_entry* %11, %struct.hash_entry** %cursor, align 8, !dbg !1424
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1424
  %tobool3 = icmp ne %struct.hash_entry* %12, null, !dbg !1424
  br i1 %tobool3, label %while.body, label %while.end, !dbg !1424

while.body:                                       ; preds = %while.cond
  %13 = load i64* %n_entries, align 8, !dbg !1425
  %inc4 = add i64 %13, 1, !dbg !1425
  store i64 %inc4, i64* %n_entries, align 8, !dbg !1425
  br label %while.cond, !dbg !1425

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !1426

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc, !dbg !1427

for.inc:                                          ; preds = %if.end
  %14 = load %struct.hash_entry** %bucket, align 8, !dbg !1414
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %14, i32 1, !dbg !1414
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1414
  br label %for.cond, !dbg !1414

for.end:                                          ; preds = %for.cond
  %15 = load i64* %n_buckets_used, align 8, !dbg !1428
  %16 = load %struct.hash_table** %table.addr, align 8, !dbg !1428
  %n_buckets_used5 = getelementptr inbounds %struct.hash_table* %16, i32 0, i32 3, !dbg !1428
  %17 = load i64* %n_buckets_used5, align 8, !dbg !1428
  %cmp6 = icmp eq i64 %15, %17, !dbg !1428
  br i1 %cmp6, label %land.lhs.true, label %if.end10, !dbg !1428

land.lhs.true:                                    ; preds = %for.end
  %18 = load i64* %n_entries, align 8, !dbg !1428
  %19 = load %struct.hash_table** %table.addr, align 8, !dbg !1428
  %n_entries7 = getelementptr inbounds %struct.hash_table* %19, i32 0, i32 4, !dbg !1428
  %20 = load i64* %n_entries7, align 8, !dbg !1428
  %cmp8 = icmp eq i64 %18, %20, !dbg !1428
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1428

if.then9:                                         ; preds = %land.lhs.true
  store i1 true, i1* %retval, !dbg !1430
  br label %return, !dbg !1430

if.end10:                                         ; preds = %land.lhs.true, %for.end
  store i1 false, i1* %retval, !dbg !1431
  br label %return, !dbg !1431

return:                                           ; preds = %if.end10, %if.then9
  %21 = load i1* %retval, !dbg !1432
  ret i1 %21, !dbg !1432
}

; Function Attrs: nounwind uwtable
define void @hash_print_statistics(%struct.hash_table* %table, %struct._IO_FILE* %stream) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %n_entries = alloca i64, align 8
  %n_buckets = alloca i64, align 8
  %n_buckets_used = alloca i64, align 8
  %max_bucket_length = alloca i64, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1433), !dbg !1434
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !1435), !dbg !1434
  call void @llvm.dbg.declare(metadata !{i64* %n_entries}, metadata !1436), !dbg !1437
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1437
  %call = call i64 @hash_get_n_entries(%struct.hash_table* %0), !dbg !1437
  store i64 %call, i64* %n_entries, align 8, !dbg !1437
  call void @llvm.dbg.declare(metadata !{i64* %n_buckets}, metadata !1438), !dbg !1439
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1439
  %call1 = call i64 @hash_get_n_buckets(%struct.hash_table* %1), !dbg !1439
  store i64 %call1, i64* %n_buckets, align 8, !dbg !1439
  call void @llvm.dbg.declare(metadata !{i64* %n_buckets_used}, metadata !1440), !dbg !1441
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1441
  %call2 = call i64 @hash_get_n_buckets_used(%struct.hash_table* %2), !dbg !1441
  store i64 %call2, i64* %n_buckets_used, align 8, !dbg !1441
  call void @llvm.dbg.declare(metadata !{i64* %max_bucket_length}, metadata !1442), !dbg !1443
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1443
  %call3 = call i64 @hash_get_max_bucket_length(%struct.hash_table* %3), !dbg !1443
  store i64 %call3, i64* %max_bucket_length, align 8, !dbg !1443
  %4 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1444
  %5 = load i64* %n_entries, align 8, !dbg !1444
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8]* @.str55, i32 0, i32 0), i64 %5), !dbg !1444
  %6 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1445
  %7 = load i64* %n_buckets, align 8, !dbg !1445
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([24 x i8]* @.str156, i32 0, i32 0), i64 %7), !dbg !1445
  %8 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1446
  %9 = load i64* %n_buckets_used, align 8, !dbg !1446
  %10 = load i64* %n_buckets_used, align 8, !dbg !1446
  %conv = uitofp i64 %10 to double, !dbg !1446
  %mul = fmul double 1.000000e+02, %conv, !dbg !1446
  %11 = load i64* %n_buckets, align 8, !dbg !1446
  %conv6 = uitofp i64 %11 to double, !dbg !1446
  %div = fdiv double %mul, %conv6, !dbg !1446
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([33 x i8]* @.str257, i32 0, i32 0), i64 %9, double %div), !dbg !1446
  %12 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1447
  %13 = load i64* %max_bucket_length, align 8, !dbg !1447
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([24 x i8]* @.str358, i32 0, i32 0), i64 %13), !dbg !1447
  ret void, !dbg !1448
}

; Function Attrs: nounwind uwtable
define i8* @hash_lookup(%struct.hash_table* %table, i8* %entry1) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1449), !dbg !1450
  store i8* %entry1, i8** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %entry.addr}, metadata !1451), !dbg !1450
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1452), !dbg !1453
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1453
  %bucket2 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1453
  %1 = load %struct.hash_entry** %bucket2, align 8, !dbg !1453
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1454
  %hasher = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 6, !dbg !1454
  %3 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1454
  %4 = load i8** %entry.addr, align 8, !dbg !1454
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1454
  %n_buckets = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 2, !dbg !1454
  %6 = load i64* %n_buckets, align 8, !dbg !1454
  %call = call i64 %3(i8* %4, i64 %6), !dbg !1454
  %add.ptr = getelementptr inbounds %struct.hash_entry* %1, i64 %call, !dbg !1454
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1454
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1455), !dbg !1456
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1457
  %8 = load %struct.hash_table** %table.addr, align 8, !dbg !1457
  %bucket_limit = getelementptr inbounds %struct.hash_table* %8, i32 0, i32 1, !dbg !1457
  %9 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1457
  %cmp = icmp ult %struct.hash_entry* %7, %9, !dbg !1457
  br i1 %cmp, label %if.end, label %if.then, !dbg !1457

if.then:                                          ; preds = %entry
  call void @abort() #11, !dbg !1459
  unreachable, !dbg !1459

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1460
  %data = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 0, !dbg !1460
  %11 = load i8** %data, align 8, !dbg !1460
  %cmp3 = icmp eq i8* %11, null, !dbg !1460
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1460

if.then4:                                         ; preds = %if.end
  store i8* null, i8** %retval, !dbg !1462
  br label %return, !dbg !1462

if.end5:                                          ; preds = %if.end
  %12 = load %struct.hash_entry** %bucket, align 8, !dbg !1463
  store %struct.hash_entry* %12, %struct.hash_entry** %cursor, align 8, !dbg !1463
  br label %for.cond, !dbg !1463

for.cond:                                         ; preds = %for.inc, %if.end5
  %13 = load %struct.hash_entry** %cursor, align 8, !dbg !1463
  %tobool = icmp ne %struct.hash_entry* %13, null, !dbg !1463
  br i1 %tobool, label %for.body, label %for.end, !dbg !1463

for.body:                                         ; preds = %for.cond
  %14 = load %struct.hash_table** %table.addr, align 8, !dbg !1465
  %comparator = getelementptr inbounds %struct.hash_table* %14, i32 0, i32 7, !dbg !1465
  %15 = load i1 (i8*, i8*)** %comparator, align 8, !dbg !1465
  %16 = load i8** %entry.addr, align 8, !dbg !1465
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1465
  %data6 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 0, !dbg !1465
  %18 = load i8** %data6, align 8, !dbg !1465
  %call7 = call zeroext i1 %15(i8* %16, i8* %18), !dbg !1465
  br i1 %call7, label %if.then8, label %if.end10, !dbg !1465

if.then8:                                         ; preds = %for.body
  %19 = load %struct.hash_entry** %cursor, align 8, !dbg !1467
  %data9 = getelementptr inbounds %struct.hash_entry* %19, i32 0, i32 0, !dbg !1467
  %20 = load i8** %data9, align 8, !dbg !1467
  store i8* %20, i8** %retval, !dbg !1467
  br label %return, !dbg !1467

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !1467

for.inc:                                          ; preds = %if.end10
  %21 = load %struct.hash_entry** %cursor, align 8, !dbg !1463
  %next = getelementptr inbounds %struct.hash_entry* %21, i32 0, i32 1, !dbg !1463
  %22 = load %struct.hash_entry** %next, align 8, !dbg !1463
  store %struct.hash_entry* %22, %struct.hash_entry** %cursor, align 8, !dbg !1463
  br label %for.cond, !dbg !1463

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, !dbg !1468
  br label %return, !dbg !1468

return:                                           ; preds = %for.end, %if.then8, %if.then4
  %23 = load i8** %retval, !dbg !1469
  ret i8* %23, !dbg !1469
}

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nounwind uwtable
define i8* @hash_get_first(%struct.hash_table* %table) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1470), !dbg !1471
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1472), !dbg !1473
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1474
  %n_entries = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 4, !dbg !1474
  %1 = load i64* %n_entries, align 8, !dbg !1474
  %cmp = icmp eq i64 %1, 0, !dbg !1474
  br i1 %cmp, label %if.then, label %if.end, !dbg !1474

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1476
  br label %return, !dbg !1476

if.end:                                           ; preds = %entry
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1477
  %bucket1 = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 0, !dbg !1477
  %3 = load %struct.hash_entry** %bucket1, align 8, !dbg !1477
  store %struct.hash_entry* %3, %struct.hash_entry** %bucket, align 8, !dbg !1477
  br label %for.cond, !dbg !1477

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.hash_entry** %bucket, align 8, !dbg !1479
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1479
  %bucket_limit = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 1, !dbg !1479
  %6 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1479
  %cmp2 = icmp ult %struct.hash_entry* %4, %6, !dbg !1479
  br i1 %cmp2, label %if.else, label %if.then3, !dbg !1479

if.then3:                                         ; preds = %for.cond
  call void @abort() #11, !dbg !1481
  unreachable, !dbg !1481

if.else:                                          ; preds = %for.cond
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1482
  %data = getelementptr inbounds %struct.hash_entry* %7, i32 0, i32 0, !dbg !1482
  %8 = load i8** %data, align 8, !dbg !1482
  %tobool = icmp ne i8* %8, null, !dbg !1482
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !1482

if.then4:                                         ; preds = %if.else
  %9 = load %struct.hash_entry** %bucket, align 8, !dbg !1484
  %data5 = getelementptr inbounds %struct.hash_entry* %9, i32 0, i32 0, !dbg !1484
  %10 = load i8** %data5, align 8, !dbg !1484
  store i8* %10, i8** %retval, !dbg !1484
  br label %return, !dbg !1484

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  br label %for.inc, !dbg !1485

for.inc:                                          ; preds = %if.end7
  %11 = load %struct.hash_entry** %bucket, align 8, !dbg !1477
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %11, i32 1, !dbg !1477
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1477
  br label %for.cond, !dbg !1477

return:                                           ; preds = %if.then4, %if.then
  %12 = load i8** %retval, !dbg !1486
  ret i8* %12, !dbg !1486
}

; Function Attrs: nounwind uwtable
define i8* @hash_get_next(%struct.hash_table* %table, i8* %entry1) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1487), !dbg !1488
  store i8* %entry1, i8** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %entry.addr}, metadata !1489), !dbg !1488
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1490), !dbg !1491
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1491
  %bucket2 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1491
  %1 = load %struct.hash_entry** %bucket2, align 8, !dbg !1491
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1492
  %hasher = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 6, !dbg !1492
  %3 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1492
  %4 = load i8** %entry.addr, align 8, !dbg !1492
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1492
  %n_buckets = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 2, !dbg !1492
  %6 = load i64* %n_buckets, align 8, !dbg !1492
  %call = call i64 %3(i8* %4, i64 %6), !dbg !1492
  %add.ptr = getelementptr inbounds %struct.hash_entry* %1, i64 %call, !dbg !1492
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1492
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1493), !dbg !1494
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1495
  %8 = load %struct.hash_table** %table.addr, align 8, !dbg !1495
  %bucket_limit = getelementptr inbounds %struct.hash_table* %8, i32 0, i32 1, !dbg !1495
  %9 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1495
  %cmp = icmp ult %struct.hash_entry* %7, %9, !dbg !1495
  br i1 %cmp, label %if.end, label %if.then, !dbg !1495

if.then:                                          ; preds = %entry
  call void @abort() #11, !dbg !1497
  unreachable, !dbg !1497

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1498
  store %struct.hash_entry* %10, %struct.hash_entry** %cursor, align 8, !dbg !1498
  br label %for.cond, !dbg !1498

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.hash_entry** %cursor, align 8, !dbg !1498
  %tobool = icmp ne %struct.hash_entry* %11, null, !dbg !1498
  br i1 %tobool, label %for.body, label %for.end, !dbg !1498

for.body:                                         ; preds = %for.cond
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1500
  %data = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 0, !dbg !1500
  %13 = load i8** %data, align 8, !dbg !1500
  %14 = load i8** %entry.addr, align 8, !dbg !1500
  %cmp3 = icmp eq i8* %13, %14, !dbg !1500
  br i1 %cmp3, label %land.lhs.true, label %if.end8, !dbg !1500

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct.hash_entry** %cursor, align 8, !dbg !1500
  %next = getelementptr inbounds %struct.hash_entry* %15, i32 0, i32 1, !dbg !1500
  %16 = load %struct.hash_entry** %next, align 8, !dbg !1500
  %tobool4 = icmp ne %struct.hash_entry* %16, null, !dbg !1500
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !1500

if.then5:                                         ; preds = %land.lhs.true
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1502
  %next6 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 1, !dbg !1502
  %18 = load %struct.hash_entry** %next6, align 8, !dbg !1502
  %data7 = getelementptr inbounds %struct.hash_entry* %18, i32 0, i32 0, !dbg !1502
  %19 = load i8** %data7, align 8, !dbg !1502
  store i8* %19, i8** %retval, !dbg !1502
  br label %return, !dbg !1502

if.end8:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1502

for.inc:                                          ; preds = %if.end8
  %20 = load %struct.hash_entry** %cursor, align 8, !dbg !1498
  %next9 = getelementptr inbounds %struct.hash_entry* %20, i32 0, i32 1, !dbg !1498
  %21 = load %struct.hash_entry** %next9, align 8, !dbg !1498
  store %struct.hash_entry* %21, %struct.hash_entry** %cursor, align 8, !dbg !1498
  br label %for.cond, !dbg !1498

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !1503

while.cond:                                       ; preds = %if.end16, %for.end
  %22 = load %struct.hash_entry** %bucket, align 8, !dbg !1503
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %22, i32 1, !dbg !1503
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1503
  %23 = load %struct.hash_table** %table.addr, align 8, !dbg !1503
  %bucket_limit10 = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 1, !dbg !1503
  %24 = load %struct.hash_entry** %bucket_limit10, align 8, !dbg !1503
  %cmp11 = icmp ult %struct.hash_entry* %incdec.ptr, %24, !dbg !1503
  br i1 %cmp11, label %while.body, label %while.end, !dbg !1503

while.body:                                       ; preds = %while.cond
  %25 = load %struct.hash_entry** %bucket, align 8, !dbg !1504
  %data12 = getelementptr inbounds %struct.hash_entry* %25, i32 0, i32 0, !dbg !1504
  %26 = load i8** %data12, align 8, !dbg !1504
  %tobool13 = icmp ne i8* %26, null, !dbg !1504
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !1504

if.then14:                                        ; preds = %while.body
  %27 = load %struct.hash_entry** %bucket, align 8, !dbg !1506
  %data15 = getelementptr inbounds %struct.hash_entry* %27, i32 0, i32 0, !dbg !1506
  %28 = load i8** %data15, align 8, !dbg !1506
  store i8* %28, i8** %retval, !dbg !1506
  br label %return, !dbg !1506

if.end16:                                         ; preds = %while.body
  br label %while.cond, !dbg !1506

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, !dbg !1507
  br label %return, !dbg !1507

return:                                           ; preds = %while.end, %if.then14, %if.then5
  %29 = load i8** %retval, !dbg !1508
  ret i8* %29, !dbg !1508
}

; Function Attrs: nounwind uwtable
define i64 @hash_get_entries(%struct.hash_table* %table, i8** %buffer, i64 %buffer_size) #0 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1509), !dbg !1510
  store i8** %buffer, i8*** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %buffer.addr}, metadata !1511), !dbg !1510
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %buffer_size.addr}, metadata !1512), !dbg !1513
  call void @llvm.dbg.declare(metadata !{i64* %counter}, metadata !1514), !dbg !1515
  store i64 0, i64* %counter, align 8, !dbg !1515
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1516), !dbg !1517
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1518), !dbg !1519
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1520
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1520
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1520
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1520
  br label %for.cond, !dbg !1520

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1520
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1520
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1520
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1520
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1520
  br i1 %cmp, label %for.body, label %for.end10, !dbg !1520

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1522
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1522
  %6 = load i8** %data, align 8, !dbg !1522
  %tobool = icmp ne i8* %6, null, !dbg !1522
  br i1 %tobool, label %if.then, label %if.end8, !dbg !1522

if.then:                                          ; preds = %for.body
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1525
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1525
  br label %for.cond2, !dbg !1525

for.cond2:                                        ; preds = %for.inc, %if.then
  %8 = load %struct.hash_entry** %cursor, align 8, !dbg !1525
  %tobool3 = icmp ne %struct.hash_entry* %8, null, !dbg !1525
  br i1 %tobool3, label %for.body4, label %for.end, !dbg !1525

for.body4:                                        ; preds = %for.cond2
  %9 = load i64* %counter, align 8, !dbg !1528
  %10 = load i64* %buffer_size.addr, align 8, !dbg !1528
  %cmp5 = icmp uge i64 %9, %10, !dbg !1528
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1528

if.then6:                                         ; preds = %for.body4
  %11 = load i64* %counter, align 8, !dbg !1531
  store i64 %11, i64* %retval, !dbg !1531
  br label %return, !dbg !1531

if.end:                                           ; preds = %for.body4
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1532
  %data7 = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 0, !dbg !1532
  %13 = load i8** %data7, align 8, !dbg !1532
  %14 = load i64* %counter, align 8, !dbg !1532
  %inc = add i64 %14, 1, !dbg !1532
  store i64 %inc, i64* %counter, align 8, !dbg !1532
  %15 = load i8*** %buffer.addr, align 8, !dbg !1532
  %arrayidx = getelementptr inbounds i8** %15, i64 %14, !dbg !1532
  store i8* %13, i8** %arrayidx, align 8, !dbg !1532
  br label %for.inc, !dbg !1533

for.inc:                                          ; preds = %if.end
  %16 = load %struct.hash_entry** %cursor, align 8, !dbg !1525
  %next = getelementptr inbounds %struct.hash_entry* %16, i32 0, i32 1, !dbg !1525
  %17 = load %struct.hash_entry** %next, align 8, !dbg !1525
  store %struct.hash_entry* %17, %struct.hash_entry** %cursor, align 8, !dbg !1525
  br label %for.cond2, !dbg !1525

for.end:                                          ; preds = %for.cond2
  br label %if.end8, !dbg !1534

if.end8:                                          ; preds = %for.end, %for.body
  br label %for.inc9, !dbg !1535

for.inc9:                                         ; preds = %if.end8
  %18 = load %struct.hash_entry** %bucket, align 8, !dbg !1520
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %18, i32 1, !dbg !1520
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1520
  br label %for.cond, !dbg !1520

for.end10:                                        ; preds = %for.cond
  %19 = load i64* %counter, align 8, !dbg !1536
  store i64 %19, i64* %retval, !dbg !1536
  br label %return, !dbg !1536

return:                                           ; preds = %for.end10, %if.then6
  %20 = load i64* %retval, !dbg !1537
  ret i64 %20, !dbg !1537
}

; Function Attrs: nounwind uwtable
define i64 @hash_do_for_each(%struct.hash_table* %table, i1 (i8*, i8*)* %processor, i8* %processor_data) #0 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %processor.addr = alloca i1 (i8*, i8*)*, align 8
  %processor_data.addr = alloca i8*, align 8
  %counter = alloca i64, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1538), !dbg !1539
  store i1 (i8*, i8*)* %processor, i1 (i8*, i8*)** %processor.addr, align 8
  call void @llvm.dbg.declare(metadata !{i1 (i8*, i8*)** %processor.addr}, metadata !1540), !dbg !1539
  store i8* %processor_data, i8** %processor_data.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %processor_data.addr}, metadata !1541), !dbg !1542
  call void @llvm.dbg.declare(metadata !{i64* %counter}, metadata !1543), !dbg !1544
  store i64 0, i64* %counter, align 8, !dbg !1544
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1545), !dbg !1546
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1547), !dbg !1548
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1549
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1549
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1549
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1549
  br label %for.cond, !dbg !1549

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1549
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1549
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1549
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1549
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1549
  br i1 %cmp, label %for.body, label %for.end9, !dbg !1549

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1551
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1551
  %6 = load i8** %data, align 8, !dbg !1551
  %tobool = icmp ne i8* %6, null, !dbg !1551
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1551

if.then:                                          ; preds = %for.body
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1554
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1554
  br label %for.cond2, !dbg !1554

for.cond2:                                        ; preds = %for.inc, %if.then
  %8 = load %struct.hash_entry** %cursor, align 8, !dbg !1554
  %tobool3 = icmp ne %struct.hash_entry* %8, null, !dbg !1554
  br i1 %tobool3, label %for.body4, label %for.end, !dbg !1554

for.body4:                                        ; preds = %for.cond2
  %9 = load i1 (i8*, i8*)** %processor.addr, align 8, !dbg !1557
  %10 = load %struct.hash_entry** %cursor, align 8, !dbg !1557
  %data5 = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 0, !dbg !1557
  %11 = load i8** %data5, align 8, !dbg !1557
  %12 = load i8** %processor_data.addr, align 8, !dbg !1557
  %call = call zeroext i1 %9(i8* %11, i8* %12), !dbg !1557
  br i1 %call, label %if.end, label %if.then6, !dbg !1557

if.then6:                                         ; preds = %for.body4
  %13 = load i64* %counter, align 8, !dbg !1560
  store i64 %13, i64* %retval, !dbg !1560
  br label %return, !dbg !1560

if.end:                                           ; preds = %for.body4
  %14 = load i64* %counter, align 8, !dbg !1561
  %inc = add i64 %14, 1, !dbg !1561
  store i64 %inc, i64* %counter, align 8, !dbg !1561
  br label %for.inc, !dbg !1562

for.inc:                                          ; preds = %if.end
  %15 = load %struct.hash_entry** %cursor, align 8, !dbg !1554
  %next = getelementptr inbounds %struct.hash_entry* %15, i32 0, i32 1, !dbg !1554
  %16 = load %struct.hash_entry** %next, align 8, !dbg !1554
  store %struct.hash_entry* %16, %struct.hash_entry** %cursor, align 8, !dbg !1554
  br label %for.cond2, !dbg !1554

for.end:                                          ; preds = %for.cond2
  br label %if.end7, !dbg !1563

if.end7:                                          ; preds = %for.end, %for.body
  br label %for.inc8, !dbg !1564

for.inc8:                                         ; preds = %if.end7
  %17 = load %struct.hash_entry** %bucket, align 8, !dbg !1549
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %17, i32 1, !dbg !1549
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1549
  br label %for.cond, !dbg !1549

for.end9:                                         ; preds = %for.cond
  %18 = load i64* %counter, align 8, !dbg !1565
  store i64 %18, i64* %retval, !dbg !1565
  br label %return, !dbg !1565

return:                                           ; preds = %for.end9, %if.then6
  %19 = load i64* %retval, !dbg !1566
  ret i64 %19, !dbg !1566
}

; Function Attrs: nounwind uwtable
define i64 @hash_string(i8* %string, i64 %n_buckets) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %n_buckets.addr = alloca i64, align 8
  %value = alloca i64, align 8
  %ch = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %string.addr}, metadata !1567), !dbg !1568
  store i64 %n_buckets, i64* %n_buckets.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n_buckets.addr}, metadata !1569), !dbg !1568
  call void @llvm.dbg.declare(metadata !{i64* %value}, metadata !1570), !dbg !1571
  store i64 0, i64* %value, align 8, !dbg !1571
  call void @llvm.dbg.declare(metadata !{i8* %ch}, metadata !1572), !dbg !1573
  br label %for.cond, !dbg !1574

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8** %string.addr, align 8, !dbg !1574
  %1 = load i8* %0, align 1, !dbg !1574
  store i8 %1, i8* %ch, align 1, !dbg !1574
  %tobool = icmp ne i8 %1, 0, !dbg !1574
  br i1 %tobool, label %for.body, label %for.end, !dbg !1574

for.body:                                         ; preds = %for.cond
  %2 = load i64* %value, align 8, !dbg !1576
  %mul = mul i64 %2, 31, !dbg !1576
  %3 = load i8* %ch, align 1, !dbg !1576
  %conv = zext i8 %3 to i64, !dbg !1576
  %add = add i64 %mul, %conv, !dbg !1576
  %4 = load i64* %n_buckets.addr, align 8, !dbg !1576
  %rem = urem i64 %add, %4, !dbg !1576
  store i64 %rem, i64* %value, align 8, !dbg !1576
  br label %for.inc, !dbg !1576

for.inc:                                          ; preds = %for.body
  %5 = load i8** %string.addr, align 8, !dbg !1574
  %incdec.ptr = getelementptr inbounds i8* %5, i32 1, !dbg !1574
  store i8* %incdec.ptr, i8** %string.addr, align 8, !dbg !1574
  br label %for.cond, !dbg !1574

for.end:                                          ; preds = %for.cond
  %6 = load i64* %value, align 8, !dbg !1577
  ret i64 %6, !dbg !1577
}

; Function Attrs: nounwind uwtable
define void @hash_reset_tuning(%struct.hash_tuning* %tuning) #0 {
entry:
  %tuning.addr = alloca %struct.hash_tuning*, align 8
  store %struct.hash_tuning* %tuning, %struct.hash_tuning** %tuning.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_tuning** %tuning.addr}, metadata !1578), !dbg !1579
  %0 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1580
  %1 = bitcast %struct.hash_tuning* %0 to i8*, !dbg !1580
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ({ float, float, float, float, i8, [3 x i8] }* @default_tuning to i8*), i64 20, i32 4, i1 false), !dbg !1580
  ret void, !dbg !1581
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #9

; Function Attrs: nounwind uwtable
define %struct.hash_table* @hash_initialize(i64 %candidate, %struct.hash_tuning* %tuning, i64 (i8*, i64)* %hasher, i1 (i8*, i8*)* %comparator, void (i8*)* %data_freer) #0 {
entry:
  %retval = alloca %struct.hash_table*, align 8
  %candidate.addr = alloca i64, align 8
  %tuning.addr = alloca %struct.hash_tuning*, align 8
  %hasher.addr = alloca i64 (i8*, i64)*, align 8
  %comparator.addr = alloca i1 (i8*, i8*)*, align 8
  %data_freer.addr = alloca void (i8*)*, align 8
  %table = alloca %struct.hash_table*, align 8
  %new_candidate = alloca float, align 4
  store i64 %candidate, i64* %candidate.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %candidate.addr}, metadata !1582), !dbg !1583
  store %struct.hash_tuning* %tuning, %struct.hash_tuning** %tuning.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_tuning** %tuning.addr}, metadata !1584), !dbg !1583
  store i64 (i8*, i64)* %hasher, i64 (i8*, i64)** %hasher.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64 (i8*, i64)** %hasher.addr}, metadata !1585), !dbg !1586
  store i1 (i8*, i8*)* %comparator, i1 (i8*, i8*)** %comparator.addr, align 8
  call void @llvm.dbg.declare(metadata !{i1 (i8*, i8*)** %comparator.addr}, metadata !1587), !dbg !1586
  store void (i8*)* %data_freer, void (i8*)** %data_freer.addr, align 8
  call void @llvm.dbg.declare(metadata !{void (i8*)** %data_freer.addr}, metadata !1588), !dbg !1589
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table}, metadata !1590), !dbg !1591
  %0 = load i64 (i8*, i64)** %hasher.addr, align 8, !dbg !1592
  %cmp = icmp eq i64 (i8*, i64)* %0, null, !dbg !1592
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1592

lor.lhs.false:                                    ; preds = %entry
  %1 = load i1 (i8*, i8*)** %comparator.addr, align 8, !dbg !1592
  %cmp1 = icmp eq i1 (i8*, i8*)* %1, null, !dbg !1592
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1592

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.hash_table* null, %struct.hash_table** %retval, !dbg !1594
  br label %return, !dbg !1594

if.end:                                           ; preds = %lor.lhs.false
  %call = call noalias i8* @malloc(i64 80) #9, !dbg !1595
  %2 = bitcast i8* %call to %struct.hash_table*, !dbg !1595
  store %struct.hash_table* %2, %struct.hash_table** %table, align 8, !dbg !1595
  %3 = load %struct.hash_table** %table, align 8, !dbg !1596
  %cmp2 = icmp eq %struct.hash_table* %3, null, !dbg !1596
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1596

if.then3:                                         ; preds = %if.end
  store %struct.hash_table* null, %struct.hash_table** %retval, !dbg !1598
  br label %return, !dbg !1598

if.end4:                                          ; preds = %if.end
  %4 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1599
  %tobool = icmp ne %struct.hash_tuning* %4, null, !dbg !1599
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !1599

if.then5:                                         ; preds = %if.end4
  store %struct.hash_tuning* bitcast ({ float, float, float, float, i8, [3 x i8] }* @default_tuning to %struct.hash_tuning*), %struct.hash_tuning** %tuning.addr, align 8, !dbg !1601
  br label %if.end6, !dbg !1601

if.end6:                                          ; preds = %if.then5, %if.end4
  %5 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1602
  %6 = load %struct.hash_table** %table, align 8, !dbg !1602
  %tuning7 = getelementptr inbounds %struct.hash_table* %6, i32 0, i32 5, !dbg !1602
  store %struct.hash_tuning* %5, %struct.hash_tuning** %tuning7, align 8, !dbg !1602
  %7 = load %struct.hash_table** %table, align 8, !dbg !1603
  %call8 = call zeroext i1 @check_tuning(%struct.hash_table* %7), !dbg !1603
  br i1 %call8, label %if.end10, label %if.then9, !dbg !1603

if.then9:                                         ; preds = %if.end6
  br label %fail, !dbg !1605

if.end10:                                         ; preds = %if.end6
  %8 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1607
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning* %8, i32 0, i32 4, !dbg !1607
  %9 = load i8* %is_n_buckets, align 1, !dbg !1607
  %tobool11 = trunc i8 %9 to i1, !dbg !1607
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !1607

if.then12:                                        ; preds = %if.end10
  call void @llvm.dbg.declare(metadata !{float* %new_candidate}, metadata !1609), !dbg !1611
  %10 = load i64* %candidate.addr, align 8, !dbg !1611
  %conv = uitofp i64 %10 to float, !dbg !1611
  %11 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1611
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %11, i32 0, i32 2, !dbg !1611
  %12 = load float* %growth_threshold, align 4, !dbg !1611
  %div = fdiv float %conv, %12, !dbg !1611
  store float %div, float* %new_candidate, align 4, !dbg !1611
  %13 = load float* %new_candidate, align 4, !dbg !1612
  %cmp13 = fcmp ole float 0x43F0000000000000, %13, !dbg !1612
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1612

if.then15:                                        ; preds = %if.then12
  br label %fail, !dbg !1614

if.end16:                                         ; preds = %if.then12
  %14 = load float* %new_candidate, align 4, !dbg !1615
  %conv17 = fptoui float %14 to i64, !dbg !1615
  store i64 %conv17, i64* %candidate.addr, align 8, !dbg !1615
  br label %if.end18, !dbg !1616

if.end18:                                         ; preds = %if.end16, %if.end10
  %15 = load i64* %candidate.addr, align 8, !dbg !1617
  %cmp19 = icmp ult i64 1152921504606846975, %15, !dbg !1617
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1617

if.then21:                                        ; preds = %if.end18
  br label %fail, !dbg !1619

if.end22:                                         ; preds = %if.end18
  %16 = load i64* %candidate.addr, align 8, !dbg !1620
  %call23 = call i64 @next_prime(i64 %16), !dbg !1620
  %17 = load %struct.hash_table** %table, align 8, !dbg !1620
  %n_buckets = getelementptr inbounds %struct.hash_table* %17, i32 0, i32 2, !dbg !1620
  store i64 %call23, i64* %n_buckets, align 8, !dbg !1620
  %18 = load %struct.hash_table** %table, align 8, !dbg !1621
  %n_buckets24 = getelementptr inbounds %struct.hash_table* %18, i32 0, i32 2, !dbg !1621
  %19 = load i64* %n_buckets24, align 8, !dbg !1621
  %cmp25 = icmp ult i64 1152921504606846975, %19, !dbg !1621
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1621

if.then27:                                        ; preds = %if.end22
  br label %fail, !dbg !1623

if.end28:                                         ; preds = %if.end22
  %20 = load %struct.hash_table** %table, align 8, !dbg !1624
  %n_buckets29 = getelementptr inbounds %struct.hash_table* %20, i32 0, i32 2, !dbg !1624
  %21 = load i64* %n_buckets29, align 8, !dbg !1624
  %call30 = call noalias i8* @calloc(i64 %21, i64 16) #9, !dbg !1624
  %22 = bitcast i8* %call30 to %struct.hash_entry*, !dbg !1624
  %23 = load %struct.hash_table** %table, align 8, !dbg !1624
  %bucket = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 0, !dbg !1624
  store %struct.hash_entry* %22, %struct.hash_entry** %bucket, align 8, !dbg !1624
  %24 = load %struct.hash_table** %table, align 8, !dbg !1625
  %bucket31 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 0, !dbg !1625
  %25 = load %struct.hash_entry** %bucket31, align 8, !dbg !1625
  %26 = load %struct.hash_table** %table, align 8, !dbg !1625
  %n_buckets32 = getelementptr inbounds %struct.hash_table* %26, i32 0, i32 2, !dbg !1625
  %27 = load i64* %n_buckets32, align 8, !dbg !1625
  %add.ptr = getelementptr inbounds %struct.hash_entry* %25, i64 %27, !dbg !1625
  %28 = load %struct.hash_table** %table, align 8, !dbg !1625
  %bucket_limit = getelementptr inbounds %struct.hash_table* %28, i32 0, i32 1, !dbg !1625
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket_limit, align 8, !dbg !1625
  %29 = load %struct.hash_table** %table, align 8, !dbg !1626
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %29, i32 0, i32 3, !dbg !1626
  store i64 0, i64* %n_buckets_used, align 8, !dbg !1626
  %30 = load %struct.hash_table** %table, align 8, !dbg !1627
  %n_entries = getelementptr inbounds %struct.hash_table* %30, i32 0, i32 4, !dbg !1627
  store i64 0, i64* %n_entries, align 8, !dbg !1627
  %31 = load i64 (i8*, i64)** %hasher.addr, align 8, !dbg !1628
  %32 = load %struct.hash_table** %table, align 8, !dbg !1628
  %hasher33 = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 6, !dbg !1628
  store i64 (i8*, i64)* %31, i64 (i8*, i64)** %hasher33, align 8, !dbg !1628
  %33 = load i1 (i8*, i8*)** %comparator.addr, align 8, !dbg !1629
  %34 = load %struct.hash_table** %table, align 8, !dbg !1629
  %comparator34 = getelementptr inbounds %struct.hash_table* %34, i32 0, i32 7, !dbg !1629
  store i1 (i8*, i8*)* %33, i1 (i8*, i8*)** %comparator34, align 8, !dbg !1629
  %35 = load void (i8*)** %data_freer.addr, align 8, !dbg !1630
  %36 = load %struct.hash_table** %table, align 8, !dbg !1630
  %data_freer35 = getelementptr inbounds %struct.hash_table* %36, i32 0, i32 8, !dbg !1630
  store void (i8*)* %35, void (i8*)** %data_freer35, align 8, !dbg !1630
  %37 = load %struct.hash_table** %table, align 8, !dbg !1631
  %free_entry_list = getelementptr inbounds %struct.hash_table* %37, i32 0, i32 9, !dbg !1631
  store %struct.hash_entry* null, %struct.hash_entry** %free_entry_list, align 8, !dbg !1631
  %38 = load %struct.hash_table** %table, align 8, !dbg !1632
  store %struct.hash_table* %38, %struct.hash_table** %retval, !dbg !1632
  br label %return, !dbg !1632

fail:                                             ; preds = %if.then27, %if.then21, %if.then15, %if.then9
  %39 = load %struct.hash_table** %table, align 8, !dbg !1633
  %40 = bitcast %struct.hash_table* %39 to i8*, !dbg !1633
  call void @free(i8* %40) #9, !dbg !1633
  store %struct.hash_table* null, %struct.hash_table** %retval, !dbg !1634
  br label %return, !dbg !1634

return:                                           ; preds = %fail, %if.end28, %if.then3, %if.then
  %41 = load %struct.hash_table** %retval, !dbg !1635
  ret %struct.hash_table* %41, !dbg !1635
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @hash_clear(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1636), !dbg !1637
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1638), !dbg !1639
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1640
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1640
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1640
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1640
  br label %for.cond, !dbg !1640

for.cond:                                         ; preds = %for.inc23, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1640
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1640
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1640
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1640
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1640
  br i1 %cmp, label %for.body, label %for.end24, !dbg !1640

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1642
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1642
  %6 = load i8** %data, align 8, !dbg !1642
  %tobool = icmp ne i8* %6, null, !dbg !1642
  br i1 %tobool, label %if.then, label %if.end22, !dbg !1642

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1645), !dbg !1647
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %next}, metadata !1648), !dbg !1649
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1650
  %next2 = getelementptr inbounds %struct.hash_entry* %7, i32 0, i32 1, !dbg !1650
  %8 = load %struct.hash_entry** %next2, align 8, !dbg !1650
  store %struct.hash_entry* %8, %struct.hash_entry** %cursor, align 8, !dbg !1650
  br label %for.cond3, !dbg !1650

for.cond3:                                        ; preds = %for.inc, %if.then
  %9 = load %struct.hash_entry** %cursor, align 8, !dbg !1650
  %tobool4 = icmp ne %struct.hash_entry* %9, null, !dbg !1650
  br i1 %tobool4, label %for.body5, label %for.end, !dbg !1650

for.body5:                                        ; preds = %for.cond3
  %10 = load %struct.hash_table** %table.addr, align 8, !dbg !1652
  %data_freer = getelementptr inbounds %struct.hash_table* %10, i32 0, i32 8, !dbg !1652
  %11 = load void (i8*)** %data_freer, align 8, !dbg !1652
  %tobool6 = icmp ne void (i8*)* %11, null, !dbg !1652
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !1652

if.then7:                                         ; preds = %for.body5
  %12 = load %struct.hash_table** %table.addr, align 8, !dbg !1655
  %data_freer8 = getelementptr inbounds %struct.hash_table* %12, i32 0, i32 8, !dbg !1655
  %13 = load void (i8*)** %data_freer8, align 8, !dbg !1655
  %14 = load %struct.hash_entry** %cursor, align 8, !dbg !1655
  %data9 = getelementptr inbounds %struct.hash_entry* %14, i32 0, i32 0, !dbg !1655
  %15 = load i8** %data9, align 8, !dbg !1655
  call void %13(i8* %15), !dbg !1655
  br label %if.end, !dbg !1655

if.end:                                           ; preds = %if.then7, %for.body5
  %16 = load %struct.hash_entry** %cursor, align 8, !dbg !1656
  %data10 = getelementptr inbounds %struct.hash_entry* %16, i32 0, i32 0, !dbg !1656
  store i8* null, i8** %data10, align 8, !dbg !1656
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1657
  %next11 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 1, !dbg !1657
  %18 = load %struct.hash_entry** %next11, align 8, !dbg !1657
  store %struct.hash_entry* %18, %struct.hash_entry** %next, align 8, !dbg !1657
  %19 = load %struct.hash_table** %table.addr, align 8, !dbg !1658
  %free_entry_list = getelementptr inbounds %struct.hash_table* %19, i32 0, i32 9, !dbg !1658
  %20 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1658
  %21 = load %struct.hash_entry** %cursor, align 8, !dbg !1658
  %next12 = getelementptr inbounds %struct.hash_entry* %21, i32 0, i32 1, !dbg !1658
  store %struct.hash_entry* %20, %struct.hash_entry** %next12, align 8, !dbg !1658
  %22 = load %struct.hash_entry** %cursor, align 8, !dbg !1659
  %23 = load %struct.hash_table** %table.addr, align 8, !dbg !1659
  %free_entry_list13 = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 9, !dbg !1659
  store %struct.hash_entry* %22, %struct.hash_entry** %free_entry_list13, align 8, !dbg !1659
  br label %for.inc, !dbg !1660

for.inc:                                          ; preds = %if.end
  %24 = load %struct.hash_entry** %next, align 8, !dbg !1650
  store %struct.hash_entry* %24, %struct.hash_entry** %cursor, align 8, !dbg !1650
  br label %for.cond3, !dbg !1650

for.end:                                          ; preds = %for.cond3
  %25 = load %struct.hash_table** %table.addr, align 8, !dbg !1661
  %data_freer14 = getelementptr inbounds %struct.hash_table* %25, i32 0, i32 8, !dbg !1661
  %26 = load void (i8*)** %data_freer14, align 8, !dbg !1661
  %tobool15 = icmp ne void (i8*)* %26, null, !dbg !1661
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !1661

if.then16:                                        ; preds = %for.end
  %27 = load %struct.hash_table** %table.addr, align 8, !dbg !1663
  %data_freer17 = getelementptr inbounds %struct.hash_table* %27, i32 0, i32 8, !dbg !1663
  %28 = load void (i8*)** %data_freer17, align 8, !dbg !1663
  %29 = load %struct.hash_entry** %bucket, align 8, !dbg !1663
  %data18 = getelementptr inbounds %struct.hash_entry* %29, i32 0, i32 0, !dbg !1663
  %30 = load i8** %data18, align 8, !dbg !1663
  call void %28(i8* %30), !dbg !1663
  br label %if.end19, !dbg !1663

if.end19:                                         ; preds = %if.then16, %for.end
  %31 = load %struct.hash_entry** %bucket, align 8, !dbg !1664
  %data20 = getelementptr inbounds %struct.hash_entry* %31, i32 0, i32 0, !dbg !1664
  store i8* null, i8** %data20, align 8, !dbg !1664
  %32 = load %struct.hash_entry** %bucket, align 8, !dbg !1665
  %next21 = getelementptr inbounds %struct.hash_entry* %32, i32 0, i32 1, !dbg !1665
  store %struct.hash_entry* null, %struct.hash_entry** %next21, align 8, !dbg !1665
  br label %if.end22, !dbg !1666

if.end22:                                         ; preds = %if.end19, %for.body
  br label %for.inc23, !dbg !1667

for.inc23:                                        ; preds = %if.end22
  %33 = load %struct.hash_entry** %bucket, align 8, !dbg !1640
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %33, i32 1, !dbg !1640
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1640
  br label %for.cond, !dbg !1640

for.end24:                                        ; preds = %for.cond
  %34 = load %struct.hash_table** %table.addr, align 8, !dbg !1668
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %34, i32 0, i32 3, !dbg !1668
  store i64 0, i64* %n_buckets_used, align 8, !dbg !1668
  %35 = load %struct.hash_table** %table.addr, align 8, !dbg !1669
  %n_entries = getelementptr inbounds %struct.hash_table* %35, i32 0, i32 4, !dbg !1669
  store i64 0, i64* %n_entries, align 8, !dbg !1669
  ret void, !dbg !1670
}

; Function Attrs: nounwind uwtable
define void @hash_free(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1671), !dbg !1672
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1673), !dbg !1674
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1675), !dbg !1676
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %next}, metadata !1677), !dbg !1678
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1679
  %data_freer = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 8, !dbg !1679
  %1 = load void (i8*)** %data_freer, align 8, !dbg !1679
  %tobool = icmp ne void (i8*)* %1, null, !dbg !1679
  br i1 %tobool, label %land.lhs.true, label %if.end13, !dbg !1679

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1679
  %n_entries = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 4, !dbg !1679
  %3 = load i64* %n_entries, align 8, !dbg !1679
  %tobool1 = icmp ne i64 %3, 0, !dbg !1679
  br i1 %tobool1, label %if.then, label %if.end13, !dbg !1679

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.hash_table** %table.addr, align 8, !dbg !1681
  %bucket2 = getelementptr inbounds %struct.hash_table* %4, i32 0, i32 0, !dbg !1681
  %5 = load %struct.hash_entry** %bucket2, align 8, !dbg !1681
  store %struct.hash_entry* %5, %struct.hash_entry** %bucket, align 8, !dbg !1681
  br label %for.cond, !dbg !1681

for.cond:                                         ; preds = %for.inc11, %if.then
  %6 = load %struct.hash_entry** %bucket, align 8, !dbg !1681
  %7 = load %struct.hash_table** %table.addr, align 8, !dbg !1681
  %bucket_limit = getelementptr inbounds %struct.hash_table* %7, i32 0, i32 1, !dbg !1681
  %8 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1681
  %cmp = icmp ult %struct.hash_entry* %6, %8, !dbg !1681
  br i1 %cmp, label %for.body, label %for.end12, !dbg !1681

for.body:                                         ; preds = %for.cond
  %9 = load %struct.hash_entry** %bucket, align 8, !dbg !1684
  %data = getelementptr inbounds %struct.hash_entry* %9, i32 0, i32 0, !dbg !1684
  %10 = load i8** %data, align 8, !dbg !1684
  %tobool3 = icmp ne i8* %10, null, !dbg !1684
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1684

if.then4:                                         ; preds = %for.body
  %11 = load %struct.hash_entry** %bucket, align 8, !dbg !1687
  store %struct.hash_entry* %11, %struct.hash_entry** %cursor, align 8, !dbg !1687
  br label %for.cond5, !dbg !1687

for.cond5:                                        ; preds = %for.inc, %if.then4
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1687
  %tobool6 = icmp ne %struct.hash_entry* %12, null, !dbg !1687
  br i1 %tobool6, label %for.body7, label %for.end, !dbg !1687

for.body7:                                        ; preds = %for.cond5
  %13 = load %struct.hash_table** %table.addr, align 8, !dbg !1690
  %data_freer8 = getelementptr inbounds %struct.hash_table* %13, i32 0, i32 8, !dbg !1690
  %14 = load void (i8*)** %data_freer8, align 8, !dbg !1690
  %15 = load %struct.hash_entry** %cursor, align 8, !dbg !1690
  %data9 = getelementptr inbounds %struct.hash_entry* %15, i32 0, i32 0, !dbg !1690
  %16 = load i8** %data9, align 8, !dbg !1690
  call void %14(i8* %16), !dbg !1690
  br label %for.inc, !dbg !1692

for.inc:                                          ; preds = %for.body7
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1687
  %next10 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 1, !dbg !1687
  %18 = load %struct.hash_entry** %next10, align 8, !dbg !1687
  store %struct.hash_entry* %18, %struct.hash_entry** %cursor, align 8, !dbg !1687
  br label %for.cond5, !dbg !1687

for.end:                                          ; preds = %for.cond5
  br label %if.end, !dbg !1693

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc11, !dbg !1694

for.inc11:                                        ; preds = %if.end
  %19 = load %struct.hash_entry** %bucket, align 8, !dbg !1681
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %19, i32 1, !dbg !1681
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1681
  br label %for.cond, !dbg !1681

for.end12:                                        ; preds = %for.cond
  br label %if.end13, !dbg !1695

if.end13:                                         ; preds = %for.end12, %land.lhs.true, %entry
  %20 = load %struct.hash_table** %table.addr, align 8, !dbg !1696
  %bucket14 = getelementptr inbounds %struct.hash_table* %20, i32 0, i32 0, !dbg !1696
  %21 = load %struct.hash_entry** %bucket14, align 8, !dbg !1696
  store %struct.hash_entry* %21, %struct.hash_entry** %bucket, align 8, !dbg !1696
  br label %for.cond15, !dbg !1696

for.cond15:                                       ; preds = %for.inc26, %if.end13
  %22 = load %struct.hash_entry** %bucket, align 8, !dbg !1696
  %23 = load %struct.hash_table** %table.addr, align 8, !dbg !1696
  %bucket_limit16 = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 1, !dbg !1696
  %24 = load %struct.hash_entry** %bucket_limit16, align 8, !dbg !1696
  %cmp17 = icmp ult %struct.hash_entry* %22, %24, !dbg !1696
  br i1 %cmp17, label %for.body18, label %for.end28, !dbg !1696

for.body18:                                       ; preds = %for.cond15
  %25 = load %struct.hash_entry** %bucket, align 8, !dbg !1698
  %next19 = getelementptr inbounds %struct.hash_entry* %25, i32 0, i32 1, !dbg !1698
  %26 = load %struct.hash_entry** %next19, align 8, !dbg !1698
  store %struct.hash_entry* %26, %struct.hash_entry** %cursor, align 8, !dbg !1698
  br label %for.cond20, !dbg !1698

for.cond20:                                       ; preds = %for.inc24, %for.body18
  %27 = load %struct.hash_entry** %cursor, align 8, !dbg !1698
  %tobool21 = icmp ne %struct.hash_entry* %27, null, !dbg !1698
  br i1 %tobool21, label %for.body22, label %for.end25, !dbg !1698

for.body22:                                       ; preds = %for.cond20
  %28 = load %struct.hash_entry** %cursor, align 8, !dbg !1701
  %next23 = getelementptr inbounds %struct.hash_entry* %28, i32 0, i32 1, !dbg !1701
  %29 = load %struct.hash_entry** %next23, align 8, !dbg !1701
  store %struct.hash_entry* %29, %struct.hash_entry** %next, align 8, !dbg !1701
  %30 = load %struct.hash_entry** %cursor, align 8, !dbg !1703
  %31 = bitcast %struct.hash_entry* %30 to i8*, !dbg !1703
  call void @free(i8* %31) #9, !dbg !1703
  br label %for.inc24, !dbg !1704

for.inc24:                                        ; preds = %for.body22
  %32 = load %struct.hash_entry** %next, align 8, !dbg !1698
  store %struct.hash_entry* %32, %struct.hash_entry** %cursor, align 8, !dbg !1698
  br label %for.cond20, !dbg !1698

for.end25:                                        ; preds = %for.cond20
  br label %for.inc26, !dbg !1705

for.inc26:                                        ; preds = %for.end25
  %33 = load %struct.hash_entry** %bucket, align 8, !dbg !1696
  %incdec.ptr27 = getelementptr inbounds %struct.hash_entry* %33, i32 1, !dbg !1696
  store %struct.hash_entry* %incdec.ptr27, %struct.hash_entry** %bucket, align 8, !dbg !1696
  br label %for.cond15, !dbg !1696

for.end28:                                        ; preds = %for.cond15
  %34 = load %struct.hash_table** %table.addr, align 8, !dbg !1706
  %free_entry_list = getelementptr inbounds %struct.hash_table* %34, i32 0, i32 9, !dbg !1706
  %35 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1706
  store %struct.hash_entry* %35, %struct.hash_entry** %cursor, align 8, !dbg !1706
  br label %for.cond29, !dbg !1706

for.cond29:                                       ; preds = %for.inc33, %for.end28
  %36 = load %struct.hash_entry** %cursor, align 8, !dbg !1706
  %tobool30 = icmp ne %struct.hash_entry* %36, null, !dbg !1706
  br i1 %tobool30, label %for.body31, label %for.end34, !dbg !1706

for.body31:                                       ; preds = %for.cond29
  %37 = load %struct.hash_entry** %cursor, align 8, !dbg !1708
  %next32 = getelementptr inbounds %struct.hash_entry* %37, i32 0, i32 1, !dbg !1708
  %38 = load %struct.hash_entry** %next32, align 8, !dbg !1708
  store %struct.hash_entry* %38, %struct.hash_entry** %next, align 8, !dbg !1708
  %39 = load %struct.hash_entry** %cursor, align 8, !dbg !1710
  %40 = bitcast %struct.hash_entry* %39 to i8*, !dbg !1710
  call void @free(i8* %40) #9, !dbg !1710
  br label %for.inc33, !dbg !1711

for.inc33:                                        ; preds = %for.body31
  %41 = load %struct.hash_entry** %next, align 8, !dbg !1706
  store %struct.hash_entry* %41, %struct.hash_entry** %cursor, align 8, !dbg !1706
  br label %for.cond29, !dbg !1706

for.end34:                                        ; preds = %for.cond29
  %42 = load %struct.hash_table** %table.addr, align 8, !dbg !1712
  %bucket35 = getelementptr inbounds %struct.hash_table* %42, i32 0, i32 0, !dbg !1712
  %43 = load %struct.hash_entry** %bucket35, align 8, !dbg !1712
  %44 = bitcast %struct.hash_entry* %43 to i8*, !dbg !1712
  call void @free(i8* %44) #9, !dbg !1712
  %45 = load %struct.hash_table** %table.addr, align 8, !dbg !1713
  %46 = bitcast %struct.hash_table* %45 to i8*, !dbg !1713
  call void @free(i8* %46) #9, !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: nounwind uwtable
define zeroext i1 @hash_rehash(%struct.hash_table* %table, i64 %candidate) #0 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.hash_table*, align 8
  %candidate.addr = alloca i64, align 8
  %new_table = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  %data8 = alloca i8*, align 8
  %new_bucket = alloca %struct.hash_entry*, align 8
  %new_entry = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1715), !dbg !1716
  store i64 %candidate, i64* %candidate.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %candidate.addr}, metadata !1717), !dbg !1716
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %new_table}, metadata !1718), !dbg !1719
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1720), !dbg !1721
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1722), !dbg !1723
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %next}, metadata !1724), !dbg !1725
  %0 = load i64* %candidate.addr, align 8, !dbg !1726
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1726
  %tuning = getelementptr inbounds %struct.hash_table* %1, i32 0, i32 5, !dbg !1726
  %2 = load %struct.hash_tuning** %tuning, align 8, !dbg !1726
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1726
  %hasher = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 6, !dbg !1726
  %4 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1726
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1726
  %comparator = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 7, !dbg !1726
  %6 = load i1 (i8*, i8*)** %comparator, align 8, !dbg !1726
  %7 = load %struct.hash_table** %table.addr, align 8, !dbg !1726
  %data_freer = getelementptr inbounds %struct.hash_table* %7, i32 0, i32 8, !dbg !1726
  %8 = load void (i8*)** %data_freer, align 8, !dbg !1726
  %call = call %struct.hash_table* @hash_initialize(i64 %0, %struct.hash_tuning* %2, i64 (i8*, i64)* %4, i1 (i8*, i8*)* %6, void (i8*)* %8), !dbg !1726
  store %struct.hash_table* %call, %struct.hash_table** %new_table, align 8, !dbg !1726
  %9 = load %struct.hash_table** %new_table, align 8, !dbg !1727
  %cmp = icmp eq %struct.hash_table* %9, null, !dbg !1727
  br i1 %cmp, label %if.then, label %if.end, !dbg !1727

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, !dbg !1729
  br label %return, !dbg !1729

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_table** %table.addr, align 8, !dbg !1730
  %free_entry_list = getelementptr inbounds %struct.hash_table* %10, i32 0, i32 9, !dbg !1730
  %11 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1730
  %12 = load %struct.hash_table** %new_table, align 8, !dbg !1730
  %free_entry_list1 = getelementptr inbounds %struct.hash_table* %12, i32 0, i32 9, !dbg !1730
  store %struct.hash_entry* %11, %struct.hash_entry** %free_entry_list1, align 8, !dbg !1730
  %13 = load %struct.hash_table** %table.addr, align 8, !dbg !1731
  %bucket2 = getelementptr inbounds %struct.hash_table* %13, i32 0, i32 0, !dbg !1731
  %14 = load %struct.hash_entry** %bucket2, align 8, !dbg !1731
  store %struct.hash_entry* %14, %struct.hash_entry** %bucket, align 8, !dbg !1731
  br label %for.cond, !dbg !1731

for.cond:                                         ; preds = %for.inc42, %if.end
  %15 = load %struct.hash_entry** %bucket, align 8, !dbg !1731
  %16 = load %struct.hash_table** %table.addr, align 8, !dbg !1731
  %bucket_limit = getelementptr inbounds %struct.hash_table* %16, i32 0, i32 1, !dbg !1731
  %17 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1731
  %cmp3 = icmp ult %struct.hash_entry* %15, %17, !dbg !1731
  br i1 %cmp3, label %for.body, label %for.end43, !dbg !1731

for.body:                                         ; preds = %for.cond
  %18 = load %struct.hash_entry** %bucket, align 8, !dbg !1733
  %data = getelementptr inbounds %struct.hash_entry* %18, i32 0, i32 0, !dbg !1733
  %19 = load i8** %data, align 8, !dbg !1733
  %tobool = icmp ne i8* %19, null, !dbg !1733
  br i1 %tobool, label %if.then4, label %if.end41, !dbg !1733

if.then4:                                         ; preds = %for.body
  %20 = load %struct.hash_entry** %bucket, align 8, !dbg !1735
  store %struct.hash_entry* %20, %struct.hash_entry** %cursor, align 8, !dbg !1735
  br label %for.cond5, !dbg !1735

for.cond5:                                        ; preds = %for.inc, %if.then4
  %21 = load %struct.hash_entry** %cursor, align 8, !dbg !1735
  %tobool6 = icmp ne %struct.hash_entry* %21, null, !dbg !1735
  br i1 %tobool6, label %for.body7, label %for.end, !dbg !1735

for.body7:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata !{i8** %data8}, metadata !1737), !dbg !1739
  %22 = load %struct.hash_entry** %cursor, align 8, !dbg !1739
  %data9 = getelementptr inbounds %struct.hash_entry* %22, i32 0, i32 0, !dbg !1739
  %23 = load i8** %data9, align 8, !dbg !1739
  store i8* %23, i8** %data8, align 8, !dbg !1739
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %new_bucket}, metadata !1740), !dbg !1741
  %24 = load %struct.hash_table** %new_table, align 8, !dbg !1741
  %bucket10 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 0, !dbg !1741
  %25 = load %struct.hash_entry** %bucket10, align 8, !dbg !1741
  %26 = load %struct.hash_table** %new_table, align 8, !dbg !1742
  %hasher11 = getelementptr inbounds %struct.hash_table* %26, i32 0, i32 6, !dbg !1742
  %27 = load i64 (i8*, i64)** %hasher11, align 8, !dbg !1742
  %28 = load i8** %data8, align 8, !dbg !1742
  %29 = load %struct.hash_table** %new_table, align 8, !dbg !1742
  %n_buckets = getelementptr inbounds %struct.hash_table* %29, i32 0, i32 2, !dbg !1742
  %30 = load i64* %n_buckets, align 8, !dbg !1742
  %call12 = call i64 %27(i8* %28, i64 %30), !dbg !1742
  %add.ptr = getelementptr inbounds %struct.hash_entry* %25, i64 %call12, !dbg !1742
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %new_bucket, align 8, !dbg !1742
  %31 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1743
  %32 = load %struct.hash_table** %new_table, align 8, !dbg !1743
  %bucket_limit13 = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 1, !dbg !1743
  %33 = load %struct.hash_entry** %bucket_limit13, align 8, !dbg !1743
  %cmp14 = icmp ult %struct.hash_entry* %31, %33, !dbg !1743
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !1743

if.then15:                                        ; preds = %for.body7
  call void @abort() #11, !dbg !1745
  unreachable, !dbg !1745

if.end16:                                         ; preds = %for.body7
  %34 = load %struct.hash_entry** %cursor, align 8, !dbg !1746
  %next17 = getelementptr inbounds %struct.hash_entry* %34, i32 0, i32 1, !dbg !1746
  %35 = load %struct.hash_entry** %next17, align 8, !dbg !1746
  store %struct.hash_entry* %35, %struct.hash_entry** %next, align 8, !dbg !1746
  %36 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1747
  %data18 = getelementptr inbounds %struct.hash_entry* %36, i32 0, i32 0, !dbg !1747
  %37 = load i8** %data18, align 8, !dbg !1747
  %tobool19 = icmp ne i8* %37, null, !dbg !1747
  br i1 %tobool19, label %if.then20, label %if.else35, !dbg !1747

if.then20:                                        ; preds = %if.end16
  %38 = load %struct.hash_entry** %cursor, align 8, !dbg !1749
  %39 = load %struct.hash_entry** %bucket, align 8, !dbg !1749
  %cmp21 = icmp eq %struct.hash_entry* %38, %39, !dbg !1749
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !1749

if.then22:                                        ; preds = %if.then20
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %new_entry}, metadata !1752), !dbg !1754
  %40 = load %struct.hash_table** %new_table, align 8, !dbg !1754
  %call23 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* %40), !dbg !1754
  store %struct.hash_entry* %call23, %struct.hash_entry** %new_entry, align 8, !dbg !1754
  %41 = load %struct.hash_entry** %new_entry, align 8, !dbg !1755
  %cmp24 = icmp eq %struct.hash_entry* %41, null, !dbg !1755
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1755

if.then25:                                        ; preds = %if.then22
  store i1 false, i1* %retval, !dbg !1757
  br label %return, !dbg !1757

if.end26:                                         ; preds = %if.then22
  %42 = load i8** %data8, align 8, !dbg !1758
  %43 = load %struct.hash_entry** %new_entry, align 8, !dbg !1758
  %data27 = getelementptr inbounds %struct.hash_entry* %43, i32 0, i32 0, !dbg !1758
  store i8* %42, i8** %data27, align 8, !dbg !1758
  %44 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1759
  %next28 = getelementptr inbounds %struct.hash_entry* %44, i32 0, i32 1, !dbg !1759
  %45 = load %struct.hash_entry** %next28, align 8, !dbg !1759
  %46 = load %struct.hash_entry** %new_entry, align 8, !dbg !1759
  %next29 = getelementptr inbounds %struct.hash_entry* %46, i32 0, i32 1, !dbg !1759
  store %struct.hash_entry* %45, %struct.hash_entry** %next29, align 8, !dbg !1759
  %47 = load %struct.hash_entry** %new_entry, align 8, !dbg !1760
  %48 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1760
  %next30 = getelementptr inbounds %struct.hash_entry* %48, i32 0, i32 1, !dbg !1760
  store %struct.hash_entry* %47, %struct.hash_entry** %next30, align 8, !dbg !1760
  br label %if.end34, !dbg !1761

if.else:                                          ; preds = %if.then20
  %49 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1762
  %next31 = getelementptr inbounds %struct.hash_entry* %49, i32 0, i32 1, !dbg !1762
  %50 = load %struct.hash_entry** %next31, align 8, !dbg !1762
  %51 = load %struct.hash_entry** %cursor, align 8, !dbg !1762
  %next32 = getelementptr inbounds %struct.hash_entry* %51, i32 0, i32 1, !dbg !1762
  store %struct.hash_entry* %50, %struct.hash_entry** %next32, align 8, !dbg !1762
  %52 = load %struct.hash_entry** %cursor, align 8, !dbg !1764
  %53 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1764
  %next33 = getelementptr inbounds %struct.hash_entry* %53, i32 0, i32 1, !dbg !1764
  store %struct.hash_entry* %52, %struct.hash_entry** %next33, align 8, !dbg !1764
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end26
  br label %if.end40, !dbg !1765

if.else35:                                        ; preds = %if.end16
  %54 = load i8** %data8, align 8, !dbg !1766
  %55 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1766
  %data36 = getelementptr inbounds %struct.hash_entry* %55, i32 0, i32 0, !dbg !1766
  store i8* %54, i8** %data36, align 8, !dbg !1766
  %56 = load %struct.hash_table** %new_table, align 8, !dbg !1768
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %56, i32 0, i32 3, !dbg !1768
  %57 = load i64* %n_buckets_used, align 8, !dbg !1768
  %inc = add i64 %57, 1, !dbg !1768
  store i64 %inc, i64* %n_buckets_used, align 8, !dbg !1768
  %58 = load %struct.hash_entry** %cursor, align 8, !dbg !1769
  %59 = load %struct.hash_entry** %bucket, align 8, !dbg !1769
  %cmp37 = icmp ne %struct.hash_entry* %58, %59, !dbg !1769
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !1769

if.then38:                                        ; preds = %if.else35
  %60 = load %struct.hash_table** %new_table, align 8, !dbg !1771
  %61 = load %struct.hash_entry** %cursor, align 8, !dbg !1771
  call void @free_entry(%struct.hash_table* %60, %struct.hash_entry* %61), !dbg !1771
  br label %if.end39, !dbg !1771

if.end39:                                         ; preds = %if.then38, %if.else35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end34
  br label %for.inc, !dbg !1772

for.inc:                                          ; preds = %if.end40
  %62 = load %struct.hash_entry** %next, align 8, !dbg !1735
  store %struct.hash_entry* %62, %struct.hash_entry** %cursor, align 8, !dbg !1735
  br label %for.cond5, !dbg !1735

for.end:                                          ; preds = %for.cond5
  br label %if.end41, !dbg !1773

if.end41:                                         ; preds = %for.end, %for.body
  br label %for.inc42, !dbg !1774

for.inc42:                                        ; preds = %if.end41
  %63 = load %struct.hash_entry** %bucket, align 8, !dbg !1731
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %63, i32 1, !dbg !1731
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1731
  br label %for.cond, !dbg !1731

for.end43:                                        ; preds = %for.cond
  %64 = load %struct.hash_table** %table.addr, align 8, !dbg !1775
  %bucket44 = getelementptr inbounds %struct.hash_table* %64, i32 0, i32 0, !dbg !1775
  %65 = load %struct.hash_entry** %bucket44, align 8, !dbg !1775
  %66 = bitcast %struct.hash_entry* %65 to i8*, !dbg !1775
  call void @free(i8* %66) #9, !dbg !1775
  %67 = load %struct.hash_table** %new_table, align 8, !dbg !1776
  %bucket45 = getelementptr inbounds %struct.hash_table* %67, i32 0, i32 0, !dbg !1776
  %68 = load %struct.hash_entry** %bucket45, align 8, !dbg !1776
  %69 = load %struct.hash_table** %table.addr, align 8, !dbg !1776
  %bucket46 = getelementptr inbounds %struct.hash_table* %69, i32 0, i32 0, !dbg !1776
  store %struct.hash_entry* %68, %struct.hash_entry** %bucket46, align 8, !dbg !1776
  %70 = load %struct.hash_table** %new_table, align 8, !dbg !1777
  %bucket_limit47 = getelementptr inbounds %struct.hash_table* %70, i32 0, i32 1, !dbg !1777
  %71 = load %struct.hash_entry** %bucket_limit47, align 8, !dbg !1777
  %72 = load %struct.hash_table** %table.addr, align 8, !dbg !1777
  %bucket_limit48 = getelementptr inbounds %struct.hash_table* %72, i32 0, i32 1, !dbg !1777
  store %struct.hash_entry* %71, %struct.hash_entry** %bucket_limit48, align 8, !dbg !1777
  %73 = load %struct.hash_table** %new_table, align 8, !dbg !1778
  %n_buckets49 = getelementptr inbounds %struct.hash_table* %73, i32 0, i32 2, !dbg !1778
  %74 = load i64* %n_buckets49, align 8, !dbg !1778
  %75 = load %struct.hash_table** %table.addr, align 8, !dbg !1778
  %n_buckets50 = getelementptr inbounds %struct.hash_table* %75, i32 0, i32 2, !dbg !1778
  store i64 %74, i64* %n_buckets50, align 8, !dbg !1778
  %76 = load %struct.hash_table** %new_table, align 8, !dbg !1779
  %n_buckets_used51 = getelementptr inbounds %struct.hash_table* %76, i32 0, i32 3, !dbg !1779
  %77 = load i64* %n_buckets_used51, align 8, !dbg !1779
  %78 = load %struct.hash_table** %table.addr, align 8, !dbg !1779
  %n_buckets_used52 = getelementptr inbounds %struct.hash_table* %78, i32 0, i32 3, !dbg !1779
  store i64 %77, i64* %n_buckets_used52, align 8, !dbg !1779
  %79 = load %struct.hash_table** %new_table, align 8, !dbg !1780
  %free_entry_list53 = getelementptr inbounds %struct.hash_table* %79, i32 0, i32 9, !dbg !1780
  %80 = load %struct.hash_entry** %free_entry_list53, align 8, !dbg !1780
  %81 = load %struct.hash_table** %table.addr, align 8, !dbg !1780
  %free_entry_list54 = getelementptr inbounds %struct.hash_table* %81, i32 0, i32 9, !dbg !1780
  store %struct.hash_entry* %80, %struct.hash_entry** %free_entry_list54, align 8, !dbg !1780
  %82 = load %struct.hash_table** %new_table, align 8, !dbg !1781
  %83 = bitcast %struct.hash_table* %82 to i8*, !dbg !1781
  call void @free(i8* %83) #9, !dbg !1781
  store i1 true, i1* %retval, !dbg !1782
  br label %return, !dbg !1782

return:                                           ; preds = %for.end43, %if.then25, %if.then
  %84 = load i1* %retval, !dbg !1783
  ret i1 %84, !dbg !1783
}

; Function Attrs: nounwind uwtable
define i8* @hash_insert(%struct.hash_table* %table, i8* %entry1) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %new_entry = alloca %struct.hash_entry*, align 8
  %tuning35 = alloca %struct.hash_tuning*, align 8
  %candidate = alloca float, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1784), !dbg !1785
  store i8* %entry1, i8** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %entry.addr}, metadata !1786), !dbg !1785
  call void @llvm.dbg.declare(metadata !{i8** %data}, metadata !1787), !dbg !1788
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1789), !dbg !1790
  %0 = load i8** %entry.addr, align 8, !dbg !1791
  %tobool = icmp ne i8* %0, null, !dbg !1791
  br i1 %tobool, label %if.end, label %if.then, !dbg !1791

if.then:                                          ; preds = %entry
  call void @abort() #11, !dbg !1793
  unreachable, !dbg !1793

if.end:                                           ; preds = %entry
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1794
  %2 = load i8** %entry.addr, align 8, !dbg !1794
  %call = call i8* @hash_find_entry(%struct.hash_table* %1, i8* %2, %struct.hash_entry** %bucket, i1 zeroext false), !dbg !1794
  store i8* %call, i8** %data, align 8, !dbg !1794
  %cmp = icmp ne i8* %call, null, !dbg !1794
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1794

if.then2:                                         ; preds = %if.end
  %3 = load i8** %data, align 8, !dbg !1796
  store i8* %3, i8** %retval, !dbg !1796
  br label %return, !dbg !1796

if.end3:                                          ; preds = %if.end
  %4 = load %struct.hash_entry** %bucket, align 8, !dbg !1797
  %data4 = getelementptr inbounds %struct.hash_entry* %4, i32 0, i32 0, !dbg !1797
  %5 = load i8** %data4, align 8, !dbg !1797
  %tobool5 = icmp ne i8* %5, null, !dbg !1797
  br i1 %tobool5, label %if.then6, label %if.end14, !dbg !1797

if.then6:                                         ; preds = %if.end3
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %new_entry}, metadata !1799), !dbg !1801
  %6 = load %struct.hash_table** %table.addr, align 8, !dbg !1801
  %call7 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* %6), !dbg !1801
  store %struct.hash_entry* %call7, %struct.hash_entry** %new_entry, align 8, !dbg !1801
  %7 = load %struct.hash_entry** %new_entry, align 8, !dbg !1802
  %cmp8 = icmp eq %struct.hash_entry* %7, null, !dbg !1802
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1802

if.then9:                                         ; preds = %if.then6
  store i8* null, i8** %retval, !dbg !1804
  br label %return, !dbg !1804

if.end10:                                         ; preds = %if.then6
  %8 = load i8** %entry.addr, align 8, !dbg !1805
  %9 = load %struct.hash_entry** %new_entry, align 8, !dbg !1805
  %data11 = getelementptr inbounds %struct.hash_entry* %9, i32 0, i32 0, !dbg !1805
  store i8* %8, i8** %data11, align 8, !dbg !1805
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1806
  %next = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 1, !dbg !1806
  %11 = load %struct.hash_entry** %next, align 8, !dbg !1806
  %12 = load %struct.hash_entry** %new_entry, align 8, !dbg !1806
  %next12 = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 1, !dbg !1806
  store %struct.hash_entry* %11, %struct.hash_entry** %next12, align 8, !dbg !1806
  %13 = load %struct.hash_entry** %new_entry, align 8, !dbg !1807
  %14 = load %struct.hash_entry** %bucket, align 8, !dbg !1807
  %next13 = getelementptr inbounds %struct.hash_entry* %14, i32 0, i32 1, !dbg !1807
  store %struct.hash_entry* %13, %struct.hash_entry** %next13, align 8, !dbg !1807
  %15 = load %struct.hash_table** %table.addr, align 8, !dbg !1808
  %n_entries = getelementptr inbounds %struct.hash_table* %15, i32 0, i32 4, !dbg !1808
  %16 = load i64* %n_entries, align 8, !dbg !1808
  %inc = add i64 %16, 1, !dbg !1808
  store i64 %inc, i64* %n_entries, align 8, !dbg !1808
  %17 = load i8** %entry.addr, align 8, !dbg !1809
  store i8* %17, i8** %retval, !dbg !1809
  br label %return, !dbg !1809

if.end14:                                         ; preds = %if.end3
  %18 = load i8** %entry.addr, align 8, !dbg !1810
  %19 = load %struct.hash_entry** %bucket, align 8, !dbg !1810
  %data15 = getelementptr inbounds %struct.hash_entry* %19, i32 0, i32 0, !dbg !1810
  store i8* %18, i8** %data15, align 8, !dbg !1810
  %20 = load %struct.hash_table** %table.addr, align 8, !dbg !1811
  %n_entries16 = getelementptr inbounds %struct.hash_table* %20, i32 0, i32 4, !dbg !1811
  %21 = load i64* %n_entries16, align 8, !dbg !1811
  %inc17 = add i64 %21, 1, !dbg !1811
  store i64 %inc17, i64* %n_entries16, align 8, !dbg !1811
  %22 = load %struct.hash_table** %table.addr, align 8, !dbg !1812
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %22, i32 0, i32 3, !dbg !1812
  %23 = load i64* %n_buckets_used, align 8, !dbg !1812
  %inc18 = add i64 %23, 1, !dbg !1812
  store i64 %inc18, i64* %n_buckets_used, align 8, !dbg !1812
  %24 = load %struct.hash_table** %table.addr, align 8, !dbg !1813
  %n_buckets_used19 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 3, !dbg !1813
  %25 = load i64* %n_buckets_used19, align 8, !dbg !1813
  %conv = uitofp i64 %25 to float, !dbg !1813
  %26 = load %struct.hash_table** %table.addr, align 8, !dbg !1813
  %tuning = getelementptr inbounds %struct.hash_table* %26, i32 0, i32 5, !dbg !1813
  %27 = load %struct.hash_tuning** %tuning, align 8, !dbg !1813
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %27, i32 0, i32 2, !dbg !1813
  %28 = load float* %growth_threshold, align 4, !dbg !1813
  %29 = load %struct.hash_table** %table.addr, align 8, !dbg !1813
  %n_buckets = getelementptr inbounds %struct.hash_table* %29, i32 0, i32 2, !dbg !1813
  %30 = load i64* %n_buckets, align 8, !dbg !1813
  %conv20 = uitofp i64 %30 to float, !dbg !1813
  %mul = fmul float %28, %conv20, !dbg !1813
  %cmp21 = fcmp ogt float %conv, %mul, !dbg !1813
  br i1 %cmp21, label %if.then23, label %if.end57, !dbg !1813

if.then23:                                        ; preds = %if.end14
  %31 = load %struct.hash_table** %table.addr, align 8, !dbg !1815
  %call24 = call zeroext i1 @check_tuning(%struct.hash_table* %31), !dbg !1815
  %32 = load %struct.hash_table** %table.addr, align 8, !dbg !1817
  %n_buckets_used25 = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 3, !dbg !1817
  %33 = load i64* %n_buckets_used25, align 8, !dbg !1817
  %conv26 = uitofp i64 %33 to float, !dbg !1817
  %34 = load %struct.hash_table** %table.addr, align 8, !dbg !1817
  %tuning27 = getelementptr inbounds %struct.hash_table* %34, i32 0, i32 5, !dbg !1817
  %35 = load %struct.hash_tuning** %tuning27, align 8, !dbg !1817
  %growth_threshold28 = getelementptr inbounds %struct.hash_tuning* %35, i32 0, i32 2, !dbg !1817
  %36 = load float* %growth_threshold28, align 4, !dbg !1817
  %37 = load %struct.hash_table** %table.addr, align 8, !dbg !1817
  %n_buckets29 = getelementptr inbounds %struct.hash_table* %37, i32 0, i32 2, !dbg !1817
  %38 = load i64* %n_buckets29, align 8, !dbg !1817
  %conv30 = uitofp i64 %38 to float, !dbg !1817
  %mul31 = fmul float %36, %conv30, !dbg !1817
  %cmp32 = fcmp ogt float %conv26, %mul31, !dbg !1817
  br i1 %cmp32, label %if.then34, label %if.end56, !dbg !1817

if.then34:                                        ; preds = %if.then23
  call void @llvm.dbg.declare(metadata !{%struct.hash_tuning** %tuning35}, metadata !1819), !dbg !1821
  %39 = load %struct.hash_table** %table.addr, align 8, !dbg !1821
  %tuning36 = getelementptr inbounds %struct.hash_table* %39, i32 0, i32 5, !dbg !1821
  %40 = load %struct.hash_tuning** %tuning36, align 8, !dbg !1821
  store %struct.hash_tuning* %40, %struct.hash_tuning** %tuning35, align 8, !dbg !1821
  call void @llvm.dbg.declare(metadata !{float* %candidate}, metadata !1822), !dbg !1823
  %41 = load %struct.hash_tuning** %tuning35, align 8, !dbg !1823
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning* %41, i32 0, i32 4, !dbg !1823
  %42 = load i8* %is_n_buckets, align 1, !dbg !1823
  %tobool37 = trunc i8 %42 to i1, !dbg !1823
  br i1 %tobool37, label %cond.true, label %cond.false, !dbg !1823

cond.true:                                        ; preds = %if.then34
  %43 = load %struct.hash_table** %table.addr, align 8, !dbg !1823
  %n_buckets39 = getelementptr inbounds %struct.hash_table* %43, i32 0, i32 2, !dbg !1823
  %44 = load i64* %n_buckets39, align 8, !dbg !1823
  %conv40 = uitofp i64 %44 to float, !dbg !1823
  %45 = load %struct.hash_tuning** %tuning35, align 8, !dbg !1823
  %growth_factor = getelementptr inbounds %struct.hash_tuning* %45, i32 0, i32 3, !dbg !1823
  %46 = load float* %growth_factor, align 4, !dbg !1823
  %mul41 = fmul float %conv40, %46, !dbg !1823
  br label %cond.end, !dbg !1823

cond.false:                                       ; preds = %if.then34
  %47 = load %struct.hash_table** %table.addr, align 8, !dbg !1823
  %n_buckets42 = getelementptr inbounds %struct.hash_table* %47, i32 0, i32 2, !dbg !1823
  %48 = load i64* %n_buckets42, align 8, !dbg !1823
  %conv43 = uitofp i64 %48 to float, !dbg !1823
  %49 = load %struct.hash_tuning** %tuning35, align 8, !dbg !1823
  %growth_factor44 = getelementptr inbounds %struct.hash_tuning* %49, i32 0, i32 3, !dbg !1823
  %50 = load float* %growth_factor44, align 4, !dbg !1823
  %mul45 = fmul float %conv43, %50, !dbg !1823
  %51 = load %struct.hash_tuning** %tuning35, align 8, !dbg !1823
  %growth_threshold46 = getelementptr inbounds %struct.hash_tuning* %51, i32 0, i32 2, !dbg !1823
  %52 = load float* %growth_threshold46, align 4, !dbg !1823
  %mul47 = fmul float %mul45, %52, !dbg !1823
  br label %cond.end, !dbg !1823

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %mul41, %cond.true ], [ %mul47, %cond.false ], !dbg !1823
  store float %cond, float* %candidate, align 4, !dbg !1823
  %53 = load float* %candidate, align 4, !dbg !1824
  %cmp48 = fcmp ole float 0x43F0000000000000, %53, !dbg !1824
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1824

if.then50:                                        ; preds = %cond.end
  store i8* null, i8** %retval, !dbg !1826
  br label %return, !dbg !1826

if.end51:                                         ; preds = %cond.end
  %54 = load %struct.hash_table** %table.addr, align 8, !dbg !1827
  %55 = load float* %candidate, align 4, !dbg !1827
  %conv52 = fptoui float %55 to i64, !dbg !1827
  %call53 = call zeroext i1 @hash_rehash(%struct.hash_table* %54, i64 %conv52), !dbg !1827
  br i1 %call53, label %if.end55, label %if.then54, !dbg !1827

if.then54:                                        ; preds = %if.end51
  store i8* null, i8** %entry.addr, align 8, !dbg !1829
  br label %if.end55, !dbg !1829

if.end55:                                         ; preds = %if.then54, %if.end51
  br label %if.end56, !dbg !1830

if.end56:                                         ; preds = %if.end55, %if.then23
  br label %if.end57, !dbg !1831

if.end57:                                         ; preds = %if.end56, %if.end14
  %56 = load i8** %entry.addr, align 8, !dbg !1832
  store i8* %56, i8** %retval, !dbg !1832
  br label %return, !dbg !1832

return:                                           ; preds = %if.end57, %if.then50, %if.end10, %if.then9, %if.then2
  %57 = load i8** %retval, !dbg !1833
  ret i8* %57, !dbg !1833
}

; Function Attrs: nounwind uwtable
define i8* @hash_delete(%struct.hash_table* %table, i8* %entry1) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %tuning21 = alloca %struct.hash_tuning*, align 8
  %candidate = alloca i64, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1834), !dbg !1835
  store i8* %entry1, i8** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %entry.addr}, metadata !1836), !dbg !1835
  call void @llvm.dbg.declare(metadata !{i8** %data}, metadata !1837), !dbg !1838
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1839), !dbg !1840
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1841
  %1 = load i8** %entry.addr, align 8, !dbg !1841
  %call = call i8* @hash_find_entry(%struct.hash_table* %0, i8* %1, %struct.hash_entry** %bucket, i1 zeroext true), !dbg !1841
  store i8* %call, i8** %data, align 8, !dbg !1841
  %2 = load i8** %data, align 8, !dbg !1842
  %tobool = icmp ne i8* %2, null, !dbg !1842
  br i1 %tobool, label %if.end, label %if.then, !dbg !1842

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1844
  br label %return, !dbg !1844

if.end:                                           ; preds = %entry
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1845
  %n_entries = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 4, !dbg !1845
  %4 = load i64* %n_entries, align 8, !dbg !1845
  %dec = add i64 %4, -1, !dbg !1845
  store i64 %dec, i64* %n_entries, align 8, !dbg !1845
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1846
  %data2 = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1846
  %6 = load i8** %data2, align 8, !dbg !1846
  %tobool3 = icmp ne i8* %6, null, !dbg !1846
  br i1 %tobool3, label %if.end37, label %if.then4, !dbg !1846

if.then4:                                         ; preds = %if.end
  %7 = load %struct.hash_table** %table.addr, align 8, !dbg !1848
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %7, i32 0, i32 3, !dbg !1848
  %8 = load i64* %n_buckets_used, align 8, !dbg !1848
  %dec5 = add i64 %8, -1, !dbg !1848
  store i64 %dec5, i64* %n_buckets_used, align 8, !dbg !1848
  %9 = load %struct.hash_table** %table.addr, align 8, !dbg !1850
  %n_buckets_used6 = getelementptr inbounds %struct.hash_table* %9, i32 0, i32 3, !dbg !1850
  %10 = load i64* %n_buckets_used6, align 8, !dbg !1850
  %conv = uitofp i64 %10 to float, !dbg !1850
  %11 = load %struct.hash_table** %table.addr, align 8, !dbg !1850
  %tuning = getelementptr inbounds %struct.hash_table* %11, i32 0, i32 5, !dbg !1850
  %12 = load %struct.hash_tuning** %tuning, align 8, !dbg !1850
  %shrink_threshold = getelementptr inbounds %struct.hash_tuning* %12, i32 0, i32 0, !dbg !1850
  %13 = load float* %shrink_threshold, align 4, !dbg !1850
  %14 = load %struct.hash_table** %table.addr, align 8, !dbg !1850
  %n_buckets = getelementptr inbounds %struct.hash_table* %14, i32 0, i32 2, !dbg !1850
  %15 = load i64* %n_buckets, align 8, !dbg !1850
  %conv7 = uitofp i64 %15 to float, !dbg !1850
  %mul = fmul float %13, %conv7, !dbg !1850
  %cmp = fcmp olt float %conv, %mul, !dbg !1850
  br i1 %cmp, label %if.then9, label %if.end36, !dbg !1850

if.then9:                                         ; preds = %if.then4
  %16 = load %struct.hash_table** %table.addr, align 8, !dbg !1852
  %call10 = call zeroext i1 @check_tuning(%struct.hash_table* %16), !dbg !1852
  %17 = load %struct.hash_table** %table.addr, align 8, !dbg !1854
  %n_buckets_used11 = getelementptr inbounds %struct.hash_table* %17, i32 0, i32 3, !dbg !1854
  %18 = load i64* %n_buckets_used11, align 8, !dbg !1854
  %conv12 = uitofp i64 %18 to float, !dbg !1854
  %19 = load %struct.hash_table** %table.addr, align 8, !dbg !1854
  %tuning13 = getelementptr inbounds %struct.hash_table* %19, i32 0, i32 5, !dbg !1854
  %20 = load %struct.hash_tuning** %tuning13, align 8, !dbg !1854
  %shrink_threshold14 = getelementptr inbounds %struct.hash_tuning* %20, i32 0, i32 0, !dbg !1854
  %21 = load float* %shrink_threshold14, align 4, !dbg !1854
  %22 = load %struct.hash_table** %table.addr, align 8, !dbg !1854
  %n_buckets15 = getelementptr inbounds %struct.hash_table* %22, i32 0, i32 2, !dbg !1854
  %23 = load i64* %n_buckets15, align 8, !dbg !1854
  %conv16 = uitofp i64 %23 to float, !dbg !1854
  %mul17 = fmul float %21, %conv16, !dbg !1854
  %cmp18 = fcmp olt float %conv12, %mul17, !dbg !1854
  br i1 %cmp18, label %if.then20, label %if.end35, !dbg !1854

if.then20:                                        ; preds = %if.then9
  call void @llvm.dbg.declare(metadata !{%struct.hash_tuning** %tuning21}, metadata !1856), !dbg !1858
  %24 = load %struct.hash_table** %table.addr, align 8, !dbg !1858
  %tuning22 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 5, !dbg !1858
  %25 = load %struct.hash_tuning** %tuning22, align 8, !dbg !1858
  store %struct.hash_tuning* %25, %struct.hash_tuning** %tuning21, align 8, !dbg !1858
  call void @llvm.dbg.declare(metadata !{i64* %candidate}, metadata !1859), !dbg !1860
  %26 = load %struct.hash_tuning** %tuning21, align 8, !dbg !1860
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning* %26, i32 0, i32 4, !dbg !1860
  %27 = load i8* %is_n_buckets, align 1, !dbg !1860
  %tobool23 = trunc i8 %27 to i1, !dbg !1860
  br i1 %tobool23, label %cond.true, label %cond.false, !dbg !1860

cond.true:                                        ; preds = %if.then20
  %28 = load %struct.hash_table** %table.addr, align 8, !dbg !1860
  %n_buckets25 = getelementptr inbounds %struct.hash_table* %28, i32 0, i32 2, !dbg !1860
  %29 = load i64* %n_buckets25, align 8, !dbg !1860
  %conv26 = uitofp i64 %29 to float, !dbg !1860
  %30 = load %struct.hash_tuning** %tuning21, align 8, !dbg !1860
  %shrink_factor = getelementptr inbounds %struct.hash_tuning* %30, i32 0, i32 1, !dbg !1860
  %31 = load float* %shrink_factor, align 4, !dbg !1860
  %mul27 = fmul float %conv26, %31, !dbg !1860
  br label %cond.end, !dbg !1860

cond.false:                                       ; preds = %if.then20
  %32 = load %struct.hash_table** %table.addr, align 8, !dbg !1860
  %n_buckets28 = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 2, !dbg !1860
  %33 = load i64* %n_buckets28, align 8, !dbg !1860
  %conv29 = uitofp i64 %33 to float, !dbg !1860
  %34 = load %struct.hash_tuning** %tuning21, align 8, !dbg !1860
  %shrink_factor30 = getelementptr inbounds %struct.hash_tuning* %34, i32 0, i32 1, !dbg !1860
  %35 = load float* %shrink_factor30, align 4, !dbg !1860
  %mul31 = fmul float %conv29, %35, !dbg !1860
  %36 = load %struct.hash_tuning** %tuning21, align 8, !dbg !1860
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %36, i32 0, i32 2, !dbg !1860
  %37 = load float* %growth_threshold, align 4, !dbg !1860
  %mul32 = fmul float %mul31, %37, !dbg !1860
  br label %cond.end, !dbg !1860

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %mul27, %cond.true ], [ %mul32, %cond.false ], !dbg !1860
  %conv33 = fptoui float %cond to i64, !dbg !1860
  store i64 %conv33, i64* %candidate, align 8, !dbg !1860
  %38 = load %struct.hash_table** %table.addr, align 8, !dbg !1861
  %39 = load i64* %candidate, align 8, !dbg !1861
  %call34 = call zeroext i1 @hash_rehash(%struct.hash_table* %38, i64 %39), !dbg !1861
  br label %if.end35, !dbg !1862

if.end35:                                         ; preds = %cond.end, %if.then9
  br label %if.end36, !dbg !1863

if.end36:                                         ; preds = %if.end35, %if.then4
  br label %if.end37, !dbg !1864

if.end37:                                         ; preds = %if.end36, %if.end
  %40 = load i8** %data, align 8, !dbg !1865
  store i8* %40, i8** %retval, !dbg !1865
  br label %return, !dbg !1865

return:                                           ; preds = %if.end37, %if.then
  %41 = load i8** %retval, !dbg !1866
  ret i8* %41, !dbg !1866
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_tuning(%struct.hash_table* %table) #0 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.hash_table*, align 8
  %tuning = alloca %struct.hash_tuning*, align 8
  %epsilon = alloca float, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1867), !dbg !1868
  call void @llvm.dbg.declare(metadata !{%struct.hash_tuning** %tuning}, metadata !1869), !dbg !1870
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1870
  %tuning1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 5, !dbg !1870
  %1 = load %struct.hash_tuning** %tuning1, align 8, !dbg !1870
  store %struct.hash_tuning* %1, %struct.hash_tuning** %tuning, align 8, !dbg !1870
  call void @llvm.dbg.declare(metadata !{float* %epsilon}, metadata !1871), !dbg !1872
  store float 0x3FB99999A0000000, float* %epsilon, align 4, !dbg !1872
  %2 = load float* %epsilon, align 4, !dbg !1873
  %3 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %3, i32 0, i32 2, !dbg !1873
  %4 = load float* %growth_threshold, align 4, !dbg !1873
  %cmp = fcmp olt float %2, %4, !dbg !1873
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1873

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %growth_threshold2 = getelementptr inbounds %struct.hash_tuning* %5, i32 0, i32 2, !dbg !1873
  %6 = load float* %growth_threshold2, align 4, !dbg !1873
  %7 = load float* %epsilon, align 4, !dbg !1873
  %sub = fsub float 1.000000e+00, %7, !dbg !1873
  %cmp3 = fcmp olt float %6, %sub, !dbg !1873
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !1873

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load float* %epsilon, align 4, !dbg !1873
  %add = fadd float 1.000000e+00, %8, !dbg !1873
  %9 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %growth_factor = getelementptr inbounds %struct.hash_tuning* %9, i32 0, i32 3, !dbg !1873
  %10 = load float* %growth_factor, align 4, !dbg !1873
  %cmp5 = fcmp olt float %add, %10, !dbg !1873
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !1873

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %11 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %shrink_threshold = getelementptr inbounds %struct.hash_tuning* %11, i32 0, i32 0, !dbg !1873
  %12 = load float* %shrink_threshold, align 4, !dbg !1873
  %cmp7 = fcmp ole float 0.000000e+00, %12, !dbg !1873
  br i1 %cmp7, label %land.lhs.true8, label %if.end, !dbg !1873

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %13 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %shrink_threshold9 = getelementptr inbounds %struct.hash_tuning* %13, i32 0, i32 0, !dbg !1873
  %14 = load float* %shrink_threshold9, align 4, !dbg !1873
  %15 = load float* %epsilon, align 4, !dbg !1873
  %add10 = fadd float %14, %15, !dbg !1873
  %16 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %shrink_factor = getelementptr inbounds %struct.hash_tuning* %16, i32 0, i32 1, !dbg !1873
  %17 = load float* %shrink_factor, align 4, !dbg !1873
  %cmp11 = fcmp olt float %add10, %17, !dbg !1873
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !1873

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %18 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %shrink_factor13 = getelementptr inbounds %struct.hash_tuning* %18, i32 0, i32 1, !dbg !1873
  %19 = load float* %shrink_factor13, align 4, !dbg !1873
  %cmp14 = fcmp ole float %19, 1.000000e+00, !dbg !1873
  br i1 %cmp14, label %land.lhs.true15, label %if.end, !dbg !1873

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %20 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %shrink_threshold16 = getelementptr inbounds %struct.hash_tuning* %20, i32 0, i32 0, !dbg !1873
  %21 = load float* %shrink_threshold16, align 4, !dbg !1873
  %22 = load float* %epsilon, align 4, !dbg !1873
  %add17 = fadd float %21, %22, !dbg !1873
  %23 = load %struct.hash_tuning** %tuning, align 8, !dbg !1873
  %growth_threshold18 = getelementptr inbounds %struct.hash_tuning* %23, i32 0, i32 2, !dbg !1873
  %24 = load float* %growth_threshold18, align 4, !dbg !1873
  %cmp19 = fcmp olt float %add17, %24, !dbg !1873
  br i1 %cmp19, label %if.then, label %if.end, !dbg !1873

if.then:                                          ; preds = %land.lhs.true15
  store i1 true, i1* %retval, !dbg !1875
  br label %return, !dbg !1875

if.end:                                           ; preds = %land.lhs.true15, %land.lhs.true12, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %entry
  %25 = load %struct.hash_table** %table.addr, align 8, !dbg !1876
  %tuning20 = getelementptr inbounds %struct.hash_table* %25, i32 0, i32 5, !dbg !1876
  store %struct.hash_tuning* bitcast ({ float, float, float, float, i8, [3 x i8] }* @default_tuning to %struct.hash_tuning*), %struct.hash_tuning** %tuning20, align 8, !dbg !1876
  store i1 false, i1* %retval, !dbg !1877
  br label %return, !dbg !1877

return:                                           ; preds = %if.end, %if.then
  %26 = load i1* %retval, !dbg !1878
  ret i1 %26, !dbg !1878
}

; Function Attrs: nounwind uwtable
define internal i64 @next_prime(i64 %candidate) #0 {
entry:
  %candidate.addr = alloca i64, align 8
  store i64 %candidate, i64* %candidate.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %candidate.addr}, metadata !1879), !dbg !1880
  %0 = load i64* %candidate.addr, align 8, !dbg !1881
  %cmp = icmp ult i64 %0, 10, !dbg !1881
  br i1 %cmp, label %if.then, label %if.end, !dbg !1881

if.then:                                          ; preds = %entry
  store i64 10, i64* %candidate.addr, align 8, !dbg !1883
  br label %if.end, !dbg !1883

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64* %candidate.addr, align 8, !dbg !1884
  %or = or i64 %1, 1, !dbg !1884
  store i64 %or, i64* %candidate.addr, align 8, !dbg !1884
  br label %while.cond, !dbg !1885

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i64* %candidate.addr, align 8, !dbg !1885
  %call = call zeroext i1 @is_prime(i64 %2), !dbg !1885
  %lnot = xor i1 %call, true, !dbg !1885
  br i1 %lnot, label %while.body, label %while.end, !dbg !1885

while.body:                                       ; preds = %while.cond
  %3 = load i64* %candidate.addr, align 8, !dbg !1886
  %add = add i64 %3, 2, !dbg !1886
  store i64 %add, i64* %candidate.addr, align 8, !dbg !1886
  br label %while.cond, !dbg !1886

while.end:                                        ; preds = %while.cond
  %4 = load i64* %candidate.addr, align 8, !dbg !1887
  ret i64 %4, !dbg !1887
}

; Function Attrs: nounwind uwtable
define internal %struct.hash_entry* @allocate_entry(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %new = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1888), !dbg !1889
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %new}, metadata !1890), !dbg !1891
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1892
  %free_entry_list = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 9, !dbg !1892
  %1 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1892
  %tobool = icmp ne %struct.hash_entry* %1, null, !dbg !1892
  br i1 %tobool, label %if.then, label %if.else, !dbg !1892

if.then:                                          ; preds = %entry
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1894
  %free_entry_list1 = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 9, !dbg !1894
  %3 = load %struct.hash_entry** %free_entry_list1, align 8, !dbg !1894
  store %struct.hash_entry* %3, %struct.hash_entry** %new, align 8, !dbg !1894
  %4 = load %struct.hash_entry** %new, align 8, !dbg !1896
  %next = getelementptr inbounds %struct.hash_entry* %4, i32 0, i32 1, !dbg !1896
  %5 = load %struct.hash_entry** %next, align 8, !dbg !1896
  %6 = load %struct.hash_table** %table.addr, align 8, !dbg !1896
  %free_entry_list2 = getelementptr inbounds %struct.hash_table* %6, i32 0, i32 9, !dbg !1896
  store %struct.hash_entry* %5, %struct.hash_entry** %free_entry_list2, align 8, !dbg !1896
  br label %if.end, !dbg !1897

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #9, !dbg !1898
  %7 = bitcast i8* %call to %struct.hash_entry*, !dbg !1898
  store %struct.hash_entry* %7, %struct.hash_entry** %new, align 8, !dbg !1898
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.hash_entry** %new, align 8, !dbg !1900
  ret %struct.hash_entry* %8, !dbg !1900
}

; Function Attrs: nounwind uwtable
define internal void @free_entry(%struct.hash_table* %table, %struct.hash_entry* %entry1) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1901), !dbg !1902
  store %struct.hash_entry* %entry1, %struct.hash_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %entry.addr}, metadata !1903), !dbg !1902
  %0 = load %struct.hash_entry** %entry.addr, align 8, !dbg !1904
  %data = getelementptr inbounds %struct.hash_entry* %0, i32 0, i32 0, !dbg !1904
  store i8* null, i8** %data, align 8, !dbg !1904
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1905
  %free_entry_list = getelementptr inbounds %struct.hash_table* %1, i32 0, i32 9, !dbg !1905
  %2 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1905
  %3 = load %struct.hash_entry** %entry.addr, align 8, !dbg !1905
  %next = getelementptr inbounds %struct.hash_entry* %3, i32 0, i32 1, !dbg !1905
  store %struct.hash_entry* %2, %struct.hash_entry** %next, align 8, !dbg !1905
  %4 = load %struct.hash_entry** %entry.addr, align 8, !dbg !1906
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1906
  %free_entry_list2 = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 9, !dbg !1906
  store %struct.hash_entry* %4, %struct.hash_entry** %free_entry_list2, align 8, !dbg !1906
  ret void, !dbg !1907
}

; Function Attrs: nounwind uwtable
define internal i8* @hash_find_entry(%struct.hash_table* %table, i8* %entry1, %struct.hash_entry** %bucket_head, i1 zeroext %delete) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %bucket_head.addr = alloca %struct.hash_entry**, align 8
  %delete.addr = alloca i8, align 1
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %data9 = alloca i8*, align 8
  %next14 = alloca %struct.hash_entry*, align 8
  %data27 = alloca i8*, align 8
  %next32 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_table** %table.addr}, metadata !1908), !dbg !1909
  store i8* %entry1, i8** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %entry.addr}, metadata !1910), !dbg !1909
  store %struct.hash_entry** %bucket_head, %struct.hash_entry*** %bucket_head.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry*** %bucket_head.addr}, metadata !1911), !dbg !1912
  %frombool = zext i1 %delete to i8
  store i8 %frombool, i8* %delete.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %delete.addr}, metadata !1913), !dbg !1912
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %bucket}, metadata !1914), !dbg !1915
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1915
  %bucket2 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1915
  %1 = load %struct.hash_entry** %bucket2, align 8, !dbg !1915
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1916
  %hasher = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 6, !dbg !1916
  %3 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1916
  %4 = load i8** %entry.addr, align 8, !dbg !1916
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1916
  %n_buckets = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 2, !dbg !1916
  %6 = load i64* %n_buckets, align 8, !dbg !1916
  %call = call i64 %3(i8* %4, i64 %6), !dbg !1916
  %add.ptr = getelementptr inbounds %struct.hash_entry* %1, i64 %call, !dbg !1916
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1916
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %cursor}, metadata !1917), !dbg !1918
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1919
  %8 = load %struct.hash_table** %table.addr, align 8, !dbg !1919
  %bucket_limit = getelementptr inbounds %struct.hash_table* %8, i32 0, i32 1, !dbg !1919
  %9 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1919
  %cmp = icmp ult %struct.hash_entry* %7, %9, !dbg !1919
  br i1 %cmp, label %if.end, label %if.then, !dbg !1919

if.then:                                          ; preds = %entry
  call void @abort() #11, !dbg !1921
  unreachable, !dbg !1921

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1922
  %11 = load %struct.hash_entry*** %bucket_head.addr, align 8, !dbg !1922
  store %struct.hash_entry* %10, %struct.hash_entry** %11, align 8, !dbg !1922
  %12 = load %struct.hash_entry** %bucket, align 8, !dbg !1923
  %data = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 0, !dbg !1923
  %13 = load i8** %data, align 8, !dbg !1923
  %cmp3 = icmp eq i8* %13, null, !dbg !1923
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1923

if.then4:                                         ; preds = %if.end
  store i8* null, i8** %retval, !dbg !1925
  br label %return, !dbg !1925

if.end5:                                          ; preds = %if.end
  %14 = load %struct.hash_table** %table.addr, align 8, !dbg !1926
  %comparator = getelementptr inbounds %struct.hash_table* %14, i32 0, i32 7, !dbg !1926
  %15 = load i1 (i8*, i8*)** %comparator, align 8, !dbg !1926
  %16 = load i8** %entry.addr, align 8, !dbg !1926
  %17 = load %struct.hash_entry** %bucket, align 8, !dbg !1926
  %data6 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 0, !dbg !1926
  %18 = load i8** %data6, align 8, !dbg !1926
  %call7 = call zeroext i1 %15(i8* %16, i8* %18), !dbg !1926
  br i1 %call7, label %if.then8, label %if.end19, !dbg !1926

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata !{i8** %data9}, metadata !1928), !dbg !1930
  %19 = load %struct.hash_entry** %bucket, align 8, !dbg !1930
  %data10 = getelementptr inbounds %struct.hash_entry* %19, i32 0, i32 0, !dbg !1930
  %20 = load i8** %data10, align 8, !dbg !1930
  store i8* %20, i8** %data9, align 8, !dbg !1930
  %21 = load i8* %delete.addr, align 1, !dbg !1931
  %tobool = trunc i8 %21 to i1, !dbg !1931
  br i1 %tobool, label %if.then11, label %if.end18, !dbg !1931

if.then11:                                        ; preds = %if.then8
  %22 = load %struct.hash_entry** %bucket, align 8, !dbg !1933
  %next = getelementptr inbounds %struct.hash_entry* %22, i32 0, i32 1, !dbg !1933
  %23 = load %struct.hash_entry** %next, align 8, !dbg !1933
  %tobool12 = icmp ne %struct.hash_entry* %23, null, !dbg !1933
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !1933

if.then13:                                        ; preds = %if.then11
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %next14}, metadata !1936), !dbg !1938
  %24 = load %struct.hash_entry** %bucket, align 8, !dbg !1938
  %next15 = getelementptr inbounds %struct.hash_entry* %24, i32 0, i32 1, !dbg !1938
  %25 = load %struct.hash_entry** %next15, align 8, !dbg !1938
  store %struct.hash_entry* %25, %struct.hash_entry** %next14, align 8, !dbg !1938
  %26 = load %struct.hash_entry** %bucket, align 8, !dbg !1939
  %27 = load %struct.hash_entry** %next14, align 8, !dbg !1939
  %28 = bitcast %struct.hash_entry* %26 to i8*, !dbg !1939
  %29 = bitcast %struct.hash_entry* %27 to i8*, !dbg !1939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 16, i32 8, i1 false), !dbg !1939
  %30 = load %struct.hash_table** %table.addr, align 8, !dbg !1940
  %31 = load %struct.hash_entry** %next14, align 8, !dbg !1940
  call void @free_entry(%struct.hash_table* %30, %struct.hash_entry* %31), !dbg !1940
  br label %if.end17, !dbg !1941

if.else:                                          ; preds = %if.then11
  %32 = load %struct.hash_entry** %bucket, align 8, !dbg !1942
  %data16 = getelementptr inbounds %struct.hash_entry* %32, i32 0, i32 0, !dbg !1942
  store i8* null, i8** %data16, align 8, !dbg !1942
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13
  br label %if.end18, !dbg !1944

if.end18:                                         ; preds = %if.end17, %if.then8
  %33 = load i8** %data9, align 8, !dbg !1945
  store i8* %33, i8** %retval, !dbg !1945
  br label %return, !dbg !1945

if.end19:                                         ; preds = %if.end5
  %34 = load %struct.hash_entry** %bucket, align 8, !dbg !1946
  store %struct.hash_entry* %34, %struct.hash_entry** %cursor, align 8, !dbg !1946
  br label %for.cond, !dbg !1946

for.cond:                                         ; preds = %for.inc, %if.end19
  %35 = load %struct.hash_entry** %cursor, align 8, !dbg !1946
  %next20 = getelementptr inbounds %struct.hash_entry* %35, i32 0, i32 1, !dbg !1946
  %36 = load %struct.hash_entry** %next20, align 8, !dbg !1946
  %tobool21 = icmp ne %struct.hash_entry* %36, null, !dbg !1946
  br i1 %tobool21, label %for.body, label %for.end, !dbg !1946

for.body:                                         ; preds = %for.cond
  %37 = load %struct.hash_table** %table.addr, align 8, !dbg !1948
  %comparator22 = getelementptr inbounds %struct.hash_table* %37, i32 0, i32 7, !dbg !1948
  %38 = load i1 (i8*, i8*)** %comparator22, align 8, !dbg !1948
  %39 = load i8** %entry.addr, align 8, !dbg !1948
  %40 = load %struct.hash_entry** %cursor, align 8, !dbg !1948
  %next23 = getelementptr inbounds %struct.hash_entry* %40, i32 0, i32 1, !dbg !1948
  %41 = load %struct.hash_entry** %next23, align 8, !dbg !1948
  %data24 = getelementptr inbounds %struct.hash_entry* %41, i32 0, i32 0, !dbg !1948
  %42 = load i8** %data24, align 8, !dbg !1948
  %call25 = call zeroext i1 %38(i8* %39, i8* %42), !dbg !1948
  br i1 %call25, label %if.then26, label %if.end37, !dbg !1948

if.then26:                                        ; preds = %for.body
  call void @llvm.dbg.declare(metadata !{i8** %data27}, metadata !1951), !dbg !1953
  %43 = load %struct.hash_entry** %cursor, align 8, !dbg !1953
  %next28 = getelementptr inbounds %struct.hash_entry* %43, i32 0, i32 1, !dbg !1953
  %44 = load %struct.hash_entry** %next28, align 8, !dbg !1953
  %data29 = getelementptr inbounds %struct.hash_entry* %44, i32 0, i32 0, !dbg !1953
  %45 = load i8** %data29, align 8, !dbg !1953
  store i8* %45, i8** %data27, align 8, !dbg !1953
  %46 = load i8* %delete.addr, align 1, !dbg !1954
  %tobool30 = trunc i8 %46 to i1, !dbg !1954
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !1954

if.then31:                                        ; preds = %if.then26
  call void @llvm.dbg.declare(metadata !{%struct.hash_entry** %next32}, metadata !1956), !dbg !1958
  %47 = load %struct.hash_entry** %cursor, align 8, !dbg !1958
  %next33 = getelementptr inbounds %struct.hash_entry* %47, i32 0, i32 1, !dbg !1958
  %48 = load %struct.hash_entry** %next33, align 8, !dbg !1958
  store %struct.hash_entry* %48, %struct.hash_entry** %next32, align 8, !dbg !1958
  %49 = load %struct.hash_entry** %next32, align 8, !dbg !1959
  %next34 = getelementptr inbounds %struct.hash_entry* %49, i32 0, i32 1, !dbg !1959
  %50 = load %struct.hash_entry** %next34, align 8, !dbg !1959
  %51 = load %struct.hash_entry** %cursor, align 8, !dbg !1959
  %next35 = getelementptr inbounds %struct.hash_entry* %51, i32 0, i32 1, !dbg !1959
  store %struct.hash_entry* %50, %struct.hash_entry** %next35, align 8, !dbg !1959
  %52 = load %struct.hash_table** %table.addr, align 8, !dbg !1960
  %53 = load %struct.hash_entry** %next32, align 8, !dbg !1960
  call void @free_entry(%struct.hash_table* %52, %struct.hash_entry* %53), !dbg !1960
  br label %if.end36, !dbg !1961

if.end36:                                         ; preds = %if.then31, %if.then26
  %54 = load i8** %data27, align 8, !dbg !1962
  store i8* %54, i8** %retval, !dbg !1962
  br label %return, !dbg !1962

if.end37:                                         ; preds = %for.body
  br label %for.inc, !dbg !1963

for.inc:                                          ; preds = %if.end37
  %55 = load %struct.hash_entry** %cursor, align 8, !dbg !1946
  %next38 = getelementptr inbounds %struct.hash_entry* %55, i32 0, i32 1, !dbg !1946
  %56 = load %struct.hash_entry** %next38, align 8, !dbg !1946
  store %struct.hash_entry* %56, %struct.hash_entry** %cursor, align 8, !dbg !1946
  br label %for.cond, !dbg !1946

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, !dbg !1964
  br label %return, !dbg !1964

return:                                           ; preds = %for.end, %if.end36, %if.end18, %if.then4
  %57 = load i8** %retval, !dbg !1965
  ret i8* %57, !dbg !1965
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_prime(i64 %candidate) #0 {
entry:
  %candidate.addr = alloca i64, align 8
  %divisor = alloca i64, align 8
  %square = alloca i64, align 8
  store i64 %candidate, i64* %candidate.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %candidate.addr}, metadata !1966), !dbg !1967
  call void @llvm.dbg.declare(metadata !{i64* %divisor}, metadata !1968), !dbg !1969
  store i64 3, i64* %divisor, align 8, !dbg !1969
  call void @llvm.dbg.declare(metadata !{i64* %square}, metadata !1970), !dbg !1971
  %0 = load i64* %divisor, align 8, !dbg !1971
  %1 = load i64* %divisor, align 8, !dbg !1971
  %mul = mul i64 %0, %1, !dbg !1971
  store i64 %mul, i64* %square, align 8, !dbg !1971
  br label %while.cond, !dbg !1972

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %square, align 8, !dbg !1972
  %3 = load i64* %candidate.addr, align 8, !dbg !1972
  %cmp = icmp ult i64 %2, %3, !dbg !1972
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1972

land.rhs:                                         ; preds = %while.cond
  %4 = load i64* %candidate.addr, align 8, !dbg !1972
  %5 = load i64* %divisor, align 8, !dbg !1972
  %rem = urem i64 %4, %5, !dbg !1972
  %tobool = icmp ne i64 %rem, 0, !dbg !1972
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i64* %divisor, align 8, !dbg !1973
  %inc = add i64 %7, 1, !dbg !1973
  store i64 %inc, i64* %divisor, align 8, !dbg !1973
  %8 = load i64* %divisor, align 8, !dbg !1975
  %mul1 = mul i64 4, %8, !dbg !1975
  %9 = load i64* %square, align 8, !dbg !1975
  %add = add i64 %9, %mul1, !dbg !1975
  store i64 %add, i64* %square, align 8, !dbg !1975
  %10 = load i64* %divisor, align 8, !dbg !1976
  %inc2 = add i64 %10, 1, !dbg !1976
  store i64 %inc2, i64* %divisor, align 8, !dbg !1976
  br label %while.cond, !dbg !1977

while.end:                                        ; preds = %land.end
  %11 = load i64* %candidate.addr, align 8, !dbg !1978
  %12 = load i64* %divisor, align 8, !dbg !1978
  %rem3 = urem i64 %11, %12, !dbg !1978
  %tobool4 = icmp ne i64 %rem3, 0, !dbg !1978
  %cond = select i1 %tobool4, i32 1, i32 0, !dbg !1978
  %tobool5 = icmp ne i32 %cond, 0, !dbg !1978
  ret i1 %tobool5, !dbg !1978
}

; Function Attrs: nounwind uwtable
define void @close_stdout_set_file_name(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %file.addr}, metadata !1979), !dbg !1980
  %0 = load i8** %file.addr, align 8, !dbg !1981
  store i8* %0, i8** @file_name, align 8, !dbg !1981
  ret void, !dbg !1982
}

; Function Attrs: nounwind uwtable
define void @close_stdout() #0 {
entry:
  %prev_fail = alloca i8, align 1
  %none_pending = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  %e = alloca i32, align 4
  %write_error = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata !{i8* %prev_fail}, metadata !1983), !dbg !1984
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !1984
  %call = call i32 @ferror_unlocked(%struct._IO_FILE* %0) #9, !dbg !1984
  %tobool = icmp ne i32 %call, 0, !dbg !1984
  %frombool = zext i1 %tobool to i8, !dbg !1984
  store i8 %frombool, i8* %prev_fail, align 1, !dbg !1984
  call void @llvm.dbg.declare(metadata !{i8* %none_pending}, metadata !1985), !dbg !1986
  %1 = load %struct._IO_FILE** @stdout, align 8, !dbg !1986
  %call1 = call i64 @__fpending(%struct._IO_FILE* %1) #9, !dbg !1986
  %cmp = icmp eq i64 0, %call1, !dbg !1986
  %frombool2 = zext i1 %cmp to i8, !dbg !1986
  store i8 %frombool2, i8* %none_pending, align 1, !dbg !1986
  call void @llvm.dbg.declare(metadata !{i8* %fclose_fail}, metadata !1987), !dbg !1988
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !1988
  %call3 = call i32 @fclose(%struct._IO_FILE* %2), !dbg !1988
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1988
  %frombool5 = zext i1 %tobool4 to i8, !dbg !1988
  store i8 %frombool5, i8* %fclose_fail, align 1, !dbg !1988
  %3 = load i8* %prev_fail, align 1, !dbg !1989
  %tobool6 = trunc i8 %3 to i1, !dbg !1989
  br i1 %tobool6, label %if.then, label %lor.lhs.false, !dbg !1989

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8* %fclose_fail, align 1, !dbg !1989
  %tobool7 = trunc i8 %4 to i1, !dbg !1989
  br i1 %tobool7, label %if.then, label %if.end19, !dbg !1989

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1991), !dbg !1993
  %5 = load i8* %fclose_fail, align 1, !dbg !1993
  %tobool8 = trunc i8 %5 to i1, !dbg !1993
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !1993

cond.true:                                        ; preds = %if.then
  %call9 = call i32* @__errno_location() #1, !dbg !1993
  %6 = load i32* %call9, align 4, !dbg !1993
  br label %cond.end, !dbg !1993

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !1993

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ 0, %cond.false ], !dbg !1993
  store i32 %cond, i32* %e, align 4, !dbg !1993
  call void @llvm.dbg.declare(metadata !{i8** %write_error}, metadata !1994), !dbg !1995
  %7 = load i32* %e, align 4, !dbg !1996
  %cmp10 = icmp eq i32 %7, 9, !dbg !1996
  br i1 %cmp10, label %land.lhs.true, label %if.end, !dbg !1996

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8* %prev_fail, align 1, !dbg !1996
  %tobool11 = trunc i8 %8 to i1, !dbg !1996
  br i1 %tobool11, label %if.end, label %land.lhs.true12, !dbg !1996

land.lhs.true12:                                  ; preds = %land.lhs.true
  %9 = load i8* %none_pending, align 1, !dbg !1996
  %tobool13 = trunc i8 %9 to i1, !dbg !1996
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !1996

if.then14:                                        ; preds = %land.lhs.true12
  br label %if.end19, !dbg !1998

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true, %cond.end
  store i8* getelementptr inbounds ([12 x i8]* @.str67, i32 0, i32 0), i8** %write_error, align 8, !dbg !1999
  %10 = load i8** @file_name, align 8, !dbg !2000
  %tobool15 = icmp ne i8* %10, null, !dbg !2000
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !2000

if.then16:                                        ; preds = %if.end
  %11 = load volatile i32* @exit_failure, align 4, !dbg !2002
  %12 = load i32* %e, align 4, !dbg !2002
  %13 = load i8** @file_name, align 8, !dbg !2002
  %call17 = call i8* @quotearg_colon(i8* %13), !dbg !2002
  %14 = load i8** %write_error, align 8, !dbg !2002
  call void (i32, i32, i8*, ...)* @error(i32 %11, i32 %12, i8* getelementptr inbounds ([7 x i8]* @.str168, i32 0, i32 0), i8* %call17, i8* %14), !dbg !2002
  br label %if.end18, !dbg !2002

if.else:                                          ; preds = %if.end
  %15 = load volatile i32* @exit_failure, align 4, !dbg !2003
  %16 = load i32* %e, align 4, !dbg !2003
  %17 = load i8** %write_error, align 8, !dbg !2003
  call void (i32, i32, i8*, ...)* @error(i32 %15, i32 %16, i8* getelementptr inbounds ([3 x i8]* @.str269, i32 0, i32 0), i8* %17), !dbg !2003
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  br label %if.end19, !dbg !2004

if.end19:                                         ; preds = %if.end18, %if.then14, %lor.lhs.false
  ret void, !dbg !2005
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #2

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @quote_n(i32 %n, i8* %name) #0 {
entry:
  %n.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !2006), !dbg !2007
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %name.addr}, metadata !2008), !dbg !2007
  %0 = load i32* %n.addr, align 4, !dbg !2009
  %1 = load i8** %name.addr, align 8, !dbg !2009
  %call = call i8* @quotearg_n_style(i32 %0, i32 5, i8* %1), !dbg !2009
  ret i8* %call, !dbg !2009
}

; Function Attrs: nounwind uwtable
define i8* @quote(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %name.addr}, metadata !2010), !dbg !2011
  %0 = load i8** %name.addr, align 8, !dbg !2012
  %call = call i8* @quote_n(i32 0, i8* %0), !dbg !2012
  ret i8* %call, !dbg !2012
}

; Function Attrs: nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !2013), !dbg !2014
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !2015), !dbg !2016
  %call = call i32* @__errno_location() #1, !dbg !2016
  %0 = load i32* %call, align 4, !dbg !2016
  store i32 %0, i32* %e, align 4, !dbg !2016
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %p}, metadata !2017), !dbg !2018
  %call1 = call i8* @xmalloc(i64 36), !dbg !2018
  %1 = bitcast i8* %call1 to %struct.quoting_options*, !dbg !2018
  store %struct.quoting_options* %1, %struct.quoting_options** %p, align 8, !dbg !2018
  %2 = load %struct.quoting_options** %p, align 8, !dbg !2019
  %3 = load %struct.quoting_options** %o.addr, align 8, !dbg !2019
  %tobool = icmp ne %struct.quoting_options* %3, null, !dbg !2019
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2019

cond.true:                                        ; preds = %entry
  %4 = load %struct.quoting_options** %o.addr, align 8, !dbg !2019
  br label %cond.end, !dbg !2019

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2019

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %4, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !2019
  %5 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2019
  %6 = bitcast %struct.quoting_options* %cond to i8*, !dbg !2019
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 36, i32 4, i1 false), !dbg !2019
  %7 = load i32* %e, align 4, !dbg !2020
  %call2 = call i32* @__errno_location() #1, !dbg !2020
  store i32 %7, i32* %call2, align 4, !dbg !2020
  %8 = load %struct.quoting_options** %p, align 8, !dbg !2021
  ret %struct.quoting_options* %8, !dbg !2021
}

; Function Attrs: nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !2022), !dbg !2023
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !2024
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !2024
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2024

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !2024
  br label %cond.end, !dbg !2024

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2024

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !2024
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !2024
  %2 = load i32* %style, align 4, !dbg !2024
  ret i32 %2, !dbg !2024
}

; Function Attrs: nounwind uwtable
define void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !2025), !dbg !2026
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !2027), !dbg !2026
  %0 = load i32* %s.addr, align 4, !dbg !2028
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !2028
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !2028
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2028

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !2028
  br label %cond.end, !dbg !2028

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2028

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !2028
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !2028
  store i32 %0, i32* %style, align 4, !dbg !2028
  ret void, !dbg !2029
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
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !2030), !dbg !2031
  store i8 %c, i8* %c.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %c.addr}, metadata !2032), !dbg !2031
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %i.addr}, metadata !2033), !dbg !2031
  call void @llvm.dbg.declare(metadata !{i8* %uc}, metadata !2034), !dbg !2035
  %0 = load i8* %c.addr, align 1, !dbg !2035
  store i8 %0, i8* %uc, align 1, !dbg !2035
  call void @llvm.dbg.declare(metadata !{i32** %p}, metadata !2036), !dbg !2038
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !2038
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !2038
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2038

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !2038
  br label %cond.end, !dbg !2038

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2038

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !2038
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 1, !dbg !2038
  %arraydecay = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !2038
  %3 = load i8* %uc, align 1, !dbg !2038
  %conv = zext i8 %3 to i64, !dbg !2038
  %div = udiv i64 %conv, 32, !dbg !2038
  %add.ptr = getelementptr inbounds i32* %arraydecay, i64 %div, !dbg !2038
  store i32* %add.ptr, i32** %p, align 8, !dbg !2038
  call void @llvm.dbg.declare(metadata !{i32* %shift}, metadata !2039), !dbg !2040
  %4 = load i8* %uc, align 1, !dbg !2040
  %conv1 = zext i8 %4 to i64, !dbg !2040
  %rem = urem i64 %conv1, 32, !dbg !2040
  %conv2 = trunc i64 %rem to i32, !dbg !2040
  store i32 %conv2, i32* %shift, align 4, !dbg !2040
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !2041), !dbg !2042
  %5 = load i32** %p, align 8, !dbg !2042
  %6 = load i32* %5, align 4, !dbg !2042
  %7 = load i32* %shift, align 4, !dbg !2042
  %shr = lshr i32 %6, %7, !dbg !2042
  %and = and i32 %shr, 1, !dbg !2042
  store i32 %and, i32* %r, align 4, !dbg !2042
  %8 = load i32* %i.addr, align 4, !dbg !2043
  %and3 = and i32 %8, 1, !dbg !2043
  %9 = load i32* %r, align 4, !dbg !2043
  %xor = xor i32 %and3, %9, !dbg !2043
  %10 = load i32* %shift, align 4, !dbg !2043
  %shl = shl i32 %xor, %10, !dbg !2043
  %11 = load i32** %p, align 8, !dbg !2043
  %12 = load i32* %11, align 4, !dbg !2043
  %xor4 = xor i32 %12, %shl, !dbg !2043
  store i32 %xor4, i32* %11, align 4, !dbg !2043
  %13 = load i32* %r, align 4, !dbg !2044
  ret i32 %13, !dbg !2044
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
  call void @llvm.dbg.declare(metadata !{i8** %buffer.addr}, metadata !2045), !dbg !2046
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %buffersize.addr}, metadata !2047), !dbg !2046
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2048), !dbg !2049
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !2050), !dbg !2049
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !2051), !dbg !2052
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %p}, metadata !2053), !dbg !2054
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !2054
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !2054
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2054

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !2054
  br label %cond.end, !dbg !2054

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2054

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ], !dbg !2054
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !2054
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !2055), !dbg !2056
  %call = call i32* @__errno_location() #1, !dbg !2056
  %2 = load i32* %call, align 4, !dbg !2056
  store i32 %2, i32* %e, align 4, !dbg !2056
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !2057), !dbg !2058
  %3 = load i8** %buffer.addr, align 8, !dbg !2058
  %4 = load i64* %buffersize.addr, align 8, !dbg !2058
  %5 = load i8** %arg.addr, align 8, !dbg !2058
  %6 = load i64* %argsize.addr, align 8, !dbg !2058
  %7 = load %struct.quoting_options** %p, align 8, !dbg !2058
  %style = getelementptr inbounds %struct.quoting_options* %7, i32 0, i32 0, !dbg !2058
  %8 = load i32* %style, align 4, !dbg !2058
  %9 = load %struct.quoting_options** %p, align 8, !dbg !2058
  %call1 = call i64 @quotearg_buffer_restyled(i8* %3, i64 %4, i8* %5, i64 %6, i32 %8, %struct.quoting_options* %9), !dbg !2058
  store i64 %call1, i64* %r, align 8, !dbg !2058
  %10 = load i32* %e, align 4, !dbg !2059
  %call2 = call i32* @__errno_location() #1, !dbg !2059
  store i32 %10, i32* %call2, align 4, !dbg !2059
  %11 = load i64* %r, align 8, !dbg !2060
  ret i64 %11, !dbg !2060
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
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2061), !dbg !2062
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !2063), !dbg !2062
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !2064), !dbg !2065
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !2066), !dbg !2067
  %call = call i32* @__errno_location() #1, !dbg !2067
  %0 = load i32* %call, align 4, !dbg !2067
  store i32 %0, i32* %e, align 4, !dbg !2067
  call void @llvm.dbg.declare(metadata !{i64* %bufsize}, metadata !2068), !dbg !2069
  %1 = load i8** %arg.addr, align 8, !dbg !2069
  %2 = load i64* %argsize.addr, align 8, !dbg !2069
  %3 = load %struct.quoting_options** %o.addr, align 8, !dbg !2069
  %call1 = call i64 @quotearg_buffer(i8* null, i64 0, i8* %1, i64 %2, %struct.quoting_options* %3), !dbg !2069
  %add = add i64 %call1, 1, !dbg !2069
  store i64 %add, i64* %bufsize, align 8, !dbg !2069
  call void @llvm.dbg.declare(metadata !{i8** %buf}, metadata !2070), !dbg !2071
  %4 = load i64* %bufsize, align 8, !dbg !2071
  %call2 = call i8* @xmalloc(i64 %4), !dbg !2071
  store i8* %call2, i8** %buf, align 8, !dbg !2071
  %5 = load i8** %buf, align 8, !dbg !2072
  %6 = load i64* %bufsize, align 8, !dbg !2072
  %7 = load i8** %arg.addr, align 8, !dbg !2072
  %8 = load i64* %argsize.addr, align 8, !dbg !2072
  %9 = load %struct.quoting_options** %o.addr, align 8, !dbg !2072
  %call3 = call i64 @quotearg_buffer(i8* %5, i64 %6, i8* %7, i64 %8, %struct.quoting_options* %9), !dbg !2072
  %10 = load i32* %e, align 4, !dbg !2073
  %call4 = call i32* @__errno_location() #1, !dbg !2073
  store i32 %10, i32* %call4, align 4, !dbg !2073
  %11 = load i8** %buf, align 8, !dbg !2074
  ret i8* %11, !dbg !2074
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n(i32 %n, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !2075), !dbg !2076
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2077), !dbg !2076
  %0 = load i32* %n.addr, align 4, !dbg !2078
  %1 = load i8** %arg.addr, align 8, !dbg !2078
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !2078
  ret i8* %call, !dbg !2078
}

; Function Attrs: nounwind uwtable
define i8* @quotearg(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2079), !dbg !2080
  %0 = load i8** %arg.addr, align 8, !dbg !2081
  %call = call i8* @quotearg_n(i32 0, i8* %0), !dbg !2081
  ret i8* %call, !dbg !2081
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !2082), !dbg !2083
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !2084), !dbg !2083
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2085), !dbg !2083
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !2086), !dbg !2087
  %0 = load i32* %s.addr, align 4, !dbg !2087
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !2087
  %1 = load i32* %n.addr, align 4, !dbg !2088
  %2 = load i8** %arg.addr, align 8, !dbg !2088
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 -1, %struct.quoting_options* %o), !dbg !2088
  ret i8* %call, !dbg !2088
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
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !2089), !dbg !2090
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !2091), !dbg !2090
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2092), !dbg !2093
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !2094), !dbg !2093
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !2095), !dbg !2096
  %0 = load i32* %s.addr, align 4, !dbg !2096
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !2096
  %1 = load i32* %n.addr, align 4, !dbg !2097
  %2 = load i8** %arg.addr, align 8, !dbg !2097
  %3 = load i64* %argsize.addr, align 8, !dbg !2097
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 %3, %struct.quoting_options* %o), !dbg !2097
  ret i8* %call, !dbg !2097
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_style(i32 %s, i8* %arg) #0 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !2098), !dbg !2099
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2100), !dbg !2099
  %0 = load i32* %s.addr, align 4, !dbg !2101
  %1 = load i8** %arg.addr, align 8, !dbg !2101
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1), !dbg !2101
  ret i8* %call, !dbg !2101
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_char(i8* %arg, i8 signext %ch) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 4
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2102), !dbg !2103
  store i8 %ch, i8* %ch.addr, align 1
  call void @llvm.dbg.declare(metadata !{i8* %ch.addr}, metadata !2104), !dbg !2103
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %options}, metadata !2105), !dbg !2106
  %0 = bitcast %struct.quoting_options* %options to i8*, !dbg !2107
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 36, i32 4, i1 false), !dbg !2107
  %1 = load i8* %ch.addr, align 1, !dbg !2108
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %1, i32 1), !dbg !2108
  %2 = load i8** %arg.addr, align 8, !dbg !2109
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* %options), !dbg !2109
  ret i8* %call1, !dbg !2109
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_colon(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2110), !dbg !2111
  %0 = load i8** %arg.addr, align 8, !dbg !2112
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58), !dbg !2112
  ret i8* %call, !dbg !2112
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #9

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #2

; Function Attrs: nounwind
declare i32 @iswprint(i32) #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) #6

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
  call void @llvm.dbg.declare(metadata !{i8** %buffer.addr}, metadata !2113), !dbg !2114
  store i64 %buffersize, i64* %buffersize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %buffersize.addr}, metadata !2115), !dbg !2114
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2116), !dbg !2117
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !2118), !dbg !2117
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %quoting_style.addr}, metadata !2119), !dbg !2120
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %o.addr}, metadata !2121), !dbg !2122
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !2123), !dbg !2124
  call void @llvm.dbg.declare(metadata !{i64* %len}, metadata !2125), !dbg !2126
  store i64 0, i64* %len, align 8, !dbg !2126
  call void @llvm.dbg.declare(metadata !{i8** %quote_string}, metadata !2127), !dbg !2128
  store i8* null, i8** %quote_string, align 8, !dbg !2128
  call void @llvm.dbg.declare(metadata !{i64* %quote_string_len}, metadata !2129), !dbg !2130
  store i64 0, i64* %quote_string_len, align 8, !dbg !2130
  call void @llvm.dbg.declare(metadata !{i8* %backslash_escapes}, metadata !2131), !dbg !2132
  store i8 0, i8* %backslash_escapes, align 1, !dbg !2132
  call void @llvm.dbg.declare(metadata !{i8* %unibyte_locale}, metadata !2133), !dbg !2134
  %call = call i64 @__ctype_get_mb_cur_max() #9, !dbg !2134
  %cmp = icmp eq i64 %call, 1, !dbg !2134
  %frombool = zext i1 %cmp to i8, !dbg !2134
  store i8 %frombool, i8* %unibyte_locale, align 1, !dbg !2134
  %0 = load i32* %quoting_style.addr, align 4, !dbg !2135
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb3
    i32 2, label %sw.bb14
  ], !dbg !2135

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !2136

do.body:                                          ; preds = %sw.bb
  %1 = load i64* %len, align 8, !dbg !2138
  %2 = load i64* %buffersize.addr, align 8, !dbg !2138
  %cmp1 = icmp ult i64 %1, %2, !dbg !2138
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2138

if.then:                                          ; preds = %do.body
  %3 = load i64* %len, align 8, !dbg !2138
  %4 = load i8** %buffer.addr, align 8, !dbg !2138
  %arrayidx = getelementptr inbounds i8* %4, i64 %3, !dbg !2138
  store i8 34, i8* %arrayidx, align 1, !dbg !2138
  br label %if.end, !dbg !2138

if.end:                                           ; preds = %if.then, %do.body
  %5 = load i64* %len, align 8, !dbg !2141
  %inc = add i64 %5, 1, !dbg !2141
  store i64 %inc, i64* %len, align 8, !dbg !2141
  br label %do.end, !dbg !2141

do.end:                                           ; preds = %if.end
  store i8 1, i8* %backslash_escapes, align 1, !dbg !2142
  store i8* getelementptr inbounds ([2 x i8]* @.str783, i32 0, i32 0), i8** %quote_string, align 8, !dbg !2143
  store i64 1, i64* %quote_string_len, align 8, !dbg !2144
  br label %sw.epilog, !dbg !2145

sw.bb2:                                           ; preds = %entry
  store i8 1, i8* %backslash_escapes, align 1, !dbg !2146
  br label %sw.epilog, !dbg !2147

sw.bb3:                                           ; preds = %entry, %entry
  call void @llvm.dbg.declare(metadata !{i8** %left}, metadata !2148), !dbg !2150
  %6 = load i32* %quoting_style.addr, align 4, !dbg !2150
  %call4 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str884, i32 0, i32 0), i32 %6), !dbg !2150
  store i8* %call4, i8** %left, align 8, !dbg !2150
  call void @llvm.dbg.declare(metadata !{i8** %right}, metadata !2151), !dbg !2152
  %7 = load i32* %quoting_style.addr, align 4, !dbg !2152
  %call5 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str985, i32 0, i32 0), i32 %7), !dbg !2152
  store i8* %call5, i8** %right, align 8, !dbg !2152
  %8 = load i8** %left, align 8, !dbg !2153
  store i8* %8, i8** %quote_string, align 8, !dbg !2153
  br label %for.cond, !dbg !2153

for.cond:                                         ; preds = %for.inc, %sw.bb3
  %9 = load i8** %quote_string, align 8, !dbg !2153
  %10 = load i8* %9, align 1, !dbg !2153
  %tobool = icmp ne i8 %10, 0, !dbg !2153
  br i1 %tobool, label %for.body, label %for.end, !dbg !2153

for.body:                                         ; preds = %for.cond
  br label %do.body6, !dbg !2155

do.body6:                                         ; preds = %for.body
  %11 = load i64* %len, align 8, !dbg !2156
  %12 = load i64* %buffersize.addr, align 8, !dbg !2156
  %cmp7 = icmp ult i64 %11, %12, !dbg !2156
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !2156

if.then8:                                         ; preds = %do.body6
  %13 = load i8** %quote_string, align 8, !dbg !2156
  %14 = load i8* %13, align 1, !dbg !2156
  %15 = load i64* %len, align 8, !dbg !2156
  %16 = load i8** %buffer.addr, align 8, !dbg !2156
  %arrayidx9 = getelementptr inbounds i8* %16, i64 %15, !dbg !2156
  store i8 %14, i8* %arrayidx9, align 1, !dbg !2156
  br label %if.end10, !dbg !2156

if.end10:                                         ; preds = %if.then8, %do.body6
  %17 = load i64* %len, align 8, !dbg !2159
  %inc11 = add i64 %17, 1, !dbg !2159
  store i64 %inc11, i64* %len, align 8, !dbg !2159
  br label %do.end12, !dbg !2159

do.end12:                                         ; preds = %if.end10
  br label %for.inc, !dbg !2159

for.inc:                                          ; preds = %do.end12
  %18 = load i8** %quote_string, align 8, !dbg !2153
  %incdec.ptr = getelementptr inbounds i8* %18, i32 1, !dbg !2153
  store i8* %incdec.ptr, i8** %quote_string, align 8, !dbg !2153
  br label %for.cond, !dbg !2153

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %backslash_escapes, align 1, !dbg !2160
  %19 = load i8** %right, align 8, !dbg !2161
  store i8* %19, i8** %quote_string, align 8, !dbg !2161
  %20 = load i8** %quote_string, align 8, !dbg !2162
  %call13 = call i64 @strlen(i8* %20) #12, !dbg !2162
  store i64 %call13, i64* %quote_string_len, align 8, !dbg !2162
  br label %sw.epilog, !dbg !2163

sw.bb14:                                          ; preds = %entry
  br label %do.body15, !dbg !2164

do.body15:                                        ; preds = %sw.bb14
  %21 = load i64* %len, align 8, !dbg !2165
  %22 = load i64* %buffersize.addr, align 8, !dbg !2165
  %cmp16 = icmp ult i64 %21, %22, !dbg !2165
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !2165

if.then17:                                        ; preds = %do.body15
  %23 = load i64* %len, align 8, !dbg !2165
  %24 = load i8** %buffer.addr, align 8, !dbg !2165
  %arrayidx18 = getelementptr inbounds i8* %24, i64 %23, !dbg !2165
  store i8 39, i8* %arrayidx18, align 1, !dbg !2165
  br label %if.end19, !dbg !2165

if.end19:                                         ; preds = %if.then17, %do.body15
  %25 = load i64* %len, align 8, !dbg !2168
  %inc20 = add i64 %25, 1, !dbg !2168
  store i64 %inc20, i64* %len, align 8, !dbg !2168
  br label %do.end21, !dbg !2168

do.end21:                                         ; preds = %if.end19
  store i8* getelementptr inbounds ([2 x i8]* @.str985, i32 0, i32 0), i8** %quote_string, align 8, !dbg !2169
  store i64 1, i64* %quote_string_len, align 8, !dbg !2170
  br label %sw.epilog, !dbg !2171

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !2172

sw.epilog:                                        ; preds = %sw.default, %do.end21, %for.end, %sw.bb2, %do.end
  store i64 0, i64* %i, align 8, !dbg !2173
  br label %for.cond22, !dbg !2173

for.cond22:                                       ; preds = %for.inc366, %sw.epilog
  %26 = load i64* %argsize.addr, align 8, !dbg !2173
  %cmp23 = icmp eq i64 %26, -1, !dbg !2173
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !2173

cond.true:                                        ; preds = %for.cond22
  %27 = load i64* %i, align 8, !dbg !2173
  %28 = load i8** %arg.addr, align 8, !dbg !2173
  %arrayidx24 = getelementptr inbounds i8* %28, i64 %27, !dbg !2173
  %29 = load i8* %arrayidx24, align 1, !dbg !2173
  %conv = sext i8 %29 to i32, !dbg !2173
  %cmp25 = icmp eq i32 %conv, 0, !dbg !2173
  br i1 %cmp25, label %for.end368, label %for.body29, !dbg !2173

cond.false:                                       ; preds = %for.cond22
  %30 = load i64* %i, align 8, !dbg !2173
  %31 = load i64* %argsize.addr, align 8, !dbg !2173
  %cmp27 = icmp eq i64 %30, %31, !dbg !2173
  br i1 %cmp27, label %for.end368, label %for.body29, !dbg !2173

for.body29:                                       ; preds = %cond.false, %cond.true
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !2175), !dbg !2177
  call void @llvm.dbg.declare(metadata !{i8* %esc}, metadata !2178), !dbg !2179
  %32 = load i8* %backslash_escapes, align 1, !dbg !2180
  %tobool30 = trunc i8 %32 to i1, !dbg !2180
  br i1 %tobool30, label %land.lhs.true, label %if.end49, !dbg !2180

land.lhs.true:                                    ; preds = %for.body29
  %33 = load i64* %quote_string_len, align 8, !dbg !2180
  %tobool32 = icmp ne i64 %33, 0, !dbg !2180
  br i1 %tobool32, label %land.lhs.true33, label %if.end49, !dbg !2180

land.lhs.true33:                                  ; preds = %land.lhs.true
  %34 = load i64* %i, align 8, !dbg !2180
  %35 = load i64* %quote_string_len, align 8, !dbg !2180
  %add = add i64 %34, %35, !dbg !2180
  %36 = load i64* %argsize.addr, align 8, !dbg !2180
  %cmp34 = icmp ule i64 %add, %36, !dbg !2180
  br i1 %cmp34, label %land.lhs.true36, label %if.end49, !dbg !2180

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %37 = load i8** %arg.addr, align 8, !dbg !2182
  %38 = load i64* %i, align 8, !dbg !2182
  %add.ptr = getelementptr inbounds i8* %37, i64 %38, !dbg !2182
  %39 = load i8** %quote_string, align 8, !dbg !2182
  %40 = load i64* %quote_string_len, align 8, !dbg !2182
  %call37 = call i32 @memcmp(i8* %add.ptr, i8* %39, i64 %40) #12, !dbg !2182
  %cmp38 = icmp eq i32 %call37, 0, !dbg !2182
  br i1 %cmp38, label %if.then40, label %if.end49, !dbg !2182

if.then40:                                        ; preds = %land.lhs.true36
  br label %do.body41, !dbg !2183

do.body41:                                        ; preds = %if.then40
  %41 = load i64* %len, align 8, !dbg !2184
  %42 = load i64* %buffersize.addr, align 8, !dbg !2184
  %cmp42 = icmp ult i64 %41, %42, !dbg !2184
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !2184

if.then44:                                        ; preds = %do.body41
  %43 = load i64* %len, align 8, !dbg !2184
  %44 = load i8** %buffer.addr, align 8, !dbg !2184
  %arrayidx45 = getelementptr inbounds i8* %44, i64 %43, !dbg !2184
  store i8 92, i8* %arrayidx45, align 1, !dbg !2184
  br label %if.end46, !dbg !2184

if.end46:                                         ; preds = %if.then44, %do.body41
  %45 = load i64* %len, align 8, !dbg !2187
  %inc47 = add i64 %45, 1, !dbg !2187
  store i64 %inc47, i64* %len, align 8, !dbg !2187
  br label %do.end48, !dbg !2187

do.end48:                                         ; preds = %if.end46
  br label %if.end49, !dbg !2187

if.end49:                                         ; preds = %do.end48, %land.lhs.true36, %land.lhs.true33, %land.lhs.true, %for.body29
  %46 = load i64* %i, align 8, !dbg !2188
  %47 = load i8** %arg.addr, align 8, !dbg !2188
  %arrayidx50 = getelementptr inbounds i8* %47, i64 %46, !dbg !2188
  %48 = load i8* %arrayidx50, align 1, !dbg !2188
  store i8 %48, i8* %c, align 1, !dbg !2188
  %49 = load i8* %c, align 1, !dbg !2189
  %conv51 = zext i8 %49 to i32, !dbg !2189
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
  ], !dbg !2189

sw.bb52:                                          ; preds = %if.end49
  %50 = load i8* %backslash_escapes, align 1, !dbg !2190
  %tobool53 = trunc i8 %50 to i1, !dbg !2190
  br i1 %tobool53, label %if.then54, label %if.end79, !dbg !2190

if.then54:                                        ; preds = %sw.bb52
  br label %do.body55, !dbg !2193

do.body55:                                        ; preds = %if.then54
  %51 = load i64* %len, align 8, !dbg !2195
  %52 = load i64* %buffersize.addr, align 8, !dbg !2195
  %cmp56 = icmp ult i64 %51, %52, !dbg !2195
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !2195

if.then58:                                        ; preds = %do.body55
  %53 = load i64* %len, align 8, !dbg !2195
  %54 = load i8** %buffer.addr, align 8, !dbg !2195
  %arrayidx59 = getelementptr inbounds i8* %54, i64 %53, !dbg !2195
  store i8 92, i8* %arrayidx59, align 1, !dbg !2195
  br label %if.end60, !dbg !2195

if.end60:                                         ; preds = %if.then58, %do.body55
  %55 = load i64* %len, align 8, !dbg !2198
  %inc61 = add i64 %55, 1, !dbg !2198
  store i64 %inc61, i64* %len, align 8, !dbg !2198
  br label %do.end62, !dbg !2198

do.end62:                                         ; preds = %if.end60
  br label %do.body63, !dbg !2199

do.body63:                                        ; preds = %do.end62
  %56 = load i64* %len, align 8, !dbg !2200
  %57 = load i64* %buffersize.addr, align 8, !dbg !2200
  %cmp64 = icmp ult i64 %56, %57, !dbg !2200
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !2200

if.then66:                                        ; preds = %do.body63
  %58 = load i64* %len, align 8, !dbg !2200
  %59 = load i8** %buffer.addr, align 8, !dbg !2200
  %arrayidx67 = getelementptr inbounds i8* %59, i64 %58, !dbg !2200
  store i8 48, i8* %arrayidx67, align 1, !dbg !2200
  br label %if.end68, !dbg !2200

if.end68:                                         ; preds = %if.then66, %do.body63
  %60 = load i64* %len, align 8, !dbg !2203
  %inc69 = add i64 %60, 1, !dbg !2203
  store i64 %inc69, i64* %len, align 8, !dbg !2203
  br label %do.end70, !dbg !2203

do.end70:                                         ; preds = %if.end68
  br label %do.body71, !dbg !2204

do.body71:                                        ; preds = %do.end70
  %61 = load i64* %len, align 8, !dbg !2205
  %62 = load i64* %buffersize.addr, align 8, !dbg !2205
  %cmp72 = icmp ult i64 %61, %62, !dbg !2205
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !2205

if.then74:                                        ; preds = %do.body71
  %63 = load i64* %len, align 8, !dbg !2205
  %64 = load i8** %buffer.addr, align 8, !dbg !2205
  %arrayidx75 = getelementptr inbounds i8* %64, i64 %63, !dbg !2205
  store i8 48, i8* %arrayidx75, align 1, !dbg !2205
  br label %if.end76, !dbg !2205

if.end76:                                         ; preds = %if.then74, %do.body71
  %65 = load i64* %len, align 8, !dbg !2208
  %inc77 = add i64 %65, 1, !dbg !2208
  store i64 %inc77, i64* %len, align 8, !dbg !2208
  br label %do.end78, !dbg !2208

do.end78:                                         ; preds = %if.end76
  store i8 48, i8* %c, align 1, !dbg !2209
  br label %if.end79, !dbg !2210

if.end79:                                         ; preds = %do.end78, %sw.bb52
  br label %sw.epilog337, !dbg !2211

sw.bb80:                                          ; preds = %if.end49
  %66 = load i32* %quoting_style.addr, align 4, !dbg !2212
  switch i32 %66, label %sw.default126 [
    i32 1, label %sw.bb81
    i32 3, label %sw.bb82
  ], !dbg !2212

sw.bb81:                                          ; preds = %sw.bb80
  br label %use_shell_always_quoting_style, !dbg !2213

sw.bb82:                                          ; preds = %sw.bb80
  %67 = load i64* %i, align 8, !dbg !2215
  %add83 = add i64 %67, 2, !dbg !2215
  %68 = load i64* %argsize.addr, align 8, !dbg !2215
  %cmp84 = icmp ult i64 %add83, %68, !dbg !2215
  br i1 %cmp84, label %land.lhs.true86, label %if.end125, !dbg !2215

land.lhs.true86:                                  ; preds = %sw.bb82
  %69 = load i64* %i, align 8, !dbg !2215
  %add87 = add i64 %69, 1, !dbg !2215
  %70 = load i8** %arg.addr, align 8, !dbg !2215
  %arrayidx88 = getelementptr inbounds i8* %70, i64 %add87, !dbg !2215
  %71 = load i8* %arrayidx88, align 1, !dbg !2215
  %conv89 = sext i8 %71 to i32, !dbg !2215
  %cmp90 = icmp eq i32 %conv89, 63, !dbg !2215
  br i1 %cmp90, label %if.then92, label %if.end125, !dbg !2215

if.then92:                                        ; preds = %land.lhs.true86
  %72 = load i64* %i, align 8, !dbg !2217
  %add93 = add i64 %72, 2, !dbg !2217
  %73 = load i8** %arg.addr, align 8, !dbg !2217
  %arrayidx94 = getelementptr inbounds i8* %73, i64 %add93, !dbg !2217
  %74 = load i8* %arrayidx94, align 1, !dbg !2217
  %conv95 = sext i8 %74 to i32, !dbg !2217
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
  ], !dbg !2217

sw.bb96:                                          ; preds = %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92
  %75 = load i64* %i, align 8, !dbg !2218
  %add97 = add i64 %75, 2, !dbg !2218
  %76 = load i8** %arg.addr, align 8, !dbg !2218
  %arrayidx98 = getelementptr inbounds i8* %76, i64 %add97, !dbg !2218
  %77 = load i8* %arrayidx98, align 1, !dbg !2218
  store i8 %77, i8* %c, align 1, !dbg !2218
  %78 = load i64* %i, align 8, !dbg !2220
  %add99 = add i64 %78, 2, !dbg !2220
  store i64 %add99, i64* %i, align 8, !dbg !2220
  br label %do.body100, !dbg !2221

do.body100:                                       ; preds = %sw.bb96
  %79 = load i64* %len, align 8, !dbg !2222
  %80 = load i64* %buffersize.addr, align 8, !dbg !2222
  %cmp101 = icmp ult i64 %79, %80, !dbg !2222
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !2222

if.then103:                                       ; preds = %do.body100
  %81 = load i64* %len, align 8, !dbg !2222
  %82 = load i8** %buffer.addr, align 8, !dbg !2222
  %arrayidx104 = getelementptr inbounds i8* %82, i64 %81, !dbg !2222
  store i8 63, i8* %arrayidx104, align 1, !dbg !2222
  br label %if.end105, !dbg !2222

if.end105:                                        ; preds = %if.then103, %do.body100
  %83 = load i64* %len, align 8, !dbg !2225
  %inc106 = add i64 %83, 1, !dbg !2225
  store i64 %inc106, i64* %len, align 8, !dbg !2225
  br label %do.end107, !dbg !2225

do.end107:                                        ; preds = %if.end105
  br label %do.body108, !dbg !2226

do.body108:                                       ; preds = %do.end107
  %84 = load i64* %len, align 8, !dbg !2227
  %85 = load i64* %buffersize.addr, align 8, !dbg !2227
  %cmp109 = icmp ult i64 %84, %85, !dbg !2227
  br i1 %cmp109, label %if.then111, label %if.end113, !dbg !2227

if.then111:                                       ; preds = %do.body108
  %86 = load i64* %len, align 8, !dbg !2227
  %87 = load i8** %buffer.addr, align 8, !dbg !2227
  %arrayidx112 = getelementptr inbounds i8* %87, i64 %86, !dbg !2227
  store i8 92, i8* %arrayidx112, align 1, !dbg !2227
  br label %if.end113, !dbg !2227

if.end113:                                        ; preds = %if.then111, %do.body108
  %88 = load i64* %len, align 8, !dbg !2230
  %inc114 = add i64 %88, 1, !dbg !2230
  store i64 %inc114, i64* %len, align 8, !dbg !2230
  br label %do.end115, !dbg !2230

do.end115:                                        ; preds = %if.end113
  br label %do.body116, !dbg !2231

do.body116:                                       ; preds = %do.end115
  %89 = load i64* %len, align 8, !dbg !2232
  %90 = load i64* %buffersize.addr, align 8, !dbg !2232
  %cmp117 = icmp ult i64 %89, %90, !dbg !2232
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !2232

if.then119:                                       ; preds = %do.body116
  %91 = load i64* %len, align 8, !dbg !2232
  %92 = load i8** %buffer.addr, align 8, !dbg !2232
  %arrayidx120 = getelementptr inbounds i8* %92, i64 %91, !dbg !2232
  store i8 63, i8* %arrayidx120, align 1, !dbg !2232
  br label %if.end121, !dbg !2232

if.end121:                                        ; preds = %if.then119, %do.body116
  %93 = load i64* %len, align 8, !dbg !2235
  %inc122 = add i64 %93, 1, !dbg !2235
  store i64 %inc122, i64* %len, align 8, !dbg !2235
  br label %do.end123, !dbg !2235

do.end123:                                        ; preds = %if.end121
  br label %sw.epilog124, !dbg !2236

sw.epilog124:                                     ; preds = %do.end123, %if.then92
  br label %if.end125, !dbg !2237

if.end125:                                        ; preds = %sw.epilog124, %land.lhs.true86, %sw.bb82
  br label %sw.epilog127, !dbg !2238

sw.default126:                                    ; preds = %sw.bb80
  br label %sw.epilog127, !dbg !2239

sw.epilog127:                                     ; preds = %sw.default126, %if.end125
  br label %sw.epilog337, !dbg !2240

sw.bb128:                                         ; preds = %if.end49
  store i8 97, i8* %esc, align 1, !dbg !2241
  br label %c_escape, !dbg !2241

sw.bb129:                                         ; preds = %if.end49
  store i8 98, i8* %esc, align 1, !dbg !2242
  br label %c_escape, !dbg !2242

sw.bb130:                                         ; preds = %if.end49
  store i8 102, i8* %esc, align 1, !dbg !2243
  br label %c_escape, !dbg !2243

sw.bb131:                                         ; preds = %if.end49
  store i8 110, i8* %esc, align 1, !dbg !2244
  br label %c_and_shell_escape, !dbg !2244

sw.bb132:                                         ; preds = %if.end49
  store i8 114, i8* %esc, align 1, !dbg !2245
  br label %c_and_shell_escape, !dbg !2245

sw.bb133:                                         ; preds = %if.end49
  store i8 116, i8* %esc, align 1, !dbg !2246
  br label %c_and_shell_escape, !dbg !2246

sw.bb134:                                         ; preds = %if.end49
  store i8 118, i8* %esc, align 1, !dbg !2247
  br label %c_escape, !dbg !2247

sw.bb135:                                         ; preds = %if.end49
  %94 = load i8* %c, align 1, !dbg !2248
  store i8 %94, i8* %esc, align 1, !dbg !2248
  br label %c_and_shell_escape, !dbg !2248

c_and_shell_escape:                               ; preds = %sw.bb135, %sw.bb133, %sw.bb132, %sw.bb131
  %95 = load i32* %quoting_style.addr, align 4, !dbg !2249
  %cmp136 = icmp eq i32 %95, 1, !dbg !2249
  br i1 %cmp136, label %if.then138, label %if.end139, !dbg !2249

if.then138:                                       ; preds = %c_and_shell_escape
  br label %use_shell_always_quoting_style, !dbg !2251

if.end139:                                        ; preds = %c_and_shell_escape
  br label %c_escape, !dbg !2251

c_escape:                                         ; preds = %if.end139, %sw.bb134, %sw.bb130, %sw.bb129, %sw.bb128
  %96 = load i8* %backslash_escapes, align 1, !dbg !2252
  %tobool140 = trunc i8 %96 to i1, !dbg !2252
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !2252

if.then141:                                       ; preds = %c_escape
  %97 = load i8* %esc, align 1, !dbg !2254
  store i8 %97, i8* %c, align 1, !dbg !2254
  br label %store_escape, !dbg !2256

if.end142:                                        ; preds = %c_escape
  br label %sw.epilog337, !dbg !2257

sw.bb143:                                         ; preds = %if.end49, %if.end49
  %98 = load i64* %argsize.addr, align 8, !dbg !2258
  %cmp144 = icmp eq i64 %98, -1, !dbg !2258
  br i1 %cmp144, label %cond.true146, label %cond.false151, !dbg !2258

cond.true146:                                     ; preds = %sw.bb143
  %99 = load i8** %arg.addr, align 8, !dbg !2258
  %arrayidx147 = getelementptr inbounds i8* %99, i64 1, !dbg !2258
  %100 = load i8* %arrayidx147, align 1, !dbg !2258
  %conv148 = sext i8 %100 to i32, !dbg !2258
  %cmp149 = icmp eq i32 %conv148, 0, !dbg !2258
  br i1 %cmp149, label %if.end155, label %if.then154, !dbg !2258

cond.false151:                                    ; preds = %sw.bb143
  %101 = load i64* %argsize.addr, align 8, !dbg !2258
  %cmp152 = icmp eq i64 %101, 1, !dbg !2258
  br i1 %cmp152, label %if.end155, label %if.then154, !dbg !2258

if.then154:                                       ; preds = %cond.false151, %cond.true146
  br label %sw.epilog337, !dbg !2260

if.end155:                                        ; preds = %cond.false151, %cond.true146
  br label %sw.bb156, !dbg !2260

sw.bb156:                                         ; preds = %if.end155, %if.end49, %if.end49
  %102 = load i64* %i, align 8, !dbg !2261
  %cmp157 = icmp ne i64 %102, 0, !dbg !2261
  br i1 %cmp157, label %if.then159, label %if.end160, !dbg !2261

if.then159:                                       ; preds = %sw.bb156
  br label %sw.epilog337, !dbg !2263

if.end160:                                        ; preds = %sw.bb156
  br label %sw.bb161, !dbg !2263

sw.bb161:                                         ; preds = %if.end160, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  %103 = load i32* %quoting_style.addr, align 4, !dbg !2264
  %cmp162 = icmp eq i32 %103, 1, !dbg !2264
  br i1 %cmp162, label %if.then164, label %if.end165, !dbg !2264

if.then164:                                       ; preds = %sw.bb161
  br label %use_shell_always_quoting_style, !dbg !2266

if.end165:                                        ; preds = %sw.bb161
  br label %sw.epilog337, !dbg !2267

sw.bb166:                                         ; preds = %if.end49
  %104 = load i32* %quoting_style.addr, align 4, !dbg !2268
  switch i32 %104, label %sw.default193 [
    i32 1, label %sw.bb167
    i32 2, label %sw.bb168
  ], !dbg !2268

sw.bb167:                                         ; preds = %sw.bb166
  br label %use_shell_always_quoting_style, !dbg !2269

sw.bb168:                                         ; preds = %sw.bb166
  br label %do.body169, !dbg !2271

do.body169:                                       ; preds = %sw.bb168
  %105 = load i64* %len, align 8, !dbg !2272
  %106 = load i64* %buffersize.addr, align 8, !dbg !2272
  %cmp170 = icmp ult i64 %105, %106, !dbg !2272
  br i1 %cmp170, label %if.then172, label %if.end174, !dbg !2272

if.then172:                                       ; preds = %do.body169
  %107 = load i64* %len, align 8, !dbg !2272
  %108 = load i8** %buffer.addr, align 8, !dbg !2272
  %arrayidx173 = getelementptr inbounds i8* %108, i64 %107, !dbg !2272
  store i8 39, i8* %arrayidx173, align 1, !dbg !2272
  br label %if.end174, !dbg !2272

if.end174:                                        ; preds = %if.then172, %do.body169
  %109 = load i64* %len, align 8, !dbg !2275
  %inc175 = add i64 %109, 1, !dbg !2275
  store i64 %inc175, i64* %len, align 8, !dbg !2275
  br label %do.end176, !dbg !2275

do.end176:                                        ; preds = %if.end174
  br label %do.body177, !dbg !2276

do.body177:                                       ; preds = %do.end176
  %110 = load i64* %len, align 8, !dbg !2277
  %111 = load i64* %buffersize.addr, align 8, !dbg !2277
  %cmp178 = icmp ult i64 %110, %111, !dbg !2277
  br i1 %cmp178, label %if.then180, label %if.end182, !dbg !2277

if.then180:                                       ; preds = %do.body177
  %112 = load i64* %len, align 8, !dbg !2277
  %113 = load i8** %buffer.addr, align 8, !dbg !2277
  %arrayidx181 = getelementptr inbounds i8* %113, i64 %112, !dbg !2277
  store i8 92, i8* %arrayidx181, align 1, !dbg !2277
  br label %if.end182, !dbg !2277

if.end182:                                        ; preds = %if.then180, %do.body177
  %114 = load i64* %len, align 8, !dbg !2280
  %inc183 = add i64 %114, 1, !dbg !2280
  store i64 %inc183, i64* %len, align 8, !dbg !2280
  br label %do.end184, !dbg !2280

do.end184:                                        ; preds = %if.end182
  br label %do.body185, !dbg !2281

do.body185:                                       ; preds = %do.end184
  %115 = load i64* %len, align 8, !dbg !2282
  %116 = load i64* %buffersize.addr, align 8, !dbg !2282
  %cmp186 = icmp ult i64 %115, %116, !dbg !2282
  br i1 %cmp186, label %if.then188, label %if.end190, !dbg !2282

if.then188:                                       ; preds = %do.body185
  %117 = load i64* %len, align 8, !dbg !2282
  %118 = load i8** %buffer.addr, align 8, !dbg !2282
  %arrayidx189 = getelementptr inbounds i8* %118, i64 %117, !dbg !2282
  store i8 39, i8* %arrayidx189, align 1, !dbg !2282
  br label %if.end190, !dbg !2282

if.end190:                                        ; preds = %if.then188, %do.body185
  %119 = load i64* %len, align 8, !dbg !2285
  %inc191 = add i64 %119, 1, !dbg !2285
  store i64 %inc191, i64* %len, align 8, !dbg !2285
  br label %do.end192, !dbg !2285

do.end192:                                        ; preds = %if.end190
  br label %sw.epilog194, !dbg !2286

sw.default193:                                    ; preds = %sw.bb166
  br label %sw.epilog194, !dbg !2287

sw.epilog194:                                     ; preds = %sw.default193, %do.end192
  br label %sw.epilog337, !dbg !2288

sw.bb195:                                         ; preds = %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  br label %sw.epilog337, !dbg !2289

sw.default196:                                    ; preds = %if.end49
  call void @llvm.dbg.declare(metadata !{i64* %m}, metadata !2290), !dbg !2292
  call void @llvm.dbg.declare(metadata !{i8* %printable}, metadata !2293), !dbg !2294
  %120 = load i8* %unibyte_locale, align 1, !dbg !2295
  %tobool197 = trunc i8 %120 to i1, !dbg !2295
  br i1 %tobool197, label %if.then198, label %if.else, !dbg !2295

if.then198:                                       ; preds = %sw.default196
  store i64 1, i64* %m, align 8, !dbg !2297
  %121 = load i8* %c, align 1, !dbg !2299
  %conv199 = zext i8 %121 to i32, !dbg !2299
  %idxprom = sext i32 %conv199 to i64, !dbg !2299
  %call200 = call i16** @__ctype_b_loc() #1, !dbg !2299
  %122 = load i16** %call200, align 8, !dbg !2299
  %arrayidx201 = getelementptr inbounds i16* %122, i64 %idxprom, !dbg !2299
  %123 = load i16* %arrayidx201, align 2, !dbg !2299
  %conv202 = zext i16 %123 to i32, !dbg !2299
  %and = and i32 %conv202, 16384, !dbg !2299
  %cmp203 = icmp ne i32 %and, 0, !dbg !2299
  %frombool205 = zext i1 %cmp203 to i8, !dbg !2299
  store i8 %frombool205, i8* %printable, align 1, !dbg !2299
  br label %if.end264, !dbg !2300

if.else:                                          ; preds = %sw.default196
  call void @llvm.dbg.declare(metadata !{%struct.__mbstate_t* %mbstate}, metadata !2301), !dbg !2317
  %124 = bitcast %struct.__mbstate_t* %mbstate to i8*, !dbg !2318
  call void @llvm.memset.p0i8.i64(i8* %124, i8 0, i64 8, i32 4, i1 false), !dbg !2318
  store i64 0, i64* %m, align 8, !dbg !2319
  store i8 1, i8* %printable, align 1, !dbg !2320
  %125 = load i64* %argsize.addr, align 8, !dbg !2321
  %cmp206 = icmp eq i64 %125, -1, !dbg !2321
  br i1 %cmp206, label %if.then208, label %if.end210, !dbg !2321

if.then208:                                       ; preds = %if.else
  %126 = load i8** %arg.addr, align 8, !dbg !2323
  %call209 = call i64 @strlen(i8* %126) #12, !dbg !2323
  store i64 %call209, i64* %argsize.addr, align 8, !dbg !2323
  br label %if.end210, !dbg !2323

if.end210:                                        ; preds = %if.then208, %if.else
  br label %do.body211, !dbg !2324

do.body211:                                       ; preds = %do.cond, %if.end210
  call void @llvm.dbg.declare(metadata !{i32* %w}, metadata !2325), !dbg !2328
  call void @llvm.dbg.declare(metadata !{i64* %bytes}, metadata !2329), !dbg !2330
  %127 = load i64* %i, align 8, !dbg !2330
  %128 = load i64* %m, align 8, !dbg !2330
  %add212 = add i64 %127, %128, !dbg !2330
  %129 = load i8** %arg.addr, align 8, !dbg !2330
  %arrayidx213 = getelementptr inbounds i8* %129, i64 %add212, !dbg !2330
  %130 = load i64* %argsize.addr, align 8, !dbg !2330
  %131 = load i64* %i, align 8, !dbg !2330
  %132 = load i64* %m, align 8, !dbg !2330
  %add214 = add i64 %131, %132, !dbg !2330
  %sub = sub i64 %130, %add214, !dbg !2330
  %call215 = call i64 @mbrtowc(i32* %w, i8* %arrayidx213, i64 %sub, %struct.__mbstate_t* %mbstate) #9, !dbg !2330
  store i64 %call215, i64* %bytes, align 8, !dbg !2330
  %133 = load i64* %bytes, align 8, !dbg !2331
  %cmp216 = icmp eq i64 %133, 0, !dbg !2331
  br i1 %cmp216, label %if.then218, label %if.else219, !dbg !2331

if.then218:                                       ; preds = %do.body211
  br label %do.end263, !dbg !2333

if.else219:                                       ; preds = %do.body211
  %134 = load i64* %bytes, align 8, !dbg !2334
  %cmp220 = icmp eq i64 %134, -1, !dbg !2334
  br i1 %cmp220, label %if.then222, label %if.else223, !dbg !2334

if.then222:                                       ; preds = %if.else219
  store i8 0, i8* %printable, align 1, !dbg !2336
  br label %do.end263, !dbg !2338

if.else223:                                       ; preds = %if.else219
  %135 = load i64* %bytes, align 8, !dbg !2339
  %cmp224 = icmp eq i64 %135, -2, !dbg !2339
  br i1 %cmp224, label %if.then226, label %if.else235, !dbg !2339

if.then226:                                       ; preds = %if.else223
  store i8 0, i8* %printable, align 1, !dbg !2341
  br label %while.cond, !dbg !2343

while.cond:                                       ; preds = %while.body, %if.then226
  %136 = load i64* %i, align 8, !dbg !2343
  %137 = load i64* %m, align 8, !dbg !2343
  %add227 = add i64 %136, %137, !dbg !2343
  %138 = load i64* %argsize.addr, align 8, !dbg !2343
  %cmp228 = icmp ult i64 %add227, %138, !dbg !2343
  br i1 %cmp228, label %land.rhs, label %land.end, !dbg !2343

land.rhs:                                         ; preds = %while.cond
  %139 = load i64* %i, align 8, !dbg !2343
  %140 = load i64* %m, align 8, !dbg !2343
  %add230 = add i64 %139, %140, !dbg !2343
  %141 = load i8** %arg.addr, align 8, !dbg !2343
  %arrayidx231 = getelementptr inbounds i8* %141, i64 %add230, !dbg !2343
  %142 = load i8* %arrayidx231, align 1, !dbg !2343
  %conv232 = sext i8 %142 to i32, !dbg !2343
  %tobool233 = icmp ne i32 %conv232, 0, !dbg !2343
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %143 = phi i1 [ false, %while.cond ], [ %tobool233, %land.rhs ]
  br i1 %143, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %144 = load i64* %m, align 8, !dbg !2344
  %inc234 = add i64 %144, 1, !dbg !2344
  store i64 %inc234, i64* %m, align 8, !dbg !2344
  br label %while.cond, !dbg !2344

while.end:                                        ; preds = %land.end
  br label %do.end263, !dbg !2345

if.else235:                                       ; preds = %if.else223
  %145 = load i32* %quoting_style.addr, align 4, !dbg !2346
  %cmp236 = icmp eq i32 %145, 1, !dbg !2346
  br i1 %cmp236, label %if.then238, label %if.end252, !dbg !2346

if.then238:                                       ; preds = %if.else235
  call void @llvm.dbg.declare(metadata !{i64* %j}, metadata !2349), !dbg !2351
  store i64 1, i64* %j, align 8, !dbg !2352
  br label %for.cond239, !dbg !2352

for.cond239:                                      ; preds = %for.inc249, %if.then238
  %146 = load i64* %j, align 8, !dbg !2352
  %147 = load i64* %bytes, align 8, !dbg !2352
  %cmp240 = icmp ult i64 %146, %147, !dbg !2352
  br i1 %cmp240, label %for.body242, label %for.end251, !dbg !2352

for.body242:                                      ; preds = %for.cond239
  %148 = load i64* %i, align 8, !dbg !2354
  %149 = load i64* %m, align 8, !dbg !2354
  %add243 = add i64 %148, %149, !dbg !2354
  %150 = load i64* %j, align 8, !dbg !2354
  %add244 = add i64 %add243, %150, !dbg !2354
  %151 = load i8** %arg.addr, align 8, !dbg !2354
  %arrayidx245 = getelementptr inbounds i8* %151, i64 %add244, !dbg !2354
  %152 = load i8* %arrayidx245, align 1, !dbg !2354
  %conv246 = sext i8 %152 to i32, !dbg !2354
  switch i32 %conv246, label %sw.epilog248 [
    i32 91, label %sw.bb247
    i32 92, label %sw.bb247
    i32 94, label %sw.bb247
    i32 96, label %sw.bb247
    i32 124, label %sw.bb247
  ], !dbg !2354

sw.bb247:                                         ; preds = %for.body242, %for.body242, %for.body242, %for.body242, %for.body242
  br label %use_shell_always_quoting_style, !dbg !2355

sw.epilog248:                                     ; preds = %for.body242
  br label %for.inc249, !dbg !2357

for.inc249:                                       ; preds = %sw.epilog248
  %153 = load i64* %j, align 8, !dbg !2352
  %inc250 = add i64 %153, 1, !dbg !2352
  store i64 %inc250, i64* %j, align 8, !dbg !2352
  br label %for.cond239, !dbg !2352

for.end251:                                       ; preds = %for.cond239
  br label %if.end252, !dbg !2358

if.end252:                                        ; preds = %for.end251, %if.else235
  %154 = load i32* %w, align 4, !dbg !2359
  %call253 = call i32 @iswprint(i32 %154) #9, !dbg !2359
  %tobool254 = icmp ne i32 %call253, 0, !dbg !2359
  br i1 %tobool254, label %if.end256, label %if.then255, !dbg !2359

if.then255:                                       ; preds = %if.end252
  store i8 0, i8* %printable, align 1, !dbg !2361
  br label %if.end256, !dbg !2361

if.end256:                                        ; preds = %if.then255, %if.end252
  %155 = load i64* %bytes, align 8, !dbg !2362
  %156 = load i64* %m, align 8, !dbg !2362
  %add257 = add i64 %156, %155, !dbg !2362
  store i64 %add257, i64* %m, align 8, !dbg !2362
  br label %if.end258

if.end258:                                        ; preds = %if.end256
  br label %if.end259

if.end259:                                        ; preds = %if.end258
  br label %if.end260

if.end260:                                        ; preds = %if.end259
  br label %do.cond, !dbg !2363

do.cond:                                          ; preds = %if.end260
  %call261 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #12, !dbg !2364
  %tobool262 = icmp ne i32 %call261, 0, !dbg !2364
  %lnot = xor i1 %tobool262, true, !dbg !2364
  br i1 %lnot, label %do.body211, label %do.end263, !dbg !2364

do.end263:                                        ; preds = %do.cond, %while.end, %if.then222, %if.then218
  br label %if.end264

if.end264:                                        ; preds = %do.end263, %if.then198
  %157 = load i64* %m, align 8, !dbg !2365
  %cmp265 = icmp ult i64 1, %157, !dbg !2365
  br i1 %cmp265, label %if.then271, label %lor.lhs.false, !dbg !2365

lor.lhs.false:                                    ; preds = %if.end264
  %158 = load i8* %backslash_escapes, align 1, !dbg !2365
  %tobool267 = trunc i8 %158 to i1, !dbg !2365
  br i1 %tobool267, label %land.lhs.true269, label %if.end336, !dbg !2365

land.lhs.true269:                                 ; preds = %lor.lhs.false
  %159 = load i8* %printable, align 1, !dbg !2365
  %tobool270 = trunc i8 %159 to i1, !dbg !2365
  br i1 %tobool270, label %if.end336, label %if.then271, !dbg !2365

if.then271:                                       ; preds = %land.lhs.true269, %if.end264
  call void @llvm.dbg.declare(metadata !{i64* %ilim}, metadata !2367), !dbg !2369
  %160 = load i64* %i, align 8, !dbg !2369
  %161 = load i64* %m, align 8, !dbg !2369
  %add272 = add i64 %160, %161, !dbg !2369
  store i64 %add272, i64* %ilim, align 8, !dbg !2369
  br label %for.cond273, !dbg !2370

for.cond273:                                      ; preds = %do.end332, %if.then271
  %162 = load i8* %backslash_escapes, align 1, !dbg !2372
  %tobool274 = trunc i8 %162 to i1, !dbg !2372
  br i1 %tobool274, label %land.lhs.true276, label %if.end318, !dbg !2372

land.lhs.true276:                                 ; preds = %for.cond273
  %163 = load i8* %printable, align 1, !dbg !2372
  %tobool277 = trunc i8 %163 to i1, !dbg !2372
  br i1 %tobool277, label %if.end318, label %if.then278, !dbg !2372

if.then278:                                       ; preds = %land.lhs.true276
  br label %do.body279, !dbg !2375

do.body279:                                       ; preds = %if.then278
  %164 = load i64* %len, align 8, !dbg !2377
  %165 = load i64* %buffersize.addr, align 8, !dbg !2377
  %cmp280 = icmp ult i64 %164, %165, !dbg !2377
  br i1 %cmp280, label %if.then282, label %if.end284, !dbg !2377

if.then282:                                       ; preds = %do.body279
  %166 = load i64* %len, align 8, !dbg !2377
  %167 = load i8** %buffer.addr, align 8, !dbg !2377
  %arrayidx283 = getelementptr inbounds i8* %167, i64 %166, !dbg !2377
  store i8 92, i8* %arrayidx283, align 1, !dbg !2377
  br label %if.end284, !dbg !2377

if.end284:                                        ; preds = %if.then282, %do.body279
  %168 = load i64* %len, align 8, !dbg !2380
  %inc285 = add i64 %168, 1, !dbg !2380
  store i64 %inc285, i64* %len, align 8, !dbg !2380
  br label %do.end287, !dbg !2380

do.end287:                                        ; preds = %if.end284
  br label %do.body288, !dbg !2381

do.body288:                                       ; preds = %do.end287
  %169 = load i64* %len, align 8, !dbg !2382
  %170 = load i64* %buffersize.addr, align 8, !dbg !2382
  %cmp289 = icmp ult i64 %169, %170, !dbg !2382
  br i1 %cmp289, label %if.then291, label %if.end296, !dbg !2382

if.then291:                                       ; preds = %do.body288
  %171 = load i8* %c, align 1, !dbg !2382
  %conv292 = zext i8 %171 to i32, !dbg !2382
  %shr = ashr i32 %conv292, 6, !dbg !2382
  %add293 = add nsw i32 48, %shr, !dbg !2382
  %conv294 = trunc i32 %add293 to i8, !dbg !2382
  %172 = load i64* %len, align 8, !dbg !2382
  %173 = load i8** %buffer.addr, align 8, !dbg !2382
  %arrayidx295 = getelementptr inbounds i8* %173, i64 %172, !dbg !2382
  store i8 %conv294, i8* %arrayidx295, align 1, !dbg !2382
  br label %if.end296, !dbg !2382

if.end296:                                        ; preds = %if.then291, %do.body288
  %174 = load i64* %len, align 8, !dbg !2385
  %inc297 = add i64 %174, 1, !dbg !2385
  store i64 %inc297, i64* %len, align 8, !dbg !2385
  br label %do.end299, !dbg !2385

do.end299:                                        ; preds = %if.end296
  br label %do.body300, !dbg !2386

do.body300:                                       ; preds = %do.end299
  %175 = load i64* %len, align 8, !dbg !2387
  %176 = load i64* %buffersize.addr, align 8, !dbg !2387
  %cmp301 = icmp ult i64 %175, %176, !dbg !2387
  br i1 %cmp301, label %if.then303, label %if.end310, !dbg !2387

if.then303:                                       ; preds = %do.body300
  %177 = load i8* %c, align 1, !dbg !2387
  %conv304 = zext i8 %177 to i32, !dbg !2387
  %shr305 = ashr i32 %conv304, 3, !dbg !2387
  %and306 = and i32 %shr305, 7, !dbg !2387
  %add307 = add nsw i32 48, %and306, !dbg !2387
  %conv308 = trunc i32 %add307 to i8, !dbg !2387
  %178 = load i64* %len, align 8, !dbg !2387
  %179 = load i8** %buffer.addr, align 8, !dbg !2387
  %arrayidx309 = getelementptr inbounds i8* %179, i64 %178, !dbg !2387
  store i8 %conv308, i8* %arrayidx309, align 1, !dbg !2387
  br label %if.end310, !dbg !2387

if.end310:                                        ; preds = %if.then303, %do.body300
  %180 = load i64* %len, align 8, !dbg !2390
  %inc311 = add i64 %180, 1, !dbg !2390
  store i64 %inc311, i64* %len, align 8, !dbg !2390
  br label %do.end313, !dbg !2390

do.end313:                                        ; preds = %if.end310
  %181 = load i8* %c, align 1, !dbg !2391
  %conv314 = zext i8 %181 to i32, !dbg !2391
  %and315 = and i32 %conv314, 7, !dbg !2391
  %add316 = add nsw i32 48, %and315, !dbg !2391
  %conv317 = trunc i32 %add316 to i8, !dbg !2391
  store i8 %conv317, i8* %c, align 1, !dbg !2391
  br label %if.end318, !dbg !2392

if.end318:                                        ; preds = %do.end313, %land.lhs.true276, %for.cond273
  %182 = load i64* %ilim, align 8, !dbg !2393
  %183 = load i64* %i, align 8, !dbg !2393
  %add319 = add i64 %183, 1, !dbg !2393
  %cmp320 = icmp ule i64 %182, %add319, !dbg !2393
  br i1 %cmp320, label %if.then322, label %if.end323, !dbg !2393

if.then322:                                       ; preds = %if.end318
  br label %for.end335, !dbg !2395

if.end323:                                        ; preds = %if.end318
  br label %do.body324, !dbg !2396

do.body324:                                       ; preds = %if.end323
  %184 = load i64* %len, align 8, !dbg !2397
  %185 = load i64* %buffersize.addr, align 8, !dbg !2397
  %cmp325 = icmp ult i64 %184, %185, !dbg !2397
  br i1 %cmp325, label %if.then327, label %if.end329, !dbg !2397

if.then327:                                       ; preds = %do.body324
  %186 = load i8* %c, align 1, !dbg !2397
  %187 = load i64* %len, align 8, !dbg !2397
  %188 = load i8** %buffer.addr, align 8, !dbg !2397
  %arrayidx328 = getelementptr inbounds i8* %188, i64 %187, !dbg !2397
  store i8 %186, i8* %arrayidx328, align 1, !dbg !2397
  br label %if.end329, !dbg !2397

if.end329:                                        ; preds = %if.then327, %do.body324
  %189 = load i64* %len, align 8, !dbg !2400
  %inc330 = add i64 %189, 1, !dbg !2400
  store i64 %inc330, i64* %len, align 8, !dbg !2400
  br label %do.end332, !dbg !2400

do.end332:                                        ; preds = %if.end329
  %190 = load i64* %i, align 8, !dbg !2401
  %inc333 = add i64 %190, 1, !dbg !2401
  store i64 %inc333, i64* %i, align 8, !dbg !2401
  %191 = load i8** %arg.addr, align 8, !dbg !2401
  %arrayidx334 = getelementptr inbounds i8* %191, i64 %inc333, !dbg !2401
  %192 = load i8* %arrayidx334, align 1, !dbg !2401
  store i8 %192, i8* %c, align 1, !dbg !2401
  br label %for.cond273, !dbg !2402

for.end335:                                       ; preds = %if.then322
  br label %store_c, !dbg !2403

if.end336:                                        ; preds = %land.lhs.true269, %lor.lhs.false
  br label %sw.epilog337, !dbg !2404

sw.epilog337:                                     ; preds = %if.end336, %sw.bb195, %sw.epilog194, %if.end165, %if.then159, %if.then154, %if.end142, %sw.epilog127, %if.end79
  %193 = load i8* %backslash_escapes, align 1, !dbg !2405
  %tobool338 = trunc i8 %193 to i1, !dbg !2405
  br i1 %tobool338, label %land.lhs.true340, label %if.then346, !dbg !2405

land.lhs.true340:                                 ; preds = %sw.epilog337
  %194 = load i8* %c, align 1, !dbg !2405
  %conv341 = zext i8 %194 to i64, !dbg !2405
  %div = udiv i64 %conv341, 32, !dbg !2405
  %195 = load %struct.quoting_options** %o.addr, align 8, !dbg !2405
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %195, i32 0, i32 1, !dbg !2405
  %arrayidx342 = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i64 %div, !dbg !2405
  %196 = load i32* %arrayidx342, align 4, !dbg !2405
  %197 = load i8* %c, align 1, !dbg !2405
  %conv343 = zext i8 %197 to i64, !dbg !2405
  %rem = urem i64 %conv343, 32, !dbg !2405
  %sh_prom = trunc i64 %rem to i32, !dbg !2405
  %shl = shl i32 1, %sh_prom, !dbg !2405
  %and344 = and i32 %196, %shl, !dbg !2405
  %tobool345 = icmp ne i32 %and344, 0, !dbg !2405
  br i1 %tobool345, label %if.end347, label %if.then346, !dbg !2405

if.then346:                                       ; preds = %land.lhs.true340, %sw.epilog337
  br label %store_c, !dbg !2407

if.end347:                                        ; preds = %land.lhs.true340
  br label %store_escape, !dbg !2407

store_escape:                                     ; preds = %if.end347, %if.then141
  br label %do.body348, !dbg !2408

do.body348:                                       ; preds = %store_escape
  %198 = load i64* %len, align 8, !dbg !2409
  %199 = load i64* %buffersize.addr, align 8, !dbg !2409
  %cmp349 = icmp ult i64 %198, %199, !dbg !2409
  br i1 %cmp349, label %if.then351, label %if.end353, !dbg !2409

if.then351:                                       ; preds = %do.body348
  %200 = load i64* %len, align 8, !dbg !2409
  %201 = load i8** %buffer.addr, align 8, !dbg !2409
  %arrayidx352 = getelementptr inbounds i8* %201, i64 %200, !dbg !2409
  store i8 92, i8* %arrayidx352, align 1, !dbg !2409
  br label %if.end353, !dbg !2409

if.end353:                                        ; preds = %if.then351, %do.body348
  %202 = load i64* %len, align 8, !dbg !2412
  %inc354 = add i64 %202, 1, !dbg !2412
  store i64 %inc354, i64* %len, align 8, !dbg !2412
  br label %do.end356, !dbg !2412

do.end356:                                        ; preds = %if.end353
  br label %store_c, !dbg !2412

store_c:                                          ; preds = %do.end356, %if.then346, %for.end335
  br label %do.body357, !dbg !2413

do.body357:                                       ; preds = %store_c
  %203 = load i64* %len, align 8, !dbg !2414
  %204 = load i64* %buffersize.addr, align 8, !dbg !2414
  %cmp358 = icmp ult i64 %203, %204, !dbg !2414
  br i1 %cmp358, label %if.then360, label %if.end362, !dbg !2414

if.then360:                                       ; preds = %do.body357
  %205 = load i8* %c, align 1, !dbg !2414
  %206 = load i64* %len, align 8, !dbg !2414
  %207 = load i8** %buffer.addr, align 8, !dbg !2414
  %arrayidx361 = getelementptr inbounds i8* %207, i64 %206, !dbg !2414
  store i8 %205, i8* %arrayidx361, align 1, !dbg !2414
  br label %if.end362, !dbg !2414

if.end362:                                        ; preds = %if.then360, %do.body357
  %208 = load i64* %len, align 8, !dbg !2417
  %inc363 = add i64 %208, 1, !dbg !2417
  store i64 %inc363, i64* %len, align 8, !dbg !2417
  br label %do.end365, !dbg !2417

do.end365:                                        ; preds = %if.end362
  br label %for.inc366, !dbg !2418

for.inc366:                                       ; preds = %do.end365
  %209 = load i64* %i, align 8, !dbg !2173
  %inc367 = add i64 %209, 1, !dbg !2173
  store i64 %inc367, i64* %i, align 8, !dbg !2173
  br label %for.cond22, !dbg !2173

for.end368:                                       ; preds = %cond.false, %cond.true
  %210 = load i64* %i, align 8, !dbg !2419
  %cmp369 = icmp eq i64 %210, 0, !dbg !2419
  br i1 %cmp369, label %land.lhs.true371, label %if.end375, !dbg !2419

land.lhs.true371:                                 ; preds = %for.end368
  %211 = load i32* %quoting_style.addr, align 4, !dbg !2419
  %cmp372 = icmp eq i32 %211, 1, !dbg !2419
  br i1 %cmp372, label %if.then374, label %if.end375, !dbg !2419

if.then374:                                       ; preds = %land.lhs.true371
  br label %use_shell_always_quoting_style, !dbg !2421

if.end375:                                        ; preds = %land.lhs.true371, %for.end368
  %212 = load i8** %quote_string, align 8, !dbg !2422
  %tobool376 = icmp ne i8* %212, null, !dbg !2422
  br i1 %tobool376, label %if.then377, label %if.end393, !dbg !2422

if.then377:                                       ; preds = %if.end375
  br label %for.cond378, !dbg !2424

for.cond378:                                      ; preds = %for.inc390, %if.then377
  %213 = load i8** %quote_string, align 8, !dbg !2424
  %214 = load i8* %213, align 1, !dbg !2424
  %tobool379 = icmp ne i8 %214, 0, !dbg !2424
  br i1 %tobool379, label %for.body380, label %for.end392, !dbg !2424

for.body380:                                      ; preds = %for.cond378
  br label %do.body381, !dbg !2426

do.body381:                                       ; preds = %for.body380
  %215 = load i64* %len, align 8, !dbg !2427
  %216 = load i64* %buffersize.addr, align 8, !dbg !2427
  %cmp382 = icmp ult i64 %215, %216, !dbg !2427
  br i1 %cmp382, label %if.then384, label %if.end386, !dbg !2427

if.then384:                                       ; preds = %do.body381
  %217 = load i8** %quote_string, align 8, !dbg !2427
  %218 = load i8* %217, align 1, !dbg !2427
  %219 = load i64* %len, align 8, !dbg !2427
  %220 = load i8** %buffer.addr, align 8, !dbg !2427
  %arrayidx385 = getelementptr inbounds i8* %220, i64 %219, !dbg !2427
  store i8 %218, i8* %arrayidx385, align 1, !dbg !2427
  br label %if.end386, !dbg !2427

if.end386:                                        ; preds = %if.then384, %do.body381
  %221 = load i64* %len, align 8, !dbg !2430
  %inc387 = add i64 %221, 1, !dbg !2430
  store i64 %inc387, i64* %len, align 8, !dbg !2430
  br label %do.end389, !dbg !2430

do.end389:                                        ; preds = %if.end386
  br label %for.inc390, !dbg !2430

for.inc390:                                       ; preds = %do.end389
  %222 = load i8** %quote_string, align 8, !dbg !2424
  %incdec.ptr391 = getelementptr inbounds i8* %222, i32 1, !dbg !2424
  store i8* %incdec.ptr391, i8** %quote_string, align 8, !dbg !2424
  br label %for.cond378, !dbg !2424

for.end392:                                       ; preds = %for.cond378
  br label %if.end393, !dbg !2426

if.end393:                                        ; preds = %for.end392, %if.end375
  %223 = load i64* %len, align 8, !dbg !2431
  %224 = load i64* %buffersize.addr, align 8, !dbg !2431
  %cmp394 = icmp ult i64 %223, %224, !dbg !2431
  br i1 %cmp394, label %if.then396, label %if.end398, !dbg !2431

if.then396:                                       ; preds = %if.end393
  %225 = load i64* %len, align 8, !dbg !2433
  %226 = load i8** %buffer.addr, align 8, !dbg !2433
  %arrayidx397 = getelementptr inbounds i8* %226, i64 %225, !dbg !2433
  store i8 0, i8* %arrayidx397, align 1, !dbg !2433
  br label %if.end398, !dbg !2433

if.end398:                                        ; preds = %if.then396, %if.end393
  %227 = load i64* %len, align 8, !dbg !2434
  store i64 %227, i64* %retval, !dbg !2434
  br label %return, !dbg !2434

use_shell_always_quoting_style:                   ; preds = %if.then374, %sw.bb247, %sw.bb167, %if.then164, %if.then138, %sw.bb81
  %228 = load i8** %buffer.addr, align 8, !dbg !2435
  %229 = load i64* %buffersize.addr, align 8, !dbg !2435
  %230 = load i8** %arg.addr, align 8, !dbg !2435
  %231 = load i64* %argsize.addr, align 8, !dbg !2435
  %232 = load %struct.quoting_options** %o.addr, align 8, !dbg !2435
  %call399 = call i64 @quotearg_buffer_restyled(i8* %228, i64 %229, i8* %230, i64 %231, i32 2, %struct.quoting_options* %232), !dbg !2435
  store i64 %call399, i64* %retval, !dbg !2435
  br label %return, !dbg !2435

return:                                           ; preds = %use_shell_always_quoting_style, %if.end398
  %233 = load i64* %retval, !dbg !2436
  ret i64 %233, !dbg !2436
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
  call void @llvm.dbg.declare(metadata !{i32* %n.addr}, metadata !2437), !dbg !2438
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %arg.addr}, metadata !2439), !dbg !2438
  store i64 %argsize, i64* %argsize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %argsize.addr}, metadata !2440), !dbg !2438
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options** %options.addr}, metadata !2441), !dbg !2442
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !2443), !dbg !2444
  %call = call i32* @__errno_location() #1, !dbg !2444
  %0 = load i32* %call, align 4, !dbg !2444
  store i32 %0, i32* %e, align 4, !dbg !2444
  call void @llvm.dbg.declare(metadata !{i32* %n0}, metadata !2445), !dbg !2446
  %1 = load i32* %n.addr, align 4, !dbg !2446
  store i32 %1, i32* %n0, align 4, !dbg !2446
  %2 = load i32* %n.addr, align 4, !dbg !2447
  %cmp = icmp slt i32 %2, 0, !dbg !2447
  br i1 %cmp, label %if.then, label %if.end, !dbg !2447

if.then:                                          ; preds = %entry
  call void @abort() #11, !dbg !2449
  unreachable, !dbg !2449

if.end:                                           ; preds = %entry
  %3 = load i32* @quotearg_n_options.nslots, align 4, !dbg !2450
  %4 = load i32* %n0, align 4, !dbg !2450
  %cmp1 = icmp ule i32 %3, %4, !dbg !2450
  br i1 %cmp1, label %if.then2, label %if.end16, !dbg !2450

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{i32* %n1}, metadata !2452), !dbg !2454
  %5 = load i32* %n0, align 4, !dbg !2454
  %add = add i32 %5, 1, !dbg !2454
  store i32 %add, i32* %n1, align 4, !dbg !2454
  %6 = load i32* %n1, align 4, !dbg !2455
  %conv = zext i32 %6 to i64, !dbg !2455
  %cmp3 = icmp ult i64 1152921504606846975, %conv, !dbg !2455
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !2455

if.then5:                                         ; preds = %if.then2
  call void @xalloc_die() #13, !dbg !2457
  unreachable, !dbg !2457

if.end6:                                          ; preds = %if.then2
  %7 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2458
  %cmp7 = icmp eq %struct.slotvec* %7, @quotearg_n_options.slotvec0, !dbg !2458
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !2458

if.then9:                                         ; preds = %if.end6
  %call10 = call i8* @xmalloc(i64 16), !dbg !2460
  %8 = bitcast i8* %call10 to %struct.slotvec*, !dbg !2460
  store %struct.slotvec* %8, %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2460
  %9 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2462
  %10 = bitcast %struct.slotvec* %9 to i8*, !dbg !2462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast (%struct.slotvec* @quotearg_n_options.slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !2462
  br label %if.end11, !dbg !2463

if.end11:                                         ; preds = %if.then9, %if.end6
  %11 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2464
  %12 = bitcast %struct.slotvec* %11 to i8*, !dbg !2464
  %13 = load i32* %n1, align 4, !dbg !2464
  %conv12 = zext i32 %13 to i64, !dbg !2464
  %mul = mul i64 %conv12, 16, !dbg !2464
  %call13 = call i8* @xrealloc(i8* %12, i64 %mul), !dbg !2464
  %14 = bitcast i8* %call13 to %struct.slotvec*, !dbg !2464
  store %struct.slotvec* %14, %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2464
  %15 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2465
  %16 = load i32* @quotearg_n_options.nslots, align 4, !dbg !2465
  %idx.ext = zext i32 %16 to i64, !dbg !2465
  %add.ptr = getelementptr inbounds %struct.slotvec* %15, i64 %idx.ext, !dbg !2465
  %17 = bitcast %struct.slotvec* %add.ptr to i8*, !dbg !2465
  %18 = load i32* %n1, align 4, !dbg !2465
  %19 = load i32* @quotearg_n_options.nslots, align 4, !dbg !2465
  %sub = sub i32 %18, %19, !dbg !2465
  %conv14 = zext i32 %sub to i64, !dbg !2465
  %mul15 = mul i64 %conv14, 16, !dbg !2465
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 %mul15, i32 8, i1 false), !dbg !2465
  %20 = load i32* %n1, align 4, !dbg !2466
  store i32 %20, i32* @quotearg_n_options.nslots, align 4, !dbg !2466
  br label %if.end16, !dbg !2467

if.end16:                                         ; preds = %if.end11, %if.end
  call void @llvm.dbg.declare(metadata !{i64* %size}, metadata !2468), !dbg !2470
  %21 = load i32* %n.addr, align 4, !dbg !2470
  %idxprom = sext i32 %21 to i64, !dbg !2470
  %22 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2470
  %arrayidx = getelementptr inbounds %struct.slotvec* %22, i64 %idxprom, !dbg !2470
  %size17 = getelementptr inbounds %struct.slotvec* %arrayidx, i32 0, i32 0, !dbg !2470
  %23 = load i64* %size17, align 8, !dbg !2470
  store i64 %23, i64* %size, align 8, !dbg !2470
  call void @llvm.dbg.declare(metadata !{i8** %val}, metadata !2471), !dbg !2472
  %24 = load i32* %n.addr, align 4, !dbg !2472
  %idxprom18 = sext i32 %24 to i64, !dbg !2472
  %25 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2472
  %arrayidx19 = getelementptr inbounds %struct.slotvec* %25, i64 %idxprom18, !dbg !2472
  %val20 = getelementptr inbounds %struct.slotvec* %arrayidx19, i32 0, i32 1, !dbg !2472
  %26 = load i8** %val20, align 8, !dbg !2472
  store i8* %26, i8** %val, align 8, !dbg !2472
  call void @llvm.dbg.declare(metadata !{i64* %qsize}, metadata !2473), !dbg !2474
  %27 = load i8** %val, align 8, !dbg !2474
  %28 = load i64* %size, align 8, !dbg !2474
  %29 = load i8** %arg.addr, align 8, !dbg !2474
  %30 = load i64* %argsize.addr, align 8, !dbg !2474
  %31 = load %struct.quoting_options** %options.addr, align 8, !dbg !2474
  %call21 = call i64 @quotearg_buffer(i8* %27, i64 %28, i8* %29, i64 %30, %struct.quoting_options* %31), !dbg !2474
  store i64 %call21, i64* %qsize, align 8, !dbg !2474
  %32 = load i64* %size, align 8, !dbg !2475
  %33 = load i64* %qsize, align 8, !dbg !2475
  %cmp22 = icmp ule i64 %32, %33, !dbg !2475
  br i1 %cmp22, label %if.then24, label %if.end38, !dbg !2475

if.then24:                                        ; preds = %if.end16
  %34 = load i64* %qsize, align 8, !dbg !2477
  %add25 = add i64 %34, 1, !dbg !2477
  store i64 %add25, i64* %size, align 8, !dbg !2477
  %35 = load i32* %n.addr, align 4, !dbg !2477
  %idxprom26 = sext i32 %35 to i64, !dbg !2477
  %36 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2477
  %arrayidx27 = getelementptr inbounds %struct.slotvec* %36, i64 %idxprom26, !dbg !2477
  %size28 = getelementptr inbounds %struct.slotvec* %arrayidx27, i32 0, i32 0, !dbg !2477
  store i64 %add25, i64* %size28, align 8, !dbg !2477
  %37 = load i8** %val, align 8, !dbg !2479
  %cmp29 = icmp ne i8* %37, getelementptr inbounds ([256 x i8]* @quotearg_n_options.slot0, i32 0, i32 0), !dbg !2479
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2479

if.then31:                                        ; preds = %if.then24
  %38 = load i8** %val, align 8, !dbg !2481
  call void @free(i8* %38) #9, !dbg !2481
  br label %if.end32, !dbg !2481

if.end32:                                         ; preds = %if.then31, %if.then24
  %39 = load i64* %size, align 8, !dbg !2482
  %call33 = call i8* @xmalloc(i64 %39), !dbg !2482
  store i8* %call33, i8** %val, align 8, !dbg !2482
  %40 = load i32* %n.addr, align 4, !dbg !2482
  %idxprom34 = sext i32 %40 to i64, !dbg !2482
  %41 = load %struct.slotvec** @quotearg_n_options.slotvec, align 8, !dbg !2482
  %arrayidx35 = getelementptr inbounds %struct.slotvec* %41, i64 %idxprom34, !dbg !2482
  %val36 = getelementptr inbounds %struct.slotvec* %arrayidx35, i32 0, i32 1, !dbg !2482
  store i8* %call33, i8** %val36, align 8, !dbg !2482
  %42 = load i8** %val, align 8, !dbg !2483
  %43 = load i64* %size, align 8, !dbg !2483
  %44 = load i8** %arg.addr, align 8, !dbg !2483
  %45 = load i64* %argsize.addr, align 8, !dbg !2483
  %46 = load %struct.quoting_options** %options.addr, align 8, !dbg !2483
  %call37 = call i64 @quotearg_buffer(i8* %42, i64 %43, i8* %44, i64 %45, %struct.quoting_options* %46), !dbg !2483
  br label %if.end38, !dbg !2484

if.end38:                                         ; preds = %if.end32, %if.end16
  %47 = load i32* %e, align 4, !dbg !2485
  %call39 = call i32* @__errno_location() #1, !dbg !2485
  store i32 %47, i32* %call39, align 4, !dbg !2485
  %48 = load i8** %val, align 8, !dbg !2486
  ret i8* %48, !dbg !2486
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #0 {
entry:
  %style.addr = alloca i32, align 4
  %o = alloca %struct.quoting_options, align 4
  store i32 %style, i32* %style.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %style.addr}, metadata !2487), !dbg !2488
  call void @llvm.dbg.declare(metadata !{%struct.quoting_options* %o}, metadata !2489), !dbg !2490
  %0 = load i32* %style.addr, align 4, !dbg !2491
  %style1 = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 0, !dbg !2491
  store i32 %0, i32* %style1, align 4, !dbg !2491
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 1, !dbg !2492
  %1 = bitcast [8 x i32]* %quote_these_too to i8*, !dbg !2492
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 4, i1 false), !dbg !2492
  %2 = bitcast %struct.quoting_options* %agg.result to i8*, !dbg !2493
  %3 = bitcast %struct.quoting_options* %o to i8*, !dbg !2493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 36, i32 4, i1 false), !dbg !2493
  ret void, !dbg !2493
}

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %msgid.addr}, metadata !2494), !dbg !2495
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %s.addr}, metadata !2496), !dbg !2495
  call void @llvm.dbg.declare(metadata !{i8** %translation}, metadata !2497), !dbg !2498
  %0 = load i8** %msgid.addr, align 8, !dbg !2498
  store i8* %0, i8** %translation, align 8, !dbg !2498
  %1 = load i8** %translation, align 8, !dbg !2499
  %2 = load i8** %msgid.addr, align 8, !dbg !2499
  %cmp = icmp eq i8* %1, %2, !dbg !2499
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2499

land.lhs.true:                                    ; preds = %entry
  %3 = load i32* %s.addr, align 4, !dbg !2499
  %cmp1 = icmp eq i32 %3, 6, !dbg !2499
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2499

if.then:                                          ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([2 x i8]* @.str783, i32 0, i32 0), i8** %translation, align 8, !dbg !2501
  br label %if.end, !dbg !2501

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8** %translation, align 8, !dbg !2502
  ret i8* %4, !dbg !2502
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
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !2503), !dbg !2504
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %command_name.addr}, metadata !2505), !dbg !2506
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %package.addr}, metadata !2507), !dbg !2506
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %version.addr}, metadata !2508), !dbg !2509
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct.__va_list_tag** %authors.addr}, metadata !2510), !dbg !2509
  call void @llvm.dbg.declare(metadata !{i64* %n_authors}, metadata !2511), !dbg !2512
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %tmp_authors}, metadata !2513), !dbg !2519
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !2520
  %0 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2520
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2520
  %2 = bitcast %struct.__va_list_tag* %0 to i8*, !dbg !2520
  call void @llvm.va_copy(i8* %1, i8* %2), !dbg !2520
  store i64 0, i64* %n_authors, align 8, !dbg !2521
  br label %while.cond, !dbg !2522

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !2522
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 0, !dbg !2522
  %gp_offset = load i32* %gp_offset_p, !dbg !2522
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !2522
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !2522

vaarg.in_reg:                                     ; preds = %while.cond
  %3 = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 3, !dbg !2522
  %reg_save_area = load i8** %3, !dbg !2522
  %4 = getelementptr i8* %reg_save_area, i32 %gp_offset, !dbg !2522
  %5 = bitcast i8* %4 to i8**, !dbg !2522
  %6 = add i32 %gp_offset, 8, !dbg !2522
  store i32 %6, i32* %gp_offset_p, !dbg !2522
  br label %vaarg.end, !dbg !2522

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 2, !dbg !2522
  %overflow_arg_area = load i8** %overflow_arg_area_p, !dbg !2522
  %7 = bitcast i8* %overflow_arg_area to i8**, !dbg !2522
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8, !dbg !2522
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !2522
  br label %vaarg.end, !dbg !2522

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ], !dbg !2522
  %8 = load i8** %vaarg.addr, !dbg !2522
  %cmp = icmp ne i8* %8, null, !dbg !2522
  br i1 %cmp, label %while.body, label %while.end, !dbg !2522

while.body:                                       ; preds = %vaarg.end
  %9 = load i64* %n_authors, align 8, !dbg !2523
  %inc = add i64 %9, 1, !dbg !2523
  store i64 %inc, i64* %n_authors, align 8, !dbg !2523
  br label %while.cond, !dbg !2523

while.end:                                        ; preds = %vaarg.end
  %10 = load i8** %command_name.addr, align 8, !dbg !2524
  %tobool = icmp ne i8* %10, null, !dbg !2524
  br i1 %tobool, label %if.then, label %if.else, !dbg !2524

if.then:                                          ; preds = %while.end
  %11 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2526
  %12 = load i8** %command_name.addr, align 8, !dbg !2526
  %13 = load i8** %package.addr, align 8, !dbg !2526
  %14 = load i8** %version.addr, align 8, !dbg !2526
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([12 x i8]* @.str191, i32 0, i32 0), i8* %12, i8* %13, i8* %14), !dbg !2526
  br label %if.end, !dbg !2526

if.else:                                          ; preds = %while.end
  %15 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2527
  %16 = load i8** %package.addr, align 8, !dbg !2527
  %17 = load i8** %version.addr, align 8, !dbg !2527
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8]* @.str292, i32 0, i32 0), i8* %16, i8* %17), !dbg !2527
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i64* %n_authors, align 8, !dbg !2528
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
  ], !dbg !2528

sw.bb:                                            ; preds = %if.end
  call void @abort() #11, !dbg !2529
  unreachable, !dbg !2529

sw.bb3:                                           ; preds = %if.end
  %19 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2531
  %20 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2531
  %call4 = call i32 @vfprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([16 x i8]* @.str393, i32 0, i32 0), %struct.__va_list_tag* %20), !dbg !2531
  br label %sw.epilog, !dbg !2532

sw.bb5:                                           ; preds = %if.end
  %21 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2533
  %22 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2533
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([23 x i8]* @.str494, i32 0, i32 0), %struct.__va_list_tag* %22), !dbg !2533
  br label %sw.epilog, !dbg !2534

sw.bb7:                                           ; preds = %if.end
  %23 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2535
  %24 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2535
  %call8 = call i32 @vfprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([28 x i8]* @.str595, i32 0, i32 0), %struct.__va_list_tag* %24), !dbg !2535
  br label %sw.epilog, !dbg !2536

sw.bb9:                                           ; preds = %if.end
  %25 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2537
  %26 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2537
  %call10 = call i32 @vfprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([32 x i8]* @.str696, i32 0, i32 0), %struct.__va_list_tag* %26), !dbg !2537
  br label %sw.epilog, !dbg !2538

sw.bb11:                                          ; preds = %if.end
  %27 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2539
  %28 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2539
  %call12 = call i32 @vfprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([36 x i8]* @.str797, i32 0, i32 0), %struct.__va_list_tag* %28), !dbg !2539
  br label %sw.epilog, !dbg !2540

sw.bb13:                                          ; preds = %if.end
  %29 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2541
  %30 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2541
  %call14 = call i32 @vfprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([40 x i8]* @.str898, i32 0, i32 0), %struct.__va_list_tag* %30), !dbg !2541
  br label %sw.epilog, !dbg !2542

sw.bb15:                                          ; preds = %if.end
  %31 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2543
  %32 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2543
  %call16 = call i32 @vfprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([44 x i8]* @.str999, i32 0, i32 0), %struct.__va_list_tag* %32), !dbg !2543
  br label %sw.epilog, !dbg !2544

sw.bb17:                                          ; preds = %if.end
  %33 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2545
  %34 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2545
  %call18 = call i32 @vfprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([48 x i8]* @.str10100, i32 0, i32 0), %struct.__va_list_tag* %34), !dbg !2545
  br label %sw.epilog, !dbg !2546

sw.bb19:                                          ; preds = %if.end
  %35 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2547
  %36 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2547
  %call20 = call i32 @vfprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([52 x i8]* @.str11101, i32 0, i32 0), %struct.__va_list_tag* %36), !dbg !2547
  br label %sw.epilog, !dbg !2548

sw.default:                                       ; preds = %if.end
  %37 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2549
  %38 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2549
  %call21 = call i32 @vfprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([60 x i8]* @.str12102, i32 0, i32 0), %struct.__va_list_tag* %38), !dbg !2549
  br label %sw.epilog, !dbg !2550

sw.epilog:                                        ; preds = %sw.default, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3
  %39 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !2551
  %40 = bitcast %struct.__va_list_tag* %39 to i8*, !dbg !2551
  call void @llvm.va_end(i8* %40), !dbg !2551
  %41 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2552
  %call22 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %41), !dbg !2552
  %42 = load i8** @version_etc_copyright, align 8, !dbg !2553
  %43 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2553
  %call23 = call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43), !dbg !2553
  %44 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2554
  %call24 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %44), !dbg !2554
  %45 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2555
  %call25 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([152 x i8]* @.str13103, i32 0, i32 0), %struct._IO_FILE* %45), !dbg !2555
  ret void, !dbg !2556
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
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !2557), !dbg !2558
  store i8* %command_name, i8** %command_name.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %command_name.addr}, metadata !2559), !dbg !2560
  store i8* %package, i8** %package.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %package.addr}, metadata !2561), !dbg !2560
  store i8* %version, i8** %version.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %version.addr}, metadata !2562), !dbg !2563
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %authors}, metadata !2564), !dbg !2565
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2566
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2566
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2566
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2567
  %1 = load i8** %command_name.addr, align 8, !dbg !2567
  %2 = load i8** %package.addr, align 8, !dbg !2567
  %3 = load i8** %version.addr, align 8, !dbg !2567
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !2567
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2), !dbg !2567
  ret void, !dbg !2568
}

; Function Attrs: noreturn nounwind uwtable
define void @xalloc_die() #10 {
entry:
  %0 = load volatile i32* @exit_failure, align 4, !dbg !2569
  call void (i32, i32, i8*, ...)* @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str106, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str1107, i32 0, i32 0)), !dbg !2569
  call void @abort() #11, !dbg !2570
  unreachable, !dbg !2570

return:                                           ; No predecessors!
  ret void, !dbg !2571
}

; Function Attrs: nounwind uwtable
define i8* @xnmalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2572), !dbg !2573
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2574), !dbg !2573
  %0 = load i64* %n.addr, align 8, !dbg !2575
  %1 = load i64* %s.addr, align 8, !dbg !2575
  %call = call i8* @xnmalloc_inline(i64 %0, i64 %1), !dbg !2575
  ret i8* %call, !dbg !2575
}

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2576), !dbg !2577
  %0 = load i64* %n.addr, align 8, !dbg !2578
  %call = call i8* @xnmalloc_inline(i64 %0, i64 1), !dbg !2578
  ret i8* %call, !dbg !2578
}

; Function Attrs: nounwind uwtable
define i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !2579), !dbg !2580
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2581), !dbg !2580
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2582), !dbg !2580
  %0 = load i8** %p.addr, align 8, !dbg !2583
  %1 = load i64* %n.addr, align 8, !dbg !2583
  %2 = load i64* %s.addr, align 8, !dbg !2583
  %call = call i8* @xnrealloc_inline(i8* %0, i64 %1, i64 %2), !dbg !2583
  ret i8* %call, !dbg !2583
}

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %p, i64 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !2584), !dbg !2585
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2586), !dbg !2585
  %0 = load i8** %p.addr, align 8, !dbg !2587
  %1 = load i64* %n.addr, align 8, !dbg !2587
  %call = call i8* @xnrealloc_inline(i8* %0, i64 %1, i64 1), !dbg !2587
  ret i8* %call, !dbg !2587
}

; Function Attrs: nounwind uwtable
define i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !2588), !dbg !2589
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !2590), !dbg !2589
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2591), !dbg !2589
  %0 = load i8** %p.addr, align 8, !dbg !2592
  %1 = load i64** %pn.addr, align 8, !dbg !2592
  %2 = load i64* %s.addr, align 8, !dbg !2592
  %call = call i8* @x2nrealloc_inline(i8* %0, i64* %1, i64 %2), !dbg !2592
  ret i8* %call, !dbg !2592
}

; Function Attrs: nounwind uwtable
define i8* @x2realloc(i8* %p, i64* %pn) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !2593), !dbg !2594
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !2595), !dbg !2594
  %0 = load i8** %p.addr, align 8, !dbg !2596
  %1 = load i64** %pn.addr, align 8, !dbg !2596
  %call = call i8* @x2nrealloc_inline(i8* %0, i64* %1, i64 1), !dbg !2596
  ret i8* %call, !dbg !2596
}

; Function Attrs: nounwind uwtable
define i8* @xzalloc(i64 %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2597), !dbg !2598
  %0 = load i64* %s.addr, align 8, !dbg !2599
  %call = call i8* @xmalloc(i64 %0), !dbg !2599
  %1 = load i64* %s.addr, align 8, !dbg !2599
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %1, i32 1, i1 false), !dbg !2599
  ret i8* %call, !dbg !2599
}

; Function Attrs: nounwind uwtable
define i8* @xcalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2600), !dbg !2601
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2602), !dbg !2601
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !2603), !dbg !2604
  %0 = load i64* %s.addr, align 8, !dbg !2605
  %div = udiv i64 -1, %0, !dbg !2605
  %1 = load i64* %n.addr, align 8, !dbg !2605
  %cmp = icmp ult i64 %div, %1, !dbg !2605
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2605

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64* %n.addr, align 8, !dbg !2605
  %3 = load i64* %s.addr, align 8, !dbg !2605
  %call = call noalias i8* @calloc(i64 %2, i64 %3) #9, !dbg !2605
  store i8* %call, i8** %p, align 8, !dbg !2605
  %tobool = icmp ne i8* %call, null, !dbg !2605
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2605

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i64* %n.addr, align 8, !dbg !2605
  %cmp1 = icmp ne i64 %4, 0, !dbg !2605
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2605

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @xalloc_die() #13, !dbg !2607
  unreachable, !dbg !2607

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i8** %p, align 8, !dbg !2608
  ret i8* %5, !dbg !2608
}

; Function Attrs: nounwind uwtable
define i8* @xmemdup(i8* %p, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !2609), !dbg !2610
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2611), !dbg !2610
  %0 = load i64* %s.addr, align 8, !dbg !2612
  %call = call i8* @xmalloc(i64 %0), !dbg !2612
  %1 = load i8** %p.addr, align 8, !dbg !2612
  %2 = load i64* %s.addr, align 8, !dbg !2612
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %1, i64 %2, i32 1, i1 false), !dbg !2612
  ret i8* %call, !dbg !2612
}

; Function Attrs: nounwind uwtable
define i8* @xstrdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %string.addr}, metadata !2613), !dbg !2614
  %0 = load i8** %string.addr, align 8, !dbg !2615
  %1 = load i8** %string.addr, align 8, !dbg !2615
  %call = call i64 @strlen(i8* %1) #12, !dbg !2615
  %add = add i64 %call, 1, !dbg !2615
  %call1 = call i8* @xmemdup(i8* %0, i64 %add), !dbg !2615
  ret i8* %call1, !dbg !2615
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @xnmalloc_inline(i64 %n, i64 %s) #8 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2616), !dbg !2617
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2618), !dbg !2617
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !2619), !dbg !2620
  %0 = load i64* %s.addr, align 8, !dbg !2621
  %div = udiv i64 -1, %0, !dbg !2621
  %1 = load i64* %n.addr, align 8, !dbg !2621
  %cmp = icmp ult i64 %div, %1, !dbg !2621
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2621

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64* %n.addr, align 8, !dbg !2621
  %3 = load i64* %s.addr, align 8, !dbg !2621
  %mul = mul i64 %2, %3, !dbg !2621
  %call = call noalias i8* @malloc(i64 %mul) #9, !dbg !2621
  store i8* %call, i8** %p, align 8, !dbg !2621
  %tobool = icmp ne i8* %call, null, !dbg !2621
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2621

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i64* %n.addr, align 8, !dbg !2621
  %cmp1 = icmp ne i64 %4, 0, !dbg !2621
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2621

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @xalloc_die() #13, !dbg !2623
  unreachable, !dbg !2623

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load i8** %p, align 8, !dbg !2624
  ret i8* %5, !dbg !2624
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @xnrealloc_inline(i8* %p, i64 %n, i64 %s) #8 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !2625), !dbg !2626
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2627), !dbg !2626
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2628), !dbg !2626
  %0 = load i64* %s.addr, align 8, !dbg !2629
  %div = udiv i64 -1, %0, !dbg !2629
  %1 = load i64* %n.addr, align 8, !dbg !2629
  %cmp = icmp ult i64 %div, %1, !dbg !2629
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2629

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8** %p.addr, align 8, !dbg !2629
  %3 = load i64* %n.addr, align 8, !dbg !2629
  %4 = load i64* %s.addr, align 8, !dbg !2629
  %mul = mul i64 %3, %4, !dbg !2629
  %call = call i8* @realloc(i8* %2, i64 %mul) #9, !dbg !2629
  store i8* %call, i8** %p.addr, align 8, !dbg !2629
  %tobool = icmp ne i8* %call, null, !dbg !2629
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2629

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i64* %n.addr, align 8, !dbg !2629
  %cmp1 = icmp ne i64 %5, 0, !dbg !2629
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2629

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @xalloc_die() #13, !dbg !2631
  unreachable, !dbg !2631

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i8** %p.addr, align 8, !dbg !2632
  ret i8* %6, !dbg !2632
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @x2nrealloc_inline(i8* %p, i64* %pn, i64 %s) #8 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %p.addr}, metadata !2633), !dbg !2634
  store i64* %pn, i64** %pn.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %pn.addr}, metadata !2635), !dbg !2634
  store i64 %s, i64* %s.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %s.addr}, metadata !2636), !dbg !2634
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !2637), !dbg !2638
  %0 = load i64** %pn.addr, align 8, !dbg !2638
  %1 = load i64* %0, align 8, !dbg !2638
  store i64 %1, i64* %n, align 8, !dbg !2638
  %2 = load i8** %p.addr, align 8, !dbg !2639
  %tobool = icmp ne i8* %2, null, !dbg !2639
  br i1 %tobool, label %if.else, label %if.then, !dbg !2639

if.then:                                          ; preds = %entry
  %3 = load i64* %n, align 8, !dbg !2641
  %tobool1 = icmp ne i64 %3, 0, !dbg !2641
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2641

if.then2:                                         ; preds = %if.then
  %4 = load i64* %s.addr, align 8, !dbg !2644
  %div = udiv i64 64, %4, !dbg !2644
  store i64 %div, i64* %n, align 8, !dbg !2644
  %5 = load i64* %n, align 8, !dbg !2646
  %tobool3 = icmp ne i64 %5, 0, !dbg !2646
  %lnot = xor i1 %tobool3, true, !dbg !2646
  %lnot.ext = zext i1 %lnot to i32, !dbg !2646
  %conv = sext i32 %lnot.ext to i64, !dbg !2646
  %6 = load i64* %n, align 8, !dbg !2646
  %add = add i64 %6, %conv, !dbg !2646
  store i64 %add, i64* %n, align 8, !dbg !2646
  br label %if.end, !dbg !2647

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end8, !dbg !2648

if.else:                                          ; preds = %entry
  %7 = load i64* %s.addr, align 8, !dbg !2649
  %div4 = udiv i64 9223372036854775807, %7, !dbg !2649
  %8 = load i64* %n, align 8, !dbg !2649
  %cmp = icmp ult i64 %div4, %8, !dbg !2649
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2649

if.then6:                                         ; preds = %if.else
  call void @xalloc_die() #13, !dbg !2652
  unreachable, !dbg !2652

if.end7:                                          ; preds = %if.else
  %9 = load i64* %n, align 8, !dbg !2653
  %mul = mul i64 %9, 2, !dbg !2653
  store i64 %mul, i64* %n, align 8, !dbg !2653
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %10 = load i64* %n, align 8, !dbg !2654
  %11 = load i64** %pn.addr, align 8, !dbg !2654
  store i64 %10, i64* %11, align 8, !dbg !2654
  %12 = load i8** %p.addr, align 8, !dbg !2655
  %13 = load i64* %n, align 8, !dbg !2655
  %14 = load i64* %s.addr, align 8, !dbg !2655
  %mul9 = mul i64 %13, %14, !dbg !2655
  %call = call i8* @xrealloc(i8* %12, i64 %mul9), !dbg !2655
  ret i8* %call, !dbg !2655
}

; Function Attrs: nounwind uwtable
define i8* @xstrndup(i8* %string, i64 %n) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8** %string.addr}, metadata !2656), !dbg !2657
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %n.addr}, metadata !2658), !dbg !2657
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !2659), !dbg !2660
  %0 = load i8** %string.addr, align 8, !dbg !2660
  %1 = load i64* %n.addr, align 8, !dbg !2660
  %call = call noalias i8* @strndup(i8* %0, i64 %1) #9, !dbg !2660
  store i8* %call, i8** %s, align 8, !dbg !2660
  %2 = load i8** %s, align 8, !dbg !2661
  %tobool = icmp ne i8* %2, null, !dbg !2661
  br i1 %tobool, label %if.end, label %if.then, !dbg !2661

if.then:                                          ; preds = %entry
  call void @xalloc_die() #13, !dbg !2663
  unreachable, !dbg !2663

if.end:                                           ; preds = %entry
  %3 = load i8** %s, align 8, !dbg !2664
  ret i8* %3, !dbg !2664
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @getndelim2(i8** %lineptr, i64* %linesize, i64 %offset, i64 %nmax, i32 %delim1, i32 %delim2, %struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i64, align 8
  %lineptr.addr = alloca i8**, align 8
  %linesize.addr = alloca i64*, align 8
  %offset.addr = alloca i64, align 8
  %nmax.addr = alloca i64, align 8
  %delim1.addr = alloca i32, align 4
  %delim2.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %nbytes_avail = alloca i64, align 8
  %read_pos = alloca i8*, align 8
  %bytes_stored = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %size = alloca i64, align 8
  %c = alloca i32, align 4
  %newsize = alloca i64, align 8
  %newptr = alloca i8*, align 8
  %newsizemax = alloca i64, align 8
  store i8** %lineptr, i8*** %lineptr.addr, align 8
  call void @llvm.dbg.declare(metadata !{i8*** %lineptr.addr}, metadata !2665), !dbg !2666
  store i64* %linesize, i64** %linesize.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64** %linesize.addr}, metadata !2667), !dbg !2666
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %offset.addr}, metadata !2668), !dbg !2666
  store i64 %nmax, i64* %nmax.addr, align 8
  call void @llvm.dbg.declare(metadata !{i64* %nmax.addr}, metadata !2669), !dbg !2666
  store i32 %delim1, i32* %delim1.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %delim1.addr}, metadata !2670), !dbg !2671
  store i32 %delim2, i32* %delim2.addr, align 4
  call void @llvm.dbg.declare(metadata !{i32* %delim2.addr}, metadata !2672), !dbg !2671
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %stream.addr}, metadata !2673), !dbg !2671
  call void @llvm.dbg.declare(metadata !{i64* %nbytes_avail}, metadata !2674), !dbg !2675
  call void @llvm.dbg.declare(metadata !{i8** %read_pos}, metadata !2676), !dbg !2677
  call void @llvm.dbg.declare(metadata !{i64* %bytes_stored}, metadata !2678), !dbg !2679
  store i64 -1, i64* %bytes_stored, align 8, !dbg !2679
  call void @llvm.dbg.declare(metadata !{i8** %ptr}, metadata !2680), !dbg !2681
  %0 = load i8*** %lineptr.addr, align 8, !dbg !2681
  %1 = load i8** %0, align 8, !dbg !2681
  store i8* %1, i8** %ptr, align 8, !dbg !2681
  call void @llvm.dbg.declare(metadata !{i64* %size}, metadata !2682), !dbg !2683
  %2 = load i64** %linesize.addr, align 8, !dbg !2683
  %3 = load i64* %2, align 8, !dbg !2683
  store i64 %3, i64* %size, align 8, !dbg !2683
  %4 = load i8** %ptr, align 8, !dbg !2684
  %tobool = icmp ne i8* %4, null, !dbg !2684
  br i1 %tobool, label %if.end3, label %if.then, !dbg !2684

if.then:                                          ; preds = %entry
  %5 = load i64* %nmax.addr, align 8, !dbg !2686
  %cmp = icmp ult i64 %5, 64, !dbg !2686
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2686

cond.true:                                        ; preds = %if.then
  %6 = load i64* %nmax.addr, align 8, !dbg !2686
  br label %cond.end, !dbg !2686

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2686

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ 64, %cond.false ], !dbg !2686
  store i64 %cond, i64* %size, align 8, !dbg !2686
  %7 = load i64* %size, align 8, !dbg !2688
  %call = call noalias i8* @malloc(i64 %7) #9, !dbg !2688
  store i8* %call, i8** %ptr, align 8, !dbg !2688
  %8 = load i8** %ptr, align 8, !dbg !2689
  %tobool1 = icmp ne i8* %8, null, !dbg !2689
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2689

if.then2:                                         ; preds = %cond.end
  store i64 -1, i64* %retval, !dbg !2691
  br label %return, !dbg !2691

if.end:                                           ; preds = %cond.end
  br label %if.end3, !dbg !2692

if.end3:                                          ; preds = %if.end, %entry
  %9 = load i64* %size, align 8, !dbg !2693
  %10 = load i64* %offset.addr, align 8, !dbg !2693
  %cmp4 = icmp ult i64 %9, %10, !dbg !2693
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2693

if.then5:                                         ; preds = %if.end3
  br label %done, !dbg !2695

if.end6:                                          ; preds = %if.end3
  %11 = load i64* %size, align 8, !dbg !2696
  %12 = load i64* %offset.addr, align 8, !dbg !2696
  %sub = sub i64 %11, %12, !dbg !2696
  store i64 %sub, i64* %nbytes_avail, align 8, !dbg !2696
  %13 = load i8** %ptr, align 8, !dbg !2697
  %14 = load i64* %offset.addr, align 8, !dbg !2697
  %add.ptr = getelementptr inbounds i8* %13, i64 %14, !dbg !2697
  store i8* %add.ptr, i8** %read_pos, align 8, !dbg !2697
  %15 = load i64* %nbytes_avail, align 8, !dbg !2698
  %cmp7 = icmp eq i64 %15, 0, !dbg !2698
  br i1 %cmp7, label %land.lhs.true, label %if.end10, !dbg !2698

land.lhs.true:                                    ; preds = %if.end6
  %16 = load i64* %nmax.addr, align 8, !dbg !2698
  %17 = load i64* %size, align 8, !dbg !2698
  %cmp8 = icmp ule i64 %16, %17, !dbg !2698
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2698

if.then9:                                         ; preds = %land.lhs.true
  br label %done, !dbg !2700

if.end10:                                         ; preds = %land.lhs.true, %if.end6
  br label %for.cond, !dbg !2701

for.cond:                                         ; preds = %if.end56, %if.end10
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !2703), !dbg !2705
  %18 = load i64* %nbytes_avail, align 8, !dbg !2706
  %cmp11 = icmp ult i64 %18, 2, !dbg !2706
  br i1 %cmp11, label %land.lhs.true12, label %if.end41, !dbg !2706

land.lhs.true12:                                  ; preds = %for.cond
  %19 = load i64* %size, align 8, !dbg !2706
  %20 = load i64* %nmax.addr, align 8, !dbg !2706
  %cmp13 = icmp ult i64 %19, %20, !dbg !2706
  br i1 %cmp13, label %if.then14, label %if.end41, !dbg !2706

if.then14:                                        ; preds = %land.lhs.true12
  call void @llvm.dbg.declare(metadata !{i64* %newsize}, metadata !2708), !dbg !2710
  %21 = load i64* %size, align 8, !dbg !2710
  %cmp15 = icmp ult i64 %21, 64, !dbg !2710
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !2710

cond.true16:                                      ; preds = %if.then14
  %22 = load i64* %size, align 8, !dbg !2710
  %add = add i64 %22, 64, !dbg !2710
  br label %cond.end18, !dbg !2710

cond.false17:                                     ; preds = %if.then14
  %23 = load i64* %size, align 8, !dbg !2710
  %mul = mul i64 2, %23, !dbg !2710
  br label %cond.end18, !dbg !2710

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i64 [ %add, %cond.true16 ], [ %mul, %cond.false17 ], !dbg !2710
  store i64 %cond19, i64* %newsize, align 8, !dbg !2710
  call void @llvm.dbg.declare(metadata !{i8** %newptr}, metadata !2711), !dbg !2712
  %24 = load i64* %size, align 8, !dbg !2713
  %25 = load i64* %newsize, align 8, !dbg !2713
  %cmp20 = icmp ult i64 %24, %25, !dbg !2713
  br i1 %cmp20, label %land.lhs.true21, label %if.then23, !dbg !2713

land.lhs.true21:                                  ; preds = %cond.end18
  %26 = load i64* %newsize, align 8, !dbg !2713
  %27 = load i64* %nmax.addr, align 8, !dbg !2713
  %cmp22 = icmp ule i64 %26, %27, !dbg !2713
  br i1 %cmp22, label %if.end24, label %if.then23, !dbg !2713

if.then23:                                        ; preds = %land.lhs.true21, %cond.end18
  %28 = load i64* %nmax.addr, align 8, !dbg !2715
  store i64 %28, i64* %newsize, align 8, !dbg !2715
  br label %if.end24, !dbg !2715

if.end24:                                         ; preds = %if.then23, %land.lhs.true21
  %29 = load i64* %newsize, align 8, !dbg !2716
  %30 = load i64* %offset.addr, align 8, !dbg !2716
  %sub25 = sub i64 %29, %30, !dbg !2716
  %cmp26 = icmp ult i64 9223372036854775807, %sub25, !dbg !2716
  br i1 %cmp26, label %if.then27, label %if.end33, !dbg !2716

if.then27:                                        ; preds = %if.end24
  call void @llvm.dbg.declare(metadata !{i64* %newsizemax}, metadata !2718), !dbg !2720
  %31 = load i64* %offset.addr, align 8, !dbg !2720
  %add28 = add i64 %31, 9223372036854775807, !dbg !2720
  %add29 = add i64 %add28, 1, !dbg !2720
  store i64 %add29, i64* %newsizemax, align 8, !dbg !2720
  %32 = load i64* %size, align 8, !dbg !2721
  %33 = load i64* %newsizemax, align 8, !dbg !2721
  %cmp30 = icmp eq i64 %32, %33, !dbg !2721
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2721

if.then31:                                        ; preds = %if.then27
  br label %done, !dbg !2723

if.end32:                                         ; preds = %if.then27
  %34 = load i64* %newsizemax, align 8, !dbg !2724
  store i64 %34, i64* %newsize, align 8, !dbg !2724
  br label %if.end33, !dbg !2725

if.end33:                                         ; preds = %if.end32, %if.end24
  %35 = load i64* %newsize, align 8, !dbg !2726
  %36 = load i8** %read_pos, align 8, !dbg !2726
  %37 = load i8** %ptr, align 8, !dbg !2726
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64, !dbg !2726
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64, !dbg !2726
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2726
  %sub34 = sub i64 %35, %sub.ptr.sub, !dbg !2726
  store i64 %sub34, i64* %nbytes_avail, align 8, !dbg !2726
  %38 = load i8** %ptr, align 8, !dbg !2727
  %39 = load i64* %newsize, align 8, !dbg !2727
  %call35 = call i8* @realloc(i8* %38, i64 %39) #9, !dbg !2727
  store i8* %call35, i8** %newptr, align 8, !dbg !2727
  %40 = load i8** %newptr, align 8, !dbg !2728
  %tobool36 = icmp ne i8* %40, null, !dbg !2728
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !2728

if.then37:                                        ; preds = %if.end33
  br label %done, !dbg !2730

if.end38:                                         ; preds = %if.end33
  %41 = load i8** %newptr, align 8, !dbg !2731
  store i8* %41, i8** %ptr, align 8, !dbg !2731
  %42 = load i64* %newsize, align 8, !dbg !2732
  store i64 %42, i64* %size, align 8, !dbg !2732
  %43 = load i64* %size, align 8, !dbg !2733
  %44 = load i64* %nbytes_avail, align 8, !dbg !2733
  %sub39 = sub i64 %43, %44, !dbg !2733
  %45 = load i8** %ptr, align 8, !dbg !2733
  %add.ptr40 = getelementptr inbounds i8* %45, i64 %sub39, !dbg !2733
  store i8* %add.ptr40, i8** %read_pos, align 8, !dbg !2733
  br label %if.end41, !dbg !2734

if.end41:                                         ; preds = %if.end38, %land.lhs.true12, %for.cond
  %46 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2735
  %call42 = call i32 @getc_unlocked(%struct._IO_FILE* %46), !dbg !2735
  store i32 %call42, i32* %c, align 4, !dbg !2735
  %47 = load i32* %c, align 4, !dbg !2736
  %cmp43 = icmp eq i32 %47, -1, !dbg !2736
  br i1 %cmp43, label %if.then44, label %if.end47, !dbg !2736

if.then44:                                        ; preds = %if.end41
  %48 = load i8** %read_pos, align 8, !dbg !2738
  %49 = load i8** %ptr, align 8, !dbg !2738
  %cmp45 = icmp eq i8* %48, %49, !dbg !2738
  br i1 %cmp45, label %if.then46, label %if.else, !dbg !2738

if.then46:                                        ; preds = %if.then44
  br label %done, !dbg !2741

if.else:                                          ; preds = %if.then44
  br label %for.end, !dbg !2742

if.end47:                                         ; preds = %if.end41
  %50 = load i64* %nbytes_avail, align 8, !dbg !2743
  %cmp48 = icmp uge i64 %50, 2, !dbg !2743
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2743

if.then49:                                        ; preds = %if.end47
  %51 = load i32* %c, align 4, !dbg !2745
  %conv = trunc i32 %51 to i8, !dbg !2745
  %52 = load i8** %read_pos, align 8, !dbg !2745
  %incdec.ptr = getelementptr inbounds i8* %52, i32 1, !dbg !2745
  store i8* %incdec.ptr, i8** %read_pos, align 8, !dbg !2745
  store i8 %conv, i8* %52, align 1, !dbg !2745
  %53 = load i64* %nbytes_avail, align 8, !dbg !2747
  %dec = add i64 %53, -1, !dbg !2747
  store i64 %dec, i64* %nbytes_avail, align 8, !dbg !2747
  br label %if.end50, !dbg !2748

if.end50:                                         ; preds = %if.then49, %if.end47
  %54 = load i32* %c, align 4, !dbg !2749
  %55 = load i32* %delim1.addr, align 4, !dbg !2749
  %cmp51 = icmp eq i32 %54, %55, !dbg !2749
  br i1 %cmp51, label %if.then55, label %lor.lhs.false, !dbg !2749

lor.lhs.false:                                    ; preds = %if.end50
  %56 = load i32* %c, align 4, !dbg !2749
  %57 = load i32* %delim2.addr, align 4, !dbg !2749
  %cmp53 = icmp eq i32 %56, %57, !dbg !2749
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !2749

if.then55:                                        ; preds = %lor.lhs.false, %if.end50
  br label %for.end, !dbg !2751

if.end56:                                         ; preds = %lor.lhs.false
  br label %for.cond, !dbg !2752

for.end:                                          ; preds = %if.then55, %if.else
  %58 = load i8** %read_pos, align 8, !dbg !2753
  store i8 0, i8* %58, align 1, !dbg !2753
  %59 = load i8** %read_pos, align 8, !dbg !2754
  %60 = load i8** %ptr, align 8, !dbg !2754
  %61 = load i64* %offset.addr, align 8, !dbg !2754
  %add.ptr57 = getelementptr inbounds i8* %60, i64 %61, !dbg !2754
  %sub.ptr.lhs.cast58 = ptrtoint i8* %59 to i64, !dbg !2754
  %sub.ptr.rhs.cast59 = ptrtoint i8* %add.ptr57 to i64, !dbg !2754
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59, !dbg !2754
  store i64 %sub.ptr.sub60, i64* %bytes_stored, align 8, !dbg !2754
  br label %done, !dbg !2754

done:                                             ; preds = %for.end, %if.then46, %if.then37, %if.then31, %if.then9, %if.then5
  %62 = load i8** %ptr, align 8, !dbg !2755
  %63 = load i8*** %lineptr.addr, align 8, !dbg !2755
  store i8* %62, i8** %63, align 8, !dbg !2755
  %64 = load i64* %size, align 8, !dbg !2756
  %65 = load i64** %linesize.addr, align 8, !dbg !2756
  store i64 %64, i64* %65, align 8, !dbg !2756
  %66 = load i64* %bytes_stored, align 8, !dbg !2757
  store i64 %66, i64* %retval, !dbg !2757
  br label %return, !dbg !2757

return:                                           ; preds = %done, %if.then2
  %67 = load i64* %retval, !dbg !2758
  ret i64 %67, !dbg !2758
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn }

!llvm.dbg.cu = !{!0, !195, !360, !372, !378, !399, !489, !550, !555, !592, !600}
!llvm.module.flags = !{!651, !652}
!llvm.ident = !{!653, !653, !653, !653, !653, !653, !653, !653, !653, !653, !653}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !23, metadata !24, metadata !154, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c] [DW_LANG_C99]
!1 = metadata !{metadata !"cut.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!2 = metadata !{metadata !3, metadata !8}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"operating_mode", i32 124, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [operating_mode] [line 124, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !5, metadata !6, metadata !7}
!5 = metadata !{i32 786472, metadata !"undefined_mode", i64 0} ; [ DW_TAG_enumerator ] [undefined_mode :: 0]
!6 = metadata !{i32 786472, metadata !"byte_mode", i64 1} ; [ DW_TAG_enumerator ] [byte_mode :: 1]
!7 = metadata !{i32 786472, metadata !"field_mode", i64 2} ; [ DW_TAG_enumerator ] [field_mode :: 2]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!9 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!10 = metadata !{metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22}
!11 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!12 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!13 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!14 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!15 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!16 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!17 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!18 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!19 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!20 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!21 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!22 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!23 = metadata !{i32 0}
!24 = metadata !{metadata !25, metadata !32, metadata !38, metadata !39, metadata !43, metadata !49, metadata !53, metadata !110, metadata !111, metadata !117, metadata !121, metadata !124, metadata !125, metadata !126, metadata !131, metadata !134, metadata !135, metadata !140, metadata !143, metadata !146}
!25 = metadata !{i32 786478, metadata !26, metadata !27, metadata !"klee_change", metadata !"klee_change", metadata !"", i32 18, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64)* @klee_change, null, null, metadata !23, i32 18} ; [ DW_TAG_subprogram ] [line 18] [def] [klee_change]
!26 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!27 = metadata !{i32 786473, metadata !26}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !30, metadata !30}
!30 = metadata !{i32 786454, metadata !26, null, metadata !"uintptr_t", i32 122, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [uintptr_t] [line 122, size 0, align 0, offset 0] [from long unsigned int]
!31 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786478, metadata !33, metadata !34, metadata !"klee_get_true", metadata !"klee_get_true", metadata !"", i32 4, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_true, null, null, metadata !23, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [klee_get_true]
!33 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!34 = metadata !{i32 786473, metadata !33}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!35 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!38 = metadata !{i32 786478, metadata !33, metadata !34, metadata !"klee_get_false", metadata !"klee_get_false", metadata !"", i32 5, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_false, null, null, metadata !23, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [klee_get_false]
!39 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"usage", metadata !"usage", metadata !"", i32 198, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @usage, null, null, metadata !23, i32 199} ; [ DW_TAG_subprogram ] [line 198] [def] [scope 199] [usage]
!40 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{null, metadata !37}
!43 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"main", metadata !"main", metadata !"", i32 819, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !23, i32 820} ; [ DW_TAG_subprogram ] [line 819] [def] [scope 820] [main]
!44 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{metadata !37, metadata !37, metadata !46}
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!48 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!49 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"cut_file", metadata !"cut_file", metadata !"", i32 782, metadata !50, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*)* @cut_file, null, null, metadata !23, i32 783} ; [ DW_TAG_subprogram ] [line 782] [local] [def] [scope 783] [cut_file]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !52, metadata !47}
!52 = metadata !{i32 786468, null, null, metadata !"_Bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [_Bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!53 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"cut_stream", metadata !"cut_stream", metadata !"", i32 770, metadata !54, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*)* @cut_stream, null, null, metadata !23, i32 771} ; [ DW_TAG_subprogram ] [line 770] [local] [def] [scope 771] [cut_stream]
!54 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null, metadata !56}
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!57 = metadata !{i32 786454, metadata !26, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!58 = metadata !{i32 786451, metadata !59, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!59 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !81, metadata !82, metadata !83, metadata !84, metadata !87, metadata !89, metadata !91, metadata !95, metadata !97, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !105, metadata !106}
!61 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!63 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!64 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!65 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!66 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!67 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!68 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!69 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!70 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!71 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!72 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!73 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !74} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!75 = metadata !{i32 786451, metadata !59, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !76, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!76 = metadata !{metadata !77, metadata !78, metadata !80}
!77 = metadata !{i32 786445, metadata !59, metadata !75, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!78 = metadata !{i32 786445, metadata !59, metadata !75, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !79} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!80 = metadata !{i32 786445, metadata !59, metadata !75, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!81 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !79} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!82 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !37} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!83 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!84 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !85} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!85 = metadata !{i32 786454, metadata !59, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!86 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!87 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!88 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !90} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!90 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!91 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !92} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !48, metadata !93, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!95 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !96} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!97 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !98} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!98 = metadata !{i32 786454, metadata !59, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!99 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!100 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!101 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!102 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!103 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !104} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!104 = metadata !{i32 786454, metadata !59, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!105 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !37} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!106 = metadata !{i32 786445, metadata !59, metadata !58, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !107} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !48, metadata !108, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!110 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"cut_fields", metadata !"cut_fields", metadata !"", i32 651, metadata !54, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*)* @cut_fields, null, null, metadata !23, i32 652} ; [ DW_TAG_subprogram ] [line 651] [local] [def] [scope 652] [cut_fields]
!111 = metadata !{i32 786478, metadata !112, metadata !113, metadata !"to_uchar", metadata !"to_uchar", metadata !"", i32 467, metadata !114, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @to_uchar, null, null, metadata !23, i32 467} ; [ DW_TAG_subprogram ] [line 467] [local] [def] [to_uchar]
!112 = metadata !{metadata !"./system.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!113 = metadata !{i32 786473, metadata !112}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/./system.h]
!114 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !116, metadata !48}
!116 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!117 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"print_kth", metadata !"print_kth", metadata !"", i32 314, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64, i8*)* @print_kth, null, null, metadata !23, i32 315} ; [ DW_TAG_subprogram ] [line 314] [local] [def] [scope 315] [print_kth]
!118 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{metadata !52, metadata !104, metadata !120}
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _Bool]
!121 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"is_range_start_index", metadata !"is_range_start_index", metadata !"", i32 303, metadata !122, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64)* @is_range_start_index, null, null, metadata !23, i32 304} ; [ DW_TAG_subprogram ] [line 303] [local] [def] [scope 304] [is_range_start_index]
!122 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!123 = metadata !{metadata !52, metadata !104}
!124 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"is_printable_field", metadata !"is_printable_field", metadata !"", i32 279, metadata !122, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64)* @is_printable_field, null, null, metadata !23, i32 280} ; [ DW_TAG_subprogram ] [line 279] [local] [def] [scope 280] [is_printable_field]
!125 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"cut_bytes", metadata !"cut_bytes", metadata !"", i32 603, metadata !54, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*)* @cut_bytes, null, null, metadata !23, i32 604} ; [ DW_TAG_subprogram ] [line 603] [local] [def] [scope 604] [cut_bytes]
!126 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"set_fields", metadata !"set_fields", metadata !"", i32 362, metadata !127, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*)* @set_fields, null, null, metadata !23, i32 363} ; [ DW_TAG_subprogram ] [line 362] [local] [def] [scope 363] [set_fields]
!127 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{metadata !52, metadata !129}
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!130 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!131 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"mark_range_start", metadata !"mark_range_start", metadata !"", i32 259, metadata !132, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64)* @mark_range_start, null, null, metadata !23, i32 260} ; [ DW_TAG_subprogram ] [line 259] [local] [def] [scope 260] [mark_range_start]
!132 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!133 = metadata !{null, metadata !104}
!134 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"mark_printable_field", metadata !"mark_printable_field", metadata !"", i32 272, metadata !132, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64)* @mark_printable_field, null, null, metadata !23, i32 273} ; [ DW_TAG_subprogram ] [line 272] [local] [def] [scope 273] [mark_printable_field]
!135 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"compare_ranges", metadata !"compare_ranges", metadata !"", i32 335, metadata !136, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @compare_ranges, null, null, metadata !23, i32 336} ; [ DW_TAG_subprogram ] [line 335] [local] [def] [scope 336] [compare_ranges]
!136 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{metadata !37, metadata !138, metadata !138}
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!139 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"hash_compare_ints", metadata !"hash_compare_ints", metadata !"", i32 297, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*, i8*)* @hash_compare_ints, null, null, metadata !23, i32 298} ; [ DW_TAG_subprogram ] [line 297] [local] [def] [scope 298] [hash_compare_ints]
!141 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{metadata !52, metadata !138, metadata !138}
!143 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"hash_int", metadata !"hash_int", metadata !"", i32 286, metadata !144, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64)* @hash_int, null, null, metadata !23, i32 287} ; [ DW_TAG_subprogram ] [line 286] [local] [def] [scope 287] [hash_int]
!144 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{metadata !104, metadata !138, metadata !104}
!146 = metadata !{i32 786478, metadata !1, metadata !40, metadata !"klee_compatible_error", metadata !"klee_compatible_error", metadata !"", i32 49, metadata !147, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error, null, null, metadata !23, i32 49} ; [ DW_TAG_subprogram ] [line 49] [local] [def] [klee_compatible_error]
!147 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{null, metadata !37, metadata !149, metadata !129}
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!150 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!153 = metadata !{i32 786456}
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !176, metadata !177, metadata !178, metadata !180, metadata !181, metadata !182, metadata !183}
!155 = metadata !{i32 786484, i32 0, null, metadata !"after_divergence", metadata !"after_divergence", metadata !"", metadata !27, i32 14, metadata !37, i32 0, i32 1, i32* @after_divergence, null} ; [ DW_TAG_variable ] [after_divergence] [line 14] [def]
!156 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_file_env", metadata !"klee_div_file_env", metadata !"", metadata !27, i32 15, metadata !129, i32 0, i32 1, i8** @klee_div_file_env, null} ; [ DW_TAG_variable ] [klee_div_file_env] [line 15] [def]
!157 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_marker_file_env", metadata !"klee_div_marker_file_env", metadata !"", metadata !27, i32 16, metadata !129, i32 0, i32 1, i8** @klee_div_marker_file_env, null} ; [ DW_TAG_variable ] [klee_div_marker_file_env] [line 16] [def]
!158 = metadata !{i32 786484, i32 0, metadata !43, metadata !"dummy", metadata !"dummy", metadata !"", metadata !40, i32 936, metadata !159, i32 1, i32 1, [2 x i8]* @main.dummy, null} ; [ DW_TAG_variable ] [dummy] [line 936] [local] [def]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !48, metadata !160, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from char]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!162 = metadata !{i32 786484, i32 0, null, metadata !"program_name", metadata !"program_name", metadata !"", metadata !40, i32 136, metadata !47, i32 0, i32 1, i8** @program_name, null} ; [ DW_TAG_variable ] [program_name] [line 136] [def]
!163 = metadata !{i32 786484, i32 0, null, metadata !"operating_mode", metadata !"operating_mode", metadata !"", metadata !40, i32 138, metadata !3, i32 1, i32 1, i32* @operating_mode, null} ; [ DW_TAG_variable ] [operating_mode] [line 138] [local] [def]
!164 = metadata !{i32 786484, i32 0, null, metadata !"suppress_non_delimited", metadata !"suppress_non_delimited", metadata !"", metadata !40, i32 143, metadata !52, i32 1, i32 1, i8* @suppress_non_delimited, null} ; [ DW_TAG_variable ] [suppress_non_delimited] [line 143] [local] [def]
!165 = metadata !{i32 786484, i32 0, null, metadata !"complement", metadata !"complement", metadata !"", metadata !40, i32 147, metadata !52, i32 1, i32 1, i8* @complement, null} ; [ DW_TAG_variable ] [complement] [line 147] [local] [def]
!166 = metadata !{i32 786484, i32 0, null, metadata !"delim", metadata !"delim", metadata !"", metadata !40, i32 150, metadata !116, i32 1, i32 1, i8* @delim, null} ; [ DW_TAG_variable ] [delim] [line 150] [local] [def]
!167 = metadata !{i32 786484, i32 0, null, metadata !"output_delimiter_specified", metadata !"output_delimiter_specified", metadata !"", metadata !40, i32 153, metadata !52, i32 1, i32 1, i8* @output_delimiter_specified, null} ; [ DW_TAG_variable ] [output_delimiter_specified] [line 153] [local] [def]
!168 = metadata !{i32 786484, i32 0, null, metadata !"output_delimiter_length", metadata !"output_delimiter_length", metadata !"", metadata !40, i32 156, metadata !104, i32 1, i32 1, i64* @output_delimiter_length, null} ; [ DW_TAG_variable ] [output_delimiter_length] [line 156] [local] [def]
!169 = metadata !{i32 786484, i32 0, null, metadata !"output_delimiter_string", metadata !"output_delimiter_string", metadata !"", metadata !40, i32 160, metadata !47, i32 1, i32 1, i8** @output_delimiter_string, null} ; [ DW_TAG_variable ] [output_delimiter_string] [line 160] [local] [def]
!170 = metadata !{i32 786484, i32 0, null, metadata !"have_read_stdin", metadata !"have_read_stdin", metadata !"", metadata !40, i32 163, metadata !52, i32 1, i32 1, i8* @have_read_stdin, null} ; [ DW_TAG_variable ] [have_read_stdin] [line 163] [local] [def]
!171 = metadata !{i32 786484, i32 0, null, metadata !"range_start_ht", metadata !"range_start_ht", metadata !"", metadata !40, i32 172, metadata !172, i32 1, i32 1, %struct.hash_table** @range_start_ht, null} ; [ DW_TAG_variable ] [range_start_ht] [line 172] [local] [def]
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Hash_table]
!173 = metadata !{i32 786454, metadata !1, null, metadata !"Hash_table", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ] [Hash_table] [line 57, size 0, align 0, offset 0] [from hash_table]
!174 = metadata !{i32 786451, metadata !175, null, metadata !"hash_table", i32 55, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_table] [line 55, size 0, align 0, offset 0] [decl] [from ]
!175 = metadata !{metadata !"../lib/hash.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!176 = metadata !{i32 786484, i32 0, null, metadata !"field_1_bufsize", metadata !"field_1_bufsize", metadata !"", metadata !40, i32 102, metadata !104, i32 1, i32 1, i64* @field_1_bufsize, null} ; [ DW_TAG_variable ] [field_1_bufsize] [line 102] [local] [def]
!177 = metadata !{i32 786484, i32 0, null, metadata !"field_1_buffer", metadata !"field_1_buffer", metadata !"", metadata !40, i32 99, metadata !47, i32 1, i32 1, i8** @field_1_buffer, null} ; [ DW_TAG_variable ] [field_1_buffer] [line 99] [local] [def]
!178 = metadata !{i32 786484, i32 0, null, metadata !"printable_field", metadata !"printable_field", metadata !"", metadata !40, i32 122, metadata !179, i32 1, i32 1, i8** @printable_field, null} ; [ DW_TAG_variable ] [printable_field] [line 122] [local] [def]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!180 = metadata !{i32 786484, i32 0, null, metadata !"max_range_endpoint", metadata !"max_range_endpoint", metadata !"", metadata !40, i32 108, metadata !104, i32 1, i32 1, i64* @max_range_endpoint, null} ; [ DW_TAG_variable ] [max_range_endpoint] [line 108] [local] [def]
!181 = metadata !{i32 786484, i32 0, null, metadata !"eol_range_start", metadata !"eol_range_start", metadata !"", metadata !40, i32 112, metadata !104, i32 1, i32 1, i64* @eol_range_start, null} ; [ DW_TAG_variable ] [eol_range_start] [line 112] [local] [def]
!182 = metadata !{i32 786484, i32 0, metadata !126, metadata !"num_start", metadata !"num_start", metadata !"", metadata !40, i32 476, metadata !129, i32 1, i32 1, i8** @set_fields.num_start, null} ; [ DW_TAG_variable ] [num_start] [line 476] [local] [def]
!183 = metadata !{i32 786484, i32 0, null, metadata !"longopts", metadata !"longopts", metadata !"", metadata !40, i32 183, metadata !184, i32 1, i32 1, <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] } }>* @longopts, null} ; [ DW_TAG_variable ] [longopts] [line 183] [local] [def]
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !185, metadata !193, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from ]
!185 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !186} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from option]
!186 = metadata !{i32 786451, metadata !187, null, metadata !"option", i32 104, i64 256, i64 64, i32 0, i32 0, null, metadata !188, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [option] [line 104, size 256, align 64, offset 0] [def] [from ]
!187 = metadata !{metadata !"/usr/include/getopt.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src"}
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192}
!189 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"name", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_member ] [name] [line 106, size 64, align 64, offset 0] [from ]
!190 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"has_arg", i32 109, i64 32, i64 32, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [has_arg] [line 109, size 32, align 32, offset 64] [from int]
!191 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"flag", i32 110, i64 64, i64 64, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [flag] [line 110, size 64, align 64, offset 128] [from ]
!192 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"val", i32 111, i64 32, i64 32, i64 192, i32 0, metadata !37} ; [ DW_TAG_member ] [val] [line 111, size 32, align 32, offset 192] [from int]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!195 = metadata !{i32 786449, metadata !196, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !197, metadata !358, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c] [DW_LANG_C99]
!196 = metadata !{metadata !"hash.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!197 = metadata !{metadata !198, metadata !247, metadata !248, metadata !249, metadata !250, metadata !253, metadata !299, metadata !302, metadata !305, metadata !306, metadata !310, metadata !317, metadata !320, metadata !324, metadata !328, metadata !331, metadata !332, metadata !335, metadata !338, metadata !339, metadata !343, metadata !346, metadata !349, metadata !352, metadata !355}
!198 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_get_n_buckets", metadata !"hash_get_n_buckets", metadata !"", i32 150, metadata !200, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*)* @hash_get_n_buckets, null, null, metadata !23, i32 151} ; [ DW_TAG_subprogram ] [line 150] [def] [scope 151] [hash_get_n_buckets]
!199 = metadata !{i32 786473, metadata !196}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!200 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{metadata !202, metadata !203}
!202 = metadata !{i32 786454, metadata !196, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!204 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Hash_table]
!205 = metadata !{i32 786454, metadata !196, null, metadata !"Hash_table", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [Hash_table] [line 57, size 0, align 0, offset 0] [from hash_table]
!206 = metadata !{i32 786451, metadata !196, null, metadata !"hash_table", i32 52, i64 640, i64 64, i32 0, i32 0, null, metadata !207, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_table] [line 52, size 640, align 64, offset 0] [def] [from ]
!207 = metadata !{metadata !208, metadata !215, metadata !218, metadata !219, metadata !220, metadata !221, metadata !233, metadata !238, metadata !241, metadata !246}
!208 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"bucket", i32 57, i64 64, i64 64, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [bucket] [line 57, size 64, align 64, offset 0] [from ]
!209 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hash_entry]
!210 = metadata !{i32 786451, metadata !211, null, metadata !"hash_entry", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !212, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_entry] [line 35, size 128, align 64, offset 0] [def] [from ]
!211 = metadata !{metadata !"./hash.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!212 = metadata !{metadata !213, metadata !214}
!213 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"data", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [data] [line 37, size 64, align 64, offset 0] [from ]
!214 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"next", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !209} ; [ DW_TAG_member ] [next] [line 38, size 64, align 64, offset 64] [from ]
!215 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"bucket_limit", i32 58, i64 64, i64 64, i64 64, i32 0, metadata !216} ; [ DW_TAG_member ] [bucket_limit] [line 58, size 64, align 64, offset 64] [from ]
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!217 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from hash_entry]
!218 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"n_buckets", i32 59, i64 64, i64 64, i64 128, i32 0, metadata !202} ; [ DW_TAG_member ] [n_buckets] [line 59, size 64, align 64, offset 128] [from size_t]
!219 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"n_buckets_used", i32 60, i64 64, i64 64, i64 192, i32 0, metadata !202} ; [ DW_TAG_member ] [n_buckets_used] [line 60, size 64, align 64, offset 192] [from size_t]
!220 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"n_entries", i32 61, i64 64, i64 64, i64 256, i32 0, metadata !202} ; [ DW_TAG_member ] [n_entries] [line 61, size 64, align 64, offset 256] [from size_t]
!221 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"tuning", i32 64, i64 64, i64 64, i64 320, i32 0, metadata !222} ; [ DW_TAG_member ] [tuning] [line 64, size 64, align 64, offset 320] [from ]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!223 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Hash_tuning]
!224 = metadata !{i32 786454, metadata !196, null, metadata !"Hash_tuning", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_typedef ] [Hash_tuning] [line 53, size 0, align 0, offset 0] [from hash_tuning]
!225 = metadata !{i32 786451, metadata !211, null, metadata !"hash_tuning", i32 41, i64 160, i64 32, i32 0, i32 0, null, metadata !226, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_tuning] [line 41, size 160, align 32, offset 0] [def] [from ]
!226 = metadata !{metadata !227, metadata !229, metadata !230, metadata !231, metadata !232}
!227 = metadata !{i32 786445, metadata !211, metadata !225, metadata !"shrink_threshold", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !228} ; [ DW_TAG_member ] [shrink_threshold] [line 46, size 32, align 32, offset 0] [from float]
!228 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!229 = metadata !{i32 786445, metadata !211, metadata !225, metadata !"shrink_factor", i32 47, i64 32, i64 32, i64 32, i32 0, metadata !228} ; [ DW_TAG_member ] [shrink_factor] [line 47, size 32, align 32, offset 32] [from float]
!230 = metadata !{i32 786445, metadata !211, metadata !225, metadata !"growth_threshold", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !228} ; [ DW_TAG_member ] [growth_threshold] [line 48, size 32, align 32, offset 64] [from float]
!231 = metadata !{i32 786445, metadata !211, metadata !225, metadata !"growth_factor", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !228} ; [ DW_TAG_member ] [growth_factor] [line 49, size 32, align 32, offset 96] [from float]
!232 = metadata !{i32 786445, metadata !211, metadata !225, metadata !"is_n_buckets", i32 50, i64 8, i64 8, i64 128, i32 0, metadata !52} ; [ DW_TAG_member ] [is_n_buckets] [line 50, size 8, align 8, offset 128] [from _Bool]
!233 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"hasher", i32 71, i64 64, i64 64, i64 384, i32 0, metadata !234} ; [ DW_TAG_member ] [hasher] [line 71, size 64, align 64, offset 384] [from Hash_hasher]
!234 = metadata !{i32 786454, metadata !196, null, metadata !"Hash_hasher", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [Hash_hasher] [line 30, size 0, align 0, offset 0] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!236 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !237, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!237 = metadata !{metadata !202, metadata !138, metadata !202}
!238 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"comparator", i32 72, i64 64, i64 64, i64 448, i32 0, metadata !239} ; [ DW_TAG_member ] [comparator] [line 72, size 64, align 64, offset 448] [from Hash_comparator]
!239 = metadata !{i32 786454, metadata !196, null, metadata !"Hash_comparator", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_typedef ] [Hash_comparator] [line 31, size 0, align 0, offset 0] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!241 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"data_freer", i32 73, i64 64, i64 64, i64 512, i32 0, metadata !242} ; [ DW_TAG_member ] [data_freer] [line 73, size 64, align 64, offset 512] [from Hash_data_freer]
!242 = metadata !{i32 786454, metadata !196, null, metadata !"Hash_data_freer", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !243} ; [ DW_TAG_typedef ] [Hash_data_freer] [line 32, size 0, align 0, offset 0] [from ]
!243 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!244 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!245 = metadata !{null, metadata !96}
!246 = metadata !{i32 786445, metadata !196, metadata !206, metadata !"free_entry_list", i32 76, i64 64, i64 64, i64 576, i32 0, metadata !209} ; [ DW_TAG_member ] [free_entry_list] [line 76, size 64, align 64, offset 576] [from ]
!247 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_get_n_buckets_used", metadata !"hash_get_n_buckets_used", metadata !"", i32 158, metadata !200, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*)* @hash_get_n_buckets_used, null, null, metadata !23, i32 159} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 159] [hash_get_n_buckets_used]
!248 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_get_n_entries", metadata !"hash_get_n_entries", metadata !"", i32 166, metadata !200, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*)* @hash_get_n_entries, null, null, metadata !23, i32 167} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 167] [hash_get_n_entries]
!249 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_get_max_bucket_length", metadata !"hash_get_max_bucket_length", metadata !"", i32 174, metadata !200, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*)* @hash_get_max_bucket_length, null, null, metadata !23, i32 175} ; [ DW_TAG_subprogram ] [line 174] [def] [scope 175] [hash_get_max_bucket_length]
!250 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_table_ok", metadata !"hash_table_ok", metadata !"", i32 201, metadata !251, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.hash_table*)* @hash_table_ok, null, null, metadata !23, i32 202} ; [ DW_TAG_subprogram ] [line 201] [def] [scope 202] [hash_table_ok]
!251 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !252, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = metadata !{metadata !52, metadata !203}
!253 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_print_statistics", metadata !"hash_print_statistics", metadata !"", i32 230, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*, %struct._IO_FILE*)* @hash_print_statistics, null, null, metadata !23, i32 231} ; [ DW_TAG_subprogram ] [line 230] [def] [scope 231] [hash_print_statistics]
!254 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!255 = metadata !{null, metadata !203, metadata !256}
!256 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!257 = metadata !{i32 786454, metadata !196, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!258 = metadata !{i32 786451, metadata !259, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !260, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!259 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !281, metadata !282, metadata !283, metadata !284, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298}
!261 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!262 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!263 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!264 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!265 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!266 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!267 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!268 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!269 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!270 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!271 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!272 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!273 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !274} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!275 = metadata !{i32 786451, metadata !259, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !276, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!276 = metadata !{metadata !277, metadata !278, metadata !280}
!277 = metadata !{i32 786445, metadata !259, metadata !275, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !274} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!278 = metadata !{i32 786445, metadata !259, metadata !275, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !279} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!279 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!280 = metadata !{i32 786445, metadata !259, metadata !275, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!281 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !279} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!282 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !37} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!283 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!284 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !285} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!285 = metadata !{i32 786454, metadata !259, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!286 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!287 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !90} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!288 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !92} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!289 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !96} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!290 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !291} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!291 = metadata !{i32 786454, metadata !259, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!292 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!293 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!294 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!295 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!296 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !202} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!297 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !37} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!298 = metadata !{i32 786445, metadata !259, metadata !258, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !107} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!299 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_lookup", metadata !"hash_lookup", metadata !"", i32 250, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_lookup, null, null, metadata !23, i32 251} ; [ DW_TAG_subprogram ] [line 250] [def] [scope 251] [hash_lookup]
!300 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !96, metadata !203, metadata !138}
!302 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_get_first", metadata !"hash_get_first", metadata !"", i32 279, metadata !303, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*)* @hash_get_first, null, null, metadata !23, i32 280} ; [ DW_TAG_subprogram ] [line 279] [def] [scope 280] [hash_get_first]
!303 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!304 = metadata !{metadata !96, metadata !203}
!305 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_get_next", metadata !"hash_get_next", metadata !"", i32 298, metadata !300, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_get_next, null, null, metadata !23, i32 299} ; [ DW_TAG_subprogram ] [line 298] [def] [scope 299] [hash_get_next]
!306 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_get_entries", metadata !"hash_get_entries", metadata !"", i32 326, metadata !307, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*, i8**, i64)* @hash_get_entries, null, null, metadata !23, i32 328} ; [ DW_TAG_subprogram ] [line 326] [def] [scope 328] [hash_get_entries]
!307 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !308, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!308 = metadata !{metadata !202, metadata !203, metadata !309, metadata !202}
!309 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!310 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_do_for_each", metadata !"hash_do_for_each", metadata !"", i32 358, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*, i1 (i8*, i8*)*, i8*)* @hash_do_for_each, null, null, metadata !23, i32 360} ; [ DW_TAG_subprogram ] [line 358] [def] [scope 360] [hash_do_for_each]
!311 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!312 = metadata !{metadata !202, metadata !203, metadata !313, metadata !96}
!313 = metadata !{i32 786454, metadata !196, null, metadata !"Hash_processor", i32 33, i64 0, i64 0, i64 0, i32 0, metadata !314} ; [ DW_TAG_typedef ] [Hash_processor] [line 33, size 0, align 0, offset 0] [from ]
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!315 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!316 = metadata !{metadata !52, metadata !96, metadata !96}
!317 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_string", metadata !"hash_string", metadata !"", i32 421, metadata !318, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64)* @hash_string, null, null, metadata !23, i32 422} ; [ DW_TAG_subprogram ] [line 421] [def] [scope 422] [hash_string]
!318 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!319 = metadata !{metadata !202, metadata !129, metadata !202}
!320 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_reset_tuning", metadata !"hash_reset_tuning", metadata !"", i32 472, metadata !321, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_tuning*)* @hash_reset_tuning, null, null, metadata !23, i32 473} ; [ DW_TAG_subprogram ] [line 472] [def] [scope 473] [hash_reset_tuning]
!321 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!322 = metadata !{null, metadata !323}
!323 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Hash_tuning]
!324 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_initialize", metadata !"hash_initialize", metadata !"", i32 540, metadata !325, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.hash_table* (i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*)* @hash_initialize, null, null, metadata !23, i32 543} ; [ DW_TAG_subprogram ] [line 540] [def] [scope 543] [hash_initialize]
!325 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!326 = metadata !{metadata !327, metadata !202, metadata !222, metadata !234, metadata !239, metadata !242}
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Hash_table]
!328 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_clear", metadata !"hash_clear", metadata !"", i32 605, metadata !329, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*)* @hash_clear, null, null, metadata !23, i32 606} ; [ DW_TAG_subprogram ] [line 605] [def] [scope 606] [hash_clear]
!329 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!330 = metadata !{null, metadata !327}
!331 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_free", metadata !"hash_free", metadata !"", i32 648, metadata !329, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*)* @hash_free, null, null, metadata !23, i32 649} ; [ DW_TAG_subprogram ] [line 648] [def] [scope 649] [hash_free]
!332 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_rehash", metadata !"hash_rehash", metadata !"", i32 819, metadata !333, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.hash_table*, i64)* @hash_rehash, null, null, metadata !23, i32 820} ; [ DW_TAG_subprogram ] [line 819] [def] [scope 820] [hash_rehash]
!333 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{metadata !52, metadata !327, metadata !202}
!335 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_insert", metadata !"hash_insert", metadata !"", i32 908, metadata !336, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_insert, null, null, metadata !23, i32 909} ; [ DW_TAG_subprogram ] [line 908] [def] [scope 909] [hash_insert]
!336 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!337 = metadata !{metadata !96, metadata !327, metadata !138}
!338 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_delete", metadata !"hash_delete", metadata !"", i32 983, metadata !336, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_delete, null, null, metadata !23, i32 984} ; [ DW_TAG_subprogram ] [line 983] [def] [scope 984] [hash_delete]
!339 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"hash_find_entry", metadata !"hash_find_entry", metadata !"", i32 744, metadata !340, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*, %struct.hash_entry**, i1)* @hash_find_entry, null, null, metadata !23, i32 746} ; [ DW_TAG_subprogram ] [line 744] [local] [def] [scope 746] [hash_find_entry]
!340 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!341 = metadata !{metadata !96, metadata !327, metadata !138, metadata !342, metadata !52}
!342 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!343 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"free_entry", metadata !"free_entry", metadata !"", i32 730, metadata !344, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*, %struct.hash_entry*)* @free_entry, null, null, metadata !23, i32 731} ; [ DW_TAG_subprogram ] [line 730] [local] [def] [scope 731] [free_entry]
!344 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!345 = metadata !{null, metadata !327, metadata !209}
!346 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"allocate_entry", metadata !"allocate_entry", metadata !"", i32 705, metadata !347, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.hash_entry* (%struct.hash_table*)* @allocate_entry, null, null, metadata !23, i32 706} ; [ DW_TAG_subprogram ] [line 705] [local] [def] [scope 706] [allocate_entry]
!347 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!348 = metadata !{metadata !209, metadata !327}
!349 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"next_prime", metadata !"next_prime", metadata !"", i32 456, metadata !350, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @next_prime, null, null, metadata !23, i32 457} ; [ DW_TAG_subprogram ] [line 456] [local] [def] [scope 457] [next_prime]
!350 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!351 = metadata !{metadata !202, metadata !202}
!352 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"is_prime", metadata !"is_prime", metadata !"", i32 437, metadata !353, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64)* @is_prime, null, null, metadata !23, i32 438} ; [ DW_TAG_subprogram ] [line 437] [local] [def] [scope 438] [is_prime]
!353 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!354 = metadata !{metadata !52, metadata !202}
!355 = metadata !{i32 786478, metadata !196, metadata !199, metadata !"check_tuning", metadata !"check_tuning", metadata !"", i32 484, metadata !356, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.hash_table*)* @check_tuning, null, null, metadata !23, i32 485} ; [ DW_TAG_subprogram ] [line 484] [local] [def] [scope 485] [check_tuning]
!356 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!357 = metadata !{metadata !52, metadata !327}
!358 = metadata !{metadata !359}
!359 = metadata !{i32 786484, i32 0, null, metadata !"default_tuning", metadata !"default_tuning", metadata !"", metadata !199, i32 130, metadata !223, i32 1, i32 1, { float, float, float, float, i8, [3 x i8] }* @default_tuning, null} ; [ DW_TAG_variable ] [default_tuning] [line 130] [local] [def]
!360 = metadata !{i32 786449, metadata !361, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !362, metadata !370, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/closeout.c] [DW_LANG_C99]
!361 = metadata !{metadata !"closeout.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!362 = metadata !{metadata !363, metadata !367}
!363 = metadata !{i32 786478, metadata !361, metadata !364, metadata !"close_stdout_set_file_name", metadata !"close_stdout_set_file_name", metadata !"", i32 47, metadata !365, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @close_stdout_set_file_name, null, null, metadata !23, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [close_stdout_set_file_name]
!364 = metadata !{i32 786473, metadata !361}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/closeout.c]
!365 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!366 = metadata !{null, metadata !129}
!367 = metadata !{i32 786478, metadata !361, metadata !364, metadata !"close_stdout", metadata !"close_stdout", metadata !"", i32 74, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @close_stdout, null, null, metadata !23, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [close_stdout]
!368 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!369 = metadata !{null}
!370 = metadata !{metadata !371}
!371 = metadata !{i32 786484, i32 0, null, metadata !"file_name", metadata !"file_name", metadata !"", metadata !364, i32 42, metadata !129, i32 1, i32 1, i8** @file_name, null} ; [ DW_TAG_variable ] [file_name] [line 42] [local] [def]
!372 = metadata !{i32 786449, metadata !373, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !23, metadata !374, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/exitfail.c] [DW_LANG_C99]
!373 = metadata !{metadata !"exitfail.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!374 = metadata !{metadata !375}
!375 = metadata !{i32 786484, i32 0, null, metadata !"exit_failure", metadata !"exit_failure", metadata !"", metadata !376, i32 27, metadata !377, i32 0, i32 1, i32* @exit_failure, null} ; [ DW_TAG_variable ] [exit_failure] [line 27] [def]
!376 = metadata !{i32 786473, metadata !373}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/exitfail.c]
!377 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from int]
!378 = metadata !{i32 786449, metadata !379, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !380, metadata !23, metadata !391, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quote.c] [DW_LANG_C99]
!379 = metadata !{metadata !"quote.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!380 = metadata !{metadata !381}
!381 = metadata !{i32 786436, metadata !382, null, metadata !"quoting_style", i32 28, i64 32, i64 32, i32 0, i32 0, null, metadata !383, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [quoting_style] [line 28, size 32, align 32, offset 0] [def] [from ]
!382 = metadata !{metadata !"./quotearg.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!383 = metadata !{metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!384 = metadata !{i32 786472, metadata !"literal_quoting_style", i64 0} ; [ DW_TAG_enumerator ] [literal_quoting_style :: 0]
!385 = metadata !{i32 786472, metadata !"shell_quoting_style", i64 1} ; [ DW_TAG_enumerator ] [shell_quoting_style :: 1]
!386 = metadata !{i32 786472, metadata !"shell_always_quoting_style", i64 2} ; [ DW_TAG_enumerator ] [shell_always_quoting_style :: 2]
!387 = metadata !{i32 786472, metadata !"c_quoting_style", i64 3} ; [ DW_TAG_enumerator ] [c_quoting_style :: 3]
!388 = metadata !{i32 786472, metadata !"escape_quoting_style", i64 4} ; [ DW_TAG_enumerator ] [escape_quoting_style :: 4]
!389 = metadata !{i32 786472, metadata !"locale_quoting_style", i64 5} ; [ DW_TAG_enumerator ] [locale_quoting_style :: 5]
!390 = metadata !{i32 786472, metadata !"clocale_quoting_style", i64 6} ; [ DW_TAG_enumerator ] [clocale_quoting_style :: 6]
!391 = metadata !{metadata !392, metadata !396}
!392 = metadata !{i32 786478, metadata !379, metadata !393, metadata !"quote_n", metadata !"quote_n", metadata !"", i32 30, metadata !394, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quote_n, null, null, metadata !23, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [quote_n]
!393 = metadata !{i32 786473, metadata !379}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quote.c]
!394 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!395 = metadata !{metadata !129, metadata !37, metadata !129}
!396 = metadata !{i32 786478, metadata !379, metadata !393, metadata !"quote", metadata !"quote", metadata !"", i32 38, metadata !397, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quote, null, null, metadata !23, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [quote]
!397 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!398 = metadata !{metadata !129, metadata !129}
!399 = metadata !{i32 786449, metadata !400, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !401, metadata !23, metadata !404, metadata !467, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c] [DW_LANG_C99]
!400 = metadata !{metadata !"quotearg.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!401 = metadata !{metadata !381, metadata !402}
!402 = metadata !{i32 786436, metadata !403, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!403 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!404 = metadata !{metadata !405, metadata !418, metadata !421, metadata !424, metadata !427, metadata !433, metadata !436, metadata !439, metadata !442, metadata !445, metadata !448, metadata !451, metadata !454, metadata !455, metadata !458, metadata !461, metadata !464}
!405 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"clone_quoting_options", metadata !"clone_quoting_options", metadata !"", i32 122, metadata !407, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.quoting_options* (%struct.quoting_options*)* @clone_quoting_options, null, null, metadata !23, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [clone_quoting_options]
!406 = metadata !{i32 786473, metadata !400}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!407 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!408 = metadata !{metadata !409, metadata !409}
!409 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !410} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from quoting_options]
!410 = metadata !{i32 786451, metadata !400, null, metadata !"quoting_options", i32 80, i64 288, i64 32, i32 0, i32 0, null, metadata !411, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [quoting_options] [line 80, size 288, align 32, offset 0] [def] [from ]
!411 = metadata !{metadata !412, metadata !413}
!412 = metadata !{i32 786445, metadata !400, metadata !410, metadata !"style", i32 83, i64 32, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_member ] [style] [line 83, size 32, align 32, offset 0] [from quoting_style]
!413 = metadata !{i32 786445, metadata !400, metadata !410, metadata !"quote_these_too", i32 87, i64 256, i64 32, i64 32, i32 0, metadata !414} ; [ DW_TAG_member ] [quote_these_too] [line 87, size 256, align 32, offset 32] [from ]
!414 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !415, metadata !416, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!415 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!416 = metadata !{metadata !417}
!417 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!418 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"get_quoting_style", metadata !"get_quoting_style", metadata !"", i32 133, metadata !419, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*)* @get_quoting_style, null, null, metadata !23, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [get_quoting_style]
!419 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !420, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!420 = metadata !{metadata !381, metadata !409}
!421 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"set_quoting_style", metadata !"set_quoting_style", metadata !"", i32 141, metadata !422, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoting_options*, i32)* @set_quoting_style, null, null, metadata !23, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [set_quoting_style]
!422 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!423 = metadata !{null, metadata !409, metadata !381}
!424 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"set_char_quoting", metadata !"set_char_quoting", metadata !"", i32 152, metadata !425, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*, i8, i32)* @set_char_quoting, null, null, metadata !23, i32 153} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 153] [set_char_quoting]
!425 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!426 = metadata !{metadata !37, metadata !409, metadata !48, metadata !37}
!427 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_buffer", metadata !"quotearg_buffer", metadata !"", i32 526, metadata !428, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64, %struct.quoting_options*)* @quotearg_buffer, null, null, metadata !23, i32 529} ; [ DW_TAG_subprogram ] [line 526] [def] [scope 529] [quotearg_buffer]
!428 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!429 = metadata !{metadata !430, metadata !47, metadata !430, metadata !129, metadata !430, metadata !431}
!430 = metadata !{i32 786454, metadata !400, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!431 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !432} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!432 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !410} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_options]
!433 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_alloc", metadata !"quotearg_alloc", metadata !"", i32 541, metadata !434, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, %struct.quoting_options*)* @quotearg_alloc, null, null, metadata !23, i32 543} ; [ DW_TAG_subprogram ] [line 541] [def] [scope 543] [quotearg_alloc]
!434 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!435 = metadata !{metadata !47, metadata !129, metadata !430, metadata !431}
!436 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_n", metadata !"quotearg_n", metadata !"", i32 619, metadata !437, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_n, null, null, metadata !23, i32 620} ; [ DW_TAG_subprogram ] [line 619] [def] [scope 620] [quotearg_n]
!437 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !438, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!438 = metadata !{metadata !47, metadata !37, metadata !129}
!439 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg", metadata !"quotearg", metadata !"", i32 625, metadata !440, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg, null, null, metadata !23, i32 626} ; [ DW_TAG_subprogram ] [line 625] [def] [scope 626] [quotearg]
!440 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!441 = metadata !{metadata !47, metadata !129}
!442 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_n_style", metadata !"quotearg_n_style", metadata !"", i32 641, metadata !443, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*)* @quotearg_n_style, null, null, metadata !23, i32 642} ; [ DW_TAG_subprogram ] [line 641] [def] [scope 642] [quotearg_n_style]
!443 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!444 = metadata !{metadata !47, metadata !37, metadata !381, metadata !129}
!445 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_n_style_mem", metadata !"quotearg_n_style_mem", metadata !"", i32 648, metadata !446, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*, i64)* @quotearg_n_style_mem, null, null, metadata !23, i32 650} ; [ DW_TAG_subprogram ] [line 648] [def] [scope 650] [quotearg_n_style_mem]
!446 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!447 = metadata !{metadata !47, metadata !37, metadata !381, metadata !129, metadata !430}
!448 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_style", metadata !"quotearg_style", metadata !"", i32 656, metadata !449, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_style, null, null, metadata !23, i32 657} ; [ DW_TAG_subprogram ] [line 656] [def] [scope 657] [quotearg_style]
!449 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!450 = metadata !{metadata !47, metadata !381, metadata !129}
!451 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_char", metadata !"quotearg_char", metadata !"", i32 662, metadata !452, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8)* @quotearg_char, null, null, metadata !23, i32 663} ; [ DW_TAG_subprogram ] [line 662] [def] [scope 663] [quotearg_char]
!452 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!453 = metadata !{metadata !47, metadata !129, metadata !48}
!454 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_colon", metadata !"quotearg_colon", metadata !"", i32 671, metadata !440, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg_colon, null, null, metadata !23, i32 672} ; [ DW_TAG_subprogram ] [line 671] [def] [scope 672] [quotearg_colon]
!455 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quoting_options_from_style", metadata !"quoting_options_from_style", metadata !"", i32 632, metadata !456, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoting_options*, i32)* @quoting_options_from_style, null, null, metadata !23, i32 633} ; [ DW_TAG_subprogram ] [line 632] [local] [def] [scope 633] [quoting_options_from_style]
!456 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!457 = metadata !{metadata !410, metadata !381}
!458 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_n_options", metadata !"quotearg_n_options", metadata !"", i32 561, metadata !459, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*, i64, %struct.quoting_options*)* @quotearg_n_options, null, null, metadata !23, i32 563} ; [ DW_TAG_subprogram ] [line 561] [local] [def] [scope 563] [quotearg_n_options]
!459 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !460, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!460 = metadata !{metadata !47, metadata !37, metadata !129, metadata !430, metadata !431}
!461 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"quotearg_buffer_restyled", metadata !"quotearg_buffer_restyled", metadata !"", i32 188, metadata !462, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64, i32, %struct.quoting_options*)* @quotearg_buffer_restyled, null, null, metadata !23, i32 192} ; [ DW_TAG_subprogram ] [line 188] [local] [def] [scope 192] [quotearg_buffer_restyled]
!462 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !463, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!463 = metadata !{metadata !430, metadata !47, metadata !430, metadata !129, metadata !430, metadata !381, metadata !431}
!464 = metadata !{i32 786478, metadata !400, metadata !406, metadata !"gettext_quote", metadata !"gettext_quote", metadata !"", i32 166, metadata !465, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @gettext_quote, null, null, metadata !23, i32 167} ; [ DW_TAG_subprogram ] [line 166] [local] [def] [scope 167] [gettext_quote]
!465 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !466, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!466 = metadata !{metadata !129, metadata !129, metadata !381}
!467 = metadata !{metadata !468, metadata !471, metadata !476, metadata !477, metadata !481, metadata !482, metadata !487}
!468 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_args", metadata !"quoting_style_args", metadata !"", metadata !406, i32 91, metadata !469, i32 0, i32 1, [8 x i8*]* @quoting_style_args, null} ; [ DW_TAG_variable ] [quoting_style_args] [line 91] [def]
!469 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !470, metadata !416, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!470 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!471 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_vals", metadata !"quoting_style_vals", metadata !"", metadata !406, i32 104, metadata !472, i32 0, i32 1, [7 x i32]* @quoting_style_vals, null} ; [ DW_TAG_variable ] [quoting_style_vals] [line 104] [def]
!472 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !473, metadata !474, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from ]
!473 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !381} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_style]
!474 = metadata !{metadata !475}
!475 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!476 = metadata !{i32 786484, i32 0, null, metadata !"default_quoting_options", metadata !"default_quoting_options", metadata !"", metadata !406, i32 116, metadata !410, i32 1, i32 1, %struct.quoting_options* @default_quoting_options, null} ; [ DW_TAG_variable ] [default_quoting_options] [line 116] [local] [def]
!477 = metadata !{i32 786484, i32 0, metadata !458, metadata !"slot0", metadata !"slot0", metadata !"", metadata !406, i32 568, metadata !478, i32 1, i32 1, [256 x i8]* @quotearg_n_options.slot0, null} ; [ DW_TAG_variable ] [slot0] [line 568] [local] [def]
!478 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !48, metadata !479, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!479 = metadata !{metadata !480}
!480 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!481 = metadata !{i32 786484, i32 0, metadata !458, metadata !"nslots", metadata !"nslots", metadata !"", metadata !406, i32 569, metadata !415, i32 1, i32 1, i32* @quotearg_n_options.nslots, null} ; [ DW_TAG_variable ] [nslots] [line 569] [local] [def]
!482 = metadata !{i32 786484, i32 0, metadata !458, metadata !"slotvec0", metadata !"slotvec0", metadata !"", metadata !406, i32 576, metadata !483, i32 1, i32 1, %struct.slotvec* @quotearg_n_options.slotvec0, null} ; [ DW_TAG_variable ] [slotvec0] [line 576] [local] [def]
!483 = metadata !{i32 786451, metadata !400, metadata !458, metadata !"slotvec", i32 571, i64 128, i64 64, i32 0, i32 0, null, metadata !484, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [slotvec] [line 571, size 128, align 64, offset 0] [def] [from ]
!484 = metadata !{metadata !485, metadata !486}
!485 = metadata !{i32 786445, metadata !400, metadata !483, metadata !"size", i32 573, i64 64, i64 64, i64 0, i32 0, metadata !430} ; [ DW_TAG_member ] [size] [line 573, size 64, align 64, offset 0] [from size_t]
!486 = metadata !{i32 786445, metadata !400, metadata !483, metadata !"val", i32 574, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [val] [line 574, size 64, align 64, offset 64] [from ]
!487 = metadata !{i32 786484, i32 0, metadata !458, metadata !"slotvec", metadata !"slotvec", metadata !"", metadata !406, i32 577, metadata !488, i32 1, i32 1, %struct.slotvec** @quotearg_n_options.slotvec, null} ; [ DW_TAG_variable ] [slotvec] [line 577] [local] [def]
!488 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !483} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from slotvec]
!489 = metadata !{i32 786449, metadata !490, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !491, metadata !548, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/version-etc.c] [DW_LANG_C99]
!490 = metadata !{metadata !"version-etc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!491 = metadata !{metadata !492, metadata !545}
!492 = metadata !{i32 786478, metadata !490, metadata !493, metadata !"version_etc_va", metadata !"version_etc_va", metadata !"", i32 48, metadata !494, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag*)* @version_etc_va, null, null, metadata !23, i32 51} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 51] [version_etc_va]
!493 = metadata !{i32 786473, metadata !490}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/version-etc.c]
!494 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!495 = metadata !{null, metadata !496, metadata !129, metadata !129, metadata !129, metadata !537}
!496 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !497} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!497 = metadata !{i32 786454, metadata !490, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!498 = metadata !{i32 786451, metadata !259, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !499, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!499 = metadata !{metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !535, metadata !536}
!500 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!501 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!502 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!503 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!504 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!505 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!506 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!507 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!508 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!509 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!510 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!511 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!512 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !513} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!513 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !514} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!514 = metadata !{i32 786451, metadata !259, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !515, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!515 = metadata !{metadata !516, metadata !517, metadata !519}
!516 = metadata !{i32 786445, metadata !259, metadata !514, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !513} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!517 = metadata !{i32 786445, metadata !259, metadata !514, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !518} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!518 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !498} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!519 = metadata !{i32 786445, metadata !259, metadata !514, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!520 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !518} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!521 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !37} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!522 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!523 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !285} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!524 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!525 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !90} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!526 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !92} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!527 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !96} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!528 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !291} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!529 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!530 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!531 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!532 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!533 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !534} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!534 = metadata !{i32 786454, metadata !259, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!535 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !37} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!536 = metadata !{i32 786445, metadata !259, metadata !498, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !107} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!537 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !538} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!538 = metadata !{i32 786454, metadata !490, null, metadata !"__va_list_tag", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !539} ; [ DW_TAG_typedef ] [__va_list_tag] [line 51, size 0, align 0, offset 0] [from __va_list_tag]
!539 = metadata !{i32 786451, metadata !490, null, metadata !"__va_list_tag", i32 51, i64 192, i64 64, i32 0, i32 0, null, metadata !540, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 51, size 192, align 64, offset 0] [def] [from ]
!540 = metadata !{metadata !541, metadata !542, metadata !543, metadata !544}
!541 = metadata !{i32 786445, metadata !490, metadata !539, metadata !"gp_offset", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !415} ; [ DW_TAG_member ] [gp_offset] [line 51, size 32, align 32, offset 0] [from unsigned int]
!542 = metadata !{i32 786445, metadata !490, metadata !539, metadata !"fp_offset", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !415} ; [ DW_TAG_member ] [fp_offset] [line 51, size 32, align 32, offset 32] [from unsigned int]
!543 = metadata !{i32 786445, metadata !490, metadata !539, metadata !"overflow_arg_area", i32 51, i64 64, i64 64, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ] [overflow_arg_area] [line 51, size 64, align 64, offset 64] [from ]
!544 = metadata !{i32 786445, metadata !490, metadata !539, metadata !"reg_save_area", i32 51, i64 64, i64 64, i64 128, i32 0, metadata !96} ; [ DW_TAG_member ] [reg_save_area] [line 51, size 64, align 64, offset 128] [from ]
!545 = metadata !{i32 786478, metadata !490, metadata !493, metadata !"version_etc", metadata !"version_etc", metadata !"", i32 171, metadata !546, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc, null, null, metadata !23, i32 174} ; [ DW_TAG_subprogram ] [line 171] [def] [scope 174] [version_etc]
!546 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !547, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!547 = metadata !{null, metadata !496, metadata !129, metadata !129, metadata !129}
!548 = metadata !{metadata !549}
!549 = metadata !{i32 786484, i32 0, null, metadata !"version_etc_copyright", metadata !"version_etc_copyright", metadata !"", metadata !493, i32 40, metadata !129, i32 0, i32 1, i8** @version_etc_copyright, null} ; [ DW_TAG_variable ] [version_etc_copyright] [line 40] [def]
!550 = metadata !{i32 786449, metadata !551, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !552, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xalloc-die.c] [DW_LANG_C99]
!551 = metadata !{metadata !"xalloc-die.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!552 = metadata !{metadata !553}
!553 = metadata !{i32 786478, metadata !551, metadata !554, metadata !"xalloc_die", metadata !"xalloc_die", metadata !"", i32 36, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @xalloc_die, null, null, metadata !23, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [xalloc_die]
!554 = metadata !{i32 786473, metadata !551}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xalloc-die.c]
!555 = metadata !{i32 786449, metadata !556, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !557, metadata !23, metadata !567, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c] [DW_LANG_C99]
!556 = metadata !{metadata !"xmalloc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!557 = metadata !{metadata !558}
!558 = metadata !{i32 786436, metadata !556, metadata !559, metadata !"", i32 154, i64 32, i64 32, i32 0, i32 0, null, metadata !565, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 154, size 32, align 32, offset 0] [def] [from ]
!559 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"x2nrealloc_inline", metadata !"x2nrealloc_inline", metadata !"", i32 142, metadata !561, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*, i64)* @x2nrealloc_inline, null, null, metadata !23, i32 143} ; [ DW_TAG_subprogram ] [line 142] [local] [def] [scope 143] [x2nrealloc_inline]
!560 = metadata !{i32 786473, metadata !556}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!561 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!562 = metadata !{metadata !96, metadata !96, metadata !563, metadata !564}
!563 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !564} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from size_t]
!564 = metadata !{i32 786454, metadata !556, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!565 = metadata !{metadata !566}
!566 = metadata !{i32 786472, metadata !"DEFAULT_MXFAST", i64 64} ; [ DW_TAG_enumerator ] [DEFAULT_MXFAST :: 64]
!567 = metadata !{metadata !568, metadata !571, metadata !574, metadata !577, metadata !580, metadata !581, metadata !584, metadata !585, metadata !586, metadata !589, metadata !559, metadata !590, metadata !591}
!568 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xnmalloc", metadata !"xnmalloc", metadata !"", i32 46, metadata !569, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xnmalloc, null, null, metadata !23, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [xnmalloc]
!569 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !570, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!570 = metadata !{metadata !96, metadata !564, metadata !564}
!571 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xmalloc", metadata !"xmalloc", metadata !"", i32 54, metadata !572, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xmalloc, null, null, metadata !23, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [xmalloc]
!572 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !573, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!573 = metadata !{metadata !96, metadata !564}
!574 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xnrealloc", metadata !"xnrealloc", metadata !"", i32 71, metadata !575, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, i64)* @xnrealloc, null, null, metadata !23, i32 72} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 72] [xnrealloc]
!575 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!576 = metadata !{metadata !96, metadata !96, metadata !564, metadata !564}
!577 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xrealloc", metadata !"xrealloc", metadata !"", i32 80, metadata !578, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xrealloc, null, null, metadata !23, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [xrealloc]
!578 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !579, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!579 = metadata !{metadata !96, metadata !96, metadata !564}
!580 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"x2nrealloc", metadata !"x2nrealloc", metadata !"", i32 172, metadata !561, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*, i64)* @x2nrealloc, null, null, metadata !23, i32 173} ; [ DW_TAG_subprogram ] [line 172] [def] [scope 173] [x2nrealloc]
!581 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"x2realloc", metadata !"x2realloc", metadata !"", i32 184, metadata !582, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*)* @x2realloc, null, null, metadata !23, i32 185} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 185] [x2realloc]
!582 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !583, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!583 = metadata !{metadata !96, metadata !96, metadata !563}
!584 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xzalloc", metadata !"xzalloc", metadata !"", i32 194, metadata !572, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xzalloc, null, null, metadata !23, i32 195} ; [ DW_TAG_subprogram ] [line 194] [def] [scope 195] [xzalloc]
!585 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xcalloc", metadata !"xcalloc", metadata !"", i32 203, metadata !569, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xcalloc, null, null, metadata !23, i32 204} ; [ DW_TAG_subprogram ] [line 203] [def] [scope 204] [xcalloc]
!586 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xmemdup", metadata !"xmemdup", metadata !"", i32 218, metadata !587, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xmemdup, null, null, metadata !23, i32 219} ; [ DW_TAG_subprogram ] [line 218] [def] [scope 219] [xmemdup]
!587 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!588 = metadata !{metadata !96, metadata !138, metadata !564}
!589 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xstrdup", metadata !"xstrdup", metadata !"", i32 226, metadata !440, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @xstrdup, null, null, metadata !23, i32 227} ; [ DW_TAG_subprogram ] [line 226] [def] [scope 227] [xstrdup]
!590 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xnrealloc_inline", metadata !"xnrealloc_inline", metadata !"", i32 63, metadata !575, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, i64)* @xnrealloc_inline, null, null, metadata !23, i32 64} ; [ DW_TAG_subprogram ] [line 63] [local] [def] [scope 64] [xnrealloc_inline]
!591 = metadata !{i32 786478, metadata !556, metadata !560, metadata !"xnmalloc_inline", metadata !"xnmalloc_inline", metadata !"", i32 37, metadata !569, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xnmalloc_inline, null, null, metadata !23, i32 38} ; [ DW_TAG_subprogram ] [line 37] [local] [def] [scope 38] [xnmalloc_inline]
!592 = metadata !{i32 786449, metadata !593, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !594, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xstrndup.c] [DW_LANG_C99]
!593 = metadata !{metadata !"xstrndup.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!594 = metadata !{metadata !595}
!595 = metadata !{i32 786478, metadata !593, metadata !596, metadata !"xstrndup", metadata !"xstrndup", metadata !"", i32 33, metadata !597, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xstrndup, null, null, metadata !23, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [xstrndup]
!596 = metadata !{i32 786473, metadata !593}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xstrndup.c]
!597 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !598, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!598 = metadata !{metadata !47, metadata !129, metadata !599}
!599 = metadata !{i32 786454, metadata !593, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!600 = metadata !{i32 786449, metadata !601, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !602, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c] [DW_LANG_C99]
!601 = metadata !{metadata !"getndelim2.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!602 = metadata !{metadata !603}
!603 = metadata !{i32 786478, metadata !601, metadata !604, metadata !"getndelim2", metadata !"getndelim2", metadata !"", i32 63, metadata !605, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8**, i64*, i64, i64, i32, i32, %struct._IO_FILE*)* @getndelim2, null, null, metadata !23, i32 65} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 65] [getndelim2]
!604 = metadata !{i32 786473, metadata !601}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!605 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !606, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!606 = metadata !{metadata !607, metadata !46, metadata !609, metadata !610, metadata !610, metadata !37, metadata !37, metadata !611}
!607 = metadata !{i32 786454, metadata !601, null, metadata !"ssize_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !608} ; [ DW_TAG_typedef ] [ssize_t] [line 102, size 0, align 0, offset 0] [from __ssize_t]
!608 = metadata !{i32 786454, metadata !601, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!609 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !610} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from size_t]
!610 = metadata !{i32 786454, metadata !601, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!611 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !612} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!612 = metadata !{i32 786454, metadata !601, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !613} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!613 = metadata !{i32 786451, metadata !259, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !614, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!614 = metadata !{metadata !615, metadata !616, metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650}
!615 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!616 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!617 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!618 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!619 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!620 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!621 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!622 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!623 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!624 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!625 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!626 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!627 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !628} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!628 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !629} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!629 = metadata !{i32 786451, metadata !259, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !630, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!630 = metadata !{metadata !631, metadata !632, metadata !634}
!631 = metadata !{i32 786445, metadata !259, metadata !629, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !628} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!632 = metadata !{i32 786445, metadata !259, metadata !629, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !633} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!633 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !613} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!634 = metadata !{i32 786445, metadata !259, metadata !629, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!635 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !633} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!636 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !37} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!637 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !37} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!638 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !285} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!639 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!640 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !90} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!641 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !92} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!642 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !96} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!643 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !291} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!644 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!645 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!646 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!647 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!648 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !610} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!649 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !37} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!650 = metadata !{i32 786445, metadata !259, metadata !613, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !107} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!651 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!652 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!653 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!654 = metadata !{i32 786689, metadata !25, metadata !"x", metadata !27, i32 16777234, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 18]
!655 = metadata !{i32 18, i32 0, metadata !25, null}
!656 = metadata !{i32 786689, metadata !25, metadata !"y", metadata !27, i32 33554450, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 18]
!657 = metadata !{i32 19, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !26, metadata !25, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!659 = metadata !{i32 20, i32 0, metadata !658, null}
!660 = metadata !{i32 22, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !26, metadata !662, i32 22, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!662 = metadata !{i32 786443, metadata !26, metadata !658, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!663 = metadata !{i32 786688, metadata !664, metadata !"file", metadata !27, i32 25, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 25]
!664 = metadata !{i32 786443, metadata !26, metadata !661, i32 22, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!665 = metadata !{i32 25, i32 0, metadata !664, null}
!666 = metadata !{i32 786688, metadata !664, metadata !"marker_file", metadata !27, i32 26, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marker_file] [line 26]
!667 = metadata !{i32 26, i32 0, metadata !664, null}
!668 = metadata !{i32 28, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !26, metadata !664, i32 28, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!670 = metadata !{i32 786688, metadata !671, metadata !"f", metadata !27, i32 31, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 31]
!671 = metadata !{i32 786443, metadata !26, metadata !669, i32 28, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!672 = metadata !{i32 31, i32 0, metadata !671, null}
!673 = metadata !{i32 32, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !26, metadata !671, i32 32, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!675 = metadata !{i32 33, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !26, metadata !674, i32 32, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!677 = metadata !{i32 34, i32 0, metadata !676, null}
!678 = metadata !{i32 35, i32 0, metadata !676, null}
!679 = metadata !{i32 36, i32 0, metadata !676, null}
!680 = metadata !{i32 38, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !26, metadata !674, i32 37, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!682 = metadata !{i32 40, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !26, metadata !671, i32 40, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!684 = metadata !{i32 41, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !26, metadata !683, i32 40, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!686 = metadata !{i32 42, i32 0, metadata !687, null}
!687 = metadata !{i32 786443, metadata !26, metadata !685, i32 42, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!688 = metadata !{i32 43, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !26, metadata !687, i32 42, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!690 = metadata !{i32 44, i32 0, metadata !689, null}
!691 = metadata !{i32 45, i32 0, metadata !689, null}
!692 = metadata !{i32 47, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !26, metadata !687, i32 46, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!694 = metadata !{i32 49, i32 0, metadata !685, null}
!695 = metadata !{i32 51, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !26, metadata !683, i32 50, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!697 = metadata !{i32 54, i32 0, metadata !671, null}
!698 = metadata !{i32 56, i32 0, metadata !699, null}
!699 = metadata !{i32 786443, metadata !26, metadata !669, i32 55, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!700 = metadata !{i32 59, i32 0, metadata !664, null}
!701 = metadata !{i32 60, i32 0, metadata !664, null}
!702 = metadata !{i32 61, i32 0, metadata !662, null}
!703 = metadata !{i32 64, i32 0, metadata !25, null}
!704 = metadata !{i32 4, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !33, metadata !32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!706 = metadata !{i32 5, i32 0, metadata !38, null}
!707 = metadata !{i32 786689, metadata !39, metadata !"status", metadata !40, i32 16777414, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 198]
!708 = metadata !{i32 198, i32 0, metadata !39, null}
!709 = metadata !{i32 200, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !711, i32 200, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!711 = metadata !{i32 786443, metadata !1, metadata !39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!712 = metadata !{i32 201, i32 0, metadata !710, null}
!713 = metadata !{i32 205, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !710, i32 204, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!715 = metadata !{i32 209, i32 0, metadata !714, null}
!716 = metadata !{i32 213, i32 0, metadata !714, null}
!717 = metadata !{i32 216, i32 0, metadata !714, null}
!718 = metadata !{i32 221, i32 0, metadata !714, null}
!719 = metadata !{i32 227, i32 0, metadata !714, null}
!720 = metadata !{i32 231, i32 0, metadata !714, null}
!721 = metadata !{i32 236, i32 0, metadata !714, null}
!722 = metadata !{i32 237, i32 0, metadata !714, null}
!723 = metadata !{i32 238, i32 0, metadata !714, null}
!724 = metadata !{i32 252, i32 0, metadata !714, null}
!725 = metadata !{i32 254, i32 0, metadata !711, null}
!726 = metadata !{i32 255, i32 0, metadata !711, null}
!727 = metadata !{i32 786689, metadata !43, metadata !"argc", metadata !40, i32 16778035, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 819]
!728 = metadata !{i32 819, i32 0, metadata !43, null}
!729 = metadata !{i32 786689, metadata !43, metadata !"argv", metadata !40, i32 33555251, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 819]
!730 = metadata !{i32 786688, metadata !43, metadata !"optc", metadata !40, i32 821, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optc] [line 821]
!731 = metadata !{i32 821, i32 0, metadata !43, null}
!732 = metadata !{i32 786688, metadata !43, metadata !"ok", metadata !40, i32 822, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ok] [line 822]
!733 = metadata !{i32 822, i32 0, metadata !43, null}
!734 = metadata !{i32 786688, metadata !43, metadata !"delim_specified", metadata !40, i32 823, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delim_specified] [line 823]
!735 = metadata !{i32 823, i32 0, metadata !43, null}
!736 = metadata !{i32 786688, metadata !43, metadata !"spec_list_string", metadata !40, i32 824, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spec_list_string] [line 824]
!737 = metadata !{i32 824, i32 0, metadata !43, null}
!738 = metadata !{i32 827, i32 0, metadata !43, null}
!739 = metadata !{i32 828, i32 0, metadata !43, null}
!740 = metadata !{i32 832, i32 0, metadata !43, null}
!741 = metadata !{i32 834, i32 0, metadata !43, null}
!742 = metadata !{i32 837, i32 0, metadata !43, null}
!743 = metadata !{i32 839, i32 0, metadata !43, null}
!744 = metadata !{i32 840, i32 0, metadata !43, null}
!745 = metadata !{i32 842, i32 0, metadata !43, null}
!746 = metadata !{i32 844, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !43, i32 843, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!748 = metadata !{i32 849, i32 0, metadata !749, null}
!749 = metadata !{i32 786443, metadata !1, metadata !750, i32 849, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!750 = metadata !{i32 786443, metadata !1, metadata !747, i32 845, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!751 = metadata !{i32 850, i32 0, metadata !749, null}
!752 = metadata !{i32 850, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !749, i32 850, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!754 = metadata !{i32 851, i32 0, metadata !750, null}
!755 = metadata !{i32 852, i32 0, metadata !750, null}
!756 = metadata !{i32 853, i32 0, metadata !750, null}
!757 = metadata !{i32 857, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !750, i32 857, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!759 = metadata !{i32 858, i32 0, metadata !758, null}
!760 = metadata !{i32 858, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !758, i32 858, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!762 = metadata !{i32 859, i32 0, metadata !750, null}
!763 = metadata !{i32 860, i32 0, metadata !750, null}
!764 = metadata !{i32 861, i32 0, metadata !750, null}
!765 = metadata !{i32 866, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !750, i32 866, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!767 = metadata !{i32 867, i32 0, metadata !766, null}
!768 = metadata !{i32 867, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !766, i32 867, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!770 = metadata !{i32 868, i32 0, metadata !750, null}
!771 = metadata !{i32 869, i32 0, metadata !750, null}
!772 = metadata !{i32 870, i32 0, metadata !750, null}
!773 = metadata !{i32 873, i32 0, metadata !750, null}
!774 = metadata !{i32 876, i32 0, metadata !750, null}
!775 = metadata !{i32 877, i32 0, metadata !750, null}
!776 = metadata !{i32 878, i32 0, metadata !750, null}
!777 = metadata !{i32 879, i32 0, metadata !750, null}
!778 = metadata !{i32 882, i32 0, metadata !750, null}
!779 = metadata !{i32 885, i32 0, metadata !750, null}
!780 = metadata !{i32 886, i32 0, metadata !750, null}
!781 = metadata !{i32 890, i32 0, metadata !750, null}
!782 = metadata !{i32 891, i32 0, metadata !750, null}
!783 = metadata !{i32 893, i32 0, metadata !750, null}
!784 = metadata !{i32 895, i32 0, metadata !750, null}
!785 = metadata !{i32 898, i32 0, metadata !750, null}
!786 = metadata !{i32 899, i32 0, metadata !750, null}
!787 = metadata !{i32 900, i32 0, metadata !747, null}
!788 = metadata !{i32 902, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !43, i32 902, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!790 = metadata !{i32 903, i32 0, metadata !789, null}
!791 = metadata !{i32 903, i32 0, metadata !792, null}
!792 = metadata !{i32 786443, metadata !1, metadata !789, i32 903, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!793 = metadata !{i32 905, i32 0, metadata !794, null}
!794 = metadata !{i32 786443, metadata !1, metadata !43, i32 905, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!795 = metadata !{i32 906, i32 0, metadata !794, null}
!796 = metadata !{i32 906, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !794, i32 906, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!798 = metadata !{i32 909, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !43, i32 909, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!800 = metadata !{i32 910, i32 0, metadata !799, null}
!801 = metadata !{i32 910, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !1, metadata !799, i32 910, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!803 = metadata !{i32 913, i32 0, metadata !804, null}
!804 = metadata !{i32 786443, metadata !1, metadata !43, i32 913, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!805 = metadata !{i32 915, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !1, metadata !804, i32 914, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!807 = metadata !{i32 918, i32 0, metadata !808, null}
!808 = metadata !{i32 786443, metadata !1, metadata !806, i32 918, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!809 = metadata !{i32 919, i32 0, metadata !808, null}
!810 = metadata !{i32 921, i32 0, metadata !806, null}
!811 = metadata !{i32 923, i32 0, metadata !812, null}
!812 = metadata !{i32 786443, metadata !1, metadata !43, i32 923, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!813 = metadata !{i32 925, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !1, metadata !815, i32 925, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!815 = metadata !{i32 786443, metadata !1, metadata !812, i32 924, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!816 = metadata !{i32 926, i32 0, metadata !814, null}
!817 = metadata !{i32 926, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !1, metadata !814, i32 926, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!819 = metadata !{i32 928, i32 0, metadata !814, null}
!820 = metadata !{i32 928, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !814, i32 928, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!822 = metadata !{i32 929, i32 0, metadata !815, null}
!823 = metadata !{i32 931, i32 0, metadata !824, null}
!824 = metadata !{i32 786443, metadata !1, metadata !43, i32 931, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!825 = metadata !{i32 932, i32 0, metadata !824, null}
!826 = metadata !{i32 934, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !43, i32 934, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!828 = metadata !{i32 937, i32 0, metadata !829, null}
!829 = metadata !{i32 786443, metadata !1, metadata !827, i32 935, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!830 = metadata !{i32 938, i32 0, metadata !829, null}
!831 = metadata !{i32 939, i32 0, metadata !829, null}
!832 = metadata !{i32 940, i32 0, metadata !829, null}
!833 = metadata !{i32 941, i32 0, metadata !829, null}
!834 = metadata !{i32 943, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !1, metadata !43, i32 943, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!836 = metadata !{i32 944, i32 0, metadata !835, null}
!837 = metadata !{i32 946, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !1, metadata !835, i32 946, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!839 = metadata !{i32 947, i32 0, metadata !838, null}
!840 = metadata !{i32 949, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !1, metadata !43, i32 949, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!842 = metadata !{i32 950, i32 0, metadata !841, null}
!843 = metadata !{i32 952, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !43, i32 952, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!845 = metadata !{i32 954, i32 0, metadata !846, null}
!846 = metadata !{i32 786443, metadata !1, metadata !844, i32 953, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!847 = metadata !{i32 955, i32 0, metadata !846, null}
!848 = metadata !{i32 956, i32 0, metadata !846, null}
!849 = metadata !{i32 958, i32 0, metadata !43, null}
!850 = metadata !{i32 959, i32 0, metadata !43, null}
!851 = metadata !{i32 786689, metadata !146, metadata !"status", metadata !40, i32 16777265, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 49]
!852 = metadata !{i32 49, i32 0, metadata !146, null}
!853 = metadata !{i32 786689, metadata !146, metadata !"__errno_location", metadata !40, i32 33554481, metadata !149, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [__errno_location] [line 49]
!854 = metadata !{i32 786689, metadata !146, metadata !"format", metadata !40, i32 50331697, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [format] [line 49]
!855 = metadata !{i32 786688, metadata !146, metadata !"err_args", metadata !40, i32 50, metadata !856, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err_args] [line 50]
!856 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !857} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!857 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !858} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!858 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !859} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 50, size 0, align 0, offset 0] [from ]
!859 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !860, metadata !93, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!860 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !861} ; [ DW_TAG_typedef ] [__va_list_tag] [line 50, size 0, align 0, offset 0] [from __va_list_tag]
!861 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 50, i64 192, i64 64, i32 0, i32 0, null, metadata !862, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 50, size 192, align 64, offset 0] [def] [from ]
!862 = metadata !{metadata !863, metadata !864, metadata !865, metadata !866}
!863 = metadata !{i32 786445, metadata !1, metadata !861, metadata !"gp_offset", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !415} ; [ DW_TAG_member ] [gp_offset] [line 50, size 32, align 32, offset 0] [from unsigned int]
!864 = metadata !{i32 786445, metadata !1, metadata !861, metadata !"fp_offset", i32 50, i64 32, i64 32, i64 32, i32 0, metadata !415} ; [ DW_TAG_member ] [fp_offset] [line 50, size 32, align 32, offset 32] [from unsigned int]
!865 = metadata !{i32 786445, metadata !1, metadata !861, metadata !"overflow_arg_area", i32 50, i64 64, i64 64, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ] [overflow_arg_area] [line 50, size 64, align 64, offset 64] [from ]
!866 = metadata !{i32 786445, metadata !1, metadata !861, metadata !"reg_save_area", i32 50, i64 64, i64 64, i64 128, i32 0, metadata !96} ; [ DW_TAG_member ] [reg_save_area] [line 50, size 64, align 64, offset 128] [from ]
!867 = metadata !{i32 50, i32 0, metadata !146, null}
!868 = metadata !{i32 51, i32 0, metadata !146, null}
!869 = metadata !{i32 52, i32 0, metadata !146, null}
!870 = metadata !{i32 53, i32 0, metadata !146, null}
!871 = metadata !{i32 54, i32 0, metadata !146, null}
!872 = metadata !{i32 55, i32 0, metadata !146, null}
!873 = metadata !{i32 56, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !1, metadata !146, i32 56, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!875 = metadata !{i32 57, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !874, i32 56, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!877 = metadata !{i32 59, i32 0, metadata !146, null}
!878 = metadata !{i32 786689, metadata !143, metadata !"x", metadata !40, i32 16777502, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 286]
!879 = metadata !{i32 286, i32 0, metadata !143, null}
!880 = metadata !{i32 786689, metadata !143, metadata !"tablesize", metadata !40, i32 33554718, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tablesize] [line 286]
!881 = metadata !{i32 786688, metadata !143, metadata !"y", metadata !40, i32 289, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 289]
!882 = metadata !{i32 289, i32 0, metadata !143, null}
!883 = metadata !{i32 293, i32 0, metadata !143, null}
!884 = metadata !{i32 786689, metadata !140, metadata !"x", metadata !40, i32 16777513, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 297]
!885 = metadata !{i32 297, i32 0, metadata !140, null}
!886 = metadata !{i32 786689, metadata !140, metadata !"y", metadata !40, i32 33554729, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 297]
!887 = metadata !{i32 299, i32 0, metadata !140, null}
!888 = metadata !{i32 786689, metadata !126, metadata !"fieldstr", metadata !40, i32 16777578, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fieldstr] [line 362]
!889 = metadata !{i32 362, i32 0, metadata !126, null}
!890 = metadata !{i32 786688, metadata !126, metadata !"initial", metadata !40, i32 364, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial] [line 364]
!891 = metadata !{i32 364, i32 0, metadata !126, null}
!892 = metadata !{i32 786688, metadata !126, metadata !"value", metadata !40, i32 365, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 365]
!893 = metadata !{i32 365, i32 0, metadata !126, null}
!894 = metadata !{i32 786688, metadata !126, metadata !"dash_found", metadata !40, i32 366, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dash_found] [line 366]
!895 = metadata !{i32 366, i32 0, metadata !126, null}
!896 = metadata !{i32 786688, metadata !126, metadata !"field_found", metadata !40, i32 367, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [field_found] [line 367]
!897 = metadata !{i32 367, i32 0, metadata !126, null}
!898 = metadata !{i32 786688, metadata !126, metadata !"rp", metadata !40, i32 370, metadata !899, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rp] [line 370]
!899 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !900} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from range_pair]
!900 = metadata !{i32 786451, metadata !1, null, metadata !"range_pair", i32 86, i64 128, i64 64, i32 0, i32 0, null, metadata !901, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [range_pair] [line 86, size 128, align 64, offset 0] [def] [from ]
!901 = metadata !{metadata !902, metadata !903}
!902 = metadata !{i32 786445, metadata !1, metadata !900, metadata !"lo", i32 88, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_member ] [lo] [line 88, size 64, align 64, offset 0] [from size_t]
!903 = metadata !{i32 786445, metadata !1, metadata !900, metadata !"hi", i32 89, i64 64, i64 64, i64 64, i32 0, metadata !104} ; [ DW_TAG_member ] [hi] [line 89, size 64, align 64, offset 64] [from size_t]
!904 = metadata !{i32 370, i32 0, metadata !126, null}
!905 = metadata !{i32 786688, metadata !126, metadata !"n_rp", metadata !40, i32 371, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_rp] [line 371]
!906 = metadata !{i32 371, i32 0, metadata !126, null}
!907 = metadata !{i32 786688, metadata !126, metadata !"n_rp_allocated", metadata !40, i32 372, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_rp_allocated] [line 372]
!908 = metadata !{i32 372, i32 0, metadata !126, null}
!909 = metadata !{i32 786688, metadata !126, metadata !"i", metadata !40, i32 373, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 373]
!910 = metadata !{i32 373, i32 0, metadata !126, null}
!911 = metadata !{i32 786688, metadata !126, metadata !"in_digits", metadata !40, i32 374, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_digits] [line 374]
!912 = metadata !{i32 374, i32 0, metadata !126, null}
!913 = metadata !{i32 379, i32 0, metadata !914, null}
!914 = metadata !{i32 786443, metadata !1, metadata !126, i32 379, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!915 = metadata !{i32 381, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !917, i32 381, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!917 = metadata !{i32 786443, metadata !1, metadata !914, i32 380, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!918 = metadata !{i32 383, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !916, i32 382, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!920 = metadata !{i32 385, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !1, metadata !919, i32 385, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!922 = metadata !{i32 386, i32 0, metadata !921, null}
!923 = metadata !{i32 386, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !921, i32 386, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!925 = metadata !{i32 387, i32 0, metadata !919, null}
!926 = metadata !{i32 388, i32 0, metadata !919, null}
!927 = metadata !{i32 390, i32 0, metadata !928, null}
!928 = metadata !{i32 786443, metadata !1, metadata !919, i32 390, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!929 = metadata !{i32 392, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !928, i32 391, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!931 = metadata !{i32 393, i32 0, metadata !930, null}
!932 = metadata !{i32 394, i32 0, metadata !930, null}
!933 = metadata !{i32 396, i32 0, metadata !928, null}
!934 = metadata !{i32 397, i32 0, metadata !919, null}
!935 = metadata !{i32 398, i32 0, metadata !936, null}
!936 = metadata !{i32 786443, metadata !1, metadata !916, i32 398, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!937 = metadata !{i32 400, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !936, i32 399, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!939 = metadata !{i32 402, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !938, i32 402, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!941 = metadata !{i32 404, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !940, i32 403, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!943 = metadata !{i32 408, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !942, i32 408, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!945 = metadata !{i32 411, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !944, i32 409, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!947 = metadata !{i32 412, i32 0, metadata !946, null}
!948 = metadata !{i32 413, i32 0, metadata !946, null}
!949 = metadata !{i32 417, i32 0, metadata !950, null}
!950 = metadata !{i32 786443, metadata !1, metadata !951, i32 417, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!951 = metadata !{i32 786443, metadata !1, metadata !944, i32 415, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!952 = metadata !{i32 418, i32 0, metadata !950, null}
!953 = metadata !{i32 418, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !950, i32 418, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!955 = metadata !{i32 421, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !951, i32 421, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!957 = metadata !{i32 426, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !959, i32 426, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!959 = metadata !{i32 786443, metadata !1, metadata !956, i32 422, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!960 = metadata !{i32 431, i32 0, metadata !961, null}
!961 = metadata !{i32 786443, metadata !1, metadata !962, i32 431, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!962 = metadata !{i32 786443, metadata !1, metadata !958, i32 427, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!963 = metadata !{i32 434, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !961, i32 432, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!965 = metadata !{i32 435, i32 0, metadata !964, null}
!966 = metadata !{i32 440, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !961, i32 437, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!968 = metadata !{i32 440, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !970, i32 440, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!970 = metadata !{i32 786443, metadata !1, metadata !967, i32 440, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!971 = metadata !{i32 440, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !969, i32 440, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!973 = metadata !{i32 440, i32 0, metadata !970, null}
!974 = metadata !{i32 444, i32 0, metadata !962, null}
!975 = metadata !{i32 445, i32 0, metadata !962, null}
!976 = metadata !{i32 446, i32 0, metadata !959, null}
!977 = metadata !{i32 450, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !956, i32 448, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!979 = metadata !{i32 450, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !981, i32 450, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!981 = metadata !{i32 786443, metadata !1, metadata !978, i32 450, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!982 = metadata !{i32 450, i32 0, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !980, i32 450, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!984 = metadata !{i32 450, i32 0, metadata !981, null}
!985 = metadata !{i32 451, i32 0, metadata !978, null}
!986 = metadata !{i32 453, i32 0, metadata !951, null}
!987 = metadata !{i32 455, i32 0, metadata !942, null}
!988 = metadata !{i32 456, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !940, i32 456, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!990 = metadata !{i32 459, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !1, metadata !989, i32 457, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!992 = metadata !{i32 459, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !1, metadata !994, i32 459, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!994 = metadata !{i32 786443, metadata !1, metadata !991, i32 459, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!995 = metadata !{i32 459, i32 0, metadata !996, null}
!996 = metadata !{i32 786443, metadata !1, metadata !993, i32 459, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!997 = metadata !{i32 459, i32 0, metadata !994, null}
!998 = metadata !{i32 460, i32 0, metadata !991, null}
!999 = metadata !{i32 461, i32 0, metadata !991, null}
!1000 = metadata !{i32 462, i32 0, metadata !991, null}
!1001 = metadata !{i32 464, i32 0, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !1, metadata !938, i32 464, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1003 = metadata !{i32 466, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !1002, i32 465, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1005 = metadata !{i32 469, i32 0, metadata !938, null}
!1006 = metadata !{i32 470, i32 0, metadata !938, null}
!1007 = metadata !{i32 471, i32 0, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !1, metadata !936, i32 471, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1009 = metadata !{i32 786688, metadata !1010, metadata !"new_v", metadata !40, i32 473, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_v] [line 473]
!1010 = metadata !{i32 786443, metadata !1, metadata !1008, i32 472, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1011 = metadata !{i32 473, i32 0, metadata !1010, null}
!1012 = metadata !{i32 477, i32 0, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !1, metadata !1010, i32 477, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1014 = metadata !{i32 478, i32 0, metadata !1013, null}
!1015 = metadata !{i32 479, i32 0, metadata !1010, null}
!1016 = metadata !{i32 482, i32 0, metadata !1010, null}
!1017 = metadata !{i32 483, i32 0, metadata !1018, null}
!1018 = metadata !{i32 786443, metadata !1, metadata !1010, i32 483, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1019 = metadata !{i32 786688, metadata !1020, metadata !"len", metadata !40, i32 488, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 488]
!1020 = metadata !{i32 786443, metadata !1, metadata !1018, i32 484, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1021 = metadata !{i32 488, i32 0, metadata !1020, null}
!1022 = metadata !{i32 786688, metadata !1020, metadata !"bad_num", metadata !40, i32 489, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bad_num] [line 489]
!1023 = metadata !{i32 489, i32 0, metadata !1020, null}
!1024 = metadata !{i32 490, i32 0, metadata !1025, null}
!1025 = metadata !{i32 786443, metadata !1, metadata !1020, i32 490, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1026 = metadata !{i32 492, i32 0, metadata !1025, null}
!1027 = metadata !{i32 491, i32 0, metadata !1025, null}
!1028 = metadata !{i32 495, i32 0, metadata !1025, null}
!1029 = metadata !{i32 494, i32 0, metadata !1025, null}
!1030 = metadata !{i32 496, i32 0, metadata !1020, null}
!1031 = metadata !{i32 497, i32 0, metadata !1020, null}
!1032 = metadata !{i32 499, i32 0, metadata !1010, null}
!1033 = metadata !{i32 501, i32 0, metadata !1010, null}
!1034 = metadata !{i32 502, i32 0, metadata !1010, null}
!1035 = metadata !{i32 504, i32 0, metadata !1008, null}
!1036 = metadata !{i32 504, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1008, i32 504, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1038 = metadata !{i32 505, i32 0, metadata !917, null}
!1039 = metadata !{i32 507, i32 0, metadata !126, null}
!1040 = metadata !{i32 508, i32 0, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !126, i32 508, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1042 = metadata !{i32 510, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !1044, i32 510, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1044 = metadata !{i32 786443, metadata !1, metadata !1041, i32 509, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1045 = metadata !{i32 511, i32 0, metadata !1043, null}
!1046 = metadata !{i32 512, i32 0, metadata !1044, null}
!1047 = metadata !{i32 518, i32 0, metadata !126, null}
!1048 = metadata !{i32 520, i32 0, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !1, metadata !126, i32 520, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1050 = metadata !{i32 521, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1, metadata !1049, i32 520, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1052 = metadata !{i32 522, i32 0, metadata !1051, null}
!1053 = metadata !{i32 526, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !126, i32 526, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1055 = metadata !{i32 527, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1, metadata !1057, i32 527, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1057 = metadata !{i32 786443, metadata !1, metadata !1054, i32 526, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1058 = metadata !{i32 786688, metadata !1059, metadata !"j", metadata !40, i32 529, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 529]
!1059 = metadata !{i32 786443, metadata !1, metadata !1056, i32 528, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1060 = metadata !{i32 529, i32 0, metadata !1059, null}
!1061 = metadata !{i32 530, i32 0, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !1, metadata !1059, i32 530, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1063 = metadata !{i32 532, i32 0, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !1, metadata !1062, i32 531, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1065 = metadata !{i32 533, i32 0, metadata !1064, null}
!1066 = metadata !{i32 534, i32 0, metadata !1059, null}
!1067 = metadata !{i32 536, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1, metadata !1057, i32 536, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1069 = metadata !{i32 540, i32 0, metadata !1070, null}
!1070 = metadata !{i32 786443, metadata !1, metadata !1071, i32 540, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1071 = metadata !{i32 786443, metadata !1, metadata !1068, i32 537, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1072 = metadata !{i32 786688, metadata !1073, metadata !"j", metadata !40, i32 542, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 542]
!1073 = metadata !{i32 786443, metadata !1, metadata !1070, i32 541, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1074 = metadata !{i32 542, i32 0, metadata !1073, null}
!1075 = metadata !{i32 786688, metadata !1073, metadata !"rsi", metadata !40, i32 543, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsi] [line 543]
!1076 = metadata !{i32 543, i32 0, metadata !1073, null}
!1077 = metadata !{i32 545, i32 0, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !1, metadata !1073, i32 545, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1079 = metadata !{i32 547, i32 0, metadata !1080, null}
!1080 = metadata !{i32 786443, metadata !1, metadata !1081, i32 547, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1081 = metadata !{i32 786443, metadata !1, metadata !1078, i32 546, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1082 = metadata !{i32 549, i32 0, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !1, metadata !1080, i32 548, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1084 = metadata !{i32 550, i32 0, metadata !1083, null}
!1085 = metadata !{i32 552, i32 0, metadata !1081, null}
!1086 = metadata !{i32 554, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1073, i32 554, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1088 = metadata !{i32 555, i32 0, metadata !1087, null}
!1089 = metadata !{i32 557, i32 0, metadata !1090, null}
!1090 = metadata !{i32 786443, metadata !1, metadata !1073, i32 557, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1091 = metadata !{i32 786688, metadata !1092, metadata !"ent_from_table", metadata !40, i32 560, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ent_from_table] [line 560]
!1092 = metadata !{i32 786443, metadata !1, metadata !1090, i32 558, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1093 = metadata !{i32 560, i32 0, metadata !1092, null}
!1094 = metadata !{i32 561, i32 0, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !1, metadata !1092, i32 561, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1096 = metadata !{i32 564, i32 0, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !1, metadata !1095, i32 562, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1098 = metadata !{i32 566, i32 0, metadata !1092, null}
!1099 = metadata !{i32 567, i32 0, metadata !1092, null}
!1100 = metadata !{i32 568, i32 0, metadata !1073, null}
!1101 = metadata !{i32 569, i32 0, metadata !1071, null}
!1102 = metadata !{i32 570, i32 0, metadata !1057, null}
!1103 = metadata !{i32 572, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !1105, i32 572, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1105 = metadata !{i32 786443, metadata !1, metadata !1054, i32 570, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1106 = metadata !{i32 786688, metadata !1107, metadata !"j", metadata !40, i32 574, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 574]
!1107 = metadata !{i32 786443, metadata !1, metadata !1104, i32 573, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1108 = metadata !{i32 574, i32 0, metadata !1107, null}
!1109 = metadata !{i32 786688, metadata !1107, metadata !"rsi_candidate", metadata !40, i32 575, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsi_candidate] [line 575]
!1110 = metadata !{i32 575, i32 0, metadata !1107, null}
!1111 = metadata !{i32 579, i32 0, metadata !1107, null}
!1112 = metadata !{i32 580, i32 0, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !1, metadata !1107, i32 580, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1114 = metadata !{i32 581, i32 8, metadata !1113, null}
!1115 = metadata !{i32 582, i32 0, metadata !1113, null}
!1116 = metadata !{i32 584, i32 0, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !1, metadata !1107, i32 584, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1118 = metadata !{i32 585, i32 0, metadata !1117, null}
!1119 = metadata !{i32 586, i32 0, metadata !1107, null}
!1120 = metadata !{i32 588, i32 0, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !1, metadata !1105, i32 588, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1122 = metadata !{i32 590, i32 30, metadata !1121, null}
!1123 = metadata !{i32 591, i32 0, metadata !1121, null}
!1124 = metadata !{i32 595, i32 0, metadata !126, null}
!1125 = metadata !{i32 597, i32 0, metadata !126, null}
!1126 = metadata !{i32 786689, metadata !49, metadata !"file", metadata !40, i32 16777998, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 782]
!1127 = metadata !{i32 782, i32 0, metadata !49, null}
!1128 = metadata !{i32 786688, metadata !49, metadata !"stream", metadata !40, i32 784, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stream] [line 784]
!1129 = metadata !{i32 784, i32 0, metadata !49, null}
!1130 = metadata !{i32 786, i32 0, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !1, metadata !49, i32 786, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1132 = metadata !{i32 788, i32 0, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !1, metadata !1131, i32 787, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1134 = metadata !{i32 789, i32 0, metadata !1133, null}
!1135 = metadata !{i32 790, i32 0, metadata !1133, null}
!1136 = metadata !{i32 793, i32 0, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !1, metadata !1131, i32 792, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1138 = metadata !{i32 794, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !1137, i32 794, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1140 = metadata !{i32 796, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1, metadata !1139, i32 795, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1142 = metadata !{i32 797, i32 0, metadata !1141, null}
!1143 = metadata !{i32 801, i32 0, metadata !49, null}
!1144 = metadata !{i32 803, i32 0, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !1, metadata !49, i32 803, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1146 = metadata !{i32 805, i32 0, metadata !1147, null}
!1147 = metadata !{i32 786443, metadata !1, metadata !1145, i32 804, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1148 = metadata !{i32 806, i32 0, metadata !1147, null}
!1149 = metadata !{i32 808, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !49, i32 808, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1151 = metadata !{i32 809, i32 0, metadata !1150, null}
!1152 = metadata !{i32 810, i32 0, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !1, metadata !1150, i32 810, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1154 = metadata !{i32 812, i32 0, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1153, i32 811, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1156 = metadata !{i32 813, i32 0, metadata !1155, null}
!1157 = metadata !{i32 815, i32 0, metadata !49, null}
!1158 = metadata !{i32 816, i32 0, metadata !49, null}
!1159 = metadata !{i32 786689, metadata !53, metadata !"stream", metadata !40, i32 16777986, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 770]
!1160 = metadata !{i32 770, i32 0, metadata !53, null}
!1161 = metadata !{i32 772, i32 0, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !1, metadata !53, i32 772, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1163 = metadata !{i32 773, i32 0, metadata !1162, null}
!1164 = metadata !{i32 775, i32 0, metadata !1162, null}
!1165 = metadata !{i32 776, i32 0, metadata !53, null}
!1166 = metadata !{i32 786689, metadata !125, metadata !"stream", metadata !40, i32 16777819, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 603]
!1167 = metadata !{i32 603, i32 0, metadata !125, null}
!1168 = metadata !{i32 786688, metadata !125, metadata !"byte_idx", metadata !40, i32 605, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [byte_idx] [line 605]
!1169 = metadata !{i32 605, i32 0, metadata !125, null}
!1170 = metadata !{i32 786688, metadata !125, metadata !"print_delimiter", metadata !40, i32 608, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [print_delimiter] [line 608]
!1171 = metadata !{i32 608, i32 0, metadata !125, null}
!1172 = metadata !{i32 610, i32 0, metadata !125, null}
!1173 = metadata !{i32 611, i32 0, metadata !125, null}
!1174 = metadata !{i32 612, i32 0, metadata !125, null}
!1175 = metadata !{i32 786688, metadata !1176, metadata !"c", metadata !40, i32 614, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 614]
!1176 = metadata !{i32 786443, metadata !1, metadata !125, i32 613, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1177 = metadata !{i32 614, i32 0, metadata !1176, null}
!1178 = metadata !{i32 616, i32 0, metadata !1176, null}
!1179 = metadata !{i32 618, i32 0, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !1, metadata !1176, i32 618, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1181 = metadata !{i32 620, i32 0, metadata !1182, null}
!1182 = metadata !{i32 786443, metadata !1, metadata !1180, i32 619, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1183 = metadata !{i32 621, i32 0, metadata !1182, null}
!1184 = metadata !{i32 622, i32 0, metadata !1182, null}
!1185 = metadata !{i32 623, i32 0, metadata !1182, null}
!1186 = metadata !{i32 624, i32 0, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !1, metadata !1180, i32 624, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1188 = metadata !{i32 626, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1190, i32 626, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1190 = metadata !{i32 786443, metadata !1, metadata !1187, i32 625, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1191 = metadata !{i32 627, i32 0, metadata !1189, null}
!1192 = metadata !{i32 628, i32 0, metadata !1190, null}
!1193 = metadata !{i32 786688, metadata !1194, metadata !"range_start", metadata !40, i32 632, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range_start] [line 632]
!1194 = metadata !{i32 786443, metadata !1, metadata !1187, i32 631, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1195 = metadata !{i32 632, i32 0, metadata !1194, null}
!1196 = metadata !{i32 786688, metadata !1194, metadata !"rs", metadata !40, i32 633, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rs] [line 633]
!1197 = metadata !{i32 633, i32 0, metadata !1194, null}
!1198 = metadata !{i32 634, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1, metadata !1194, i32 634, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1200 = metadata !{i32 636, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !1, metadata !1202, i32 636, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1202 = metadata !{i32 786443, metadata !1, metadata !1199, i32 635, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1203 = metadata !{i32 638, i32 0, metadata !1204, null}
!1204 = metadata !{i32 786443, metadata !1, metadata !1201, i32 637, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1205 = metadata !{i32 640, i32 0, metadata !1204, null}
!1206 = metadata !{i32 641, i32 0, metadata !1202, null}
!1207 = metadata !{i32 642, i32 0, metadata !1202, null}
!1208 = metadata !{i32 643, i32 0, metadata !1202, null}
!1209 = metadata !{i32 645, i32 0, metadata !1176, null}
!1210 = metadata !{i32 646, i32 0, metadata !125, null}
!1211 = metadata !{i32 786689, metadata !110, metadata !"stream", metadata !40, i32 16777867, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 651]
!1212 = metadata !{i32 651, i32 0, metadata !110, null}
!1213 = metadata !{i32 786688, metadata !110, metadata !"c", metadata !40, i32 653, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 653]
!1214 = metadata !{i32 653, i32 0, metadata !110, null}
!1215 = metadata !{i32 786688, metadata !110, metadata !"field_idx", metadata !40, i32 654, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [field_idx] [line 654]
!1216 = metadata !{i32 654, i32 0, metadata !110, null}
!1217 = metadata !{i32 786688, metadata !110, metadata !"found_any_selected_field", metadata !40, i32 655, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found_any_selected_field] [line 655]
!1218 = metadata !{i32 655, i32 0, metadata !110, null}
!1219 = metadata !{i32 786688, metadata !110, metadata !"buffer_first_field", metadata !40, i32 656, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer_first_field] [line 656]
!1220 = metadata !{i32 656, i32 0, metadata !110, null}
!1221 = metadata !{i32 658, i32 0, metadata !110, null}
!1222 = metadata !{i32 659, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !110, i32 659, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1224 = metadata !{i32 660, i32 0, metadata !1223, null}
!1225 = metadata !{i32 662, i32 0, metadata !110, null}
!1226 = metadata !{i32 670, i32 0, metadata !110, null}
!1227 = metadata !{i32 672, i32 0, metadata !110, null}
!1228 = metadata !{i32 674, i32 0, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !1, metadata !1230, i32 674, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1230 = metadata !{i32 786443, metadata !1, metadata !110, i32 673, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1231 = metadata !{i32 786688, metadata !1232, metadata !"len", metadata !40, i32 676, metadata !1233, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 676]
!1232 = metadata !{i32 786443, metadata !1, metadata !1229, i32 675, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1233 = metadata !{i32 786454, metadata !1, null, metadata !"ssize_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !1234} ; [ DW_TAG_typedef ] [ssize_t] [line 102, size 0, align 0, offset 0] [from __ssize_t]
!1234 = metadata !{i32 786454, metadata !1, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!1235 = metadata !{i32 676, i32 0, metadata !1232, null}
!1236 = metadata !{i32 786688, metadata !1232, metadata !"n_bytes", metadata !40, i32 677, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_bytes] [line 677]
!1237 = metadata !{i32 677, i32 0, metadata !1232, null}
!1238 = metadata !{i32 679, i32 0, metadata !1232, null}
!1239 = metadata !{i32 681, i32 0, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !1, metadata !1232, i32 681, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1241 = metadata !{i32 683, i32 0, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !1, metadata !1240, i32 682, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1243 = metadata !{i32 684, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1, metadata !1242, i32 684, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1245 = metadata !{i32 685, i32 0, metadata !1244, null}
!1246 = metadata !{i32 686, i32 0, metadata !1242, null}
!1247 = metadata !{i32 689, i32 0, metadata !1232, null}
!1248 = metadata !{i32 690, i32 0, metadata !1232, null}
!1249 = metadata !{i32 695, i32 8, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !1, metadata !1232, i32 695, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1251 = metadata !{i32 697, i32 0, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1, metadata !1253, i32 697, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1253 = metadata !{i32 786443, metadata !1, metadata !1250, i32 696, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1254 = metadata !{i32 700, i32 0, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !1, metadata !1252, i32 698, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1256 = metadata !{i32 703, i32 0, metadata !1257, null}
!1257 = metadata !{i32 786443, metadata !1, metadata !1252, i32 702, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1258 = metadata !{i32 705, i32 0, metadata !1259, null}
!1259 = metadata !{i32 786443, metadata !1, metadata !1257, i32 705, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1260 = metadata !{i32 706, i32 0, metadata !1259, null}
!1261 = metadata !{i32 708, i32 0, metadata !1253, null}
!1262 = metadata !{i32 710, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !1, metadata !1232, i32 710, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1264 = metadata !{i32 713, i32 0, metadata !1265, null}
!1265 = metadata !{i32 786443, metadata !1, metadata !1263, i32 711, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1266 = metadata !{i32 714, i32 0, metadata !1265, null}
!1267 = metadata !{i32 715, i32 0, metadata !1265, null}
!1268 = metadata !{i32 716, i32 0, metadata !1232, null}
!1269 = metadata !{i32 717, i32 0, metadata !1232, null}
!1270 = metadata !{i32 719, i32 0, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !1, metadata !1230, i32 719, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1272 = metadata !{i32 721, i32 0, metadata !1273, null}
!1273 = metadata !{i32 786443, metadata !1, metadata !1274, i32 721, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1274 = metadata !{i32 786443, metadata !1, metadata !1271, i32 720, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1275 = metadata !{i32 723, i32 0, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !1, metadata !1277, i32 723, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1277 = metadata !{i32 786443, metadata !1, metadata !1273, i32 722, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1278 = metadata !{i32 725, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !1, metadata !1276, i32 724, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1280 = metadata !{i32 727, i32 0, metadata !1279, null}
!1281 = metadata !{i32 728, i32 0, metadata !1277, null}
!1282 = metadata !{i32 730, i32 0, metadata !1277, null}
!1283 = metadata !{i32 732, i32 0, metadata !1284, null}
!1284 = metadata !{i32 786443, metadata !1, metadata !1277, i32 731, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1285 = metadata !{i32 733, i32 0, metadata !1284, null}
!1286 = metadata !{i32 734, i32 0, metadata !1277, null}
!1287 = metadata !{i32 737, i32 0, metadata !1288, null}
!1288 = metadata !{i32 786443, metadata !1, metadata !1273, i32 736, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1289 = metadata !{i32 740, i32 0, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !1, metadata !1288, i32 738, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1291 = metadata !{i32 742, i32 0, metadata !1274, null}
!1292 = metadata !{i32 744, i32 0, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !1, metadata !1230, i32 744, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1294 = metadata !{i32 746, i32 0, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !1, metadata !1293, i32 745, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1296 = metadata !{i32 747, i32 0, metadata !1297, null}
!1297 = metadata !{i32 786443, metadata !1, metadata !1295, i32 747, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1298 = metadata !{i32 749, i32 0, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !1, metadata !1297, i32 748, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1300 = metadata !{i32 750, i32 0, metadata !1299, null}
!1301 = metadata !{i32 751, i32 0, metadata !1299, null}
!1302 = metadata !{i32 752, i32 0, metadata !1295, null}
!1303 = metadata !{i32 754, i32 0, metadata !1304, null}
!1304 = metadata !{i32 786443, metadata !1, metadata !1230, i32 754, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1305 = metadata !{i32 755, i32 0, metadata !1304, null}
!1306 = metadata !{i32 756, i32 0, metadata !1307, null}
!1307 = metadata !{i32 786443, metadata !1, metadata !1304, i32 756, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1308 = metadata !{i32 758, i32 0, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !1, metadata !1310, i32 758, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1310 = metadata !{i32 786443, metadata !1, metadata !1307, i32 757, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1311 = metadata !{i32 760, i32 0, metadata !1309, null}
!1312 = metadata !{i32 761, i32 0, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !1, metadata !1310, i32 761, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1314 = metadata !{i32 762, i32 0, metadata !1313, null}
!1315 = metadata !{i32 763, i32 0, metadata !1310, null}
!1316 = metadata !{i32 764, i32 0, metadata !1310, null}
!1317 = metadata !{i32 765, i32 0, metadata !1310, null}
!1318 = metadata !{i32 766, i32 0, metadata !1230, null}
!1319 = metadata !{i32 767, i32 0, metadata !110, null}
!1320 = metadata !{i32 786689, metadata !117, metadata !"k", metadata !40, i32 16777530, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 314]
!1321 = metadata !{i32 314, i32 0, metadata !117, null}
!1322 = metadata !{i32 786689, metadata !117, metadata !"range_start", metadata !40, i32 33554746, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [range_start] [line 314]
!1323 = metadata !{i32 786688, metadata !1324, metadata !"k_selected", metadata !40, i32 316, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k_selected] [line 316]
!1324 = metadata !{i32 786443, metadata !1, metadata !117} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1325 = metadata !{i32 316, i32 0, metadata !1324, null}
!1326 = metadata !{i32 318, i32 39, metadata !1324, null}
!1327 = metadata !{i32 786688, metadata !1324, metadata !"old_return_val", metadata !40, i32 320, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_return_val] [line 320]
!1328 = metadata !{i32 320, i32 0, metadata !1324, null}
!1329 = metadata !{i32 786688, metadata !1324, metadata !"is_selected", metadata !40, i32 322, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [is_selected] [line 322]
!1330 = metadata !{i32 322, i32 0, metadata !1324, null}
!1331 = metadata !{i32 324, i32 0, metadata !1332, null}
!1332 = metadata !{i32 786443, metadata !1, metadata !1324, i32 324, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1333 = metadata !{i32 325, i32 0, metadata !1334, null}
!1334 = metadata !{i32 786443, metadata !1, metadata !1332, i32 324, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1335 = metadata !{i32 326, i32 0, metadata !1334, null}
!1336 = metadata !{i32 328, i32 0, metadata !1324, null}
!1337 = metadata !{i32 786689, metadata !111, metadata !"ch", metadata !113, i32 16777683, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ch] [line 467]
!1338 = metadata !{i32 467, i32 0, metadata !111, null}
!1339 = metadata !{i32 467, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !112, metadata !111} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/./system.h]
!1341 = metadata !{i32 786689, metadata !124, metadata !"i", metadata !40, i32 16777495, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 279]
!1342 = metadata !{i32 279, i32 0, metadata !124, null}
!1343 = metadata !{i32 786688, metadata !124, metadata !"n", metadata !40, i32 281, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 281]
!1344 = metadata !{i32 281, i32 0, metadata !124, null}
!1345 = metadata !{i32 282, i32 0, metadata !124, null}
!1346 = metadata !{i32 786689, metadata !121, metadata !"i", metadata !40, i32 16777519, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 303]
!1347 = metadata !{i32 303, i32 0, metadata !121, null}
!1348 = metadata !{i32 305, i32 0, metadata !121, null}
!1349 = metadata !{i32 786689, metadata !135, metadata !"a", metadata !40, i32 16777551, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 335]
!1350 = metadata !{i32 335, i32 0, metadata !135, null}
!1351 = metadata !{i32 786689, metadata !135, metadata !"b", metadata !40, i32 33554767, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 335]
!1352 = metadata !{i32 786688, metadata !135, metadata !"a_start", metadata !40, i32 337, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_start] [line 337]
!1353 = metadata !{i32 337, i32 0, metadata !135, null}
!1354 = metadata !{i32 786688, metadata !135, metadata !"b_start", metadata !40, i32 338, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b_start] [line 338]
!1355 = metadata !{i32 338, i32 0, metadata !135, null}
!1356 = metadata !{i32 339, i32 0, metadata !135, null}
!1357 = metadata !{i32 786689, metadata !134, metadata !"i", metadata !40, i32 16777488, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 272]
!1358 = metadata !{i32 272, i32 0, metadata !134, null}
!1359 = metadata !{i32 786688, metadata !134, metadata !"n", metadata !40, i32 274, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 274]
!1360 = metadata !{i32 274, i32 0, metadata !134, null}
!1361 = metadata !{i32 275, i32 0, metadata !134, null}
!1362 = metadata !{i32 276, i32 0, metadata !134, null}
!1363 = metadata !{i32 786689, metadata !131, metadata !"i", metadata !40, i32 16777475, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 259]
!1364 = metadata !{i32 259, i32 0, metadata !131, null}
!1365 = metadata !{i32 786688, metadata !131, metadata !"ent_from_table", metadata !40, i32 262, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ent_from_table] [line 262]
!1366 = metadata !{i32 262, i32 0, metadata !131, null}
!1367 = metadata !{i32 263, i32 0, metadata !1368, null}
!1368 = metadata !{i32 786443, metadata !1, metadata !131, i32 263, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1369 = metadata !{i32 266, i32 0, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !1, metadata !1368, i32 264, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/src/cut.c]
!1371 = metadata !{i32 268, i32 0, metadata !131, null}
!1372 = metadata !{i32 269, i32 0, metadata !131, null}
!1373 = metadata !{i32 786689, metadata !198, metadata !"table", metadata !199, i32 16777366, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 150]
!1374 = metadata !{i32 150, i32 0, metadata !198, null}
!1375 = metadata !{i32 152, i32 0, metadata !198, null}
!1376 = metadata !{i32 786689, metadata !247, metadata !"table", metadata !199, i32 16777374, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 158]
!1377 = metadata !{i32 158, i32 0, metadata !247, null}
!1378 = metadata !{i32 160, i32 0, metadata !247, null}
!1379 = metadata !{i32 786689, metadata !248, metadata !"table", metadata !199, i32 16777382, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 166]
!1380 = metadata !{i32 166, i32 0, metadata !248, null}
!1381 = metadata !{i32 168, i32 0, metadata !248, null}
!1382 = metadata !{i32 786689, metadata !249, metadata !"table", metadata !199, i32 16777390, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 174]
!1383 = metadata !{i32 174, i32 0, metadata !249, null}
!1384 = metadata !{i32 786688, metadata !249, metadata !"bucket", metadata !199, i32 176, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 176]
!1385 = metadata !{i32 176, i32 0, metadata !249, null}
!1386 = metadata !{i32 786688, metadata !249, metadata !"max_bucket_length", metadata !199, i32 177, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_bucket_length] [line 177]
!1387 = metadata !{i32 177, i32 0, metadata !249, null}
!1388 = metadata !{i32 179, i32 0, metadata !1389, null}
!1389 = metadata !{i32 786443, metadata !196, metadata !249, i32 179, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1390 = metadata !{i32 181, i32 0, metadata !1391, null}
!1391 = metadata !{i32 786443, metadata !196, metadata !1392, i32 181, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1392 = metadata !{i32 786443, metadata !196, metadata !1389, i32 180, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1393 = metadata !{i32 786688, metadata !1394, metadata !"cursor", metadata !199, i32 183, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 183]
!1394 = metadata !{i32 786443, metadata !196, metadata !1391, i32 182, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1395 = metadata !{i32 183, i32 0, metadata !1394, null}
!1396 = metadata !{i32 786688, metadata !1394, metadata !"bucket_length", metadata !199, i32 184, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket_length] [line 184]
!1397 = metadata !{i32 184, i32 0, metadata !1394, null}
!1398 = metadata !{i32 186, i32 0, metadata !1394, null}
!1399 = metadata !{i32 187, i32 0, metadata !1394, null}
!1400 = metadata !{i32 189, i32 0, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !196, metadata !1394, i32 189, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1402 = metadata !{i32 190, i32 0, metadata !1401, null}
!1403 = metadata !{i32 191, i32 0, metadata !1394, null}
!1404 = metadata !{i32 192, i32 0, metadata !1392, null}
!1405 = metadata !{i32 194, i32 0, metadata !249, null}
!1406 = metadata !{i32 786689, metadata !250, metadata !"table", metadata !199, i32 16777417, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 201]
!1407 = metadata !{i32 201, i32 0, metadata !250, null}
!1408 = metadata !{i32 786688, metadata !250, metadata !"bucket", metadata !199, i32 203, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 203]
!1409 = metadata !{i32 203, i32 0, metadata !250, null}
!1410 = metadata !{i32 786688, metadata !250, metadata !"n_buckets_used", metadata !199, i32 204, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_buckets_used] [line 204]
!1411 = metadata !{i32 204, i32 0, metadata !250, null}
!1412 = metadata !{i32 786688, metadata !250, metadata !"n_entries", metadata !199, i32 205, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_entries] [line 205]
!1413 = metadata !{i32 205, i32 0, metadata !250, null}
!1414 = metadata !{i32 207, i32 0, metadata !1415, null}
!1415 = metadata !{i32 786443, metadata !196, metadata !250, i32 207, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1416 = metadata !{i32 209, i32 0, metadata !1417, null}
!1417 = metadata !{i32 786443, metadata !196, metadata !1418, i32 209, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1418 = metadata !{i32 786443, metadata !196, metadata !1415, i32 208, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1419 = metadata !{i32 786688, metadata !1420, metadata !"cursor", metadata !199, i32 211, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 211]
!1420 = metadata !{i32 786443, metadata !196, metadata !1417, i32 210, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1421 = metadata !{i32 211, i32 0, metadata !1420, null}
!1422 = metadata !{i32 214, i32 0, metadata !1420, null}
!1423 = metadata !{i32 215, i32 0, metadata !1420, null}
!1424 = metadata !{i32 218, i32 0, metadata !1420, null}
!1425 = metadata !{i32 219, i32 0, metadata !1420, null}
!1426 = metadata !{i32 220, i32 0, metadata !1420, null}
!1427 = metadata !{i32 221, i32 0, metadata !1418, null}
!1428 = metadata !{i32 223, i32 0, metadata !1429, null}
!1429 = metadata !{i32 786443, metadata !196, metadata !250, i32 223, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1430 = metadata !{i32 224, i32 0, metadata !1429, null}
!1431 = metadata !{i32 226, i32 0, metadata !250, null}
!1432 = metadata !{i32 227, i32 0, metadata !250, null}
!1433 = metadata !{i32 786689, metadata !253, metadata !"table", metadata !199, i32 16777446, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 230]
!1434 = metadata !{i32 230, i32 0, metadata !253, null}
!1435 = metadata !{i32 786689, metadata !253, metadata !"stream", metadata !199, i32 33554662, metadata !256, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 230]
!1436 = metadata !{i32 786688, metadata !253, metadata !"n_entries", metadata !199, i32 232, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_entries] [line 232]
!1437 = metadata !{i32 232, i32 0, metadata !253, null}
!1438 = metadata !{i32 786688, metadata !253, metadata !"n_buckets", metadata !199, i32 233, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_buckets] [line 233]
!1439 = metadata !{i32 233, i32 0, metadata !253, null}
!1440 = metadata !{i32 786688, metadata !253, metadata !"n_buckets_used", metadata !199, i32 234, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_buckets_used] [line 234]
!1441 = metadata !{i32 234, i32 0, metadata !253, null}
!1442 = metadata !{i32 786688, metadata !253, metadata !"max_bucket_length", metadata !199, i32 235, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_bucket_length] [line 235]
!1443 = metadata !{i32 235, i32 0, metadata !253, null}
!1444 = metadata !{i32 237, i32 0, metadata !253, null}
!1445 = metadata !{i32 238, i32 0, metadata !253, null}
!1446 = metadata !{i32 239, i32 0, metadata !253, null}
!1447 = metadata !{i32 242, i32 0, metadata !253, null}
!1448 = metadata !{i32 244, i32 0, metadata !253, null}
!1449 = metadata !{i32 786689, metadata !299, metadata !"table", metadata !199, i32 16777466, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 250]
!1450 = metadata !{i32 250, i32 0, metadata !299, null}
!1451 = metadata !{i32 786689, metadata !299, metadata !"entry", metadata !199, i32 33554682, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entry] [line 250]
!1452 = metadata !{i32 786688, metadata !299, metadata !"bucket", metadata !199, i32 252, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 252]
!1453 = metadata !{i32 252, i32 0, metadata !299, null}
!1454 = metadata !{i32 253, i32 0, metadata !299, null}
!1455 = metadata !{i32 786688, metadata !299, metadata !"cursor", metadata !199, i32 254, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 254]
!1456 = metadata !{i32 254, i32 0, metadata !299, null}
!1457 = metadata !{i32 256, i32 0, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !196, metadata !299, i32 256, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1459 = metadata !{i32 257, i32 0, metadata !1458, null}
!1460 = metadata !{i32 259, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !196, metadata !299, i32 259, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1462 = metadata !{i32 260, i32 0, metadata !1461, null}
!1463 = metadata !{i32 262, i32 0, metadata !1464, null}
!1464 = metadata !{i32 786443, metadata !196, metadata !299, i32 262, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1465 = metadata !{i32 263, i32 0, metadata !1466, null}
!1466 = metadata !{i32 786443, metadata !196, metadata !1464, i32 263, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1467 = metadata !{i32 264, i32 0, metadata !1466, null}
!1468 = metadata !{i32 266, i32 0, metadata !299, null}
!1469 = metadata !{i32 267, i32 0, metadata !299, null}
!1470 = metadata !{i32 786689, metadata !302, metadata !"table", metadata !199, i32 16777495, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 279]
!1471 = metadata !{i32 279, i32 0, metadata !302, null}
!1472 = metadata !{i32 786688, metadata !302, metadata !"bucket", metadata !199, i32 281, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 281]
!1473 = metadata !{i32 281, i32 0, metadata !302, null}
!1474 = metadata !{i32 283, i32 0, metadata !1475, null}
!1475 = metadata !{i32 786443, metadata !196, metadata !302, i32 283, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1476 = metadata !{i32 284, i32 0, metadata !1475, null}
!1477 = metadata !{i32 286, i32 0, metadata !1478, null}
!1478 = metadata !{i32 786443, metadata !196, metadata !302, i32 286, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1479 = metadata !{i32 287, i32 0, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !196, metadata !1478, i32 287, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1481 = metadata !{i32 288, i32 0, metadata !1480, null}
!1482 = metadata !{i32 289, i32 0, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !196, metadata !1480, i32 289, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1484 = metadata !{i32 290, i32 0, metadata !1483, null}
!1485 = metadata !{i32 290, i32 0, metadata !1480, null}
!1486 = metadata !{i32 291, i32 0, metadata !302, null}
!1487 = metadata !{i32 786689, metadata !305, metadata !"table", metadata !199, i32 16777514, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 298]
!1488 = metadata !{i32 298, i32 0, metadata !305, null}
!1489 = metadata !{i32 786689, metadata !305, metadata !"entry", metadata !199, i32 33554730, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entry] [line 298]
!1490 = metadata !{i32 786688, metadata !305, metadata !"bucket", metadata !199, i32 300, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 300]
!1491 = metadata !{i32 300, i32 0, metadata !305, null}
!1492 = metadata !{i32 301, i32 0, metadata !305, null}
!1493 = metadata !{i32 786688, metadata !305, metadata !"cursor", metadata !199, i32 302, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 302]
!1494 = metadata !{i32 302, i32 0, metadata !305, null}
!1495 = metadata !{i32 304, i32 0, metadata !1496, null}
!1496 = metadata !{i32 786443, metadata !196, metadata !305, i32 304, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1497 = metadata !{i32 305, i32 0, metadata !1496, null}
!1498 = metadata !{i32 308, i32 0, metadata !1499, null}
!1499 = metadata !{i32 786443, metadata !196, metadata !305, i32 308, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1500 = metadata !{i32 309, i32 0, metadata !1501, null}
!1501 = metadata !{i32 786443, metadata !196, metadata !1499, i32 309, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1502 = metadata !{i32 310, i32 0, metadata !1501, null}
!1503 = metadata !{i32 313, i32 0, metadata !305, null}
!1504 = metadata !{i32 314, i32 0, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !196, metadata !305, i32 314, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1506 = metadata !{i32 315, i32 0, metadata !1505, null}
!1507 = metadata !{i32 318, i32 0, metadata !305, null}
!1508 = metadata !{i32 319, i32 0, metadata !305, null}
!1509 = metadata !{i32 786689, metadata !306, metadata !"table", metadata !199, i32 16777542, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 326]
!1510 = metadata !{i32 326, i32 0, metadata !306, null}
!1511 = metadata !{i32 786689, metadata !306, metadata !"buffer", metadata !199, i32 33554758, metadata !309, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 326]
!1512 = metadata !{i32 786689, metadata !306, metadata !"buffer_size", metadata !199, i32 50331975, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer_size] [line 327]
!1513 = metadata !{i32 327, i32 0, metadata !306, null}
!1514 = metadata !{i32 786688, metadata !306, metadata !"counter", metadata !199, i32 329, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [counter] [line 329]
!1515 = metadata !{i32 329, i32 0, metadata !306, null}
!1516 = metadata !{i32 786688, metadata !306, metadata !"bucket", metadata !199, i32 330, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 330]
!1517 = metadata !{i32 330, i32 0, metadata !306, null}
!1518 = metadata !{i32 786688, metadata !306, metadata !"cursor", metadata !199, i32 331, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 331]
!1519 = metadata !{i32 331, i32 0, metadata !306, null}
!1520 = metadata !{i32 333, i32 0, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !196, metadata !306, i32 333, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1522 = metadata !{i32 335, i32 0, metadata !1523, null}
!1523 = metadata !{i32 786443, metadata !196, metadata !1524, i32 335, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1524 = metadata !{i32 786443, metadata !196, metadata !1521, i32 334, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1525 = metadata !{i32 337, i32 0, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !196, metadata !1527, i32 337, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1527 = metadata !{i32 786443, metadata !196, metadata !1523, i32 336, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1528 = metadata !{i32 339, i32 0, metadata !1529, null}
!1529 = metadata !{i32 786443, metadata !196, metadata !1530, i32 339, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1530 = metadata !{i32 786443, metadata !196, metadata !1526, i32 338, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1531 = metadata !{i32 340, i32 0, metadata !1529, null}
!1532 = metadata !{i32 341, i32 0, metadata !1530, null}
!1533 = metadata !{i32 342, i32 0, metadata !1530, null}
!1534 = metadata !{i32 343, i32 0, metadata !1527, null}
!1535 = metadata !{i32 344, i32 0, metadata !1524, null}
!1536 = metadata !{i32 346, i32 0, metadata !306, null}
!1537 = metadata !{i32 347, i32 0, metadata !306, null}
!1538 = metadata !{i32 786689, metadata !310, metadata !"table", metadata !199, i32 16777574, metadata !203, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 358]
!1539 = metadata !{i32 358, i32 0, metadata !310, null}
!1540 = metadata !{i32 786689, metadata !310, metadata !"processor", metadata !199, i32 33554790, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [processor] [line 358]
!1541 = metadata !{i32 786689, metadata !310, metadata !"processor_data", metadata !199, i32 50332007, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [processor_data] [line 359]
!1542 = metadata !{i32 359, i32 0, metadata !310, null}
!1543 = metadata !{i32 786688, metadata !310, metadata !"counter", metadata !199, i32 361, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [counter] [line 361]
!1544 = metadata !{i32 361, i32 0, metadata !310, null}
!1545 = metadata !{i32 786688, metadata !310, metadata !"bucket", metadata !199, i32 362, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 362]
!1546 = metadata !{i32 362, i32 0, metadata !310, null}
!1547 = metadata !{i32 786688, metadata !310, metadata !"cursor", metadata !199, i32 363, metadata !216, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 363]
!1548 = metadata !{i32 363, i32 0, metadata !310, null}
!1549 = metadata !{i32 365, i32 0, metadata !1550, null}
!1550 = metadata !{i32 786443, metadata !196, metadata !310, i32 365, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1551 = metadata !{i32 367, i32 0, metadata !1552, null}
!1552 = metadata !{i32 786443, metadata !196, metadata !1553, i32 367, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1553 = metadata !{i32 786443, metadata !196, metadata !1550, i32 366, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1554 = metadata !{i32 369, i32 0, metadata !1555, null}
!1555 = metadata !{i32 786443, metadata !196, metadata !1556, i32 369, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1556 = metadata !{i32 786443, metadata !196, metadata !1552, i32 368, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1557 = metadata !{i32 371, i32 0, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !196, metadata !1559, i32 371, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1559 = metadata !{i32 786443, metadata !196, metadata !1555, i32 370, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1560 = metadata !{i32 372, i32 0, metadata !1558, null}
!1561 = metadata !{i32 373, i32 0, metadata !1559, null}
!1562 = metadata !{i32 374, i32 0, metadata !1559, null}
!1563 = metadata !{i32 375, i32 0, metadata !1556, null}
!1564 = metadata !{i32 376, i32 0, metadata !1553, null}
!1565 = metadata !{i32 378, i32 0, metadata !310, null}
!1566 = metadata !{i32 379, i32 0, metadata !310, null}
!1567 = metadata !{i32 786689, metadata !317, metadata !"string", metadata !199, i32 16777637, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 421]
!1568 = metadata !{i32 421, i32 0, metadata !317, null}
!1569 = metadata !{i32 786689, metadata !317, metadata !"n_buckets", metadata !199, i32 33554853, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_buckets] [line 421]
!1570 = metadata !{i32 786688, metadata !317, metadata !"value", metadata !199, i32 423, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 423]
!1571 = metadata !{i32 423, i32 0, metadata !317, null}
!1572 = metadata !{i32 786688, metadata !317, metadata !"ch", metadata !199, i32 424, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 424]
!1573 = metadata !{i32 424, i32 0, metadata !317, null}
!1574 = metadata !{i32 426, i32 0, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !196, metadata !317, i32 426, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1576 = metadata !{i32 427, i32 0, metadata !1575, null}
!1577 = metadata !{i32 428, i32 0, metadata !317, null}
!1578 = metadata !{i32 786689, metadata !320, metadata !"tuning", metadata !199, i32 16777688, metadata !323, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tuning] [line 472]
!1579 = metadata !{i32 472, i32 0, metadata !320, null}
!1580 = metadata !{i32 474, i32 0, metadata !320, null}
!1581 = metadata !{i32 475, i32 0, metadata !320, null}
!1582 = metadata !{i32 786689, metadata !324, metadata !"candidate", metadata !199, i32 16777756, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [candidate] [line 540]
!1583 = metadata !{i32 540, i32 0, metadata !324, null}
!1584 = metadata !{i32 786689, metadata !324, metadata !"tuning", metadata !199, i32 33554972, metadata !222, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tuning] [line 540]
!1585 = metadata !{i32 786689, metadata !324, metadata !"hasher", metadata !199, i32 50332189, metadata !234, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hasher] [line 541]
!1586 = metadata !{i32 541, i32 0, metadata !324, null}
!1587 = metadata !{i32 786689, metadata !324, metadata !"comparator", metadata !199, i32 67109405, metadata !239, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comparator] [line 541]
!1588 = metadata !{i32 786689, metadata !324, metadata !"data_freer", metadata !199, i32 83886622, metadata !242, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data_freer] [line 542]
!1589 = metadata !{i32 542, i32 0, metadata !324, null}
!1590 = metadata !{i32 786688, metadata !324, metadata !"table", metadata !199, i32 544, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [table] [line 544]
!1591 = metadata !{i32 544, i32 0, metadata !324, null}
!1592 = metadata !{i32 546, i32 0, metadata !1593, null}
!1593 = metadata !{i32 786443, metadata !196, metadata !324, i32 546, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1594 = metadata !{i32 547, i32 0, metadata !1593, null}
!1595 = metadata !{i32 549, i32 0, metadata !324, null}
!1596 = metadata !{i32 550, i32 0, metadata !1597, null}
!1597 = metadata !{i32 786443, metadata !196, metadata !324, i32 550, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1598 = metadata !{i32 551, i32 0, metadata !1597, null}
!1599 = metadata !{i32 553, i32 0, metadata !1600, null}
!1600 = metadata !{i32 786443, metadata !196, metadata !324, i32 553, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1601 = metadata !{i32 554, i32 0, metadata !1600, null}
!1602 = metadata !{i32 555, i32 0, metadata !324, null}
!1603 = metadata !{i32 556, i32 0, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !196, metadata !324, i32 556, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1605 = metadata !{i32 563, i32 0, metadata !1606, null}
!1606 = metadata !{i32 786443, metadata !196, metadata !1604, i32 557, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1607 = metadata !{i32 566, i32 0, metadata !1608, null}
!1608 = metadata !{i32 786443, metadata !196, metadata !324, i32 566, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1609 = metadata !{i32 786688, metadata !1610, metadata !"new_candidate", metadata !199, i32 568, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_candidate] [line 568]
!1610 = metadata !{i32 786443, metadata !196, metadata !1608, i32 567, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1611 = metadata !{i32 568, i32 0, metadata !1610, null}
!1612 = metadata !{i32 569, i32 0, metadata !1613, null}
!1613 = metadata !{i32 786443, metadata !196, metadata !1610, i32 569, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1614 = metadata !{i32 570, i32 0, metadata !1613, null}
!1615 = metadata !{i32 571, i32 0, metadata !1610, null}
!1616 = metadata !{i32 572, i32 0, metadata !1610, null}
!1617 = metadata !{i32 574, i32 0, metadata !1618, null}
!1618 = metadata !{i32 786443, metadata !196, metadata !324, i32 574, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1619 = metadata !{i32 575, i32 0, metadata !1618, null}
!1620 = metadata !{i32 576, i32 0, metadata !324, null}
!1621 = metadata !{i32 577, i32 0, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !196, metadata !324, i32 577, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1623 = metadata !{i32 578, i32 0, metadata !1622, null}
!1624 = metadata !{i32 580, i32 0, metadata !324, null}
!1625 = metadata !{i32 581, i32 0, metadata !324, null}
!1626 = metadata !{i32 582, i32 0, metadata !324, null}
!1627 = metadata !{i32 583, i32 0, metadata !324, null}
!1628 = metadata !{i32 585, i32 0, metadata !324, null}
!1629 = metadata !{i32 586, i32 0, metadata !324, null}
!1630 = metadata !{i32 587, i32 0, metadata !324, null}
!1631 = metadata !{i32 589, i32 0, metadata !324, null}
!1632 = metadata !{i32 593, i32 0, metadata !324, null}
!1633 = metadata !{i32 596, i32 0, metadata !324, null}
!1634 = metadata !{i32 597, i32 0, metadata !324, null}
!1635 = metadata !{i32 598, i32 0, metadata !324, null}
!1636 = metadata !{i32 786689, metadata !328, metadata !"table", metadata !199, i32 16777821, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 605]
!1637 = metadata !{i32 605, i32 0, metadata !328, null}
!1638 = metadata !{i32 786688, metadata !328, metadata !"bucket", metadata !199, i32 607, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 607]
!1639 = metadata !{i32 607, i32 0, metadata !328, null}
!1640 = metadata !{i32 609, i32 0, metadata !1641, null}
!1641 = metadata !{i32 786443, metadata !196, metadata !328, i32 609, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1642 = metadata !{i32 611, i32 0, metadata !1643, null}
!1643 = metadata !{i32 786443, metadata !196, metadata !1644, i32 611, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1644 = metadata !{i32 786443, metadata !196, metadata !1641, i32 610, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1645 = metadata !{i32 786688, metadata !1646, metadata !"cursor", metadata !199, i32 613, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 613]
!1646 = metadata !{i32 786443, metadata !196, metadata !1643, i32 612, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1647 = metadata !{i32 613, i32 0, metadata !1646, null}
!1648 = metadata !{i32 786688, metadata !1646, metadata !"next", metadata !199, i32 614, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 614]
!1649 = metadata !{i32 614, i32 0, metadata !1646, null}
!1650 = metadata !{i32 617, i32 0, metadata !1651, null}
!1651 = metadata !{i32 786443, metadata !196, metadata !1646, i32 617, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1652 = metadata !{i32 619, i32 0, metadata !1653, null}
!1653 = metadata !{i32 786443, metadata !196, metadata !1654, i32 619, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1654 = metadata !{i32 786443, metadata !196, metadata !1651, i32 618, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1655 = metadata !{i32 620, i32 0, metadata !1653, null}
!1656 = metadata !{i32 621, i32 0, metadata !1654, null}
!1657 = metadata !{i32 623, i32 0, metadata !1654, null}
!1658 = metadata !{i32 626, i32 0, metadata !1654, null}
!1659 = metadata !{i32 627, i32 0, metadata !1654, null}
!1660 = metadata !{i32 628, i32 0, metadata !1654, null}
!1661 = metadata !{i32 631, i32 0, metadata !1662, null}
!1662 = metadata !{i32 786443, metadata !196, metadata !1646, i32 631, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1663 = metadata !{i32 632, i32 0, metadata !1662, null}
!1664 = metadata !{i32 633, i32 0, metadata !1646, null}
!1665 = metadata !{i32 634, i32 0, metadata !1646, null}
!1666 = metadata !{i32 635, i32 0, metadata !1646, null}
!1667 = metadata !{i32 636, i32 0, metadata !1644, null}
!1668 = metadata !{i32 638, i32 0, metadata !328, null}
!1669 = metadata !{i32 639, i32 0, metadata !328, null}
!1670 = metadata !{i32 640, i32 0, metadata !328, null}
!1671 = metadata !{i32 786689, metadata !331, metadata !"table", metadata !199, i32 16777864, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 648]
!1672 = metadata !{i32 648, i32 0, metadata !331, null}
!1673 = metadata !{i32 786688, metadata !331, metadata !"bucket", metadata !199, i32 650, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 650]
!1674 = metadata !{i32 650, i32 0, metadata !331, null}
!1675 = metadata !{i32 786688, metadata !331, metadata !"cursor", metadata !199, i32 651, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 651]
!1676 = metadata !{i32 651, i32 0, metadata !331, null}
!1677 = metadata !{i32 786688, metadata !331, metadata !"next", metadata !199, i32 652, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 652]
!1678 = metadata !{i32 652, i32 0, metadata !331, null}
!1679 = metadata !{i32 655, i32 0, metadata !1680, null}
!1680 = metadata !{i32 786443, metadata !196, metadata !331, i32 655, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1681 = metadata !{i32 657, i32 0, metadata !1682, null}
!1682 = metadata !{i32 786443, metadata !196, metadata !1683, i32 657, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1683 = metadata !{i32 786443, metadata !196, metadata !1680, i32 656, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1684 = metadata !{i32 659, i32 0, metadata !1685, null}
!1685 = metadata !{i32 786443, metadata !196, metadata !1686, i32 659, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1686 = metadata !{i32 786443, metadata !196, metadata !1682, i32 658, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1687 = metadata !{i32 661, i32 0, metadata !1688, null}
!1688 = metadata !{i32 786443, metadata !196, metadata !1689, i32 661, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1689 = metadata !{i32 786443, metadata !196, metadata !1685, i32 660, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1690 = metadata !{i32 663, i32 0, metadata !1691, null}
!1691 = metadata !{i32 786443, metadata !196, metadata !1688, i32 662, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1692 = metadata !{i32 664, i32 0, metadata !1691, null}
!1693 = metadata !{i32 665, i32 0, metadata !1689, null}
!1694 = metadata !{i32 666, i32 0, metadata !1686, null}
!1695 = metadata !{i32 667, i32 0, metadata !1683, null}
!1696 = metadata !{i32 676, i32 0, metadata !1697, null}
!1697 = metadata !{i32 786443, metadata !196, metadata !331, i32 676, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1698 = metadata !{i32 678, i32 0, metadata !1699, null}
!1699 = metadata !{i32 786443, metadata !196, metadata !1700, i32 678, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1700 = metadata !{i32 786443, metadata !196, metadata !1697, i32 677, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1701 = metadata !{i32 680, i32 0, metadata !1702, null}
!1702 = metadata !{i32 786443, metadata !196, metadata !1699, i32 679, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1703 = metadata !{i32 681, i32 0, metadata !1702, null}
!1704 = metadata !{i32 682, i32 0, metadata !1702, null}
!1705 = metadata !{i32 683, i32 0, metadata !1700, null}
!1706 = metadata !{i32 686, i32 0, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !196, metadata !331, i32 686, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1708 = metadata !{i32 688, i32 0, metadata !1709, null}
!1709 = metadata !{i32 786443, metadata !196, metadata !1707, i32 687, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1710 = metadata !{i32 689, i32 0, metadata !1709, null}
!1711 = metadata !{i32 690, i32 0, metadata !1709, null}
!1712 = metadata !{i32 695, i32 0, metadata !331, null}
!1713 = metadata !{i32 696, i32 0, metadata !331, null}
!1714 = metadata !{i32 697, i32 0, metadata !331, null}
!1715 = metadata !{i32 786689, metadata !332, metadata !"table", metadata !199, i32 16778035, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 819]
!1716 = metadata !{i32 819, i32 0, metadata !332, null}
!1717 = metadata !{i32 786689, metadata !332, metadata !"candidate", metadata !199, i32 33555251, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [candidate] [line 819]
!1718 = metadata !{i32 786688, metadata !332, metadata !"new_table", metadata !199, i32 821, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_table] [line 821]
!1719 = metadata !{i32 821, i32 0, metadata !332, null}
!1720 = metadata !{i32 786688, metadata !332, metadata !"bucket", metadata !199, i32 822, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 822]
!1721 = metadata !{i32 822, i32 0, metadata !332, null}
!1722 = metadata !{i32 786688, metadata !332, metadata !"cursor", metadata !199, i32 823, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 823]
!1723 = metadata !{i32 823, i32 0, metadata !332, null}
!1724 = metadata !{i32 786688, metadata !332, metadata !"next", metadata !199, i32 824, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 824]
!1725 = metadata !{i32 824, i32 0, metadata !332, null}
!1726 = metadata !{i32 826, i32 0, metadata !332, null}
!1727 = metadata !{i32 828, i32 0, metadata !1728, null}
!1728 = metadata !{i32 786443, metadata !196, metadata !332, i32 828, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1729 = metadata !{i32 829, i32 0, metadata !1728, null}
!1730 = metadata !{i32 836, i32 0, metadata !332, null}
!1731 = metadata !{i32 838, i32 0, metadata !1732, null}
!1732 = metadata !{i32 786443, metadata !196, metadata !332, i32 838, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1733 = metadata !{i32 839, i32 0, metadata !1734, null}
!1734 = metadata !{i32 786443, metadata !196, metadata !1732, i32 839, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1735 = metadata !{i32 840, i32 0, metadata !1736, null}
!1736 = metadata !{i32 786443, metadata !196, metadata !1734, i32 840, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1737 = metadata !{i32 786688, metadata !1738, metadata !"data", metadata !199, i32 842, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 842]
!1738 = metadata !{i32 786443, metadata !196, metadata !1736, i32 841, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1739 = metadata !{i32 842, i32 0, metadata !1738, null}
!1740 = metadata !{i32 786688, metadata !1738, metadata !"new_bucket", metadata !199, i32 843, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_bucket] [line 843]
!1741 = metadata !{i32 843, i32 0, metadata !1738, null}
!1742 = metadata !{i32 845, i32 0, metadata !1738, null}
!1743 = metadata !{i32 847, i32 0, metadata !1744, null}
!1744 = metadata !{i32 786443, metadata !196, metadata !1738, i32 847, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1745 = metadata !{i32 848, i32 0, metadata !1744, null}
!1746 = metadata !{i32 850, i32 0, metadata !1738, null}
!1747 = metadata !{i32 852, i32 0, metadata !1748, null}
!1748 = metadata !{i32 786443, metadata !196, metadata !1738, i32 852, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1749 = metadata !{i32 854, i32 0, metadata !1750, null}
!1750 = metadata !{i32 786443, metadata !196, metadata !1751, i32 854, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1751 = metadata !{i32 786443, metadata !196, metadata !1748, i32 853, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1752 = metadata !{i32 786688, metadata !1753, metadata !"new_entry", metadata !199, i32 858, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_entry] [line 858]
!1753 = metadata !{i32 786443, metadata !196, metadata !1750, i32 855, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1754 = metadata !{i32 858, i32 0, metadata !1753, null}
!1755 = metadata !{i32 860, i32 0, metadata !1756, null}
!1756 = metadata !{i32 786443, metadata !196, metadata !1753, i32 860, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1757 = metadata !{i32 861, i32 0, metadata !1756, null}
!1758 = metadata !{i32 863, i32 0, metadata !1753, null}
!1759 = metadata !{i32 864, i32 0, metadata !1753, null}
!1760 = metadata !{i32 865, i32 0, metadata !1753, null}
!1761 = metadata !{i32 866, i32 0, metadata !1753, null}
!1762 = metadata !{i32 871, i32 0, metadata !1763, null}
!1763 = metadata !{i32 786443, metadata !196, metadata !1750, i32 868, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1764 = metadata !{i32 872, i32 0, metadata !1763, null}
!1765 = metadata !{i32 874, i32 0, metadata !1751, null}
!1766 = metadata !{i32 881, i32 0, metadata !1767, null}
!1767 = metadata !{i32 786443, metadata !196, metadata !1748, i32 876, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1768 = metadata !{i32 882, i32 0, metadata !1767, null}
!1769 = metadata !{i32 883, i32 0, metadata !1770, null}
!1770 = metadata !{i32 786443, metadata !196, metadata !1767, i32 883, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1771 = metadata !{i32 884, i32 0, metadata !1770, null}
!1772 = metadata !{i32 886, i32 0, metadata !1738, null}
!1773 = metadata !{i32 886, i32 0, metadata !1736, null}
!1774 = metadata !{i32 886, i32 0, metadata !1734, null}
!1775 = metadata !{i32 888, i32 0, metadata !332, null}
!1776 = metadata !{i32 889, i32 0, metadata !332, null}
!1777 = metadata !{i32 890, i32 0, metadata !332, null}
!1778 = metadata !{i32 891, i32 0, metadata !332, null}
!1779 = metadata !{i32 892, i32 0, metadata !332, null}
!1780 = metadata !{i32 893, i32 0, metadata !332, null}
!1781 = metadata !{i32 898, i32 0, metadata !332, null}
!1782 = metadata !{i32 900, i32 0, metadata !332, null}
!1783 = metadata !{i32 901, i32 0, metadata !332, null}
!1784 = metadata !{i32 786689, metadata !335, metadata !"table", metadata !199, i32 16778124, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 908]
!1785 = metadata !{i32 908, i32 0, metadata !335, null}
!1786 = metadata !{i32 786689, metadata !335, metadata !"entry", metadata !199, i32 33555340, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entry] [line 908]
!1787 = metadata !{i32 786688, metadata !335, metadata !"data", metadata !199, i32 910, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 910]
!1788 = metadata !{i32 910, i32 0, metadata !335, null}
!1789 = metadata !{i32 786688, metadata !335, metadata !"bucket", metadata !199, i32 911, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 911]
!1790 = metadata !{i32 911, i32 0, metadata !335, null}
!1791 = metadata !{i32 914, i32 0, metadata !1792, null}
!1792 = metadata !{i32 786443, metadata !196, metadata !335, i32 914, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1793 = metadata !{i32 915, i32 0, metadata !1792, null}
!1794 = metadata !{i32 918, i32 0, metadata !1795, null}
!1795 = metadata !{i32 786443, metadata !196, metadata !335, i32 918, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1796 = metadata !{i32 919, i32 0, metadata !1795, null}
!1797 = metadata !{i32 923, i32 0, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !196, metadata !335, i32 923, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1799 = metadata !{i32 786688, metadata !1800, metadata !"new_entry", metadata !199, i32 925, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_entry] [line 925]
!1800 = metadata !{i32 786443, metadata !196, metadata !1798, i32 924, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1801 = metadata !{i32 925, i32 0, metadata !1800, null}
!1802 = metadata !{i32 927, i32 0, metadata !1803, null}
!1803 = metadata !{i32 786443, metadata !196, metadata !1800, i32 927, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1804 = metadata !{i32 928, i32 0, metadata !1803, null}
!1805 = metadata !{i32 932, i32 0, metadata !1800, null}
!1806 = metadata !{i32 933, i32 0, metadata !1800, null}
!1807 = metadata !{i32 934, i32 0, metadata !1800, null}
!1808 = metadata !{i32 935, i32 0, metadata !1800, null}
!1809 = metadata !{i32 936, i32 0, metadata !1800, null}
!1810 = metadata !{i32 941, i32 0, metadata !335, null}
!1811 = metadata !{i32 942, i32 0, metadata !335, null}
!1812 = metadata !{i32 943, i32 0, metadata !335, null}
!1813 = metadata !{i32 950, i32 0, metadata !1814, null}
!1814 = metadata !{i32 786443, metadata !196, metadata !335, i32 950, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1815 = metadata !{i32 955, i32 0, metadata !1816, null}
!1816 = metadata !{i32 786443, metadata !196, metadata !1814, i32 952, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1817 = metadata !{i32 956, i32 0, metadata !1818, null}
!1818 = metadata !{i32 786443, metadata !196, metadata !1816, i32 956, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1819 = metadata !{i32 786688, metadata !1820, metadata !"tuning", metadata !199, i32 959, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tuning] [line 959]
!1820 = metadata !{i32 786443, metadata !196, metadata !1818, i32 958, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1821 = metadata !{i32 959, i32 0, metadata !1820, null}
!1822 = metadata !{i32 786688, metadata !1820, metadata !"candidate", metadata !199, i32 960, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [candidate] [line 960]
!1823 = metadata !{i32 960, i32 0, metadata !1820, null}
!1824 = metadata !{i32 966, i32 0, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !196, metadata !1820, i32 966, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1826 = metadata !{i32 967, i32 0, metadata !1825, null}
!1827 = metadata !{i32 970, i32 0, metadata !1828, null}
!1828 = metadata !{i32 786443, metadata !196, metadata !1820, i32 970, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1829 = metadata !{i32 971, i32 0, metadata !1828, null}
!1830 = metadata !{i32 972, i32 0, metadata !1820, null}
!1831 = metadata !{i32 973, i32 0, metadata !1816, null}
!1832 = metadata !{i32 975, i32 0, metadata !335, null}
!1833 = metadata !{i32 976, i32 0, metadata !335, null}
!1834 = metadata !{i32 786689, metadata !338, metadata !"table", metadata !199, i32 16778199, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 983]
!1835 = metadata !{i32 983, i32 0, metadata !338, null}
!1836 = metadata !{i32 786689, metadata !338, metadata !"entry", metadata !199, i32 33555415, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entry] [line 983]
!1837 = metadata !{i32 786688, metadata !338, metadata !"data", metadata !199, i32 985, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 985]
!1838 = metadata !{i32 985, i32 0, metadata !338, null}
!1839 = metadata !{i32 786688, metadata !338, metadata !"bucket", metadata !199, i32 986, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 986]
!1840 = metadata !{i32 986, i32 0, metadata !338, null}
!1841 = metadata !{i32 988, i32 0, metadata !338, null}
!1842 = metadata !{i32 989, i32 0, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !196, metadata !338, i32 989, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1844 = metadata !{i32 990, i32 0, metadata !1843, null}
!1845 = metadata !{i32 992, i32 0, metadata !338, null}
!1846 = metadata !{i32 993, i32 0, metadata !1847, null}
!1847 = metadata !{i32 786443, metadata !196, metadata !338, i32 993, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1848 = metadata !{i32 995, i32 0, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !196, metadata !1847, i32 994, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1850 = metadata !{i32 1000, i32 0, metadata !1851, null}
!1851 = metadata !{i32 786443, metadata !196, metadata !1849, i32 1000, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1852 = metadata !{i32 1005, i32 0, metadata !1853, null}
!1853 = metadata !{i32 786443, metadata !196, metadata !1851, i32 1002, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1854 = metadata !{i32 1006, i32 0, metadata !1855, null}
!1855 = metadata !{i32 786443, metadata !196, metadata !1853, i32 1006, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1856 = metadata !{i32 786688, metadata !1857, metadata !"tuning", metadata !199, i32 1009, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tuning] [line 1009]
!1857 = metadata !{i32 786443, metadata !196, metadata !1855, i32 1008, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1858 = metadata !{i32 1009, i32 0, metadata !1857, null}
!1859 = metadata !{i32 786688, metadata !1857, metadata !"candidate", metadata !199, i32 1010, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [candidate] [line 1010]
!1860 = metadata !{i32 1010, i32 0, metadata !1857, null}
!1861 = metadata !{i32 1016, i32 0, metadata !1857, null}
!1862 = metadata !{i32 1017, i32 0, metadata !1857, null}
!1863 = metadata !{i32 1018, i32 0, metadata !1853, null}
!1864 = metadata !{i32 1019, i32 0, metadata !1849, null}
!1865 = metadata !{i32 1021, i32 0, metadata !338, null}
!1866 = metadata !{i32 1022, i32 0, metadata !338, null}
!1867 = metadata !{i32 786689, metadata !355, metadata !"table", metadata !199, i32 16777700, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 484]
!1868 = metadata !{i32 484, i32 0, metadata !355, null}
!1869 = metadata !{i32 786688, metadata !355, metadata !"tuning", metadata !199, i32 486, metadata !222, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tuning] [line 486]
!1870 = metadata !{i32 486, i32 0, metadata !355, null}
!1871 = metadata !{i32 786688, metadata !355, metadata !"epsilon", metadata !199, i32 493, metadata !228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [epsilon] [line 493]
!1872 = metadata !{i32 493, i32 0, metadata !355, null}
!1873 = metadata !{i32 495, i32 0, metadata !1874, null}
!1874 = metadata !{i32 786443, metadata !196, metadata !355, i32 495, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1875 = metadata !{i32 502, i32 0, metadata !1874, null}
!1876 = metadata !{i32 504, i32 0, metadata !355, null}
!1877 = metadata !{i32 505, i32 0, metadata !355, null}
!1878 = metadata !{i32 506, i32 0, metadata !355, null}
!1879 = metadata !{i32 786689, metadata !349, metadata !"candidate", metadata !199, i32 16777672, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [candidate] [line 456]
!1880 = metadata !{i32 456, i32 0, metadata !349, null}
!1881 = metadata !{i32 459, i32 0, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !196, metadata !349, i32 459, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1883 = metadata !{i32 460, i32 0, metadata !1882, null}
!1884 = metadata !{i32 463, i32 0, metadata !349, null}
!1885 = metadata !{i32 465, i32 0, metadata !349, null}
!1886 = metadata !{i32 466, i32 0, metadata !349, null}
!1887 = metadata !{i32 468, i32 0, metadata !349, null}
!1888 = metadata !{i32 786689, metadata !346, metadata !"table", metadata !199, i32 16777921, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 705]
!1889 = metadata !{i32 705, i32 0, metadata !346, null}
!1890 = metadata !{i32 786688, metadata !346, metadata !"new", metadata !199, i32 707, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 707]
!1891 = metadata !{i32 707, i32 0, metadata !346, null}
!1892 = metadata !{i32 709, i32 0, metadata !1893, null}
!1893 = metadata !{i32 786443, metadata !196, metadata !346, i32 709, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1894 = metadata !{i32 711, i32 0, metadata !1895, null}
!1895 = metadata !{i32 786443, metadata !196, metadata !1893, i32 710, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1896 = metadata !{i32 712, i32 0, metadata !1895, null}
!1897 = metadata !{i32 713, i32 0, metadata !1895, null}
!1898 = metadata !{i32 719, i32 0, metadata !1899, null}
!1899 = metadata !{i32 786443, metadata !196, metadata !1893, i32 715, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1900 = metadata !{i32 723, i32 0, metadata !346, null}
!1901 = metadata !{i32 786689, metadata !343, metadata !"table", metadata !199, i32 16777946, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 730]
!1902 = metadata !{i32 730, i32 0, metadata !343, null}
!1903 = metadata !{i32 786689, metadata !343, metadata !"entry", metadata !199, i32 33555162, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entry] [line 730]
!1904 = metadata !{i32 732, i32 0, metadata !343, null}
!1905 = metadata !{i32 733, i32 0, metadata !343, null}
!1906 = metadata !{i32 734, i32 0, metadata !343, null}
!1907 = metadata !{i32 735, i32 0, metadata !343, null}
!1908 = metadata !{i32 786689, metadata !339, metadata !"table", metadata !199, i32 16777960, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [table] [line 744]
!1909 = metadata !{i32 744, i32 0, metadata !339, null}
!1910 = metadata !{i32 786689, metadata !339, metadata !"entry", metadata !199, i32 33555176, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entry] [line 744]
!1911 = metadata !{i32 786689, metadata !339, metadata !"bucket_head", metadata !199, i32 50332393, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bucket_head] [line 745]
!1912 = metadata !{i32 745, i32 0, metadata !339, null}
!1913 = metadata !{i32 786689, metadata !339, metadata !"delete", metadata !199, i32 67109609, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delete] [line 745]
!1914 = metadata !{i32 786688, metadata !339, metadata !"bucket", metadata !199, i32 747, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bucket] [line 747]
!1915 = metadata !{i32 747, i32 0, metadata !339, null}
!1916 = metadata !{i32 748, i32 0, metadata !339, null}
!1917 = metadata !{i32 786688, metadata !339, metadata !"cursor", metadata !199, i32 749, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cursor] [line 749]
!1918 = metadata !{i32 749, i32 0, metadata !339, null}
!1919 = metadata !{i32 751, i32 0, metadata !1920, null}
!1920 = metadata !{i32 786443, metadata !196, metadata !339, i32 751, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1921 = metadata !{i32 752, i32 0, metadata !1920, null}
!1922 = metadata !{i32 754, i32 0, metadata !339, null}
!1923 = metadata !{i32 757, i32 0, metadata !1924, null}
!1924 = metadata !{i32 786443, metadata !196, metadata !339, i32 757, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1925 = metadata !{i32 758, i32 0, metadata !1924, null}
!1926 = metadata !{i32 761, i32 0, metadata !1927, null}
!1927 = metadata !{i32 786443, metadata !196, metadata !339, i32 761, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1928 = metadata !{i32 786688, metadata !1929, metadata !"data", metadata !199, i32 763, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 763]
!1929 = metadata !{i32 786443, metadata !196, metadata !1927, i32 762, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1930 = metadata !{i32 763, i32 0, metadata !1929, null}
!1931 = metadata !{i32 765, i32 0, metadata !1932, null}
!1932 = metadata !{i32 786443, metadata !196, metadata !1929, i32 765, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1933 = metadata !{i32 767, i32 0, metadata !1934, null}
!1934 = metadata !{i32 786443, metadata !196, metadata !1935, i32 767, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1935 = metadata !{i32 786443, metadata !196, metadata !1932, i32 766, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1936 = metadata !{i32 786688, metadata !1937, metadata !"next", metadata !199, i32 769, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 769]
!1937 = metadata !{i32 786443, metadata !196, metadata !1934, i32 768, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1938 = metadata !{i32 769, i32 0, metadata !1937, null}
!1939 = metadata !{i32 773, i32 0, metadata !1937, null}
!1940 = metadata !{i32 774, i32 0, metadata !1937, null}
!1941 = metadata !{i32 775, i32 0, metadata !1937, null}
!1942 = metadata !{i32 778, i32 0, metadata !1943, null}
!1943 = metadata !{i32 786443, metadata !196, metadata !1934, i32 777, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1944 = metadata !{i32 780, i32 0, metadata !1935, null}
!1945 = metadata !{i32 782, i32 0, metadata !1929, null}
!1946 = metadata !{i32 786, i32 0, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !196, metadata !339, i32 786, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1948 = metadata !{i32 788, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !196, metadata !1950, i32 788, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1950 = metadata !{i32 786443, metadata !196, metadata !1947, i32 787, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1951 = metadata !{i32 786688, metadata !1952, metadata !"data", metadata !199, i32 790, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 790]
!1952 = metadata !{i32 786443, metadata !196, metadata !1949, i32 789, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1953 = metadata !{i32 790, i32 0, metadata !1952, null}
!1954 = metadata !{i32 792, i32 0, metadata !1955, null}
!1955 = metadata !{i32 786443, metadata !196, metadata !1952, i32 792, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1956 = metadata !{i32 786688, metadata !1957, metadata !"next", metadata !199, i32 794, metadata !209, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 794]
!1957 = metadata !{i32 786443, metadata !196, metadata !1955, i32 793, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1958 = metadata !{i32 794, i32 0, metadata !1957, null}
!1959 = metadata !{i32 798, i32 0, metadata !1957, null}
!1960 = metadata !{i32 799, i32 0, metadata !1957, null}
!1961 = metadata !{i32 800, i32 0, metadata !1957, null}
!1962 = metadata !{i32 802, i32 0, metadata !1952, null}
!1963 = metadata !{i32 804, i32 0, metadata !1950, null}
!1964 = metadata !{i32 807, i32 0, metadata !339, null}
!1965 = metadata !{i32 808, i32 0, metadata !339, null}
!1966 = metadata !{i32 786689, metadata !352, metadata !"candidate", metadata !199, i32 16777653, metadata !202, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [candidate] [line 437]
!1967 = metadata !{i32 437, i32 0, metadata !352, null}
!1968 = metadata !{i32 786688, metadata !352, metadata !"divisor", metadata !199, i32 439, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [divisor] [line 439]
!1969 = metadata !{i32 439, i32 0, metadata !352, null}
!1970 = metadata !{i32 786688, metadata !352, metadata !"square", metadata !199, i32 440, metadata !202, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [square] [line 440]
!1971 = metadata !{i32 440, i32 0, metadata !352, null}
!1972 = metadata !{i32 442, i32 0, metadata !352, null}
!1973 = metadata !{i32 444, i32 0, metadata !1974, null}
!1974 = metadata !{i32 786443, metadata !196, metadata !352, i32 443, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/hash.c]
!1975 = metadata !{i32 445, i32 0, metadata !1974, null}
!1976 = metadata !{i32 446, i32 0, metadata !1974, null}
!1977 = metadata !{i32 447, i32 0, metadata !1974, null}
!1978 = metadata !{i32 449, i32 0, metadata !352, null}
!1979 = metadata !{i32 786689, metadata !363, metadata !"file", metadata !364, i32 16777263, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 47]
!1980 = metadata !{i32 47, i32 0, metadata !363, null}
!1981 = metadata !{i32 49, i32 0, metadata !363, null}
!1982 = metadata !{i32 50, i32 0, metadata !363, null}
!1983 = metadata !{i32 786688, metadata !367, metadata !"prev_fail", metadata !364, i32 76, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev_fail] [line 76]
!1984 = metadata !{i32 76, i32 0, metadata !367, null}
!1985 = metadata !{i32 786688, metadata !367, metadata !"none_pending", metadata !364, i32 77, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [none_pending] [line 77]
!1986 = metadata !{i32 77, i32 0, metadata !367, null}
!1987 = metadata !{i32 786688, metadata !367, metadata !"fclose_fail", metadata !364, i32 78, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fclose_fail] [line 78]
!1988 = metadata !{i32 78, i32 0, metadata !367, null}
!1989 = metadata !{i32 80, i32 0, metadata !1990, null}
!1990 = metadata !{i32 786443, metadata !361, metadata !367, i32 80, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/closeout.c]
!1991 = metadata !{i32 786688, metadata !1992, metadata !"e", metadata !364, i32 82, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 82]
!1992 = metadata !{i32 786443, metadata !361, metadata !1990, i32 81, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/closeout.c]
!1993 = metadata !{i32 82, i32 0, metadata !1992, null}
!1994 = metadata !{i32 786688, metadata !1992, metadata !"write_error", metadata !364, i32 83, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [write_error] [line 83]
!1995 = metadata !{i32 83, i32 0, metadata !1992, null}
!1996 = metadata !{i32 91, i32 0, metadata !1997, null}
!1997 = metadata !{i32 786443, metadata !361, metadata !1992, i32 91, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/closeout.c]
!1998 = metadata !{i32 92, i32 0, metadata !1997, null}
!1999 = metadata !{i32 94, i32 0, metadata !1992, null}
!2000 = metadata !{i32 95, i32 0, metadata !2001, null}
!2001 = metadata !{i32 786443, metadata !361, metadata !1992, i32 95, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/closeout.c]
!2002 = metadata !{i32 96, i32 0, metadata !2001, null}
!2003 = metadata !{i32 99, i32 0, metadata !2001, null}
!2004 = metadata !{i32 100, i32 0, metadata !1992, null}
!2005 = metadata !{i32 101, i32 0, metadata !367, null}
!2006 = metadata !{i32 786689, metadata !392, metadata !"n", metadata !393, i32 16777246, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 30]
!2007 = metadata !{i32 30, i32 0, metadata !392, null}
!2008 = metadata !{i32 786689, metadata !392, metadata !"name", metadata !393, i32 33554462, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 30]
!2009 = metadata !{i32 32, i32 0, metadata !392, null}
!2010 = metadata !{i32 786689, metadata !396, metadata !"name", metadata !393, i32 16777254, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 38]
!2011 = metadata !{i32 38, i32 0, metadata !396, null}
!2012 = metadata !{i32 40, i32 0, metadata !396, null}
!2013 = metadata !{i32 786689, metadata !405, metadata !"o", metadata !406, i32 16777338, metadata !409, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 122]
!2014 = metadata !{i32 122, i32 0, metadata !405, null}
!2015 = metadata !{i32 786688, metadata !405, metadata !"e", metadata !406, i32 124, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 124]
!2016 = metadata !{i32 124, i32 0, metadata !405, null}
!2017 = metadata !{i32 786688, metadata !405, metadata !"p", metadata !406, i32 125, metadata !409, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 125]
!2018 = metadata !{i32 125, i32 0, metadata !405, null}
!2019 = metadata !{i32 126, i32 0, metadata !405, null}
!2020 = metadata !{i32 127, i32 0, metadata !405, null}
!2021 = metadata !{i32 128, i32 0, metadata !405, null}
!2022 = metadata !{i32 786689, metadata !418, metadata !"o", metadata !406, i32 16777349, metadata !409, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 133]
!2023 = metadata !{i32 133, i32 0, metadata !418, null}
!2024 = metadata !{i32 135, i32 0, metadata !418, null}
!2025 = metadata !{i32 786689, metadata !421, metadata !"o", metadata !406, i32 16777357, metadata !409, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 141]
!2026 = metadata !{i32 141, i32 0, metadata !421, null}
!2027 = metadata !{i32 786689, metadata !421, metadata !"s", metadata !406, i32 33554573, metadata !381, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 141]
!2028 = metadata !{i32 143, i32 0, metadata !421, null}
!2029 = metadata !{i32 144, i32 0, metadata !421, null}
!2030 = metadata !{i32 786689, metadata !424, metadata !"o", metadata !406, i32 16777368, metadata !409, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 152]
!2031 = metadata !{i32 152, i32 0, metadata !424, null}
!2032 = metadata !{i32 786689, metadata !424, metadata !"c", metadata !406, i32 33554584, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 152]
!2033 = metadata !{i32 786689, metadata !424, metadata !"i", metadata !406, i32 50331800, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 152]
!2034 = metadata !{i32 786688, metadata !424, metadata !"uc", metadata !406, i32 154, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc] [line 154]
!2035 = metadata !{i32 154, i32 0, metadata !424, null}
!2036 = metadata !{i32 786688, metadata !424, metadata !"p", metadata !406, i32 155, metadata !2037, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 155]
!2037 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !415} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned int]
!2038 = metadata !{i32 155, i32 0, metadata !424, null}
!2039 = metadata !{i32 786688, metadata !424, metadata !"shift", metadata !406, i32 157, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 157]
!2040 = metadata !{i32 157, i32 0, metadata !424, null}
!2041 = metadata !{i32 786688, metadata !424, metadata !"r", metadata !406, i32 158, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 158]
!2042 = metadata !{i32 158, i32 0, metadata !424, null}
!2043 = metadata !{i32 159, i32 0, metadata !424, null}
!2044 = metadata !{i32 160, i32 0, metadata !424, null}
!2045 = metadata !{i32 786689, metadata !427, metadata !"buffer", metadata !406, i32 16777742, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 526]
!2046 = metadata !{i32 526, i32 0, metadata !427, null}
!2047 = metadata !{i32 786689, metadata !427, metadata !"buffersize", metadata !406, i32 33554958, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffersize] [line 526]
!2048 = metadata !{i32 786689, metadata !427, metadata !"arg", metadata !406, i32 50332175, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 527]
!2049 = metadata !{i32 527, i32 0, metadata !427, null}
!2050 = metadata !{i32 786689, metadata !427, metadata !"argsize", metadata !406, i32 67109391, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 527]
!2051 = metadata !{i32 786689, metadata !427, metadata !"o", metadata !406, i32 83886608, metadata !431, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 528]
!2052 = metadata !{i32 528, i32 0, metadata !427, null}
!2053 = metadata !{i32 786688, metadata !427, metadata !"p", metadata !406, i32 530, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 530]
!2054 = metadata !{i32 530, i32 0, metadata !427, null}
!2055 = metadata !{i32 786688, metadata !427, metadata !"e", metadata !406, i32 531, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 531]
!2056 = metadata !{i32 531, i32 0, metadata !427, null}
!2057 = metadata !{i32 786688, metadata !427, metadata !"r", metadata !406, i32 532, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 532]
!2058 = metadata !{i32 532, i32 0, metadata !427, null}
!2059 = metadata !{i32 534, i32 0, metadata !427, null}
!2060 = metadata !{i32 535, i32 0, metadata !427, null}
!2061 = metadata !{i32 786689, metadata !433, metadata !"arg", metadata !406, i32 16777757, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 541]
!2062 = metadata !{i32 541, i32 0, metadata !433, null}
!2063 = metadata !{i32 786689, metadata !433, metadata !"argsize", metadata !406, i32 33554973, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 541]
!2064 = metadata !{i32 786689, metadata !433, metadata !"o", metadata !406, i32 50332190, metadata !431, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 542]
!2065 = metadata !{i32 542, i32 0, metadata !433, null}
!2066 = metadata !{i32 786688, metadata !433, metadata !"e", metadata !406, i32 544, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 544]
!2067 = metadata !{i32 544, i32 0, metadata !433, null}
!2068 = metadata !{i32 786688, metadata !433, metadata !"bufsize", metadata !406, i32 545, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufsize] [line 545]
!2069 = metadata !{i32 545, i32 0, metadata !433, null}
!2070 = metadata !{i32 786688, metadata !433, metadata !"buf", metadata !406, i32 546, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 546]
!2071 = metadata !{i32 546, i32 0, metadata !433, null}
!2072 = metadata !{i32 547, i32 0, metadata !433, null}
!2073 = metadata !{i32 548, i32 0, metadata !433, null}
!2074 = metadata !{i32 549, i32 0, metadata !433, null}
!2075 = metadata !{i32 786689, metadata !436, metadata !"n", metadata !406, i32 16777835, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 619]
!2076 = metadata !{i32 619, i32 0, metadata !436, null}
!2077 = metadata !{i32 786689, metadata !436, metadata !"arg", metadata !406, i32 33555051, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 619]
!2078 = metadata !{i32 621, i32 0, metadata !436, null}
!2079 = metadata !{i32 786689, metadata !439, metadata !"arg", metadata !406, i32 16777841, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 625]
!2080 = metadata !{i32 625, i32 0, metadata !439, null}
!2081 = metadata !{i32 627, i32 0, metadata !439, null}
!2082 = metadata !{i32 786689, metadata !442, metadata !"n", metadata !406, i32 16777857, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 641]
!2083 = metadata !{i32 641, i32 0, metadata !442, null}
!2084 = metadata !{i32 786689, metadata !442, metadata !"s", metadata !406, i32 33555073, metadata !381, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 641]
!2085 = metadata !{i32 786689, metadata !442, metadata !"arg", metadata !406, i32 50332289, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 641]
!2086 = metadata !{i32 786688, metadata !442, metadata !"o", metadata !406, i32 643, metadata !432, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 643]
!2087 = metadata !{i32 643, i32 0, metadata !442, null}
!2088 = metadata !{i32 644, i32 0, metadata !442, null}
!2089 = metadata !{i32 786689, metadata !445, metadata !"n", metadata !406, i32 16777864, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 648]
!2090 = metadata !{i32 648, i32 0, metadata !445, null}
!2091 = metadata !{i32 786689, metadata !445, metadata !"s", metadata !406, i32 33555080, metadata !381, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 648]
!2092 = metadata !{i32 786689, metadata !445, metadata !"arg", metadata !406, i32 50332297, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 649]
!2093 = metadata !{i32 649, i32 0, metadata !445, null}
!2094 = metadata !{i32 786689, metadata !445, metadata !"argsize", metadata !406, i32 67109513, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 649]
!2095 = metadata !{i32 786688, metadata !445, metadata !"o", metadata !406, i32 651, metadata !432, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 651]
!2096 = metadata !{i32 651, i32 0, metadata !445, null}
!2097 = metadata !{i32 652, i32 0, metadata !445, null}
!2098 = metadata !{i32 786689, metadata !448, metadata !"s", metadata !406, i32 16777872, metadata !381, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 656]
!2099 = metadata !{i32 656, i32 0, metadata !448, null}
!2100 = metadata !{i32 786689, metadata !448, metadata !"arg", metadata !406, i32 33555088, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 656]
!2101 = metadata !{i32 658, i32 0, metadata !448, null}
!2102 = metadata !{i32 786689, metadata !451, metadata !"arg", metadata !406, i32 16777878, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 662]
!2103 = metadata !{i32 662, i32 0, metadata !451, null}
!2104 = metadata !{i32 786689, metadata !451, metadata !"ch", metadata !406, i32 33555094, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ch] [line 662]
!2105 = metadata !{i32 786688, metadata !451, metadata !"options", metadata !406, i32 664, metadata !410, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [options] [line 664]
!2106 = metadata !{i32 664, i32 0, metadata !451, null}
!2107 = metadata !{i32 665, i32 0, metadata !451, null}
!2108 = metadata !{i32 666, i32 0, metadata !451, null}
!2109 = metadata !{i32 667, i32 0, metadata !451, null}
!2110 = metadata !{i32 786689, metadata !454, metadata !"arg", metadata !406, i32 16777887, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 671]
!2111 = metadata !{i32 671, i32 0, metadata !454, null}
!2112 = metadata !{i32 673, i32 0, metadata !454, null}
!2113 = metadata !{i32 786689, metadata !461, metadata !"buffer", metadata !406, i32 16777404, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffer] [line 188]
!2114 = metadata !{i32 188, i32 0, metadata !461, null}
!2115 = metadata !{i32 786689, metadata !461, metadata !"buffersize", metadata !406, i32 33554620, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buffersize] [line 188]
!2116 = metadata !{i32 786689, metadata !461, metadata !"arg", metadata !406, i32 50331837, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 189]
!2117 = metadata !{i32 189, i32 0, metadata !461, null}
!2118 = metadata !{i32 786689, metadata !461, metadata !"argsize", metadata !406, i32 67109053, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 189]
!2119 = metadata !{i32 786689, metadata !461, metadata !"quoting_style", metadata !406, i32 83886270, metadata !381, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [quoting_style] [line 190]
!2120 = metadata !{i32 190, i32 0, metadata !461, null}
!2121 = metadata !{i32 786689, metadata !461, metadata !"o", metadata !406, i32 100663487, metadata !431, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 191]
!2122 = metadata !{i32 191, i32 0, metadata !461, null}
!2123 = metadata !{i32 786688, metadata !461, metadata !"i", metadata !406, i32 193, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 193]
!2124 = metadata !{i32 193, i32 0, metadata !461, null}
!2125 = metadata !{i32 786688, metadata !461, metadata !"len", metadata !406, i32 194, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 194]
!2126 = metadata !{i32 194, i32 0, metadata !461, null}
!2127 = metadata !{i32 786688, metadata !461, metadata !"quote_string", metadata !406, i32 195, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quote_string] [line 195]
!2128 = metadata !{i32 195, i32 0, metadata !461, null}
!2129 = metadata !{i32 786688, metadata !461, metadata !"quote_string_len", metadata !406, i32 196, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quote_string_len] [line 196]
!2130 = metadata !{i32 196, i32 0, metadata !461, null}
!2131 = metadata !{i32 786688, metadata !461, metadata !"backslash_escapes", metadata !406, i32 197, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [backslash_escapes] [line 197]
!2132 = metadata !{i32 197, i32 0, metadata !461, null}
!2133 = metadata !{i32 786688, metadata !461, metadata !"unibyte_locale", metadata !406, i32 198, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [unibyte_locale] [line 198]
!2134 = metadata !{i32 198, i32 0, metadata !461, null}
!2135 = metadata !{i32 209, i32 0, metadata !461, null}
!2136 = metadata !{i32 212, i32 0, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !400, metadata !461, i32 210, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2138 = metadata !{i32 212, i32 0, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !400, metadata !2140, i32 212, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2140 = metadata !{i32 786443, metadata !400, metadata !2137, i32 212, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2141 = metadata !{i32 212, i32 0, metadata !2140, null}
!2142 = metadata !{i32 213, i32 0, metadata !2137, null}
!2143 = metadata !{i32 214, i32 0, metadata !2137, null}
!2144 = metadata !{i32 215, i32 0, metadata !2137, null}
!2145 = metadata !{i32 216, i32 0, metadata !2137, null}
!2146 = metadata !{i32 219, i32 0, metadata !2137, null}
!2147 = metadata !{i32 220, i32 0, metadata !2137, null}
!2148 = metadata !{i32 786688, metadata !2149, metadata !"left", metadata !406, i32 240, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 240]
!2149 = metadata !{i32 786443, metadata !400, metadata !2137, i32 224, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2150 = metadata !{i32 240, i32 0, metadata !2149, null}
!2151 = metadata !{i32 786688, metadata !2149, metadata !"right", metadata !406, i32 241, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 241]
!2152 = metadata !{i32 241, i32 0, metadata !2149, null}
!2153 = metadata !{i32 242, i32 0, metadata !2154, null}
!2154 = metadata !{i32 786443, metadata !400, metadata !2149, i32 242, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2155 = metadata !{i32 243, i32 0, metadata !2154, null}
!2156 = metadata !{i32 243, i32 0, metadata !2157, null}
!2157 = metadata !{i32 786443, metadata !400, metadata !2158, i32 243, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2158 = metadata !{i32 786443, metadata !400, metadata !2154, i32 243, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2159 = metadata !{i32 243, i32 0, metadata !2158, null}
!2160 = metadata !{i32 244, i32 0, metadata !2149, null}
!2161 = metadata !{i32 245, i32 0, metadata !2149, null}
!2162 = metadata !{i32 246, i32 0, metadata !2149, null}
!2163 = metadata !{i32 248, i32 0, metadata !2137, null}
!2164 = metadata !{i32 251, i32 0, metadata !2137, null}
!2165 = metadata !{i32 251, i32 0, metadata !2166, null}
!2166 = metadata !{i32 786443, metadata !400, metadata !2167, i32 251, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2167 = metadata !{i32 786443, metadata !400, metadata !2137, i32 251, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2168 = metadata !{i32 251, i32 0, metadata !2167, null}
!2169 = metadata !{i32 252, i32 0, metadata !2137, null}
!2170 = metadata !{i32 253, i32 0, metadata !2137, null}
!2171 = metadata !{i32 254, i32 0, metadata !2137, null}
!2172 = metadata !{i32 257, i32 0, metadata !2137, null}
!2173 = metadata !{i32 260, i32 0, metadata !2174, null}
!2174 = metadata !{i32 786443, metadata !400, metadata !461, i32 260, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2175 = metadata !{i32 786688, metadata !2176, metadata !"c", metadata !406, i32 262, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 262]
!2176 = metadata !{i32 786443, metadata !400, metadata !2174, i32 261, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2177 = metadata !{i32 262, i32 0, metadata !2176, null}
!2178 = metadata !{i32 786688, metadata !2176, metadata !"esc", metadata !406, i32 263, metadata !116, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [esc] [line 263]
!2179 = metadata !{i32 263, i32 0, metadata !2176, null}
!2180 = metadata !{i32 265, i32 0, metadata !2181, null}
!2181 = metadata !{i32 786443, metadata !400, metadata !2176, i32 265, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2182 = metadata !{i32 268, i32 0, metadata !2181, null}
!2183 = metadata !{i32 269, i32 0, metadata !2181, null}
!2184 = metadata !{i32 269, i32 0, metadata !2185, null}
!2185 = metadata !{i32 786443, metadata !400, metadata !2186, i32 269, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2186 = metadata !{i32 786443, metadata !400, metadata !2181, i32 269, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2187 = metadata !{i32 269, i32 0, metadata !2186, null}
!2188 = metadata !{i32 271, i32 0, metadata !2176, null}
!2189 = metadata !{i32 272, i32 0, metadata !2176, null}
!2190 = metadata !{i32 275, i32 0, metadata !2191, null}
!2191 = metadata !{i32 786443, metadata !400, metadata !2192, i32 275, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2192 = metadata !{i32 786443, metadata !400, metadata !2176, i32 273, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2193 = metadata !{i32 277, i32 0, metadata !2194, null}
!2194 = metadata !{i32 786443, metadata !400, metadata !2191, i32 276, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2195 = metadata !{i32 277, i32 0, metadata !2196, null}
!2196 = metadata !{i32 786443, metadata !400, metadata !2197, i32 277, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2197 = metadata !{i32 786443, metadata !400, metadata !2194, i32 277, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2198 = metadata !{i32 277, i32 0, metadata !2197, null}
!2199 = metadata !{i32 278, i32 0, metadata !2194, null}
!2200 = metadata !{i32 278, i32 0, metadata !2201, null}
!2201 = metadata !{i32 786443, metadata !400, metadata !2202, i32 278, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2202 = metadata !{i32 786443, metadata !400, metadata !2194, i32 278, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2203 = metadata !{i32 278, i32 0, metadata !2202, null}
!2204 = metadata !{i32 279, i32 0, metadata !2194, null}
!2205 = metadata !{i32 279, i32 0, metadata !2206, null}
!2206 = metadata !{i32 786443, metadata !400, metadata !2207, i32 279, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2207 = metadata !{i32 786443, metadata !400, metadata !2194, i32 279, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2208 = metadata !{i32 279, i32 0, metadata !2207, null}
!2209 = metadata !{i32 280, i32 0, metadata !2194, null}
!2210 = metadata !{i32 281, i32 0, metadata !2194, null}
!2211 = metadata !{i32 282, i32 0, metadata !2192, null}
!2212 = metadata !{i32 285, i32 0, metadata !2192, null}
!2213 = metadata !{i32 288, i32 0, metadata !2214, null}
!2214 = metadata !{i32 786443, metadata !400, metadata !2192, i32 286, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2215 = metadata !{i32 291, i32 0, metadata !2216, null}
!2216 = metadata !{i32 786443, metadata !400, metadata !2214, i32 291, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2217 = metadata !{i32 292, i32 0, metadata !2216, null}
!2218 = metadata !{i32 299, i32 0, metadata !2219, null}
!2219 = metadata !{i32 786443, metadata !400, metadata !2216, i32 293, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2220 = metadata !{i32 300, i32 0, metadata !2219, null}
!2221 = metadata !{i32 301, i32 0, metadata !2219, null}
!2222 = metadata !{i32 301, i32 0, metadata !2223, null}
!2223 = metadata !{i32 786443, metadata !400, metadata !2224, i32 301, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2224 = metadata !{i32 786443, metadata !400, metadata !2219, i32 301, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2225 = metadata !{i32 301, i32 0, metadata !2224, null}
!2226 = metadata !{i32 302, i32 0, metadata !2219, null}
!2227 = metadata !{i32 302, i32 0, metadata !2228, null}
!2228 = metadata !{i32 786443, metadata !400, metadata !2229, i32 302, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2229 = metadata !{i32 786443, metadata !400, metadata !2219, i32 302, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2230 = metadata !{i32 302, i32 0, metadata !2229, null}
!2231 = metadata !{i32 303, i32 0, metadata !2219, null}
!2232 = metadata !{i32 303, i32 0, metadata !2233, null}
!2233 = metadata !{i32 786443, metadata !400, metadata !2234, i32 303, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2234 = metadata !{i32 786443, metadata !400, metadata !2219, i32 303, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2235 = metadata !{i32 303, i32 0, metadata !2234, null}
!2236 = metadata !{i32 304, i32 0, metadata !2219, null}
!2237 = metadata !{i32 305, i32 0, metadata !2219, null}
!2238 = metadata !{i32 306, i32 0, metadata !2214, null}
!2239 = metadata !{i32 309, i32 0, metadata !2214, null}
!2240 = metadata !{i32 311, i32 0, metadata !2192, null}
!2241 = metadata !{i32 313, i32 0, metadata !2192, null}
!2242 = metadata !{i32 314, i32 0, metadata !2192, null}
!2243 = metadata !{i32 315, i32 0, metadata !2192, null}
!2244 = metadata !{i32 316, i32 0, metadata !2192, null}
!2245 = metadata !{i32 317, i32 0, metadata !2192, null}
!2246 = metadata !{i32 318, i32 0, metadata !2192, null}
!2247 = metadata !{i32 319, i32 0, metadata !2192, null}
!2248 = metadata !{i32 320, i32 0, metadata !2192, null}
!2249 = metadata !{i32 323, i32 0, metadata !2250, null}
!2250 = metadata !{i32 786443, metadata !400, metadata !2192, i32 323, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2251 = metadata !{i32 324, i32 0, metadata !2250, null}
!2252 = metadata !{i32 326, i32 0, metadata !2253, null}
!2253 = metadata !{i32 786443, metadata !400, metadata !2192, i32 326, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2254 = metadata !{i32 328, i32 0, metadata !2255, null}
!2255 = metadata !{i32 786443, metadata !400, metadata !2253, i32 327, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2256 = metadata !{i32 329, i32 0, metadata !2255, null}
!2257 = metadata !{i32 331, i32 0, metadata !2192, null}
!2258 = metadata !{i32 334, i32 0, metadata !2259, null}
!2259 = metadata !{i32 786443, metadata !400, metadata !2192, i32 334, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2260 = metadata !{i32 335, i32 0, metadata !2259, null}
!2261 = metadata !{i32 338, i32 0, metadata !2262, null}
!2262 = metadata !{i32 786443, metadata !400, metadata !2192, i32 338, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2263 = metadata !{i32 339, i32 0, metadata !2262, null}
!2264 = metadata !{i32 354, i32 0, metadata !2265, null}
!2265 = metadata !{i32 786443, metadata !400, metadata !2192, i32 354, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2266 = metadata !{i32 355, i32 0, metadata !2265, null}
!2267 = metadata !{i32 356, i32 0, metadata !2192, null}
!2268 = metadata !{i32 359, i32 0, metadata !2192, null}
!2269 = metadata !{i32 362, i32 0, metadata !2270, null}
!2270 = metadata !{i32 786443, metadata !400, metadata !2192, i32 360, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2271 = metadata !{i32 365, i32 0, metadata !2270, null}
!2272 = metadata !{i32 365, i32 0, metadata !2273, null}
!2273 = metadata !{i32 786443, metadata !400, metadata !2274, i32 365, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2274 = metadata !{i32 786443, metadata !400, metadata !2270, i32 365, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2275 = metadata !{i32 365, i32 0, metadata !2274, null}
!2276 = metadata !{i32 366, i32 0, metadata !2270, null}
!2277 = metadata !{i32 366, i32 0, metadata !2278, null}
!2278 = metadata !{i32 786443, metadata !400, metadata !2279, i32 366, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2279 = metadata !{i32 786443, metadata !400, metadata !2270, i32 366, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2280 = metadata !{i32 366, i32 0, metadata !2279, null}
!2281 = metadata !{i32 367, i32 0, metadata !2270, null}
!2282 = metadata !{i32 367, i32 0, metadata !2283, null}
!2283 = metadata !{i32 786443, metadata !400, metadata !2284, i32 367, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2284 = metadata !{i32 786443, metadata !400, metadata !2270, i32 367, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2285 = metadata !{i32 367, i32 0, metadata !2284, null}
!2286 = metadata !{i32 368, i32 0, metadata !2270, null}
!2287 = metadata !{i32 371, i32 0, metadata !2270, null}
!2288 = metadata !{i32 373, i32 0, metadata !2192, null}
!2289 = metadata !{i32 389, i32 0, metadata !2192, null}
!2290 = metadata !{i32 786688, metadata !2291, metadata !"m", metadata !406, i32 399, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 399]
!2291 = metadata !{i32 786443, metadata !400, metadata !2192, i32 397, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2292 = metadata !{i32 399, i32 0, metadata !2291, null}
!2293 = metadata !{i32 786688, metadata !2291, metadata !"printable", metadata !406, i32 401, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [printable] [line 401]
!2294 = metadata !{i32 401, i32 0, metadata !2291, null}
!2295 = metadata !{i32 403, i32 0, metadata !2296, null}
!2296 = metadata !{i32 786443, metadata !400, metadata !2291, i32 403, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2297 = metadata !{i32 405, i32 0, metadata !2298, null}
!2298 = metadata !{i32 786443, metadata !400, metadata !2296, i32 404, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2299 = metadata !{i32 406, i32 0, metadata !2298, null}
!2300 = metadata !{i32 407, i32 0, metadata !2298, null}
!2301 = metadata !{i32 786688, metadata !2302, metadata !"mbstate", metadata !406, i32 410, metadata !2303, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mbstate] [line 410]
!2302 = metadata !{i32 786443, metadata !400, metadata !2296, i32 409, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2303 = metadata !{i32 786454, metadata !400, null, metadata !"mbstate_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !2304} ; [ DW_TAG_typedef ] [mbstate_t] [line 106, size 0, align 0, offset 0] [from __mbstate_t]
!2304 = metadata !{i32 786454, metadata !400, null, metadata !"__mbstate_t", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !2305} ; [ DW_TAG_typedef ] [__mbstate_t] [line 94, size 0, align 0, offset 0] [from ]
!2305 = metadata !{i32 786451, metadata !2306, null, metadata !"", i32 82, i64 64, i64 32, i32 0, i32 0, null, metadata !2307, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 82, size 64, align 32, offset 0] [def] [from ]
!2306 = metadata !{metadata !"/usr/include/wchar.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib"}
!2307 = metadata !{metadata !2308, metadata !2309}
!2308 = metadata !{i32 786445, metadata !2306, metadata !2305, metadata !"__count", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [__count] [line 84, size 32, align 32, offset 0] [from int]
!2309 = metadata !{i32 786445, metadata !2306, metadata !2305, metadata !"__value", i32 93, i64 32, i64 32, i64 32, i32 0, metadata !2310} ; [ DW_TAG_member ] [__value] [line 93, size 32, align 32, offset 32] [from ]
!2310 = metadata !{i32 786455, metadata !2306, metadata !2305, metadata !"", i32 85, i64 32, i64 32, i64 0, i32 0, null, metadata !2311, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 85, size 32, align 32, offset 0] [def] [from ]
!2311 = metadata !{metadata !2312, metadata !2313}
!2312 = metadata !{i32 786445, metadata !2306, metadata !2310, metadata !"__wch", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !415} ; [ DW_TAG_member ] [__wch] [line 88, size 32, align 32, offset 0] [from unsigned int]
!2313 = metadata !{i32 786445, metadata !2306, metadata !2310, metadata !"__wchb", i32 92, i64 32, i64 8, i64 0, i32 0, metadata !2314} ; [ DW_TAG_member ] [__wchb] [line 92, size 32, align 8, offset 0] [from ]
!2314 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !48, metadata !2315, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!2315 = metadata !{metadata !2316}
!2316 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ] [0, 3]
!2317 = metadata !{i32 410, i32 0, metadata !2302, null}
!2318 = metadata !{i32 411, i32 0, metadata !2302, null}
!2319 = metadata !{i32 413, i32 0, metadata !2302, null}
!2320 = metadata !{i32 414, i32 0, metadata !2302, null}
!2321 = metadata !{i32 415, i32 0, metadata !2322, null}
!2322 = metadata !{i32 786443, metadata !400, metadata !2302, i32 415, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2323 = metadata !{i32 416, i32 0, metadata !2322, null}
!2324 = metadata !{i32 418, i32 0, metadata !2302, null}
!2325 = metadata !{i32 786688, metadata !2326, metadata !"w", metadata !406, i32 420, metadata !2327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 420]
!2326 = metadata !{i32 786443, metadata !400, metadata !2302, i32 419, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2327 = metadata !{i32 786454, metadata !400, null, metadata !"wchar_t", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [wchar_t] [line 65, size 0, align 0, offset 0] [from int]
!2328 = metadata !{i32 420, i32 0, metadata !2326, null}
!2329 = metadata !{i32 786688, metadata !2326, metadata !"bytes", metadata !406, i32 421, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes] [line 421]
!2330 = metadata !{i32 421, i32 0, metadata !2326, null}
!2331 = metadata !{i32 423, i32 0, metadata !2332, null}
!2332 = metadata !{i32 786443, metadata !400, metadata !2326, i32 423, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2333 = metadata !{i32 424, i32 0, metadata !2332, null}
!2334 = metadata !{i32 425, i32 0, metadata !2335, null}
!2335 = metadata !{i32 786443, metadata !400, metadata !2332, i32 425, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2336 = metadata !{i32 427, i32 0, metadata !2337, null}
!2337 = metadata !{i32 786443, metadata !400, metadata !2335, i32 426, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2338 = metadata !{i32 428, i32 0, metadata !2337, null}
!2339 = metadata !{i32 430, i32 0, metadata !2340, null}
!2340 = metadata !{i32 786443, metadata !400, metadata !2335, i32 430, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2341 = metadata !{i32 432, i32 0, metadata !2342, null}
!2342 = metadata !{i32 786443, metadata !400, metadata !2340, i32 431, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2343 = metadata !{i32 433, i32 0, metadata !2342, null}
!2344 = metadata !{i32 434, i32 0, metadata !2342, null}
!2345 = metadata !{i32 435, i32 0, metadata !2342, null}
!2346 = metadata !{i32 443, i32 0, metadata !2347, null}
!2347 = metadata !{i32 786443, metadata !400, metadata !2348, i32 443, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2348 = metadata !{i32 786443, metadata !400, metadata !2340, i32 438, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2349 = metadata !{i32 786688, metadata !2350, metadata !"j", metadata !406, i32 445, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 445]
!2350 = metadata !{i32 786443, metadata !400, metadata !2347, i32 444, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2351 = metadata !{i32 445, i32 0, metadata !2350, null}
!2352 = metadata !{i32 446, i32 0, metadata !2353, null}
!2353 = metadata !{i32 786443, metadata !400, metadata !2350, i32 446, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2354 = metadata !{i32 447, i32 0, metadata !2353, null}
!2355 = metadata !{i32 451, i32 0, metadata !2356, null}
!2356 = metadata !{i32 786443, metadata !400, metadata !2353, i32 448, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2357 = metadata !{i32 452, i32 0, metadata !2356, null}
!2358 = metadata !{i32 453, i32 0, metadata !2350, null}
!2359 = metadata !{i32 455, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !400, metadata !2348, i32 455, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2361 = metadata !{i32 456, i32 0, metadata !2360, null}
!2362 = metadata !{i32 457, i32 0, metadata !2348, null}
!2363 = metadata !{i32 459, i32 0, metadata !2326, null}
!2364 = metadata !{i32 460, i32 0, metadata !2302, null}
!2365 = metadata !{i32 463, i32 0, metadata !2366, null}
!2366 = metadata !{i32 786443, metadata !400, metadata !2291, i32 463, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2367 = metadata !{i32 786688, metadata !2368, metadata !"ilim", metadata !406, i32 467, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilim] [line 467]
!2368 = metadata !{i32 786443, metadata !400, metadata !2366, i32 464, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2369 = metadata !{i32 467, i32 0, metadata !2368, null}
!2370 = metadata !{i32 469, i32 0, metadata !2371, null}
!2371 = metadata !{i32 786443, metadata !400, metadata !2368, i32 469, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2372 = metadata !{i32 471, i32 0, metadata !2373, null}
!2373 = metadata !{i32 786443, metadata !400, metadata !2374, i32 471, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2374 = metadata !{i32 786443, metadata !400, metadata !2371, i32 470, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2375 = metadata !{i32 473, i32 0, metadata !2376, null}
!2376 = metadata !{i32 786443, metadata !400, metadata !2373, i32 472, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2377 = metadata !{i32 473, i32 0, metadata !2378, null}
!2378 = metadata !{i32 786443, metadata !400, metadata !2379, i32 473, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2379 = metadata !{i32 786443, metadata !400, metadata !2376, i32 473, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2380 = metadata !{i32 473, i32 0, metadata !2379, null}
!2381 = metadata !{i32 474, i32 0, metadata !2376, null}
!2382 = metadata !{i32 474, i32 0, metadata !2383, null}
!2383 = metadata !{i32 786443, metadata !400, metadata !2384, i32 474, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2384 = metadata !{i32 786443, metadata !400, metadata !2376, i32 474, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2385 = metadata !{i32 474, i32 0, metadata !2384, null}
!2386 = metadata !{i32 475, i32 0, metadata !2376, null}
!2387 = metadata !{i32 475, i32 0, metadata !2388, null}
!2388 = metadata !{i32 786443, metadata !400, metadata !2389, i32 475, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2389 = metadata !{i32 786443, metadata !400, metadata !2376, i32 475, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2390 = metadata !{i32 475, i32 0, metadata !2389, null}
!2391 = metadata !{i32 476, i32 0, metadata !2376, null}
!2392 = metadata !{i32 477, i32 0, metadata !2376, null}
!2393 = metadata !{i32 478, i32 0, metadata !2394, null}
!2394 = metadata !{i32 786443, metadata !400, metadata !2374, i32 478, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2395 = metadata !{i32 479, i32 0, metadata !2394, null}
!2396 = metadata !{i32 480, i32 0, metadata !2374, null}
!2397 = metadata !{i32 480, i32 0, metadata !2398, null}
!2398 = metadata !{i32 786443, metadata !400, metadata !2399, i32 480, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2399 = metadata !{i32 786443, metadata !400, metadata !2374, i32 480, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2400 = metadata !{i32 480, i32 0, metadata !2399, null}
!2401 = metadata !{i32 481, i32 0, metadata !2374, null}
!2402 = metadata !{i32 482, i32 0, metadata !2374, null}
!2403 = metadata !{i32 484, i32 0, metadata !2368, null}
!2404 = metadata !{i32 487, i32 0, metadata !2192, null}
!2405 = metadata !{i32 489, i32 0, metadata !2406, null}
!2406 = metadata !{i32 786443, metadata !400, metadata !2176, i32 489, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2407 = metadata !{i32 491, i32 0, metadata !2406, null}
!2408 = metadata !{i32 494, i32 0, metadata !2176, null}
!2409 = metadata !{i32 494, i32 0, metadata !2410, null}
!2410 = metadata !{i32 786443, metadata !400, metadata !2411, i32 494, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2411 = metadata !{i32 786443, metadata !400, metadata !2176, i32 494, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2412 = metadata !{i32 494, i32 0, metadata !2411, null}
!2413 = metadata !{i32 497, i32 0, metadata !2176, null}
!2414 = metadata !{i32 497, i32 0, metadata !2415, null}
!2415 = metadata !{i32 786443, metadata !400, metadata !2416, i32 497, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2416 = metadata !{i32 786443, metadata !400, metadata !2176, i32 497, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2417 = metadata !{i32 497, i32 0, metadata !2416, null}
!2418 = metadata !{i32 498, i32 0, metadata !2176, null}
!2419 = metadata !{i32 500, i32 0, metadata !2420, null}
!2420 = metadata !{i32 786443, metadata !400, metadata !461, i32 500, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2421 = metadata !{i32 501, i32 0, metadata !2420, null}
!2422 = metadata !{i32 503, i32 0, metadata !2423, null}
!2423 = metadata !{i32 786443, metadata !400, metadata !461, i32 503, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2424 = metadata !{i32 504, i32 0, metadata !2425, null}
!2425 = metadata !{i32 786443, metadata !400, metadata !2423, i32 504, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2426 = metadata !{i32 505, i32 0, metadata !2425, null}
!2427 = metadata !{i32 505, i32 0, metadata !2428, null}
!2428 = metadata !{i32 786443, metadata !400, metadata !2429, i32 505, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2429 = metadata !{i32 786443, metadata !400, metadata !2425, i32 505, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2430 = metadata !{i32 505, i32 0, metadata !2429, null}
!2431 = metadata !{i32 507, i32 0, metadata !2432, null}
!2432 = metadata !{i32 786443, metadata !400, metadata !461, i32 507, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2433 = metadata !{i32 508, i32 0, metadata !2432, null}
!2434 = metadata !{i32 509, i32 0, metadata !461, null}
!2435 = metadata !{i32 512, i32 0, metadata !461, null}
!2436 = metadata !{i32 514, i32 0, metadata !461, null}
!2437 = metadata !{i32 786689, metadata !458, metadata !"n", metadata !406, i32 16777777, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 561]
!2438 = metadata !{i32 561, i32 0, metadata !458, null}
!2439 = metadata !{i32 786689, metadata !458, metadata !"arg", metadata !406, i32 33554993, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 561]
!2440 = metadata !{i32 786689, metadata !458, metadata !"argsize", metadata !406, i32 50332209, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argsize] [line 561]
!2441 = metadata !{i32 786689, metadata !458, metadata !"options", metadata !406, i32 67109426, metadata !431, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [options] [line 562]
!2442 = metadata !{i32 562, i32 0, metadata !458, null}
!2443 = metadata !{i32 786688, metadata !458, metadata !"e", metadata !406, i32 564, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 564]
!2444 = metadata !{i32 564, i32 0, metadata !458, null}
!2445 = metadata !{i32 786688, metadata !458, metadata !"n0", metadata !406, i32 570, metadata !415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n0] [line 570]
!2446 = metadata !{i32 570, i32 0, metadata !458, null}
!2447 = metadata !{i32 579, i32 0, metadata !2448, null}
!2448 = metadata !{i32 786443, metadata !400, metadata !458, i32 579, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2449 = metadata !{i32 580, i32 0, metadata !2448, null}
!2450 = metadata !{i32 582, i32 0, metadata !2451, null}
!2451 = metadata !{i32 786443, metadata !400, metadata !458, i32 582, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2452 = metadata !{i32 786688, metadata !2453, metadata !"n1", metadata !406, i32 584, metadata !415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 584]
!2453 = metadata !{i32 786443, metadata !400, metadata !2451, i32 583, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2454 = metadata !{i32 584, i32 0, metadata !2453, null}
!2455 = metadata !{i32 586, i32 0, metadata !2456, null}
!2456 = metadata !{i32 786443, metadata !400, metadata !2453, i32 586, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2457 = metadata !{i32 587, i32 0, metadata !2456, null}
!2458 = metadata !{i32 589, i32 0, metadata !2459, null}
!2459 = metadata !{i32 786443, metadata !400, metadata !2453, i32 589, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2460 = metadata !{i32 591, i32 0, metadata !2461, null}
!2461 = metadata !{i32 786443, metadata !400, metadata !2459, i32 590, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2462 = metadata !{i32 592, i32 0, metadata !2461, null}
!2463 = metadata !{i32 593, i32 0, metadata !2461, null}
!2464 = metadata !{i32 594, i32 0, metadata !2453, null}
!2465 = metadata !{i32 595, i32 0, metadata !2453, null}
!2466 = metadata !{i32 596, i32 0, metadata !2453, null}
!2467 = metadata !{i32 597, i32 0, metadata !2453, null}
!2468 = metadata !{i32 786688, metadata !2469, metadata !"size", metadata !406, i32 600, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 600]
!2469 = metadata !{i32 786443, metadata !400, metadata !458, i32 599, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2470 = metadata !{i32 600, i32 0, metadata !2469, null}
!2471 = metadata !{i32 786688, metadata !2469, metadata !"val", metadata !406, i32 601, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 601]
!2472 = metadata !{i32 601, i32 0, metadata !2469, null}
!2473 = metadata !{i32 786688, metadata !2469, metadata !"qsize", metadata !406, i32 602, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [qsize] [line 602]
!2474 = metadata !{i32 602, i32 0, metadata !2469, null}
!2475 = metadata !{i32 604, i32 0, metadata !2476, null}
!2476 = metadata !{i32 786443, metadata !400, metadata !2469, i32 604, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2477 = metadata !{i32 606, i32 0, metadata !2478, null}
!2478 = metadata !{i32 786443, metadata !400, metadata !2476, i32 605, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2479 = metadata !{i32 607, i32 0, metadata !2480, null}
!2480 = metadata !{i32 786443, metadata !400, metadata !2478, i32 607, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2481 = metadata !{i32 608, i32 0, metadata !2480, null}
!2482 = metadata !{i32 609, i32 0, metadata !2478, null}
!2483 = metadata !{i32 610, i32 0, metadata !2478, null}
!2484 = metadata !{i32 611, i32 0, metadata !2478, null}
!2485 = metadata !{i32 613, i32 0, metadata !2469, null}
!2486 = metadata !{i32 614, i32 0, metadata !2469, null}
!2487 = metadata !{i32 786689, metadata !455, metadata !"style", metadata !406, i32 16777848, metadata !381, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [style] [line 632]
!2488 = metadata !{i32 632, i32 0, metadata !455, null}
!2489 = metadata !{i32 786688, metadata !455, metadata !"o", metadata !406, i32 634, metadata !410, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 634]
!2490 = metadata !{i32 634, i32 0, metadata !455, null}
!2491 = metadata !{i32 635, i32 0, metadata !455, null}
!2492 = metadata !{i32 636, i32 0, metadata !455, null}
!2493 = metadata !{i32 637, i32 0, metadata !455, null}
!2494 = metadata !{i32 786689, metadata !464, metadata !"msgid", metadata !406, i32 16777382, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msgid] [line 166]
!2495 = metadata !{i32 166, i32 0, metadata !464, null}
!2496 = metadata !{i32 786689, metadata !464, metadata !"s", metadata !406, i32 33554598, metadata !381, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 166]
!2497 = metadata !{i32 786688, metadata !464, metadata !"translation", metadata !406, i32 168, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [translation] [line 168]
!2498 = metadata !{i32 168, i32 0, metadata !464, null}
!2499 = metadata !{i32 169, i32 0, metadata !2500, null}
!2500 = metadata !{i32 786443, metadata !400, metadata !464, i32 169, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/quotearg.c]
!2501 = metadata !{i32 170, i32 0, metadata !2500, null}
!2502 = metadata !{i32 171, i32 0, metadata !464, null}
!2503 = metadata !{i32 786689, metadata !492, metadata !"stream", metadata !493, i32 16777264, metadata !496, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 48]
!2504 = metadata !{i32 48, i32 0, metadata !492, null}
!2505 = metadata !{i32 786689, metadata !492, metadata !"command_name", metadata !493, i32 33554481, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [command_name] [line 49]
!2506 = metadata !{i32 49, i32 0, metadata !492, null}
!2507 = metadata !{i32 786689, metadata !492, metadata !"package", metadata !493, i32 50331697, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [package] [line 49]
!2508 = metadata !{i32 786689, metadata !492, metadata !"version", metadata !493, i32 67108914, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 50]
!2509 = metadata !{i32 50, i32 0, metadata !492, null}
!2510 = metadata !{i32 786689, metadata !492, metadata !"authors", metadata !493, i32 83886130, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [authors] [line 50]
!2511 = metadata !{i32 786688, metadata !492, metadata !"n_authors", metadata !493, i32 52, metadata !534, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_authors] [line 52]
!2512 = metadata !{i32 52, i32 0, metadata !492, null}
!2513 = metadata !{i32 786688, metadata !2514, metadata !"tmp_authors", metadata !493, i32 56, metadata !2515, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_authors] [line 56]
!2514 = metadata !{i32 786443, metadata !490, metadata !492, i32 55, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/version-etc.c]
!2515 = metadata !{i32 786454, metadata !490, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !2516} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!2516 = metadata !{i32 786454, metadata !490, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !2517} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!2517 = metadata !{i32 786454, metadata !490, null, metadata !"__builtin_va_list", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !2518} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 56, size 0, align 0, offset 0] [from ]
!2518 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !538, metadata !93, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!2519 = metadata !{i32 56, i32 0, metadata !2514, null}
!2520 = metadata !{i32 59, i32 0, metadata !2514, null}
!2521 = metadata !{i32 64, i32 0, metadata !2514, null}
!2522 = metadata !{i32 65, i32 0, metadata !2514, null}
!2523 = metadata !{i32 66, i32 0, metadata !2514, null}
!2524 = metadata !{i32 69, i32 0, metadata !2525, null}
!2525 = metadata !{i32 786443, metadata !490, metadata !492, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/version-etc.c]
!2526 = metadata !{i32 70, i32 0, metadata !2525, null}
!2527 = metadata !{i32 72, i32 0, metadata !2525, null}
!2528 = metadata !{i32 74, i32 0, metadata !492, null}
!2529 = metadata !{i32 78, i32 0, metadata !2530, null}
!2530 = metadata !{i32 786443, metadata !490, metadata !492, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/version-etc.c]
!2531 = metadata !{i32 81, i32 0, metadata !2530, null}
!2532 = metadata !{i32 82, i32 0, metadata !2530, null}
!2533 = metadata !{i32 85, i32 0, metadata !2530, null}
!2534 = metadata !{i32 86, i32 0, metadata !2530, null}
!2535 = metadata !{i32 89, i32 0, metadata !2530, null}
!2536 = metadata !{i32 90, i32 0, metadata !2530, null}
!2537 = metadata !{i32 95, i32 0, metadata !2530, null}
!2538 = metadata !{i32 96, i32 0, metadata !2530, null}
!2539 = metadata !{i32 101, i32 0, metadata !2530, null}
!2540 = metadata !{i32 102, i32 0, metadata !2530, null}
!2541 = metadata !{i32 107, i32 0, metadata !2530, null}
!2542 = metadata !{i32 109, i32 0, metadata !2530, null}
!2543 = metadata !{i32 114, i32 0, metadata !2530, null}
!2544 = metadata !{i32 116, i32 0, metadata !2530, null}
!2545 = metadata !{i32 121, i32 0, metadata !2530, null}
!2546 = metadata !{i32 124, i32 0, metadata !2530, null}
!2547 = metadata !{i32 129, i32 0, metadata !2530, null}
!2548 = metadata !{i32 132, i32 0, metadata !2530, null}
!2549 = metadata !{i32 139, i32 0, metadata !2530, null}
!2550 = metadata !{i32 142, i32 0, metadata !2530, null}
!2551 = metadata !{i32 144, i32 0, metadata !492, null}
!2552 = metadata !{i32 145, i32 0, metadata !492, null}
!2553 = metadata !{i32 147, i32 0, metadata !492, null}
!2554 = metadata !{i32 148, i32 0, metadata !492, null}
!2555 = metadata !{i32 150, i32 0, metadata !492, null}
!2556 = metadata !{i32 154, i32 0, metadata !492, null}
!2557 = metadata !{i32 786689, metadata !545, metadata !"stream", metadata !493, i32 16777387, metadata !496, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 171]
!2558 = metadata !{i32 171, i32 0, metadata !545, null}
!2559 = metadata !{i32 786689, metadata !545, metadata !"command_name", metadata !493, i32 33554604, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [command_name] [line 172]
!2560 = metadata !{i32 172, i32 0, metadata !545, null}
!2561 = metadata !{i32 786689, metadata !545, metadata !"package", metadata !493, i32 50331820, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [package] [line 172]
!2562 = metadata !{i32 786689, metadata !545, metadata !"version", metadata !493, i32 67109037, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [version] [line 173]
!2563 = metadata !{i32 173, i32 0, metadata !545, null}
!2564 = metadata !{i32 786688, metadata !545, metadata !"authors", metadata !493, i32 175, metadata !2515, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [authors] [line 175]
!2565 = metadata !{i32 175, i32 0, metadata !545, null}
!2566 = metadata !{i32 177, i32 0, metadata !545, null}
!2567 = metadata !{i32 178, i32 0, metadata !545, null}
!2568 = metadata !{i32 179, i32 0, metadata !545, null}
!2569 = metadata !{i32 38, i32 0, metadata !553, null}
!2570 = metadata !{i32 44, i32 0, metadata !553, null}
!2571 = metadata !{i32 45, i32 0, metadata !553, null}
!2572 = metadata !{i32 786689, metadata !568, metadata !"n", metadata !560, i32 16777262, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 46]
!2573 = metadata !{i32 46, i32 0, metadata !568, null}
!2574 = metadata !{i32 786689, metadata !568, metadata !"s", metadata !560, i32 33554478, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 46]
!2575 = metadata !{i32 48, i32 10, metadata !568, null}
!2576 = metadata !{i32 786689, metadata !571, metadata !"n", metadata !560, i32 16777270, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 54]
!2577 = metadata !{i32 54, i32 0, metadata !571, null}
!2578 = metadata !{i32 56, i32 10, metadata !571, null}
!2579 = metadata !{i32 786689, metadata !574, metadata !"p", metadata !560, i32 16777287, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 71]
!2580 = metadata !{i32 71, i32 0, metadata !574, null}
!2581 = metadata !{i32 786689, metadata !574, metadata !"n", metadata !560, i32 33554503, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 71]
!2582 = metadata !{i32 786689, metadata !574, metadata !"s", metadata !560, i32 50331719, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 71]
!2583 = metadata !{i32 73, i32 10, metadata !574, null}
!2584 = metadata !{i32 786689, metadata !577, metadata !"p", metadata !560, i32 16777296, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 80]
!2585 = metadata !{i32 80, i32 0, metadata !577, null}
!2586 = metadata !{i32 786689, metadata !577, metadata !"n", metadata !560, i32 33554512, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 80]
!2587 = metadata !{i32 82, i32 10, metadata !577, null}
!2588 = metadata !{i32 786689, metadata !580, metadata !"p", metadata !560, i32 16777388, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 172]
!2589 = metadata !{i32 172, i32 0, metadata !580, null}
!2590 = metadata !{i32 786689, metadata !580, metadata !"pn", metadata !560, i32 33554604, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 172]
!2591 = metadata !{i32 786689, metadata !580, metadata !"s", metadata !560, i32 50331820, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 172]
!2592 = metadata !{i32 174, i32 10, metadata !580, null}
!2593 = metadata !{i32 786689, metadata !581, metadata !"p", metadata !560, i32 16777400, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 184]
!2594 = metadata !{i32 184, i32 0, metadata !581, null}
!2595 = metadata !{i32 786689, metadata !581, metadata !"pn", metadata !560, i32 33554616, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 184]
!2596 = metadata !{i32 186, i32 10, metadata !581, null}
!2597 = metadata !{i32 786689, metadata !584, metadata !"s", metadata !560, i32 16777410, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 194]
!2598 = metadata !{i32 194, i32 0, metadata !584, null}
!2599 = metadata !{i32 196, i32 0, metadata !584, null}
!2600 = metadata !{i32 786689, metadata !585, metadata !"n", metadata !560, i32 16777419, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 203]
!2601 = metadata !{i32 203, i32 0, metadata !585, null}
!2602 = metadata !{i32 786689, metadata !585, metadata !"s", metadata !560, i32 33554635, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 203]
!2603 = metadata !{i32 786688, metadata !585, metadata !"p", metadata !560, i32 205, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 205]
!2604 = metadata !{i32 205, i32 0, metadata !585, null}
!2605 = metadata !{i32 208, i32 0, metadata !2606, null}
!2606 = metadata !{i32 786443, metadata !556, metadata !585, i32 208, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2607 = metadata !{i32 209, i32 0, metadata !2606, null}
!2608 = metadata !{i32 210, i32 0, metadata !585, null}
!2609 = metadata !{i32 786689, metadata !586, metadata !"p", metadata !560, i32 16777434, metadata !138, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 218]
!2610 = metadata !{i32 218, i32 0, metadata !586, null}
!2611 = metadata !{i32 786689, metadata !586, metadata !"s", metadata !560, i32 33554650, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 218]
!2612 = metadata !{i32 220, i32 0, metadata !586, null}
!2613 = metadata !{i32 786689, metadata !589, metadata !"string", metadata !560, i32 16777442, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 226]
!2614 = metadata !{i32 226, i32 0, metadata !589, null}
!2615 = metadata !{i32 228, i32 0, metadata !589, null}
!2616 = metadata !{i32 786689, metadata !591, metadata !"n", metadata !560, i32 16777253, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 37]
!2617 = metadata !{i32 37, i32 0, metadata !591, null}
!2618 = metadata !{i32 786689, metadata !591, metadata !"s", metadata !560, i32 33554469, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 37]
!2619 = metadata !{i32 786688, metadata !591, metadata !"p", metadata !560, i32 39, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 39]
!2620 = metadata !{i32 39, i32 0, metadata !591, null}
!2621 = metadata !{i32 40, i32 0, metadata !2622, null}
!2622 = metadata !{i32 786443, metadata !556, metadata !591, i32 40, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2623 = metadata !{i32 41, i32 0, metadata !2622, null}
!2624 = metadata !{i32 42, i32 0, metadata !591, null}
!2625 = metadata !{i32 786689, metadata !590, metadata !"p", metadata !560, i32 16777279, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 63]
!2626 = metadata !{i32 63, i32 0, metadata !590, null}
!2627 = metadata !{i32 786689, metadata !590, metadata !"n", metadata !560, i32 33554495, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 63]
!2628 = metadata !{i32 786689, metadata !590, metadata !"s", metadata !560, i32 50331711, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 63]
!2629 = metadata !{i32 65, i32 0, metadata !2630, null}
!2630 = metadata !{i32 786443, metadata !556, metadata !590, i32 65, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2631 = metadata !{i32 66, i32 0, metadata !2630, null}
!2632 = metadata !{i32 67, i32 0, metadata !590, null}
!2633 = metadata !{i32 786689, metadata !559, metadata !"p", metadata !560, i32 16777358, metadata !96, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 142]
!2634 = metadata !{i32 142, i32 0, metadata !559, null}
!2635 = metadata !{i32 786689, metadata !559, metadata !"pn", metadata !560, i32 33554574, metadata !563, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 142]
!2636 = metadata !{i32 786689, metadata !559, metadata !"s", metadata !560, i32 50331790, metadata !564, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 142]
!2637 = metadata !{i32 786688, metadata !559, metadata !"n", metadata !560, i32 144, metadata !564, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 144]
!2638 = metadata !{i32 144, i32 0, metadata !559, null}
!2639 = metadata !{i32 146, i32 0, metadata !2640, null}
!2640 = metadata !{i32 786443, metadata !556, metadata !559, i32 146, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2641 = metadata !{i32 148, i32 0, metadata !2642, null}
!2642 = metadata !{i32 786443, metadata !556, metadata !2643, i32 148, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2643 = metadata !{i32 786443, metadata !556, metadata !2640, i32 147, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2644 = metadata !{i32 156, i32 0, metadata !2645, null}
!2645 = metadata !{i32 786443, metadata !556, metadata !2642, i32 149, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2646 = metadata !{i32 157, i32 0, metadata !2645, null}
!2647 = metadata !{i32 158, i32 0, metadata !2645, null}
!2648 = metadata !{i32 159, i32 0, metadata !2643, null}
!2649 = metadata !{i32 162, i32 0, metadata !2650, null}
!2650 = metadata !{i32 786443, metadata !556, metadata !2651, i32 162, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2651 = metadata !{i32 786443, metadata !556, metadata !2640, i32 161, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xmalloc.c]
!2652 = metadata !{i32 163, i32 0, metadata !2650, null}
!2653 = metadata !{i32 164, i32 0, metadata !2651, null}
!2654 = metadata !{i32 167, i32 0, metadata !559, null}
!2655 = metadata !{i32 168, i32 0, metadata !559, null}
!2656 = metadata !{i32 786689, metadata !595, metadata !"string", metadata !596, i32 16777249, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 33]
!2657 = metadata !{i32 33, i32 0, metadata !595, null}
!2658 = metadata !{i32 786689, metadata !595, metadata !"n", metadata !596, i32 33554465, metadata !599, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 33]
!2659 = metadata !{i32 786688, metadata !595, metadata !"s", metadata !596, i32 35, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 35]
!2660 = metadata !{i32 35, i32 0, metadata !595, null}
!2661 = metadata !{i32 36, i32 0, metadata !2662, null}
!2662 = metadata !{i32 786443, metadata !593, metadata !595, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/xstrndup.c]
!2663 = metadata !{i32 37, i32 0, metadata !2662, null}
!2664 = metadata !{i32 38, i32 0, metadata !595, null}
!2665 = metadata !{i32 786689, metadata !603, metadata !"lineptr", metadata !604, i32 16777279, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lineptr] [line 63]
!2666 = metadata !{i32 63, i32 0, metadata !603, null}
!2667 = metadata !{i32 786689, metadata !603, metadata !"linesize", metadata !604, i32 33554495, metadata !609, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [linesize] [line 63]
!2668 = metadata !{i32 786689, metadata !603, metadata !"offset", metadata !604, i32 50331711, metadata !610, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 63]
!2669 = metadata !{i32 786689, metadata !603, metadata !"nmax", metadata !604, i32 67108927, metadata !610, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmax] [line 63]
!2670 = metadata !{i32 786689, metadata !603, metadata !"delim1", metadata !604, i32 83886144, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delim1] [line 64]
!2671 = metadata !{i32 64, i32 0, metadata !603, null}
!2672 = metadata !{i32 786689, metadata !603, metadata !"delim2", metadata !604, i32 100663360, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delim2] [line 64]
!2673 = metadata !{i32 786689, metadata !603, metadata !"stream", metadata !604, i32 117440576, metadata !611, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stream] [line 64]
!2674 = metadata !{i32 786688, metadata !603, metadata !"nbytes_avail", metadata !604, i32 66, metadata !610, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes_avail] [line 66]
!2675 = metadata !{i32 66, i32 0, metadata !603, null}
!2676 = metadata !{i32 786688, metadata !603, metadata !"read_pos", metadata !604, i32 67, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [read_pos] [line 67]
!2677 = metadata !{i32 67, i32 0, metadata !603, null}
!2678 = metadata !{i32 786688, metadata !603, metadata !"bytes_stored", metadata !604, i32 68, metadata !607, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bytes_stored] [line 68]
!2679 = metadata !{i32 68, i32 0, metadata !603, null}
!2680 = metadata !{i32 786688, metadata !603, metadata !"ptr", metadata !604, i32 69, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 69]
!2681 = metadata !{i32 69, i32 0, metadata !603, null}
!2682 = metadata !{i32 786688, metadata !603, metadata !"size", metadata !604, i32 70, metadata !610, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 70]
!2683 = metadata !{i32 70, i32 0, metadata !603, null}
!2684 = metadata !{i32 72, i32 0, metadata !2685, null}
!2685 = metadata !{i32 786443, metadata !601, metadata !603, i32 72, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2686 = metadata !{i32 74, i32 0, metadata !2687, null}
!2687 = metadata !{i32 786443, metadata !601, metadata !2685, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2688 = metadata !{i32 75, i32 0, metadata !2687, null}
!2689 = metadata !{i32 76, i32 0, metadata !2690, null}
!2690 = metadata !{i32 786443, metadata !601, metadata !2687, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2691 = metadata !{i32 77, i32 0, metadata !2690, null}
!2692 = metadata !{i32 78, i32 0, metadata !2687, null}
!2693 = metadata !{i32 80, i32 0, metadata !2694, null}
!2694 = metadata !{i32 786443, metadata !601, metadata !603, i32 80, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2695 = metadata !{i32 81, i32 0, metadata !2694, null}
!2696 = metadata !{i32 83, i32 0, metadata !603, null}
!2697 = metadata !{i32 84, i32 0, metadata !603, null}
!2698 = metadata !{i32 86, i32 0, metadata !2699, null}
!2699 = metadata !{i32 786443, metadata !601, metadata !603, i32 86, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2700 = metadata !{i32 87, i32 0, metadata !2699, null}
!2701 = metadata !{i32 89, i32 0, metadata !2702, null}
!2702 = metadata !{i32 786443, metadata !601, metadata !603, i32 89, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2703 = metadata !{i32 786688, metadata !2704, metadata !"c", metadata !604, i32 93, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 93]
!2704 = metadata !{i32 786443, metadata !601, metadata !2702, i32 90, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2705 = metadata !{i32 93, i32 0, metadata !2704, null}
!2706 = metadata !{i32 99, i32 0, metadata !2707, null}
!2707 = metadata !{i32 786443, metadata !601, metadata !2704, i32 99, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2708 = metadata !{i32 786688, metadata !2709, metadata !"newsize", metadata !604, i32 101, metadata !610, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 101]
!2709 = metadata !{i32 786443, metadata !601, metadata !2707, i32 100, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2710 = metadata !{i32 101, i32 0, metadata !2709, null}
!2711 = metadata !{i32 786688, metadata !2709, metadata !"newptr", metadata !604, i32 102, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newptr] [line 102]
!2712 = metadata !{i32 102, i32 0, metadata !2709, null}
!2713 = metadata !{i32 104, i32 0, metadata !2714, null}
!2714 = metadata !{i32 786443, metadata !601, metadata !2709, i32 104, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2715 = metadata !{i32 105, i32 0, metadata !2714, null}
!2716 = metadata !{i32 107, i32 0, metadata !2717, null}
!2717 = metadata !{i32 786443, metadata !601, metadata !2709, i32 107, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2718 = metadata !{i32 786688, metadata !2719, metadata !"newsizemax", metadata !604, i32 109, metadata !610, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsizemax] [line 109]
!2719 = metadata !{i32 786443, metadata !601, metadata !2717, i32 108, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2720 = metadata !{i32 109, i32 0, metadata !2719, null}
!2721 = metadata !{i32 110, i32 0, metadata !2722, null}
!2722 = metadata !{i32 786443, metadata !601, metadata !2719, i32 110, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2723 = metadata !{i32 111, i32 0, metadata !2722, null}
!2724 = metadata !{i32 112, i32 0, metadata !2719, null}
!2725 = metadata !{i32 113, i32 0, metadata !2719, null}
!2726 = metadata !{i32 115, i32 0, metadata !2709, null}
!2727 = metadata !{i32 116, i32 0, metadata !2709, null}
!2728 = metadata !{i32 117, i32 0, metadata !2729, null}
!2729 = metadata !{i32 786443, metadata !601, metadata !2709, i32 117, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2730 = metadata !{i32 118, i32 0, metadata !2729, null}
!2731 = metadata !{i32 119, i32 0, metadata !2709, null}
!2732 = metadata !{i32 120, i32 0, metadata !2709, null}
!2733 = metadata !{i32 121, i32 0, metadata !2709, null}
!2734 = metadata !{i32 122, i32 0, metadata !2709, null}
!2735 = metadata !{i32 124, i32 0, metadata !2704, null}
!2736 = metadata !{i32 125, i32 0, metadata !2737, null}
!2737 = metadata !{i32 786443, metadata !601, metadata !2704, i32 125, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2738 = metadata !{i32 128, i32 0, metadata !2739, null}
!2739 = metadata !{i32 786443, metadata !601, metadata !2740, i32 128, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2740 = metadata !{i32 786443, metadata !601, metadata !2737, i32 126, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2741 = metadata !{i32 129, i32 0, metadata !2739, null}
!2742 = metadata !{i32 131, i32 0, metadata !2739, null}
!2743 = metadata !{i32 134, i32 0, metadata !2744, null}
!2744 = metadata !{i32 786443, metadata !601, metadata !2704, i32 134, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2745 = metadata !{i32 136, i32 0, metadata !2746, null}
!2746 = metadata !{i32 786443, metadata !601, metadata !2744, i32 135, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2747 = metadata !{i32 137, i32 0, metadata !2746, null}
!2748 = metadata !{i32 138, i32 0, metadata !2746, null}
!2749 = metadata !{i32 140, i32 0, metadata !2750, null}
!2750 = metadata !{i32 786443, metadata !601, metadata !2704, i32 140, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/cr-17/lib/getndelim2.c]
!2751 = metadata !{i32 142, i32 0, metadata !2750, null}
!2752 = metadata !{i32 143, i32 0, metadata !2704, null}
!2753 = metadata !{i32 147, i32 0, metadata !603, null}
!2754 = metadata !{i32 149, i32 0, metadata !603, null}
!2755 = metadata !{i32 152, i32 0, metadata !603, null}
!2756 = metadata !{i32 153, i32 0, metadata !603, null}
!2757 = metadata !{i32 154, i32 0, metadata !603, null}
!2758 = metadata !{i32 155, i32 0, metadata !603, null}
