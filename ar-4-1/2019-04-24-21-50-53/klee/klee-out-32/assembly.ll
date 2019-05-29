; ModuleID = '/home/jl/testspace/coreutils-bc/ar-4-1/2019-04-24-21-50-53/bitcode/symmains.bc_hash_insert_ChangeEntry.bc'
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
@.str8 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION... [FILE]...\0A\00", align 1
@.str9 = private unnamed_addr constant [67 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [74 x i8] c"Mandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str11 = private unnamed_addr constant [177 x i8] c"  -b, --bytes=LIST        select only these bytes\0A  -c, --characters=LIST   select only these characters\0A  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter\0A\00", align 1
@.str12 = private unnamed_addr constant [238 x i8] c"  -f, --fields=LIST       select only these fields;  also print any line\0A                            that contains no delimiter character, unless\0A                            the -s option is specif
@.str13 = private unnamed_addr constant [115 x i8] c"      --complement        complement the set of selected bytes, characters\0A                            or fields.\0A\00", align 1
@.str14 = private unnamed_addr constant [210 x i8] c"  -s, --only-delimited    do not print lines not containing delimiters\0A      --output-delimiter=STRING  use STRING as the output delimiter\0A                            the default is to use the inpu
@.str15 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str16 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str17 = private unnamed_addr constant [204 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactl
@.str18 = private unnamed_addr constant [317 x i8] c"Each range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or f
@.str19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@operating_mode = internal global i32 0, align 4
@suppress_non_delimited = internal global i8 0, align 1
@delim = internal global i8 0, align 1
@have_read_stdin = internal global i8 0, align 1
@.str20 = private unnamed_addr constant [11 x i8] c"b:c:d:f:ns\00", align 1
@.str21 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external global i8*
@.str22 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal global i8 0, align 1
@output_delimiter_length = internal global i64 0, align 8
@output_delimiter_string = internal global i8* null, align 8
@complement = internal global i8 0, align 1
@.str23 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"6.9+\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"David Ihnat\00", align 1
@.str27 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str28 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str29 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str30 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str31 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@range_start_ht = internal global %struct.hash_table* null, align 8
@.str32 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@.str33 = private unnamed_addr constant [26 x i8] c"missing list of positions\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1
@optind = external global i32
@.str34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*
@.str35 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@field_1_buffer = internal global i8* null, align 8
@field_1_bufsize = internal global i64 0, align 8
@.str37 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c"cut.c\00", align 1
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1
@eol_range_start = internal global i64 0, align 8
@max_range_endpoint = internal global i64 0, align 8
@printable_field = internal global i8* null, align 8
@.str39 = private unnamed_addr constant [27 x i8] c"invalid byte or field list\00", align 1
@.str40 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@.str41 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal global i8* null, align 8
@.str42 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str43 = private unnamed_addr constant [28 x i8] c"byte offset %s is too large\00", align 1
@.str44 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
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
@longopts = internal constant <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32,
@.str55 = private unnamed_addr constant [23 x i8] c"\0AReport bugs to <%s>.\0A\00", align 1
@.str56 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str57 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str158 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str259 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str360 = private unnamed_addr constant [202 x i8] c"\0ALicense GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl.html>\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by
@.str461 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str562 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str663 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str764 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str865 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str966 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str1067 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str1168 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str1269 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str1370 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str176 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@file_name = internal global i8* null, align 8
@.str81 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str182 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str283 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str90 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str191 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str292 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str393 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant { float, float, float, float, i8, [3 x i8] } { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0, [3 x i8] undef }, align 4
@.str104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str1105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str2106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str3107 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str4108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str5109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str6110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = constant [8 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str104, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1105, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str2106, i32 0, i32 0), i8* getelementptr in
@quoting_style_vals = constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 16
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 4
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str7111 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str8112 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str9113 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@0 = private unnamed_addr constant [7 x i8] c"argno0\00"
@1 = private unnamed_addr constant [7 x i8] c"argno1\00"
@2 = private unnamed_addr constant [7 x i8] c"argno0\00"
@3 = private unnamed_addr constant [7 x i8] c"argno0\00"
@4 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@5 = private unnamed_addr constant [7 x i8] c"argno0\00"
@6 = private unnamed_addr constant [7 x i8] c"argno1\00"
@7 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@8 = private unnamed_addr constant [7 x i8] c"argno0\00"
@9 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@10 = private unnamed_addr constant [7 x i8] c"argno0\00"
@11 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@12 = private unnamed_addr constant [7 x i8] c"argno1\00"
@13 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno2\00"
@14 = private unnamed_addr constant [7 x i8] c"argno2\00"
@15 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno3\00"
@16 = private unnamed_addr constant [7 x i8] c"argno3\00"
@17 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno4\00"
@18 = private unnamed_addr constant [7 x i8] c"argno4\00"
@19 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@20 = private unnamed_addr constant [7 x i8] c"argno0\00"
@21 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@22 = private unnamed_addr constant [7 x i8] c"argno1\00"
@23 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno2\00"
@24 = private unnamed_addr constant [7 x i8] c"argno2\00"
@25 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno3\00"
@26 = private unnamed_addr constant [7 x i8] c"argno3\00"
@27 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@28 = private unnamed_addr constant [7 x i8] c"argno0\00"
@29 = private unnamed_addr constant [7 x i8] c"argno0\00"
@30 = private unnamed_addr constant [7 x i8] c"argno0\00"
@31 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@32 = private unnamed_addr constant [7 x i8] c"argno0\00"
@33 = private unnamed_addr constant [7 x i8] c"argno1\00"
@34 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@35 = private unnamed_addr constant [7 x i8] c"argno0\00"
@36 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@37 = private unnamed_addr constant [7 x i8] c"argno1\00"
@38 = private unnamed_addr constant [7 x i8] c"argno2\00"
@39 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@40 = private unnamed_addr constant [7 x i8] c"argno0\00"
@41 = private unnamed_addr constant [7 x i8] c"argno1\00"
@42 = private unnamed_addr constant [7 x i8] c"argno1\00"
@43 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@44 = private unnamed_addr constant [7 x i8] c"argno0\00"
@45 = private unnamed_addr constant [7 x i8] c"argno1\00"
@46 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@47 = private unnamed_addr constant [7 x i8] c"argno0\00"
@48 = private unnamed_addr constant [7 x i8] c"argno1\00"
@49 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno2\00"
@50 = private unnamed_addr constant [7 x i8] c"argno2\00"
@51 = private unnamed_addr constant [7 x i8] c"argno3\00"
@52 = private unnamed_addr constant [7 x i8] c"argno4\00"
@53 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno5\00"
@54 = private unnamed_addr constant [7 x i8] c"argno5\00"
@55 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@56 = private unnamed_addr constant [7 x i8] c"argno0\00"
@57 = private unnamed_addr constant [7 x i8] c"argno1\00"
@58 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno2\00"
@59 = private unnamed_addr constant [7 x i8] c"argno2\00"
@60 = private unnamed_addr constant [7 x i8] c"argno3\00"
@61 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno4\00"
@62 = private unnamed_addr constant [7 x i8] c"argno4\00"
@63 = private unnamed_addr constant [7 x i8] c"argno0\00"
@64 = private unnamed_addr constant [7 x i8] c"argno0\00"
@65 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@66 = private unnamed_addr constant [7 x i8] c"argno1\00"
@67 = private unnamed_addr constant [7 x i8] c"argno2\00"
@68 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno3\00"
@69 = private unnamed_addr constant [7 x i8] c"argno3\00"
@70 = private unnamed_addr constant [7 x i8] c"argno0\00"
@71 = private unnamed_addr constant [7 x i8] c"argno1\00"
@72 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno2\00"
@73 = private unnamed_addr constant [7 x i8] c"argno2\00"
@74 = private unnamed_addr constant [7 x i8] c"argno0\00"
@75 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@76 = private unnamed_addr constant [7 x i8] c"argno1\00"
@77 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@78 = private unnamed_addr constant [7 x i8] c"argno0\00"
@79 = private unnamed_addr constant [7 x i8] c"argno0\00"
@80 = private unnamed_addr constant [7 x i8] c"argno0\00"
@81 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@82 = private unnamed_addr constant [7 x i8] c"argno0\00"
@83 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@84 = private unnamed_addr constant [7 x i8] c"argno1\00"
@85 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@86 = private unnamed_addr constant [7 x i8] c"argno0\00"
@87 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@88 = private unnamed_addr constant [7 x i8] c"argno0\00"
@89 = private unnamed_addr constant [7 x i8] c"argno1\00"
@90 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@91 = private unnamed_addr constant [7 x i8] c"argno0\00"
@92 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@93 = private unnamed_addr constant [7 x i8] c"argno1\00"
@94 = private unnamed_addr constant [7 x i8] c"argno0\00"
@95 = private unnamed_addr constant [7 x i8] c"argno0\00"
@96 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@97 = private unnamed_addr constant [7 x i8] c"argno0\00"
@98 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@99 = private unnamed_addr constant [7 x i8] c"argno0\00"
@100 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@101 = private unnamed_addr constant [7 x i8] c"argno1\00"
@102 = private unnamed_addr constant [7 x i8] c"argno0\00"
@103 = private unnamed_addr constant [7 x i8] c"argno0\00"
@104 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@105 = private unnamed_addr constant [7 x i8] c"argno1\00"
@106 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@107 = private unnamed_addr constant [7 x i8] c"argno0\00"
@108 = private unnamed_addr constant [7 x i8] c"argno0\00"
@109 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@110 = private unnamed_addr constant [7 x i8] c"argno0\00"
@111 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@112 = private unnamed_addr constant [7 x i8] c"argno0\00"
@113 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@114 = private unnamed_addr constant [7 x i8] c"argno0\00"
@115 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@116 = private unnamed_addr constant [7 x i8] c"argno0\00"
@117 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@118 = private unnamed_addr constant [7 x i8] c"argno0\00"
@119 = private unnamed_addr constant [7 x i8] c"argno1\00"
@120 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@121 = private unnamed_addr constant [7 x i8] c"argno0\00"
@122 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@123 = private unnamed_addr constant [7 x i8] c"argno1\00"
@124 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@125 = private unnamed_addr constant [7 x i8] c"argno0\00"
@126 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@127 = private unnamed_addr constant [7 x i8] c"argno1\00"
@128 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@129 = private unnamed_addr constant [7 x i8] c"argno0\00"
@130 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@131 = private unnamed_addr constant [7 x i8] c"argno0\00"
@132 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@133 = private unnamed_addr constant [7 x i8] c"argno0\00"
@134 = private unnamed_addr constant [7 x i8] c"argno1\00"
@135 = private unnamed_addr constant [7 x i8] c"argno2\00"
@136 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@137 = private unnamed_addr constant [7 x i8] c"argno0\00"
@138 = private unnamed_addr constant [7 x i8] c"argno1\00"
@139 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@140 = private unnamed_addr constant [7 x i8] c"argno0\00"
@141 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@142 = private unnamed_addr constant [7 x i8] c"argno0\00"
@143 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@144 = private unnamed_addr constant [7 x i8] c"argno0\00"
@145 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@146 = private unnamed_addr constant [7 x i8] c"argno0\00"
@147 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@148 = private unnamed_addr constant [7 x i8] c"argno0\00"
@149 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@150 = private unnamed_addr constant [7 x i8] c"argno0\00"
@151 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@152 = private unnamed_addr constant [7 x i8] c"argno0\00"
@153 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@154 = private unnamed_addr constant [7 x i8] c"argno1\00"
@155 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@156 = private unnamed_addr constant [7 x i8] c"argno0\00"
@157 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@158 = private unnamed_addr constant [7 x i8] c"argno0\00"
@159 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@160 = private unnamed_addr constant [7 x i8] c"argno1\00"
@161 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@162 = private unnamed_addr constant [7 x i8] c"argno0\00"
@163 = private unnamed_addr constant [7 x i8] c"argno1\00"
@164 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@165 = private unnamed_addr constant [7 x i8] c"argno0\00"
@166 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@167 = private unnamed_addr constant [7 x i8] c"argno0\00"
@168 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@169 = private unnamed_addr constant [7 x i8] c"argno0\00"
@170 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@171 = private unnamed_addr constant [7 x i8] c"argno1\00"
@172 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@173 = private unnamed_addr constant [7 x i8] c"argno0\00"
@174 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@175 = private unnamed_addr constant [7 x i8] c"argno0\00"
@176 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@177 = private unnamed_addr constant [7 x i8] c"argno0\00"
@178 = private unnamed_addr constant [7 x i8] c"argno1\00"
@179 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@180 = private unnamed_addr constant [7 x i8] c"argno0\00"
@181 = private unnamed_addr constant [7 x i8] c"argno1\00"
@182 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno2\00"
@183 = private unnamed_addr constant [7 x i8] c"argno2\00"
@184 = private unnamed_addr constant [7 x i8] c"argno0\00"
@185 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@186 = private unnamed_addr constant [7 x i8] c"argno1\00"
@187 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@188 = private unnamed_addr constant [7 x i8] c"argno0\00"
@189 = private unnamed_addr constant [7 x i8] c"argno0\00"
@190 = private unnamed_addr constant [7 x i8] c"argno1\00"
@191 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno2\00"
@192 = private unnamed_addr constant [7 x i8] c"argno2\00"
@193 = private unnamed_addr constant [7 x i8] c"argno3\00"
@194 = private unnamed_addr constant [7 x i8] c"argno0\00"
@195 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@196 = private unnamed_addr constant [7 x i8] c"argno1\00"
@197 = private unnamed_addr constant [7 x i8] c"argno0\00"
@198 = private unnamed_addr constant [7 x i8] c"argno1\00"
@199 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@200 = private unnamed_addr constant [7 x i8] c"argno0\00"
@201 = private unnamed_addr constant [7 x i8] c"argno1\00"
@202 = private unnamed_addr constant [7 x i8] c"argno2\00"
@203 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno0\00"
@204 = private unnamed_addr constant [7 x i8] c"argno0\00"
@205 = private unnamed_addr constant [20 x i8] c"macke_sizeof_argno1\00"
@206 = private unnamed_addr constant [7 x i8] c"argno1\00"
@207 = private unnamed_addr constant [7 x i8] c"argno0\00"
@208 = private unnamed_addr constant [7 x i8] c"argno1\00"
@.str58 = private unnamed_addr constant [64 x i8] c"/home/jl/deploy/use/src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str159 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str260 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str361 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@.str462 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str1563 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str2664 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str765 = private unnamed_addr constant [55 x i8] c"/home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c\00", align 1
@.str1866 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str2967 = private unnamed_addr constant [5 x i8] c"user\00", align 1

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
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64* %x.addr, align 8, !dbg !837
  %1 = load i64* %y.addr, align 8, !dbg !837
  %cmp = icmp eq i64 %0, %1, !dbg !837
  br i1 %cmp, label %if.then, label %if.else, !dbg !837

if.then:                                          ; preds = %entry
  %2 = load i64* %x.addr, align 8, !dbg !839
  store i64 %2, i64* %retval, !dbg !839
  br label %return, !dbg !839

if.else:                                          ; preds = %entry
  %3 = load i32* @after_divergence, align 4, !dbg !840
  %tobool = icmp ne i32 %3, 0, !dbg !840
  br i1 %tobool, label %if.end29, label %if.then1, !dbg !840

if.then1:                                         ; preds = %if.else
  %4 = load i8** @klee_div_file_env, align 8, !dbg !843
  %call = call i8* @getenv(i8* %4) #9, !dbg !843
  store i8* %call, i8** %file, align 8, !dbg !843
  %5 = load i8** @klee_div_marker_file_env, align 8, !dbg !845
  %call2 = call i8* @getenv(i8* %5) #9, !dbg !845
  store i8* %call2, i8** %marker_file, align 8, !dbg !845
  %6 = load i8** %file, align 8, !dbg !846
  %tobool3 = icmp ne i8* %6, null, !dbg !846
  br i1 %tobool3, label %if.then4, label %if.else26, !dbg !846

if.then4:                                         ; preds = %if.then1
  %7 = load i8** %file, align 8, !dbg !848
  %call5 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !848
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %f, align 8, !dbg !848
  %8 = load %struct._IO_FILE** %f, align 8, !dbg !850
  %tobool6 = icmp ne %struct._IO_FILE* %8, null, !dbg !850
  br i1 %tobool6, label %if.then7, label %if.else11, !dbg !850

if.then7:                                         ; preds = %if.then4
  %9 = load %struct._IO_FILE** %f, align 8, !dbg !852
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0)), !dbg !852
  %10 = load %struct._IO_FILE** %f, align 8, !dbg !854
  %call9 = call i32 @fflush_unlocked(%struct._IO_FILE* %10), !dbg !854
  %11 = load %struct._IO_FILE** %f, align 8, !dbg !855
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !855
  br label %if.end, !dbg !856

if.else11:                                        ; preds = %if.then4
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !857
  %13 = load i8** %file, align 8, !dbg !857
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %13), !dbg !857
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then7
  %14 = load i8** %marker_file, align 8, !dbg !859
  %tobool13 = icmp ne i8* %14, null, !dbg !859
  br i1 %tobool13, label %if.then14, label %if.else23, !dbg !859

if.then14:                                        ; preds = %if.end
  %15 = load i8** %marker_file, align 8, !dbg !861
  %call15 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0)), !dbg !861
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %f, align 8, !dbg !861
  %16 = load %struct._IO_FILE** %f, align 8, !dbg !863
  %tobool16 = icmp ne %struct._IO_FILE* %16, null, !dbg !863
  br i1 %tobool16, label %if.then17, label %if.else20, !dbg !863

if.then17:                                        ; preds = %if.then14
  %17 = load %struct._IO_FILE** %f, align 8, !dbg !865
  %call18 = call i32 @fflush_unlocked(%struct._IO_FILE* %17), !dbg !865
  %18 = load %struct._IO_FILE** %f, align 8, !dbg !867
  %call19 = call i32 @fclose(%struct._IO_FILE* %18), !dbg !867
  br label %if.end28, !dbg !868

if.else20:                                        ; preds = %if.then14
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !869
  %20 = load i8** %file, align 8, !dbg !869
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0), i8* %20), !dbg !869
  br label %if.end28

if.else23:                                        ; preds = %if.end
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !871
  %22 = load i8** @klee_div_marker_file_env, align 8, !dbg !871
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %22), !dbg !871
  br label %if.end28

if.else26:                                        ; preds = %if.then1
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !873
  %24 = load i8** @klee_div_file_env, align 8, !dbg !873
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0), i8* %24), !dbg !873
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.else20, %if.then17, %if.else26
  store i32 1, i32* @after_divergence, align 4, !dbg !875
  br label %if.end29, !dbg !876

if.end29:                                         ; preds = %if.end28, %if.else
  %25 = load i64* %y.addr, align 8, !dbg !877
  store i64 %25, i64* %retval, !dbg !877
  br label %return, !dbg !877

return:                                           ; preds = %if.end29, %if.then
  %26 = load i64* %retval, !dbg !878
  ret i64 %26, !dbg !878
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
  ret i32 1, !dbg !879
}

; Function Attrs: noinline nounwind uwtable
define i32 @klee_get_false() #4 {
entry:
  ret i32 0, !dbg !881
}

; Function Attrs: nounwind uwtable
define void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32* %status.addr, align 4, !dbg !882
  %cmp = icmp ne i32 %0, 0, !dbg !882
  br i1 %cmp, label %if.then, label %if.else, !dbg !882

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !885
  %2 = load i8** @program_name, align 8, !dbg !885
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8]* @.str7, i32 0, i32 0), i8* %2), !dbg !885
  br label %if.end, !dbg !885

if.else:                                          ; preds = %entry
  %3 = load i8** @program_name, align 8, !dbg !886
  %call1 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0), i8* %3), !dbg !886
  %4 = load %struct._IO_FILE** @stdout, align 8, !dbg !888
  %call2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([67 x i8]* @.str9, i32 0, i32 0), %struct._IO_FILE* %4), !dbg !888
  %5 = load %struct._IO_FILE** @stdout, align 8, !dbg !889
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([74 x i8]* @.str10, i32 0, i32 0), %struct._IO_FILE* %5), !dbg !889
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !890
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([177 x i8]* @.str11, i32 0, i32 0), %struct._IO_FILE* %6), !dbg !890
  %7 = load %struct._IO_FILE** @stdout, align 8, !dbg !891
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([238 x i8]* @.str12, i32 0, i32 0), %struct._IO_FILE* %7), !dbg !891
  %8 = load %struct._IO_FILE** @stdout, align 8, !dbg !892
  %call6 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([115 x i8]* @.str13, i32 0, i32 0), %struct._IO_FILE* %8), !dbg !892
  %9 = load %struct._IO_FILE** @stdout, align 8, !dbg !893
  %call7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([210 x i8]* @.str14, i32 0, i32 0), %struct._IO_FILE* %9), !dbg !893
  %10 = load %struct._IO_FILE** @stdout, align 8, !dbg !894
  %call8 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8]* @.str15, i32 0, i32 0), %struct._IO_FILE* %10), !dbg !894
  %11 = load %struct._IO_FILE** @stdout, align 8, !dbg !895
  %call9 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8]* @.str16, i32 0, i32 0), %struct._IO_FILE* %11), !dbg !895
  %12 = load %struct._IO_FILE** @stdout, align 8, !dbg !896
  %call10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([204 x i8]* @.str17, i32 0, i32 0), %struct._IO_FILE* %12), !dbg !896
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !897
  %call11 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([317 x i8]* @.str18, i32 0, i32 0), %struct._IO_FILE* %13), !dbg !897
  call void @emit_bug_reporting_address(), !dbg !898
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32* %status.addr, align 4, !dbg !899
  call void @exit(i32 %14) #16, !dbg !899
  unreachable, !dbg !899
}

declare i32 @printf(i8*, ...) #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_bug_reporting_address() #5 {
entry:
  %call = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8]* @.str56, i32 0, i32 0)), !dbg !900
  ret void, !dbg !902
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind uwtable
define i32 @__main_old(i32 %argc, i8** %argv) #0 {
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
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %delim_specified, align 1, !dbg !903
  %0 = load i8*** %argv.addr, align 8, !dbg !904
  %arrayidx = getelementptr inbounds i8** %0, i64 0, !dbg !904
  %1 = load i8** %arrayidx, align 8, !dbg !904
  store i8* %1, i8** @program_name, align 8, !dbg !904
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8]* @.str19, i32 0, i32 0)) #9, !dbg !905
  %call1 = call i32 @atexit(void ()* @close_stdout) #9, !dbg !906
  store i32 0, i32* @operating_mode, align 4, !dbg !907
  store i8 0, i8* @suppress_non_delimited, align 1, !dbg !908
  store i8 0, i8* @delim, align 1, !dbg !909
  store i8 0, i8* @have_read_stdin, align 1, !dbg !910
  br label %while.cond, !dbg !911

while.cond:                                       ; preds = %if.end, %if.end9, %if.end21, %cond.end, %sw.bb31, %sw.bb32, %sw.bb33, %sw.default, %while.body, %entry
  %2 = load i32* %argc.addr, align 4, !dbg !911
  %3 = load i8*** %argv.addr, align 8, !dbg !911
  %call2 = call i32 @getopt_long(i32 %2, i8** %3, i8* getelementptr inbounds ([11 x i8]* @.str20, i32 0, i32 0), %struct.option* getelementptr inbounds ([10 x %struct.option]* bitcast (<{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8]
  store i32 %call2, i32* %optc, align 4, !dbg !911
  %cmp = icmp ne i32 %call2, -1, !dbg !911
  br i1 %cmp, label %while.body, label %while.end, !dbg !911

while.body:                                       ; preds = %while.cond
  %4 = load i32* %optc, align 4, !dbg !912
  switch i32 %4, label %sw.default [
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 102, label %sw.bb4
    i32 100, label %sw.bb10
    i32 128, label %sw.bb23
    i32 110, label %while.cond
    i32 115, label %sw.bb31
    i32 129, label %sw.bb32
    i32 -130, label %sw.bb33
    i32 -131, label %sw.bb34
  ], !dbg !912

sw.bb:                                            ; preds = %while.body, %while.body
  %5 = load i32* @operating_mode, align 4, !dbg !914
  %cmp3 = icmp ne i32 %5, 0, !dbg !914
  br i1 %cmp3, label %do.body, label %if.end, !dbg !914

do.body:                                          ; preds = %sw.bb
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0)), !dbg !917
  call void @usage(i32 1), !dbg !917
  br label %if.end, !dbg !917

if.end:                                           ; preds = %do.body, %sw.bb
  store i32 1, i32* @operating_mode, align 4, !dbg !919
  %6 = load i8** @optarg, align 8, !dbg !920
  store i8* %6, i8** %spec_list_string, align 8, !dbg !920
  br label %while.cond, !dbg !921

sw.bb4:                                           ; preds = %while.body
  %7 = load i32* @operating_mode, align 4, !dbg !922
  %cmp5 = icmp ne i32 %7, 0, !dbg !922
  br i1 %cmp5, label %do.body7, label %if.end9, !dbg !922

do.body7:                                         ; preds = %sw.bb4
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([39 x i8]* @.str21, i32 0, i32 0)), !dbg !924
  call void @usage(i32 1), !dbg !924
  br label %if.end9, !dbg !924

if.end9:                                          ; preds = %do.body7, %sw.bb4
  store i32 2, i32* @operating_mode, align 4, !dbg !926
  %8 = load i8** @optarg, align 8, !dbg !927
  store i8* %8, i8** %spec_list_string, align 8, !dbg !927
  br label %while.cond, !dbg !928

sw.bb10:                                          ; preds = %while.body
  %9 = load i8** @optarg, align 8, !dbg !929
  %arrayidx11 = getelementptr inbounds i8* %9, i64 0, !dbg !929
  %10 = load i8* %arrayidx11, align 1, !dbg !929
  %conv = sext i8 %10 to i32, !dbg !929
  %cmp12 = icmp ne i32 %conv, 0, !dbg !929
  br i1 %cmp12, label %land.lhs.true, label %if.end21, !dbg !929

land.lhs.true:                                    ; preds = %sw.bb10
  %11 = load i8** @optarg, align 8, !dbg !929
  %arrayidx14 = getelementptr inbounds i8* %11, i64 1, !dbg !929
  %12 = load i8* %arrayidx14, align 1, !dbg !929
  %conv15 = sext i8 %12 to i32, !dbg !929
  %cmp16 = icmp ne i32 %conv15, 0, !dbg !929
  br i1 %cmp16, label %do.body19, label %if.end21, !dbg !929

do.body19:                                        ; preds = %land.lhs.true
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([41 x i8]* @.str22, i32 0, i32 0)), !dbg !931
  call void @usage(i32 1), !dbg !931
  br label %if.end21, !dbg !931

if.end21:                                         ; preds = %do.body19, %land.lhs.true, %sw.bb10
  %13 = load i8** @optarg, align 8, !dbg !933
  %arrayidx22 = getelementptr inbounds i8* %13, i64 0, !dbg !933
  %14 = load i8* %arrayidx22, align 1, !dbg !933
  store i8 %14, i8* @delim, align 1, !dbg !933
  store i8 1, i8* %delim_specified, align 1, !dbg !934
  br label %while.cond, !dbg !935

sw.bb23:                                          ; preds = %while.body
  store i8 1, i8* @output_delimiter_specified, align 1, !dbg !936
  %15 = load i8** @optarg, align 8, !dbg !937
  %arrayidx24 = getelementptr inbounds i8* %15, i64 0, !dbg !937
  %16 = load i8* %arrayidx24, align 1, !dbg !937
  %conv25 = sext i8 %16 to i32, !dbg !937
  %cmp26 = icmp eq i32 %conv25, 0, !dbg !937
  br i1 %cmp26, label %cond.end, label %cond.false, !dbg !937

cond.false:                                       ; preds = %sw.bb23
  %17 = load i8** @optarg, align 8, !dbg !938
  %call28 = call i64 @strlen(i8* %17) #17, !dbg !938
  br label %cond.end, !dbg !938

cond.end:                                         ; preds = %sw.bb23, %cond.false
  %cond = phi i64 [ %call28, %cond.false ], [ 1, %sw.bb23 ], !dbg !938
  store i64 %cond, i64* @output_delimiter_length, align 8, !dbg !938
  %18 = load i8** @optarg, align 8, !dbg !939
  %call29 = call i8* @xstrdup(i8* %18), !dbg !939
  store i8* %call29, i8** @output_delimiter_string, align 8, !dbg !939
  br label %while.cond, !dbg !940

sw.bb31:                                          ; preds = %while.body
  store i8 1, i8* @suppress_non_delimited, align 1, !dbg !941
  br label %while.cond, !dbg !942

sw.bb32:                                          ; preds = %while.body
  store i8 1, i8* @complement, align 1, !dbg !943
  br label %while.cond, !dbg !944

sw.bb33:                                          ; preds = %while.body
  call void @usage(i32 0), !dbg !945
  br label %while.cond, !dbg !945

sw.bb34:                                          ; preds = %while.body
  %19 = load %struct._IO_FILE** @stdout, align 8, !dbg !946
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.
  call void @exit(i32 0) #16, !dbg !946
  unreachable, !dbg !946

sw.default:                                       ; preds = %while.body
  call void @usage(i32 1), !dbg !947
  br label %while.cond, !dbg !948

while.end:                                        ; preds = %while.cond
  %20 = load i32* @operating_mode, align 4, !dbg !949
  %cmp35 = icmp eq i32 %20, 0, !dbg !949
  br i1 %cmp35, label %do.body38, label %if.end40, !dbg !949

do.body38:                                        ; preds = %while.end
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([56 x i8]* @.str29, i32 0, i32 0)), !dbg !951
  call void @usage(i32 1), !dbg !951
  br label %if.end40, !dbg !951

if.end40:                                         ; preds = %do.body38, %while.end
  %21 = load i8* @delim, align 1, !dbg !953
  %conv41 = zext i8 %21 to i32, !dbg !953
  %cmp42 = icmp ne i32 %conv41, 0, !dbg !953
  %22 = load i32* @operating_mode, align 4, !dbg !953
  %cmp45 = icmp ne i32 %22, 2, !dbg !953
  %or.cond = and i1 %cmp42, %cmp45, !dbg !953
  br i1 %or.cond, label %do.body48, label %if.end50, !dbg !953

do.body48:                                        ; preds = %if.end40
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([66 x i8]* @.str30, i32 0, i32 0)), !dbg !955
  call void @usage(i32 1), !dbg !955
  br label %if.end50, !dbg !955

if.end50:                                         ; preds = %do.body48, %if.end40
  %23 = load i8* @suppress_non_delimited, align 1, !dbg !957
  %tobool = trunc i8 %23 to i1, !dbg !957
  %24 = load i32* @operating_mode, align 4, !dbg !957
  %cmp53 = icmp ne i32 %24, 2, !dbg !957
  %or.cond1 = and i1 %tobool, %cmp53, !dbg !957
  br i1 %or.cond1, label %do.body56, label %if.end58, !dbg !957

do.body56:                                        ; preds = %if.end50
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([75 x i8]* @.str31, i32 0, i32 0)), !dbg !959
  call void @usage(i32 1), !dbg !959
  br label %if.end58, !dbg !959

if.end58:                                         ; preds = %do.body56, %if.end50
  %25 = load i8* @output_delimiter_specified, align 1, !dbg !961
  %tobool59 = trunc i8 %25 to i1, !dbg !961
  br i1 %tobool59, label %if.then60, label %if.end66, !dbg !961

if.then60:                                        ; preds = %if.end58
  %call61 = call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* @hash_int, i1 (i8*, i8*)* @hash_compare_ints, void (i8*)* null), !dbg !963
  store %struct.hash_table* %call61, %struct.hash_table** @range_start_ht, align 8, !dbg !963
  %26 = load %struct.hash_table** @range_start_ht, align 8, !dbg !965
  %cmp62 = icmp eq %struct.hash_table* %26, null, !dbg !965
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !965

if.then64:                                        ; preds = %if.then60
  call void @xalloc_die() #18, !dbg !967
  unreachable, !dbg !967

if.end66:                                         ; preds = %if.then60, %if.end58
  %27 = load i8** %spec_list_string, align 8, !dbg !968
  %call67 = call zeroext i1 @set_fields(i8* %27), !dbg !968
  br i1 %call67, label %if.end77, label %if.then68, !dbg !968

if.then68:                                        ; preds = %if.end66
  %28 = load i32* @operating_mode, align 4, !dbg !970
  %cmp69 = icmp eq i32 %28, 2, !dbg !970
  br i1 %cmp69, label %do.body72, label %do.body74, !dbg !970

do.body72:                                        ; preds = %if.then68
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([23 x i8]* @.str32, i32 0, i32 0)), !dbg !973
  call void @usage(i32 1), !dbg !973
  br label %if.end77, !dbg !973

do.body74:                                        ; preds = %if.then68
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([26 x i8]* @.str33, i32 0, i32 0)), !dbg !975
  call void @usage(i32 1), !dbg !975
  br label %if.end77

if.end77:                                         ; preds = %do.body72, %do.body74, %if.end66
  %29 = load i8* %delim_specified, align 1, !dbg !977
  %tobool78 = trunc i8 %29 to i1, !dbg !977
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !977

if.then79:                                        ; preds = %if.end77
  store i8 9, i8* @delim, align 1, !dbg !979
  br label %if.end80, !dbg !979

if.end80:                                         ; preds = %if.then79, %if.end77
  %30 = load i8** @output_delimiter_string, align 8, !dbg !980
  %cmp81 = icmp eq i8* %30, null, !dbg !980
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !980

if.then83:                                        ; preds = %if.end80
  %31 = load i8* @delim, align 1, !dbg !982
  store i8 %31, i8* getelementptr inbounds ([2 x i8]* @main.dummy, i32 0, i64 0), align 1, !dbg !982
  store i8 0, i8* getelementptr inbounds ([2 x i8]* @main.dummy, i32 0, i64 1), align 1, !dbg !984
  store i8* getelementptr inbounds ([2 x i8]* @main.dummy, i32 0, i32 0), i8** @output_delimiter_string, align 8, !dbg !985
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !986
  br label %if.end84, !dbg !987

if.end84:                                         ; preds = %if.then83, %if.end80
  %32 = load i32* @optind, align 4, !dbg !988
  %33 = load i32* %argc.addr, align 4, !dbg !988
  %cmp85 = icmp eq i32 %32, %33, !dbg !988
  br i1 %cmp85, label %if.then87, label %if.else89, !dbg !988

if.then87:                                        ; preds = %if.end84
  %call88 = call zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0)), !dbg !990
  %frombool = zext i1 %call88 to i8, !dbg !990
  store i8 %frombool, i8* %ok, align 1, !dbg !990
  br label %if.end99, !dbg !990

if.else89:                                        ; preds = %if.end84
  store i8 1, i8* %ok, align 1, !dbg !991
  br label %for.cond, !dbg !991

for.cond:                                         ; preds = %for.body, %if.else89
  %34 = load i32* @optind, align 4, !dbg !991
  %35 = load i32* %argc.addr, align 4, !dbg !991
  %cmp90 = icmp slt i32 %34, %35, !dbg !991
  br i1 %cmp90, label %for.body, label %if.end99, !dbg !991

for.body:                                         ; preds = %for.cond
  %36 = load i32* @optind, align 4, !dbg !993
  %idxprom = sext i32 %36 to i64, !dbg !993
  %37 = load i8*** %argv.addr, align 8, !dbg !993
  %arrayidx92 = getelementptr inbounds i8** %37, i64 %idxprom, !dbg !993
  %38 = load i8** %arrayidx92, align 8, !dbg !993
  %call93 = call zeroext i1 @cut_file(i8* %38), !dbg !993
  %conv94 = zext i1 %call93 to i32, !dbg !993
  %39 = load i8* %ok, align 1, !dbg !993
  %tobool95 = trunc i8 %39 to i1, !dbg !993
  %conv96 = zext i1 %tobool95 to i32, !dbg !993
  %and = and i32 %conv96, %conv94, !dbg !993
  %tobool97 = icmp ne i32 %and, 0, !dbg !993
  %frombool98 = zext i1 %tobool97 to i8, !dbg !993
  store i8 %frombool98, i8* %ok, align 1, !dbg !993
  %40 = load i32* @optind, align 4, !dbg !991
  %inc = add nsw i32 %40, 1, !dbg !991
  store i32 %inc, i32* @optind, align 4, !dbg !991
  br label %for.cond, !dbg !991

if.end99:                                         ; preds = %for.cond, %if.then87
  %41 = load %struct.hash_table** @range_start_ht, align 8, !dbg !994
  %tobool100 = icmp ne %struct.hash_table* %41, null, !dbg !994
  br i1 %tobool100, label %if.then101, label %if.end102, !dbg !994

if.then101:                                       ; preds = %if.end99
  %42 = load %struct.hash_table** @range_start_ht, align 8, !dbg !996
  call void @hash_free(%struct.hash_table* %42), !dbg !996
  br label %if.end102, !dbg !996

if.end102:                                        ; preds = %if.then101, %if.end99
  %43 = load i8* @have_read_stdin, align 1, !dbg !997
  %tobool103 = trunc i8 %43 to i1, !dbg !997
  br i1 %tobool103, label %land.lhs.true105, label %if.end112, !dbg !997

land.lhs.true105:                                 ; preds = %if.end102
  %44 = load %struct._IO_FILE** @stdin, align 8, !dbg !997
  %call106 = call i32 @fclose(%struct._IO_FILE* %44), !dbg !997
  %cmp107 = icmp eq i32 %call106, -1, !dbg !997
  br i1 %cmp107, label %if.then109, label %if.end112, !dbg !997

if.then109:                                       ; preds = %land.lhs.true105
  %call110 = call i32* @__errno_location() #1, !dbg !999
  %45 = load i32* %call110, align 4, !dbg !999
  %conv111 = sext i32 %45 to i64, !dbg !999
  %46 = inttoptr i64 %conv111 to i32* (...)*, !dbg !999
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %46, i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0)), !dbg !999
  store i8 0, i8* %ok, align 1, !dbg !1001
  br label %if.end112, !dbg !1002

if.end112:                                        ; preds = %if.then109, %land.lhs.true105, %if.end102
  %47 = load i8* %ok, align 1, !dbg !1003
  %tobool113 = trunc i8 %47 to i1, !dbg !1003
  %cond115 = select i1 %tobool113, i32 0, i32 1, !dbg !1003
  call void @exit(i32 %cond115) #16, !dbg !1003
  unreachable, !dbg !1003
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
  store i32* (...)* %__errno_location, i32* (...)** %__errno_location.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !1004
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1004
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1004
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !1005
  %1 = load i8** %format.addr, align 8, !dbg !1005
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !1005
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !1005
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %err_args, i32 0, i32 0, !dbg !1006
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !1006
  call void @llvm.va_end(i8* %arraydecay34), !dbg !1006
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !1007
  %call5 = call i32 @putc_unlocked(i32 10, %struct._IO_FILE* %2), !dbg !1007
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !1008
  %call6 = call i32 @fflush_unlocked(%struct._IO_FILE* %3), !dbg !1008
  %4 = load i32* %status.addr, align 4, !dbg !1009
  %tobool = icmp ne i32 %4, 0, !dbg !1009
  br i1 %tobool, label %if.then, label %if.end, !dbg !1009

if.then:                                          ; preds = %entry
  %5 = load i32* %status.addr, align 4, !dbg !1011
  call void @exit(i32 %5) #16, !dbg !1011
  unreachable, !dbg !1011

if.end:                                           ; preds = %entry
  ret void, !dbg !1013
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

; Function Attrs: nounwind uwtable
define internal i64 @hash_int(i8* %x, i64 %tablesize) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %tablesize.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8
  store i64 %tablesize, i64* %tablesize.addr, align 8
  %0 = load i8** %x.addr, align 8, !dbg !1014
  %1 = ptrtoint i8* %0 to i64, !dbg !1014
  store i64 %1, i64* %y, align 8, !dbg !1014
  %2 = load i64* %y, align 8, !dbg !1015
  %3 = load i64* %tablesize.addr, align 8, !dbg !1015
  %int_cast_to_i64 = bitcast i64 %3 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1015
  %rem = urem i64 %2, %3, !dbg !1015
  ret i64 %rem, !dbg !1015
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @hash_compare_ints(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8** %x.addr, align 8, !dbg !1016
  %1 = load i8** %y.addr, align 8, !dbg !1016
  %cmp = icmp eq i8* %0, %1, !dbg !1016
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !1016
  %tobool = icmp ne i32 %cond, 0, !dbg !1016
  ret i1 %tobool, !dbg !1016
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @set_fields(i8* %fieldstr) #0 {
entry:
  %fieldstr.addr = alloca i8*, align 8
  %initial = alloca i64, align 8
  %value = alloca i64, align 8
  %lhs_specified = alloca i8, align 1
  %rhs_specified = alloca i8, align 1
  %dash_found = alloca i8, align 1
  %field_found = alloca i8, align 1
  %rp = alloca %struct.range_pair*, align 8
  %n_rp = alloca i64, align 8
  %n_rp_allocated = alloca i64, align 8
  %i = alloca i64, align 8
  %in_digits = alloca i8, align 1
  %len = alloca i64, align 8
  %bad_num = alloca i8*, align 8
  %j = alloca i64, align 8
  %rsi_candidate = alloca i64, align 8
  store i8* %fieldstr, i8** %fieldstr.addr, align 8
  store i64 1, i64* %initial, align 8, !dbg !1017
  store i64 0, i64* %value, align 8, !dbg !1018
  store i8 0, i8* %lhs_specified, align 1, !dbg !1019
  store i8 0, i8* %rhs_specified, align 1, !dbg !1020
  store i8 0, i8* %dash_found, align 1, !dbg !1021
  store i8 0, i8* %field_found, align 1, !dbg !1022
  store %struct.range_pair* null, %struct.range_pair** %rp, align 8, !dbg !1023
  store i64 0, i64* %n_rp, align 8, !dbg !1024
  store i64 0, i64* %n_rp_allocated, align 8, !dbg !1025
  store i8 0, i8* %in_digits, align 1, !dbg !1026
  br label %for.cond, !dbg !1027

for.cond:                                         ; preds = %if.end, %if.end219, %do.body222, %if.end173, %entry
  %0 = load i8** %fieldstr.addr, align 8, !dbg !1029
  %1 = load i8* %0, align 1, !dbg !1029
  %conv = sext i8 %1 to i32, !dbg !1029
  %cmp = icmp eq i32 %conv, 45, !dbg !1029
  br i1 %cmp, label %if.then, label %if.else, !dbg !1029

if.then:                                          ; preds = %for.cond
  store i8 0, i8* %in_digits, align 1, !dbg !1032
  %2 = load i8* %dash_found, align 1, !dbg !1034
  %tobool = trunc i8 %2 to i1, !dbg !1034
  br i1 %tobool, label %do.body, label %if.end, !dbg !1034

do.body:                                          ; preds = %if.then
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([27 x i8]* @.str39, i32 0, i32 0)), !dbg !1036
  call void @usage(i32 1), !dbg !1036
  br label %if.end, !dbg !1036

if.end:                                           ; preds = %do.body, %if.then
  store i8 1, i8* %dash_found, align 1, !dbg !1038
  %3 = load i8** %fieldstr.addr, align 8, !dbg !1039
  %incdec.ptr = getelementptr inbounds i8* %3, i32 1, !dbg !1039
  store i8* %incdec.ptr, i8** %fieldstr.addr, align 8, !dbg !1039
  %4 = load i64* %value, align 8, !dbg !1040
  %5 = load i8* %lhs_specified, align 1, !dbg !1040
  %tobool8 = trunc i8 %5 to i1, !dbg !1040
  %conv9 = zext i1 %tobool8 to i64, !dbg !1040
  %call = call i64 @klee_change(i64 %4, i64 %conv9), !dbg !1040
  %tobool10 = icmp ne i64 %call, 0, !dbg !1040
  %6 = load i64* %value, align 8, !dbg !1040
  %cond = select i1 %tobool10, i64 %6, i64 1, !dbg !1040
  store i64 %cond, i64* %initial, align 8, !dbg !1040
  %7 = load i64* %value, align 8, !dbg !1041
  %call21 = call i32 @klee_get_true(), !dbg !1041
  %conv22 = sext i32 %call21 to i64, !dbg !1041
  %call23 = call i64 @klee_change(i64 %7, i64 %conv22), !dbg !1041
  %tobool24 = icmp ne i64 %call23, 0, !dbg !1041
  %8 = load i64* %value, align 8, !dbg !1041
  %cond28 = select i1 %tobool24, i64 0, i64 %8, !dbg !1041
  store i64 %cond28, i64* %value, align 8, !dbg !1041
  br label %for.cond, !dbg !1042

if.else:                                          ; preds = %for.cond
  %9 = load i8** %fieldstr.addr, align 8, !dbg !1043
  %10 = load i8* %9, align 1, !dbg !1043
  %conv29 = sext i8 %10 to i32, !dbg !1043
  %cmp30 = icmp eq i32 %conv29, 44, !dbg !1043
  br i1 %cmp30, label %if.then40, label %lor.lhs.false, !dbg !1043

lor.lhs.false:                                    ; preds = %if.else
  %11 = load i8** %fieldstr.addr, align 8, !dbg !1043
  %12 = load i8* %11, align 1, !dbg !1043
  %conv32 = sext i8 %12 to i32, !dbg !1043
  %idxprom = sext i32 %conv32 to i64, !dbg !1043
  %call33 = call i16** @__ctype_b_loc() #1, !dbg !1043
  %13 = load i16** %call33, align 8, !dbg !1043
  %arrayidx = getelementptr inbounds i16* %13, i64 %idxprom, !dbg !1043
  %14 = load i16* %arrayidx, align 2, !dbg !1043
  %conv34 = zext i16 %14 to i32, !dbg !1043
  %and = and i32 %conv34, 1, !dbg !1043
  %tobool35 = icmp ne i32 %and, 0, !dbg !1043
  br i1 %tobool35, label %if.then40, label %lor.lhs.false36, !dbg !1043

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %15 = load i8** %fieldstr.addr, align 8, !dbg !1043
  %16 = load i8* %15, align 1, !dbg !1043
  %conv37 = sext i8 %16 to i32, !dbg !1043
  %cmp38 = icmp eq i32 %conv37, 0, !dbg !1043
  br i1 %cmp38, label %if.then40, label %if.else175, !dbg !1043

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false, %if.else
  store i8 0, i8* %in_digits, align 1, !dbg !1045
  %17 = load i8* %dash_found, align 1, !dbg !1047
  %tobool41 = trunc i8 %17 to i1, !dbg !1047
  br i1 %tobool41, label %if.then42, label %cond.false146, !dbg !1047

if.then42:                                        ; preds = %if.then40
  store i8 0, i8* %dash_found, align 1, !dbg !1049
  %call54 = call i32 @klee_get_false(), !dbg !1051
  %conv55 = sext i32 %call54 to i64, !dbg !1051
  %18 = load i8* %lhs_specified, align 1, !dbg !1051
  %tobool56 = trunc i8 %18 to i1, !dbg !1051
  br i1 %tobool56, label %land.end60, label %land.rhs57, !dbg !1051

land.rhs57:                                       ; preds = %if.then42
  %19 = load i8* %rhs_specified, align 1, !dbg !1051
  %tobool58 = trunc i8 %19 to i1, !dbg !1051
  %lnot59 = xor i1 %tobool58, true, !dbg !1051
  br label %land.end60

land.end60:                                       ; preds = %land.rhs57, %if.then42
  %20 = phi i1 [ false, %if.then42 ], [ %lnot59, %land.rhs57 ]
  %land.ext61 = zext i1 %20 to i32
  %conv62 = sext i32 %land.ext61 to i64
  %call63 = call i64 @klee_change(i64 %conv55, i64 %conv62), !dbg !1051
  %tobool64 = icmp ne i64 %call63, 0, !dbg !1051
  br i1 %tobool64, label %do.body66, label %cond.false80, !dbg !1051

do.body66:                                        ; preds = %land.end60
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([34 x i8]* @.str40, i32 0, i32 0)), !dbg !1053
  call void @usage(i32 1), !dbg !1053
  br label %cond.false80, !dbg !1053

cond.false80:                                     ; preds = %do.body66, %land.end60
  %21 = load i64* %value, align 8, !dbg !1055
  %cmp81 = icmp eq i64 %21, 0, !dbg !1055
  %conv82 = zext i1 %cmp81 to i32, !dbg !1055
  %conv83 = sext i32 %conv82 to i64, !dbg !1055
  %22 = load i8* %rhs_specified, align 1, !dbg !1055
  %tobool84 = trunc i8 %22 to i1, !dbg !1055
  %lnot85 = xor i1 %tobool84, true, !dbg !1055
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !1055
  %conv87 = sext i32 %lnot.ext86 to i64, !dbg !1055
  %call88 = call i64 @klee_change(i64 %conv83, i64 %conv87), !dbg !1055
  %tobool89 = icmp ne i64 %call88, 0, !dbg !1055
  br i1 %tobool89, label %if.then90, label %if.else91, !dbg !1055

if.then90:                                        ; preds = %cond.false80
  %23 = load i64* %initial, align 8, !dbg !1057
  store i64 %23, i64* @eol_range_start, align 8, !dbg !1057
  store i8 1, i8* %field_found, align 1, !dbg !1059
  br label %if.end168, !dbg !1060

if.else91:                                        ; preds = %cond.false80
  %24 = load i64* %value, align 8, !dbg !1061
  %25 = load i64* %initial, align 8, !dbg !1061
  %cmp92 = icmp ult i64 %24, %25, !dbg !1061
  br i1 %cmp92, label %do.body95, label %if.end98, !dbg !1061

do.body95:                                        ; preds = %if.else91
  %call96 = call i64 @klee_change(i64 ptrtoint ([27 x i8]* @.str39 to i64), i64 ptrtoint ([25 x i8]* @.str41 to i64)), !dbg !1064
  %26 = inttoptr i64 %call96 to i8*, !dbg !1064
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* %26), !dbg !1064
  call void @usage(i32 1), !dbg !1064
  br label %if.end98, !dbg !1064

if.end98:                                         ; preds = %do.body95, %if.else91
  %27 = load i64* @eol_range_start, align 8, !dbg !1066
  %cmp99 = icmp ne i64 %27, 0, !dbg !1066
  br i1 %cmp99, label %if.then101, label %do.body121, !dbg !1066

if.then101:                                       ; preds = %if.end98
  %28 = load i64* %initial, align 8, !dbg !1068
  %29 = load i64* @eol_range_start, align 8, !dbg !1068
  %cmp102 = icmp ult i64 %28, %29, !dbg !1068
  br i1 %cmp102, label %if.then104, label %if.end133, !dbg !1068

if.then104:                                       ; preds = %if.then101
  %30 = load i64* @eol_range_start, align 8, !dbg !1071
  %31 = load i64* %value, align 8, !dbg !1071
  %cmp105 = icmp ule i64 %30, %31, !dbg !1071
  br i1 %cmp105, label %if.then107, label %do.body109, !dbg !1071

if.then107:                                       ; preds = %if.then104
  %32 = load i64* %initial, align 8, !dbg !1074
  store i64 %32, i64* @eol_range_start, align 8, !dbg !1074
  br label %if.end118, !dbg !1076

do.body109:                                       ; preds = %if.then104
  %33 = load i64* %n_rp, align 8, !dbg !1077
  %34 = load i64* %n_rp_allocated, align 8, !dbg !1077
  %cmp110 = icmp uge i64 %33, %34, !dbg !1077
  br i1 %cmp110, label %if.then112, label %if.end114, !dbg !1077

if.then112:                                       ; preds = %do.body109
  %35 = load %struct.range_pair** %rp, align 8, !dbg !1081
  %36 = bitcast %struct.range_pair* %35 to i8*, !dbg !1081
  %call113 = call i8* @x2nrealloc(i8* %36, i64* %n_rp_allocated, i64 16), !dbg !1081
  %37 = bitcast i8* %call113 to %struct.range_pair*, !dbg !1081
  store %struct.range_pair* %37, %struct.range_pair** %rp, align 8, !dbg !1081
  br label %if.end114, !dbg !1081

if.end114:                                        ; preds = %if.then112, %do.body109
  %38 = load i64* %initial, align 8, !dbg !1083
  %39 = load i64* %n_rp, align 8, !dbg !1083
  %40 = load %struct.range_pair** %rp, align 8, !dbg !1083
  %arrayidx115 = getelementptr inbounds %struct.range_pair* %40, i64 %39, !dbg !1083
  %lo = getelementptr inbounds %struct.range_pair* %arrayidx115, i32 0, i32 0, !dbg !1083
  store i64 %38, i64* %lo, align 8, !dbg !1083
  %41 = load i64* %value, align 8, !dbg !1083
  %42 = load i64* %n_rp, align 8, !dbg !1083
  %43 = load %struct.range_pair** %rp, align 8, !dbg !1083
  %arrayidx116 = getelementptr inbounds %struct.range_pair* %43, i64 %42, !dbg !1083
  %hi = getelementptr inbounds %struct.range_pair* %arrayidx116, i32 0, i32 1, !dbg !1083
  store i64 %41, i64* %hi, align 8, !dbg !1083
  %44 = load i64* %n_rp, align 8, !dbg !1083
  %inc = add i64 %44, 1, !dbg !1083
  store i64 %inc, i64* %n_rp, align 8, !dbg !1083
  br label %if.end118

if.end118:                                        ; preds = %if.end114, %if.then107
  store i8 1, i8* %field_found, align 1, !dbg !1084
  br label %if.end133, !dbg !1085

do.body121:                                       ; preds = %if.end98
  %45 = load i64* %n_rp, align 8, !dbg !1086
  %46 = load i64* %n_rp_allocated, align 8, !dbg !1086
  %cmp122 = icmp uge i64 %45, %46, !dbg !1086
  br i1 %cmp122, label %if.then124, label %if.end126, !dbg !1086

if.then124:                                       ; preds = %do.body121
  %47 = load %struct.range_pair** %rp, align 8, !dbg !1090
  %48 = bitcast %struct.range_pair* %47 to i8*, !dbg !1090
  %call125 = call i8* @x2nrealloc(i8* %48, i64* %n_rp_allocated, i64 16), !dbg !1090
  %49 = bitcast i8* %call125 to %struct.range_pair*, !dbg !1090
  store %struct.range_pair* %49, %struct.range_pair** %rp, align 8, !dbg !1090
  br label %if.end126, !dbg !1090

if.end126:                                        ; preds = %if.then124, %do.body121
  %50 = load i64* %initial, align 8, !dbg !1092
  %51 = load i64* %n_rp, align 8, !dbg !1092
  %52 = load %struct.range_pair** %rp, align 8, !dbg !1092
  %arrayidx127 = getelementptr inbounds %struct.range_pair* %52, i64 %51, !dbg !1092
  %lo128 = getelementptr inbounds %struct.range_pair* %arrayidx127, i32 0, i32 0, !dbg !1092
  store i64 %50, i64* %lo128, align 8, !dbg !1092
  %53 = load i64* %value, align 8, !dbg !1092
  %54 = load i64* %n_rp, align 8, !dbg !1092
  %55 = load %struct.range_pair** %rp, align 8, !dbg !1092
  %arrayidx129 = getelementptr inbounds %struct.range_pair* %55, i64 %54, !dbg !1092
  %hi130 = getelementptr inbounds %struct.range_pair* %arrayidx129, i32 0, i32 1, !dbg !1092
  store i64 %53, i64* %hi130, align 8, !dbg !1092
  %56 = load i64* %n_rp, align 8, !dbg !1092
  %inc131 = add i64 %56, 1, !dbg !1092
  store i64 %inc131, i64* %n_rp, align 8, !dbg !1092
  store i8 1, i8* %field_found, align 1, !dbg !1093
  br label %if.end133

if.end133:                                        ; preds = %if.then101, %if.end118, %if.end126
  store i64 0, i64* %value, align 8, !dbg !1094
  br label %if.end168

cond.false146:                                    ; preds = %if.then40
  %57 = load i64* %value, align 8, !dbg !1095
  %cmp147 = icmp ne i64 %57, 0, !dbg !1095
  %conv148 = zext i1 %cmp147 to i32, !dbg !1095
  %conv149 = sext i32 %conv148 to i64, !dbg !1095
  %call150 = call i32 @klee_get_true(), !dbg !1095
  %conv151 = sext i32 %call150 to i64, !dbg !1095
  %call152 = call i64 @klee_change(i64 %conv149, i64 %conv151), !dbg !1095
  %tobool153 = icmp ne i64 %call152, 0, !dbg !1095
  br i1 %tobool153, label %do.body155, label %if.end168, !dbg !1095

do.body155:                                       ; preds = %cond.false146
  %58 = load i64* %n_rp, align 8, !dbg !1097
  %59 = load i64* %n_rp_allocated, align 8, !dbg !1097
  %cmp156 = icmp uge i64 %58, %59, !dbg !1097
  br i1 %cmp156, label %if.then158, label %if.end160, !dbg !1097

if.then158:                                       ; preds = %do.body155
  %60 = load %struct.range_pair** %rp, align 8, !dbg !1101
  %61 = bitcast %struct.range_pair* %60 to i8*, !dbg !1101
  %call159 = call i8* @x2nrealloc(i8* %61, i64* %n_rp_allocated, i64 16), !dbg !1101
  %62 = bitcast i8* %call159 to %struct.range_pair*, !dbg !1101
  store %struct.range_pair* %62, %struct.range_pair** %rp, align 8, !dbg !1101
  br label %if.end160, !dbg !1101

if.end160:                                        ; preds = %if.then158, %do.body155
  %63 = load i64* %value, align 8, !dbg !1103
  %64 = load i64* %n_rp, align 8, !dbg !1103
  %65 = load %struct.range_pair** %rp, align 8, !dbg !1103
  %arrayidx161 = getelementptr inbounds %struct.range_pair* %65, i64 %64, !dbg !1103
  %lo162 = getelementptr inbounds %struct.range_pair* %arrayidx161, i32 0, i32 0, !dbg !1103
  store i64 %63, i64* %lo162, align 8, !dbg !1103
  %66 = load i64* %value, align 8, !dbg !1103
  %67 = load i64* %n_rp, align 8, !dbg !1103
  %68 = load %struct.range_pair** %rp, align 8, !dbg !1103
  %arrayidx163 = getelementptr inbounds %struct.range_pair* %68, i64 %67, !dbg !1103
  %hi164 = getelementptr inbounds %struct.range_pair* %arrayidx163, i32 0, i32 1, !dbg !1103
  store i64 %66, i64* %hi164, align 8, !dbg !1103
  %69 = load i64* %n_rp, align 8, !dbg !1103
  %inc165 = add i64 %69, 1, !dbg !1103
  store i64 %inc165, i64* %n_rp, align 8, !dbg !1103
  store i64 0, i64* %value, align 8, !dbg !1104
  store i8 1, i8* %field_found, align 1, !dbg !1105
  br label %if.end168, !dbg !1106

if.end168:                                        ; preds = %cond.false146, %if.end160, %if.then90, %if.end133
  %70 = load i8** %fieldstr.addr, align 8, !dbg !1107
  %71 = load i8* %70, align 1, !dbg !1107
  %conv169 = sext i8 %71 to i32, !dbg !1107
  %cmp170 = icmp eq i32 %conv169, 0, !dbg !1107
  br i1 %cmp170, label %for.end, label %if.end173, !dbg !1107

if.end173:                                        ; preds = %if.end168
  %72 = load i8** %fieldstr.addr, align 8, !dbg !1109
  %incdec.ptr174 = getelementptr inbounds i8* %72, i32 1, !dbg !1109
  store i8* %incdec.ptr174, i8** %fieldstr.addr, align 8, !dbg !1109
  store i8 0, i8* %lhs_specified, align 1, !dbg !1110
  store i8 0, i8* %rhs_specified, align 1, !dbg !1111
  br label %for.cond, !dbg !1112

if.else175:                                       ; preds = %lor.lhs.false36
  %73 = load i8** %fieldstr.addr, align 8, !dbg !1113
  %74 = load i8* %73, align 1, !dbg !1113
  %conv176 = sext i8 %74 to i32, !dbg !1113
  %sub = sub i32 %conv176, 48, !dbg !1113
  %cmp177 = icmp ule i32 %sub, 9, !dbg !1113
  br i1 %cmp177, label %if.then179, label %do.body222, !dbg !1113

if.then179:                                       ; preds = %if.else175
  %75 = load i8* %in_digits, align 1, !dbg !1115
  %tobool180 = trunc i8 %75 to i1, !dbg !1115
  %76 = load i8** @set_fields.num_start, align 8, !dbg !1115
  %tobool182 = icmp ne i8* %76, null, !dbg !1115
  %or.cond = and i1 %tobool180, %tobool182, !dbg !1115
  br i1 %or.cond, label %if.end184, label %if.then183, !dbg !1115

if.then183:                                       ; preds = %if.then179
  %77 = load i8** %fieldstr.addr, align 8, !dbg !1118
  store i8* %77, i8** @set_fields.num_start, align 8, !dbg !1118
  br label %if.end184, !dbg !1118

if.end184:                                        ; preds = %if.then179, %if.then183
  store i8 1, i8* %in_digits, align 1, !dbg !1119
  %78 = load i8* %dash_found, align 1, !dbg !1120
  %tobool185 = trunc i8 %78 to i1, !dbg !1120
  br i1 %tobool185, label %if.then186, label %if.else187, !dbg !1120

if.then186:                                       ; preds = %if.end184
  store i8 1, i8* %rhs_specified, align 1, !dbg !1122
  br label %if.end188, !dbg !1122

if.else187:                                       ; preds = %if.end184
  store i8 1, i8* %lhs_specified, align 1, !dbg !1123
  br label %if.end188

if.end188:                                        ; preds = %if.else187, %if.then186
  %cmp189 = icmp eq i64* %value, null, !dbg !1124
  %conv190 = zext i1 %cmp189 to i32, !dbg !1124
  %79 = load i64* %value, align 8, !dbg !1124
  %cmp191 = icmp ult i64 1844674407370955161, %79, !dbg !1124
  br i1 %cmp191, label %cond.end206, label %lor.lhs.false193, !dbg !1124

lor.lhs.false193:                                 ; preds = %if.end188
  %80 = load i64* %value, align 8, !dbg !1124
  %mul = mul i64 %80, 10, !dbg !1124
  %81 = load i8** %fieldstr.addr, align 8, !dbg !1124
  %82 = load i8* %81, align 1, !dbg !1124
  %conv194 = sext i8 %82 to i32, !dbg !1124
  %sub195 = sub nsw i32 %conv194, 48, !dbg !1124
  %conv196 = sext i32 %sub195 to i64, !dbg !1124
  %add = add i64 %mul, %conv196, !dbg !1124
  %83 = load i64* %value, align 8, !dbg !1124
  %cmp197 = icmp ult i64 %add, %83, !dbg !1124
  br i1 %cmp197, label %cond.end206, label %cond.false200, !dbg !1124

cond.false200:                                    ; preds = %lor.lhs.false193
  %84 = load i64* %value, align 8, !dbg !1124
  %mul201 = mul i64 %84, 10, !dbg !1124
  %85 = load i8** %fieldstr.addr, align 8, !dbg !1124
  %86 = load i8* %85, align 1, !dbg !1124
  %conv202 = sext i8 %86 to i32, !dbg !1124
  %sub203 = sub nsw i32 %conv202, 48, !dbg !1124
  %conv204 = sext i32 %sub203 to i64, !dbg !1124
  %add205 = add i64 %mul201, %conv204, !dbg !1124
  store i64 %add205, i64* %value, align 8, !dbg !1124
  br label %cond.end206, !dbg !1124

cond.end206:                                      ; preds = %if.end188, %lor.lhs.false193, %cond.false200
  %cond207 = phi i32 [ 1, %cond.false200 ], [ 0, %lor.lhs.false193 ], [ 0, %if.end188 ], !dbg !1124
  %tobool208 = icmp ne i32 %cond207, 0, !dbg !1124
  br i1 %tobool208, label %if.end219, label %if.then209, !dbg !1124

if.then209:                                       ; preds = %cond.end206
  %87 = load i8** @set_fields.num_start, align 8, !dbg !1126
  %call210 = call i64 @strspn(i8* %87, i8* getelementptr inbounds ([11 x i8]* @.str42, i32 0, i32 0)) #17, !dbg !1126
  store i64 %call210, i64* %len, align 8, !dbg !1126
  %88 = load i8** @set_fields.num_start, align 8, !dbg !1128
  %89 = load i64* %len, align 8, !dbg !1128
  %call211 = call i8* @xstrndup(i8* %88, i64 %89), !dbg !1128
  store i8* %call211, i8** %bad_num, align 8, !dbg !1128
  %90 = load i32* @operating_mode, align 4, !dbg !1129
  %cmp212 = icmp eq i32 %90, 1, !dbg !1129
  %91 = load i8** %bad_num, align 8, !dbg !1131
  %call215 = call i8* @quote(i8* %91), !dbg !1131
  br i1 %cmp212, label %if.then214, label %if.else216, !dbg !1129

if.then214:                                       ; preds = %if.then209
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([28 x i8]* @.str43, i32 0, i32 0), i8* %call215), !dbg !1132
  br label %if.end218, !dbg !1132

if.else216:                                       ; preds = %if.then209
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([29 x i8]* @.str44, i32 0, i32 0), i8* %call215), !dbg !1133
  br label %if.end218

if.end218:                                        ; preds = %if.else216, %if.then214
  %92 = load i8** %bad_num, align 8, !dbg !1134
  call void @free(i8* %92) #9, !dbg !1134
  call void @exit(i32 1) #16, !dbg !1135
  unreachable, !dbg !1135

if.end219:                                        ; preds = %cond.end206
  %93 = load i8** %fieldstr.addr, align 8, !dbg !1136
  %incdec.ptr220 = getelementptr inbounds i8* %93, i32 1, !dbg !1136
  store i8* %incdec.ptr220, i8** %fieldstr.addr, align 8, !dbg !1136
  br label %for.cond, !dbg !1137

do.body222:                                       ; preds = %if.else175
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* null, i8* getelementptr inbounds ([27 x i8]* @.str39, i32 0, i32 0)), !dbg !1138
  call void @usage(i32 1), !dbg !1138
  br label %for.cond

for.end:                                          ; preds = %if.end168
  store i64 0, i64* @max_range_endpoint, align 8, !dbg !1140
  store i64 0, i64* %i, align 8, !dbg !1141
  br label %for.cond227, !dbg !1141

for.cond227:                                      ; preds = %for.inc, %for.end
  %94 = load i64* %i, align 8, !dbg !1141
  %95 = load i64* %n_rp, align 8, !dbg !1141
  %cmp228 = icmp ult i64 %94, %95, !dbg !1141
  br i1 %cmp228, label %for.body, label %for.end239, !dbg !1141

for.body:                                         ; preds = %for.cond227
  %96 = load i64* %i, align 8, !dbg !1143
  %97 = load %struct.range_pair** %rp, align 8, !dbg !1143
  %arrayidx230 = getelementptr inbounds %struct.range_pair* %97, i64 %96, !dbg !1143
  %hi231 = getelementptr inbounds %struct.range_pair* %arrayidx230, i32 0, i32 1, !dbg !1143
  %98 = load i64* %hi231, align 8, !dbg !1143
  %99 = load i64* @max_range_endpoint, align 8, !dbg !1143
  %cmp232 = icmp ugt i64 %98, %99, !dbg !1143
  br i1 %cmp232, label %if.then234, label %for.inc, !dbg !1143

if.then234:                                       ; preds = %for.body
  %100 = load i64* %i, align 8, !dbg !1146
  %101 = load %struct.range_pair** %rp, align 8, !dbg !1146
  %arrayidx235 = getelementptr inbounds %struct.range_pair* %101, i64 %100, !dbg !1146
  %hi236 = getelementptr inbounds %struct.range_pair* %arrayidx235, i32 0, i32 1, !dbg !1146
  %102 = load i64* %hi236, align 8, !dbg !1146
  store i64 %102, i64* @max_range_endpoint, align 8, !dbg !1146
  br label %for.inc, !dbg !1146

for.inc:                                          ; preds = %for.body, %if.then234
  %103 = load i64* %i, align 8, !dbg !1141
  %inc238 = add i64 %103, 1, !dbg !1141
  store i64 %inc238, i64* %i, align 8, !dbg !1141
  br label %for.cond227, !dbg !1141

for.end239:                                       ; preds = %for.cond227
  %104 = load i64* @max_range_endpoint, align 8, !dbg !1147
  %int_cast_to_i64 = bitcast i64 8 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1147
  %div = udiv i64 %104, 8, !dbg !1147
  %add240 = add i64 %div, 1, !dbg !1147
  %call241 = call i8* @xzalloc(i64 %add240), !dbg !1147
  store i8* %call241, i8** @printable_field, align 8, !dbg !1147
  %105 = load %struct.range_pair** %rp, align 8, !dbg !1148
  %106 = bitcast %struct.range_pair* %105 to i8*, !dbg !1148
  %107 = load i64* %n_rp, align 8, !dbg !1148
  call void @qsort(i8* %106, i64 %107, i64 16, i32 (i8*, i8*)* @compare_ranges), !dbg !1148
  store i64 0, i64* %i, align 8, !dbg !1149
  br label %for.cond242, !dbg !1149

for.cond242:                                      ; preds = %for.inc273, %for.end239
  %108 = load i64* %i, align 8, !dbg !1149
  %109 = load i64* %n_rp, align 8, !dbg !1149
  %cmp243 = icmp ult i64 %108, %109, !dbg !1149
  br i1 %cmp243, label %for.body245, label %for.end275, !dbg !1149

for.body245:                                      ; preds = %for.cond242
  %110 = load i8* @complement, align 1, !dbg !1151
  %tobool246 = trunc i8 %110 to i1, !dbg !1151
  %111 = load i64* %i, align 8, !dbg !1151
  %112 = load %struct.range_pair** %rp, align 8, !dbg !1151
  %arrayidx249 = getelementptr inbounds %struct.range_pair* %112, i64 %111, !dbg !1151
  br i1 %tobool246, label %cond.true248, label %cond.false252, !dbg !1151

cond.true248:                                     ; preds = %for.body245
  %hi250 = getelementptr inbounds %struct.range_pair* %arrayidx249, i32 0, i32 1, !dbg !1151
  %113 = load i64* %hi250, align 8, !dbg !1151
  %add251 = add i64 %113, 1, !dbg !1151
  br label %cond.end255, !dbg !1151

cond.false252:                                    ; preds = %for.body245
  %lo254 = getelementptr inbounds %struct.range_pair* %arrayidx249, i32 0, i32 0, !dbg !1151
  %114 = load i64* %lo254, align 8, !dbg !1151
  br label %cond.end255, !dbg !1151

cond.end255:                                      ; preds = %cond.false252, %cond.true248
  %cond256 = phi i64 [ %add251, %cond.true248 ], [ %114, %cond.false252 ], !dbg !1151
  store i64 %cond256, i64* %rsi_candidate, align 8, !dbg !1151
  %115 = load i8* @output_delimiter_specified, align 1, !dbg !1153
  %tobool257 = trunc i8 %115 to i1, !dbg !1153
  br i1 %tobool257, label %land.lhs.true, label %if.end261, !dbg !1153

land.lhs.true:                                    ; preds = %cond.end255
  %116 = load i64* %rsi_candidate, align 8, !dbg !1155
  %call259 = call zeroext i1 @is_printable_field(i64 %116), !dbg !1155
  br i1 %call259, label %if.end261, label %if.then260, !dbg !1155

if.then260:                                       ; preds = %land.lhs.true
  %117 = load i64* %rsi_candidate, align 8, !dbg !1156
  call void @mark_range_start(i64 %117), !dbg !1156
  br label %if.end261, !dbg !1156

if.end261:                                        ; preds = %if.then260, %land.lhs.true, %cond.end255
  %118 = load i64* %i, align 8, !dbg !1157
  %119 = load %struct.range_pair** %rp, align 8, !dbg !1157
  %arrayidx262 = getelementptr inbounds %struct.range_pair* %119, i64 %118, !dbg !1157
  %lo263 = getelementptr inbounds %struct.range_pair* %arrayidx262, i32 0, i32 0, !dbg !1157
  %120 = load i64* %lo263, align 8, !dbg !1157
  store i64 %120, i64* %j, align 8, !dbg !1157
  br label %for.cond264, !dbg !1157

for.cond264:                                      ; preds = %for.body269, %if.end261
  %121 = load i64* %j, align 8, !dbg !1157
  %122 = load i64* %i, align 8, !dbg !1157
  %123 = load %struct.range_pair** %rp, align 8, !dbg !1157
  %arrayidx265 = getelementptr inbounds %struct.range_pair* %123, i64 %122, !dbg !1157
  %hi266 = getelementptr inbounds %struct.range_pair* %arrayidx265, i32 0, i32 1, !dbg !1157
  %124 = load i64* %hi266, align 8, !dbg !1157
  %cmp267 = icmp ule i64 %121, %124, !dbg !1157
  br i1 %cmp267, label %for.body269, label %for.inc273, !dbg !1157

for.body269:                                      ; preds = %for.cond264
  %125 = load i64* %j, align 8, !dbg !1159
  call void @mark_printable_field(i64 %125), !dbg !1159
  %126 = load i64* %j, align 8, !dbg !1157
  %inc271 = add i64 %126, 1, !dbg !1157
  store i64 %inc271, i64* %j, align 8, !dbg !1157
  br label %for.cond264, !dbg !1157

for.inc273:                                       ; preds = %for.cond264
  %127 = load i64* %i, align 8, !dbg !1149
  %inc274 = add i64 %127, 1, !dbg !1149
  store i64 %inc274, i64* %i, align 8, !dbg !1149
  br label %for.cond242, !dbg !1149

for.end275:                                       ; preds = %for.cond242
  %128 = load i8* @output_delimiter_specified, align 1, !dbg !1160
  %tobool276 = trunc i8 %128 to i1, !dbg !1160
  br i1 %tobool276, label %land.lhs.true278, label %if.end285, !dbg !1160

land.lhs.true278:                                 ; preds = %for.end275
  %129 = load i8* @complement, align 1, !dbg !1160
  %tobool279 = trunc i8 %129 to i1, !dbg !1160
  %tobool279.not = xor i1 %tobool279, true, !dbg !1160
  %130 = load i64* @eol_range_start, align 8, !dbg !1160
  %tobool281 = icmp ne i64 %130, 0, !dbg !1160
  %or.cond1 = and i1 %tobool279.not, %tobool281, !dbg !1160
  br i1 %or.cond1, label %land.lhs.true282, label %if.end285, !dbg !1160

land.lhs.true282:                                 ; preds = %land.lhs.true278
  %131 = load i64* @eol_range_start, align 8, !dbg !1162
  %call283 = call zeroext i1 @is_printable_field(i64 %131), !dbg !1162
  br i1 %call283, label %if.end285, label %if.then284, !dbg !1162

if.then284:                                       ; preds = %land.lhs.true282
  %132 = load i64* @eol_range_start, align 8, !dbg !1163
  call void @mark_range_start(i64 %132), !dbg !1163
  br label %if.end285, !dbg !1163

if.end285:                                        ; preds = %land.lhs.true278, %if.then284, %land.lhs.true282, %for.end275
  %133 = load %struct.range_pair** %rp, align 8, !dbg !1164
  %134 = bitcast %struct.range_pair* %133 to i8*, !dbg !1164
  call void @free(i8* %134) #9, !dbg !1164
  %135 = load i8* %field_found, align 1, !dbg !1165
  %tobool286 = trunc i8 %135 to i1, !dbg !1165
  ret i1 %tobool286, !dbg !1165
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @cut_file(i8* %file) #0 {
entry:
  %retval = alloca i1, align 1
  %file.addr = alloca i8*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8** %file.addr, align 8, !dbg !1166
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0)) #17, !dbg !1166
  %cmp = icmp eq i32 %call, 0, !dbg !1166
  br i1 %cmp, label %if.then, label %if.else, !dbg !1166

if.then:                                          ; preds = %entry
  store i8 1, i8* @have_read_stdin, align 1, !dbg !1168
  %1 = load %struct._IO_FILE** @stdin, align 8, !dbg !1170
  store %struct._IO_FILE* %1, %struct._IO_FILE** %stream, align 8, !dbg !1170
  br label %if.end5, !dbg !1171

if.else:                                          ; preds = %entry
  %2 = load i8** %file.addr, align 8, !dbg !1172
  %call1 = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0)), !dbg !1172
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %stream, align 8, !dbg !1172
  %3 = load %struct._IO_FILE** %stream, align 8, !dbg !1174
  %cmp2 = icmp eq %struct._IO_FILE* %3, null, !dbg !1174
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1174

if.then3:                                         ; preds = %if.else
  %call4 = call i32* @__errno_location() #1, !dbg !1176
  %4 = load i32* %call4, align 4, !dbg !1176
  %conv = sext i32 %4 to i64, !dbg !1176
  %5 = inttoptr i64 %conv to i32* (...)*, !dbg !1176
  %6 = load i8** %file.addr, align 8, !dbg !1176
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %5, i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* %6), !dbg !1176
  store i1 false, i1* %retval, !dbg !1178
  br label %return, !dbg !1178

if.end5:                                          ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE** %stream, align 8, !dbg !1179
  call void @cut_stream(%struct._IO_FILE* %7), !dbg !1179
  %8 = load %struct._IO_FILE** %stream, align 8, !dbg !1180
  %call6 = call i32 @ferror_unlocked(%struct._IO_FILE* %8) #9, !dbg !1180
  %tobool = icmp ne i32 %call6, 0, !dbg !1180
  br i1 %tobool, label %if.then7, label %if.end10, !dbg !1180

if.then7:                                         ; preds = %if.end5
  %call8 = call i32* @__errno_location() #1, !dbg !1182
  %9 = load i32* %call8, align 4, !dbg !1182
  %conv9 = sext i32 %9 to i64, !dbg !1182
  %10 = inttoptr i64 %conv9 to i32* (...)*, !dbg !1182
  %11 = load i8** %file.addr, align 8, !dbg !1182
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %10, i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* %11), !dbg !1182
  store i1 false, i1* %retval, !dbg !1184
  br label %return, !dbg !1184

if.end10:                                         ; preds = %if.end5
  %12 = load i8** %file.addr, align 8, !dbg !1185
  %call11 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0)) #17, !dbg !1185
  %cmp12 = icmp eq i32 %call11, 0, !dbg !1185
  %13 = load %struct._IO_FILE** %stream, align 8, !dbg !1187
  br i1 %cmp12, label %if.then14, label %if.else15, !dbg !1185

if.then14:                                        ; preds = %if.end10
  call void @clearerr_unlocked(%struct._IO_FILE* %13) #9, !dbg !1187
  br label %if.end23, !dbg !1187

if.else15:                                        ; preds = %if.end10
  %call16 = call i32 @fclose(%struct._IO_FILE* %13), !dbg !1188
  %cmp17 = icmp eq i32 %call16, -1, !dbg !1188
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !1188

if.then19:                                        ; preds = %if.else15
  %call20 = call i32* @__errno_location() #1, !dbg !1190
  %14 = load i32* %call20, align 4, !dbg !1190
  %conv21 = sext i32 %14 to i64, !dbg !1190
  %15 = inttoptr i64 %conv21 to i32* (...)*, !dbg !1190
  %16 = load i8** %file.addr, align 8, !dbg !1190
  call void (i32, i32* (...)*, i8*, ...)* @klee_compatible_error(i32 0, i32* (...)* %15, i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* %16), !dbg !1190
  store i1 false, i1* %retval, !dbg !1192
  br label %return, !dbg !1192

if.end23:                                         ; preds = %if.else15, %if.then14
  store i1 true, i1* %retval, !dbg !1193
  br label %return, !dbg !1193

return:                                           ; preds = %if.end23, %if.then19, %if.then7, %if.then3
  %17 = load i1* %retval, !dbg !1194
  ret i1 %17, !dbg !1194
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #8

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

; Function Attrs: nounwind uwtable
define internal void @cut_stream(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32* @operating_mode, align 4, !dbg !1195
  %cmp = icmp eq i32 %0, 1, !dbg !1195
  %1 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1197
  br i1 %cmp, label %if.then, label %if.else, !dbg !1195

if.then:                                          ; preds = %entry
  call void @cut_bytes(%struct._IO_FILE* %1), !dbg !1197
  br label %if.end, !dbg !1197

if.else:                                          ; preds = %entry
  call void @cut_fields(%struct._IO_FILE* %1), !dbg !1198
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1199
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
  store i64 0, i64* %byte_idx, align 8, !dbg !1200
  store i8 0, i8* %print_delimiter, align 1, !dbg !1201
  br label %while.body, !dbg !1202

while.body:                                       ; preds = %if.then, %if.else7, %if.end16, %entry
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1203
  %call = call i32 @getc_unlocked(%struct._IO_FILE* %0), !dbg !1203
  store i32 %call, i32* %c, align 4, !dbg !1203
  %1 = load i32* %c, align 4, !dbg !1205
  %cmp = icmp eq i32 %1, 10, !dbg !1205
  br i1 %cmp, label %if.then, label %if.else, !dbg !1205

if.then:                                          ; preds = %while.body
  %call1 = call i32 @putchar_unlocked(i32 10), !dbg !1207
  store i64 0, i64* %byte_idx, align 8, !dbg !1209
  store i8 0, i8* %print_delimiter, align 1, !dbg !1210
  br label %while.body, !dbg !1211

if.else:                                          ; preds = %while.body
  %2 = load i32* %c, align 4, !dbg !1212
  %cmp2 = icmp eq i32 %2, -1, !dbg !1212
  br i1 %cmp2, label %if.then3, label %if.else7, !dbg !1212

if.then3:                                         ; preds = %if.else
  %3 = load i64* %byte_idx, align 8, !dbg !1214
  %cmp4 = icmp ugt i64 %3, 0, !dbg !1214
  br i1 %cmp4, label %if.then5, label %while.end, !dbg !1214

if.then5:                                         ; preds = %if.then3
  %call6 = call i32 @putchar_unlocked(i32 10), !dbg !1217
  br label %while.end, !dbg !1217

if.else7:                                         ; preds = %if.else
  %4 = load i8* @output_delimiter_specified, align 1, !dbg !1218
  %tobool = trunc i8 %4 to i1, !dbg !1218
  %range_start. = select i1 %tobool, i8* %range_start, i8* null, !dbg !1218
  store i8* %range_start., i8** %rs, align 8, !dbg !1218
  %5 = load i64* %byte_idx, align 8, !dbg !1220
  %inc = add i64 %5, 1, !dbg !1220
  store i64 %inc, i64* %byte_idx, align 8, !dbg !1220
  %6 = load i8** %rs, align 8, !dbg !1220
  %call8 = call zeroext i1 @print_kth(i64 %inc, i8* %6), !dbg !1220
  br i1 %call8, label %if.then9, label %while.body, !dbg !1220

if.then9:                                         ; preds = %if.else7
  %7 = load i8** %rs, align 8, !dbg !1222
  %tobool10 = icmp ne i8* %7, null, !dbg !1222
  br i1 %tobool10, label %land.lhs.true, label %if.end16, !dbg !1222

land.lhs.true:                                    ; preds = %if.then9
  %8 = load i8** %rs, align 8, !dbg !1222
  %9 = load i8* %8, align 1, !dbg !1222
  %tobool11 = trunc i8 %9 to i1, !dbg !1222
  br i1 %tobool11, label %land.lhs.true12, label %if.end16, !dbg !1222

land.lhs.true12:                                  ; preds = %land.lhs.true
  %10 = load i8* %print_delimiter, align 1, !dbg !1222
  %tobool13 = trunc i8 %10 to i1, !dbg !1222
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !1222

if.then14:                                        ; preds = %land.lhs.true12
  %11 = load i8** @output_delimiter_string, align 8, !dbg !1225
  %12 = load i64* @output_delimiter_length, align 8, !dbg !1225
  %13 = load %struct._IO_FILE** @stdout, align 8, !dbg !1225
  %call15 = call i64 @fwrite_unlocked(i8* %11, i64 1, i64 %12, %struct._IO_FILE* %13), !dbg !1225
  br label %if.end16, !dbg !1227

if.end16:                                         ; preds = %if.then14, %land.lhs.true12, %land.lhs.true, %if.then9
  store i8 1, i8* %print_delimiter, align 1, !dbg !1228
  %14 = load i32* %c, align 4, !dbg !1229
  %call17 = call i32 @putchar_unlocked(i32 %14), !dbg !1229
  br label %while.body, !dbg !1230

while.end:                                        ; preds = %if.then3, %if.then5
  ret void, !dbg !1231
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
  store i64 1, i64* %field_idx, align 8, !dbg !1232
  store i8 0, i8* %found_any_selected_field, align 1, !dbg !1233
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1234
  %call = call i32 @getc_unlocked(%struct._IO_FILE* %0), !dbg !1234
  store i32 %call, i32* %c, align 4, !dbg !1234
  %1 = load i32* %c, align 4, !dbg !1235
  %cmp = icmp eq i32 %1, -1, !dbg !1235
  br i1 %cmp, label %while.end125, label %if.end, !dbg !1235

if.end:                                           ; preds = %entry
  %2 = load i32* %c, align 4, !dbg !1237
  %3 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1237
  %call1 = call i32 @ungetc(i32 %2, %struct._IO_FILE* %3), !dbg !1237
  %4 = load i8* @suppress_non_delimited, align 1, !dbg !1238
  %tobool = trunc i8 %4 to i1, !dbg !1238
  %conv = zext i1 %tobool to i32, !dbg !1238
  %call2 = call zeroext i1 @print_kth(i64 1, i8* null), !dbg !1238
  %lnot = xor i1 %call2, true, !dbg !1238
  %lnot.ext = zext i1 %lnot to i32, !dbg !1238
  %xor = xor i32 %conv, %lnot.ext, !dbg !1238
  %tobool3 = icmp ne i32 %xor, 0, !dbg !1238
  %frombool = zext i1 %tobool3 to i8, !dbg !1238
  store i8 %frombool, i8* %buffer_first_field, align 1, !dbg !1238
  br label %while.body, !dbg !1239

while.body:                                       ; preds = %if.then99, %if.else101, %if.end122, %if.then28, %if.then37, %if.else, %if.end
  %5 = load i64* %field_idx, align 8, !dbg !1240
  %cmp4 = icmp eq i64 %5, 1, !dbg !1240
  br i1 %cmp4, label %land.lhs.true, label %if.end47, !dbg !1240

land.lhs.true:                                    ; preds = %while.body
  %6 = load i8* %buffer_first_field, align 1, !dbg !1240
  %tobool6 = trunc i8 %6 to i1, !dbg !1240
  br i1 %tobool6, label %if.then8, label %if.end47, !dbg !1240

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i8* @delim, align 1, !dbg !1243
  %conv9 = zext i8 %7 to i32, !dbg !1243
  %8 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1243
  %call10 = call i64 @getndelim2(i8** @field_1_buffer, i64* @field_1_bufsize, i64 0, i64 -1, i32 %conv9, i32 10, %struct._IO_FILE* %8), !dbg !1243
  store i64 %call10, i64* %len, align 8, !dbg !1243
  %9 = load i64* %len, align 8, !dbg !1245
  %cmp11 = icmp slt i64 %9, 0, !dbg !1245
  br i1 %cmp11, label %if.then13, label %if.end20, !dbg !1245

if.then13:                                        ; preds = %if.then8
  %10 = load i8** @field_1_buffer, align 8, !dbg !1247
  call void @free(i8* %10) #9, !dbg !1247
  store i8* null, i8** @field_1_buffer, align 8, !dbg !1249
  %11 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1250
  %call14 = call i32 @ferror_unlocked(%struct._IO_FILE* %11) #9, !dbg !1250
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1250
  br i1 %tobool15, label %while.end125, label %lor.lhs.false, !dbg !1250

lor.lhs.false:                                    ; preds = %if.then13
  %12 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1250
  %call16 = call i32 @feof_unlocked(%struct._IO_FILE* %12) #9, !dbg !1250
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1250
  br i1 %tobool17, label %while.end125, label %if.end19, !dbg !1250

if.end19:                                         ; preds = %lor.lhs.false
  call void @xalloc_die() #18, !dbg !1252
  unreachable, !dbg !1252

if.end20:                                         ; preds = %if.then8
  %13 = load i64* %len, align 8, !dbg !1253
  store i64 %13, i64* %n_bytes, align 8, !dbg !1253
  %14 = load i64* %n_bytes, align 8, !dbg !1254
  %cmp21 = icmp ne i64 %14, 0, !dbg !1254
  br i1 %cmp21, label %cond.end, label %cond.false, !dbg !1254

cond.false:                                       ; preds = %if.end20
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str38, i32 0, i32 0), i32 638, i8* getelementptr inbounds ([24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i32 0, i32 0)) #16, !
  unreachable, !dbg !1254

cond.end:                                         ; preds = %if.end20
  %15 = load i64* %n_bytes, align 8, !dbg !1255
  %sub = sub i64 %15, 1, !dbg !1255
  %16 = load i8** @field_1_buffer, align 8, !dbg !1255
  %arrayidx = getelementptr inbounds i8* %16, i64 %sub, !dbg !1255
  %17 = load i8* %arrayidx, align 1, !dbg !1255
  %call23 = call zeroext i8 @to_uchar(i8 signext %17), !dbg !1255
  %conv24 = zext i8 %call23 to i32, !dbg !1255
  %18 = load i8* @delim, align 1, !dbg !1255
  %conv25 = zext i8 %18 to i32, !dbg !1255
  %cmp26 = icmp ne i32 %conv24, %conv25, !dbg !1255
  br i1 %cmp26, label %if.then28, label %if.end41, !dbg !1255

if.then28:                                        ; preds = %cond.end
  %19 = load i8* @suppress_non_delimited, align 1, !dbg !1257
  %tobool29 = trunc i8 %19 to i1, !dbg !1257
  br i1 %tobool29, label %while.body, label %if.else, !dbg !1257

if.else:                                          ; preds = %if.then28
  %20 = load i8** @field_1_buffer, align 8, !dbg !1260
  %21 = load i64* %n_bytes, align 8, !dbg !1260
  %22 = load %struct._IO_FILE** @stdout, align 8, !dbg !1260
  %call31 = call i64 @fwrite_unlocked(i8* %20, i64 1, i64 %21, %struct._IO_FILE* %22), !dbg !1260
  %23 = load i64* %n_bytes, align 8, !dbg !1262
  %sub32 = sub i64 %23, 1, !dbg !1262
  %24 = load i8** @field_1_buffer, align 8, !dbg !1262
  %arrayidx33 = getelementptr inbounds i8* %24, i64 %sub32, !dbg !1262
  %25 = load i8* %arrayidx33, align 1, !dbg !1262
  %conv34 = sext i8 %25 to i32, !dbg !1262
  %cmp35 = icmp ne i32 %conv34, 10, !dbg !1262
  br i1 %cmp35, label %if.then37, label %while.body, !dbg !1262

if.then37:                                        ; preds = %if.else
  %call38 = call i32 @putchar_unlocked(i32 10), !dbg !1264
  br label %while.body, !dbg !1264

if.end41:                                         ; preds = %cond.end
  %call42 = call zeroext i1 @print_kth(i64 1, i8* null), !dbg !1265
  br i1 %call42, label %if.then43, label %if.end46, !dbg !1265

if.then43:                                        ; preds = %if.end41
  %26 = load i8** @field_1_buffer, align 8, !dbg !1267
  %27 = load i64* %n_bytes, align 8, !dbg !1267
  %sub44 = sub i64 %27, 1, !dbg !1267
  %28 = load %struct._IO_FILE** @stdout, align 8, !dbg !1267
  %call45 = call i64 @fwrite_unlocked(i8* %26, i64 1, i64 %sub44, %struct._IO_FILE* %28), !dbg !1267
  store i8 1, i8* %found_any_selected_field, align 1, !dbg !1269
  br label %if.end46, !dbg !1270

if.end46:                                         ; preds = %if.then43, %if.end41
  %29 = load i64* %field_idx, align 8, !dbg !1271
  %inc = add i64 %29, 1, !dbg !1271
  store i64 %inc, i64* %field_idx, align 8, !dbg !1271
  br label %if.end47, !dbg !1272

if.end47:                                         ; preds = %if.end46, %land.lhs.true, %while.body
  %30 = load i32* %c, align 4, !dbg !1273
  %cmp48 = icmp ne i32 %30, -1, !dbg !1273
  br i1 %cmp48, label %if.then50, label %if.end85, !dbg !1273

if.then50:                                        ; preds = %if.end47
  %31 = load i64* %field_idx, align 8, !dbg !1275
  %call51 = call zeroext i1 @print_kth(i64 %31, i8* null), !dbg !1275
  br i1 %call51, label %if.then52, label %while.cond70, !dbg !1275

if.then52:                                        ; preds = %if.then50
  %32 = load i8* %found_any_selected_field, align 1, !dbg !1278
  %tobool53 = trunc i8 %32 to i1, !dbg !1278
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !1278

if.then54:                                        ; preds = %if.then52
  %33 = load i8** @output_delimiter_string, align 8, !dbg !1281
  %34 = load i64* @output_delimiter_length, align 8, !dbg !1281
  %35 = load %struct._IO_FILE** @stdout, align 8, !dbg !1281
  %call55 = call i64 @fwrite_unlocked(i8* %33, i64 1, i64 %34, %struct._IO_FILE* %35), !dbg !1281
  br label %if.end56, !dbg !1283

if.end56:                                         ; preds = %if.then54, %if.then52
  store i8 1, i8* %found_any_selected_field, align 1, !dbg !1284
  br label %while.cond57, !dbg !1285

while.cond57:                                     ; preds = %while.body67, %if.end56
  %36 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1285
  %call58 = call i32 @getc_unlocked(%struct._IO_FILE* %36), !dbg !1285
  store i32 %call58, i32* %c, align 4, !dbg !1285
  %37 = load i8* @delim, align 1, !dbg !1285
  %conv59 = zext i8 %37 to i32, !dbg !1285
  %cmp60 = icmp ne i32 %call58, %conv59, !dbg !1285
  %38 = load i32* %c, align 4, !dbg !1285
  %cmp63 = icmp ne i32 %38, 10, !dbg !1285
  %or.cond = and i1 %cmp60, %cmp63, !dbg !1285
  %39 = load i32* %c, align 4, !dbg !1285
  %cmp65 = icmp ne i32 %39, -1, !dbg !1285
  %or.cond4 = and i1 %or.cond, %cmp65, !dbg !1285
  br i1 %or.cond4, label %while.body67, label %if.end85, !dbg !1285

while.body67:                                     ; preds = %while.cond57
  %40 = load i32* %c, align 4, !dbg !1286
  %call68 = call i32 @putchar_unlocked(i32 %40), !dbg !1286
  br label %while.cond57, !dbg !1288

while.cond70:                                     ; preds = %while.cond70, %if.then50
  %41 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1289
  %call71 = call i32 @getc_unlocked(%struct._IO_FILE* %41), !dbg !1289
  store i32 %call71, i32* %c, align 4, !dbg !1289
  %42 = load i8* @delim, align 1, !dbg !1289
  %conv72 = zext i8 %42 to i32, !dbg !1289
  %cmp73 = icmp ne i32 %call71, %conv72, !dbg !1289
  %43 = load i32* %c, align 4, !dbg !1289
  %cmp76 = icmp ne i32 %43, 10, !dbg !1289
  %or.cond1 = and i1 %cmp73, %cmp76, !dbg !1289
  %44 = load i32* %c, align 4, !dbg !1289
  %cmp79 = icmp ne i32 %44, -1, !dbg !1289
  %or.cond5 = and i1 %or.cond1, %cmp79, !dbg !1289
  br i1 %or.cond5, label %while.cond70, label %if.end85, !dbg !1289

if.end85:                                         ; preds = %while.cond57, %while.cond70, %if.end47
  %45 = load i32* %c, align 4, !dbg !1291
  %cmp86 = icmp eq i32 %45, 10, !dbg !1291
  br i1 %cmp86, label %if.then88, label %if.end95, !dbg !1291

if.then88:                                        ; preds = %if.end85
  %46 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1293
  %call89 = call i32 @getc_unlocked(%struct._IO_FILE* %46), !dbg !1293
  store i32 %call89, i32* %c, align 4, !dbg !1293
  %47 = load i32* %c, align 4, !dbg !1295
  %cmp90 = icmp ne i32 %47, -1, !dbg !1295
  br i1 %cmp90, label %if.then92, label %if.end95, !dbg !1295

if.then92:                                        ; preds = %if.then88
  %48 = load i32* %c, align 4, !dbg !1297
  %49 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1297
  %call93 = call i32 @ungetc(i32 %48, %struct._IO_FILE* %49), !dbg !1297
  store i32 10, i32* %c, align 4, !dbg !1299
  br label %if.end95, !dbg !1300

if.end95:                                         ; preds = %if.then88, %if.then92, %if.end85
  %50 = load i32* %c, align 4, !dbg !1301
  %51 = load i8* @delim, align 1, !dbg !1301
  %conv96 = zext i8 %51 to i32, !dbg !1301
  %cmp97 = icmp eq i32 %50, %conv96, !dbg !1301
  br i1 %cmp97, label %if.then99, label %if.else101, !dbg !1301

if.then99:                                        ; preds = %if.end95
  %52 = load i64* %field_idx, align 8, !dbg !1303
  %inc100 = add i64 %52, 1, !dbg !1303
  store i64 %inc100, i64* %field_idx, align 8, !dbg !1303
  br label %while.body, !dbg !1303

if.else101:                                       ; preds = %if.end95
  %53 = load i32* %c, align 4, !dbg !1304
  %cmp102 = icmp eq i32 %53, 10, !dbg !1304
  %54 = load i32* %c, align 4, !dbg !1304
  %cmp105 = icmp eq i32 %54, -1, !dbg !1304
  %or.cond2 = or i1 %cmp102, %cmp105, !dbg !1304
  br i1 %or.cond2, label %if.then107, label %while.body, !dbg !1304

if.then107:                                       ; preds = %if.else101
  %55 = load i8* %found_any_selected_field, align 1, !dbg !1306
  %tobool108 = trunc i8 %55 to i1, !dbg !1306
  br i1 %tobool108, label %if.then116, label %lor.lhs.false110, !dbg !1306

lor.lhs.false110:                                 ; preds = %if.then107
  %56 = load i8* @suppress_non_delimited, align 1, !dbg !1306
  %tobool111 = trunc i8 %56 to i1, !dbg !1306
  %57 = load i64* %field_idx, align 8, !dbg !1306
  %cmp114 = icmp eq i64 %57, 1, !dbg !1306
  %or.cond3 = and i1 %tobool111, %cmp114, !dbg !1306
  br i1 %or.cond3, label %if.end118, label %if.then116, !dbg !1306

if.then116:                                       ; preds = %lor.lhs.false110, %if.then107
  %call117 = call i32 @putchar_unlocked(i32 10), !dbg !1309
  br label %if.end118, !dbg !1309

if.end118:                                        ; preds = %lor.lhs.false110, %if.then116
  %58 = load i32* %c, align 4, !dbg !1310
  %cmp119 = icmp eq i32 %58, -1, !dbg !1310
  br i1 %cmp119, label %while.end125, label %if.end122, !dbg !1310

if.end122:                                        ; preds = %if.end118
  store i64 1, i64* %field_idx, align 8, !dbg !1312
  store i8 0, i8* %found_any_selected_field, align 1, !dbg !1313
  br label %while.body, !dbg !1314

while.end125:                                     ; preds = %if.end118, %if.then13, %lor.lhs.false, %entry
  ret void, !dbg !1315
}

declare i32 @getc_unlocked(%struct._IO_FILE*) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @print_kth(i64 %k, i8* %range_start) #0 {
entry:
  %k.addr = alloca i64, align 8
  %range_start.addr = alloca i8*, align 8
  %k_selected = alloca i8, align 1
  %is_selected = alloca i8, align 1
  store i64 %k, i64* %k.addr, align 8
  store i8* %range_start, i8** %range_start.addr, align 8
  %0 = load i64* @eol_range_start, align 8, !dbg !1316
  %cmp = icmp ult i64 0, %0, !dbg !1316
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !1316

land.lhs.true:                                    ; preds = %entry
  %1 = load i64* @eol_range_start, align 8, !dbg !1316
  %2 = load i64* %k.addr, align 8, !dbg !1316
  %cmp1 = icmp ule i64 %1, %2, !dbg !1316
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !1316

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %3 = load i64* %k.addr, align 8, !dbg !1316
  %4 = load i64* @max_range_endpoint, align 8, !dbg !1316
  %cmp2 = icmp ule i64 %3, %4, !dbg !1316
  br i1 %cmp2, label %land.rhs, label %lor.end, !dbg !1316

land.rhs:                                         ; preds = %lor.rhs
  %5 = load i64* %k.addr, align 8, !dbg !1318
  %call = call zeroext i1 @is_printable_field(i64 %5), !dbg !1318
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs, %land.lhs.true
  %6 = phi i1 [ true, %land.lhs.true ], [ false, %lor.rhs ], [ %call, %land.rhs ]
  %frombool = zext i1 %6 to i8
  store i8 %frombool, i8* %k_selected, align 1
  %7 = load i8* %k_selected, align 1, !dbg !1319
  %tobool = trunc i8 %7 to i1, !dbg !1319
  %conv = zext i1 %tobool to i32, !dbg !1319
  %8 = load i8* @complement, align 1, !dbg !1319
  %tobool3 = trunc i8 %8 to i1, !dbg !1319
  %conv4 = zext i1 %tobool3 to i32, !dbg !1319
  %xor = xor i32 %conv, %conv4, !dbg !1319
  %tobool5 = icmp ne i32 %xor, 0, !dbg !1319
  %frombool6 = zext i1 %tobool5 to i8, !dbg !1319
  store i8 %frombool6, i8* %is_selected, align 1, !dbg !1319
  %9 = load i8** %range_start.addr, align 8, !dbg !1320
  %tobool7 = icmp ne i8* %9, null, !dbg !1320
  br i1 %tobool7, label %land.lhs.true8, label %if.end, !dbg !1320

land.lhs.true8:                                   ; preds = %lor.end
  %10 = load i8* %is_selected, align 1, !dbg !1320
  %tobool9 = trunc i8 %10 to i1, !dbg !1320
  br i1 %tobool9, label %if.then, label %if.end, !dbg !1320

if.then:                                          ; preds = %land.lhs.true8
  %11 = load i64* %k.addr, align 8, !dbg !1322
  %call11 = call zeroext i1 @is_range_start_index(i64 %11), !dbg !1322
  %12 = load i8** %range_start.addr, align 8, !dbg !1322
  %frombool12 = zext i1 %call11 to i8, !dbg !1322
  store i8 %frombool12, i8* %12, align 1, !dbg !1322
  br label %if.end, !dbg !1322

if.end:                                           ; preds = %if.then, %land.lhs.true8, %lor.end
  %13 = load i8* %is_selected, align 1, !dbg !1323
  %tobool13 = trunc i8 %13 to i1, !dbg !1323
  ret i1 %tobool13, !dbg !1323
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare i32 @feof_unlocked(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @to_uchar(i8 signext %ch) #5 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load i8* %ch.addr, align 1, !dbg !1324
  ret i8 %0, !dbg !1324
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @putchar_unlocked(i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @is_printable_field(i64 %i) #5 {
entry:
  %i.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64* %i.addr, align 8, !dbg !1326
  %int_cast_to_i64 = bitcast i64 8 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1326
  %div = udiv i64 %0, 8, !dbg !1326
  store i64 %div, i64* %n, align 8, !dbg !1326
  %1 = load i64* %n, align 8, !dbg !1327
  %2 = load i8** @printable_field, align 8, !dbg !1327
  %arrayidx = getelementptr inbounds i8* %2, i64 %1, !dbg !1327
  %3 = load i8* %arrayidx, align 1, !dbg !1327
  %conv = zext i8 %3 to i32, !dbg !1327
  %4 = load i64* %i.addr, align 8, !dbg !1327
  %int_cast_to_i641 = bitcast i64 8 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !1327
  %rem = urem i64 %4, 8, !dbg !1327
  %sh_prom = trunc i64 %rem to i32, !dbg !1327
  %int_cast_to_i642 = zext i32 %sh_prom to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !1327
  %shr = ashr i32 %conv, %sh_prom, !dbg !1327
  %and = and i32 %shr, 1, !dbg !1327
  %tobool = icmp ne i32 %and, 0, !dbg !1327
  ret i1 %tobool, !dbg !1327
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_range_start_index(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct.hash_table** @range_start_ht, align 8, !dbg !1328
  %1 = load i64* %i.addr, align 8, !dbg !1328
  %2 = inttoptr i64 %1 to i8*, !dbg !1328
  %call = call i8* @hash_lookup(%struct.hash_table* %0, i8* %2), !dbg !1328
  %tobool = icmp ne i8* %call, null, !dbg !1328
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !1328
  %tobool1 = icmp ne i32 %cond, 0, !dbg !1328
  ret i1 %tobool1, !dbg !1328
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #7

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @compare_ranges(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %a_start = alloca i32, align 4
  %b_start = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8** %a.addr, align 8, !dbg !1329
  %1 = bitcast i8* %0 to %struct.range_pair*, !dbg !1329
  %lo = getelementptr inbounds %struct.range_pair* %1, i32 0, i32 0, !dbg !1329
  %2 = load i64* %lo, align 8, !dbg !1329
  %conv = trunc i64 %2 to i32, !dbg !1329
  store i32 %conv, i32* %a_start, align 4, !dbg !1329
  %3 = load i8** %b.addr, align 8, !dbg !1330
  %4 = bitcast i8* %3 to %struct.range_pair*, !dbg !1330
  %lo1 = getelementptr inbounds %struct.range_pair* %4, i32 0, i32 0, !dbg !1330
  %5 = load i64* %lo1, align 8, !dbg !1330
  %conv2 = trunc i64 %5 to i32, !dbg !1330
  store i32 %conv2, i32* %b_start, align 4, !dbg !1330
  %6 = load i32* %a_start, align 4, !dbg !1331
  %7 = load i32* %b_start, align 4, !dbg !1331
  %cmp = icmp slt i32 %6, %7, !dbg !1331
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1331

cond.false:                                       ; preds = %entry
  %8 = load i32* %a_start, align 4, !dbg !1331
  %9 = load i32* %b_start, align 4, !dbg !1331
  %cmp4 = icmp sgt i32 %8, %9, !dbg !1331
  %conv5 = zext i1 %cmp4 to i32, !dbg !1331
  br label %cond.end, !dbg !1331

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %conv5, %cond.false ], [ -1, %entry ], !dbg !1331
  ret i32 %cond, !dbg !1331
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mark_range_start(i64 %i) #5 {
entry:
  %i.addr = alloca i64, align 8
  %ent_from_table = alloca i8*, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load %struct.hash_table** @range_start_ht, align 8, !dbg !1332
  %1 = load i64* %i.addr, align 8, !dbg !1332
  %2 = inttoptr i64 %1 to i8*, !dbg !1332
  %call = call i8* @hash_insert(%struct.hash_table* %0, i8* %2), !dbg !1332
  store i8* %call, i8** %ent_from_table, align 8, !dbg !1332
  %3 = load i8** %ent_from_table, align 8, !dbg !1333
  %cmp = icmp eq i8* %3, null, !dbg !1333
  br i1 %cmp, label %if.then, label %if.end, !dbg !1333

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18, !dbg !1335
  unreachable, !dbg !1335

if.end:                                           ; preds = %entry
  %4 = load i8** %ent_from_table, align 8, !dbg !1337
  %5 = ptrtoint i8* %4 to i64, !dbg !1337
  %6 = load i64* %i.addr, align 8, !dbg !1337
  %cmp1 = icmp eq i64 %5, %6, !dbg !1337
  br i1 %cmp1, label %cond.end, label %cond.false, !dbg !1337

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str38, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([30 x i8]* @__PRETTY_FUNCTION__.mark_range_start, i32 0, i32 0)) 
  unreachable, !dbg !1337

cond.end:                                         ; preds = %if.end
  ret void, !dbg !1338
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mark_printable_field(i64 %i) #5 {
entry:
  %i.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64* %i.addr, align 8, !dbg !1339
  %int_cast_to_i64 = bitcast i64 8 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1339
  %div = udiv i64 %0, 8, !dbg !1339
  store i64 %div, i64* %n, align 8, !dbg !1339
  %1 = load i64* %i.addr, align 8, !dbg !1340
  %int_cast_to_i641 = bitcast i64 8 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !1340
  %rem = urem i64 %1, 8, !dbg !1340
  %sh_prom = trunc i64 %rem to i32, !dbg !1340
  %int_cast_to_i642 = zext i32 %sh_prom to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !1340
  %shl = shl i32 1, %sh_prom, !dbg !1340
  %2 = load i64* %n, align 8, !dbg !1340
  %3 = load i8** @printable_field, align 8, !dbg !1340
  %arrayidx = getelementptr inbounds i8* %3, i64 %2, !dbg !1340
  %4 = load i8* %arrayidx, align 1, !dbg !1340
  %conv = zext i8 %4 to i32, !dbg !1340
  %or = or i32 %conv, %shl, !dbg !1340
  %conv1 = trunc i32 %or to i8, !dbg !1340
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !1340
  ret void, !dbg !1341
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @putc_unlocked(i32, %struct._IO_FILE*) #3

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
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !1342
  %0 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1342
  %1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1342
  %2 = bitcast %struct.__va_list_tag* %0 to i8*, !dbg !1342
  %vacopy.cast.dst = bitcast i8* %1 to i64*
  %vacopy.cast.src = bitcast i8* %2 to i64*
  %3 = load i64* %vacopy.cast.src
  store i64 %3, i64* %vacopy.cast.dst
  %4 = getelementptr i64* %vacopy.cast.dst, i64 1
  %5 = getelementptr i64* %vacopy.cast.src, i64 1
  %6 = load i64* %5
  store i64 %6, i64* %4
  %7 = getelementptr i64* %4, i64 1
  %8 = getelementptr i64* %5, i64 1
  %9 = load i64* %8
  store i64 %9, i64* %7
  store i64 0, i64* %n_authors, align 8, !dbg !1344
  br label %while.cond, !dbg !1345

while.cond:                                       ; preds = %while.body, %entry
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %tmp_authors, i32 0, i32 0, !dbg !1345
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 0, !dbg !1345
  %gp_offset = load i32* %gp_offset_p, !dbg !1345
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1345
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1345

vaarg.in_reg:                                     ; preds = %while.cond
  %10 = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 3, !dbg !1345
  %reg_save_area = load i8** %10, !dbg !1345
  %11 = getelementptr i8* %reg_save_area, i32 %gp_offset, !dbg !1345
  %12 = bitcast i8* %11 to i8**, !dbg !1345
  %13 = add i32 %gp_offset, 8, !dbg !1345
  store i32 %13, i32* %gp_offset_p, !dbg !1345
  br label %vaarg.end, !dbg !1345

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag* %arraydecay1, i32 0, i32 2, !dbg !1345
  %overflow_arg_area = load i8** %overflow_arg_area_p, !dbg !1345
  %14 = bitcast i8* %overflow_arg_area to i8**, !dbg !1345
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i32 8, !dbg !1345
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, !dbg !1345
  br label %vaarg.end, !dbg !1345

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %12, %vaarg.in_reg ], [ %14, %vaarg.in_mem ], !dbg !1345
  %15 = load i8** %vaarg.addr, !dbg !1345
  %cmp = icmp ne i8* %15, null, !dbg !1345
  br i1 %cmp, label %while.body, label %while.end, !dbg !1345

while.body:                                       ; preds = %vaarg.end
  %16 = load i64* %n_authors, align 8, !dbg !1346
  %inc = add i64 %16, 1, !dbg !1346
  store i64 %inc, i64* %n_authors, align 8, !dbg !1346
  br label %while.cond, !dbg !1346

while.end:                                        ; preds = %vaarg.end
  %17 = load i8** %command_name.addr, align 8, !dbg !1347
  %tobool = icmp ne i8* %17, null, !dbg !1347
  %18 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1349
  br i1 %tobool, label %if.then, label %if.else, !dbg !1347

if.then:                                          ; preds = %while.end
  %19 = load i8** %command_name.addr, align 8, !dbg !1349
  %20 = load i8** %package.addr, align 8, !dbg !1349
  %21 = load i8** %version.addr, align 8, !dbg !1349
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([12 x i8]* @.str57, i32 0, i32 0), i8* %19, i8* %20, i8* %21), !dbg !1349
  br label %if.end, !dbg !1349

if.else:                                          ; preds = %while.end
  %22 = load i8** %package.addr, align 8, !dbg !1350
  %23 = load i8** %version.addr, align 8, !dbg !1350
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([7 x i8]* @.str158, i32 0, i32 0), i8* %22, i8* %23), !dbg !1350
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1351
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([47 x i8]* @version_etc_copyright, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str259, i32 0, i32 0), i32 2007), !dbg !1351
  %25 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1352
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([202 x i8]* @.str360, i32 0, i32 0), %struct._IO_FILE* %25), !dbg !1352
  %26 = load i64* %n_authors, align 8, !dbg !1353
  switch i64 %26, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb5
    i64 2, label %sw.bb7
    i64 3, label %sw.bb9
    i64 4, label %sw.bb11
    i64 5, label %sw.bb13
    i64 6, label %sw.bb15
    i64 7, label %sw.bb17
    i64 8, label %sw.bb19
    i64 9, label %sw.bb21
  ], !dbg !1353

sw.bb:                                            ; preds = %if.end
  call void @abort() #16, !dbg !1354
  unreachable, !dbg !1354

sw.bb5:                                           ; preds = %if.end
  %27 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1356
  %28 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1356
  %call6 = call i32 @vfprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([16 x i8]* @.str461, i32 0, i32 0), %struct.__va_list_tag* %28), !dbg !1356
  br label %sw.epilog, !dbg !1357

sw.bb7:                                           ; preds = %if.end
  %29 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1358
  %30 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1358
  %call8 = call i32 @vfprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([23 x i8]* @.str562, i32 0, i32 0), %struct.__va_list_tag* %30), !dbg !1358
  br label %sw.epilog, !dbg !1359

sw.bb9:                                           ; preds = %if.end
  %31 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1360
  %32 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1360
  %call10 = call i32 @vfprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([28 x i8]* @.str663, i32 0, i32 0), %struct.__va_list_tag* %32), !dbg !1360
  br label %sw.epilog, !dbg !1361

sw.bb11:                                          ; preds = %if.end
  %33 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1362
  %34 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1362
  %call12 = call i32 @vfprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([32 x i8]* @.str764, i32 0, i32 0), %struct.__va_list_tag* %34), !dbg !1362
  br label %sw.epilog, !dbg !1363

sw.bb13:                                          ; preds = %if.end
  %35 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1364
  %36 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1364
  %call14 = call i32 @vfprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([36 x i8]* @.str865, i32 0, i32 0), %struct.__va_list_tag* %36), !dbg !1364
  br label %sw.epilog, !dbg !1365

sw.bb15:                                          ; preds = %if.end
  %37 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1366
  %38 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1366
  %call16 = call i32 @vfprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([40 x i8]* @.str966, i32 0, i32 0), %struct.__va_list_tag* %38), !dbg !1366
  br label %sw.epilog, !dbg !1367

sw.bb17:                                          ; preds = %if.end
  %39 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1368
  %40 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1368
  %call18 = call i32 @vfprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([44 x i8]* @.str1067, i32 0, i32 0), %struct.__va_list_tag* %40), !dbg !1368
  br label %sw.epilog, !dbg !1369

sw.bb19:                                          ; preds = %if.end
  %41 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1370
  %42 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1370
  %call20 = call i32 @vfprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([48 x i8]* @.str1168, i32 0, i32 0), %struct.__va_list_tag* %42), !dbg !1370
  br label %sw.epilog, !dbg !1371

sw.bb21:                                          ; preds = %if.end
  %43 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1372
  %44 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1372
  %call22 = call i32 @vfprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([52 x i8]* @.str1269, i32 0, i32 0), %struct.__va_list_tag* %44), !dbg !1372
  br label %sw.epilog, !dbg !1373

sw.default:                                       ; preds = %if.end
  %45 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1374
  %46 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1374
  %call23 = call i32 @vfprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([60 x i8]* @.str1370, i32 0, i32 0), %struct.__va_list_tag* %46), !dbg !1374
  br label %sw.epilog, !dbg !1375

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5
  %47 = load %struct.__va_list_tag** %authors.addr, align 8, !dbg !1376
  %48 = bitcast %struct.__va_list_tag* %47 to i8*, !dbg !1376
  call void @llvm.va_end(i8* %48), !dbg !1376
  ret void, !dbg !1377
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #9

; Function Attrs: noreturn nounwind
declare void @abort() #6

; Function Attrs: nounwind uwtable
define void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !1378
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !1378
  call void @llvm.va_start(i8* %arraydecay1), !dbg !1378
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1379
  %1 = load i8** %command_name.addr, align 8, !dbg !1379
  %2 = load i8** %package.addr, align 8, !dbg !1379
  %3 = load i8** %version.addr, align 8, !dbg !1379
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %authors, i32 0, i32 0, !dbg !1379
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2), !dbg !1379
  ret void, !dbg !1380
}

; Function Attrs: noreturn nounwind uwtable
define void @xalloc_die() #10 {
entry:
  %0 = load volatile i32* @exit_failure, align 4, !dbg !1381
  call void (i32, i32, i8*, ...)* @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str75, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str176, i32 0, i32 0)), !dbg !1381
  call void @abort() #16, !dbg !1382
  unreachable, !dbg !1382
}

declare void @error(i32, i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @xstrndup(i8* %string, i64 %n) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %string.addr, align 8, !dbg !1383
  %1 = load i64* %n.addr, align 8, !dbg !1383
  %call = call noalias i8* @strndup(i8* %0, i64 %1) #9, !dbg !1383
  store i8* %call, i8** %s, align 8, !dbg !1383
  %2 = load i8** %s, align 8, !dbg !1384
  %tobool = icmp ne i8* %2, null, !dbg !1384
  br i1 %tobool, label %if.end, label %if.then, !dbg !1384

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18, !dbg !1386
  unreachable, !dbg !1386

if.end:                                           ; preds = %entry
  %3 = load i8** %s, align 8, !dbg !1387
  ret i8* %3, !dbg !1387
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @close_stdout_set_file_name(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8** %file.addr, align 8, !dbg !1388
  store i8* %0, i8** @file_name, align 8, !dbg !1388
  ret void, !dbg !1389
}

; Function Attrs: nounwind uwtable
define void @close_stdout() #0 {
entry:
  %write_error = alloca i8*, align 8
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !1390
  %call = call i32 @close_stream(%struct._IO_FILE* %0), !dbg !1390
  %cmp = icmp ne i32 %call, 0, !dbg !1390
  br i1 %cmp, label %if.then, label %if.end5, !dbg !1390

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8]* @.str81, i32 0, i32 0), i8** %write_error, align 8, !dbg !1392
  %1 = load i8** @file_name, align 8, !dbg !1394
  %tobool = icmp ne i8* %1, null, !dbg !1394
  %call2 = call i32* @__errno_location() #1, !dbg !1396
  %2 = load i32* %call2, align 4, !dbg !1396
  br i1 %tobool, label %if.then1, label %if.else, !dbg !1394

if.then1:                                         ; preds = %if.then
  %3 = load i8** @file_name, align 8, !dbg !1396
  %call3 = call i8* @quotearg_colon(i8* %3), !dbg !1396
  %4 = load i8** %write_error, align 8, !dbg !1396
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 %2, i8* getelementptr inbounds ([7 x i8]* @.str182, i32 0, i32 0), i8* %call3, i8* %4), !dbg !1396
  br label %if.end, !dbg !1396

if.else:                                          ; preds = %if.then
  %5 = load i8** %write_error, align 8, !dbg !1397
  call void (i32, i32, i8*, ...)* @error(i32 0, i32 %2, i8* getelementptr inbounds ([3 x i8]* @.str283, i32 0, i32 0), i8* %5), !dbg !1397
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %6 = load volatile i32* @exit_failure, align 4, !dbg !1398
  call void @_exit(i32 %6) #18, !dbg !1398
  unreachable, !dbg !1398

if.end5:                                          ; preds = %entry
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !1399
  %call6 = call i32 @close_stream(%struct._IO_FILE* %7), !dbg !1399
  %cmp7 = icmp ne i32 %call6, 0, !dbg !1399
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1399

if.then8:                                         ; preds = %if.end5
  %8 = load volatile i32* @exit_failure, align 4, !dbg !1401
  call void @_exit(i32 %8) #18, !dbg !1401
  unreachable, !dbg !1401

if.end9:                                          ; preds = %if.end5
  ret void, !dbg !1402
}

; Function Attrs: noreturn
declare void @_exit(i32) #11

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
  store i64* %linesize, i64** %linesize.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %nmax, i64* %nmax.addr, align 8
  store i32 %delim1, i32* %delim1.addr, align 4
  store i32 %delim2, i32* %delim2.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 -1, i64* %bytes_stored, align 8, !dbg !1403
  %0 = load i8*** %lineptr.addr, align 8, !dbg !1404
  %1 = load i8** %0, align 8, !dbg !1404
  store i8* %1, i8** %ptr, align 8, !dbg !1404
  %2 = load i64** %linesize.addr, align 8, !dbg !1405
  %3 = load i64* %2, align 8, !dbg !1405
  store i64 %3, i64* %size, align 8, !dbg !1405
  %4 = load i8** %ptr, align 8, !dbg !1406
  %tobool = icmp ne i8* %4, null, !dbg !1406
  br i1 %tobool, label %if.end3, label %if.then, !dbg !1406

if.then:                                          ; preds = %entry
  %5 = load i64* %nmax.addr, align 8, !dbg !1408
  %cmp = icmp ult i64 %5, 64, !dbg !1408
  %6 = load i64* %nmax.addr, align 8, !dbg !1408
  %cond = select i1 %cmp, i64 %6, i64 64, !dbg !1408
  store i64 %cond, i64* %size, align 8, !dbg !1408
  %7 = load i64* %size, align 8, !dbg !1410
  %call = call noalias i8* @malloc(i64 %7) #9, !dbg !1410
  store i8* %call, i8** %ptr, align 8, !dbg !1410
  %8 = load i8** %ptr, align 8, !dbg !1411
  %tobool1 = icmp ne i8* %8, null, !dbg !1411
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !1411

if.then2:                                         ; preds = %if.then
  store i64 -1, i64* %retval, !dbg !1413
  br label %return, !dbg !1413

if.end3:                                          ; preds = %if.then, %entry
  %9 = load i64* %size, align 8, !dbg !1414
  %10 = load i64* %offset.addr, align 8, !dbg !1414
  %cmp4 = icmp ult i64 %9, %10, !dbg !1414
  br i1 %cmp4, label %done, label %if.end6, !dbg !1414

if.end6:                                          ; preds = %if.end3
  %11 = load i64* %size, align 8, !dbg !1416
  %12 = load i64* %offset.addr, align 8, !dbg !1416
  %sub = sub i64 %11, %12, !dbg !1416
  store i64 %sub, i64* %nbytes_avail, align 8, !dbg !1416
  %13 = load i8** %ptr, align 8, !dbg !1417
  %14 = load i64* %offset.addr, align 8, !dbg !1417
  %add.ptr = getelementptr inbounds i8* %13, i64 %14, !dbg !1417
  store i8* %add.ptr, i8** %read_pos, align 8, !dbg !1417
  %15 = load i64* %nbytes_avail, align 8, !dbg !1418
  %cmp7 = icmp eq i64 %15, 0, !dbg !1418
  br i1 %cmp7, label %land.lhs.true, label %for.cond, !dbg !1418

land.lhs.true:                                    ; preds = %if.end6
  %16 = load i64* %nmax.addr, align 8, !dbg !1418
  %17 = load i64* %size, align 8, !dbg !1418
  %cmp8 = icmp ule i64 %16, %17, !dbg !1418
  br i1 %cmp8, label %done, label %for.cond, !dbg !1418

for.cond:                                         ; preds = %lor.lhs.false, %if.end6, %land.lhs.true
  %18 = load i64* %nbytes_avail, align 8, !dbg !1420
  %cmp11 = icmp ult i64 %18, 2, !dbg !1420
  br i1 %cmp11, label %land.lhs.true12, label %if.end41, !dbg !1420

land.lhs.true12:                                  ; preds = %for.cond
  %19 = load i64* %size, align 8, !dbg !1420
  %20 = load i64* %nmax.addr, align 8, !dbg !1420
  %cmp13 = icmp ult i64 %19, %20, !dbg !1420
  br i1 %cmp13, label %if.then14, label %if.end41, !dbg !1420

if.then14:                                        ; preds = %land.lhs.true12
  %21 = load i64* %size, align 8, !dbg !1424
  %cmp15 = icmp ult i64 %21, 64, !dbg !1424
  %22 = load i64* %size, align 8, !dbg !1424
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !1424

cond.true16:                                      ; preds = %if.then14
  %add = add i64 %22, 64, !dbg !1424
  br label %cond.end18, !dbg !1424

cond.false17:                                     ; preds = %if.then14
  %mul = mul i64 2, %22, !dbg !1424
  br label %cond.end18, !dbg !1424

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i64 [ %add, %cond.true16 ], [ %mul, %cond.false17 ], !dbg !1424
  store i64 %cond19, i64* %newsize, align 8, !dbg !1424
  %23 = load i64* %size, align 8, !dbg !1426
  %24 = load i64* %newsize, align 8, !dbg !1426
  %cmp20 = icmp ult i64 %23, %24, !dbg !1426
  br i1 %cmp20, label %land.lhs.true21, label %if.then23, !dbg !1426

land.lhs.true21:                                  ; preds = %cond.end18
  %25 = load i64* %newsize, align 8, !dbg !1426
  %26 = load i64* %nmax.addr, align 8, !dbg !1426
  %cmp22 = icmp ule i64 %25, %26, !dbg !1426
  br i1 %cmp22, label %if.end24, label %if.then23, !dbg !1426

if.then23:                                        ; preds = %land.lhs.true21, %cond.end18
  %27 = load i64* %nmax.addr, align 8, !dbg !1428
  store i64 %27, i64* %newsize, align 8, !dbg !1428
  br label %if.end24, !dbg !1428

if.end24:                                         ; preds = %if.then23, %land.lhs.true21
  %28 = load i64* %newsize, align 8, !dbg !1429
  %29 = load i64* %offset.addr, align 8, !dbg !1429
  %sub25 = sub i64 %28, %29, !dbg !1429
  %cmp26 = icmp ult i64 9223372036854775807, %sub25, !dbg !1429
  br i1 %cmp26, label %if.then27, label %if.end33, !dbg !1429

if.then27:                                        ; preds = %if.end24
  %30 = load i64* %offset.addr, align 8, !dbg !1431
  %add28 = add i64 %30, 9223372036854775807, !dbg !1431
  %add29 = add i64 %add28, 1, !dbg !1431
  store i64 %add29, i64* %newsizemax, align 8, !dbg !1431
  %31 = load i64* %size, align 8, !dbg !1433
  %32 = load i64* %newsizemax, align 8, !dbg !1433
  %cmp30 = icmp eq i64 %31, %32, !dbg !1433
  br i1 %cmp30, label %done, label %if.end32, !dbg !1433

if.end32:                                         ; preds = %if.then27
  %33 = load i64* %newsizemax, align 8, !dbg !1435
  store i64 %33, i64* %newsize, align 8, !dbg !1435
  br label %if.end33, !dbg !1436

if.end33:                                         ; preds = %if.end32, %if.end24
  %34 = load i64* %newsize, align 8, !dbg !1437
  %35 = load i8** %read_pos, align 8, !dbg !1437
  %36 = load i8** %ptr, align 8, !dbg !1437
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64, !dbg !1437
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64, !dbg !1437
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1437
  %sub34 = sub i64 %34, %sub.ptr.sub, !dbg !1437
  store i64 %sub34, i64* %nbytes_avail, align 8, !dbg !1437
  %37 = load i8** %ptr, align 8, !dbg !1438
  %38 = load i64* %newsize, align 8, !dbg !1438
  %call35 = call i8* @realloc(i8* %37, i64 %38) #9, !dbg !1438
  store i8* %call35, i8** %newptr, align 8, !dbg !1438
  %39 = load i8** %newptr, align 8, !dbg !1439
  %tobool36 = icmp ne i8* %39, null, !dbg !1439
  br i1 %tobool36, label %if.end38, label %done, !dbg !1439

if.end38:                                         ; preds = %if.end33
  %40 = load i8** %newptr, align 8, !dbg !1441
  store i8* %40, i8** %ptr, align 8, !dbg !1441
  %41 = load i64* %newsize, align 8, !dbg !1442
  store i64 %41, i64* %size, align 8, !dbg !1442
  %42 = load i64* %size, align 8, !dbg !1443
  %43 = load i64* %nbytes_avail, align 8, !dbg !1443
  %sub39 = sub i64 %42, %43, !dbg !1443
  %44 = load i8** %ptr, align 8, !dbg !1443
  %add.ptr40 = getelementptr inbounds i8* %44, i64 %sub39, !dbg !1443
  store i8* %add.ptr40, i8** %read_pos, align 8, !dbg !1443
  br label %if.end41, !dbg !1444

if.end41:                                         ; preds = %if.end38, %land.lhs.true12, %for.cond
  %45 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1445
  %call42 = call i32 @getc_unlocked(%struct._IO_FILE* %45), !dbg !1445
  store i32 %call42, i32* %c, align 4, !dbg !1445
  %46 = load i32* %c, align 4, !dbg !1446
  %cmp43 = icmp eq i32 %46, -1, !dbg !1446
  br i1 %cmp43, label %if.then44, label %if.end47, !dbg !1446

if.then44:                                        ; preds = %if.end41
  %47 = load i8** %read_pos, align 8, !dbg !1448
  %48 = load i8** %ptr, align 8, !dbg !1448
  %cmp45 = icmp eq i8* %47, %48, !dbg !1448
  br i1 %cmp45, label %done, label %for.end, !dbg !1448

if.end47:                                         ; preds = %if.end41
  %49 = load i64* %nbytes_avail, align 8, !dbg !1451
  %cmp48 = icmp uge i64 %49, 2, !dbg !1451
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1451

if.then49:                                        ; preds = %if.end47
  %50 = load i32* %c, align 4, !dbg !1453
  %conv = trunc i32 %50 to i8, !dbg !1453
  %51 = load i8** %read_pos, align 8, !dbg !1453
  %incdec.ptr = getelementptr inbounds i8* %51, i32 1, !dbg !1453
  store i8* %incdec.ptr, i8** %read_pos, align 8, !dbg !1453
  store i8 %conv, i8* %51, align 1, !dbg !1453
  %52 = load i64* %nbytes_avail, align 8, !dbg !1455
  %dec = add i64 %52, -1, !dbg !1455
  store i64 %dec, i64* %nbytes_avail, align 8, !dbg !1455
  br label %if.end50, !dbg !1456

if.end50:                                         ; preds = %if.then49, %if.end47
  %53 = load i32* %c, align 4, !dbg !1457
  %54 = load i32* %delim1.addr, align 4, !dbg !1457
  %cmp51 = icmp eq i32 %53, %54, !dbg !1457
  br i1 %cmp51, label %for.end, label %lor.lhs.false, !dbg !1457

lor.lhs.false:                                    ; preds = %if.end50
  %55 = load i32* %c, align 4, !dbg !1457
  %56 = load i32* %delim2.addr, align 4, !dbg !1457
  %cmp53 = icmp eq i32 %55, %56, !dbg !1457
  br i1 %cmp53, label %for.end, label %for.cond, !dbg !1457

for.end:                                          ; preds = %if.end50, %lor.lhs.false, %if.then44
  %57 = load i8** %read_pos, align 8, !dbg !1459
  store i8 0, i8* %57, align 1, !dbg !1459
  %58 = load i8** %read_pos, align 8, !dbg !1460
  %59 = load i8** %ptr, align 8, !dbg !1460
  %60 = load i64* %offset.addr, align 8, !dbg !1460
  %add.ptr57 = getelementptr inbounds i8* %59, i64 %60, !dbg !1460
  %sub.ptr.lhs.cast58 = ptrtoint i8* %58 to i64, !dbg !1460
  %sub.ptr.rhs.cast59 = ptrtoint i8* %add.ptr57 to i64, !dbg !1460
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59, !dbg !1460
  store i64 %sub.ptr.sub60, i64* %bytes_stored, align 8, !dbg !1460
  br label %done, !dbg !1460

done:                                             ; preds = %if.then44, %if.end33, %if.then27, %land.lhs.true, %if.end3, %for.end
  %61 = load i8** %ptr, align 8, !dbg !1461
  %62 = load i8*** %lineptr.addr, align 8, !dbg !1461
  store i8* %61, i8** %62, align 8, !dbg !1461
  %63 = load i64* %size, align 8, !dbg !1462
  %64 = load i64** %linesize.addr, align 8, !dbg !1462
  store i64 %63, i64* %64, align 8, !dbg !1462
  %65 = load i64* %bytes_stored, align 8, !dbg !1463
  store i64 %65, i64* %retval, !dbg !1463
  br label %return, !dbg !1463

return:                                           ; preds = %done, %if.then2
  %66 = load i64* %retval, !dbg !1464
  ret i64 %66, !dbg !1464
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define i64 @hash_get_n_buckets(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1465
  %n_buckets = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 2, !dbg !1465
  %1 = load i64* %n_buckets, align 8, !dbg !1465
  ret i64 %1, !dbg !1465
}

; Function Attrs: nounwind uwtable
define i64 @hash_get_n_buckets_used(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1466
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 3, !dbg !1466
  %1 = load i64* %n_buckets_used, align 8, !dbg !1466
  ret i64 %1, !dbg !1466
}

; Function Attrs: nounwind uwtable
define i64 @hash_get_n_entries(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1467
  %n_entries = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 4, !dbg !1467
  %1 = load i64* %n_entries, align 8, !dbg !1467
  ret i64 %1, !dbg !1467
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
  store i64 0, i64* %max_bucket_length, align 8, !dbg !1468
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1469
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1469
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1469
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1469
  br label %for.cond, !dbg !1469

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1469
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1469
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1469
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1469
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1469
  br i1 %cmp, label %for.body, label %for.end, !dbg !1469

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1471
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1471
  %6 = load i8** %data, align 8, !dbg !1471
  %tobool = icmp ne i8* %6, null, !dbg !1471
  br i1 %tobool, label %if.then, label %for.inc, !dbg !1471

if.then:                                          ; preds = %for.body
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1474
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1474
  store i64 1, i64* %bucket_length, align 8, !dbg !1476
  br label %while.cond, !dbg !1477

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load %struct.hash_entry** %cursor, align 8, !dbg !1477
  %next = getelementptr inbounds %struct.hash_entry* %8, i32 0, i32 1, !dbg !1477
  %9 = load %struct.hash_entry** %next, align 8, !dbg !1477
  store %struct.hash_entry* %9, %struct.hash_entry** %cursor, align 8, !dbg !1477
  %10 = load %struct.hash_entry** %cursor, align 8, !dbg !1477
  %tobool2 = icmp ne %struct.hash_entry* %10, null, !dbg !1477
  %11 = load i64* %bucket_length, align 8, !dbg !1478
  br i1 %tobool2, label %while.body, label %while.end, !dbg !1477

while.body:                                       ; preds = %while.cond
  %inc = add i64 %11, 1, !dbg !1478
  store i64 %inc, i64* %bucket_length, align 8, !dbg !1478
  br label %while.cond, !dbg !1478

while.end:                                        ; preds = %while.cond
  %12 = load i64* %max_bucket_length, align 8, !dbg !1479
  %cmp3 = icmp ugt i64 %11, %12, !dbg !1479
  br i1 %cmp3, label %if.then4, label %for.inc, !dbg !1479

if.then4:                                         ; preds = %while.end
  %13 = load i64* %bucket_length, align 8, !dbg !1481
  store i64 %13, i64* %max_bucket_length, align 8, !dbg !1481
  br label %for.inc, !dbg !1481

for.inc:                                          ; preds = %for.body, %if.then4, %while.end
  %14 = load %struct.hash_entry** %bucket, align 8, !dbg !1469
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %14, i32 1, !dbg !1469
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1469
  br label %for.cond, !dbg !1469

for.end:                                          ; preds = %for.cond
  %15 = load i64* %max_bucket_length, align 8, !dbg !1482
  ret i64 %15, !dbg !1482
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
  store i64 0, i64* %n_buckets_used, align 8, !dbg !1483
  store i64 0, i64* %n_entries, align 8, !dbg !1484
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1485
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1485
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1485
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1485
  br label %for.cond, !dbg !1485

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1485
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1485
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1485
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1485
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1485
  br i1 %cmp, label %for.body, label %for.end, !dbg !1485

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1487
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1487
  %6 = load i8** %data, align 8, !dbg !1487
  %tobool = icmp ne i8* %6, null, !dbg !1487
  br i1 %tobool, label %if.then, label %for.inc, !dbg !1487

if.then:                                          ; preds = %for.body
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1490
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1490
  %8 = load i64* %n_buckets_used, align 8, !dbg !1492
  %inc = add i64 %8, 1, !dbg !1492
  store i64 %inc, i64* %n_buckets_used, align 8, !dbg !1492
  %9 = load i64* %n_entries, align 8, !dbg !1493
  %inc2 = add i64 %9, 1, !dbg !1493
  store i64 %inc2, i64* %n_entries, align 8, !dbg !1493
  br label %while.cond, !dbg !1494

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load %struct.hash_entry** %cursor, align 8, !dbg !1494
  %next = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 1, !dbg !1494
  %11 = load %struct.hash_entry** %next, align 8, !dbg !1494
  store %struct.hash_entry* %11, %struct.hash_entry** %cursor, align 8, !dbg !1494
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1494
  %tobool3 = icmp ne %struct.hash_entry* %12, null, !dbg !1494
  br i1 %tobool3, label %while.body, label %for.inc, !dbg !1494

while.body:                                       ; preds = %while.cond
  %13 = load i64* %n_entries, align 8, !dbg !1495
  %inc4 = add i64 %13, 1, !dbg !1495
  store i64 %inc4, i64* %n_entries, align 8, !dbg !1495
  br label %while.cond, !dbg !1495

for.inc:                                          ; preds = %for.body, %while.cond
  %14 = load %struct.hash_entry** %bucket, align 8, !dbg !1485
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %14, i32 1, !dbg !1485
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1485
  br label %for.cond, !dbg !1485

for.end:                                          ; preds = %for.cond
  %15 = load i64* %n_buckets_used, align 8, !dbg !1496
  %16 = load %struct.hash_table** %table.addr, align 8, !dbg !1496
  %n_buckets_used5 = getelementptr inbounds %struct.hash_table* %16, i32 0, i32 3, !dbg !1496
  %17 = load i64* %n_buckets_used5, align 8, !dbg !1496
  %cmp6 = icmp eq i64 %15, %17, !dbg !1496
  br i1 %cmp6, label %land.lhs.true, label %if.end10, !dbg !1496

land.lhs.true:                                    ; preds = %for.end
  %18 = load i64* %n_entries, align 8, !dbg !1496
  %19 = load %struct.hash_table** %table.addr, align 8, !dbg !1496
  %n_entries7 = getelementptr inbounds %struct.hash_table* %19, i32 0, i32 4, !dbg !1496
  %20 = load i64* %n_entries7, align 8, !dbg !1496
  %cmp8 = icmp eq i64 %18, %20, !dbg !1496
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1496

if.then9:                                         ; preds = %land.lhs.true
  store i1 true, i1* %retval, !dbg !1498
  br label %return, !dbg !1498

if.end10:                                         ; preds = %land.lhs.true, %for.end
  store i1 false, i1* %retval, !dbg !1499
  br label %return, !dbg !1499

return:                                           ; preds = %if.end10, %if.then9
  %21 = load i1* %retval, !dbg !1500
  ret i1 %21, !dbg !1500
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
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1501
  %call = call i64 @hash_get_n_entries(%struct.hash_table* %0), !dbg !1501
  store i64 %call, i64* %n_entries, align 8, !dbg !1501
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1502
  %call1 = call i64 @hash_get_n_buckets(%struct.hash_table* %1), !dbg !1502
  store i64 %call1, i64* %n_buckets, align 8, !dbg !1502
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1503
  %call2 = call i64 @hash_get_n_buckets_used(%struct.hash_table* %2), !dbg !1503
  store i64 %call2, i64* %n_buckets_used, align 8, !dbg !1503
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1504
  %call3 = call i64 @hash_get_max_bucket_length(%struct.hash_table* %3), !dbg !1504
  store i64 %call3, i64* %max_bucket_length, align 8, !dbg !1504
  %4 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1505
  %5 = load i64* %n_entries, align 8, !dbg !1505
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([24 x i8]* @.str90, i32 0, i32 0), i64 %5), !dbg !1505
  %6 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1506
  %7 = load i64* %n_buckets, align 8, !dbg !1506
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([24 x i8]* @.str191, i32 0, i32 0), i64 %7), !dbg !1506
  %8 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1507
  %9 = load i64* %n_buckets_used, align 8, !dbg !1507
  %10 = load i64* %n_buckets_used, align 8, !dbg !1507
  %conv = uitofp i64 %10 to double, !dbg !1507
  %mul = fmul double 1.000000e+02, %conv, !dbg !1507
  %11 = load i64* %n_buckets, align 8, !dbg !1507
  %conv6 = uitofp i64 %11 to double, !dbg !1507
  %div = fdiv double %mul, %conv6, !dbg !1507
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([33 x i8]* @.str292, i32 0, i32 0), i64 %9, double %div), !dbg !1507
  %12 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !1508
  %13 = load i64* %max_bucket_length, align 8, !dbg !1508
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([24 x i8]* @.str393, i32 0, i32 0), i64 %13), !dbg !1508
  ret void, !dbg !1509
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
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1510
  %bucket2 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1510
  %1 = load %struct.hash_entry** %bucket2, align 8, !dbg !1510
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1511
  %hasher = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 6, !dbg !1511
  %3 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1511
  %4 = load i8** %entry.addr, align 8, !dbg !1511
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1511
  %n_buckets = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 2, !dbg !1511
  %6 = load i64* %n_buckets, align 8, !dbg !1511
  %call = call i64 %3(i8* %4, i64 %6), !dbg !1511
  %add.ptr = getelementptr inbounds %struct.hash_entry* %1, i64 %call, !dbg !1511
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1511
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1512
  %8 = load %struct.hash_table** %table.addr, align 8, !dbg !1512
  %bucket_limit = getelementptr inbounds %struct.hash_table* %8, i32 0, i32 1, !dbg !1512
  %9 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1512
  %cmp = icmp ult %struct.hash_entry* %7, %9, !dbg !1512
  br i1 %cmp, label %if.end, label %if.then, !dbg !1512

if.then:                                          ; preds = %entry
  call void @abort() #16, !dbg !1514
  unreachable, !dbg !1514

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1515
  %data = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 0, !dbg !1515
  %11 = load i8** %data, align 8, !dbg !1515
  %cmp3 = icmp eq i8* %11, null, !dbg !1515
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1515

if.then4:                                         ; preds = %if.end
  store i8* null, i8** %retval, !dbg !1517
  br label %return, !dbg !1517

if.end5:                                          ; preds = %if.end
  %12 = load %struct.hash_entry** %bucket, align 8, !dbg !1518
  store %struct.hash_entry* %12, %struct.hash_entry** %cursor, align 8, !dbg !1518
  br label %for.cond, !dbg !1518

for.cond:                                         ; preds = %for.inc, %if.end5
  %13 = load %struct.hash_entry** %cursor, align 8, !dbg !1518
  %tobool = icmp ne %struct.hash_entry* %13, null, !dbg !1518
  br i1 %tobool, label %for.body, label %for.end, !dbg !1518

for.body:                                         ; preds = %for.cond
  %14 = load %struct.hash_table** %table.addr, align 8, !dbg !1520
  %comparator = getelementptr inbounds %struct.hash_table* %14, i32 0, i32 7, !dbg !1520
  %15 = load i1 (i8*, i8*)** %comparator, align 8, !dbg !1520
  %16 = load i8** %entry.addr, align 8, !dbg !1520
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1520
  %data6 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 0, !dbg !1520
  %18 = load i8** %data6, align 8, !dbg !1520
  %call7 = call zeroext i1 %15(i8* %16, i8* %18), !dbg !1520
  %19 = load %struct.hash_entry** %cursor, align 8, !dbg !1522
  br i1 %call7, label %if.then8, label %for.inc, !dbg !1520

if.then8:                                         ; preds = %for.body
  %data9 = getelementptr inbounds %struct.hash_entry* %19, i32 0, i32 0, !dbg !1522
  %20 = load i8** %data9, align 8, !dbg !1522
  store i8* %20, i8** %retval, !dbg !1522
  br label %return, !dbg !1522

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.hash_entry* %19, i32 0, i32 1, !dbg !1518
  %21 = load %struct.hash_entry** %next, align 8, !dbg !1518
  store %struct.hash_entry* %21, %struct.hash_entry** %cursor, align 8, !dbg !1518
  br label %for.cond, !dbg !1518

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, !dbg !1523
  br label %return, !dbg !1523

return:                                           ; preds = %for.end, %if.then8, %if.then4
  %22 = load i8** %retval, !dbg !1524
  ret i8* %22, !dbg !1524
}

; Function Attrs: nounwind uwtable
define i8* @hash_get_first(%struct.hash_table* %table) #0 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1525
  %n_entries = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 4, !dbg !1525
  %1 = load i64* %n_entries, align 8, !dbg !1525
  %cmp = icmp eq i64 %1, 0, !dbg !1525
  br i1 %cmp, label %if.then, label %if.end, !dbg !1525

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1527
  br label %return, !dbg !1527

if.end:                                           ; preds = %entry
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1528
  %bucket1 = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 0, !dbg !1528
  %3 = load %struct.hash_entry** %bucket1, align 8, !dbg !1528
  store %struct.hash_entry* %3, %struct.hash_entry** %bucket, align 8, !dbg !1528
  br label %for.cond, !dbg !1528

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.hash_entry** %bucket, align 8, !dbg !1530
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1530
  %bucket_limit = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 1, !dbg !1530
  %6 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1530
  %cmp2 = icmp ult %struct.hash_entry* %4, %6, !dbg !1530
  br i1 %cmp2, label %if.else, label %if.then3, !dbg !1530

if.then3:                                         ; preds = %for.cond
  call void @abort() #16, !dbg !1532
  unreachable, !dbg !1532

if.else:                                          ; preds = %for.cond
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1533
  %data = getelementptr inbounds %struct.hash_entry* %7, i32 0, i32 0, !dbg !1533
  %8 = load i8** %data, align 8, !dbg !1533
  %tobool = icmp ne i8* %8, null, !dbg !1533
  %9 = load %struct.hash_entry** %bucket, align 8, !dbg !1535
  br i1 %tobool, label %if.then4, label %for.inc, !dbg !1533

if.then4:                                         ; preds = %if.else
  %data5 = getelementptr inbounds %struct.hash_entry* %9, i32 0, i32 0, !dbg !1535
  %10 = load i8** %data5, align 8, !dbg !1535
  store i8* %10, i8** %retval, !dbg !1535
  br label %return, !dbg !1535

for.inc:                                          ; preds = %if.else
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %9, i32 1, !dbg !1528
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1528
  br label %for.cond, !dbg !1528

return:                                           ; preds = %if.then4, %if.then
  %11 = load i8** %retval, !dbg !1536
  ret i8* %11, !dbg !1536
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
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1537
  %bucket2 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1537
  %1 = load %struct.hash_entry** %bucket2, align 8, !dbg !1537
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1538
  %hasher = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 6, !dbg !1538
  %3 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1538
  %4 = load i8** %entry.addr, align 8, !dbg !1538
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1538
  %n_buckets = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 2, !dbg !1538
  %6 = load i64* %n_buckets, align 8, !dbg !1538
  %call = call i64 %3(i8* %4, i64 %6), !dbg !1538
  %add.ptr = getelementptr inbounds %struct.hash_entry* %1, i64 %call, !dbg !1538
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1538
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1539
  %8 = load %struct.hash_table** %table.addr, align 8, !dbg !1539
  %bucket_limit = getelementptr inbounds %struct.hash_table* %8, i32 0, i32 1, !dbg !1539
  %9 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1539
  %cmp = icmp ult %struct.hash_entry* %7, %9, !dbg !1539
  br i1 %cmp, label %if.end, label %if.then, !dbg !1539

if.then:                                          ; preds = %entry
  call void @abort() #16, !dbg !1541
  unreachable, !dbg !1541

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1542
  store %struct.hash_entry* %10, %struct.hash_entry** %cursor, align 8, !dbg !1542
  br label %for.cond, !dbg !1542

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.hash_entry** %cursor, align 8, !dbg !1542
  %tobool = icmp ne %struct.hash_entry* %11, null, !dbg !1542
  br i1 %tobool, label %for.body, label %while.cond, !dbg !1542

for.body:                                         ; preds = %for.cond
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1544
  %data = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 0, !dbg !1544
  %13 = load i8** %data, align 8, !dbg !1544
  %14 = load i8** %entry.addr, align 8, !dbg !1544
  %cmp3 = icmp eq i8* %13, %14, !dbg !1544
  br i1 %cmp3, label %land.lhs.true, label %for.inc, !dbg !1544

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct.hash_entry** %cursor, align 8, !dbg !1544
  %next = getelementptr inbounds %struct.hash_entry* %15, i32 0, i32 1, !dbg !1544
  %16 = load %struct.hash_entry** %next, align 8, !dbg !1544
  %tobool4 = icmp ne %struct.hash_entry* %16, null, !dbg !1544
  br i1 %tobool4, label %if.then5, label %for.inc, !dbg !1544

if.then5:                                         ; preds = %land.lhs.true
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1546
  %next6 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 1, !dbg !1546
  %18 = load %struct.hash_entry** %next6, align 8, !dbg !1546
  %data7 = getelementptr inbounds %struct.hash_entry* %18, i32 0, i32 0, !dbg !1546
  %19 = load i8** %data7, align 8, !dbg !1546
  store i8* %19, i8** %retval, !dbg !1546
  br label %return, !dbg !1546

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %20 = load %struct.hash_entry** %cursor, align 8, !dbg !1542
  %next9 = getelementptr inbounds %struct.hash_entry* %20, i32 0, i32 1, !dbg !1542
  %21 = load %struct.hash_entry** %next9, align 8, !dbg !1542
  store %struct.hash_entry* %21, %struct.hash_entry** %cursor, align 8, !dbg !1542
  br label %for.cond, !dbg !1542

while.cond:                                       ; preds = %while.body, %for.cond
  %22 = load %struct.hash_entry** %bucket, align 8, !dbg !1547
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %22, i32 1, !dbg !1547
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1547
  %23 = load %struct.hash_table** %table.addr, align 8, !dbg !1547
  %bucket_limit10 = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 1, !dbg !1547
  %24 = load %struct.hash_entry** %bucket_limit10, align 8, !dbg !1547
  %cmp11 = icmp ult %struct.hash_entry* %incdec.ptr, %24, !dbg !1547
  br i1 %cmp11, label %while.body, label %while.end, !dbg !1547

while.body:                                       ; preds = %while.cond
  %25 = load %struct.hash_entry** %bucket, align 8, !dbg !1548
  %data12 = getelementptr inbounds %struct.hash_entry* %25, i32 0, i32 0, !dbg !1548
  %26 = load i8** %data12, align 8, !dbg !1548
  %tobool13 = icmp ne i8* %26, null, !dbg !1548
  br i1 %tobool13, label %if.then14, label %while.cond, !dbg !1548

if.then14:                                        ; preds = %while.body
  %27 = load %struct.hash_entry** %bucket, align 8, !dbg !1550
  %data15 = getelementptr inbounds %struct.hash_entry* %27, i32 0, i32 0, !dbg !1550
  %28 = load i8** %data15, align 8, !dbg !1550
  store i8* %28, i8** %retval, !dbg !1550
  br label %return, !dbg !1550

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, !dbg !1551
  br label %return, !dbg !1551

return:                                           ; preds = %while.end, %if.then14, %if.then5
  %29 = load i8** %retval, !dbg !1552
  ret i8* %29, !dbg !1552
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
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64 %buffer_size, i64* %buffer_size.addr, align 8
  store i64 0, i64* %counter, align 8, !dbg !1553
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1554
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1554
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1554
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1554
  br label %for.cond, !dbg !1554

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1554
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1554
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1554
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1554
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1554
  br i1 %cmp, label %for.body, label %for.end10, !dbg !1554

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1556
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1556
  %6 = load i8** %data, align 8, !dbg !1556
  %tobool = icmp ne i8* %6, null, !dbg !1556
  br i1 %tobool, label %if.then, label %for.inc9, !dbg !1556

if.then:                                          ; preds = %for.body
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1559
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1559
  br label %for.cond2, !dbg !1559

for.cond2:                                        ; preds = %if.end, %if.then
  %8 = load %struct.hash_entry** %cursor, align 8, !dbg !1559
  %tobool3 = icmp ne %struct.hash_entry* %8, null, !dbg !1559
  br i1 %tobool3, label %for.body4, label %for.inc9, !dbg !1559

for.body4:                                        ; preds = %for.cond2
  %9 = load i64* %counter, align 8, !dbg !1562
  %10 = load i64* %buffer_size.addr, align 8, !dbg !1562
  %cmp5 = icmp uge i64 %9, %10, !dbg !1562
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !1562

if.then6:                                         ; preds = %for.body4
  %11 = load i64* %counter, align 8, !dbg !1565
  store i64 %11, i64* %retval, !dbg !1565
  br label %return, !dbg !1565

if.end:                                           ; preds = %for.body4
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1566
  %data7 = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 0, !dbg !1566
  %13 = load i8** %data7, align 8, !dbg !1566
  %14 = load i64* %counter, align 8, !dbg !1566
  %inc = add i64 %14, 1, !dbg !1566
  store i64 %inc, i64* %counter, align 8, !dbg !1566
  %15 = load i8*** %buffer.addr, align 8, !dbg !1566
  %arrayidx = getelementptr inbounds i8** %15, i64 %14, !dbg !1566
  store i8* %13, i8** %arrayidx, align 8, !dbg !1566
  %16 = load %struct.hash_entry** %cursor, align 8, !dbg !1559
  %next = getelementptr inbounds %struct.hash_entry* %16, i32 0, i32 1, !dbg !1559
  %17 = load %struct.hash_entry** %next, align 8, !dbg !1559
  store %struct.hash_entry* %17, %struct.hash_entry** %cursor, align 8, !dbg !1559
  br label %for.cond2, !dbg !1559

for.inc9:                                         ; preds = %for.body, %for.cond2
  %18 = load %struct.hash_entry** %bucket, align 8, !dbg !1554
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %18, i32 1, !dbg !1554
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1554
  br label %for.cond, !dbg !1554

for.end10:                                        ; preds = %for.cond
  %19 = load i64* %counter, align 8, !dbg !1567
  store i64 %19, i64* %retval, !dbg !1567
  br label %return, !dbg !1567

return:                                           ; preds = %for.end10, %if.then6
  %20 = load i64* %retval, !dbg !1568
  ret i64 %20, !dbg !1568
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
  store i1 (i8*, i8*)* %processor, i1 (i8*, i8*)** %processor.addr, align 8
  store i8* %processor_data, i8** %processor_data.addr, align 8
  store i64 0, i64* %counter, align 8, !dbg !1569
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1570
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1570
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1570
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1570
  br label %for.cond, !dbg !1570

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1570
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1570
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1570
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1570
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1570
  br i1 %cmp, label %for.body, label %for.end9, !dbg !1570

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1572
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1572
  %6 = load i8** %data, align 8, !dbg !1572
  %tobool = icmp ne i8* %6, null, !dbg !1572
  br i1 %tobool, label %if.then, label %for.inc8, !dbg !1572

if.then:                                          ; preds = %for.body
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1575
  store %struct.hash_entry* %7, %struct.hash_entry** %cursor, align 8, !dbg !1575
  br label %for.cond2, !dbg !1575

for.cond2:                                        ; preds = %if.end, %if.then
  %8 = load %struct.hash_entry** %cursor, align 8, !dbg !1575
  %tobool3 = icmp ne %struct.hash_entry* %8, null, !dbg !1575
  br i1 %tobool3, label %for.body4, label %for.inc8, !dbg !1575

for.body4:                                        ; preds = %for.cond2
  %9 = load i1 (i8*, i8*)** %processor.addr, align 8, !dbg !1578
  %10 = load %struct.hash_entry** %cursor, align 8, !dbg !1578
  %data5 = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 0, !dbg !1578
  %11 = load i8** %data5, align 8, !dbg !1578
  %12 = load i8** %processor_data.addr, align 8, !dbg !1578
  %call = call zeroext i1 %9(i8* %11, i8* %12), !dbg !1578
  %13 = load i64* %counter, align 8, !dbg !1581
  br i1 %call, label %if.end, label %if.then6, !dbg !1578

if.then6:                                         ; preds = %for.body4
  store i64 %13, i64* %retval, !dbg !1582
  br label %return, !dbg !1582

if.end:                                           ; preds = %for.body4
  %inc = add i64 %13, 1, !dbg !1581
  store i64 %inc, i64* %counter, align 8, !dbg !1581
  %14 = load %struct.hash_entry** %cursor, align 8, !dbg !1575
  %next = getelementptr inbounds %struct.hash_entry* %14, i32 0, i32 1, !dbg !1575
  %15 = load %struct.hash_entry** %next, align 8, !dbg !1575
  store %struct.hash_entry* %15, %struct.hash_entry** %cursor, align 8, !dbg !1575
  br label %for.cond2, !dbg !1575

for.inc8:                                         ; preds = %for.body, %for.cond2
  %16 = load %struct.hash_entry** %bucket, align 8, !dbg !1570
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %16, i32 1, !dbg !1570
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1570
  br label %for.cond, !dbg !1570

for.end9:                                         ; preds = %for.cond
  %17 = load i64* %counter, align 8, !dbg !1583
  store i64 %17, i64* %retval, !dbg !1583
  br label %return, !dbg !1583

return:                                           ; preds = %for.end9, %if.then6
  %18 = load i64* %retval, !dbg !1584
  ret i64 %18, !dbg !1584
}

; Function Attrs: nounwind uwtable
define i64 @hash_string(i8* %string, i64 %n_buckets) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %n_buckets.addr = alloca i64, align 8
  %value = alloca i64, align 8
  %ch = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 8
  store i64 %n_buckets, i64* %n_buckets.addr, align 8
  store i64 0, i64* %value, align 8, !dbg !1585
  br label %for.cond, !dbg !1586

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i8** %string.addr, align 8, !dbg !1586
  %1 = load i8* %0, align 1, !dbg !1586
  store i8 %1, i8* %ch, align 1, !dbg !1586
  %tobool = icmp ne i8 %1, 0, !dbg !1586
  %2 = load i64* %value, align 8, !dbg !1588
  br i1 %tobool, label %for.body, label %for.end, !dbg !1586

for.body:                                         ; preds = %for.cond
  %mul = mul i64 %2, 31, !dbg !1588
  %3 = load i8* %ch, align 1, !dbg !1588
  %conv = zext i8 %3 to i64, !dbg !1588
  %add = add i64 %mul, %conv, !dbg !1588
  %4 = load i64* %n_buckets.addr, align 8, !dbg !1588
  %int_cast_to_i64 = bitcast i64 %4 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1588
  %rem = urem i64 %add, %4, !dbg !1588
  store i64 %rem, i64* %value, align 8, !dbg !1588
  %5 = load i8** %string.addr, align 8, !dbg !1586
  %incdec.ptr = getelementptr inbounds i8* %5, i32 1, !dbg !1586
  store i8* %incdec.ptr, i8** %string.addr, align 8, !dbg !1586
  br label %for.cond, !dbg !1586

for.end:                                          ; preds = %for.cond
  ret i64 %2, !dbg !1589
}

; Function Attrs: nounwind uwtable
define void @hash_reset_tuning(%struct.hash_tuning* %tuning) #0 {
entry:
  %tuning.addr = alloca %struct.hash_tuning*, align 8
  store %struct.hash_tuning* %tuning, %struct.hash_tuning** %tuning.addr, align 8
  %0 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1590
  %1 = bitcast %struct.hash_tuning* %0 to i8*, !dbg !1590
  %2 = call i8* @memcpy(i8* %1, i8* bitcast ({ float, float, float, float, i8, [3 x i8] }* @default_tuning to i8*), i64 20)
  ret void, !dbg !1591
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
  store %struct.hash_tuning* %tuning, %struct.hash_tuning** %tuning.addr, align 8
  store i64 (i8*, i64)* %hasher, i64 (i8*, i64)** %hasher.addr, align 8
  store i1 (i8*, i8*)* %comparator, i1 (i8*, i8*)** %comparator.addr, align 8
  store void (i8*)* %data_freer, void (i8*)** %data_freer.addr, align 8
  %0 = load i64 (i8*, i64)** %hasher.addr, align 8, !dbg !1592
  %cmp = icmp eq i64 (i8*, i64)* %0, null, !dbg !1592
  %1 = load i1 (i8*, i8*)** %comparator.addr, align 8, !dbg !1592
  %cmp1 = icmp eq i1 (i8*, i8*)* %1, null, !dbg !1592
  %or.cond = or i1 %cmp, %cmp1, !dbg !1592
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1592

if.then:                                          ; preds = %entry
  store %struct.hash_table* null, %struct.hash_table** %retval, !dbg !1594
  br label %return, !dbg !1594

if.end:                                           ; preds = %entry
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
  br i1 %call8, label %if.end10, label %fail, !dbg !1603

if.end10:                                         ; preds = %if.end6
  %8 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1605
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning* %8, i32 0, i32 4, !dbg !1605
  %9 = load i8* %is_n_buckets, align 1, !dbg !1605
  %tobool11 = trunc i8 %9 to i1, !dbg !1605
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !1605

if.then12:                                        ; preds = %if.end10
  %10 = load i64* %candidate.addr, align 8, !dbg !1607
  %conv = uitofp i64 %10 to float, !dbg !1607
  %11 = load %struct.hash_tuning** %tuning.addr, align 8, !dbg !1607
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %11, i32 0, i32 2, !dbg !1607
  %12 = load float* %growth_threshold, align 4, !dbg !1607
  %div = fdiv float %conv, %12, !dbg !1607
  store float %div, float* %new_candidate, align 4, !dbg !1607
  %13 = load float* %new_candidate, align 4, !dbg !1609
  %cmp13 = fcmp ole float 0x43F0000000000000, %13, !dbg !1609
  br i1 %cmp13, label %fail, label %if.end16, !dbg !1609

if.end16:                                         ; preds = %if.then12
  %14 = load float* %new_candidate, align 4, !dbg !1611
  %conv17 = fptoui float %14 to i64, !dbg !1611
  store i64 %conv17, i64* %candidate.addr, align 8, !dbg !1611
  br label %if.end18, !dbg !1612

if.end18:                                         ; preds = %if.end16, %if.end10
  %15 = load i64* %candidate.addr, align 8, !dbg !1613
  %cmp19 = icmp ult i64 1152921504606846975, %15, !dbg !1613
  br i1 %cmp19, label %fail, label %if.end22, !dbg !1613

if.end22:                                         ; preds = %if.end18
  %16 = load i64* %candidate.addr, align 8, !dbg !1615
  %call23 = call i64 @next_prime(i64 %16), !dbg !1615
  %17 = load %struct.hash_table** %table, align 8, !dbg !1615
  %n_buckets = getelementptr inbounds %struct.hash_table* %17, i32 0, i32 2, !dbg !1615
  store i64 %call23, i64* %n_buckets, align 8, !dbg !1615
  %18 = load %struct.hash_table** %table, align 8, !dbg !1616
  %n_buckets24 = getelementptr inbounds %struct.hash_table* %18, i32 0, i32 2, !dbg !1616
  %19 = load i64* %n_buckets24, align 8, !dbg !1616
  %cmp25 = icmp ult i64 1152921504606846975, %19, !dbg !1616
  br i1 %cmp25, label %fail, label %if.end28, !dbg !1616

if.end28:                                         ; preds = %if.end22
  %20 = load %struct.hash_table** %table, align 8, !dbg !1618
  %n_buckets29 = getelementptr inbounds %struct.hash_table* %20, i32 0, i32 2, !dbg !1618
  %21 = load i64* %n_buckets29, align 8, !dbg !1618
  %call30 = call noalias i8* @calloc(i64 %21, i64 16) #9, !dbg !1618
  %22 = bitcast i8* %call30 to %struct.hash_entry*, !dbg !1618
  %23 = load %struct.hash_table** %table, align 8, !dbg !1618
  %bucket = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 0, !dbg !1618
  store %struct.hash_entry* %22, %struct.hash_entry** %bucket, align 8, !dbg !1618
  %24 = load %struct.hash_table** %table, align 8, !dbg !1619
  %bucket31 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 0, !dbg !1619
  %25 = load %struct.hash_entry** %bucket31, align 8, !dbg !1619
  %26 = load %struct.hash_table** %table, align 8, !dbg !1619
  %n_buckets32 = getelementptr inbounds %struct.hash_table* %26, i32 0, i32 2, !dbg !1619
  %27 = load i64* %n_buckets32, align 8, !dbg !1619
  %add.ptr = getelementptr inbounds %struct.hash_entry* %25, i64 %27, !dbg !1619
  %28 = load %struct.hash_table** %table, align 8, !dbg !1619
  %bucket_limit = getelementptr inbounds %struct.hash_table* %28, i32 0, i32 1, !dbg !1619
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket_limit, align 8, !dbg !1619
  %29 = load %struct.hash_table** %table, align 8, !dbg !1620
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %29, i32 0, i32 3, !dbg !1620
  store i64 0, i64* %n_buckets_used, align 8, !dbg !1620
  %30 = load %struct.hash_table** %table, align 8, !dbg !1621
  %n_entries = getelementptr inbounds %struct.hash_table* %30, i32 0, i32 4, !dbg !1621
  store i64 0, i64* %n_entries, align 8, !dbg !1621
  %31 = load i64 (i8*, i64)** %hasher.addr, align 8, !dbg !1622
  %32 = load %struct.hash_table** %table, align 8, !dbg !1622
  %hasher33 = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 6, !dbg !1622
  store i64 (i8*, i64)* %31, i64 (i8*, i64)** %hasher33, align 8, !dbg !1622
  %33 = load i1 (i8*, i8*)** %comparator.addr, align 8, !dbg !1623
  %34 = load %struct.hash_table** %table, align 8, !dbg !1623
  %comparator34 = getelementptr inbounds %struct.hash_table* %34, i32 0, i32 7, !dbg !1623
  store i1 (i8*, i8*)* %33, i1 (i8*, i8*)** %comparator34, align 8, !dbg !1623
  %35 = load void (i8*)** %data_freer.addr, align 8, !dbg !1624
  %36 = load %struct.hash_table** %table, align 8, !dbg !1624
  %data_freer35 = getelementptr inbounds %struct.hash_table* %36, i32 0, i32 8, !dbg !1624
  store void (i8*)* %35, void (i8*)** %data_freer35, align 8, !dbg !1624
  %37 = load %struct.hash_table** %table, align 8, !dbg !1625
  %free_entry_list = getelementptr inbounds %struct.hash_table* %37, i32 0, i32 9, !dbg !1625
  store %struct.hash_entry* null, %struct.hash_entry** %free_entry_list, align 8, !dbg !1625
  %38 = load %struct.hash_table** %table, align 8, !dbg !1626
  store %struct.hash_table* %38, %struct.hash_table** %retval, !dbg !1626
  br label %return, !dbg !1626

fail:                                             ; preds = %if.end22, %if.end18, %if.then12, %if.end6
  %39 = load %struct.hash_table** %table, align 8, !dbg !1627
  %40 = bitcast %struct.hash_table* %39 to i8*, !dbg !1627
  call void @free(i8* %40) #9, !dbg !1627
  store %struct.hash_table* null, %struct.hash_table** %retval, !dbg !1628
  br label %return, !dbg !1628

return:                                           ; preds = %fail, %if.end28, %if.then3, %if.then
  %41 = load %struct.hash_table** %retval, !dbg !1629
  ret %struct.hash_table* %41, !dbg !1629
}

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
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1630
  %bucket1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1630
  %1 = load %struct.hash_entry** %bucket1, align 8, !dbg !1630
  store %struct.hash_entry* %1, %struct.hash_entry** %bucket, align 8, !dbg !1630
  br label %for.cond, !dbg !1630

for.cond:                                         ; preds = %for.inc23, %entry
  %2 = load %struct.hash_entry** %bucket, align 8, !dbg !1630
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1630
  %bucket_limit = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 1, !dbg !1630
  %4 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1630
  %cmp = icmp ult %struct.hash_entry* %2, %4, !dbg !1630
  br i1 %cmp, label %for.body, label %for.end24, !dbg !1630

for.body:                                         ; preds = %for.cond
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1632
  %data = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1632
  %6 = load i8** %data, align 8, !dbg !1632
  %tobool = icmp ne i8* %6, null, !dbg !1632
  br i1 %tobool, label %if.then, label %for.inc23, !dbg !1632

if.then:                                          ; preds = %for.body
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1635
  %next2 = getelementptr inbounds %struct.hash_entry* %7, i32 0, i32 1, !dbg !1635
  %8 = load %struct.hash_entry** %next2, align 8, !dbg !1635
  store %struct.hash_entry* %8, %struct.hash_entry** %cursor, align 8, !dbg !1635
  br label %for.cond3, !dbg !1635

for.cond3:                                        ; preds = %if.end, %if.then
  %9 = load %struct.hash_entry** %cursor, align 8, !dbg !1635
  %tobool4 = icmp ne %struct.hash_entry* %9, null, !dbg !1635
  %10 = load %struct.hash_table** %table.addr, align 8, !dbg !1638
  %data_freer = getelementptr inbounds %struct.hash_table* %10, i32 0, i32 8, !dbg !1638
  %11 = load void (i8*)** %data_freer, align 8, !dbg !1638
  %tobool6 = icmp ne void (i8*)* %11, null, !dbg !1638
  br i1 %tobool4, label %for.body5, label %for.end, !dbg !1635

for.body5:                                        ; preds = %for.cond3
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !1638

if.then7:                                         ; preds = %for.body5
  %12 = load %struct.hash_table** %table.addr, align 8, !dbg !1641
  %data_freer8 = getelementptr inbounds %struct.hash_table* %12, i32 0, i32 8, !dbg !1641
  %13 = load void (i8*)** %data_freer8, align 8, !dbg !1641
  %14 = load %struct.hash_entry** %cursor, align 8, !dbg !1641
  %data9 = getelementptr inbounds %struct.hash_entry* %14, i32 0, i32 0, !dbg !1641
  %15 = load i8** %data9, align 8, !dbg !1641
  call void %13(i8* %15), !dbg !1641
  br label %if.end, !dbg !1641

if.end:                                           ; preds = %if.then7, %for.body5
  %16 = load %struct.hash_entry** %cursor, align 8, !dbg !1642
  %data10 = getelementptr inbounds %struct.hash_entry* %16, i32 0, i32 0, !dbg !1642
  store i8* null, i8** %data10, align 8, !dbg !1642
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1643
  %next11 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 1, !dbg !1643
  %18 = load %struct.hash_entry** %next11, align 8, !dbg !1643
  store %struct.hash_entry* %18, %struct.hash_entry** %next, align 8, !dbg !1643
  %19 = load %struct.hash_table** %table.addr, align 8, !dbg !1644
  %free_entry_list = getelementptr inbounds %struct.hash_table* %19, i32 0, i32 9, !dbg !1644
  %20 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1644
  %21 = load %struct.hash_entry** %cursor, align 8, !dbg !1644
  %next12 = getelementptr inbounds %struct.hash_entry* %21, i32 0, i32 1, !dbg !1644
  store %struct.hash_entry* %20, %struct.hash_entry** %next12, align 8, !dbg !1644
  %22 = load %struct.hash_entry** %cursor, align 8, !dbg !1645
  %23 = load %struct.hash_table** %table.addr, align 8, !dbg !1645
  %free_entry_list13 = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 9, !dbg !1645
  store %struct.hash_entry* %22, %struct.hash_entry** %free_entry_list13, align 8, !dbg !1645
  %24 = load %struct.hash_entry** %next, align 8, !dbg !1635
  store %struct.hash_entry* %24, %struct.hash_entry** %cursor, align 8, !dbg !1635
  br label %for.cond3, !dbg !1635

for.end:                                          ; preds = %for.cond3
  br i1 %tobool6, label %if.then16, label %if.end19, !dbg !1646

if.then16:                                        ; preds = %for.end
  %25 = load %struct.hash_table** %table.addr, align 8, !dbg !1648
  %data_freer17 = getelementptr inbounds %struct.hash_table* %25, i32 0, i32 8, !dbg !1648
  %26 = load void (i8*)** %data_freer17, align 8, !dbg !1648
  %27 = load %struct.hash_entry** %bucket, align 8, !dbg !1648
  %data18 = getelementptr inbounds %struct.hash_entry* %27, i32 0, i32 0, !dbg !1648
  %28 = load i8** %data18, align 8, !dbg !1648
  call void %26(i8* %28), !dbg !1648
  br label %if.end19, !dbg !1648

if.end19:                                         ; preds = %if.then16, %for.end
  %29 = load %struct.hash_entry** %bucket, align 8, !dbg !1649
  %data20 = getelementptr inbounds %struct.hash_entry* %29, i32 0, i32 0, !dbg !1649
  store i8* null, i8** %data20, align 8, !dbg !1649
  %30 = load %struct.hash_entry** %bucket, align 8, !dbg !1650
  %next21 = getelementptr inbounds %struct.hash_entry* %30, i32 0, i32 1, !dbg !1650
  store %struct.hash_entry* null, %struct.hash_entry** %next21, align 8, !dbg !1650
  br label %for.inc23, !dbg !1651

for.inc23:                                        ; preds = %for.body, %if.end19
  %31 = load %struct.hash_entry** %bucket, align 8, !dbg !1630
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %31, i32 1, !dbg !1630
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1630
  br label %for.cond, !dbg !1630

for.end24:                                        ; preds = %for.cond
  %32 = load %struct.hash_table** %table.addr, align 8, !dbg !1652
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 3, !dbg !1652
  store i64 0, i64* %n_buckets_used, align 8, !dbg !1652
  %33 = load %struct.hash_table** %table.addr, align 8, !dbg !1653
  %n_entries = getelementptr inbounds %struct.hash_table* %33, i32 0, i32 4, !dbg !1653
  store i64 0, i64* %n_entries, align 8, !dbg !1653
  ret void, !dbg !1654
}

; Function Attrs: nounwind uwtable
define void @hash_free(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1655
  %data_freer = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 8, !dbg !1655
  %1 = load void (i8*)** %data_freer, align 8, !dbg !1655
  %tobool = icmp ne void (i8*)* %1, null, !dbg !1655
  br i1 %tobool, label %land.lhs.true, label %if.end13, !dbg !1655

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1655
  %n_entries = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 4, !dbg !1655
  %3 = load i64* %n_entries, align 8, !dbg !1655
  %tobool1 = icmp ne i64 %3, 0, !dbg !1655
  br i1 %tobool1, label %if.then, label %if.end13, !dbg !1655

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.hash_table** %table.addr, align 8, !dbg !1657
  %bucket2 = getelementptr inbounds %struct.hash_table* %4, i32 0, i32 0, !dbg !1657
  %5 = load %struct.hash_entry** %bucket2, align 8, !dbg !1657
  store %struct.hash_entry* %5, %struct.hash_entry** %bucket, align 8, !dbg !1657
  br label %for.cond, !dbg !1657

for.cond:                                         ; preds = %for.inc11, %if.then
  %6 = load %struct.hash_entry** %bucket, align 8, !dbg !1657
  %7 = load %struct.hash_table** %table.addr, align 8, !dbg !1657
  %bucket_limit = getelementptr inbounds %struct.hash_table* %7, i32 0, i32 1, !dbg !1657
  %8 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1657
  %cmp = icmp ult %struct.hash_entry* %6, %8, !dbg !1657
  br i1 %cmp, label %for.body, label %if.end13, !dbg !1657

for.body:                                         ; preds = %for.cond
  %9 = load %struct.hash_entry** %bucket, align 8, !dbg !1660
  %data = getelementptr inbounds %struct.hash_entry* %9, i32 0, i32 0, !dbg !1660
  %10 = load i8** %data, align 8, !dbg !1660
  %tobool3 = icmp ne i8* %10, null, !dbg !1660
  br i1 %tobool3, label %if.then4, label %for.inc11, !dbg !1660

if.then4:                                         ; preds = %for.body
  %11 = load %struct.hash_entry** %bucket, align 8, !dbg !1663
  store %struct.hash_entry* %11, %struct.hash_entry** %cursor, align 8, !dbg !1663
  br label %for.cond5, !dbg !1663

for.cond5:                                        ; preds = %for.body7, %if.then4
  %12 = load %struct.hash_entry** %cursor, align 8, !dbg !1663
  %tobool6 = icmp ne %struct.hash_entry* %12, null, !dbg !1663
  br i1 %tobool6, label %for.body7, label %for.inc11, !dbg !1663

for.body7:                                        ; preds = %for.cond5
  %13 = load %struct.hash_table** %table.addr, align 8, !dbg !1666
  %data_freer8 = getelementptr inbounds %struct.hash_table* %13, i32 0, i32 8, !dbg !1666
  %14 = load void (i8*)** %data_freer8, align 8, !dbg !1666
  %15 = load %struct.hash_entry** %cursor, align 8, !dbg !1666
  %data9 = getelementptr inbounds %struct.hash_entry* %15, i32 0, i32 0, !dbg !1666
  %16 = load i8** %data9, align 8, !dbg !1666
  call void %14(i8* %16), !dbg !1666
  %17 = load %struct.hash_entry** %cursor, align 8, !dbg !1663
  %next10 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 1, !dbg !1663
  %18 = load %struct.hash_entry** %next10, align 8, !dbg !1663
  store %struct.hash_entry* %18, %struct.hash_entry** %cursor, align 8, !dbg !1663
  br label %for.cond5, !dbg !1663

for.inc11:                                        ; preds = %for.body, %for.cond5
  %19 = load %struct.hash_entry** %bucket, align 8, !dbg !1657
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %19, i32 1, !dbg !1657
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1657
  br label %for.cond, !dbg !1657

if.end13:                                         ; preds = %for.cond, %land.lhs.true, %entry
  %20 = load %struct.hash_table** %table.addr, align 8, !dbg !1668
  %bucket14 = getelementptr inbounds %struct.hash_table* %20, i32 0, i32 0, !dbg !1668
  %21 = load %struct.hash_entry** %bucket14, align 8, !dbg !1668
  store %struct.hash_entry* %21, %struct.hash_entry** %bucket, align 8, !dbg !1668
  br label %for.cond15, !dbg !1668

for.cond15:                                       ; preds = %for.inc26, %if.end13
  %22 = load %struct.hash_entry** %bucket, align 8, !dbg !1668
  %23 = load %struct.hash_table** %table.addr, align 8, !dbg !1668
  %bucket_limit16 = getelementptr inbounds %struct.hash_table* %23, i32 0, i32 1, !dbg !1668
  %24 = load %struct.hash_entry** %bucket_limit16, align 8, !dbg !1668
  %cmp17 = icmp ult %struct.hash_entry* %22, %24, !dbg !1668
  br i1 %cmp17, label %for.body18, label %for.end28, !dbg !1668

for.body18:                                       ; preds = %for.cond15
  %25 = load %struct.hash_entry** %bucket, align 8, !dbg !1670
  %next19 = getelementptr inbounds %struct.hash_entry* %25, i32 0, i32 1, !dbg !1670
  %26 = load %struct.hash_entry** %next19, align 8, !dbg !1670
  store %struct.hash_entry* %26, %struct.hash_entry** %cursor, align 8, !dbg !1670
  br label %for.cond20, !dbg !1670

for.cond20:                                       ; preds = %for.body22, %for.body18
  %27 = load %struct.hash_entry** %cursor, align 8, !dbg !1670
  %tobool21 = icmp ne %struct.hash_entry* %27, null, !dbg !1670
  br i1 %tobool21, label %for.body22, label %for.inc26, !dbg !1670

for.body22:                                       ; preds = %for.cond20
  %28 = load %struct.hash_entry** %cursor, align 8, !dbg !1673
  %next23 = getelementptr inbounds %struct.hash_entry* %28, i32 0, i32 1, !dbg !1673
  %29 = load %struct.hash_entry** %next23, align 8, !dbg !1673
  store %struct.hash_entry* %29, %struct.hash_entry** %next, align 8, !dbg !1673
  %30 = load %struct.hash_entry** %cursor, align 8, !dbg !1675
  %31 = bitcast %struct.hash_entry* %30 to i8*, !dbg !1675
  call void @free(i8* %31) #9, !dbg !1675
  %32 = load %struct.hash_entry** %next, align 8, !dbg !1670
  store %struct.hash_entry* %32, %struct.hash_entry** %cursor, align 8, !dbg !1670
  br label %for.cond20, !dbg !1670

for.inc26:                                        ; preds = %for.cond20
  %33 = load %struct.hash_entry** %bucket, align 8, !dbg !1668
  %incdec.ptr27 = getelementptr inbounds %struct.hash_entry* %33, i32 1, !dbg !1668
  store %struct.hash_entry* %incdec.ptr27, %struct.hash_entry** %bucket, align 8, !dbg !1668
  br label %for.cond15, !dbg !1668

for.end28:                                        ; preds = %for.cond15
  %34 = load %struct.hash_table** %table.addr, align 8, !dbg !1676
  %free_entry_list = getelementptr inbounds %struct.hash_table* %34, i32 0, i32 9, !dbg !1676
  %35 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1676
  store %struct.hash_entry* %35, %struct.hash_entry** %cursor, align 8, !dbg !1676
  br label %for.cond29, !dbg !1676

for.cond29:                                       ; preds = %for.body31, %for.end28
  %36 = load %struct.hash_entry** %cursor, align 8, !dbg !1676
  %tobool30 = icmp ne %struct.hash_entry* %36, null, !dbg !1676
  br i1 %tobool30, label %for.body31, label %for.end34, !dbg !1676

for.body31:                                       ; preds = %for.cond29
  %37 = load %struct.hash_entry** %cursor, align 8, !dbg !1678
  %next32 = getelementptr inbounds %struct.hash_entry* %37, i32 0, i32 1, !dbg !1678
  %38 = load %struct.hash_entry** %next32, align 8, !dbg !1678
  store %struct.hash_entry* %38, %struct.hash_entry** %next, align 8, !dbg !1678
  %39 = load %struct.hash_entry** %cursor, align 8, !dbg !1680
  %40 = bitcast %struct.hash_entry* %39 to i8*, !dbg !1680
  call void @free(i8* %40) #9, !dbg !1680
  %41 = load %struct.hash_entry** %next, align 8, !dbg !1676
  store %struct.hash_entry* %41, %struct.hash_entry** %cursor, align 8, !dbg !1676
  br label %for.cond29, !dbg !1676

for.end34:                                        ; preds = %for.cond29
  %42 = load %struct.hash_table** %table.addr, align 8, !dbg !1681
  %bucket35 = getelementptr inbounds %struct.hash_table* %42, i32 0, i32 0, !dbg !1681
  %43 = load %struct.hash_entry** %bucket35, align 8, !dbg !1681
  %44 = bitcast %struct.hash_entry* %43 to i8*, !dbg !1681
  call void @free(i8* %44) #9, !dbg !1681
  %45 = load %struct.hash_table** %table.addr, align 8, !dbg !1682
  %46 = bitcast %struct.hash_table* %45 to i8*, !dbg !1682
  call void @free(i8* %46) #9, !dbg !1682
  ret void, !dbg !1683
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
  store i64 %candidate, i64* %candidate.addr, align 8
  %0 = load i64* %candidate.addr, align 8, !dbg !1684
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1684
  %tuning = getelementptr inbounds %struct.hash_table* %1, i32 0, i32 5, !dbg !1684
  %2 = load %struct.hash_tuning** %tuning, align 8, !dbg !1684
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1684
  %hasher = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 6, !dbg !1684
  %4 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1684
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1684
  %comparator = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 7, !dbg !1684
  %6 = load i1 (i8*, i8*)** %comparator, align 8, !dbg !1684
  %7 = load %struct.hash_table** %table.addr, align 8, !dbg !1684
  %data_freer = getelementptr inbounds %struct.hash_table* %7, i32 0, i32 8, !dbg !1684
  %8 = load void (i8*)** %data_freer, align 8, !dbg !1684
  %call = call %struct.hash_table* @hash_initialize(i64 %0, %struct.hash_tuning* %2, i64 (i8*, i64)* %4, i1 (i8*, i8*)* %6, void (i8*)* %8), !dbg !1684
  store %struct.hash_table* %call, %struct.hash_table** %new_table, align 8, !dbg !1684
  %9 = load %struct.hash_table** %new_table, align 8, !dbg !1685
  %cmp = icmp eq %struct.hash_table* %9, null, !dbg !1685
  br i1 %cmp, label %if.then, label %if.end, !dbg !1685

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, !dbg !1687
  br label %return, !dbg !1687

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_table** %table.addr, align 8, !dbg !1688
  %free_entry_list = getelementptr inbounds %struct.hash_table* %10, i32 0, i32 9, !dbg !1688
  %11 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1688
  %12 = load %struct.hash_table** %new_table, align 8, !dbg !1688
  %free_entry_list1 = getelementptr inbounds %struct.hash_table* %12, i32 0, i32 9, !dbg !1688
  store %struct.hash_entry* %11, %struct.hash_entry** %free_entry_list1, align 8, !dbg !1688
  %13 = load %struct.hash_table** %table.addr, align 8, !dbg !1689
  %bucket2 = getelementptr inbounds %struct.hash_table* %13, i32 0, i32 0, !dbg !1689
  %14 = load %struct.hash_entry** %bucket2, align 8, !dbg !1689
  store %struct.hash_entry* %14, %struct.hash_entry** %bucket, align 8, !dbg !1689
  br label %for.cond, !dbg !1689

for.cond:                                         ; preds = %for.inc42, %if.end
  %15 = load %struct.hash_entry** %bucket, align 8, !dbg !1689
  %16 = load %struct.hash_table** %table.addr, align 8, !dbg !1689
  %bucket_limit = getelementptr inbounds %struct.hash_table* %16, i32 0, i32 1, !dbg !1689
  %17 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1689
  %cmp3 = icmp ult %struct.hash_entry* %15, %17, !dbg !1689
  br i1 %cmp3, label %for.body, label %for.end43, !dbg !1689

for.body:                                         ; preds = %for.cond
  %18 = load %struct.hash_entry** %bucket, align 8, !dbg !1691
  %data = getelementptr inbounds %struct.hash_entry* %18, i32 0, i32 0, !dbg !1691
  %19 = load i8** %data, align 8, !dbg !1691
  %tobool = icmp ne i8* %19, null, !dbg !1691
  br i1 %tobool, label %if.then4, label %for.inc42, !dbg !1691

if.then4:                                         ; preds = %for.body
  %20 = load %struct.hash_entry** %bucket, align 8, !dbg !1693
  store %struct.hash_entry* %20, %struct.hash_entry** %cursor, align 8, !dbg !1693
  br label %for.cond5, !dbg !1693

for.cond5:                                        ; preds = %for.inc, %if.then4
  %21 = load %struct.hash_entry** %cursor, align 8, !dbg !1693
  %tobool6 = icmp ne %struct.hash_entry* %21, null, !dbg !1693
  br i1 %tobool6, label %for.body7, label %for.inc42, !dbg !1693

for.body7:                                        ; preds = %for.cond5
  %22 = load %struct.hash_entry** %cursor, align 8, !dbg !1695
  %data9 = getelementptr inbounds %struct.hash_entry* %22, i32 0, i32 0, !dbg !1695
  %23 = load i8** %data9, align 8, !dbg !1695
  store i8* %23, i8** %data8, align 8, !dbg !1695
  %24 = load %struct.hash_table** %new_table, align 8, !dbg !1697
  %bucket10 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 0, !dbg !1697
  %25 = load %struct.hash_entry** %bucket10, align 8, !dbg !1697
  %26 = load %struct.hash_table** %new_table, align 8, !dbg !1698
  %hasher11 = getelementptr inbounds %struct.hash_table* %26, i32 0, i32 6, !dbg !1698
  %27 = load i64 (i8*, i64)** %hasher11, align 8, !dbg !1698
  %28 = load i8** %data8, align 8, !dbg !1698
  %29 = load %struct.hash_table** %new_table, align 8, !dbg !1698
  %n_buckets = getelementptr inbounds %struct.hash_table* %29, i32 0, i32 2, !dbg !1698
  %30 = load i64* %n_buckets, align 8, !dbg !1698
  %call12 = call i64 %27(i8* %28, i64 %30), !dbg !1698
  %add.ptr = getelementptr inbounds %struct.hash_entry* %25, i64 %call12, !dbg !1698
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %new_bucket, align 8, !dbg !1698
  %31 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1699
  %32 = load %struct.hash_table** %new_table, align 8, !dbg !1699
  %bucket_limit13 = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 1, !dbg !1699
  %33 = load %struct.hash_entry** %bucket_limit13, align 8, !dbg !1699
  %cmp14 = icmp ult %struct.hash_entry* %31, %33, !dbg !1699
  br i1 %cmp14, label %if.end16, label %if.then15, !dbg !1699

if.then15:                                        ; preds = %for.body7
  call void @abort() #16, !dbg !1701
  unreachable, !dbg !1701

if.end16:                                         ; preds = %for.body7
  %34 = load %struct.hash_entry** %cursor, align 8, !dbg !1702
  %next17 = getelementptr inbounds %struct.hash_entry* %34, i32 0, i32 1, !dbg !1702
  %35 = load %struct.hash_entry** %next17, align 8, !dbg !1702
  store %struct.hash_entry* %35, %struct.hash_entry** %next, align 8, !dbg !1702
  %36 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1703
  %data18 = getelementptr inbounds %struct.hash_entry* %36, i32 0, i32 0, !dbg !1703
  %37 = load i8** %data18, align 8, !dbg !1703
  %tobool19 = icmp ne i8* %37, null, !dbg !1703
  br i1 %tobool19, label %if.then20, label %if.else35, !dbg !1703

if.then20:                                        ; preds = %if.end16
  %38 = load %struct.hash_entry** %cursor, align 8, !dbg !1705
  %39 = load %struct.hash_entry** %bucket, align 8, !dbg !1705
  %cmp21 = icmp eq %struct.hash_entry* %38, %39, !dbg !1705
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !1705

if.then22:                                        ; preds = %if.then20
  %40 = load %struct.hash_table** %new_table, align 8, !dbg !1708
  %call23 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* %40), !dbg !1708
  store %struct.hash_entry* %call23, %struct.hash_entry** %new_entry, align 8, !dbg !1708
  %41 = load %struct.hash_entry** %new_entry, align 8, !dbg !1710
  %cmp24 = icmp eq %struct.hash_entry* %41, null, !dbg !1710
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1710

if.then25:                                        ; preds = %if.then22
  store i1 false, i1* %retval, !dbg !1712
  br label %return, !dbg !1712

if.end26:                                         ; preds = %if.then22
  %42 = load i8** %data8, align 8, !dbg !1713
  %43 = load %struct.hash_entry** %new_entry, align 8, !dbg !1713
  %data27 = getelementptr inbounds %struct.hash_entry* %43, i32 0, i32 0, !dbg !1713
  store i8* %42, i8** %data27, align 8, !dbg !1713
  %44 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1714
  %next28 = getelementptr inbounds %struct.hash_entry* %44, i32 0, i32 1, !dbg !1714
  %45 = load %struct.hash_entry** %next28, align 8, !dbg !1714
  %46 = load %struct.hash_entry** %new_entry, align 8, !dbg !1714
  %next29 = getelementptr inbounds %struct.hash_entry* %46, i32 0, i32 1, !dbg !1714
  store %struct.hash_entry* %45, %struct.hash_entry** %next29, align 8, !dbg !1714
  %47 = load %struct.hash_entry** %new_entry, align 8, !dbg !1715
  %48 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1715
  %next30 = getelementptr inbounds %struct.hash_entry* %48, i32 0, i32 1, !dbg !1715
  store %struct.hash_entry* %47, %struct.hash_entry** %next30, align 8, !dbg !1715
  br label %for.inc, !dbg !1716

if.else:                                          ; preds = %if.then20
  %49 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1717
  %next31 = getelementptr inbounds %struct.hash_entry* %49, i32 0, i32 1, !dbg !1717
  %50 = load %struct.hash_entry** %next31, align 8, !dbg !1717
  %51 = load %struct.hash_entry** %cursor, align 8, !dbg !1717
  %next32 = getelementptr inbounds %struct.hash_entry* %51, i32 0, i32 1, !dbg !1717
  store %struct.hash_entry* %50, %struct.hash_entry** %next32, align 8, !dbg !1717
  %52 = load %struct.hash_entry** %cursor, align 8, !dbg !1719
  %53 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1719
  %next33 = getelementptr inbounds %struct.hash_entry* %53, i32 0, i32 1, !dbg !1719
  store %struct.hash_entry* %52, %struct.hash_entry** %next33, align 8, !dbg !1719
  br label %for.inc

if.else35:                                        ; preds = %if.end16
  %54 = load i8** %data8, align 8, !dbg !1720
  %55 = load %struct.hash_entry** %new_bucket, align 8, !dbg !1720
  %data36 = getelementptr inbounds %struct.hash_entry* %55, i32 0, i32 0, !dbg !1720
  store i8* %54, i8** %data36, align 8, !dbg !1720
  %56 = load %struct.hash_table** %new_table, align 8, !dbg !1722
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %56, i32 0, i32 3, !dbg !1722
  %57 = load i64* %n_buckets_used, align 8, !dbg !1722
  %inc = add i64 %57, 1, !dbg !1722
  store i64 %inc, i64* %n_buckets_used, align 8, !dbg !1722
  %58 = load %struct.hash_entry** %cursor, align 8, !dbg !1723
  %59 = load %struct.hash_entry** %bucket, align 8, !dbg !1723
  %cmp37 = icmp ne %struct.hash_entry* %58, %59, !dbg !1723
  br i1 %cmp37, label %if.then38, label %for.inc, !dbg !1723

if.then38:                                        ; preds = %if.else35
  %60 = load %struct.hash_table** %new_table, align 8, !dbg !1725
  %61 = load %struct.hash_entry** %cursor, align 8, !dbg !1725
  call void @free_entry(%struct.hash_table* %60, %struct.hash_entry* %61), !dbg !1725
  br label %for.inc, !dbg !1725

for.inc:                                          ; preds = %if.else, %if.end26, %if.then38, %if.else35
  %62 = load %struct.hash_entry** %next, align 8, !dbg !1693
  store %struct.hash_entry* %62, %struct.hash_entry** %cursor, align 8, !dbg !1693
  br label %for.cond5, !dbg !1693

for.inc42:                                        ; preds = %for.body, %for.cond5
  %63 = load %struct.hash_entry** %bucket, align 8, !dbg !1689
  %incdec.ptr = getelementptr inbounds %struct.hash_entry* %63, i32 1, !dbg !1689
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1689
  br label %for.cond, !dbg !1689

for.end43:                                        ; preds = %for.cond
  %64 = load %struct.hash_table** %table.addr, align 8, !dbg !1726
  %bucket44 = getelementptr inbounds %struct.hash_table* %64, i32 0, i32 0, !dbg !1726
  %65 = load %struct.hash_entry** %bucket44, align 8, !dbg !1726
  %66 = bitcast %struct.hash_entry* %65 to i8*, !dbg !1726
  call void @free(i8* %66) #9, !dbg !1726
  %67 = load %struct.hash_table** %new_table, align 8, !dbg !1727
  %bucket45 = getelementptr inbounds %struct.hash_table* %67, i32 0, i32 0, !dbg !1727
  %68 = load %struct.hash_entry** %bucket45, align 8, !dbg !1727
  %69 = load %struct.hash_table** %table.addr, align 8, !dbg !1727
  %bucket46 = getelementptr inbounds %struct.hash_table* %69, i32 0, i32 0, !dbg !1727
  store %struct.hash_entry* %68, %struct.hash_entry** %bucket46, align 8, !dbg !1727
  %70 = load %struct.hash_table** %new_table, align 8, !dbg !1728
  %bucket_limit47 = getelementptr inbounds %struct.hash_table* %70, i32 0, i32 1, !dbg !1728
  %71 = load %struct.hash_entry** %bucket_limit47, align 8, !dbg !1728
  %72 = load %struct.hash_table** %table.addr, align 8, !dbg !1728
  %bucket_limit48 = getelementptr inbounds %struct.hash_table* %72, i32 0, i32 1, !dbg !1728
  store %struct.hash_entry* %71, %struct.hash_entry** %bucket_limit48, align 8, !dbg !1728
  %73 = load %struct.hash_table** %new_table, align 8, !dbg !1729
  %n_buckets49 = getelementptr inbounds %struct.hash_table* %73, i32 0, i32 2, !dbg !1729
  %74 = load i64* %n_buckets49, align 8, !dbg !1729
  %75 = load %struct.hash_table** %table.addr, align 8, !dbg !1729
  %n_buckets50 = getelementptr inbounds %struct.hash_table* %75, i32 0, i32 2, !dbg !1729
  store i64 %74, i64* %n_buckets50, align 8, !dbg !1729
  %76 = load %struct.hash_table** %new_table, align 8, !dbg !1730
  %n_buckets_used51 = getelementptr inbounds %struct.hash_table* %76, i32 0, i32 3, !dbg !1730
  %77 = load i64* %n_buckets_used51, align 8, !dbg !1730
  %78 = load %struct.hash_table** %table.addr, align 8, !dbg !1730
  %n_buckets_used52 = getelementptr inbounds %struct.hash_table* %78, i32 0, i32 3, !dbg !1730
  store i64 %77, i64* %n_buckets_used52, align 8, !dbg !1730
  %79 = load %struct.hash_table** %new_table, align 8, !dbg !1731
  %free_entry_list53 = getelementptr inbounds %struct.hash_table* %79, i32 0, i32 9, !dbg !1731
  %80 = load %struct.hash_entry** %free_entry_list53, align 8, !dbg !1731
  %81 = load %struct.hash_table** %table.addr, align 8, !dbg !1731
  %free_entry_list54 = getelementptr inbounds %struct.hash_table* %81, i32 0, i32 9, !dbg !1731
  store %struct.hash_entry* %80, %struct.hash_entry** %free_entry_list54, align 8, !dbg !1731
  %82 = load %struct.hash_table** %new_table, align 8, !dbg !1732
  %83 = bitcast %struct.hash_table* %82 to i8*, !dbg !1732
  call void @free(i8* %83) #9, !dbg !1732
  store i1 true, i1* %retval, !dbg !1733
  br label %return, !dbg !1733

return:                                           ; preds = %for.end43, %if.then25, %if.then
  %84 = load i1* %retval, !dbg !1734
  ret i1 %84, !dbg !1734
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
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load i8** %entry.addr, align 8, !dbg !1735
  %tobool = icmp ne i8* %0, null, !dbg !1735
  br i1 %tobool, label %if.end, label %if.then, !dbg !1735

if.then:                                          ; preds = %entry
  call void @abort() #16, !dbg !1737
  unreachable, !dbg !1737

if.end:                                           ; preds = %entry
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1738
  %2 = load i8** %entry.addr, align 8, !dbg !1738
  %call = call i8* @hash_find_entry(%struct.hash_table* %1, i8* %2, %struct.hash_entry** %bucket, i1 zeroext false), !dbg !1738
  store i8* %call, i8** %data, align 8, !dbg !1738
  %cmp = icmp ne i8* %call, null, !dbg !1738
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1738

if.then2:                                         ; preds = %if.end
  %3 = load i8** %data, align 8, !dbg !1740
  store i8* %3, i8** %retval, !dbg !1740
  br label %return, !dbg !1740

if.end3:                                          ; preds = %if.end
  %4 = load %struct.hash_entry** %bucket, align 8, !dbg !1741
  %data4 = getelementptr inbounds %struct.hash_entry* %4, i32 0, i32 0, !dbg !1741
  %5 = load i8** %data4, align 8, !dbg !1741
  %tobool5 = icmp ne i8* %5, null, !dbg !1741
  br i1 %tobool5, label %if.then6, label %if.end14, !dbg !1741

if.then6:                                         ; preds = %if.end3
  %6 = load %struct.hash_table** %table.addr, align 8, !dbg !1743
  %call7 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* %6), !dbg !1743
  store %struct.hash_entry* %call7, %struct.hash_entry** %new_entry, align 8, !dbg !1743
  %7 = load %struct.hash_entry** %new_entry, align 8, !dbg !1745
  %cmp8 = icmp eq %struct.hash_entry* %7, null, !dbg !1745
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1745

if.then9:                                         ; preds = %if.then6
  store i8* null, i8** %retval, !dbg !1747
  br label %return, !dbg !1747

if.end10:                                         ; preds = %if.then6
  %8 = load i8** %entry.addr, align 8, !dbg !1748
  %9 = load %struct.hash_entry** %new_entry, align 8, !dbg !1748
  %data11 = getelementptr inbounds %struct.hash_entry* %9, i32 0, i32 0, !dbg !1748
  store i8* %8, i8** %data11, align 8, !dbg !1748
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1749
  %next = getelementptr inbounds %struct.hash_entry* %10, i32 0, i32 1, !dbg !1749
  %11 = load %struct.hash_entry** %next, align 8, !dbg !1749
  %12 = load %struct.hash_entry** %new_entry, align 8, !dbg !1749
  %next12 = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 1, !dbg !1749
  store %struct.hash_entry* %11, %struct.hash_entry** %next12, align 8, !dbg !1749
  %13 = load %struct.hash_entry** %new_entry, align 8, !dbg !1750
  %14 = load %struct.hash_entry** %bucket, align 8, !dbg !1750
  %next13 = getelementptr inbounds %struct.hash_entry* %14, i32 0, i32 1, !dbg !1750
  store %struct.hash_entry* %13, %struct.hash_entry** %next13, align 8, !dbg !1750
  %15 = load %struct.hash_table** %table.addr, align 8, !dbg !1751
  %n_entries = getelementptr inbounds %struct.hash_table* %15, i32 0, i32 4, !dbg !1751
  %16 = load i64* %n_entries, align 8, !dbg !1751
  %inc = add i64 %16, 1, !dbg !1751
  store i64 %inc, i64* %n_entries, align 8, !dbg !1751
  %17 = load i8** %entry.addr, align 8, !dbg !1752
  store i8* %17, i8** %retval, !dbg !1752
  br label %return, !dbg !1752

if.end14:                                         ; preds = %if.end3
  %18 = load i8** %entry.addr, align 8, !dbg !1753
  %19 = load %struct.hash_entry** %bucket, align 8, !dbg !1753
  %data15 = getelementptr inbounds %struct.hash_entry* %19, i32 0, i32 0, !dbg !1753
  store i8* %18, i8** %data15, align 8, !dbg !1753
  %20 = load %struct.hash_table** %table.addr, align 8, !dbg !1754
  %n_entries16 = getelementptr inbounds %struct.hash_table* %20, i32 0, i32 4, !dbg !1754
  %21 = load i64* %n_entries16, align 8, !dbg !1754
  %inc17 = add i64 %21, 1, !dbg !1754
  store i64 %inc17, i64* %n_entries16, align 8, !dbg !1754
  %22 = load %struct.hash_table** %table.addr, align 8, !dbg !1755
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %22, i32 0, i32 3, !dbg !1755
  %23 = load i64* %n_buckets_used, align 8, !dbg !1755
  %inc18 = add i64 %23, 1, !dbg !1755
  store i64 %inc18, i64* %n_buckets_used, align 8, !dbg !1755
  %24 = load %struct.hash_table** %table.addr, align 8, !dbg !1756
  %n_buckets_used19 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 3, !dbg !1756
  %25 = load i64* %n_buckets_used19, align 8, !dbg !1756
  %conv = uitofp i64 %25 to float, !dbg !1756
  %26 = load %struct.hash_table** %table.addr, align 8, !dbg !1756
  %tuning = getelementptr inbounds %struct.hash_table* %26, i32 0, i32 5, !dbg !1756
  %27 = load %struct.hash_tuning** %tuning, align 8, !dbg !1756
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %27, i32 0, i32 2, !dbg !1756
  %28 = load float* %growth_threshold, align 4, !dbg !1756
  %29 = load %struct.hash_table** %table.addr, align 8, !dbg !1756
  %n_buckets = getelementptr inbounds %struct.hash_table* %29, i32 0, i32 2, !dbg !1756
  %30 = load i64* %n_buckets, align 8, !dbg !1756
  %conv20 = uitofp i64 %30 to float, !dbg !1756
  %mul = fmul float %28, %conv20, !dbg !1756
  %cmp21 = fcmp ogt float %conv, %mul, !dbg !1756
  br i1 %cmp21, label %if.then23, label %if.end57, !dbg !1756

if.then23:                                        ; preds = %if.end14
  %31 = load %struct.hash_table** %table.addr, align 8, !dbg !1758
  %call24 = call zeroext i1 @check_tuning(%struct.hash_table* %31), !dbg !1758
  %32 = load %struct.hash_table** %table.addr, align 8, !dbg !1760
  %n_buckets_used25 = getelementptr inbounds %struct.hash_table* %32, i32 0, i32 3, !dbg !1760
  %33 = load i64* %n_buckets_used25, align 8, !dbg !1760
  %conv26 = uitofp i64 %33 to float, !dbg !1760
  %34 = load %struct.hash_table** %table.addr, align 8, !dbg !1760
  %tuning27 = getelementptr inbounds %struct.hash_table* %34, i32 0, i32 5, !dbg !1760
  %35 = load %struct.hash_tuning** %tuning27, align 8, !dbg !1760
  %growth_threshold28 = getelementptr inbounds %struct.hash_tuning* %35, i32 0, i32 2, !dbg !1760
  %36 = load float* %growth_threshold28, align 4, !dbg !1760
  %37 = load %struct.hash_table** %table.addr, align 8, !dbg !1760
  %n_buckets29 = getelementptr inbounds %struct.hash_table* %37, i32 0, i32 2, !dbg !1760
  %38 = load i64* %n_buckets29, align 8, !dbg !1760
  %conv30 = uitofp i64 %38 to float, !dbg !1760
  %mul31 = fmul float %36, %conv30, !dbg !1760
  %cmp32 = fcmp ogt float %conv26, %mul31, !dbg !1760
  br i1 %cmp32, label %if.then34, label %if.end57, !dbg !1760

if.then34:                                        ; preds = %if.then23
  %39 = load %struct.hash_table** %table.addr, align 8, !dbg !1762
  %tuning36 = getelementptr inbounds %struct.hash_table* %39, i32 0, i32 5, !dbg !1762
  %40 = load %struct.hash_tuning** %tuning36, align 8, !dbg !1762
  store %struct.hash_tuning* %40, %struct.hash_tuning** %tuning35, align 8, !dbg !1762
  %41 = load %struct.hash_tuning** %tuning35, align 8, !dbg !1764
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning* %41, i32 0, i32 4, !dbg !1764
  %42 = load i8* %is_n_buckets, align 1, !dbg !1764
  %tobool37 = trunc i8 %42 to i1, !dbg !1764
  %43 = load %struct.hash_table** %table.addr, align 8, !dbg !1764
  %n_buckets39 = getelementptr inbounds %struct.hash_table* %43, i32 0, i32 2, !dbg !1764
  %44 = load i64* %n_buckets39, align 8, !dbg !1764
  %conv40 = uitofp i64 %44 to float, !dbg !1764
  %45 = load %struct.hash_tuning** %tuning35, align 8, !dbg !1764
  %growth_factor = getelementptr inbounds %struct.hash_tuning* %45, i32 0, i32 3, !dbg !1764
  %46 = load float* %growth_factor, align 4, !dbg !1764
  %mul41 = fmul float %conv40, %46, !dbg !1764
  br i1 %tobool37, label %cond.end, label %cond.false, !dbg !1764

cond.false:                                       ; preds = %if.then34
  %47 = load %struct.hash_tuning** %tuning35, align 8, !dbg !1764
  %growth_threshold46 = getelementptr inbounds %struct.hash_tuning* %47, i32 0, i32 2, !dbg !1764
  %48 = load float* %growth_threshold46, align 4, !dbg !1764
  %mul47 = fmul float %mul41, %48, !dbg !1764
  br label %cond.end, !dbg !1764

cond.end:                                         ; preds = %if.then34, %cond.false
  %cond = phi float [ %mul47, %cond.false ], [ %mul41, %if.then34 ], !dbg !1764
  store float %cond, float* %candidate, align 4, !dbg !1764
  %49 = load float* %candidate, align 4, !dbg !1765
  %cmp48 = fcmp ole float 0x43F0000000000000, %49, !dbg !1765
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1765

if.then50:                                        ; preds = %cond.end
  store i8* null, i8** %retval, !dbg !1767
  br label %return, !dbg !1767

if.end51:                                         ; preds = %cond.end
  %50 = load %struct.hash_table** %table.addr, align 8, !dbg !1768
  %51 = load float* %candidate, align 4, !dbg !1768
  %conv52 = fptoui float %51 to i64, !dbg !1768
  %call53 = call zeroext i1 @hash_rehash(%struct.hash_table* %50, i64 %conv52), !dbg !1768
  br i1 %call53, label %if.end57, label %if.then54, !dbg !1768

if.then54:                                        ; preds = %if.end51
  store i8* null, i8** %entry.addr, align 8, !dbg !1770
  br label %if.end57, !dbg !1770

if.end57:                                         ; preds = %if.then23, %if.then54, %if.end51, %if.end14
  %52 = load i8** %entry.addr, align 8, !dbg !1771
  store i8* %52, i8** %retval, !dbg !1771
  br label %return, !dbg !1771

return:                                           ; preds = %if.end57, %if.then50, %if.end10, %if.then9, %if.then2
  %53 = load i8** %retval, !dbg !1772
  ret i8* %53, !dbg !1772
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
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1773
  %1 = load i8** %entry.addr, align 8, !dbg !1773
  %call = call i8* @hash_find_entry(%struct.hash_table* %0, i8* %1, %struct.hash_entry** %bucket, i1 zeroext true), !dbg !1773
  store i8* %call, i8** %data, align 8, !dbg !1773
  %2 = load i8** %data, align 8, !dbg !1774
  %tobool = icmp ne i8* %2, null, !dbg !1774
  br i1 %tobool, label %if.end, label %if.then, !dbg !1774

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !1776
  br label %return, !dbg !1776

if.end:                                           ; preds = %entry
  %3 = load %struct.hash_table** %table.addr, align 8, !dbg !1777
  %n_entries = getelementptr inbounds %struct.hash_table* %3, i32 0, i32 4, !dbg !1777
  %4 = load i64* %n_entries, align 8, !dbg !1777
  %dec = add i64 %4, -1, !dbg !1777
  store i64 %dec, i64* %n_entries, align 8, !dbg !1777
  %5 = load %struct.hash_entry** %bucket, align 8, !dbg !1778
  %data2 = getelementptr inbounds %struct.hash_entry* %5, i32 0, i32 0, !dbg !1778
  %6 = load i8** %data2, align 8, !dbg !1778
  %tobool3 = icmp ne i8* %6, null, !dbg !1778
  br i1 %tobool3, label %if.end37, label %if.then4, !dbg !1778

if.then4:                                         ; preds = %if.end
  %7 = load %struct.hash_table** %table.addr, align 8, !dbg !1780
  %n_buckets_used = getelementptr inbounds %struct.hash_table* %7, i32 0, i32 3, !dbg !1780
  %8 = load i64* %n_buckets_used, align 8, !dbg !1780
  %dec5 = add i64 %8, -1, !dbg !1780
  store i64 %dec5, i64* %n_buckets_used, align 8, !dbg !1780
  %9 = load %struct.hash_table** %table.addr, align 8, !dbg !1782
  %n_buckets_used6 = getelementptr inbounds %struct.hash_table* %9, i32 0, i32 3, !dbg !1782
  %10 = load i64* %n_buckets_used6, align 8, !dbg !1782
  %conv = uitofp i64 %10 to float, !dbg !1782
  %11 = load %struct.hash_table** %table.addr, align 8, !dbg !1782
  %tuning = getelementptr inbounds %struct.hash_table* %11, i32 0, i32 5, !dbg !1782
  %12 = load %struct.hash_tuning** %tuning, align 8, !dbg !1782
  %shrink_threshold = getelementptr inbounds %struct.hash_tuning* %12, i32 0, i32 0, !dbg !1782
  %13 = load float* %shrink_threshold, align 4, !dbg !1782
  %14 = load %struct.hash_table** %table.addr, align 8, !dbg !1782
  %n_buckets = getelementptr inbounds %struct.hash_table* %14, i32 0, i32 2, !dbg !1782
  %15 = load i64* %n_buckets, align 8, !dbg !1782
  %conv7 = uitofp i64 %15 to float, !dbg !1782
  %mul = fmul float %13, %conv7, !dbg !1782
  %cmp = fcmp olt float %conv, %mul, !dbg !1782
  br i1 %cmp, label %if.then9, label %if.end37, !dbg !1782

if.then9:                                         ; preds = %if.then4
  %16 = load %struct.hash_table** %table.addr, align 8, !dbg !1784
  %call10 = call zeroext i1 @check_tuning(%struct.hash_table* %16), !dbg !1784
  %17 = load %struct.hash_table** %table.addr, align 8, !dbg !1786
  %n_buckets_used11 = getelementptr inbounds %struct.hash_table* %17, i32 0, i32 3, !dbg !1786
  %18 = load i64* %n_buckets_used11, align 8, !dbg !1786
  %conv12 = uitofp i64 %18 to float, !dbg !1786
  %19 = load %struct.hash_table** %table.addr, align 8, !dbg !1786
  %tuning13 = getelementptr inbounds %struct.hash_table* %19, i32 0, i32 5, !dbg !1786
  %20 = load %struct.hash_tuning** %tuning13, align 8, !dbg !1786
  %shrink_threshold14 = getelementptr inbounds %struct.hash_tuning* %20, i32 0, i32 0, !dbg !1786
  %21 = load float* %shrink_threshold14, align 4, !dbg !1786
  %22 = load %struct.hash_table** %table.addr, align 8, !dbg !1786
  %n_buckets15 = getelementptr inbounds %struct.hash_table* %22, i32 0, i32 2, !dbg !1786
  %23 = load i64* %n_buckets15, align 8, !dbg !1786
  %conv16 = uitofp i64 %23 to float, !dbg !1786
  %mul17 = fmul float %21, %conv16, !dbg !1786
  %cmp18 = fcmp olt float %conv12, %mul17, !dbg !1786
  br i1 %cmp18, label %if.then20, label %if.end37, !dbg !1786

if.then20:                                        ; preds = %if.then9
  %24 = load %struct.hash_table** %table.addr, align 8, !dbg !1788
  %tuning22 = getelementptr inbounds %struct.hash_table* %24, i32 0, i32 5, !dbg !1788
  %25 = load %struct.hash_tuning** %tuning22, align 8, !dbg !1788
  store %struct.hash_tuning* %25, %struct.hash_tuning** %tuning21, align 8, !dbg !1788
  %26 = load %struct.hash_tuning** %tuning21, align 8, !dbg !1790
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning* %26, i32 0, i32 4, !dbg !1790
  %27 = load i8* %is_n_buckets, align 1, !dbg !1790
  %tobool23 = trunc i8 %27 to i1, !dbg !1790
  %28 = load %struct.hash_table** %table.addr, align 8, !dbg !1790
  %n_buckets25 = getelementptr inbounds %struct.hash_table* %28, i32 0, i32 2, !dbg !1790
  %29 = load i64* %n_buckets25, align 8, !dbg !1790
  %conv26 = uitofp i64 %29 to float, !dbg !1790
  %30 = load %struct.hash_tuning** %tuning21, align 8, !dbg !1790
  %shrink_factor = getelementptr inbounds %struct.hash_tuning* %30, i32 0, i32 1, !dbg !1790
  %31 = load float* %shrink_factor, align 4, !dbg !1790
  %mul27 = fmul float %conv26, %31, !dbg !1790
  br i1 %tobool23, label %cond.end, label %cond.false, !dbg !1790

cond.false:                                       ; preds = %if.then20
  %32 = load %struct.hash_tuning** %tuning21, align 8, !dbg !1790
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %32, i32 0, i32 2, !dbg !1790
  %33 = load float* %growth_threshold, align 4, !dbg !1790
  %mul32 = fmul float %mul27, %33, !dbg !1790
  br label %cond.end, !dbg !1790

cond.end:                                         ; preds = %if.then20, %cond.false
  %cond = phi float [ %mul32, %cond.false ], [ %mul27, %if.then20 ], !dbg !1790
  %conv33 = fptoui float %cond to i64, !dbg !1790
  store i64 %conv33, i64* %candidate, align 8, !dbg !1790
  %34 = load %struct.hash_table** %table.addr, align 8, !dbg !1791
  %35 = load i64* %candidate, align 8, !dbg !1791
  %call34 = call zeroext i1 @hash_rehash(%struct.hash_table* %34, i64 %35), !dbg !1791
  br label %if.end37, !dbg !1792

if.end37:                                         ; preds = %if.then4, %cond.end, %if.then9, %if.end
  %36 = load i8** %data, align 8, !dbg !1793
  store i8* %36, i8** %retval, !dbg !1793
  br label %return, !dbg !1793

return:                                           ; preds = %if.end37, %if.then
  %37 = load i8** %retval, !dbg !1794
  ret i8* %37, !dbg !1794
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_tuning(%struct.hash_table* %table) #0 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.hash_table*, align 8
  %tuning = alloca %struct.hash_tuning*, align 8
  %epsilon = alloca float, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1795
  %tuning1 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 5, !dbg !1795
  %1 = load %struct.hash_tuning** %tuning1, align 8, !dbg !1795
  store %struct.hash_tuning* %1, %struct.hash_tuning** %tuning, align 8, !dbg !1795
  store float 0x3FB99999A0000000, float* %epsilon, align 4, !dbg !1796
  %2 = load float* %epsilon, align 4, !dbg !1797
  %3 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %growth_threshold = getelementptr inbounds %struct.hash_tuning* %3, i32 0, i32 2, !dbg !1797
  %4 = load float* %growth_threshold, align 4, !dbg !1797
  %cmp = fcmp olt float %2, %4, !dbg !1797
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1797

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %growth_threshold2 = getelementptr inbounds %struct.hash_tuning* %5, i32 0, i32 2, !dbg !1797
  %6 = load float* %growth_threshold2, align 4, !dbg !1797
  %7 = load float* %epsilon, align 4, !dbg !1797
  %sub = fsub float 1.000000e+00, %7, !dbg !1797
  %cmp3 = fcmp olt float %6, %sub, !dbg !1797
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !1797

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load float* %epsilon, align 4, !dbg !1797
  %add = fadd float 1.000000e+00, %8, !dbg !1797
  %9 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %growth_factor = getelementptr inbounds %struct.hash_tuning* %9, i32 0, i32 3, !dbg !1797
  %10 = load float* %growth_factor, align 4, !dbg !1797
  %cmp5 = fcmp olt float %add, %10, !dbg !1797
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !1797

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %11 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %shrink_threshold = getelementptr inbounds %struct.hash_tuning* %11, i32 0, i32 0, !dbg !1797
  %12 = load float* %shrink_threshold, align 4, !dbg !1797
  %cmp7 = fcmp ole float 0.000000e+00, %12, !dbg !1797
  br i1 %cmp7, label %land.lhs.true8, label %if.end, !dbg !1797

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %13 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %shrink_threshold9 = getelementptr inbounds %struct.hash_tuning* %13, i32 0, i32 0, !dbg !1797
  %14 = load float* %shrink_threshold9, align 4, !dbg !1797
  %15 = load float* %epsilon, align 4, !dbg !1797
  %add10 = fadd float %14, %15, !dbg !1797
  %16 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %shrink_factor = getelementptr inbounds %struct.hash_tuning* %16, i32 0, i32 1, !dbg !1797
  %17 = load float* %shrink_factor, align 4, !dbg !1797
  %cmp11 = fcmp olt float %add10, %17, !dbg !1797
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !1797

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %18 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %shrink_factor13 = getelementptr inbounds %struct.hash_tuning* %18, i32 0, i32 1, !dbg !1797
  %19 = load float* %shrink_factor13, align 4, !dbg !1797
  %cmp14 = fcmp ole float %19, 1.000000e+00, !dbg !1797
  br i1 %cmp14, label %land.lhs.true15, label %if.end, !dbg !1797

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %20 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %shrink_threshold16 = getelementptr inbounds %struct.hash_tuning* %20, i32 0, i32 0, !dbg !1797
  %21 = load float* %shrink_threshold16, align 4, !dbg !1797
  %22 = load float* %epsilon, align 4, !dbg !1797
  %add17 = fadd float %21, %22, !dbg !1797
  %23 = load %struct.hash_tuning** %tuning, align 8, !dbg !1797
  %growth_threshold18 = getelementptr inbounds %struct.hash_tuning* %23, i32 0, i32 2, !dbg !1797
  %24 = load float* %growth_threshold18, align 4, !dbg !1797
  %cmp19 = fcmp olt float %add17, %24, !dbg !1797
  br i1 %cmp19, label %if.then, label %if.end, !dbg !1797

if.then:                                          ; preds = %land.lhs.true15
  store i1 true, i1* %retval, !dbg !1799
  br label %return, !dbg !1799

if.end:                                           ; preds = %land.lhs.true15, %land.lhs.true12, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true, %entry
  %25 = load %struct.hash_table** %table.addr, align 8, !dbg !1800
  %tuning20 = getelementptr inbounds %struct.hash_table* %25, i32 0, i32 5, !dbg !1800
  store %struct.hash_tuning* bitcast ({ float, float, float, float, i8, [3 x i8] }* @default_tuning to %struct.hash_tuning*), %struct.hash_tuning** %tuning20, align 8, !dbg !1800
  store i1 false, i1* %retval, !dbg !1801
  br label %return, !dbg !1801

return:                                           ; preds = %if.end, %if.then
  %26 = load i1* %retval, !dbg !1802
  ret i1 %26, !dbg !1802
}

; Function Attrs: nounwind uwtable
define internal i64 @next_prime(i64 %candidate) #0 {
entry:
  %candidate.addr = alloca i64, align 8
  store i64 %candidate, i64* %candidate.addr, align 8
  %0 = load i64* %candidate.addr, align 8, !dbg !1803
  %cmp = icmp ult i64 %0, 10, !dbg !1803
  %.candidate = select i1 %cmp, i64 10, i64 %candidate, !dbg !1803
  store i64 %.candidate, i64* %candidate.addr, align 8, !dbg !1805
  %1 = load i64* %candidate.addr, align 8, !dbg !1806
  %or = or i64 %1, 1, !dbg !1806
  store i64 %or, i64* %candidate.addr, align 8, !dbg !1806
  br label %while.cond, !dbg !1807

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %candidate.addr, align 8, !dbg !1807
  %call = call zeroext i1 @is_prime(i64 %2), !dbg !1807
  %lnot = xor i1 %call, true, !dbg !1807
  %3 = load i64* %candidate.addr, align 8, !dbg !1808
  br i1 %lnot, label %while.body, label %while.end, !dbg !1807

while.body:                                       ; preds = %while.cond
  %add = add i64 %3, 2, !dbg !1808
  store i64 %add, i64* %candidate.addr, align 8, !dbg !1808
  br label %while.cond, !dbg !1808

while.end:                                        ; preds = %while.cond
  ret i64 %3, !dbg !1809
}

; Function Attrs: nounwind uwtable
define internal %struct.hash_entry* @allocate_entry(%struct.hash_table* %table) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %new = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1810
  %free_entry_list = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 9, !dbg !1810
  %1 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1810
  %tobool = icmp ne %struct.hash_entry* %1, null, !dbg !1810
  br i1 %tobool, label %if.then, label %if.else, !dbg !1810

if.then:                                          ; preds = %entry
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1812
  %free_entry_list1 = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 9, !dbg !1812
  %3 = load %struct.hash_entry** %free_entry_list1, align 8, !dbg !1812
  store %struct.hash_entry* %3, %struct.hash_entry** %new, align 8, !dbg !1812
  %4 = load %struct.hash_entry** %new, align 8, !dbg !1814
  %next = getelementptr inbounds %struct.hash_entry* %4, i32 0, i32 1, !dbg !1814
  %5 = load %struct.hash_entry** %next, align 8, !dbg !1814
  %6 = load %struct.hash_table** %table.addr, align 8, !dbg !1814
  %free_entry_list2 = getelementptr inbounds %struct.hash_table* %6, i32 0, i32 9, !dbg !1814
  store %struct.hash_entry* %5, %struct.hash_entry** %free_entry_list2, align 8, !dbg !1814
  br label %if.end, !dbg !1815

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #9, !dbg !1816
  %7 = bitcast i8* %call to %struct.hash_entry*, !dbg !1816
  store %struct.hash_entry* %7, %struct.hash_entry** %new, align 8, !dbg !1816
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.hash_entry** %new, align 8, !dbg !1818
  ret %struct.hash_entry* %8, !dbg !1818
}

; Function Attrs: nounwind uwtable
define internal void @free_entry(%struct.hash_table* %table, %struct.hash_entry* %entry1) #0 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8
  store %struct.hash_entry* %entry1, %struct.hash_entry** %entry.addr, align 8
  %0 = load %struct.hash_entry** %entry.addr, align 8, !dbg !1819
  %data = getelementptr inbounds %struct.hash_entry* %0, i32 0, i32 0, !dbg !1819
  store i8* null, i8** %data, align 8, !dbg !1819
  %1 = load %struct.hash_table** %table.addr, align 8, !dbg !1820
  %free_entry_list = getelementptr inbounds %struct.hash_table* %1, i32 0, i32 9, !dbg !1820
  %2 = load %struct.hash_entry** %free_entry_list, align 8, !dbg !1820
  %3 = load %struct.hash_entry** %entry.addr, align 8, !dbg !1820
  %next = getelementptr inbounds %struct.hash_entry* %3, i32 0, i32 1, !dbg !1820
  store %struct.hash_entry* %2, %struct.hash_entry** %next, align 8, !dbg !1820
  %4 = load %struct.hash_entry** %entry.addr, align 8, !dbg !1821
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1821
  %free_entry_list2 = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 9, !dbg !1821
  store %struct.hash_entry* %4, %struct.hash_entry** %free_entry_list2, align 8, !dbg !1821
  ret void, !dbg !1822
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
  store i8* %entry1, i8** %entry.addr, align 8
  store %struct.hash_entry** %bucket_head, %struct.hash_entry*** %bucket_head.addr, align 8
  %frombool = zext i1 %delete to i8
  store i8 %frombool, i8* %delete.addr, align 1
  %0 = load %struct.hash_table** %table.addr, align 8, !dbg !1823
  %bucket2 = getelementptr inbounds %struct.hash_table* %0, i32 0, i32 0, !dbg !1823
  %1 = load %struct.hash_entry** %bucket2, align 8, !dbg !1823
  %2 = load %struct.hash_table** %table.addr, align 8, !dbg !1824
  %hasher = getelementptr inbounds %struct.hash_table* %2, i32 0, i32 6, !dbg !1824
  %3 = load i64 (i8*, i64)** %hasher, align 8, !dbg !1824
  %4 = load i8** %entry.addr, align 8, !dbg !1824
  %5 = load %struct.hash_table** %table.addr, align 8, !dbg !1824
  %n_buckets = getelementptr inbounds %struct.hash_table* %5, i32 0, i32 2, !dbg !1824
  %6 = load i64* %n_buckets, align 8, !dbg !1824
  %call = call i64 %3(i8* %4, i64 %6), !dbg !1824
  %add.ptr = getelementptr inbounds %struct.hash_entry* %1, i64 %call, !dbg !1824
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket, align 8, !dbg !1824
  %7 = load %struct.hash_entry** %bucket, align 8, !dbg !1825
  %8 = load %struct.hash_table** %table.addr, align 8, !dbg !1825
  %bucket_limit = getelementptr inbounds %struct.hash_table* %8, i32 0, i32 1, !dbg !1825
  %9 = load %struct.hash_entry** %bucket_limit, align 8, !dbg !1825
  %cmp = icmp ult %struct.hash_entry* %7, %9, !dbg !1825
  br i1 %cmp, label %if.end, label %if.then, !dbg !1825

if.then:                                          ; preds = %entry
  call void @abort() #16, !dbg !1827
  unreachable, !dbg !1827

if.end:                                           ; preds = %entry
  %10 = load %struct.hash_entry** %bucket, align 8, !dbg !1828
  %11 = load %struct.hash_entry*** %bucket_head.addr, align 8, !dbg !1828
  store %struct.hash_entry* %10, %struct.hash_entry** %11, align 8, !dbg !1828
  %12 = load %struct.hash_entry** %bucket, align 8, !dbg !1829
  %data = getelementptr inbounds %struct.hash_entry* %12, i32 0, i32 0, !dbg !1829
  %13 = load i8** %data, align 8, !dbg !1829
  %cmp3 = icmp eq i8* %13, null, !dbg !1829
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1829

if.then4:                                         ; preds = %if.end
  store i8* null, i8** %retval, !dbg !1831
  br label %return, !dbg !1831

if.end5:                                          ; preds = %if.end
  %14 = load %struct.hash_table** %table.addr, align 8, !dbg !1832
  %comparator = getelementptr inbounds %struct.hash_table* %14, i32 0, i32 7, !dbg !1832
  %15 = load i1 (i8*, i8*)** %comparator, align 8, !dbg !1832
  %16 = load i8** %entry.addr, align 8, !dbg !1832
  %17 = load %struct.hash_entry** %bucket, align 8, !dbg !1832
  %data6 = getelementptr inbounds %struct.hash_entry* %17, i32 0, i32 0, !dbg !1832
  %18 = load i8** %data6, align 8, !dbg !1832
  %call7 = call zeroext i1 %15(i8* %16, i8* %18), !dbg !1832
  %19 = load %struct.hash_entry** %bucket, align 8, !dbg !1834
  br i1 %call7, label %if.then8, label %if.end19, !dbg !1832

if.then8:                                         ; preds = %if.end5
  %data10 = getelementptr inbounds %struct.hash_entry* %19, i32 0, i32 0, !dbg !1834
  %20 = load i8** %data10, align 8, !dbg !1834
  store i8* %20, i8** %data9, align 8, !dbg !1834
  %21 = load i8* %delete.addr, align 1, !dbg !1836
  %tobool = trunc i8 %21 to i1, !dbg !1836
  br i1 %tobool, label %if.then11, label %if.end18, !dbg !1836

if.then11:                                        ; preds = %if.then8
  %22 = load %struct.hash_entry** %bucket, align 8, !dbg !1838
  %next = getelementptr inbounds %struct.hash_entry* %22, i32 0, i32 1, !dbg !1838
  %23 = load %struct.hash_entry** %next, align 8, !dbg !1838
  %tobool12 = icmp ne %struct.hash_entry* %23, null, !dbg !1838
  %24 = load %struct.hash_entry** %bucket, align 8, !dbg !1841
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !1838

if.then13:                                        ; preds = %if.then11
  %next15 = getelementptr inbounds %struct.hash_entry* %24, i32 0, i32 1, !dbg !1841
  %25 = load %struct.hash_entry** %next15, align 8, !dbg !1841
  store %struct.hash_entry* %25, %struct.hash_entry** %next14, align 8, !dbg !1841
  %26 = load %struct.hash_entry** %bucket, align 8, !dbg !1843
  %27 = load %struct.hash_entry** %next14, align 8, !dbg !1843
  %28 = bitcast %struct.hash_entry* %26 to i8*, !dbg !1843
  %29 = bitcast %struct.hash_entry* %27 to i8*, !dbg !1843
  %30 = call i8* @memcpy(i8* %28, i8* %29, i64 16)
  %31 = load %struct.hash_table** %table.addr, align 8, !dbg !1844
  %32 = load %struct.hash_entry** %next14, align 8, !dbg !1844
  call void @free_entry(%struct.hash_table* %31, %struct.hash_entry* %32), !dbg !1844
  br label %if.end18, !dbg !1845

if.else:                                          ; preds = %if.then11
  %data16 = getelementptr inbounds %struct.hash_entry* %24, i32 0, i32 0, !dbg !1846
  store i8* null, i8** %data16, align 8, !dbg !1846
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else, %if.then8
  %33 = load i8** %data9, align 8, !dbg !1848
  store i8* %33, i8** %retval, !dbg !1848
  br label %return, !dbg !1848

if.end19:                                         ; preds = %if.end5
  store %struct.hash_entry* %19, %struct.hash_entry** %cursor, align 8, !dbg !1849
  br label %for.cond, !dbg !1849

for.cond:                                         ; preds = %for.inc, %if.end19
  %34 = load %struct.hash_entry** %cursor, align 8, !dbg !1849
  %next20 = getelementptr inbounds %struct.hash_entry* %34, i32 0, i32 1, !dbg !1849
  %35 = load %struct.hash_entry** %next20, align 8, !dbg !1849
  %tobool21 = icmp ne %struct.hash_entry* %35, null, !dbg !1849
  br i1 %tobool21, label %for.body, label %for.end, !dbg !1849

for.body:                                         ; preds = %for.cond
  %36 = load %struct.hash_table** %table.addr, align 8, !dbg !1851
  %comparator22 = getelementptr inbounds %struct.hash_table* %36, i32 0, i32 7, !dbg !1851
  %37 = load i1 (i8*, i8*)** %comparator22, align 8, !dbg !1851
  %38 = load i8** %entry.addr, align 8, !dbg !1851
  %39 = load %struct.hash_entry** %cursor, align 8, !dbg !1851
  %next23 = getelementptr inbounds %struct.hash_entry* %39, i32 0, i32 1, !dbg !1851
  %40 = load %struct.hash_entry** %next23, align 8, !dbg !1851
  %data24 = getelementptr inbounds %struct.hash_entry* %40, i32 0, i32 0, !dbg !1851
  %41 = load i8** %data24, align 8, !dbg !1851
  %call25 = call zeroext i1 %37(i8* %38, i8* %41), !dbg !1851
  %42 = load %struct.hash_entry** %cursor, align 8, !dbg !1854
  %next28 = getelementptr inbounds %struct.hash_entry* %42, i32 0, i32 1, !dbg !1854
  %43 = load %struct.hash_entry** %next28, align 8, !dbg !1854
  br i1 %call25, label %if.then26, label %for.inc, !dbg !1851

if.then26:                                        ; preds = %for.body
  %data29 = getelementptr inbounds %struct.hash_entry* %43, i32 0, i32 0, !dbg !1854
  %44 = load i8** %data29, align 8, !dbg !1854
  store i8* %44, i8** %data27, align 8, !dbg !1854
  %45 = load i8* %delete.addr, align 1, !dbg !1856
  %tobool30 = trunc i8 %45 to i1, !dbg !1856
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !1856

if.then31:                                        ; preds = %if.then26
  %46 = load %struct.hash_entry** %cursor, align 8, !dbg !1858
  %next33 = getelementptr inbounds %struct.hash_entry* %46, i32 0, i32 1, !dbg !1858
  %47 = load %struct.hash_entry** %next33, align 8, !dbg !1858
  store %struct.hash_entry* %47, %struct.hash_entry** %next32, align 8, !dbg !1858
  %48 = load %struct.hash_entry** %next32, align 8, !dbg !1860
  %next34 = getelementptr inbounds %struct.hash_entry* %48, i32 0, i32 1, !dbg !1860
  %49 = load %struct.hash_entry** %next34, align 8, !dbg !1860
  %50 = load %struct.hash_entry** %cursor, align 8, !dbg !1860
  %next35 = getelementptr inbounds %struct.hash_entry* %50, i32 0, i32 1, !dbg !1860
  store %struct.hash_entry* %49, %struct.hash_entry** %next35, align 8, !dbg !1860
  %51 = load %struct.hash_table** %table.addr, align 8, !dbg !1861
  %52 = load %struct.hash_entry** %next32, align 8, !dbg !1861
  call void @free_entry(%struct.hash_table* %51, %struct.hash_entry* %52), !dbg !1861
  br label %if.end36, !dbg !1862

if.end36:                                         ; preds = %if.then31, %if.then26
  %53 = load i8** %data27, align 8, !dbg !1863
  store i8* %53, i8** %retval, !dbg !1863
  br label %return, !dbg !1863

for.inc:                                          ; preds = %for.body
  store %struct.hash_entry* %43, %struct.hash_entry** %cursor, align 8, !dbg !1849
  br label %for.cond, !dbg !1849

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, !dbg !1864
  br label %return, !dbg !1864

return:                                           ; preds = %for.end, %if.end36, %if.end18, %if.then4
  %54 = load i8** %retval, !dbg !1865
  ret i8* %54, !dbg !1865
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @is_prime(i64 %candidate) #0 {
entry:
  %candidate.addr = alloca i64, align 8
  %divisor = alloca i64, align 8
  %square = alloca i64, align 8
  store i64 %candidate, i64* %candidate.addr, align 8
  store i64 3, i64* %divisor, align 8, !dbg !1866
  %0 = load i64* %divisor, align 8, !dbg !1867
  %1 = load i64* %divisor, align 8, !dbg !1867
  %mul = mul i64 %0, %1, !dbg !1867
  store i64 %mul, i64* %square, align 8, !dbg !1867
  br label %while.cond, !dbg !1868

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64* %square, align 8, !dbg !1868
  %3 = load i64* %candidate.addr, align 8, !dbg !1868
  %cmp = icmp ult i64 %2, %3, !dbg !1868
  br i1 %cmp, label %land.rhs, label %while.end, !dbg !1868

land.rhs:                                         ; preds = %while.cond
  %4 = load i64* %candidate.addr, align 8, !dbg !1868
  %5 = load i64* %divisor, align 8, !dbg !1868
  %int_cast_to_i64 = bitcast i64 %5 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1868
  %rem = urem i64 %4, %5, !dbg !1868
  %tobool = icmp ne i64 %rem, 0, !dbg !1868
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = load i64* %divisor, align 8, !dbg !1869
  %inc = add i64 %6, 1, !dbg !1869
  store i64 %inc, i64* %divisor, align 8, !dbg !1869
  %7 = load i64* %divisor, align 8, !dbg !1871
  %mul1 = mul i64 4, %7, !dbg !1871
  %8 = load i64* %square, align 8, !dbg !1871
  %add = add i64 %8, %mul1, !dbg !1871
  store i64 %add, i64* %square, align 8, !dbg !1871
  %9 = load i64* %divisor, align 8, !dbg !1872
  %inc2 = add i64 %9, 1, !dbg !1872
  store i64 %inc2, i64* %divisor, align 8, !dbg !1872
  br label %while.cond, !dbg !1873

while.end:                                        ; preds = %while.cond, %land.rhs
  %10 = load i64* %candidate.addr, align 8, !dbg !1874
  %11 = load i64* %divisor, align 8, !dbg !1874
  %int_cast_to_i641 = bitcast i64 %11 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !1874
  %rem3 = urem i64 %10, %11, !dbg !1874
  %tobool4 = icmp ne i64 %rem3, 0, !dbg !1874
  %cond = select i1 %tobool4, i32 1, i32 0, !dbg !1874
  %tobool5 = icmp ne i32 %cond, 0, !dbg !1874
  ret i1 %tobool5, !dbg !1874
}

; Function Attrs: nounwind uwtable
define i8* @quote_n(i32 %n, i8* %name) #0 {
entry:
  %n.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load i32* %n.addr, align 4, !dbg !1875
  %1 = load i8** %name.addr, align 8, !dbg !1875
  %call = call i8* @quotearg_n_style(i32 %0, i32 5, i8* %1), !dbg !1875
  ret i8* %call, !dbg !1875
}

; Function Attrs: nounwind uwtable
define i8* @quote(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8** %name.addr, align 8, !dbg !1876
  %call = call i8* @quote_n(i32 0, i8* %0), !dbg !1876
  ret i8* %call, !dbg !1876
}

; Function Attrs: nounwind uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %call = call i32* @__errno_location() #1, !dbg !1877
  %0 = load i32* %call, align 4, !dbg !1877
  store i32 %0, i32* %e, align 4, !dbg !1877
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1878
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !1878
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !1878
  %cond = select i1 %tobool, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !1878
  %3 = bitcast %struct.quoting_options* %cond to i8*, !dbg !1878
  %call1 = call i8* @xmemdup(i8* %3, i64 36), !dbg !1878
  %4 = bitcast i8* %call1 to %struct.quoting_options*, !dbg !1878
  store %struct.quoting_options* %4, %struct.quoting_options** %p, align 8, !dbg !1878
  %5 = load i32* %e, align 4, !dbg !1879
  %call2 = call i32* @__errno_location() #1, !dbg !1879
  store i32 %5, i32* %call2, align 4, !dbg !1879
  %6 = load %struct.quoting_options** %p, align 8, !dbg !1880
  ret %struct.quoting_options* %6, !dbg !1880
}

; Function Attrs: nounwind uwtable
define i32 @get_quoting_style(%struct.quoting_options* %o) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !1881
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1881
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1881
  %cond = select i1 %tobool, %struct.quoting_options* %1, %struct.quoting_options* @default_quoting_options, !dbg !1881
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !1881
  %2 = load i32* %style, align 4, !dbg !1881
  ret i32 %2, !dbg !1881
}

; Function Attrs: nounwind uwtable
define void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #0 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32* %s.addr, align 4, !dbg !1882
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1882
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !1882
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !1882
  %cond = select i1 %tobool, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !1882
  %style = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 0, !dbg !1882
  store i32 %0, i32* %style, align 4, !dbg !1882
  ret void, !dbg !1883
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
  store i8 %c, i8* %c.addr, align 1
  store i32 %i, i32* %i.addr, align 4
  %0 = load i8* %c.addr, align 1, !dbg !1884
  store i8 %0, i8* %uc, align 1, !dbg !1884
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1885
  %tobool = icmp ne %struct.quoting_options* %1, null, !dbg !1885
  %2 = load %struct.quoting_options** %o.addr, align 8, !dbg !1885
  %cond = select i1 %tobool, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !1885
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %cond, i32 0, i32 1, !dbg !1885
  %arraydecay = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i32 0, !dbg !1885
  %3 = load i8* %uc, align 1, !dbg !1885
  %conv = zext i8 %3 to i64, !dbg !1885
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1885
  %div = udiv i64 %conv, 32, !dbg !1885
  %add.ptr = getelementptr inbounds i32* %arraydecay, i64 %div, !dbg !1885
  store i32* %add.ptr, i32** %p, align 8, !dbg !1885
  %4 = load i8* %uc, align 1, !dbg !1886
  %conv1 = zext i8 %4 to i64, !dbg !1886
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !1886
  %rem = urem i64 %conv1, 32, !dbg !1886
  %conv2 = trunc i64 %rem to i32, !dbg !1886
  store i32 %conv2, i32* %shift, align 4, !dbg !1886
  %5 = load i32** %p, align 8, !dbg !1887
  %6 = load i32* %5, align 4, !dbg !1887
  %7 = load i32* %shift, align 4, !dbg !1887
  %int_cast_to_i642 = zext i32 %7 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !1887
  %shr = lshr i32 %6, %7, !dbg !1887
  %and = and i32 %shr, 1, !dbg !1887
  store i32 %and, i32* %r, align 4, !dbg !1887
  %8 = load i32* %i.addr, align 4, !dbg !1888
  %and3 = and i32 %8, 1, !dbg !1888
  %9 = load i32* %r, align 4, !dbg !1888
  %xor = xor i32 %and3, %9, !dbg !1888
  %10 = load i32* %shift, align 4, !dbg !1888
  %int_cast_to_i643 = zext i32 %10 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !1888
  %shl = shl i32 %xor, %10, !dbg !1888
  %11 = load i32** %p, align 8, !dbg !1888
  %12 = load i32* %11, align 4, !dbg !1888
  %xor4 = xor i32 %12, %shl, !dbg !1888
  store i32 %xor4, i32* %11, align 4, !dbg !1888
  %13 = load i32* %r, align 4, !dbg !1889
  ret i32 %13, !dbg !1889
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
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load %struct.quoting_options** %o.addr, align 8, !dbg !1890
  %tobool = icmp ne %struct.quoting_options* %0, null, !dbg !1890
  %1 = load %struct.quoting_options** %o.addr, align 8, !dbg !1890
  %cond = select i1 %tobool, %struct.quoting_options* %1, %struct.quoting_options* @default_quoting_options, !dbg !1890
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !dbg !1890
  %call = call i32* @__errno_location() #1, !dbg !1891
  %2 = load i32* %call, align 4, !dbg !1891
  store i32 %2, i32* %e, align 4, !dbg !1891
  %3 = load i8** %buffer.addr, align 8, !dbg !1892
  %4 = load i64* %buffersize.addr, align 8, !dbg !1892
  %5 = load i8** %arg.addr, align 8, !dbg !1892
  %6 = load i64* %argsize.addr, align 8, !dbg !1892
  %7 = load %struct.quoting_options** %p, align 8, !dbg !1892
  %style = getelementptr inbounds %struct.quoting_options* %7, i32 0, i32 0, !dbg !1892
  %8 = load i32* %style, align 4, !dbg !1892
  %9 = load %struct.quoting_options** %p, align 8, !dbg !1892
  %call1 = call i64 @quotearg_buffer_restyled(i8* %3, i64 %4, i8* %5, i64 %6, i32 %8, %struct.quoting_options* %9), !dbg !1892
  store i64 %call1, i64* %r, align 8, !dbg !1892
  %10 = load i32* %e, align 4, !dbg !1893
  %call2 = call i32* @__errno_location() #1, !dbg !1893
  store i32 %10, i32* %call2, align 4, !dbg !1893
  %11 = load i64* %r, align 8, !dbg !1894
  ret i64 %11, !dbg !1894
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
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %call = call i32* @__errno_location() #1, !dbg !1895
  %0 = load i32* %call, align 4, !dbg !1895
  store i32 %0, i32* %e, align 4, !dbg !1895
  %1 = load i8** %arg.addr, align 8, !dbg !1896
  %2 = load i64* %argsize.addr, align 8, !dbg !1896
  %3 = load %struct.quoting_options** %o.addr, align 8, !dbg !1896
  %call1 = call i64 @quotearg_buffer(i8* null, i64 0, i8* %1, i64 %2, %struct.quoting_options* %3), !dbg !1896
  %add = add i64 %call1, 1, !dbg !1896
  store i64 %add, i64* %bufsize, align 8, !dbg !1896
  %4 = load i64* %bufsize, align 8, !dbg !1897
  %call2 = call i8* @xcharalloc(i64 %4), !dbg !1897
  store i8* %call2, i8** %buf, align 8, !dbg !1897
  %5 = load i8** %buf, align 8, !dbg !1898
  %6 = load i64* %bufsize, align 8, !dbg !1898
  %7 = load i8** %arg.addr, align 8, !dbg !1898
  %8 = load i64* %argsize.addr, align 8, !dbg !1898
  %9 = load %struct.quoting_options** %o.addr, align 8, !dbg !1898
  %call3 = call i64 @quotearg_buffer(i8* %5, i64 %6, i8* %7, i64 %8, %struct.quoting_options* %9), !dbg !1898
  %10 = load i32* %e, align 4, !dbg !1899
  %call4 = call i32* @__errno_location() #1, !dbg !1899
  store i32 %10, i32* %call4, align 4, !dbg !1899
  %11 = load i8** %buf, align 8, !dbg !1900
  ret i8* %11, !dbg !1900
}

; Function Attrs: nounwind uwtable
define void @quotearg_free() #0 {
entry:
  %sv = alloca %struct.slotvec*, align 8
  %i = alloca i32, align 4
  %0 = load %struct.slotvec** @slotvec, align 8, !dbg !1901
  store %struct.slotvec* %0, %struct.slotvec** %sv, align 8, !dbg !1901
  store i32 1, i32* %i, align 4, !dbg !1902
  br label %for.cond, !dbg !1902

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32* %i, align 4, !dbg !1902
  %2 = load i32* @nslots, align 4, !dbg !1902
  %cmp = icmp ult i32 %1, %2, !dbg !1902
  br i1 %cmp, label %for.body, label %for.end, !dbg !1902

for.body:                                         ; preds = %for.cond
  %3 = load i32* %i, align 4, !dbg !1904
  %idxprom = zext i32 %3 to i64, !dbg !1904
  %4 = load %struct.slotvec** %sv, align 8, !dbg !1904
  %arrayidx = getelementptr inbounds %struct.slotvec* %4, i64 %idxprom, !dbg !1904
  %val = getelementptr inbounds %struct.slotvec* %arrayidx, i32 0, i32 1, !dbg !1904
  %5 = load i8** %val, align 8, !dbg !1904
  call void @free(i8* %5) #9, !dbg !1904
  %6 = load i32* %i, align 4, !dbg !1902
  %inc = add i32 %6, 1, !dbg !1902
  store i32 %inc, i32* %i, align 4, !dbg !1902
  br label %for.cond, !dbg !1902

for.end:                                          ; preds = %for.cond
  %7 = load %struct.slotvec** %sv, align 8, !dbg !1905
  %arrayidx1 = getelementptr inbounds %struct.slotvec* %7, i64 0, !dbg !1905
  %val2 = getelementptr inbounds %struct.slotvec* %arrayidx1, i32 0, i32 1, !dbg !1905
  %8 = load i8** %val2, align 8, !dbg !1905
  %cmp3 = icmp ne i8* %8, getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0), !dbg !1905
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1905

if.then:                                          ; preds = %for.end
  %9 = load %struct.slotvec** %sv, align 8, !dbg !1907
  %arrayidx4 = getelementptr inbounds %struct.slotvec* %9, i64 0, !dbg !1907
  %val5 = getelementptr inbounds %struct.slotvec* %arrayidx4, i32 0, i32 1, !dbg !1907
  %10 = load i8** %val5, align 8, !dbg !1907
  call void @free(i8* %10) #9, !dbg !1907
  store i64 256, i64* getelementptr inbounds (%struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !dbg !1909
  store i8* getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0), i8** getelementptr inbounds (%struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !dbg !1910
  br label %if.end, !dbg !1911

if.end:                                           ; preds = %if.then, %for.end
  %11 = load %struct.slotvec** %sv, align 8, !dbg !1912
  %cmp6 = icmp ne %struct.slotvec* %11, @slotvec0, !dbg !1912
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1912

if.then7:                                         ; preds = %if.end
  %12 = load %struct.slotvec** %sv, align 8, !dbg !1914
  %13 = bitcast %struct.slotvec* %12 to i8*, !dbg !1914
  call void @free(i8* %13) #9, !dbg !1914
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1916
  br label %if.end8, !dbg !1917

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 1, i32* @nslots, align 4, !dbg !1918
  ret void, !dbg !1919
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n(i32 %n, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32* %n.addr, align 4, !dbg !1920
  %1 = load i8** %arg.addr, align 8, !dbg !1920
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options), !dbg !1920
  ret i8* %call, !dbg !1920
}

; Function Attrs: nounwind uwtable
define i8* @quotearg(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8** %arg.addr, align 8, !dbg !1921
  %call = call i8* @quotearg_n(i32 0, i8* %0), !dbg !1921
  ret i8* %call, !dbg !1921
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32* %s.addr, align 4, !dbg !1922
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1922
  %1 = load i32* %n.addr, align 4, !dbg !1923
  %2 = load i8** %arg.addr, align 8, !dbg !1923
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 -1, %struct.quoting_options* %o), !dbg !1923
  ret i8* %call, !dbg !1923
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
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i32* %s.addr, align 4, !dbg !1924
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %0), !dbg !1924
  %1 = load i32* %n.addr, align 4, !dbg !1925
  %2 = load i8** %arg.addr, align 8, !dbg !1925
  %3 = load i64* %argsize.addr, align 8, !dbg !1925
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 %3, %struct.quoting_options* %o), !dbg !1925
  ret i8* %call, !dbg !1925
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_style(i32 %s, i8* %arg) #0 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32* %s.addr, align 4, !dbg !1926
  %1 = load i8** %arg.addr, align 8, !dbg !1926
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1), !dbg !1926
  ret i8* %call, !dbg !1926
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_char(i8* %arg, i8 signext %ch) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %0 = bitcast %struct.quoting_options* %options to i8*, !dbg !1927
  %1 = call i8* @memcpy(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 36)
  %2 = load i8* %ch.addr, align 1, !dbg !1928
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %2, i32 1), !dbg !1928
  %3 = load i8** %arg.addr, align 8, !dbg !1929
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %3, i64 -1, %struct.quoting_options* %options), !dbg !1929
  ret i8* %call1, !dbg !1929
}

; Function Attrs: nounwind uwtable
define i8* @quotearg_colon(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8** %arg.addr, align 8, !dbg !1930
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58), !dbg !1930
  ret i8* %call, !dbg !1930
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #9

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #7

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
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i64 0, i64* %len, align 8, !dbg !1931
  store i8* null, i8** %quote_string, align 8, !dbg !1932
  store i64 0, i64* %quote_string_len, align 8, !dbg !1933
  store i8 0, i8* %backslash_escapes, align 1, !dbg !1934
  %call = call i64 @__ctype_get_mb_cur_max() #9, !dbg !1935
  %cmp = icmp eq i64 %call, 1, !dbg !1935
  %frombool = zext i1 %cmp to i8, !dbg !1935
  store i8 %frombool, i8* %unibyte_locale, align 1, !dbg !1935
  %0 = load i32* %quoting_style.addr, align 4, !dbg !1936
  switch i32 %0, label %sw.epilog [
    i32 3, label %do.body
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb3
    i32 2, label %do.body15
  ], !dbg !1936

do.body:                                          ; preds = %entry
  %1 = load i64* %len, align 8, !dbg !1937
  %2 = load i64* %buffersize.addr, align 8, !dbg !1937
  %cmp1 = icmp ult i64 %1, %2, !dbg !1937
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1937

if.then:                                          ; preds = %do.body
  %3 = load i64* %len, align 8, !dbg !1937
  %4 = load i8** %buffer.addr, align 8, !dbg !1937
  %arrayidx = getelementptr inbounds i8* %4, i64 %3, !dbg !1937
  store i8 34, i8* %arrayidx, align 1, !dbg !1937
  br label %if.end, !dbg !1937

if.end:                                           ; preds = %if.then, %do.body
  %5 = load i64* %len, align 8, !dbg !1941
  %inc = add i64 %5, 1, !dbg !1941
  store i64 %inc, i64* %len, align 8, !dbg !1941
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1942
  store i8* getelementptr inbounds ([2 x i8]* @.str7111, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1943
  store i64 1, i64* %quote_string_len, align 8, !dbg !1944
  br label %sw.epilog, !dbg !1945

sw.bb2:                                           ; preds = %entry
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1946
  br label %sw.epilog, !dbg !1947

sw.bb3:                                           ; preds = %entry, %entry
  %6 = load i32* %quoting_style.addr, align 4, !dbg !1948
  %call4 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str8112, i32 0, i32 0), i32 %6), !dbg !1948
  store i8* %call4, i8** %left, align 8, !dbg !1948
  %7 = load i32* %quoting_style.addr, align 4, !dbg !1950
  %call5 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8]* @.str9113, i32 0, i32 0), i32 %7), !dbg !1950
  store i8* %call5, i8** %right, align 8, !dbg !1950
  %8 = load i8** %left, align 8, !dbg !1951
  store i8* %8, i8** %quote_string, align 8, !dbg !1951
  br label %for.cond, !dbg !1951

for.cond:                                         ; preds = %if.end10, %sw.bb3
  %9 = load i8** %quote_string, align 8, !dbg !1951
  %10 = load i8* %9, align 1, !dbg !1951
  %tobool = icmp ne i8 %10, 0, !dbg !1951
  br i1 %tobool, label %do.body6, label %for.end, !dbg !1951

do.body6:                                         ; preds = %for.cond
  %11 = load i64* %len, align 8, !dbg !1953
  %12 = load i64* %buffersize.addr, align 8, !dbg !1953
  %cmp7 = icmp ult i64 %11, %12, !dbg !1953
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !1953

if.then8:                                         ; preds = %do.body6
  %13 = load i8** %quote_string, align 8, !dbg !1953
  %14 = load i8* %13, align 1, !dbg !1953
  %15 = load i64* %len, align 8, !dbg !1953
  %16 = load i8** %buffer.addr, align 8, !dbg !1953
  %arrayidx9 = getelementptr inbounds i8* %16, i64 %15, !dbg !1953
  store i8 %14, i8* %arrayidx9, align 1, !dbg !1953
  br label %if.end10, !dbg !1953

if.end10:                                         ; preds = %if.then8, %do.body6
  %17 = load i64* %len, align 8, !dbg !1956
  %inc11 = add i64 %17, 1, !dbg !1956
  store i64 %inc11, i64* %len, align 8, !dbg !1956
  %18 = load i8** %quote_string, align 8, !dbg !1951
  %incdec.ptr = getelementptr inbounds i8* %18, i32 1, !dbg !1951
  store i8* %incdec.ptr, i8** %quote_string, align 8, !dbg !1951
  br label %for.cond, !dbg !1951

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %backslash_escapes, align 1, !dbg !1957
  %19 = load i8** %right, align 8, !dbg !1958
  store i8* %19, i8** %quote_string, align 8, !dbg !1958
  %20 = load i8** %quote_string, align 8, !dbg !1959
  %call13 = call i64 @strlen(i8* %20) #17, !dbg !1959
  store i64 %call13, i64* %quote_string_len, align 8, !dbg !1959
  br label %sw.epilog, !dbg !1960

do.body15:                                        ; preds = %entry
  %21 = load i64* %len, align 8, !dbg !1961
  %22 = load i64* %buffersize.addr, align 8, !dbg !1961
  %cmp16 = icmp ult i64 %21, %22, !dbg !1961
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1961

if.then17:                                        ; preds = %do.body15
  %23 = load i64* %len, align 8, !dbg !1961
  %24 = load i8** %buffer.addr, align 8, !dbg !1961
  %arrayidx18 = getelementptr inbounds i8* %24, i64 %23, !dbg !1961
  store i8 39, i8* %arrayidx18, align 1, !dbg !1961
  br label %if.end19, !dbg !1961

if.end19:                                         ; preds = %if.then17, %do.body15
  %25 = load i64* %len, align 8, !dbg !1964
  %inc20 = add i64 %25, 1, !dbg !1964
  store i64 %inc20, i64* %len, align 8, !dbg !1964
  store i8* getelementptr inbounds ([2 x i8]* @.str9113, i32 0, i32 0), i8** %quote_string, align 8, !dbg !1965
  store i64 1, i64* %quote_string_len, align 8, !dbg !1966
  br label %sw.epilog, !dbg !1967

sw.epilog:                                        ; preds = %entry, %if.end19, %for.end, %sw.bb2, %if.end
  store i64 0, i64* %i, align 8, !dbg !1968
  br label %for.cond22, !dbg !1968

for.cond22:                                       ; preds = %if.end364, %sw.epilog
  %26 = load i64* %argsize.addr, align 8, !dbg !1968
  %cmp23 = icmp eq i64 %26, -1, !dbg !1968
  %27 = load i64* %i, align 8, !dbg !1968
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !1968

cond.true:                                        ; preds = %for.cond22
  %28 = load i8** %arg.addr, align 8, !dbg !1968
  %arrayidx24 = getelementptr inbounds i8* %28, i64 %27, !dbg !1968
  %29 = load i8* %arrayidx24, align 1, !dbg !1968
  %conv = sext i8 %29 to i32, !dbg !1968
  %cmp25 = icmp eq i32 %conv, 0, !dbg !1968
  br i1 %cmp25, label %for.end370, label %for.body29, !dbg !1968

cond.false:                                       ; preds = %for.cond22
  %30 = load i64* %argsize.addr, align 8, !dbg !1968
  %cmp27 = icmp eq i64 %27, %30, !dbg !1968
  br i1 %cmp27, label %for.end370, label %for.body29, !dbg !1968

for.body29:                                       ; preds = %cond.false, %cond.true
  %31 = load i8* %backslash_escapes, align 1, !dbg !1970
  %tobool30 = trunc i8 %31 to i1, !dbg !1970
  %32 = load i64* %quote_string_len, align 8, !dbg !1970
  %tobool32 = icmp ne i64 %32, 0, !dbg !1970
  %or.cond = and i1 %tobool30, %tobool32, !dbg !1970
  br i1 %or.cond, label %land.lhs.true33, label %if.end49, !dbg !1970

land.lhs.true33:                                  ; preds = %for.body29
  %33 = load i64* %i, align 8, !dbg !1970
  %34 = load i64* %quote_string_len, align 8, !dbg !1970
  %add = add i64 %33, %34, !dbg !1970
  %35 = load i64* %argsize.addr, align 8, !dbg !1970
  %cmp34 = icmp ule i64 %add, %35, !dbg !1970
  br i1 %cmp34, label %land.lhs.true36, label %if.end49, !dbg !1970

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %36 = load i8** %arg.addr, align 8, !dbg !1973
  %37 = load i64* %i, align 8, !dbg !1973
  %add.ptr = getelementptr inbounds i8* %36, i64 %37, !dbg !1973
  %38 = load i8** %quote_string, align 8, !dbg !1973
  %39 = load i64* %quote_string_len, align 8, !dbg !1973
  %call37 = call i32 @memcmp(i8* %add.ptr, i8* %38, i64 %39) #17, !dbg !1973
  %cmp38 = icmp eq i32 %call37, 0, !dbg !1973
  br i1 %cmp38, label %do.body41, label %if.end49, !dbg !1973

do.body41:                                        ; preds = %land.lhs.true36
  %40 = load i64* %len, align 8, !dbg !1974
  %41 = load i64* %buffersize.addr, align 8, !dbg !1974
  %cmp42 = icmp ult i64 %40, %41, !dbg !1974
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1974

if.then44:                                        ; preds = %do.body41
  %42 = load i64* %len, align 8, !dbg !1974
  %43 = load i8** %buffer.addr, align 8, !dbg !1974
  %arrayidx45 = getelementptr inbounds i8* %43, i64 %42, !dbg !1974
  store i8 92, i8* %arrayidx45, align 1, !dbg !1974
  br label %if.end46, !dbg !1974

if.end46:                                         ; preds = %if.then44, %do.body41
  %44 = load i64* %len, align 8, !dbg !1977
  %inc47 = add i64 %44, 1, !dbg !1977
  store i64 %inc47, i64* %len, align 8, !dbg !1977
  br label %if.end49, !dbg !1977

if.end49:                                         ; preds = %if.end46, %land.lhs.true36, %land.lhs.true33, %for.body29
  %45 = load i64* %i, align 8, !dbg !1978
  %46 = load i8** %arg.addr, align 8, !dbg !1978
  %arrayidx50 = getelementptr inbounds i8* %46, i64 %45, !dbg !1978
  %47 = load i8* %arrayidx50, align 1, !dbg !1978
  store i8 %47, i8* %c, align 1, !dbg !1978
  %48 = load i8* %c, align 1, !dbg !1979
  %conv51 = zext i8 %48 to i32, !dbg !1979
  switch i32 %conv51, label %sw.default197 [
    i32 0, label %sw.bb52
    i32 63, label %sw.bb80
    i32 7, label %sw.bb129
    i32 8, label %sw.bb130
    i32 12, label %sw.bb131
    i32 10, label %sw.bb132
    i32 13, label %sw.bb133
    i32 9, label %sw.bb134
    i32 11, label %sw.bb135
    i32 92, label %sw.bb136
    i32 123, label %sw.bb144
    i32 125, label %sw.bb144
    i32 35, label %sw.bb157
    i32 126, label %sw.bb157
    i32 32, label %sw.bb162
    i32 33, label %sw.bb162
    i32 34, label %sw.bb162
    i32 36, label %sw.bb162
    i32 38, label %sw.bb162
    i32 40, label %sw.bb162
    i32 41, label %sw.bb162
    i32 42, label %sw.bb162
    i32 59, label %sw.bb162
    i32 60, label %sw.bb162
    i32 61, label %sw.bb162
    i32 62, label %sw.bb162
    i32 91, label %sw.bb162
    i32 94, label %sw.bb162
    i32 96, label %sw.bb162
    i32 124, label %sw.bb162
    i32 39, label %sw.bb167
    i32 37, label %sw.epilog339
    i32 43, label %sw.epilog339
    i32 44, label %sw.epilog339
    i32 45, label %sw.epilog339
    i32 46, label %sw.epilog339
    i32 47, label %sw.epilog339
    i32 48, label %sw.epilog339
    i32 49, label %sw.epilog339
    i32 50, label %sw.epilog339
    i32 51, label %sw.epilog339
    i32 52, label %sw.epilog339
    i32 53, label %sw.epilog339
    i32 54, label %sw.epilog339
    i32 55, label %sw.epilog339
    i32 56, label %sw.epilog339
    i32 57, label %sw.epilog339
    i32 58, label %sw.epilog339
    i32 65, label %sw.epilog339
    i32 66, label %sw.epilog339
    i32 67, label %sw.epilog339
    i32 68, label %sw.epilog339
    i32 69, label %sw.epilog339
    i32 70, label %sw.epilog339
    i32 71, label %sw.epilog339
    i32 72, label %sw.epilog339
    i32 73, label %sw.epilog339
    i32 74, label %sw.epilog339
    i32 75, label %sw.epilog339
    i32 76, label %sw.epilog339
    i32 77, label %sw.epilog339
    i32 78, label %sw.epilog339
    i32 79, label %sw.epilog339
    i32 80, label %sw.epilog339
    i32 81, label %sw.epilog339
    i32 82, label %sw.epilog339
    i32 83, label %sw.epilog339
    i32 84, label %sw.epilog339
    i32 85, label %sw.epilog339
    i32 86, label %sw.epilog339
    i32 87, label %sw.epilog339
    i32 88, label %sw.epilog339
    i32 89, label %sw.epilog339
    i32 90, label %sw.epilog339
    i32 93, label %sw.epilog339
    i32 95, label %sw.epilog339
    i32 97, label %sw.epilog339
    i32 98, label %sw.epilog339
    i32 99, label %sw.epilog339
    i32 100, label %sw.epilog339
    i32 101, label %sw.epilog339
    i32 102, label %sw.epilog339
    i32 103, label %sw.epilog339
    i32 104, label %sw.epilog339
    i32 105, label %sw.epilog339
    i32 106, label %sw.epilog339
    i32 107, label %sw.epilog339
    i32 108, label %sw.epilog339
    i32 109, label %sw.epilog339
    i32 110, label %sw.epilog339
    i32 111, label %sw.epilog339
    i32 112, label %sw.epilog339
    i32 113, label %sw.epilog339
    i32 114, label %sw.epilog339
    i32 115, label %sw.epilog339
    i32 116, label %sw.epilog339
    i32 117, label %sw.epilog339
    i32 118, label %sw.epilog339
    i32 119, label %sw.epilog339
    i32 120, label %sw.epilog339
    i32 121, label %sw.epilog339
    i32 122, label %sw.epilog339
  ], !dbg !1979

sw.bb52:                                          ; preds = %if.end49
  %49 = load i8* %backslash_escapes, align 1, !dbg !1980
  %tobool53 = trunc i8 %49 to i1, !dbg !1980
  br i1 %tobool53, label %do.body55, label %sw.epilog339, !dbg !1980

do.body55:                                        ; preds = %sw.bb52
  %50 = load i64* %len, align 8, !dbg !1983
  %51 = load i64* %buffersize.addr, align 8, !dbg !1983
  %cmp56 = icmp ult i64 %50, %51, !dbg !1983
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !1983

if.then58:                                        ; preds = %do.body55
  %52 = load i64* %len, align 8, !dbg !1983
  %53 = load i8** %buffer.addr, align 8, !dbg !1983
  %arrayidx59 = getelementptr inbounds i8* %53, i64 %52, !dbg !1983
  store i8 92, i8* %arrayidx59, align 1, !dbg !1983
  br label %if.end60, !dbg !1983

if.end60:                                         ; preds = %if.then58, %do.body55
  %54 = load i64* %len, align 8, !dbg !1987
  %inc61 = add i64 %54, 1, !dbg !1987
  store i64 %inc61, i64* %len, align 8, !dbg !1987
  %55 = load i64* %len, align 8, !dbg !1988
  %56 = load i64* %buffersize.addr, align 8, !dbg !1988
  %cmp64 = icmp ult i64 %55, %56, !dbg !1988
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !1988

if.then66:                                        ; preds = %if.end60
  %57 = load i64* %len, align 8, !dbg !1988
  %58 = load i8** %buffer.addr, align 8, !dbg !1988
  %arrayidx67 = getelementptr inbounds i8* %58, i64 %57, !dbg !1988
  store i8 48, i8* %arrayidx67, align 1, !dbg !1988
  br label %if.end68, !dbg !1988

if.end68:                                         ; preds = %if.then66, %if.end60
  %59 = load i64* %len, align 8, !dbg !1991
  %inc69 = add i64 %59, 1, !dbg !1991
  store i64 %inc69, i64* %len, align 8, !dbg !1991
  %60 = load i64* %len, align 8, !dbg !1992
  %61 = load i64* %buffersize.addr, align 8, !dbg !1992
  %cmp72 = icmp ult i64 %60, %61, !dbg !1992
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !1992

if.then74:                                        ; preds = %if.end68
  %62 = load i64* %len, align 8, !dbg !1992
  %63 = load i8** %buffer.addr, align 8, !dbg !1992
  %arrayidx75 = getelementptr inbounds i8* %63, i64 %62, !dbg !1992
  store i8 48, i8* %arrayidx75, align 1, !dbg !1992
  br label %if.end76, !dbg !1992

if.end76:                                         ; preds = %if.then74, %if.end68
  %64 = load i64* %len, align 8, !dbg !1995
  %inc77 = add i64 %64, 1, !dbg !1995
  store i64 %inc77, i64* %len, align 8, !dbg !1995
  store i8 48, i8* %c, align 1, !dbg !1996
  br label %sw.epilog339, !dbg !1997

sw.bb80:                                          ; preds = %if.end49
  %65 = load i32* %quoting_style.addr, align 4, !dbg !1998
  switch i32 %65, label %sw.epilog339 [
    i32 1, label %use_shell_always_quoting_style
    i32 3, label %sw.bb82
  ], !dbg !1998

sw.bb82:                                          ; preds = %sw.bb80
  %66 = load i64* %i, align 8, !dbg !1999
  %add83 = add i64 %66, 2, !dbg !1999
  %67 = load i64* %argsize.addr, align 8, !dbg !1999
  %cmp84 = icmp ult i64 %add83, %67, !dbg !1999
  br i1 %cmp84, label %land.lhs.true86, label %sw.epilog339, !dbg !1999

land.lhs.true86:                                  ; preds = %sw.bb82
  %68 = load i64* %i, align 8, !dbg !1999
  %add87 = add i64 %68, 1, !dbg !1999
  %69 = load i8** %arg.addr, align 8, !dbg !1999
  %arrayidx88 = getelementptr inbounds i8* %69, i64 %add87, !dbg !1999
  %70 = load i8* %arrayidx88, align 1, !dbg !1999
  %conv89 = sext i8 %70 to i32, !dbg !1999
  %cmp90 = icmp eq i32 %conv89, 63, !dbg !1999
  br i1 %cmp90, label %if.then92, label %sw.epilog339, !dbg !1999

if.then92:                                        ; preds = %land.lhs.true86
  %71 = load i64* %i, align 8, !dbg !2002
  %add93 = add i64 %71, 2, !dbg !2002
  %72 = load i8** %arg.addr, align 8, !dbg !2002
  %arrayidx94 = getelementptr inbounds i8* %72, i64 %add93, !dbg !2002
  %73 = load i8* %arrayidx94, align 1, !dbg !2002
  %conv95 = sext i8 %73 to i32, !dbg !2002
  switch i32 %conv95, label %sw.epilog339 [
    i32 33, label %sw.bb96
    i32 39, label %sw.bb96
    i32 40, label %sw.bb96
    i32 41, label %sw.bb96
    i32 45, label %sw.bb96
    i32 47, label %sw.bb96
    i32 60, label %sw.bb96
    i32 61, label %sw.bb96
    i32 62, label %sw.bb96
  ], !dbg !2002

sw.bb96:                                          ; preds = %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92, %if.then92
  %74 = load i64* %i, align 8, !dbg !2003
  %add97 = add i64 %74, 2, !dbg !2003
  %75 = load i8** %arg.addr, align 8, !dbg !2003
  %arrayidx98 = getelementptr inbounds i8* %75, i64 %add97, !dbg !2003
  %76 = load i8* %arrayidx98, align 1, !dbg !2003
  store i8 %76, i8* %c, align 1, !dbg !2003
  %77 = load i64* %i, align 8, !dbg !2005
  %add99 = add i64 %77, 2, !dbg !2005
  store i64 %add99, i64* %i, align 8, !dbg !2005
  %78 = load i64* %len, align 8, !dbg !2006
  %79 = load i64* %buffersize.addr, align 8, !dbg !2006
  %cmp101 = icmp ult i64 %78, %79, !dbg !2006
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !2006

if.then103:                                       ; preds = %sw.bb96
  %80 = load i64* %len, align 8, !dbg !2006
  %81 = load i8** %buffer.addr, align 8, !dbg !2006
  %arrayidx104 = getelementptr inbounds i8* %81, i64 %80, !dbg !2006
  store i8 63, i8* %arrayidx104, align 1, !dbg !2006
  br label %if.end105, !dbg !2006

if.end105:                                        ; preds = %if.then103, %sw.bb96
  %82 = load i64* %len, align 8, !dbg !2009
  %inc106 = add i64 %82, 1, !dbg !2009
  store i64 %inc106, i64* %len, align 8, !dbg !2009
  %83 = load i64* %len, align 8, !dbg !2010
  %84 = load i64* %buffersize.addr, align 8, !dbg !2010
  %cmp109 = icmp ult i64 %83, %84, !dbg !2010
  br i1 %cmp109, label %if.then111, label %if.end113, !dbg !2010

if.then111:                                       ; preds = %if.end105
  %85 = load i64* %len, align 8, !dbg !2010
  %86 = load i8** %buffer.addr, align 8, !dbg !2010
  %arrayidx112 = getelementptr inbounds i8* %86, i64 %85, !dbg !2010
  store i8 92, i8* %arrayidx112, align 1, !dbg !2010
  br label %if.end113, !dbg !2010

if.end113:                                        ; preds = %if.then111, %if.end105
  %87 = load i64* %len, align 8, !dbg !2013
  %inc114 = add i64 %87, 1, !dbg !2013
  store i64 %inc114, i64* %len, align 8, !dbg !2013
  %88 = load i64* %len, align 8, !dbg !2014
  %89 = load i64* %buffersize.addr, align 8, !dbg !2014
  %cmp117 = icmp ult i64 %88, %89, !dbg !2014
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !2014

if.then119:                                       ; preds = %if.end113
  %90 = load i64* %len, align 8, !dbg !2014
  %91 = load i8** %buffer.addr, align 8, !dbg !2014
  %arrayidx120 = getelementptr inbounds i8* %91, i64 %90, !dbg !2014
  store i8 63, i8* %arrayidx120, align 1, !dbg !2014
  br label %if.end121, !dbg !2014

if.end121:                                        ; preds = %if.then119, %if.end113
  %92 = load i64* %len, align 8, !dbg !2017
  %inc122 = add i64 %92, 1, !dbg !2017
  store i64 %inc122, i64* %len, align 8, !dbg !2017
  br label %sw.epilog339, !dbg !2018

sw.bb129:                                         ; preds = %if.end49
  store i8 97, i8* %esc, align 1, !dbg !2019
  br label %c_escape, !dbg !2019

sw.bb130:                                         ; preds = %if.end49
  store i8 98, i8* %esc, align 1, !dbg !2020
  br label %c_escape, !dbg !2020

sw.bb131:                                         ; preds = %if.end49
  store i8 102, i8* %esc, align 1, !dbg !2021
  br label %c_escape, !dbg !2021

sw.bb132:                                         ; preds = %if.end49
  store i8 110, i8* %esc, align 1, !dbg !2022
  br label %c_and_shell_escape, !dbg !2022

sw.bb133:                                         ; preds = %if.end49
  store i8 114, i8* %esc, align 1, !dbg !2023
  br label %c_and_shell_escape, !dbg !2023

sw.bb134:                                         ; preds = %if.end49
  store i8 116, i8* %esc, align 1, !dbg !2024
  br label %c_and_shell_escape, !dbg !2024

sw.bb135:                                         ; preds = %if.end49
  store i8 118, i8* %esc, align 1, !dbg !2025
  br label %c_escape, !dbg !2025

sw.bb136:                                         ; preds = %if.end49
  %93 = load i8* %c, align 1, !dbg !2026
  store i8 %93, i8* %esc, align 1, !dbg !2026
  br label %c_and_shell_escape, !dbg !2026

c_and_shell_escape:                               ; preds = %sw.bb136, %sw.bb134, %sw.bb133, %sw.bb132
  %94 = load i32* %quoting_style.addr, align 4, !dbg !2027
  %cmp137 = icmp eq i32 %94, 1, !dbg !2027
  br i1 %cmp137, label %use_shell_always_quoting_style, label %c_escape, !dbg !2027

c_escape:                                         ; preds = %c_and_shell_escape, %sw.bb135, %sw.bb131, %sw.bb130, %sw.bb129
  %95 = load i8* %backslash_escapes, align 1, !dbg !2029
  %tobool141 = trunc i8 %95 to i1, !dbg !2029
  br i1 %tobool141, label %if.then142, label %sw.epilog339, !dbg !2029

if.then142:                                       ; preds = %c_escape
  %96 = load i8* %esc, align 1, !dbg !2031
  store i8 %96, i8* %c, align 1, !dbg !2031
  br label %do.body350, !dbg !2033

sw.bb144:                                         ; preds = %if.end49, %if.end49
  %97 = load i64* %argsize.addr, align 8, !dbg !2034
  %cmp145 = icmp eq i64 %97, -1, !dbg !2034
  br i1 %cmp145, label %cond.true147, label %cond.false152, !dbg !2034

cond.true147:                                     ; preds = %sw.bb144
  %98 = load i8** %arg.addr, align 8, !dbg !2034
  %arrayidx148 = getelementptr inbounds i8* %98, i64 1, !dbg !2034
  %99 = load i8* %arrayidx148, align 1, !dbg !2034
  %conv149 = sext i8 %99 to i32, !dbg !2034
  %cmp150 = icmp ne i32 %conv149, 0, !dbg !2034
  %100 = load i64* %i, align 8, !dbg !2036
  %cmp158 = icmp ne i64 %100, 0, !dbg !2036
  %or.cond6 = or i1 %cmp150, %cmp158, !dbg !2034
  %or.cond6.not = xor i1 %or.cond6, true, !dbg !2034
  %.old9 = load i32* %quoting_style.addr, align 4, !dbg !2038
  %cmp163.old = icmp eq i32 %.old9, 1, !dbg !2038
  %or.cond12 = and i1 %or.cond6.not, %cmp163.old, !dbg !2034
  br i1 %or.cond12, label %use_shell_always_quoting_style, label %sw.epilog339, !dbg !2034

cond.false152:                                    ; preds = %sw.bb144
  %101 = load i64* %argsize.addr, align 8, !dbg !2034
  %cmp153 = icmp ne i64 %101, 1, !dbg !2034
  %.old = load i64* %i, align 8, !dbg !2036
  %cmp158.old = icmp ne i64 %.old, 0, !dbg !2036
  %or.cond8 = or i1 %cmp153, %cmp158.old, !dbg !2034
  %or.cond8.not = xor i1 %or.cond8, true, !dbg !2034
  %102 = load i32* %quoting_style.addr, align 4, !dbg !2038
  %cmp163 = icmp eq i32 %102, 1, !dbg !2038
  %or.cond10 = and i1 %or.cond8.not, %cmp163, !dbg !2034
  br i1 %or.cond10, label %use_shell_always_quoting_style, label %sw.epilog339, !dbg !2034

sw.bb157:                                         ; preds = %if.end49, %if.end49
  %.old7 = load i64* %i, align 8, !dbg !2036
  %cmp158.old.old = icmp eq i64 %.old7, 0, !dbg !2036
  %.old11 = load i32* %quoting_style.addr, align 4, !dbg !2038
  %cmp163.old.old = icmp eq i32 %.old11, 1, !dbg !2038
  %or.cond14 = and i1 %cmp158.old.old, %cmp163.old.old, !dbg !2036
  br i1 %or.cond14, label %use_shell_always_quoting_style, label %sw.epilog339, !dbg !2036

sw.bb162:                                         ; preds = %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  %.old13 = load i32* %quoting_style.addr, align 4, !dbg !2038
  %cmp163.old.old.old = icmp eq i32 %.old13, 1, !dbg !2038
  br i1 %cmp163.old.old.old, label %use_shell_always_quoting_style, label %sw.epilog339, !dbg !2038

sw.bb167:                                         ; preds = %if.end49
  %103 = load i32* %quoting_style.addr, align 4, !dbg !2040
  switch i32 %103, label %sw.epilog339 [
    i32 1, label %use_shell_always_quoting_style
    i32 2, label %do.body170
  ], !dbg !2040

do.body170:                                       ; preds = %sw.bb167
  %104 = load i64* %len, align 8, !dbg !2041
  %105 = load i64* %buffersize.addr, align 8, !dbg !2041
  %cmp171 = icmp ult i64 %104, %105, !dbg !2041
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !2041

if.then173:                                       ; preds = %do.body170
  %106 = load i64* %len, align 8, !dbg !2041
  %107 = load i8** %buffer.addr, align 8, !dbg !2041
  %arrayidx174 = getelementptr inbounds i8* %107, i64 %106, !dbg !2041
  store i8 39, i8* %arrayidx174, align 1, !dbg !2041
  br label %if.end175, !dbg !2041

if.end175:                                        ; preds = %if.then173, %do.body170
  %108 = load i64* %len, align 8, !dbg !2045
  %inc176 = add i64 %108, 1, !dbg !2045
  store i64 %inc176, i64* %len, align 8, !dbg !2045
  %109 = load i64* %len, align 8, !dbg !2046
  %110 = load i64* %buffersize.addr, align 8, !dbg !2046
  %cmp179 = icmp ult i64 %109, %110, !dbg !2046
  br i1 %cmp179, label %if.then181, label %if.end183, !dbg !2046

if.then181:                                       ; preds = %if.end175
  %111 = load i64* %len, align 8, !dbg !2046
  %112 = load i8** %buffer.addr, align 8, !dbg !2046
  %arrayidx182 = getelementptr inbounds i8* %112, i64 %111, !dbg !2046
  store i8 92, i8* %arrayidx182, align 1, !dbg !2046
  br label %if.end183, !dbg !2046

if.end183:                                        ; preds = %if.then181, %if.end175
  %113 = load i64* %len, align 8, !dbg !2049
  %inc184 = add i64 %113, 1, !dbg !2049
  store i64 %inc184, i64* %len, align 8, !dbg !2049
  %114 = load i64* %len, align 8, !dbg !2050
  %115 = load i64* %buffersize.addr, align 8, !dbg !2050
  %cmp187 = icmp ult i64 %114, %115, !dbg !2050
  br i1 %cmp187, label %if.then189, label %if.end191, !dbg !2050

if.then189:                                       ; preds = %if.end183
  %116 = load i64* %len, align 8, !dbg !2050
  %117 = load i8** %buffer.addr, align 8, !dbg !2050
  %arrayidx190 = getelementptr inbounds i8* %117, i64 %116, !dbg !2050
  store i8 39, i8* %arrayidx190, align 1, !dbg !2050
  br label %if.end191, !dbg !2050

if.end191:                                        ; preds = %if.then189, %if.end183
  %118 = load i64* %len, align 8, !dbg !2053
  %inc192 = add i64 %118, 1, !dbg !2053
  store i64 %inc192, i64* %len, align 8, !dbg !2053
  br label %sw.epilog339, !dbg !2054

sw.default197:                                    ; preds = %if.end49
  %119 = load i8* %unibyte_locale, align 1, !dbg !2055
  %tobool198 = trunc i8 %119 to i1, !dbg !2055
  br i1 %tobool198, label %if.then199, label %if.else, !dbg !2055

if.then199:                                       ; preds = %sw.default197
  store i64 1, i64* %m, align 8, !dbg !2058
  %120 = load i8* %c, align 1, !dbg !2060
  %conv200 = zext i8 %120 to i32, !dbg !2060
  %idxprom = sext i32 %conv200 to i64, !dbg !2060
  %call201 = call i16** @__ctype_b_loc() #1, !dbg !2060
  %121 = load i16** %call201, align 8, !dbg !2060
  %arrayidx202 = getelementptr inbounds i16* %121, i64 %idxprom, !dbg !2060
  %122 = load i16* %arrayidx202, align 2, !dbg !2060
  %conv203 = zext i16 %122 to i32, !dbg !2060
  %and = and i32 %conv203, 16384, !dbg !2060
  %cmp204 = icmp ne i32 %and, 0, !dbg !2060
  %frombool206 = zext i1 %cmp204 to i8, !dbg !2060
  store i8 %frombool206, i8* %printable, align 1, !dbg !2060
  br label %if.end266, !dbg !2061

if.else:                                          ; preds = %sw.default197
  %123 = bitcast %struct.__mbstate_t* %mbstate to i8*, !dbg !2062
  %124 = call i8* @memset(i8* %123, i32 0, i64 8)
  store i64 0, i64* %m, align 8, !dbg !2064
  store i8 1, i8* %printable, align 1, !dbg !2065
  %125 = load i64* %argsize.addr, align 8, !dbg !2066
  %cmp207 = icmp eq i64 %125, -1, !dbg !2066
  br i1 %cmp207, label %if.then209, label %do.body212, !dbg !2066

if.then209:                                       ; preds = %if.else
  %126 = load i8** %arg.addr, align 8, !dbg !2068
  %call210 = call i64 @strlen(i8* %126) #17, !dbg !2068
  store i64 %call210, i64* %argsize.addr, align 8, !dbg !2068
  br label %do.body212, !dbg !2068

do.body212:                                       ; preds = %if.else, %if.then209, %if.end258
  %127 = load i64* %i, align 8, !dbg !2069
  %128 = load i64* %m, align 8, !dbg !2069
  %add213 = add i64 %127, %128, !dbg !2069
  %129 = load i8** %arg.addr, align 8, !dbg !2069
  %arrayidx214 = getelementptr inbounds i8* %129, i64 %add213, !dbg !2069
  %130 = load i64* %argsize.addr, align 8, !dbg !2069
  %131 = load i64* %i, align 8, !dbg !2069
  %132 = load i64* %m, align 8, !dbg !2069
  %add215 = add i64 %131, %132, !dbg !2069
  %sub = sub i64 %130, %add215, !dbg !2069
  %call216 = call i64 @mbrtowc(i32* %w, i8* %arrayidx214, i64 %sub, %struct.__mbstate_t* %mbstate) #9, !dbg !2069
  store i64 %call216, i64* %bytes, align 8, !dbg !2069
  %133 = load i64* %bytes, align 8, !dbg !2071
  %cmp217 = icmp eq i64 %133, 0, !dbg !2071
  br i1 %cmp217, label %if.end266, label %if.else220, !dbg !2071

if.else220:                                       ; preds = %do.body212
  %134 = load i64* %bytes, align 8, !dbg !2073
  %cmp221 = icmp eq i64 %134, -1, !dbg !2073
  br i1 %cmp221, label %if.then223, label %if.else224, !dbg !2073

if.then223:                                       ; preds = %if.else220
  store i8 0, i8* %printable, align 1, !dbg !2075
  br label %if.end266, !dbg !2077

if.else224:                                       ; preds = %if.else220
  %135 = load i64* %bytes, align 8, !dbg !2078
  %cmp225 = icmp eq i64 %135, -2, !dbg !2078
  br i1 %cmp225, label %if.then227, label %if.else236, !dbg !2078

if.then227:                                       ; preds = %if.else224
  store i8 0, i8* %printable, align 1, !dbg !2080
  br label %while.cond, !dbg !2082

while.cond:                                       ; preds = %while.body, %if.then227
  %136 = load i64* %i, align 8, !dbg !2082
  %137 = load i64* %m, align 8, !dbg !2082
  %add228 = add i64 %136, %137, !dbg !2082
  %138 = load i64* %argsize.addr, align 8, !dbg !2082
  %cmp229 = icmp ult i64 %add228, %138, !dbg !2082
  br i1 %cmp229, label %land.rhs, label %if.end266, !dbg !2082

land.rhs:                                         ; preds = %while.cond
  %139 = load i64* %i, align 8, !dbg !2082
  %140 = load i64* %m, align 8, !dbg !2082
  %add231 = add i64 %139, %140, !dbg !2082
  %141 = load i8** %arg.addr, align 8, !dbg !2082
  %arrayidx232 = getelementptr inbounds i8* %141, i64 %add231, !dbg !2082
  %142 = load i8* %arrayidx232, align 1, !dbg !2082
  %conv233 = sext i8 %142 to i32, !dbg !2082
  %tobool234 = icmp ne i32 %conv233, 0, !dbg !2082
  br i1 %tobool234, label %while.body, label %if.end266

while.body:                                       ; preds = %land.rhs
  %143 = load i64* %m, align 8, !dbg !2083
  %inc235 = add i64 %143, 1, !dbg !2083
  store i64 %inc235, i64* %m, align 8, !dbg !2083
  br label %while.cond, !dbg !2083

if.else236:                                       ; preds = %if.else224
  %144 = load i32* %quoting_style.addr, align 4, !dbg !2084
  %cmp237 = icmp eq i32 %144, 1, !dbg !2084
  br i1 %cmp237, label %if.then239, label %if.end254, !dbg !2084

if.then239:                                       ; preds = %if.else236
  store i64 1, i64* %j, align 8, !dbg !2087
  br label %for.cond240, !dbg !2087

for.cond240:                                      ; preds = %for.inc251, %if.then239
  %145 = load i64* %j, align 8, !dbg !2087
  %146 = load i64* %bytes, align 8, !dbg !2087
  %cmp241 = icmp ult i64 %145, %146, !dbg !2087
  br i1 %cmp241, label %for.body243, label %if.end254, !dbg !2087

for.body243:                                      ; preds = %for.cond240
  %147 = load i64* %i, align 8, !dbg !2090
  %148 = load i64* %m, align 8, !dbg !2090
  %add244 = add i64 %147, %148, !dbg !2090
  %149 = load i64* %j, align 8, !dbg !2090
  %add245 = add i64 %add244, %149, !dbg !2090
  %150 = load i8** %arg.addr, align 8, !dbg !2090
  %arrayidx246 = getelementptr inbounds i8* %150, i64 %add245, !dbg !2090
  %151 = load i8* %arrayidx246, align 1, !dbg !2090
  %conv247 = sext i8 %151 to i32, !dbg !2090
  switch i32 %conv247, label %for.inc251 [
    i32 91, label %use_shell_always_quoting_style
    i32 92, label %use_shell_always_quoting_style
    i32 94, label %use_shell_always_quoting_style
    i32 96, label %use_shell_always_quoting_style
    i32 124, label %use_shell_always_quoting_style
  ], !dbg !2090

for.inc251:                                       ; preds = %for.body243
  %152 = load i64* %j, align 8, !dbg !2087
  %inc252 = add i64 %152, 1, !dbg !2087
  store i64 %inc252, i64* %j, align 8, !dbg !2087
  br label %for.cond240, !dbg !2087

if.end254:                                        ; preds = %for.cond240, %if.else236
  %153 = load i32* %w, align 4, !dbg !2091
  %call255 = call i32 @iswprint(i32 %153) #9, !dbg !2091
  %tobool256 = icmp ne i32 %call255, 0, !dbg !2091
  br i1 %tobool256, label %if.end258, label %if.then257, !dbg !2091

if.then257:                                       ; preds = %if.end254
  store i8 0, i8* %printable, align 1, !dbg !2093
  br label %if.end258, !dbg !2093

if.end258:                                        ; preds = %if.then257, %if.end254
  %154 = load i64* %bytes, align 8, !dbg !2094
  %155 = load i64* %m, align 8, !dbg !2094
  %add259 = add i64 %155, %154, !dbg !2094
  store i64 %add259, i64* %m, align 8, !dbg !2094
  %call263 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #17, !dbg !2095
  %tobool264 = icmp ne i32 %call263, 0, !dbg !2095
  %lnot = xor i1 %tobool264, true, !dbg !2095
  br i1 %lnot, label %do.body212, label %if.end266, !dbg !2095

if.end266:                                        ; preds = %if.then223, %if.end258, %do.body212, %while.cond, %land.rhs, %if.then199
  %156 = load i64* %m, align 8, !dbg !2096
  %cmp267 = icmp ult i64 1, %156, !dbg !2096
  br i1 %cmp267, label %if.then273, label %lor.lhs.false, !dbg !2096

lor.lhs.false:                                    ; preds = %if.end266
  %157 = load i8* %backslash_escapes, align 1, !dbg !2096
  %tobool269 = trunc i8 %157 to i1, !dbg !2096
  br i1 %tobool269, label %land.lhs.true271, label %sw.epilog339, !dbg !2096

land.lhs.true271:                                 ; preds = %lor.lhs.false
  %158 = load i8* %printable, align 1, !dbg !2096
  %tobool272 = trunc i8 %158 to i1, !dbg !2096
  br i1 %tobool272, label %sw.epilog339, label %if.then273, !dbg !2096

if.then273:                                       ; preds = %land.lhs.true271, %if.end266
  %159 = load i64* %i, align 8, !dbg !2098
  %160 = load i64* %m, align 8, !dbg !2098
  %add274 = add i64 %159, %160, !dbg !2098
  store i64 %add274, i64* %ilim, align 8, !dbg !2098
  br label %for.cond275, !dbg !2100

for.cond275:                                      ; preds = %if.end331, %if.then273
  %161 = load i8* %backslash_escapes, align 1, !dbg !2102
  %tobool276 = trunc i8 %161 to i1, !dbg !2102
  br i1 %tobool276, label %land.lhs.true278, label %if.end320, !dbg !2102

land.lhs.true278:                                 ; preds = %for.cond275
  %162 = load i8* %printable, align 1, !dbg !2102
  %tobool279 = trunc i8 %162 to i1, !dbg !2102
  br i1 %tobool279, label %if.end320, label %do.body281, !dbg !2102

do.body281:                                       ; preds = %land.lhs.true278
  %163 = load i64* %len, align 8, !dbg !2105
  %164 = load i64* %buffersize.addr, align 8, !dbg !2105
  %cmp282 = icmp ult i64 %163, %164, !dbg !2105
  br i1 %cmp282, label %if.then284, label %if.end286, !dbg !2105

if.then284:                                       ; preds = %do.body281
  %165 = load i64* %len, align 8, !dbg !2105
  %166 = load i8** %buffer.addr, align 8, !dbg !2105
  %arrayidx285 = getelementptr inbounds i8* %166, i64 %165, !dbg !2105
  store i8 92, i8* %arrayidx285, align 1, !dbg !2105
  br label %if.end286, !dbg !2105

if.end286:                                        ; preds = %if.then284, %do.body281
  %167 = load i64* %len, align 8, !dbg !2109
  %inc287 = add i64 %167, 1, !dbg !2109
  store i64 %inc287, i64* %len, align 8, !dbg !2109
  %168 = load i64* %len, align 8, !dbg !2110
  %169 = load i64* %buffersize.addr, align 8, !dbg !2110
  %cmp291 = icmp ult i64 %168, %169, !dbg !2110
  br i1 %cmp291, label %if.then293, label %if.end298, !dbg !2110

if.then293:                                       ; preds = %if.end286
  %170 = load i8* %c, align 1, !dbg !2110
  %conv294 = zext i8 %170 to i32, !dbg !2110
  %int_cast_to_i642 = zext i32 6 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !2110
  %shr = ashr i32 %conv294, 6, !dbg !2110
  %add295 = add nsw i32 48, %shr, !dbg !2110
  %conv296 = trunc i32 %add295 to i8, !dbg !2110
  %171 = load i64* %len, align 8, !dbg !2110
  %172 = load i8** %buffer.addr, align 8, !dbg !2110
  %arrayidx297 = getelementptr inbounds i8* %172, i64 %171, !dbg !2110
  store i8 %conv296, i8* %arrayidx297, align 1, !dbg !2110
  br label %if.end298, !dbg !2110

if.end298:                                        ; preds = %if.then293, %if.end286
  %173 = load i64* %len, align 8, !dbg !2113
  %inc299 = add i64 %173, 1, !dbg !2113
  store i64 %inc299, i64* %len, align 8, !dbg !2113
  %174 = load i64* %len, align 8, !dbg !2114
  %175 = load i64* %buffersize.addr, align 8, !dbg !2114
  %cmp303 = icmp ult i64 %174, %175, !dbg !2114
  br i1 %cmp303, label %if.then305, label %if.end312, !dbg !2114

if.then305:                                       ; preds = %if.end298
  %176 = load i8* %c, align 1, !dbg !2114
  %conv306 = zext i8 %176 to i32, !dbg !2114
  %int_cast_to_i643 = zext i32 3 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !2114
  %shr307 = ashr i32 %conv306, 3, !dbg !2114
  %and308 = and i32 %shr307, 7, !dbg !2114
  %add309 = add nsw i32 48, %and308, !dbg !2114
  %conv310 = trunc i32 %add309 to i8, !dbg !2114
  %177 = load i64* %len, align 8, !dbg !2114
  %178 = load i8** %buffer.addr, align 8, !dbg !2114
  %arrayidx311 = getelementptr inbounds i8* %178, i64 %177, !dbg !2114
  store i8 %conv310, i8* %arrayidx311, align 1, !dbg !2114
  br label %if.end312, !dbg !2114

if.end312:                                        ; preds = %if.then305, %if.end298
  %179 = load i64* %len, align 8, !dbg !2117
  %inc313 = add i64 %179, 1, !dbg !2117
  store i64 %inc313, i64* %len, align 8, !dbg !2117
  %180 = load i8* %c, align 1, !dbg !2118
  %conv316 = zext i8 %180 to i32, !dbg !2118
  %and317 = and i32 %conv316, 7, !dbg !2118
  %add318 = add nsw i32 48, %and317, !dbg !2118
  %conv319 = trunc i32 %add318 to i8, !dbg !2118
  store i8 %conv319, i8* %c, align 1, !dbg !2118
  br label %if.end320, !dbg !2119

if.end320:                                        ; preds = %if.end312, %land.lhs.true278, %for.cond275
  %181 = load i64* %ilim, align 8, !dbg !2120
  %182 = load i64* %i, align 8, !dbg !2120
  %add321 = add i64 %182, 1, !dbg !2120
  %cmp322 = icmp ule i64 %181, %add321, !dbg !2120
  br i1 %cmp322, label %do.body359, label %do.body326, !dbg !2120

do.body326:                                       ; preds = %if.end320
  %183 = load i64* %len, align 8, !dbg !2122
  %184 = load i64* %buffersize.addr, align 8, !dbg !2122
  %cmp327 = icmp ult i64 %183, %184, !dbg !2122
  br i1 %cmp327, label %if.then329, label %if.end331, !dbg !2122

if.then329:                                       ; preds = %do.body326
  %185 = load i8* %c, align 1, !dbg !2122
  %186 = load i64* %len, align 8, !dbg !2122
  %187 = load i8** %buffer.addr, align 8, !dbg !2122
  %arrayidx330 = getelementptr inbounds i8* %187, i64 %186, !dbg !2122
  store i8 %185, i8* %arrayidx330, align 1, !dbg !2122
  br label %if.end331, !dbg !2122

if.end331:                                        ; preds = %if.then329, %do.body326
  %188 = load i64* %len, align 8, !dbg !2125
  %inc332 = add i64 %188, 1, !dbg !2125
  store i64 %inc332, i64* %len, align 8, !dbg !2125
  %189 = load i64* %i, align 8, !dbg !2126
  %inc335 = add i64 %189, 1, !dbg !2126
  store i64 %inc335, i64* %i, align 8, !dbg !2126
  %190 = load i8** %arg.addr, align 8, !dbg !2126
  %arrayidx336 = getelementptr inbounds i8* %190, i64 %inc335, !dbg !2126
  %191 = load i8* %arrayidx336, align 1, !dbg !2126
  store i8 %191, i8* %c, align 1, !dbg !2126
  br label %for.cond275, !dbg !2127

sw.epilog339:                                     ; preds = %sw.bb157, %cond.true147, %cond.false152, %lor.lhs.false, %land.lhs.true271, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end
  %192 = load i8* %backslash_escapes, align 1, !dbg !2128
  %tobool340 = trunc i8 %192 to i1, !dbg !2128
  br i1 %tobool340, label %land.lhs.true342, label %do.body359, !dbg !2128

land.lhs.true342:                                 ; preds = %sw.epilog339
  %193 = load i8* %c, align 1, !dbg !2128
  %conv343 = zext i8 %193 to i64, !dbg !2128
  %int_cast_to_i64 = bitcast i64 32 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2128
  %div = udiv i64 %conv343, 32, !dbg !2128
  %194 = load %struct.quoting_options** %o.addr, align 8, !dbg !2128
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %194, i32 0, i32 1, !dbg !2128
  %arrayidx344 = getelementptr inbounds [8 x i32]* %quote_these_too, i32 0, i64 %div, !dbg !2128
  %195 = load i32* %arrayidx344, align 4, !dbg !2128
  %196 = load i8* %c, align 1, !dbg !2128
  %conv345 = zext i8 %196 to i64, !dbg !2128
  %int_cast_to_i641 = bitcast i64 32 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !2128
  %rem = urem i64 %conv345, 32, !dbg !2128
  %sh_prom = trunc i64 %rem to i32, !dbg !2128
  %int_cast_to_i644 = zext i32 %sh_prom to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i644), !dbg !2128
  %shl = shl i32 1, %sh_prom, !dbg !2128
  %and346 = and i32 %195, %shl, !dbg !2128
  %tobool347 = icmp ne i32 %and346, 0, !dbg !2128
  br i1 %tobool347, label %do.body350, label %do.body359, !dbg !2128

do.body350:                                       ; preds = %if.then142, %land.lhs.true342
  %197 = load i64* %len, align 8, !dbg !2130
  %198 = load i64* %buffersize.addr, align 8, !dbg !2130
  %cmp351 = icmp ult i64 %197, %198, !dbg !2130
  br i1 %cmp351, label %if.then353, label %if.end355, !dbg !2130

if.then353:                                       ; preds = %do.body350
  %199 = load i64* %len, align 8, !dbg !2130
  %200 = load i8** %buffer.addr, align 8, !dbg !2130
  %arrayidx354 = getelementptr inbounds i8* %200, i64 %199, !dbg !2130
  store i8 92, i8* %arrayidx354, align 1, !dbg !2130
  br label %if.end355, !dbg !2130

if.end355:                                        ; preds = %if.then353, %do.body350
  %201 = load i64* %len, align 8, !dbg !2133
  %inc356 = add i64 %201, 1, !dbg !2133
  store i64 %inc356, i64* %len, align 8, !dbg !2133
  br label %do.body359, !dbg !2133

do.body359:                                       ; preds = %if.end355, %if.end320, %land.lhs.true342, %sw.epilog339
  %202 = load i64* %len, align 8, !dbg !2134
  %203 = load i64* %buffersize.addr, align 8, !dbg !2134
  %cmp360 = icmp ult i64 %202, %203, !dbg !2134
  br i1 %cmp360, label %if.then362, label %if.end364, !dbg !2134

if.then362:                                       ; preds = %do.body359
  %204 = load i8* %c, align 1, !dbg !2134
  %205 = load i64* %len, align 8, !dbg !2134
  %206 = load i8** %buffer.addr, align 8, !dbg !2134
  %arrayidx363 = getelementptr inbounds i8* %206, i64 %205, !dbg !2134
  store i8 %204, i8* %arrayidx363, align 1, !dbg !2134
  br label %if.end364, !dbg !2134

if.end364:                                        ; preds = %if.then362, %do.body359
  %207 = load i64* %len, align 8, !dbg !2137
  %inc365 = add i64 %207, 1, !dbg !2137
  store i64 %inc365, i64* %len, align 8, !dbg !2137
  %208 = load i64* %i, align 8, !dbg !1968
  %inc369 = add i64 %208, 1, !dbg !1968
  store i64 %inc369, i64* %i, align 8, !dbg !1968
  br label %for.cond22, !dbg !1968

for.end370:                                       ; preds = %cond.false, %cond.true
  %209 = load i64* %i, align 8, !dbg !2138
  %cmp371 = icmp eq i64 %209, 0, !dbg !2138
  %210 = load i32* %quoting_style.addr, align 4, !dbg !2138
  %cmp374 = icmp eq i32 %210, 1, !dbg !2138
  %or.cond5 = and i1 %cmp371, %cmp374, !dbg !2138
  br i1 %or.cond5, label %use_shell_always_quoting_style, label %if.end377, !dbg !2138

if.end377:                                        ; preds = %for.end370
  %211 = load i8** %quote_string, align 8, !dbg !2140
  %tobool378 = icmp ne i8* %211, null, !dbg !2140
  br i1 %tobool378, label %for.cond380, label %if.end395, !dbg !2140

for.cond380:                                      ; preds = %if.end377, %if.end388
  %212 = load i8** %quote_string, align 8, !dbg !2142
  %213 = load i8* %212, align 1, !dbg !2142
  %tobool381 = icmp ne i8 %213, 0, !dbg !2142
  br i1 %tobool381, label %do.body383, label %if.end395, !dbg !2142

do.body383:                                       ; preds = %for.cond380
  %214 = load i64* %len, align 8, !dbg !2144
  %215 = load i64* %buffersize.addr, align 8, !dbg !2144
  %cmp384 = icmp ult i64 %214, %215, !dbg !2144
  br i1 %cmp384, label %if.then386, label %if.end388, !dbg !2144

if.then386:                                       ; preds = %do.body383
  %216 = load i8** %quote_string, align 8, !dbg !2144
  %217 = load i8* %216, align 1, !dbg !2144
  %218 = load i64* %len, align 8, !dbg !2144
  %219 = load i8** %buffer.addr, align 8, !dbg !2144
  %arrayidx387 = getelementptr inbounds i8* %219, i64 %218, !dbg !2144
  store i8 %217, i8* %arrayidx387, align 1, !dbg !2144
  br label %if.end388, !dbg !2144

if.end388:                                        ; preds = %if.then386, %do.body383
  %220 = load i64* %len, align 8, !dbg !2147
  %inc389 = add i64 %220, 1, !dbg !2147
  store i64 %inc389, i64* %len, align 8, !dbg !2147
  %221 = load i8** %quote_string, align 8, !dbg !2142
  %incdec.ptr393 = getelementptr inbounds i8* %221, i32 1, !dbg !2142
  store i8* %incdec.ptr393, i8** %quote_string, align 8, !dbg !2142
  br label %for.cond380, !dbg !2142

if.end395:                                        ; preds = %for.cond380, %if.end377
  %222 = load i64* %len, align 8, !dbg !2148
  %223 = load i64* %buffersize.addr, align 8, !dbg !2148
  %cmp396 = icmp ult i64 %222, %223, !dbg !2148
  br i1 %cmp396, label %if.then398, label %if.end400, !dbg !2148

if.then398:                                       ; preds = %if.end395
  %224 = load i64* %len, align 8, !dbg !2150
  %225 = load i8** %buffer.addr, align 8, !dbg !2150
  %arrayidx399 = getelementptr inbounds i8* %225, i64 %224, !dbg !2150
  store i8 0, i8* %arrayidx399, align 1, !dbg !2150
  br label %if.end400, !dbg !2150

if.end400:                                        ; preds = %if.then398, %if.end395
  %226 = load i64* %len, align 8, !dbg !2151
  store i64 %226, i64* %retval, !dbg !2151
  br label %return, !dbg !2151

use_shell_always_quoting_style:                   ; preds = %sw.bb157, %cond.true147, %cond.false152, %for.end370, %for.body243, %for.body243, %for.body243, %for.body243, %for.body243, %sw.bb167, %sw.bb162, %c_and_shell_escape, %sw.bb80
  %227 = load i8** %buffer.addr, align 8, !dbg !2152
  %228 = load i64* %buffersize.addr, align 8, !dbg !2152
  %229 = load i8** %arg.addr, align 8, !dbg !2152
  %230 = load i64* %argsize.addr, align 8, !dbg !2152
  %231 = load %struct.quoting_options** %o.addr, align 8, !dbg !2152
  %call401 = call i64 @quotearg_buffer_restyled(i8* %227, i64 %228, i8* %229, i64 %230, i32 2, %struct.quoting_options* %231), !dbg !2152
  store i64 %call401, i64* %retval, !dbg !2152
  br label %return, !dbg !2152

return:                                           ; preds = %use_shell_always_quoting_style, %if.end400
  %232 = load i64* %retval, !dbg !2153
  ret i64 %232, !dbg !2153
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
  %sv = alloca %struct.slotvec*, align 8
  %n1 = alloca i64, align 8
  %preallocated = alloca i8, align 1
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %qsize = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  %call = call i32* @__errno_location() #1, !dbg !2154
  %0 = load i32* %call, align 4, !dbg !2154
  store i32 %0, i32* %e, align 4, !dbg !2154
  %1 = load i32* %n.addr, align 4, !dbg !2155
  store i32 %1, i32* %n0, align 4, !dbg !2155
  %2 = load %struct.slotvec** @slotvec, align 8, !dbg !2156
  store %struct.slotvec* %2, %struct.slotvec** %sv, align 8, !dbg !2156
  %3 = load i32* %n.addr, align 4, !dbg !2157
  %cmp = icmp slt i32 %3, 0, !dbg !2157
  br i1 %cmp, label %if.then, label %if.end, !dbg !2157

if.then:                                          ; preds = %entry
  call void @abort() #16, !dbg !2159
  unreachable, !dbg !2159

if.end:                                           ; preds = %entry
  %4 = load i32* @nslots, align 4, !dbg !2160
  %5 = load i32* %n0, align 4, !dbg !2160
  %cmp1 = icmp ule i32 %4, %5, !dbg !2160
  br i1 %cmp1, label %if.then2, label %if.end17, !dbg !2160

if.then2:                                         ; preds = %if.end
  %6 = load i32* %n0, align 4, !dbg !2162
  %add = add i32 %6, 1, !dbg !2162
  %conv = zext i32 %add to i64, !dbg !2162
  store i64 %conv, i64* %n1, align 8, !dbg !2162
  %7 = load %struct.slotvec** %sv, align 8, !dbg !2164
  %cmp3 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2164
  %frombool = zext i1 %cmp3 to i8, !dbg !2164
  store i8 %frombool, i8* %preallocated, align 1, !dbg !2164
  %8 = load i64* %n1, align 8, !dbg !2165
  %cmp5 = icmp ult i64 1152921504606846975, %8, !dbg !2165
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !2165

if.then7:                                         ; preds = %if.then2
  call void @xalloc_die() #18, !dbg !2167
  unreachable, !dbg !2167

if.end8:                                          ; preds = %if.then2
  %9 = load i8* %preallocated, align 1, !dbg !2168
  %tobool = trunc i8 %9 to i1, !dbg !2168
  %10 = load %struct.slotvec** %sv, align 8, !dbg !2168
  %cond = select i1 %tobool, %struct.slotvec* null, %struct.slotvec* %10, !dbg !2168
  %11 = bitcast %struct.slotvec* %cond to i8*, !dbg !2168
  %12 = load i64* %n1, align 8, !dbg !2168
  %mul = mul i64 %12, 16, !dbg !2168
  %call10 = call i8* @xrealloc(i8* %11, i64 %mul), !dbg !2168
  %13 = bitcast i8* %call10 to %struct.slotvec*, !dbg !2168
  store %struct.slotvec* %13, %struct.slotvec** %sv, align 8, !dbg !2168
  store %struct.slotvec* %13, %struct.slotvec** @slotvec, align 8, !dbg !2168
  %14 = load i8* %preallocated, align 1, !dbg !2169
  %tobool11 = trunc i8 %14 to i1, !dbg !2169
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2169

if.then12:                                        ; preds = %if.end8
  %15 = load %struct.slotvec** %sv, align 8, !dbg !2171
  %16 = bitcast %struct.slotvec* %15 to i8*, !dbg !2171
  %17 = call i8* @memcpy(i8* %16, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16)
  br label %if.end13, !dbg !2171

if.end13:                                         ; preds = %if.then12, %if.end8
  %18 = load %struct.slotvec** %sv, align 8, !dbg !2172
  %19 = load i32* @nslots, align 4, !dbg !2172
  %idx.ext = zext i32 %19 to i64, !dbg !2172
  %add.ptr = getelementptr inbounds %struct.slotvec* %18, i64 %idx.ext, !dbg !2172
  %20 = bitcast %struct.slotvec* %add.ptr to i8*, !dbg !2172
  %21 = load i64* %n1, align 8, !dbg !2172
  %22 = load i32* @nslots, align 4, !dbg !2172
  %conv14 = zext i32 %22 to i64, !dbg !2172
  %sub = sub i64 %21, %conv14, !dbg !2172
  %mul15 = mul i64 %sub, 16, !dbg !2172
  %23 = call i8* @memset(i8* %20, i32 0, i64 %mul15)
  %24 = load i64* %n1, align 8, !dbg !2173
  %conv16 = trunc i64 %24 to i32, !dbg !2173
  store i32 %conv16, i32* @nslots, align 4, !dbg !2173
  br label %if.end17, !dbg !2174

if.end17:                                         ; preds = %if.end13, %if.end
  %25 = load i32* %n.addr, align 4, !dbg !2175
  %idxprom = sext i32 %25 to i64, !dbg !2175
  %26 = load %struct.slotvec** %sv, align 8, !dbg !2175
  %arrayidx = getelementptr inbounds %struct.slotvec* %26, i64 %idxprom, !dbg !2175
  %size18 = getelementptr inbounds %struct.slotvec* %arrayidx, i32 0, i32 0, !dbg !2175
  %27 = load i64* %size18, align 8, !dbg !2175
  store i64 %27, i64* %size, align 8, !dbg !2175
  %28 = load i32* %n.addr, align 4, !dbg !2177
  %idxprom19 = sext i32 %28 to i64, !dbg !2177
  %29 = load %struct.slotvec** %sv, align 8, !dbg !2177
  %arrayidx20 = getelementptr inbounds %struct.slotvec* %29, i64 %idxprom19, !dbg !2177
  %val21 = getelementptr inbounds %struct.slotvec* %arrayidx20, i32 0, i32 1, !dbg !2177
  %30 = load i8** %val21, align 8, !dbg !2177
  store i8* %30, i8** %val, align 8, !dbg !2177
  %31 = load i8** %val, align 8, !dbg !2178
  %32 = load i64* %size, align 8, !dbg !2178
  %33 = load i8** %arg.addr, align 8, !dbg !2178
  %34 = load i64* %argsize.addr, align 8, !dbg !2178
  %35 = load %struct.quoting_options** %options.addr, align 8, !dbg !2178
  %call22 = call i64 @quotearg_buffer(i8* %31, i64 %32, i8* %33, i64 %34, %struct.quoting_options* %35), !dbg !2178
  store i64 %call22, i64* %qsize, align 8, !dbg !2178
  %36 = load i64* %size, align 8, !dbg !2179
  %37 = load i64* %qsize, align 8, !dbg !2179
  %cmp23 = icmp ule i64 %36, %37, !dbg !2179
  br i1 %cmp23, label %if.then25, label %if.end39, !dbg !2179

if.then25:                                        ; preds = %if.end17
  %38 = load i64* %qsize, align 8, !dbg !2181
  %add26 = add i64 %38, 1, !dbg !2181
  store i64 %add26, i64* %size, align 8, !dbg !2181
  %39 = load i32* %n.addr, align 4, !dbg !2181
  %idxprom27 = sext i32 %39 to i64, !dbg !2181
  %40 = load %struct.slotvec** %sv, align 8, !dbg !2181
  %arrayidx28 = getelementptr inbounds %struct.slotvec* %40, i64 %idxprom27, !dbg !2181
  %size29 = getelementptr inbounds %struct.slotvec* %arrayidx28, i32 0, i32 0, !dbg !2181
  store i64 %add26, i64* %size29, align 8, !dbg !2181
  %41 = load i8** %val, align 8, !dbg !2183
  %cmp30 = icmp ne i8* %41, getelementptr inbounds ([256 x i8]* @slot0, i32 0, i32 0), !dbg !2183
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !2183

if.then32:                                        ; preds = %if.then25
  %42 = load i8** %val, align 8, !dbg !2185
  call void @free(i8* %42) #9, !dbg !2185
  br label %if.end33, !dbg !2185

if.end33:                                         ; preds = %if.then32, %if.then25
  %43 = load i64* %size, align 8, !dbg !2186
  %call34 = call i8* @xcharalloc(i64 %43), !dbg !2186
  store i8* %call34, i8** %val, align 8, !dbg !2186
  %44 = load i32* %n.addr, align 4, !dbg !2186
  %idxprom35 = sext i32 %44 to i64, !dbg !2186
  %45 = load %struct.slotvec** %sv, align 8, !dbg !2186
  %arrayidx36 = getelementptr inbounds %struct.slotvec* %45, i64 %idxprom35, !dbg !2186
  %val37 = getelementptr inbounds %struct.slotvec* %arrayidx36, i32 0, i32 1, !dbg !2186
  store i8* %call34, i8** %val37, align 8, !dbg !2186
  %46 = load i8** %val, align 8, !dbg !2187
  %47 = load i64* %size, align 8, !dbg !2187
  %48 = load i8** %arg.addr, align 8, !dbg !2187
  %49 = load i64* %argsize.addr, align 8, !dbg !2187
  %50 = load %struct.quoting_options** %options.addr, align 8, !dbg !2187
  %call38 = call i64 @quotearg_buffer(i8* %46, i64 %47, i8* %48, i64 %49, %struct.quoting_options* %50), !dbg !2187
  br label %if.end39, !dbg !2188

if.end39:                                         ; preds = %if.end33, %if.end17
  %51 = load i32* %e, align 4, !dbg !2189
  %call40 = call i32* @__errno_location() #1, !dbg !2189
  store i32 %51, i32* %call40, align 4, !dbg !2189
  %52 = load i8** %val, align 8, !dbg !2190
  ret i8* %52, !dbg !2190
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #0 {
entry:
  %style.addr = alloca i32, align 4
  %o = alloca %struct.quoting_options, align 4
  store i32 %style, i32* %style.addr, align 4
  %0 = load i32* %style.addr, align 4, !dbg !2191
  %style1 = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 0, !dbg !2191
  store i32 %0, i32* %style1, align 4, !dbg !2191
  %quote_these_too = getelementptr inbounds %struct.quoting_options* %o, i32 0, i32 1, !dbg !2192
  %1 = bitcast [8 x i32]* %quote_these_too to i8*, !dbg !2192
  %2 = call i8* @memset(i8* %1, i32 0, i64 32)
  %3 = bitcast %struct.quoting_options* %agg.result to i8*, !dbg !2193
  %4 = bitcast %struct.quoting_options* %o to i8*, !dbg !2193
  %5 = call i8* @memcpy(i8* %3, i8* %4, i64 36)
  ret void, !dbg !2193
}

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i8** %msgid.addr, align 8, !dbg !2194
  store i8* %0, i8** %translation, align 8, !dbg !2194
  %1 = load i8** %translation, align 8, !dbg !2195
  %2 = load i8** %msgid.addr, align 8, !dbg !2195
  %cmp = icmp eq i8* %1, %2, !dbg !2195
  %3 = load i32* %s.addr, align 4, !dbg !2195
  %cmp1 = icmp eq i32 %3, 6, !dbg !2195
  %or.cond = and i1 %cmp, %cmp1, !dbg !2195
  %. = select i1 %or.cond, i8* getelementptr inbounds ([2 x i8]* @.str7111, i32 0, i32 0), i8* %0, !dbg !2195
  store i8* %., i8** %translation, align 8, !dbg !2197
  %4 = load i8** %translation, align 8, !dbg !2198
  ret i8* %4, !dbg !2198
}

; Function Attrs: nounwind uwtable
define i8* @xnmalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8, !dbg !2199
  %int_cast_to_i64 = bitcast i64 %0 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2199
  %div = udiv i64 -1, %0, !dbg !2199
  %1 = load i64* %n.addr, align 8, !dbg !2199
  %cmp = icmp ult i64 %div, %1, !dbg !2199
  br i1 %cmp, label %if.then, label %if.end, !dbg !2199

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18, !dbg !2201
  unreachable, !dbg !2201

if.end:                                           ; preds = %entry
  %2 = load i64* %n.addr, align 8, !dbg !2202
  %3 = load i64* %s.addr, align 8, !dbg !2202
  %mul = mul i64 %2, %3, !dbg !2202
  %call = call i8* @xmalloc(i64 %mul), !dbg !2202
  ret i8* %call, !dbg !2202
}

; Function Attrs: nounwind uwtable
define i8* @xmalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64* %n.addr, align 8, !dbg !2203
  %call = call noalias i8* @malloc(i64 %0) #9, !dbg !2203
  store i8* %call, i8** %p, align 8, !dbg !2203
  %1 = load i8** %p, align 8, !dbg !2205
  %tobool = icmp eq i8* %1, null, !dbg !2205
  %2 = load i64* %n.addr, align 8, !dbg !2205
  %cmp = icmp ne i64 %2, 0, !dbg !2205
  %or.cond = and i1 %tobool, %cmp, !dbg !2205
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2205

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18, !dbg !2207
  unreachable, !dbg !2207

if.end:                                           ; preds = %entry
  %3 = load i8** %p, align 8, !dbg !2208
  ret i8* %3, !dbg !2208
}

; Function Attrs: nounwind uwtable
define i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8, !dbg !2209
  %int_cast_to_i64 = bitcast i64 %0 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2209
  %div = udiv i64 -1, %0, !dbg !2209
  %1 = load i64* %n.addr, align 8, !dbg !2209
  %cmp = icmp ult i64 %div, %1, !dbg !2209
  br i1 %cmp, label %if.then, label %if.end, !dbg !2209

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18, !dbg !2211
  unreachable, !dbg !2211

if.end:                                           ; preds = %entry
  %2 = load i8** %p.addr, align 8, !dbg !2212
  %3 = load i64* %n.addr, align 8, !dbg !2212
  %4 = load i64* %s.addr, align 8, !dbg !2212
  %mul = mul i64 %3, %4, !dbg !2212
  %call = call i8* @xrealloc(i8* %2, i64 %mul), !dbg !2212
  ret i8* %call, !dbg !2212
}

; Function Attrs: nounwind uwtable
define i8* @xrealloc(i8* %p, i64 %n) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8** %p.addr, align 8, !dbg !2213
  %1 = load i64* %n.addr, align 8, !dbg !2213
  %call = call i8* @realloc(i8* %0, i64 %1) #9, !dbg !2213
  store i8* %call, i8** %p.addr, align 8, !dbg !2213
  %2 = load i8** %p.addr, align 8, !dbg !2214
  %tobool = icmp eq i8* %2, null, !dbg !2214
  %3 = load i64* %n.addr, align 8, !dbg !2214
  %cmp = icmp ne i64 %3, 0, !dbg !2214
  %or.cond = and i1 %tobool, %cmp, !dbg !2214
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2214

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18, !dbg !2216
  unreachable, !dbg !2216

if.end:                                           ; preds = %entry
  %4 = load i8** %p.addr, align 8, !dbg !2217
  ret i8* %4, !dbg !2217
}

; Function Attrs: nounwind uwtable
define i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %pn, i64** %pn.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64** %pn.addr, align 8, !dbg !2218
  %1 = load i64* %0, align 8, !dbg !2218
  store i64 %1, i64* %n, align 8, !dbg !2218
  %2 = load i8** %p.addr, align 8, !dbg !2219
  %tobool = icmp ne i8* %2, null, !dbg !2219
  br i1 %tobool, label %if.else, label %if.then, !dbg !2219

if.then:                                          ; preds = %entry
  %3 = load i64* %n, align 8, !dbg !2221
  %tobool1 = icmp ne i64 %3, 0, !dbg !2221
  br i1 %tobool1, label %if.end11, label %if.then2, !dbg !2221

if.then2:                                         ; preds = %if.then
  %4 = load i64* %s.addr, align 8, !dbg !2224
  %int_cast_to_i64 = bitcast i64 %4 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !2224
  %div = udiv i64 64, %4, !dbg !2224
  store i64 %div, i64* %n, align 8, !dbg !2224
  %5 = load i64* %n, align 8, !dbg !2226
  %tobool3 = icmp ne i64 %5, 0, !dbg !2226
  %lnot = xor i1 %tobool3, true, !dbg !2226
  %lnot.ext = zext i1 %lnot to i32, !dbg !2226
  %conv = sext i32 %lnot.ext to i64, !dbg !2226
  %6 = load i64* %n, align 8, !dbg !2226
  %add = add i64 %6, %conv, !dbg !2226
  store i64 %add, i64* %n, align 8, !dbg !2226
  br label %if.end11, !dbg !2227

if.else:                                          ; preds = %entry
  %7 = load i64* %s.addr, align 8, !dbg !2228
  %int_cast_to_i641 = bitcast i64 %7 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i641), !dbg !2228
  %div4 = udiv i64 -6148914691236517206, %7, !dbg !2228
  %8 = load i64* %n, align 8, !dbg !2228
  %cmp = icmp ule i64 %div4, %8, !dbg !2228
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2228

if.then6:                                         ; preds = %if.else
  call void @xalloc_die() #18, !dbg !2231
  unreachable, !dbg !2231

if.end7:                                          ; preds = %if.else
  %9 = load i64* %n, align 8, !dbg !2232
  %add8 = add i64 %9, 1, !dbg !2232
  %int_cast_to_i642 = bitcast i64 2 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i642), !dbg !2232
  %div9 = udiv i64 %add8, 2, !dbg !2232
  %10 = load i64* %n, align 8, !dbg !2232
  %add10 = add i64 %10, %div9, !dbg !2232
  store i64 %add10, i64* %n, align 8, !dbg !2232
  br label %if.end11

if.end11:                                         ; preds = %if.then, %if.then2, %if.end7
  %11 = load i64* %n, align 8, !dbg !2233
  %12 = load i64** %pn.addr, align 8, !dbg !2233
  store i64 %11, i64* %12, align 8, !dbg !2233
  %13 = load i8** %p.addr, align 8, !dbg !2234
  %14 = load i64* %n, align 8, !dbg !2234
  %15 = load i64* %s.addr, align 8, !dbg !2234
  %mul = mul i64 %14, %15, !dbg !2234
  %call = call i8* @xrealloc(i8* %13, i64 %mul), !dbg !2234
  ret i8* %call, !dbg !2234
}

; Function Attrs: nounwind uwtable
define i8* @xcharalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64* %n.addr, align 8, !dbg !2235
  %call = call i8* @xmalloc(i64 %0), !dbg !2235
  ret i8* %call, !dbg !2235
}

; Function Attrs: nounwind uwtable
define i8* @x2realloc(i8* %p, i64* %pn) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %pn, i64** %pn.addr, align 8
  %0 = load i8** %p.addr, align 8, !dbg !2236
  %1 = load i64** %pn.addr, align 8, !dbg !2236
  %call = call i8* @x2nrealloc(i8* %0, i64* %1, i64 1), !dbg !2236
  ret i8* %call, !dbg !2236
}

; Function Attrs: nounwind uwtable
define i8* @xzalloc(i64 %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8, !dbg !2237
  %call = call i8* @xmalloc(i64 %0), !dbg !2237
  %1 = load i64* %s.addr, align 8, !dbg !2237
  %2 = call i8* @memset(i8* %call, i32 0, i64 %1)
  ret i8* %call, !dbg !2237
}

; Function Attrs: nounwind uwtable
define i8* @xcalloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %n.addr, align 8, !dbg !2238
  %1 = load i64* %s.addr, align 8, !dbg !2238
  %call = call noalias i8* @calloc(i64 %0, i64 %1) #9, !dbg !2238
  store i8* %call, i8** %p, align 8, !dbg !2238
  %tobool = icmp ne i8* %call, null, !dbg !2238
  br i1 %tobool, label %if.end, label %if.then, !dbg !2238

if.then:                                          ; preds = %entry
  call void @xalloc_die() #18, !dbg !2240
  unreachable, !dbg !2240

if.end:                                           ; preds = %entry
  %2 = load i8** %p, align 8, !dbg !2241
  ret i8* %2, !dbg !2241
}

; Function Attrs: nounwind uwtable
define i8* @xmemdup(i8* %p, i64 %s) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64* %s.addr, align 8, !dbg !2242
  %call = call i8* @xmalloc(i64 %0), !dbg !2242
  %1 = load i8** %p.addr, align 8, !dbg !2242
  %2 = load i64* %s.addr, align 8, !dbg !2242
  %3 = call i8* @memcpy(i8* %call, i8* %1, i64 %2)
  ret i8* %call, !dbg !2242
}

; Function Attrs: nounwind uwtable
define i8* @xstrdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8** %string.addr, align 8, !dbg !2243
  %1 = load i8** %string.addr, align 8, !dbg !2243
  %call = call i64 @strlen(i8* %1) #17, !dbg !2243
  %add = add i64 %call, 1, !dbg !2243
  %call1 = call i8* @xmemdup(i8* %0, i64 %add), !dbg !2243
  ret i8* %call1, !dbg !2243
}

; Function Attrs: nounwind uwtable
define i32 @close_stream(%struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2244
  %call = call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !2244
  %cmp = icmp ne i64 %call, 0, !dbg !2244
  %frombool = zext i1 %cmp to i8, !dbg !2244
  store i8 %frombool, i8* %some_pending, align 1, !dbg !2244
  %1 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2245
  %call1 = call i32 @ferror_unlocked(%struct._IO_FILE* %1) #9, !dbg !2245
  %cmp2 = icmp ne i32 %call1, 0, !dbg !2245
  %frombool3 = zext i1 %cmp2 to i8, !dbg !2245
  store i8 %frombool3, i8* %prev_fail, align 1, !dbg !2245
  %2 = load %struct._IO_FILE** %stream.addr, align 8, !dbg !2246
  %call4 = call i32 @fclose(%struct._IO_FILE* %2), !dbg !2246
  %cmp5 = icmp ne i32 %call4, 0, !dbg !2246
  %frombool6 = zext i1 %cmp5 to i8, !dbg !2246
  store i8 %frombool6, i8* %fclose_fail, align 1, !dbg !2246
  %3 = load i8* %prev_fail, align 1, !dbg !2247
  %tobool = trunc i8 %3 to i1, !dbg !2247
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2247

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8* %fclose_fail, align 1, !dbg !2247
  %tobool7 = trunc i8 %4 to i1, !dbg !2247
  br i1 %tobool7, label %land.lhs.true, label %if.end15, !dbg !2247

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8* %some_pending, align 1, !dbg !2247
  %tobool8 = trunc i8 %5 to i1, !dbg !2247
  br i1 %tobool8, label %if.then, label %lor.lhs.false9, !dbg !2247

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #1, !dbg !2247
  %6 = load i32* %call10, align 4, !dbg !2247
  %cmp11 = icmp ne i32 %6, 9, !dbg !2247
  br i1 %cmp11, label %if.then, label %if.end15, !dbg !2247

if.then:                                          ; preds = %lor.lhs.false9, %land.lhs.true, %entry
  %7 = load i8* %fclose_fail, align 1, !dbg !2249
  %tobool12 = trunc i8 %7 to i1, !dbg !2249
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !2249

if.then13:                                        ; preds = %if.then
  %call14 = call i32* @__errno_location() #1, !dbg !2252
  store i32 0, i32* %call14, align 4, !dbg !2252
  br label %if.end, !dbg !2252

if.end:                                           ; preds = %if.then13, %if.then
  store i32 -1, i32* %retval, !dbg !2253
  br label %return, !dbg !2253

if.end15:                                         ; preds = %lor.lhs.false9, %lor.lhs.false
  store i32 0, i32* %retval, !dbg !2254
  br label %return, !dbg !2254

return:                                           ; preds = %if.end15, %if.end
  %8 = load i32* %retval, !dbg !2255
  ret i32 %8, !dbg !2255
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) #2

declare void @klee_make_symbolic(i8*, i64, i8*)

; Function Attrs: noinline optnone
define i64 @macke_fork_several_sizes(i32) #12 {
  switch i32 %0, label %2 [
    i32 128, label %6
    i32 2, label %3
    i32 4, label %4
    i32 16, label %5
  ]

; <label>:2                                       ; preds = %6, %5, %4, %3, %1
  %merge = phi i64 [ 1, %1 ], [ 2, %3 ], [ 4, %4 ], [ 16, %5 ], [ 128, %6 ]
  ret i64 %merge

; <label>:3                                       ; preds = %1
  br label %2

; <label>:4                                       ; preds = %1
  br label %2

; <label>:5                                       ; preds = %1
  br label %2

; <label>:6                                       ; preds = %1
  br label %2
}

; Function Attrs: noinline optnone
define i32 @macke_klee_change_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0))
  %4 = load i64* %argno0
  %argno1 = alloca i64
  %5 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %5, i64 8, i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0))
  %6 = load i64* %argno1
  %7 = call i64 @klee_change(i64 %4, i64 %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_klee_get_true_main(i32, i8**) #12 {
  %3 = call i32 @klee_get_true()
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_klee_get_false_main(i32, i8**) #12 {
  %3 = call i32 @klee_get_false()
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_emit_bug_reporting_address_main(i32, i8**) #12 {
  call void @emit_bug_reporting_address()
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_usage_main(i32, i8**) #12 {
  %argno0 = alloca i32
  %3 = bitcast i32* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @2, i32 0, i32 0))
  %4 = load i32* %argno0
  call void @usage(i32 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xalloc_die_main(i32, i8**) #12 {
  call void @xalloc_die()
  unreachable
}

; Function Attrs: noinline optnone
define i32 @macke_xmalloc_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i8* @xmalloc(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xmemdup_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @4, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @5, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @6, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i8* @xmemdup(i8* %6, i64 %8)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xstrdup_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @7, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @8, i32 0, i32 0))
  %7 = call i8* @xstrdup(i8* %6)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_version_etc_va_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @9, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 216
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @10, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @11, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 1
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0))
  %12 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0))
  %13 = call i64 @macke_fork_several_sizes(i32 %12)
  %14 = mul i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  call void @klee_make_symbolic(i8* %15, i64 %14, i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0))
  %16 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @15, i32 0, i32 0))
  %17 = call i64 @macke_fork_several_sizes(i32 %16)
  %18 = mul i64 %17, 1
  %19 = call i8* @malloc(i64 %18)
  call void @klee_make_symbolic(i8* %19, i64 %18, i8* getelementptr inbounds ([7 x i8]* @16, i32 0, i32 0))
  %20 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @17, i32 0, i32 0))
  %21 = call i64 @macke_fork_several_sizes(i32 %20)
  %22 = mul i64 %21, 24
  %23 = call i8* @malloc(i64 %22)
  call void @klee_make_symbolic(i8* %23, i64 %22, i8* getelementptr inbounds ([7 x i8]* @18, i32 0, i32 0))
  %24 = bitcast i8* %23 to %struct.__va_list_tag*
  call void @version_etc_va(%struct._IO_FILE* %7, i8* %11, i8* %15, i8* %19, %struct.__va_list_tag* %24)
  call void @free(i8* %6)
  call void @free(i8* %11)
  call void @free(i8* %15)
  call void @free(i8* %19)
  call void @free(i8* %23)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_version_etc_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @19, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 216
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @20, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @21, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 1
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @22, i32 0, i32 0))
  %12 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @23, i32 0, i32 0))
  %13 = call i64 @macke_fork_several_sizes(i32 %12)
  %14 = mul i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  call void @klee_make_symbolic(i8* %15, i64 %14, i8* getelementptr inbounds ([7 x i8]* @24, i32 0, i32 0))
  %16 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @25, i32 0, i32 0))
  %17 = call i64 @macke_fork_several_sizes(i32 %16)
  %18 = mul i64 %17, 1
  %19 = call i8* @malloc(i64 %18)
  call void @klee_make_symbolic(i8* %19, i64 %18, i8* getelementptr inbounds ([7 x i8]* @26, i32 0, i32 0))
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @version_etc(%struct._IO_FILE* %7, i8* %11, i8* %15, i8* %19)
  call void @free(i8* %6)
  call void @free(i8* %11)
  call void @free(i8* %15)
  call void @free(i8* %19)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_check_tuning_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @27, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @28, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i1 @check_tuning(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_is_prime_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @29, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i1 @is_prime(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_next_prime_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @30, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i64 @next_prime(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xrealloc_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @31, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @32, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @33, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i8* @xrealloc(i8* %6, i64 %8)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_x2nrealloc_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @34, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @35, i32 0, i32 0))
  %7 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @36, i32 0, i32 0))
  %8 = call i64 @macke_fork_several_sizes(i32 %7)
  %9 = mul i64 %8, 8
  %10 = call i8* @malloc(i64 %9)
  call void @klee_make_symbolic(i8* %10, i64 %9, i8* getelementptr inbounds ([7 x i8]* @37, i32 0, i32 0))
  %11 = bitcast i8* %10 to i64*
  %argno2 = alloca i64
  %12 = bitcast i64* %argno2 to i8*
  call void @klee_make_symbolic(i8* %12, i64 8, i8* getelementptr inbounds ([7 x i8]* @38, i32 0, i32 0))
  %13 = load i64* %argno2
  %14 = call i8* @x2nrealloc(i8* %6, i64* %11, i64 %13)
  call void @free(i8* %6)
  call void @free(i8* %10)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xstrndup_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @39, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @40, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @41, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i8* @xstrndup(i8* %6, i64 %8)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quoting_options_from_style_main(i32, i8**) #12 {
  %argno0 = alloca %struct.quoting_options
  %argno1 = alloca i32
  %3 = bitcast i32* %argno1 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @42, i32 0, i32 0))
  %4 = load i32* %argno1
  call void @quoting_options_from_style(%struct.quoting_options* %argno0, i32 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_gettext_quote_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @43, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @44, i32 0, i32 0))
  %argno1 = alloca i32
  %7 = bitcast i32* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 4, i8* getelementptr inbounds ([7 x i8]* @45, i32 0, i32 0))
  %8 = load i32* %argno1
  %9 = call i8* @gettext_quote(i8* %6, i32 %8)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_buffer_restyled_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @46, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @47, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @48, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @49, i32 0, i32 0))
  %10 = call i64 @macke_fork_several_sizes(i32 %9)
  %11 = mul i64 %10, 1
  %12 = call i8* @malloc(i64 %11)
  call void @klee_make_symbolic(i8* %12, i64 %11, i8* getelementptr inbounds ([7 x i8]* @50, i32 0, i32 0))
  %argno3 = alloca i64
  %13 = bitcast i64* %argno3 to i8*
  call void @klee_make_symbolic(i8* %13, i64 8, i8* getelementptr inbounds ([7 x i8]* @51, i32 0, i32 0))
  %14 = load i64* %argno3
  %argno4 = alloca i32
  %15 = bitcast i32* %argno4 to i8*
  call void @klee_make_symbolic(i8* %15, i64 4, i8* getelementptr inbounds ([7 x i8]* @52, i32 0, i32 0))
  %16 = load i32* %argno4
  %17 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @53, i32 0, i32 0))
  %18 = call i64 @macke_fork_several_sizes(i32 %17)
  %19 = mul i64 %18, 36
  %20 = call i8* @malloc(i64 %19)
  call void @klee_make_symbolic(i8* %20, i64 %19, i8* getelementptr inbounds ([7 x i8]* @54, i32 0, i32 0))
  %21 = bitcast i8* %20 to %struct.quoting_options*
  %22 = call i64 @quotearg_buffer_restyled(i8* %6, i64 %8, i8* %12, i64 %14, i32 %16, %struct.quoting_options* %21)
  call void @free(i8* %6)
  call void @free(i8* %12)
  call void @free(i8* %20)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_buffer_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @55, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @56, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @57, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @58, i32 0, i32 0))
  %10 = call i64 @macke_fork_several_sizes(i32 %9)
  %11 = mul i64 %10, 1
  %12 = call i8* @malloc(i64 %11)
  call void @klee_make_symbolic(i8* %12, i64 %11, i8* getelementptr inbounds ([7 x i8]* @59, i32 0, i32 0))
  %argno3 = alloca i64
  %13 = bitcast i64* %argno3 to i8*
  call void @klee_make_symbolic(i8* %13, i64 8, i8* getelementptr inbounds ([7 x i8]* @60, i32 0, i32 0))
  %14 = load i64* %argno3
  %15 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @61, i32 0, i32 0))
  %16 = call i64 @macke_fork_several_sizes(i32 %15)
  %17 = mul i64 %16, 36
  %18 = call i8* @malloc(i64 %17)
  call void @klee_make_symbolic(i8* %18, i64 %17, i8* getelementptr inbounds ([7 x i8]* @62, i32 0, i32 0))
  %19 = bitcast i8* %18 to %struct.quoting_options*
  %20 = call i64 @quotearg_buffer(i8* %6, i64 %8, i8* %12, i64 %14, %struct.quoting_options* %19)
  call void @free(i8* %6)
  call void @free(i8* %12)
  call void @free(i8* %18)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xcharalloc_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @63, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i8* @xcharalloc(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_n_options_main(i32, i8**) #12 {
  %argno0 = alloca i32
  %3 = bitcast i32* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @64, i32 0, i32 0))
  %4 = load i32* %argno0
  %5 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @65, i32 0, i32 0))
  %6 = call i64 @macke_fork_several_sizes(i32 %5)
  %7 = mul i64 %6, 1
  %8 = call i8* @malloc(i64 %7)
  call void @klee_make_symbolic(i8* %8, i64 %7, i8* getelementptr inbounds ([7 x i8]* @66, i32 0, i32 0))
  %argno2 = alloca i64
  %9 = bitcast i64* %argno2 to i8*
  call void @klee_make_symbolic(i8* %9, i64 8, i8* getelementptr inbounds ([7 x i8]* @67, i32 0, i32 0))
  %10 = load i64* %argno2
  %11 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @68, i32 0, i32 0))
  %12 = call i64 @macke_fork_several_sizes(i32 %11)
  %13 = mul i64 %12, 36
  %14 = call i8* @malloc(i64 %13)
  call void @klee_make_symbolic(i8* %14, i64 %13, i8* getelementptr inbounds ([7 x i8]* @69, i32 0, i32 0))
  %15 = bitcast i8* %14 to %struct.quoting_options*
  %16 = call i8* @quotearg_n_options(i32 %4, i8* %8, i64 %10, %struct.quoting_options* %15)
  call void @free(i8* %8)
  call void @free(i8* %14)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_n_style_main(i32, i8**) #12 {
  %argno0 = alloca i32
  %3 = bitcast i32* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @70, i32 0, i32 0))
  %4 = load i32* %argno0
  %argno1 = alloca i32
  %5 = bitcast i32* %argno1 to i8*
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([7 x i8]* @71, i32 0, i32 0))
  %6 = load i32* %argno1
  %7 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @72, i32 0, i32 0))
  %8 = call i64 @macke_fork_several_sizes(i32 %7)
  %9 = mul i64 %8, 1
  %10 = call i8* @malloc(i64 %9)
  call void @klee_make_symbolic(i8* %10, i64 %9, i8* getelementptr inbounds ([7 x i8]* @73, i32 0, i32 0))
  %11 = call i8* @quotearg_n_style(i32 %4, i32 %6, i8* %10)
  call void @free(i8* %10)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quote_n_main(i32, i8**) #12 {
  %argno0 = alloca i32
  %3 = bitcast i32* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @74, i32 0, i32 0))
  %4 = load i32* %argno0
  %5 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @75, i32 0, i32 0))
  %6 = call i64 @macke_fork_several_sizes(i32 %5)
  %7 = mul i64 %6, 1
  %8 = call i8* @malloc(i64 %7)
  call void @klee_make_symbolic(i8* %8, i64 %7, i8* getelementptr inbounds ([7 x i8]* @76, i32 0, i32 0))
  %9 = call i8* @quote_n(i32 %4, i8* %8)
  call void @free(i8* %8)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quote_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @77, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @78, i32 0, i32 0))
  %7 = call i8* @quote(i8* %6)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xzalloc_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @79, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i8* @xzalloc(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_is_printable_field_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @80, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i1 @is_printable_field(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_free_entry_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @81, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @82, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @83, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 16
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @84, i32 0, i32 0))
  %12 = bitcast i8* %11 to %struct.hash_entry*
  call void @free_entry(%struct.hash_table* %7, %struct.hash_entry* %12)
  call void @free(i8* %6)
  call void @free(i8* %11)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_allocate_entry_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @85, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @86, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_rehash_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @87, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @88, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %argno1 = alloca i64
  %8 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %8, i64 8, i8* getelementptr inbounds ([7 x i8]* @89, i32 0, i32 0))
  %9 = load i64* %argno1
  %10 = call i1 @hash_rehash(%struct.hash_table* %7, i64 %9)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @main(i32, i8**) #12 {
  call void @klee_mark_arg_symbolic(i32 %0, i8** %1)
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @90, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @91, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @92, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 1
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @93, i32 0, i32 0))
  %12 = call i8* @hash_insert(%struct.hash_table* %7, i8* %11)
  call void @free(i8* %6)
  call void @free(i8* %11)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_mark_range_start_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @94, i32 0, i32 0))
  %4 = load i64* %argno0
  call void @mark_range_start(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_mark_printable_field_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @95, i32 0, i32 0))
  %4 = load i64* %argno0
  call void @mark_printable_field(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_set_fields_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @96, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @97, i32 0, i32 0))
  %7 = call i1 @set_fields(i8* %6)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_lookup_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @98, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @99, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @100, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 1
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @101, i32 0, i32 0))
  %12 = call i8* @hash_lookup(%struct.hash_table* %7, i8* %11)
  call void @free(i8* %6)
  call void @free(i8* %11)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_is_range_start_index_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @102, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i1 @is_range_start_index(i64 %4)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_print_kth_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @103, i32 0, i32 0))
  %4 = load i64* %argno0
  %5 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @104, i32 0, i32 0))
  %6 = call i64 @macke_fork_several_sizes(i32 %5)
  %7 = mul i64 %6, 1
  %8 = call i8* @malloc(i64 %7)
  call void @klee_make_symbolic(i8* %8, i64 %7, i8* getelementptr inbounds ([7 x i8]* @105, i32 0, i32 0))
  %9 = call i1 @print_kth(i64 %4, i8* %8)
  call void @free(i8* %8)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_cut_bytes_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @106, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 216
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @107, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  call void @cut_bytes(%struct._IO_FILE* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_to_uchar_main(i32, i8**) #12 {
  %argno0 = alloca i8
  call void @klee_make_symbolic(i8* %argno0, i64 1, i8* getelementptr inbounds ([7 x i8]* @108, i32 0, i32 0))
  %3 = load i8* %argno0
  %4 = call i8 @to_uchar(i8 %3)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_cut_fields_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @109, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 216
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @110, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  call void @cut_fields(%struct._IO_FILE* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_cut_stream_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @111, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 216
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @112, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  call void @cut_stream(%struct._IO_FILE* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_cut_file_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @113, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @114, i32 0, i32 0))
  %7 = call i1 @cut_file(i8* %6)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_free_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @115, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @116, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  call void @hash_free(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_int_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @117, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @118, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @119, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i64 @hash_int(i8* %6, i64 %8)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_compare_ints_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @120, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @121, i32 0, i32 0))
  %7 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @122, i32 0, i32 0))
  %8 = call i64 @macke_fork_several_sizes(i32 %7)
  %9 = mul i64 %8, 1
  %10 = call i8* @malloc(i64 %9)
  call void @klee_make_symbolic(i8* %10, i64 %9, i8* getelementptr inbounds ([7 x i8]* @123, i32 0, i32 0))
  %11 = call i1 @hash_compare_ints(i8* %6, i8* %10)
  call void @free(i8* %6)
  call void @free(i8* %10)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_compare_ranges_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @124, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @125, i32 0, i32 0))
  %7 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @126, i32 0, i32 0))
  %8 = call i64 @macke_fork_several_sizes(i32 %7)
  %9 = mul i64 %8, 1
  %10 = call i8* @malloc(i64 %9)
  call void @klee_make_symbolic(i8* %10, i64 %9, i8* getelementptr inbounds ([7 x i8]* @127, i32 0, i32 0))
  %11 = call i32 @compare_ranges(i8* %6, i8* %10)
  call void @free(i8* %6)
  call void @free(i8* %10)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_close_stdout_set_file_name_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @128, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @129, i32 0, i32 0))
  call void @close_stdout_set_file_name(i8* %6)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_close_stream_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @130, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 216
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @131, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE*
  %8 = call i32 @close_stream(%struct._IO_FILE* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_set_char_quoting_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @132, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 36
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @133, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.quoting_options*
  %argno1 = alloca i8
  call void @klee_make_symbolic(i8* %argno1, i64 1, i8* getelementptr inbounds ([7 x i8]* @134, i32 0, i32 0))
  %8 = load i8* %argno1
  %argno2 = alloca i32
  %9 = bitcast i32* %argno2 to i8*
  call void @klee_make_symbolic(i8* %9, i64 4, i8* getelementptr inbounds ([7 x i8]* @135, i32 0, i32 0))
  %10 = load i32* %argno2
  %11 = call i32 @set_char_quoting(%struct.quoting_options* %7, i8 %8, i32 %10)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_char_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @136, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @137, i32 0, i32 0))
  %argno1 = alloca i8
  call void @klee_make_symbolic(i8* %argno1, i64 1, i8* getelementptr inbounds ([7 x i8]* @138, i32 0, i32 0))
  %7 = load i8* %argno1
  %8 = call i8* @quotearg_char(i8* %6, i8 %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_colon_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @139, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @140, i32 0, i32 0))
  %7 = call i8* @quotearg_colon(i8* %6)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_close_stdout_main(i32, i8**) #12 {
  call void @close_stdout()
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_get_n_buckets_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @141, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @142, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i64 @hash_get_n_buckets(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_get_n_buckets_used_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @143, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @144, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i64 @hash_get_n_buckets_used(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_get_n_entries_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @145, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @146, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i64 @hash_get_n_entries(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_get_max_bucket_length_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @147, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @148, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i64 @hash_get_max_bucket_length(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_table_ok_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @149, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @150, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i1 @hash_table_ok(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_print_statistics_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @151, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @152, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @153, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 216
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @154, i32 0, i32 0))
  %12 = bitcast i8* %11 to %struct._IO_FILE*
  call void @hash_print_statistics(%struct.hash_table* %7, %struct._IO_FILE* %12)
  call void @free(i8* %6)
  call void @free(i8* %11)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_get_first_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @155, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @156, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i8* @hash_get_first(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_get_next_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @157, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @158, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @159, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 1
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @160, i32 0, i32 0))
  %12 = call i8* @hash_get_next(%struct.hash_table* %7, i8* %11)
  call void @free(i8* %6)
  call void @free(i8* %11)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_string_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @161, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @162, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @163, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i64 @hash_string(i8* %6, i64 %8)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_reset_tuning_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @164, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 20
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @165, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_tuning*
  call void @hash_reset_tuning(%struct.hash_tuning* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_clear_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @166, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @167, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  call void @hash_clear(%struct.hash_table* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_hash_delete_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @168, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 80
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @169, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.hash_table*
  %8 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @170, i32 0, i32 0))
  %9 = call i64 @macke_fork_several_sizes(i32 %8)
  %10 = mul i64 %9, 1
  %11 = call i8* @malloc(i64 %10)
  call void @klee_make_symbolic(i8* %11, i64 %10, i8* getelementptr inbounds ([7 x i8]* @171, i32 0, i32 0))
  %12 = call i8* @hash_delete(%struct.hash_table* %7, i8* %11)
  call void @free(i8* %6)
  call void @free(i8* %11)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_clone_quoting_options_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @172, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 36
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @173, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.quoting_options*
  %8 = call %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_get_quoting_style_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @174, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 36
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @175, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.quoting_options*
  %8 = call i32 @get_quoting_style(%struct.quoting_options* %7)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_set_quoting_style_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @176, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 36
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @177, i32 0, i32 0))
  %7 = bitcast i8* %6 to %struct.quoting_options*
  %argno1 = alloca i32
  %8 = bitcast i32* %argno1 to i8*
  call void @klee_make_symbolic(i8* %8, i64 4, i8* getelementptr inbounds ([7 x i8]* @178, i32 0, i32 0))
  %9 = load i32* %argno1
  call void @set_quoting_style(%struct.quoting_options* %7, i32 %9)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_alloc_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @179, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @180, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @181, i32 0, i32 0))
  %8 = load i64* %argno1
  %9 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @182, i32 0, i32 0))
  %10 = call i64 @macke_fork_several_sizes(i32 %9)
  %11 = mul i64 %10, 36
  %12 = call i8* @malloc(i64 %11)
  call void @klee_make_symbolic(i8* %12, i64 %11, i8* getelementptr inbounds ([7 x i8]* @183, i32 0, i32 0))
  %13 = bitcast i8* %12 to %struct.quoting_options*
  %14 = call i8* @quotearg_alloc(i8* %6, i64 %8, %struct.quoting_options* %13)
  call void @free(i8* %6)
  call void @free(i8* %12)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_free_main(i32, i8**) #12 {
  call void @quotearg_free()
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_n_main(i32, i8**) #12 {
  %argno0 = alloca i32
  %3 = bitcast i32* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @184, i32 0, i32 0))
  %4 = load i32* %argno0
  %5 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @185, i32 0, i32 0))
  %6 = call i64 @macke_fork_several_sizes(i32 %5)
  %7 = mul i64 %6, 1
  %8 = call i8* @malloc(i64 %7)
  call void @klee_make_symbolic(i8* %8, i64 %7, i8* getelementptr inbounds ([7 x i8]* @186, i32 0, i32 0))
  %9 = call i8* @quotearg_n(i32 %4, i8* %8)
  call void @free(i8* %8)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @187, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @188, i32 0, i32 0))
  %7 = call i8* @quotearg(i8* %6)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_n_style_mem_main(i32, i8**) #12 {
  %argno0 = alloca i32
  %3 = bitcast i32* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @189, i32 0, i32 0))
  %4 = load i32* %argno0
  %argno1 = alloca i32
  %5 = bitcast i32* %argno1 to i8*
  call void @klee_make_symbolic(i8* %5, i64 4, i8* getelementptr inbounds ([7 x i8]* @190, i32 0, i32 0))
  %6 = load i32* %argno1
  %7 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @191, i32 0, i32 0))
  %8 = call i64 @macke_fork_several_sizes(i32 %7)
  %9 = mul i64 %8, 1
  %10 = call i8* @malloc(i64 %9)
  call void @klee_make_symbolic(i8* %10, i64 %9, i8* getelementptr inbounds ([7 x i8]* @192, i32 0, i32 0))
  %argno3 = alloca i64
  %11 = bitcast i64* %argno3 to i8*
  call void @klee_make_symbolic(i8* %11, i64 8, i8* getelementptr inbounds ([7 x i8]* @193, i32 0, i32 0))
  %12 = load i64* %argno3
  %13 = call i8* @quotearg_n_style_mem(i32 %4, i32 %6, i8* %10, i64 %12)
  call void @free(i8* %10)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_quotearg_style_main(i32, i8**) #12 {
  %argno0 = alloca i32
  %3 = bitcast i32* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([7 x i8]* @194, i32 0, i32 0))
  %4 = load i32* %argno0
  %5 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @195, i32 0, i32 0))
  %6 = call i64 @macke_fork_several_sizes(i32 %5)
  %7 = mul i64 %6, 1
  %8 = call i8* @malloc(i64 %7)
  call void @klee_make_symbolic(i8* %8, i64 %7, i8* getelementptr inbounds ([7 x i8]* @196, i32 0, i32 0))
  %9 = call i8* @quotearg_style(i32 %4, i8* %8)
  call void @free(i8* %8)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xnmalloc_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @197, i32 0, i32 0))
  %4 = load i64* %argno0
  %argno1 = alloca i64
  %5 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %5, i64 8, i8* getelementptr inbounds ([7 x i8]* @198, i32 0, i32 0))
  %6 = load i64* %argno1
  %7 = call i8* @xnmalloc(i64 %4, i64 %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xnrealloc_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @199, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @200, i32 0, i32 0))
  %argno1 = alloca i64
  %7 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %7, i64 8, i8* getelementptr inbounds ([7 x i8]* @201, i32 0, i32 0))
  %8 = load i64* %argno1
  %argno2 = alloca i64
  %9 = bitcast i64* %argno2 to i8*
  call void @klee_make_symbolic(i8* %9, i64 8, i8* getelementptr inbounds ([7 x i8]* @202, i32 0, i32 0))
  %10 = load i64* %argno2
  %11 = call i8* @xnrealloc(i8* %6, i64 %8, i64 %10)
  call void @free(i8* %6)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_x2realloc_main(i32, i8**) #12 {
  %3 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @203, i32 0, i32 0))
  %4 = call i64 @macke_fork_several_sizes(i32 %3)
  %5 = mul i64 %4, 1
  %6 = call i8* @malloc(i64 %5)
  call void @klee_make_symbolic(i8* %6, i64 %5, i8* getelementptr inbounds ([7 x i8]* @204, i32 0, i32 0))
  %7 = call i32 @klee_range(i32 1, i32 1025, i8* getelementptr inbounds ([20 x i8]* @205, i32 0, i32 0))
  %8 = call i64 @macke_fork_several_sizes(i32 %7)
  %9 = mul i64 %8, 8
  %10 = call i8* @malloc(i64 %9)
  call void @klee_make_symbolic(i8* %10, i64 %9, i8* getelementptr inbounds ([7 x i8]* @206, i32 0, i32 0))
  %11 = bitcast i8* %10 to i64*
  %12 = call i8* @x2realloc(i8* %6, i64* %11)
  call void @free(i8* %6)
  call void @free(i8* %10)
  ret i32 0
}

; Function Attrs: noinline optnone
define i32 @macke_xcalloc_main(i32, i8**) #12 {
  %argno0 = alloca i64
  %3 = bitcast i64* %argno0 to i8*
  call void @klee_make_symbolic(i8* %3, i64 8, i8* getelementptr inbounds ([7 x i8]* @207, i32 0, i32 0))
  %4 = load i64* %argno0
  %argno1 = alloca i64
  %5 = bitcast i64* %argno1 to i8*
  call void @klee_make_symbolic(i8* %5, i64 8, i8* getelementptr inbounds ([7 x i8]* @208, i32 0, i32 0))
  %6 = load i64* %argno1
  %7 = call i8* @xcalloc(i64 %4, i64 %6)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @klee_div_zero_check(i64 %z) #13 {
  %1 = icmp eq i64 %z, 0, !dbg !2256
  br i1 %1, label %2, label %3, !dbg !2256

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([64 x i8]* @.str58, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str159, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str260, i64 0, i64 0)) #19, !dbg !2258
  unreachable, !dbg !2258

; <label>:3                                       ; preds = %0
  ret void, !dbg !2259
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #14

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @klee_int(i8* %name) #13 {
  %x = alloca i32, align 4
  %1 = bitcast i32* %x to i8*, !dbg !2260
  call void @klee_make_symbolic(i8* %1, i64 4, i8* %name) #20, !dbg !2260
  %2 = load i32* %x, align 4, !dbg !2261, !tbaa !2262
  ret i32 %2, !dbg !2261
}

; Function Attrs: nounwind uwtable
define void @klee_mark_arg_symbolic(i32 %argc, i8** nocapture readonly %argv) #13 {
  %1 = icmp sgt i32 %argc, 1, !dbg !2266
  br i1 %1, label %.lr.ph5, label %._crit_edge6, !dbg !2266

.lr.ph5:                                          ; preds = %._crit_edge, %0
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %._crit_edge ], [ 1, %0 ]
  %2 = getelementptr inbounds i8** %argv, i64 %indvars.iv8, !dbg !2268
  %3 = load i8** %2, align 8, !dbg !2268, !tbaa !2270
  br label %4, !dbg !2272

; <label>:4                                       ; preds = %4, %.lr.ph5
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %4 ], [ 0, %.lr.ph5 ]
  %i.0.i = phi i32 [ %5, %4 ], [ 0, %.lr.ph5 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2272
  %5 = add nsw i32 %i.0.i, 1, !dbg !2272
  %6 = getelementptr inbounds i8* %3, i64 %indvars.iv.i, !dbg !2272
  %7 = load i8* %6, align 1, !dbg !2272, !tbaa !2273
  %8 = icmp eq i8 %7, 0, !dbg !2272
  br i1 %8, label %my_strlen.exit, label %4, !dbg !2272

my_strlen.exit:                                   ; preds = %4
  %9 = sext i32 %5 to i64, !dbg !2274
  tail call void @klee_make_symbolic(i8* %3, i64 %9, i8* getelementptr inbounds ([5 x i8]* @.str361, i64 0, i64 0)) #20, !dbg !2274
  %10 = sext i32 %i.0.i to i64, !dbg !2275
  %11 = load i8** %2, align 8, !dbg !2275, !tbaa !2270
  %12 = getelementptr inbounds i8* %11, i64 %10, !dbg !2275
  %13 = load i8* %12, align 1, !dbg !2275, !tbaa !2273
  %14 = icmp eq i8 %13, 0, !dbg !2275
  %15 = zext i1 %14 to i64, !dbg !2275
  tail call void @klee_assume(i64 %15) #20, !dbg !2275
  %16 = icmp sgt i32 %i.0.i, 0, !dbg !2276
  %17 = load i8** %2, align 8, !dbg !2278, !tbaa !2270
  br i1 %16, label %.lr.ph, label %._crit_edge, !dbg !2276

.lr.ph:                                           ; preds = %.lr.ph, %my_strlen.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %my_strlen.exit ]
  %18 = phi i8* [ %24, %.lr.ph ], [ %17, %my_strlen.exit ]
  %19 = getelementptr inbounds i8* %18, i64 %indvars.iv, !dbg !2278
  %20 = load i8* %19, align 1, !dbg !2278, !tbaa !2273
  %21 = icmp sgt i8 %20, 31, !dbg !2280
  %22 = icmp ne i8 %20, 127, !dbg !2280
  %..i = and i1 %21, %22, !dbg !2280
  %23 = zext i1 %..i to i64, !dbg !2278
  tail call void @klee_prefer_cex(i8* %18, i64 %23) #20, !dbg !2278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2276
  %24 = load i8** %2, align 8, !dbg !2278, !tbaa !2270
  %lftr.wideiv4 = trunc i64 %indvars.iv.next to i32, !dbg !2276
  %exitcond5 = icmp eq i32 %lftr.wideiv4, %i.0.i, !dbg !2276
  br i1 %exitcond5, label %._crit_edge, label %.lr.ph, !dbg !2276

._crit_edge:                                      ; preds = %.lr.ph, %my_strlen.exit
  %.lcssa1 = phi i8* [ %17, %my_strlen.exit ], [ %24, %.lr.ph ]
  %25 = getelementptr inbounds i8* %.lcssa1, i64 %10, !dbg !2281
  store i8 0, i8* %25, align 1, !dbg !2281, !tbaa !2273
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !2266
  %lftr.wideiv = trunc i64 %indvars.iv.next9 to i32, !dbg !2266
  %exitcond = icmp eq i32 %lftr.wideiv, %argc, !dbg !2266
  br i1 %exitcond, label %._crit_edge6, label %.lr.ph5, !dbg !2266

._crit_edge6:                                     ; preds = %._crit_edge, %0
  ret void, !dbg !2282
}

declare void @klee_assume(i64) #15

declare void @klee_prefer_cex(i8*, i64) #15

; Function Attrs: nounwind uwtable
define void @klee_overshift_check(i64 %bitWidth, i64 %shift) #13 {
  %1 = icmp ult i64 %shift, %bitWidth, !dbg !2283
  br i1 %1, label %3, label %2, !dbg !2283

; <label>:2                                       ; preds = %0
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str462, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str1563, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str2664, i64 0, i64 0)) #19, !dbg !2285
  unreachable, !dbg !2285

; <label>:3                                       ; preds = %0
  ret void, !dbg !2287
}

; Function Attrs: nounwind uwtable
define i32 @klee_range(i32 %start, i32 %end, i8* %name) #13 {
  %x = alloca i32, align 4
  %1 = icmp slt i32 %start, %end, !dbg !2288
  br i1 %1, label %3, label %2, !dbg !2288

; <label>:2                                       ; preds = %0
  call void @klee_report_error(i8* getelementptr inbounds ([55 x i8]* @.str765, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str1866, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2967, i64 0, i64 0)) #19, !dbg !2290
  unreachable, !dbg !2290

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %start, 1, !dbg !2291
  %5 = icmp eq i32 %4, %end, !dbg !2291
  br i1 %5, label %21, label %6, !dbg !2291

; <label>:6                                       ; preds = %3
  %7 = bitcast i32* %x to i8*, !dbg !2293
  call void @klee_make_symbolic(i8* %7, i64 4, i8* %name) #20, !dbg !2293
  %8 = icmp eq i32 %start, 0, !dbg !2295
  %9 = load i32* %x, align 4, !dbg !2297, !tbaa !2262
  br i1 %8, label %10, label %13, !dbg !2295

; <label>:10                                      ; preds = %6
  %11 = icmp ult i32 %9, %end, !dbg !2297
  %12 = zext i1 %11 to i64, !dbg !2297
  call void @klee_assume(i64 %12) #20, !dbg !2297
  br label %19, !dbg !2299

; <label>:13                                      ; preds = %6
  %14 = icmp sge i32 %9, %start, !dbg !2300
  %15 = zext i1 %14 to i64, !dbg !2300
  call void @klee_assume(i64 %15) #20, !dbg !2300
  %16 = load i32* %x, align 4, !dbg !2302, !tbaa !2262
  %17 = icmp slt i32 %16, %end, !dbg !2302
  %18 = zext i1 %17 to i64, !dbg !2302
  call void @klee_assume(i64 %18) #20, !dbg !2302
  br label %19

; <label>:19                                      ; preds = %13, %10
  %20 = load i32* %x, align 4, !dbg !2303, !tbaa !2262
  br label %21, !dbg !2303

; <label>:21                                      ; preds = %19, %3
  %.0 = phi i32 [ %20, %19 ], [ %start, %3 ]
  ret i32 %.0, !dbg !2304
}

; Function Attrs: nounwind uwtable
define weak i8* @memcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #13 {
  %1 = icmp eq i64 %len, 0, !dbg !2305
  br i1 %1, label %._crit_edge, label %.lr.ph.preheader, !dbg !2305

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep4 = getelementptr i8* %srcaddr, i64 %2
  %scevgep = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep, %srcaddr
  %bound0 = icmp uge i8* %scevgep4, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end6 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep103 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !2306
  %wide.load = load <16 x i8>* %3, align 1, !dbg !2306
  %next.gep.sum279 = or i64 %index, 16, !dbg !2306
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum279, !dbg !2306
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !2306
  %wide.load200 = load <16 x i8>* %5, align 1, !dbg !2306
  %6 = bitcast i8* %next.gep103 to <16 x i8>*, !dbg !2306
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !2306
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum279, !dbg !2306
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !2306
  store <16 x i8> %wide.load200, <16 x i8>* %8, align 1, !dbg !2306
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !2307

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val5 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end6, %vector.body ]
  %resume.val7 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val5, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val7, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !2305
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !2306
  %12 = load i8* %src.03, align 1, !dbg !2306, !tbaa !2273
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !2306
  store i8 %12, i8* %dest.02, align 1, !dbg !2306, !tbaa !2273
  %14 = icmp eq i64 %10, 0, !dbg !2305
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !2305, !llvm.loop !2310

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %0
  ret i8* %destaddr, !dbg !2311
}

; Function Attrs: nounwind uwtable
define weak i8* @memmove(i8* %dst, i8* %src, i64 %count) #13 {
  %1 = icmp eq i8* %src, %dst, !dbg !2312
  br i1 %1, label %.loopexit, label %2, !dbg !2312

; <label>:2                                       ; preds = %0
  %3 = icmp ugt i8* %src, %dst, !dbg !2314
  br i1 %3, label %.preheader, label %18, !dbg !2314

.preheader:                                       ; preds = %2
  %4 = icmp eq i64 %count, 0, !dbg !2316
  br i1 %4, label %.loopexit, label %.lr.ph.preheader, !dbg !2316

.lr.ph.preheader:                                 ; preds = %.preheader
  %n.vec = and i64 %count, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %5 = add i64 %count, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep11 = getelementptr i8* %src, i64 %5
  %scevgep = getelementptr i8* %dst, i64 %5
  %bound1 = icmp uge i8* %scevgep, %src
  %bound0 = icmp uge i8* %scevgep11, %dst
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %src, i64 %n.vec
  %ptr.ind.end13 = getelementptr i8* %dst, i64 %n.vec
  %rev.ind.end = sub i64 %count, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %src, i64 %index
  %next.gep110 = getelementptr i8* %dst, i64 %index
  %6 = bitcast i8* %next.gep to <16 x i8>*, !dbg !2316
  %wide.load = load <16 x i8>* %6, align 1, !dbg !2316
  %next.gep.sum586 = or i64 %index, 16, !dbg !2316
  %7 = getelementptr i8* %src, i64 %next.gep.sum586, !dbg !2316
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !2316
  %wide.load207 = load <16 x i8>* %8, align 1, !dbg !2316
  %9 = bitcast i8* %next.gep110 to <16 x i8>*, !dbg !2316
  store <16 x i8> %wide.load, <16 x i8>* %9, align 1, !dbg !2316
  %10 = getelementptr i8* %dst, i64 %next.gep.sum586, !dbg !2316
  %11 = bitcast i8* %10 to <16 x i8>*, !dbg !2316
  store <16 x i8> %wide.load207, <16 x i8>* %11, align 1, !dbg !2316
  %index.next = add i64 %index, 32
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !2318

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %src, %.lr.ph.preheader ], [ %src, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val12 = phi i8* [ %dst, %.lr.ph.preheader ], [ %dst, %vector.memcheck ], [ %ptr.ind.end13, %vector.body ]
  %resume.val14 = phi i64 [ %count, %.lr.ph.preheader ], [ %count, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %b.04 = phi i8* [ %14, %.lr.ph ], [ %resume.val, %middle.block ]
  %a.03 = phi i8* [ %16, %.lr.ph ], [ %resume.val12, %middle.block ]
  %.02 = phi i64 [ %13, %.lr.ph ], [ %resume.val14, %middle.block ]
  %13 = add i64 %.02, -1, !dbg !2316
  %14 = getelementptr inbounds i8* %b.04, i64 1, !dbg !2316
  %15 = load i8* %b.04, align 1, !dbg !2316, !tbaa !2273
  %16 = getelementptr inbounds i8* %a.03, i64 1, !dbg !2316
  store i8 %15, i8* %a.03, align 1, !dbg !2316, !tbaa !2273
  %17 = icmp eq i64 %13, 0, !dbg !2316
  br i1 %17, label %.loopexit, label %.lr.ph, !dbg !2316, !llvm.loop !2319

; <label>:18                                      ; preds = %2
  %19 = add i64 %count, -1, !dbg !2320
  %20 = icmp eq i64 %count, 0, !dbg !2322
  br i1 %20, label %.loopexit, label %.lr.ph9, !dbg !2322

.lr.ph9:                                          ; preds = %18
  %21 = getelementptr inbounds i8* %src, i64 %19, !dbg !2323
  %22 = getelementptr inbounds i8* %dst, i64 %19, !dbg !2320
  %n.vec215 = and i64 %count, -32
  %cmp.zero217 = icmp eq i64 %n.vec215, 0
  br i1 %cmp.zero217, label %middle.block210, label %vector.memcheck224

vector.memcheck224:                               ; preds = %.lr.ph9
  %bound1221 = icmp ule i8* %21, %dst
  %bound0220 = icmp ule i8* %22, %src
  %memcheck.conflict223 = and i1 %bound0220, %bound1221
  %.sum = sub i64 %19, %n.vec215
  %rev.ptr.ind.end = getelementptr i8* %src, i64 %.sum
  %rev.ptr.ind.end229 = getelementptr i8* %dst, i64 %.sum
  %rev.ind.end231 = sub i64 %count, %n.vec215
  br i1 %memcheck.conflict223, label %middle.block210, label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.memcheck224
  %index212 = phi i64 [ %index.next234, %vector.body209 ], [ 0, %vector.memcheck224 ]
  %.sum440 = sub i64 %19, %index212
  %next.gep236.sum = add i64 %.sum440, -15, !dbg !2322
  %23 = getelementptr i8* %src, i64 %next.gep236.sum, !dbg !2322
  %24 = bitcast i8* %23 to <16 x i8>*, !dbg !2322
  %wide.load434 = load <16 x i8>* %24, align 1, !dbg !2322
  %reverse = shufflevector <16 x i8> %wide.load434, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2322
  %.sum505 = add i64 %.sum440, -31, !dbg !2322
  %25 = getelementptr i8* %src, i64 %.sum505, !dbg !2322
  %26 = bitcast i8* %25 to <16 x i8>*, !dbg !2322
  %wide.load435 = load <16 x i8>* %26, align 1, !dbg !2322
  %reverse436 = shufflevector <16 x i8> %wide.load435, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2322
  %reverse437 = shufflevector <16 x i8> %reverse, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2322
  %27 = getelementptr i8* %dst, i64 %next.gep236.sum, !dbg !2322
  %28 = bitcast i8* %27 to <16 x i8>*, !dbg !2322
  store <16 x i8> %reverse437, <16 x i8>* %28, align 1, !dbg !2322
  %reverse438 = shufflevector <16 x i8> %reverse436, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2322
  %29 = getelementptr i8* %dst, i64 %.sum505, !dbg !2322
  %30 = bitcast i8* %29 to <16 x i8>*, !dbg !2322
  store <16 x i8> %reverse438, <16 x i8>* %30, align 1, !dbg !2322
  %index.next234 = add i64 %index212, 32
  %31 = icmp eq i64 %index.next234, %n.vec215
  br i1 %31, label %middle.block210, label %vector.body209, !llvm.loop !2324

middle.block210:                                  ; preds = %vector.body209, %vector.memcheck224, %.lr.ph9
  %resume.val225 = phi i8* [ %21, %.lr.ph9 ], [ %21, %vector.memcheck224 ], [ %rev.ptr.ind.end, %vector.body209 ]
  %resume.val227 = phi i8* [ %22, %.lr.ph9 ], [ %22, %vector.memcheck224 ], [ %rev.ptr.ind.end229, %vector.body209 ]
  %resume.val230 = phi i64 [ %count, %.lr.ph9 ], [ %count, %vector.memcheck224 ], [ %rev.ind.end231, %vector.body209 ]
  %new.indc.resume.val232 = phi i64 [ 0, %.lr.ph9 ], [ 0, %vector.memcheck224 ], [ %n.vec215, %vector.body209 ]
  %cmp.n233 = icmp eq i64 %new.indc.resume.val232, %count
  br i1 %cmp.n233, label %.loopexit, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211, %middle.block210
  %b.18 = phi i8* [ %33, %scalar.ph211 ], [ %resume.val225, %middle.block210 ]
  %a.17 = phi i8* [ %35, %scalar.ph211 ], [ %resume.val227, %middle.block210 ]
  %.16 = phi i64 [ %32, %scalar.ph211 ], [ %resume.val230, %middle.block210 ]
  %32 = add i64 %.16, -1, !dbg !2322
  %33 = getelementptr inbounds i8* %b.18, i64 -1, !dbg !2322
  %34 = load i8* %b.18, align 1, !dbg !2322, !tbaa !2273
  %35 = getelementptr inbounds i8* %a.17, i64 -1, !dbg !2322
  store i8 %34, i8* %a.17, align 1, !dbg !2322, !tbaa !2273
  %36 = icmp eq i64 %32, 0, !dbg !2322
  br i1 %36, label %.loopexit, label %scalar.ph211, !dbg !2322, !llvm.loop !2325

.loopexit:                                        ; preds = %scalar.ph211, %middle.block210, %18, %.lr.ph, %middle.block, %.preheader, %0
  ret i8* %dst, !dbg !2326
}

; Function Attrs: nounwind uwtable
define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) #13 {
  %1 = icmp eq i64 %len, 0, !dbg !2327
  br i1 %1, label %15, label %.lr.ph.preheader, !dbg !2327

.lr.ph.preheader:                                 ; preds = %0
  %n.vec = and i64 %len, -32
  %cmp.zero = icmp eq i64 %n.vec, 0
  %2 = add i64 %len, -1
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep5 = getelementptr i8* %srcaddr, i64 %2
  %scevgep4 = getelementptr i8* %destaddr, i64 %2
  %bound1 = icmp uge i8* %scevgep4, %srcaddr
  %bound0 = icmp uge i8* %scevgep5, %destaddr
  %memcheck.conflict = and i1 %bound0, %bound1
  %ptr.ind.end = getelementptr i8* %srcaddr, i64 %n.vec
  %ptr.ind.end7 = getelementptr i8* %destaddr, i64 %n.vec
  %rev.ind.end = sub i64 %len, %n.vec
  br i1 %memcheck.conflict, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.memcheck
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ]
  %next.gep = getelementptr i8* %srcaddr, i64 %index
  %next.gep104 = getelementptr i8* %destaddr, i64 %index
  %3 = bitcast i8* %next.gep to <16 x i8>*, !dbg !2328
  %wide.load = load <16 x i8>* %3, align 1, !dbg !2328
  %next.gep.sum280 = or i64 %index, 16, !dbg !2328
  %4 = getelementptr i8* %srcaddr, i64 %next.gep.sum280, !dbg !2328
  %5 = bitcast i8* %4 to <16 x i8>*, !dbg !2328
  %wide.load201 = load <16 x i8>* %5, align 1, !dbg !2328
  %6 = bitcast i8* %next.gep104 to <16 x i8>*, !dbg !2328
  store <16 x i8> %wide.load, <16 x i8>* %6, align 1, !dbg !2328
  %7 = getelementptr i8* %destaddr, i64 %next.gep.sum280, !dbg !2328
  %8 = bitcast i8* %7 to <16 x i8>*, !dbg !2328
  store <16 x i8> %wide.load201, <16 x i8>* %8, align 1, !dbg !2328
  %index.next = add i64 %index, 32
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !2329

middle.block:                                     ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %resume.val = phi i8* [ %srcaddr, %.lr.ph.preheader ], [ %srcaddr, %vector.memcheck ], [ %ptr.ind.end, %vector.body ]
  %resume.val6 = phi i8* [ %destaddr, %.lr.ph.preheader ], [ %destaddr, %vector.memcheck ], [ %ptr.ind.end7, %vector.body ]
  %resume.val8 = phi i64 [ %len, %.lr.ph.preheader ], [ %len, %vector.memcheck ], [ %rev.ind.end, %vector.body ]
  %new.indc.resume.val = phi i64 [ 0, %.lr.ph.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %vector.body ]
  %cmp.n = icmp eq i64 %new.indc.resume.val, %len
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %middle.block
  %src.03 = phi i8* [ %11, %.lr.ph ], [ %resume.val, %middle.block ]
  %dest.02 = phi i8* [ %13, %.lr.ph ], [ %resume.val6, %middle.block ]
  %.01 = phi i64 [ %10, %.lr.ph ], [ %resume.val8, %middle.block ]
  %10 = add i64 %.01, -1, !dbg !2327
  %11 = getelementptr inbounds i8* %src.03, i64 1, !dbg !2328
  %12 = load i8* %src.03, align 1, !dbg !2328, !tbaa !2273
  %13 = getelementptr inbounds i8* %dest.02, i64 1, !dbg !2328
  store i8 %12, i8* %dest.02, align 1, !dbg !2328, !tbaa !2273
  %14 = icmp eq i64 %10, 0, !dbg !2327
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !2327, !llvm.loop !2330

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %15, !dbg !2327

; <label>:15                                      ; preds = %._crit_edge, %0
  %dest.0.lcssa = phi i8* [ %scevgep, %._crit_edge ], [ %destaddr, %0 ]
  ret i8* %dest.0.lcssa, !dbg !2331
}

; Function Attrs: nounwind uwtable
define weak i8* @memset(i8* %dst, i32 %s, i64 %count) #13 {
  %1 = icmp eq i64 %count, 0, !dbg !2332
  br i1 %1, label %._crit_edge, label %.lr.ph, !dbg !2332

.lr.ph:                                           ; preds = %0
  %2 = trunc i32 %s to i8, !dbg !2333
  br label %3, !dbg !2332

; <label>:3                                       ; preds = %3, %.lr.ph
  %a.02 = phi i8* [ %dst, %.lr.ph ], [ %5, %3 ]
  %.01 = phi i64 [ %count, %.lr.ph ], [ %4, %3 ]
  %4 = add i64 %.01, -1, !dbg !2332
  %5 = getelementptr inbounds i8* %a.02, i64 1, !dbg !2333
  store volatile i8 %2, i8* %a.02, align 1, !dbg !2333, !tbaa !2273
  %6 = icmp eq i64 %4, 0, !dbg !2332
  br i1 %6, label %._crit_edge, label %3, !dbg !2332

._crit_edge:                                      ; preds = %3, %0
  ret i8* %dst, !dbg !2334
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-s
attributes #5 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use
attributes #6 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #7 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #8 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-floa
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-
attributes #11 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="fals
attributes #12 = { noinline optnone }
attributes #13 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind readonly }
attributes #18 = { noreturn }
attributes #19 = { nobuiltin noreturn nounwind }
attributes #20 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0, !195, !262, !270, !275, !283, !293, !299, !350, !512, !533, !623, !662, !709, !719, !729, !753, !764, !776, !790, !804, !818}
!llvm.module.flags = !{!833, !834}
!llvm.ident = !{!835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !835, !836, !836, !836, !836, !836, !836, !836, !836, !836}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !2, metadata !23, metadata !24, metadata !154, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/
!1 = metadata !{metadata !"cut.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
!2 = metadata !{metadata !3, metadata !8}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"operating_mode", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [operating_mode] [line 111, size 32, align 32, offset 0] [def] [fr
!4 = metadata !{metadata !5, metadata !6, metadata !7}
!5 = metadata !{i32 786472, metadata !"undefined_mode", i64 0} ; [ DW_TAG_enumerator ] [undefined_mode :: 0]
!6 = metadata !{i32 786472, metadata !"byte_mode", i64 1} ; [ DW_TAG_enumerator ] [byte_mode :: 1]
!7 = metadata !{i32 786472, metadata !"field_mode", i64 2} ; [ DW_TAG_enumerator ] [field_mode :: 2]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!9 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
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
!24 = metadata !{metadata !25, metadata !31, metadata !37, metadata !38, metadata !42, metadata !48, metadata !54, metadata !111, metadata !112, metadata !118, metadata !122, metadata !125, metadata !126, metadata !127, metadata !128, metadata !131, meta
!25 = metadata !{i32 786478, metadata !26, metadata !27, metadata !"klee_change", metadata !"klee_change", metadata !"", i32 18, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64)* @klee_change, null, null, metadata !2
!26 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
!27 = metadata !{i32 786473, metadata !26}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !30, metadata !30}
!30 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!31 = metadata !{i32 786478, metadata !32, metadata !33, metadata !"klee_get_true", metadata !"klee_get_true", metadata !"", i32 4, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_true, null, null, metadata !23, i3
!32 = metadata !{metadata !"/home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
!33 = metadata !{i32 786473, metadata !32}        ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!34 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!37 = metadata !{i32 786478, metadata !32, metadata !33, metadata !"klee_get_false", metadata !"klee_get_false", metadata !"", i32 5, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @klee_get_false, null, null, metadata !23,
!38 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"usage", metadata !"usage", metadata !"", i32 196, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @usage, null, null, metadata !23, i32 197} ; [ DW_TAG
!39 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!40 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !36}
!42 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"main", metadata !"main", metadata !"", i32 767, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @__main_old, null, null, metadata !23, i32 768} ; 
!43 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !36, metadata !36, metadata !45}
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!47 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!48 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"cut_file", metadata !"cut_file", metadata !"", i32 730, metadata !49, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*)* @cut_file, null, null, metadata !23, i32 731} ; [ 
!49 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786468, null, null, metadata !"_Bool", i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ] [_Bool] [line 0, size 8, align 8, offset 0, enc DW_ATE_boolean]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!54 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"cut_stream", metadata !"cut_stream", metadata !"", i32 718, metadata !55, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*)* @cut_stream, null, null, metad
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{null, metadata !57}
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!58 = metadata !{i32 786454, metadata !26, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!59 = metadata !{i32 786451, metadata !60, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !61, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!60 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !82, metadata !83, metadata !84, metadata !85,
!62 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!63 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!64 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!65 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!66 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!67 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!68 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!69 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!70 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!71 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!72 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!73 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!74 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !75} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!76 = metadata !{i32 786451, metadata !60, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from ]
!77 = metadata !{metadata !78, metadata !79, metadata !81}
!78 = metadata !{i32 786445, metadata !60, metadata !76, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!79 = metadata !{i32 786445, metadata !60, metadata !76, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!81 = metadata !{i32 786445, metadata !60, metadata !76, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!82 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !80} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!83 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!84 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!85 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !86} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!86 = metadata !{i32 786454, metadata !60, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!87 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!88 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !89} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!89 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!90 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !91} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!91 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!92 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !93} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !47, metadata !94, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!96 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !97} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!98 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !99} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!99 = metadata !{i32 786454, metadata !60, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!100 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!101 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!102 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!103 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!104 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !105} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!105 = metadata !{i32 786454, metadata !60, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!106 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!107 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !108} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!108 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !47, metadata !109, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!111 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"cut_fields", metadata !"cut_fields", metadata !"", i32 598, metadata !55, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*)* @cut_fields, null, null, meta
!112 = metadata !{i32 786478, metadata !113, metadata !114, metadata !"to_uchar", metadata !"to_uchar", metadata !"", i32 263, metadata !115, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @to_uchar, null, null, metadata !23, i32 263} 
!113 = metadata !{metadata !"./system.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
!114 = metadata !{i32 786473, metadata !113}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/./system.h]
!115 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = metadata !{metadata !117, metadata !47}
!117 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!118 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"print_kth", metadata !"print_kth", metadata !"", i32 313, metadata !119, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64, i8*)* @print_kth, null, null, metadata !23, i32
!119 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !51, metadata !105, metadata !121}
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _Bool]
!122 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"is_range_start_index", metadata !"is_range_start_index", metadata !"", i32 302, metadata !123, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64)* @is_range_start_index, n
!123 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!124 = metadata !{metadata !51, metadata !105}
!125 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"is_printable_field", metadata !"is_printable_field", metadata !"", i32 278, metadata !123, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64)* @is_printable_field, null, n
!126 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"cut_bytes", metadata !"cut_bytes", metadata !"", i32 550, metadata !55, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*)* @cut_bytes, null, null, metadat
!127 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"set_fields", metadata !"set_fields", metadata !"", i32 356, metadata !49, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*)* @set_fields, null, null, metadata !23, i32 35
!128 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"mark_printable_field", metadata !"mark_printable_field", metadata !"", i32 271, metadata !129, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64)* @mark_printable_field,
!129 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{null, metadata !105}
!131 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"mark_range_start", metadata !"mark_range_start", metadata !"", i32 258, metadata !129, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64)* @mark_range_start, null, null,
!132 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"compare_ranges", metadata !"compare_ranges", metadata !"", i32 329, metadata !133, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8*)* @compare_ranges, null, null, m
!133 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!134 = metadata !{metadata !36, metadata !135, metadata !135}
!135 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !136} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!136 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"hash_compare_ints", metadata !"hash_compare_ints", metadata !"", i32 296, metadata !138, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i8*, i8*)* @hash_compare_ints, null,
!138 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!139 = metadata !{metadata !51, metadata !135, metadata !135}
!140 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"hash_int", metadata !"hash_int", metadata !"", i32 285, metadata !141, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64)* @hash_int, null, null, metadata !23, i32 2
!141 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{metadata !105, metadata !135, metadata !105}
!143 = metadata !{i32 786478, metadata !1, metadata !39, metadata !"klee_compatible_error", metadata !"klee_compatible_error", metadata !"", i32 183, metadata !144, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32* (...)*, i8*, ...
!144 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!145 = metadata !{null, metadata !36, metadata !146, metadata !52}
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!147 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{metadata !149, metadata !150}
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!150 = metadata !{i32 786456}
!151 = metadata !{i32 786478, metadata !113, metadata !114, metadata !"emit_bug_reporting_address", metadata !"emit_bug_reporting_address", metadata !"", i32 588, metadata !152, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @emit_bug_
!152 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!153 = metadata !{null}
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !176, metadata !1
!155 = metadata !{i32 786484, i32 0, null, metadata !"after_divergence", metadata !"after_divergence", metadata !"", metadata !27, i32 14, metadata !36, i32 0, i32 1, i32* @after_divergence, null} ; [ DW_TAG_variable ] [after_divergence] [line 14] [def]
!156 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_file_env", metadata !"klee_div_file_env", metadata !"", metadata !27, i32 15, metadata !52, i32 0, i32 1, i8** @klee_div_file_env, null} ; [ DW_TAG_variable ] [klee_div_file_env] [line 15] [d
!157 = metadata !{i32 786484, i32 0, null, metadata !"klee_div_marker_file_env", metadata !"klee_div_marker_file_env", metadata !"", metadata !27, i32 16, metadata !52, i32 0, i32 1, i8** @klee_div_marker_file_env, null} ; [ DW_TAG_variable ] [klee_div_m
!158 = metadata !{i32 786484, i32 0, metadata !42, metadata !"dummy", metadata !"dummy", metadata !"", metadata !39, i32 883, metadata !159, i32 1, i32 1, [2 x i8]* @main.dummy, null} ; [ DW_TAG_variable ] [dummy] [line 883] [local] [def]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !47, metadata !160, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from char]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!162 = metadata !{i32 786484, i32 0, null, metadata !"program_name", metadata !"program_name", metadata !"", metadata !39, i32 123, metadata !46, i32 0, i32 1, i8** @program_name, null} ; [ DW_TAG_variable ] [program_name] [line 123] [def]
!163 = metadata !{i32 786484, i32 0, null, metadata !"operating_mode", metadata !"operating_mode", metadata !"", metadata !39, i32 125, metadata !3, i32 1, i32 1, i32* @operating_mode, null} ; [ DW_TAG_variable ] [operating_mode] [line 125] [local] [def]
!164 = metadata !{i32 786484, i32 0, null, metadata !"suppress_non_delimited", metadata !"suppress_non_delimited", metadata !"", metadata !39, i32 130, metadata !51, i32 1, i32 1, i8* @suppress_non_delimited, null} ; [ DW_TAG_variable ] [suppress_non_del
!165 = metadata !{i32 786484, i32 0, null, metadata !"complement", metadata !"complement", metadata !"", metadata !39, i32 134, metadata !51, i32 1, i32 1, i8* @complement, null} ; [ DW_TAG_variable ] [complement] [line 134] [local] [def]
!166 = metadata !{i32 786484, i32 0, null, metadata !"delim", metadata !"delim", metadata !"", metadata !39, i32 137, metadata !117, i32 1, i32 1, i8* @delim, null} ; [ DW_TAG_variable ] [delim] [line 137] [local] [def]
!167 = metadata !{i32 786484, i32 0, null, metadata !"output_delimiter_specified", metadata !"output_delimiter_specified", metadata !"", metadata !39, i32 140, metadata !51, i32 1, i32 1, i8* @output_delimiter_specified, null} ; [ DW_TAG_variable ] [outp
!168 = metadata !{i32 786484, i32 0, null, metadata !"output_delimiter_length", metadata !"output_delimiter_length", metadata !"", metadata !39, i32 143, metadata !105, i32 1, i32 1, i64* @output_delimiter_length, null} ; [ DW_TAG_variable ] [output_deli
!169 = metadata !{i32 786484, i32 0, null, metadata !"output_delimiter_string", metadata !"output_delimiter_string", metadata !"", metadata !39, i32 147, metadata !46, i32 1, i32 1, i8** @output_delimiter_string, null} ; [ DW_TAG_variable ] [output_delim
!170 = metadata !{i32 786484, i32 0, null, metadata !"have_read_stdin", metadata !"have_read_stdin", metadata !"", metadata !39, i32 150, metadata !51, i32 1, i32 1, i8* @have_read_stdin, null} ; [ DW_TAG_variable ] [have_read_stdin] [line 150] [local] [
!171 = metadata !{i32 786484, i32 0, null, metadata !"range_start_ht", metadata !"range_start_ht", metadata !"", metadata !39, i32 159, metadata !172, i32 1, i32 1, %struct.hash_table** @range_start_ht, null} ; [ DW_TAG_variable ] [range_start_ht] [line 
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Hash_table]
!173 = metadata !{i32 786454, metadata !1, null, metadata !"Hash_table", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ] [Hash_table] [line 57, size 0, align 0, offset 0] [from hash_table]
!174 = metadata !{i32 786451, metadata !175, null, metadata !"hash_table", i32 55, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_table] [line 55, size 0, align 0, offset 0] [decl] [from ]
!175 = metadata !{metadata !"../lib/hash.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
!176 = metadata !{i32 786484, i32 0, null, metadata !"field_1_bufsize", metadata !"field_1_bufsize", metadata !"", metadata !39, i32 89, metadata !105, i32 1, i32 1, i64* @field_1_bufsize, null} ; [ DW_TAG_variable ] [field_1_bufsize] [line 89] [local] [
!177 = metadata !{i32 786484, i32 0, null, metadata !"field_1_buffer", metadata !"field_1_buffer", metadata !"", metadata !39, i32 86, metadata !46, i32 1, i32 1, i8** @field_1_buffer, null} ; [ DW_TAG_variable ] [field_1_buffer] [line 86] [local] [def]
!178 = metadata !{i32 786484, i32 0, null, metadata !"printable_field", metadata !"printable_field", metadata !"", metadata !39, i32 109, metadata !179, i32 1, i32 1, i8** @printable_field, null} ; [ DW_TAG_variable ] [printable_field] [line 109] [local]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!180 = metadata !{i32 786484, i32 0, null, metadata !"max_range_endpoint", metadata !"max_range_endpoint", metadata !"", metadata !39, i32 95, metadata !105, i32 1, i32 1, i64* @max_range_endpoint, null} ; [ DW_TAG_variable ] [max_range_endpoint] [line 9
!181 = metadata !{i32 786484, i32 0, null, metadata !"eol_range_start", metadata !"eol_range_start", metadata !"", metadata !39, i32 99, metadata !105, i32 1, i32 1, i64* @eol_range_start, null} ; [ DW_TAG_variable ] [eol_range_start] [line 99] [local] [
!182 = metadata !{i32 786484, i32 0, metadata !127, metadata !"num_start", metadata !"num_start", metadata !"", metadata !39, i32 471, metadata !52, i32 1, i32 1, i8** @set_fields.num_start, null} ; [ DW_TAG_variable ] [num_start] [line 471] [local] [def
!183 = metadata !{i32 786484, i32 0, null, metadata !"longopts", metadata !"longopts", metadata !"", metadata !39, i32 169, metadata !184, i32 1, i32 1, <{ { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x i8] }, { i8*, i32, i32*, i32, [4 x 
!184 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !185, metadata !193, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from ]
!185 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !186} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from option]
!186 = metadata !{i32 786451, metadata !187, null, metadata !"option", i32 104, i64 256, i64 64, i32 0, i32 0, null, metadata !188, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [option] [line 104, size 256, align 64, offset 0] [def] [from ]
!187 = metadata !{metadata !"/usr/include/getopt.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src"}
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192}
!189 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"name", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [name] [line 106, size 64, align 64, offset 0] [from ]
!190 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"has_arg", i32 109, i64 32, i64 32, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [has_arg] [line 109, size 32, align 32, offset 64] [from int]
!191 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"flag", i32 110, i64 64, i64 64, i64 128, i32 0, metadata !149} ; [ DW_TAG_member ] [flag] [line 110, size 64, align 64, offset 128] [from ]
!192 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"val", i32 111, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [val] [line 111, size 32, align 32, offset 192] [from int]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!195 = metadata !{i32 786449, metadata !196, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !197, metadata !23, metadata !201, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_uni
!196 = metadata !{metadata !"version-etc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!197 = metadata !{metadata !198}
!198 = metadata !{i32 786436, metadata !196, null, metadata !"", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !199, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 36, size 32, align 32, offset 0] [def] [from ]
!199 = metadata !{metadata !200}
!200 = metadata !{i32 786472, metadata !"COPYRIGHT_YEAR", i64 2007} ; [ DW_TAG_enumerator ] [COPYRIGHT_YEAR :: 2007]
!201 = metadata !{metadata !202, metadata !259}
!202 = metadata !{i32 786478, metadata !196, metadata !203, metadata !"version_etc_va", metadata !"version_etc_va", metadata !"", i32 41, metadata !204, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, %st
!203 = metadata !{i32 786473, metadata !196}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/version-etc.c]
!204 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !205, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!205 = metadata !{null, metadata !206, metadata !52, metadata !52, metadata !52, metadata !250}
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!207 = metadata !{i32 786454, metadata !196, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!208 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !210, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!209 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !231, metadata !232, metadata !2
!211 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!212 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!213 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!214 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!215 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!216 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!217 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!218 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!219 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!220 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!221 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!222 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!223 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !224} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!225 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !226, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from
!226 = metadata !{metadata !227, metadata !228, metadata !230}
!227 = metadata !{i32 786445, metadata !209, metadata !225, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!228 = metadata !{i32 786445, metadata !209, metadata !225, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !229} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !208} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!230 = metadata !{i32 786445, metadata !209, metadata !225, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!231 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !229} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!232 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!233 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!234 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !235} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!235 = metadata !{i32 786454, metadata !209, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!236 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !89} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!237 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !91} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!238 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !93} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!239 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !97} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!240 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !241} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!241 = metadata !{i32 786454, metadata !209, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!242 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!243 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!244 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!245 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!246 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !247} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!247 = metadata !{i32 786454, metadata !209, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!248 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!249 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !108} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!250 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from __va_list_tag]
!251 = metadata !{i32 786454, metadata !196, null, metadata !"__va_list_tag", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !252} ; [ DW_TAG_typedef ] [__va_list_tag] [line 44, size 0, align 0, offset 0] [from __va_list_tag]
!252 = metadata !{i32 786451, metadata !196, null, metadata !"__va_list_tag", i32 44, i64 192, i64 64, i32 0, i32 0, null, metadata !253, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 44, size 192, align 64, offset 0] [def] [
!253 = metadata !{metadata !254, metadata !256, metadata !257, metadata !258}
!254 = metadata !{i32 786445, metadata !196, metadata !252, metadata !"gp_offset", i32 44, i64 32, i64 32, i64 0, i32 0, metadata !255} ; [ DW_TAG_member ] [gp_offset] [line 44, size 32, align 32, offset 0] [from unsigned int]
!255 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!256 = metadata !{i32 786445, metadata !196, metadata !252, metadata !"fp_offset", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !255} ; [ DW_TAG_member ] [fp_offset] [line 44, size 32, align 32, offset 32] [from unsigned int]
!257 = metadata !{i32 786445, metadata !196, metadata !252, metadata !"overflow_arg_area", i32 44, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [overflow_arg_area] [line 44, size 64, align 64, offset 64] [from ]
!258 = metadata !{i32 786445, metadata !196, metadata !252, metadata !"reg_save_area", i32 44, i64 64, i64 64, i64 128, i32 0, metadata !97} ; [ DW_TAG_member ] [reg_save_area] [line 44, size 64, align 64, offset 128] [from ]
!259 = metadata !{i32 786478, metadata !196, metadata !203, metadata !"version_etc", metadata !"version_etc", metadata !"", i32 165, metadata !260, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct._IO_FILE*, i8*, i8*, i8*, ...)* @v
!260 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!261 = metadata !{null, metadata !206, metadata !52, metadata !52, metadata !52}
!262 = metadata !{i32 786449, metadata !263, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !23, metadata !264, metadata !23, metadata !""} ; [ DW_TAG_compile_unit
!263 = metadata !{metadata !"version-etc-fsf.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!264 = metadata !{metadata !265}
!265 = metadata !{i32 786484, i32 0, null, metadata !"version_etc_copyright", metadata !"version_etc_copyright", metadata !"", metadata !266, i32 27, metadata !267, i32 0, i32 1, [47 x i8]* @version_etc_copyright, null} ; [ DW_TAG_variable ] [version_etc
!266 = metadata !{i32 786473, metadata !263}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/version-etc-fsf.c]
!267 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 376, i64 8, i32 0, i32 0, metadata !53, metadata !268, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 376, align 8, offset 0] [from ]
!268 = metadata !{metadata !269}
!269 = metadata !{i32 786465, i64 0, i64 47}      ; [ DW_TAG_subrange_type ] [0, 46]
!270 = metadata !{i32 786449, metadata !271, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !272, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit
!271 = metadata !{metadata !"xalloc-die.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!272 = metadata !{metadata !273}
!273 = metadata !{i32 786478, metadata !271, metadata !274, metadata !"xalloc_die", metadata !"xalloc_die", metadata !"", i32 33, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @xalloc_die, null, null, metadata !23, i32
!274 = metadata !{i32 786473, metadata !271}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xalloc-die.c]
!275 = metadata !{i32 786449, metadata !276, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !277, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit
!276 = metadata !{metadata !"xstrndup.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!277 = metadata !{metadata !278}
!278 = metadata !{i32 786478, metadata !276, metadata !279, metadata !"xstrndup", metadata !"xstrndup", metadata !"", i32 31, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xstrndup, null, null, metadata !23, i3
!279 = metadata !{i32 786473, metadata !276}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xstrndup.c]
!280 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{metadata !46, metadata !52, metadata !282}
!282 = metadata !{i32 786454, metadata !276, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!283 = metadata !{i32 786449, metadata !284, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !285, metadata !291, metadata !23, metadata !""} ; [ DW_TAG_compile_uni
!284 = metadata !{metadata !"closeout.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!285 = metadata !{metadata !286, metadata !290}
!286 = metadata !{i32 786478, metadata !284, metadata !287, metadata !"close_stdout_set_file_name", metadata !"close_stdout_set_file_name", metadata !"", i32 41, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @close_
!287 = metadata !{i32 786473, metadata !284}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/closeout.c]
!288 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!289 = metadata !{null, metadata !52}
!290 = metadata !{i32 786478, metadata !284, metadata !287, metadata !"close_stdout", metadata !"close_stdout", metadata !"", i32 70, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @close_stdout, null, null, metadata !2
!291 = metadata !{metadata !292}
!292 = metadata !{i32 786484, i32 0, null, metadata !"file_name", metadata !"file_name", metadata !"", metadata !287, i32 36, metadata !52, i32 1, i32 1, i8** @file_name, null} ; [ DW_TAG_variable ] [file_name] [line 36] [local] [def]
!293 = metadata !{i32 786449, metadata !294, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !23, metadata !295, metadata !23, metadata !""} ; [ DW_TAG_compile_unit
!294 = metadata !{metadata !"exitfail.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!295 = metadata !{metadata !296}
!296 = metadata !{i32 786484, i32 0, null, metadata !"exit_failure", metadata !"exit_failure", metadata !"", metadata !297, i32 26, metadata !298, i32 0, i32 1, i32* @exit_failure, null} ; [ DW_TAG_variable ] [exit_failure] [line 26] [def]
!297 = metadata !{i32 786473, metadata !294}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/exitfail.c]
!298 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from int]
!299 = metadata !{i32 786449, metadata !300, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !301, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit
!300 = metadata !{metadata !"getndelim2.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!301 = metadata !{metadata !302}
!302 = metadata !{i32 786478, metadata !300, metadata !303, metadata !"getndelim2", metadata !"getndelim2", metadata !"", i32 51, metadata !304, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8**, i64*, i64, i64, i32, i32, %struct._IO_FI
!303 = metadata !{i32 786473, metadata !300}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!304 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !305, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!305 = metadata !{metadata !306, metadata !45, metadata !308, metadata !309, metadata !309, metadata !36, metadata !36, metadata !310}
!306 = metadata !{i32 786454, metadata !300, null, metadata !"ssize_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_typedef ] [ssize_t] [line 102, size 0, align 0, offset 0] [from __ssize_t]
!307 = metadata !{i32 786454, metadata !300, null, metadata !"__ssize_t", i32 172, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [__ssize_t] [line 172, size 0, align 0, offset 0] [from long int]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from size_t]
!309 = metadata !{i32 786454, metadata !300, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!310 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !311} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!311 = metadata !{i32 786454, metadata !300, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !312} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!312 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !313, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!313 = metadata !{metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !334, metadata !335, metadata !3
!314 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!315 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!316 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!317 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!318 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!319 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!320 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!321 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!322 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!323 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!324 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!325 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!326 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !327} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !328} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!328 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !329, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from
!329 = metadata !{metadata !330, metadata !331, metadata !333}
!330 = metadata !{i32 786445, metadata !209, metadata !328, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!331 = metadata !{i32 786445, metadata !209, metadata !328, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !332} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!332 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !312} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!333 = metadata !{i32 786445, metadata !209, metadata !328, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!334 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !332} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!335 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!336 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!337 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !235} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!338 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !89} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!339 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !91} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!340 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !93} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!341 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !97} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!342 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !241} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!343 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!344 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!345 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!346 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!347 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !309} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!348 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!349 = metadata !{i32 786445, metadata !209, metadata !312, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !108} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!350 = metadata !{i32 786449, metadata !351, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !352, metadata !510, metadata !23, metadata !""} ; [ DW_TAG_compile_uni
!351 = metadata !{metadata !"hash.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!352 = metadata !{metadata !353, metadata !402, metadata !403, metadata !404, metadata !405, metadata !408, metadata !451, metadata !454, metadata !457, metadata !458, metadata !462, metadata !469, metadata !472, metadata !476, metadata !480, metadata !4
!353 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_get_n_buckets", metadata !"hash_get_n_buckets", metadata !"", i32 148, metadata !355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*)* @hash_g
!354 = metadata !{i32 786473, metadata !351}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{metadata !357, metadata !358}
!357 = metadata !{i32 786454, metadata !351, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!359 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !360} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Hash_table]
!360 = metadata !{i32 786454, metadata !351, null, metadata !"Hash_table", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !361} ; [ DW_TAG_typedef ] [Hash_table] [line 57, size 0, align 0, offset 0] [from hash_table]
!361 = metadata !{i32 786451, metadata !351, null, metadata !"hash_table", i32 50, i64 640, i64 64, i32 0, i32 0, null, metadata !362, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_table] [line 50, size 640, align 64, offset 0] [def] [from ]
!362 = metadata !{metadata !363, metadata !370, metadata !373, metadata !374, metadata !375, metadata !376, metadata !388, metadata !393, metadata !396, metadata !401}
!363 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"bucket", i32 55, i64 64, i64 64, i64 0, i32 0, metadata !364} ; [ DW_TAG_member ] [bucket] [line 55, size 64, align 64, offset 0] [from ]
!364 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !365} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from hash_entry]
!365 = metadata !{i32 786451, metadata !366, null, metadata !"hash_entry", i32 35, i64 128, i64 64, i32 0, i32 0, null, metadata !367, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_entry] [line 35, size 128, align 64, offset 0] [def] [from ]
!366 = metadata !{metadata !"./hash.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!367 = metadata !{metadata !368, metadata !369}
!368 = metadata !{i32 786445, metadata !366, metadata !365, metadata !"data", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [data] [line 37, size 64, align 64, offset 0] [from ]
!369 = metadata !{i32 786445, metadata !366, metadata !365, metadata !"next", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !364} ; [ DW_TAG_member ] [next] [line 38, size 64, align 64, offset 64] [from ]
!370 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"bucket_limit", i32 56, i64 64, i64 64, i64 64, i32 0, metadata !371} ; [ DW_TAG_member ] [bucket_limit] [line 56, size 64, align 64, offset 64] [from ]
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!372 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !365} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from hash_entry]
!373 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"n_buckets", i32 57, i64 64, i64 64, i64 128, i32 0, metadata !357} ; [ DW_TAG_member ] [n_buckets] [line 57, size 64, align 64, offset 128] [from size_t]
!374 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"n_buckets_used", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !357} ; [ DW_TAG_member ] [n_buckets_used] [line 58, size 64, align 64, offset 192] [from size_t]
!375 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"n_entries", i32 59, i64 64, i64 64, i64 256, i32 0, metadata !357} ; [ DW_TAG_member ] [n_entries] [line 59, size 64, align 64, offset 256] [from size_t]
!376 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"tuning", i32 62, i64 64, i64 64, i64 320, i32 0, metadata !377} ; [ DW_TAG_member ] [tuning] [line 62, size 64, align 64, offset 320] [from ]
!377 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !378} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!378 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !379} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Hash_tuning]
!379 = metadata !{i32 786454, metadata !351, null, metadata !"Hash_tuning", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !380} ; [ DW_TAG_typedef ] [Hash_tuning] [line 53, size 0, align 0, offset 0] [from hash_tuning]
!380 = metadata !{i32 786451, metadata !366, null, metadata !"hash_tuning", i32 41, i64 160, i64 32, i32 0, i32 0, null, metadata !381, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [hash_tuning] [line 41, size 160, align 32, offset 0] [def] [from
!381 = metadata !{metadata !382, metadata !384, metadata !385, metadata !386, metadata !387}
!382 = metadata !{i32 786445, metadata !366, metadata !380, metadata !"shrink_threshold", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !383} ; [ DW_TAG_member ] [shrink_threshold] [line 46, size 32, align 32, offset 0] [from float]
!383 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!384 = metadata !{i32 786445, metadata !366, metadata !380, metadata !"shrink_factor", i32 47, i64 32, i64 32, i64 32, i32 0, metadata !383} ; [ DW_TAG_member ] [shrink_factor] [line 47, size 32, align 32, offset 32] [from float]
!385 = metadata !{i32 786445, metadata !366, metadata !380, metadata !"growth_threshold", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !383} ; [ DW_TAG_member ] [growth_threshold] [line 48, size 32, align 32, offset 64] [from float]
!386 = metadata !{i32 786445, metadata !366, metadata !380, metadata !"growth_factor", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !383} ; [ DW_TAG_member ] [growth_factor] [line 49, size 32, align 32, offset 96] [from float]
!387 = metadata !{i32 786445, metadata !366, metadata !380, metadata !"is_n_buckets", i32 50, i64 8, i64 8, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [is_n_buckets] [line 50, size 8, align 8, offset 128] [from _Bool]
!388 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"hasher", i32 69, i64 64, i64 64, i64 384, i32 0, metadata !389} ; [ DW_TAG_member ] [hasher] [line 69, size 64, align 64, offset 384] [from Hash_hasher]
!389 = metadata !{i32 786454, metadata !351, null, metadata !"Hash_hasher", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !390} ; [ DW_TAG_typedef ] [Hash_hasher] [line 30, size 0, align 0, offset 0] [from ]
!390 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !391} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!391 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!392 = metadata !{metadata !357, metadata !135, metadata !357}
!393 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"comparator", i32 70, i64 64, i64 64, i64 448, i32 0, metadata !394} ; [ DW_TAG_member ] [comparator] [line 70, size 64, align 64, offset 448] [from Hash_comparator]
!394 = metadata !{i32 786454, metadata !351, null, metadata !"Hash_comparator", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !395} ; [ DW_TAG_typedef ] [Hash_comparator] [line 31, size 0, align 0, offset 0] [from ]
!395 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!396 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"data_freer", i32 71, i64 64, i64 64, i64 512, i32 0, metadata !397} ; [ DW_TAG_member ] [data_freer] [line 71, size 64, align 64, offset 512] [from Hash_data_freer]
!397 = metadata !{i32 786454, metadata !351, null, metadata !"Hash_data_freer", i32 32, i64 0, i64 0, i64 0, i32 0, metadata !398} ; [ DW_TAG_typedef ] [Hash_data_freer] [line 32, size 0, align 0, offset 0] [from ]
!398 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !399} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!399 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!400 = metadata !{null, metadata !97}
!401 = metadata !{i32 786445, metadata !351, metadata !361, metadata !"free_entry_list", i32 74, i64 64, i64 64, i64 576, i32 0, metadata !364} ; [ DW_TAG_member ] [free_entry_list] [line 74, size 64, align 64, offset 576] [from ]
!402 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_get_n_buckets_used", metadata !"hash_get_n_buckets_used", metadata !"", i32 156, metadata !355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*
!403 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_get_n_entries", metadata !"hash_get_n_entries", metadata !"", i32 164, metadata !355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*)* @hash_g
!404 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_get_max_bucket_length", metadata !"hash_get_max_bucket_length", metadata !"", i32 172, metadata !355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_
!405 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_table_ok", metadata !"hash_table_ok", metadata !"", i32 199, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.hash_table*)* @hash_table_ok, nu
!406 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!407 = metadata !{metadata !51, metadata !358}
!408 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_print_statistics", metadata !"hash_print_statistics", metadata !"", i32 228, metadata !409, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*, %
!409 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!410 = metadata !{null, metadata !358, metadata !411}
!411 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !412} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!412 = metadata !{i32 786454, metadata !351, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !413} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!413 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !414, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!414 = metadata !{metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !435, metadata !436, metadata !4
!415 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!416 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!417 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!418 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!419 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!420 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!421 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!422 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!423 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!424 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!425 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!426 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!427 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !428} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!428 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !429} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!429 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !430, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from
!430 = metadata !{metadata !431, metadata !432, metadata !434}
!431 = metadata !{i32 786445, metadata !209, metadata !429, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !428} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!432 = metadata !{i32 786445, metadata !209, metadata !429, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !433} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!433 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !413} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!434 = metadata !{i32 786445, metadata !209, metadata !429, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!435 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !433} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!436 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!437 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!438 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !235} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!439 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !89} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!440 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !91} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!441 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !93} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!442 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !97} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!443 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !241} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!444 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!445 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!446 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!447 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!448 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !357} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!449 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!450 = metadata !{i32 786445, metadata !209, metadata !413, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !108} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!451 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_lookup", metadata !"hash_lookup", metadata !"", i32 248, metadata !452, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_lookup, nu
!452 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!453 = metadata !{metadata !97, metadata !358, metadata !135}
!454 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_get_first", metadata !"hash_get_first", metadata !"", i32 277, metadata !455, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*)* @hash_get_first
!455 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !456, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!456 = metadata !{metadata !97, metadata !358}
!457 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_get_next", metadata !"hash_get_next", metadata !"", i32 296, metadata !452, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_get_ne
!458 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_get_entries", metadata !"hash_get_entries", metadata !"", i32 324, metadata !459, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*, i8**, i64)* 
!459 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !460, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!460 = metadata !{metadata !357, metadata !358, metadata !461, metadata !357}
!461 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!462 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_do_for_each", metadata !"hash_do_for_each", metadata !"", i32 356, metadata !463, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.hash_table*, i1 (i8*, i8*
!463 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!464 = metadata !{metadata !357, metadata !358, metadata !465, metadata !97}
!465 = metadata !{i32 786454, metadata !351, null, metadata !"Hash_processor", i32 33, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [Hash_processor] [line 33, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !467} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!467 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!468 = metadata !{metadata !51, metadata !97, metadata !97}
!469 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_string", metadata !"hash_string", metadata !"", i32 419, metadata !470, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64)* @hash_string, null, null, metada
!470 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!471 = metadata !{metadata !357, metadata !52, metadata !357}
!472 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_reset_tuning", metadata !"hash_reset_tuning", metadata !"", i32 470, metadata !473, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_tuning*)* @hash_r
!473 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!474 = metadata !{null, metadata !475}
!475 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !379} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Hash_tuning]
!476 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_initialize", metadata !"hash_initialize", metadata !"", i32 538, metadata !477, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.hash_table* (i64, %struct.hash_t
!477 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!478 = metadata !{metadata !479, metadata !357, metadata !377, metadata !389, metadata !394, metadata !397}
!479 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !360} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Hash_table]
!480 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_clear", metadata !"hash_clear", metadata !"", i32 603, metadata !481, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*)* @hash_clear, null, nul
!481 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!482 = metadata !{null, metadata !479}
!483 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_free", metadata !"hash_free", metadata !"", i32 646, metadata !481, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*)* @hash_free, null, null, 
!484 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_rehash", metadata !"hash_rehash", metadata !"", i32 817, metadata !485, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.hash_table*, i64)* @hash_rehash, nul
!485 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!486 = metadata !{metadata !51, metadata !479, metadata !357}
!487 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_insert", metadata !"hash_insert", metadata !"", i32 906, metadata !488, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_insert, nu
!488 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!489 = metadata !{metadata !97, metadata !479, metadata !135}
!490 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_delete", metadata !"hash_delete", metadata !"", i32 981, metadata !488, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*)* @hash_delete, nu
!491 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"hash_find_entry", metadata !"hash_find_entry", metadata !"", i32 742, metadata !492, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.hash_table*, i8*, %struct.ha
!492 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !493, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!493 = metadata !{metadata !97, metadata !479, metadata !135, metadata !494, metadata !51}
!494 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !364} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!495 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"free_entry", metadata !"free_entry", metadata !"", i32 728, metadata !496, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.hash_table*, %struct.hash_entry*)* @f
!496 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !497, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!497 = metadata !{null, metadata !479, metadata !364}
!498 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"allocate_entry", metadata !"allocate_entry", metadata !"", i32 703, metadata !499, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.hash_entry* (%struct.hash_table*)* 
!499 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !500, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!500 = metadata !{metadata !364, metadata !479}
!501 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"next_prime", metadata !"next_prime", metadata !"", i32 454, metadata !502, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @next_prime, null, null, metadata !23, i
!502 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!503 = metadata !{metadata !357, metadata !357}
!504 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"is_prime", metadata !"is_prime", metadata !"", i32 435, metadata !505, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (i64)* @is_prime, null, null, metadata !23, i32 436}
!505 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!506 = metadata !{metadata !51, metadata !357}
!507 = metadata !{i32 786478, metadata !351, metadata !354, metadata !"check_tuning", metadata !"check_tuning", metadata !"", i32 482, metadata !508, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 (%struct.hash_table*)* @check_tuning, null, 
!508 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !509, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!509 = metadata !{metadata !51, metadata !479}
!510 = metadata !{metadata !511}
!511 = metadata !{i32 786484, i32 0, null, metadata !"default_tuning", metadata !"default_tuning", metadata !"", metadata !354, i32 128, metadata !378, i32 1, i32 1, { float, float, float, float, i8, [3 x i8] }* @default_tuning, null} ; [ DW_TAG_variable
!512 = metadata !{i32 786449, metadata !513, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !514, metadata !23, metadata !525, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_uni
!513 = metadata !{metadata !"quote.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!514 = metadata !{metadata !515}
!515 = metadata !{i32 786436, metadata !516, null, metadata !"quoting_style", i32 28, i64 32, i64 32, i32 0, i32 0, null, metadata !517, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [quoting_style] [line 28, size 32, align 32, offset 0] [def] [
!516 = metadata !{metadata !"./quotearg.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!517 = metadata !{metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524}
!518 = metadata !{i32 786472, metadata !"literal_quoting_style", i64 0} ; [ DW_TAG_enumerator ] [literal_quoting_style :: 0]
!519 = metadata !{i32 786472, metadata !"shell_quoting_style", i64 1} ; [ DW_TAG_enumerator ] [shell_quoting_style :: 1]
!520 = metadata !{i32 786472, metadata !"shell_always_quoting_style", i64 2} ; [ DW_TAG_enumerator ] [shell_always_quoting_style :: 2]
!521 = metadata !{i32 786472, metadata !"c_quoting_style", i64 3} ; [ DW_TAG_enumerator ] [c_quoting_style :: 3]
!522 = metadata !{i32 786472, metadata !"escape_quoting_style", i64 4} ; [ DW_TAG_enumerator ] [escape_quoting_style :: 4]
!523 = metadata !{i32 786472, metadata !"locale_quoting_style", i64 5} ; [ DW_TAG_enumerator ] [locale_quoting_style :: 5]
!524 = metadata !{i32 786472, metadata !"clocale_quoting_style", i64 6} ; [ DW_TAG_enumerator ] [clocale_quoting_style :: 6]
!525 = metadata !{metadata !526, metadata !530}
!526 = metadata !{i32 786478, metadata !513, metadata !527, metadata !"quote_n", metadata !"quote_n", metadata !"", i32 30, metadata !528, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quote_n, null, null, metadata !23, i32 3
!527 = metadata !{i32 786473, metadata !513}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quote.c]
!528 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!529 = metadata !{metadata !52, metadata !36, metadata !52}
!530 = metadata !{i32 786478, metadata !513, metadata !527, metadata !"quote", metadata !"quote", metadata !"", i32 38, metadata !531, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quote, null, null, metadata !23, i32 39} ; [ DW_T
!531 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!532 = metadata !{metadata !52, metadata !52}
!533 = metadata !{i32 786449, metadata !534, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !535, metadata !23, metadata !538, metadata !601, metadata !23, metadata !""} ; [ DW_TAG_compile_un
!534 = metadata !{metadata !"quotearg.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!535 = metadata !{metadata !515, metadata !536}
!536 = metadata !{i32 786436, metadata !537, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!537 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!538 = metadata !{metadata !539, metadata !551, metadata !554, metadata !557, metadata !560, metadata !566, metadata !569, metadata !570, metadata !573, metadata !576, metadata !579, metadata !582, metadata !585, metadata !588, metadata !589, metadata !5
!539 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"clone_quoting_options", metadata !"clone_quoting_options", metadata !"", i32 106, metadata !541, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.quoting_options* (%s
!540 = metadata !{i32 786473, metadata !534}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!541 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!542 = metadata !{metadata !543, metadata !543}
!543 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !544} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from quoting_options]
!544 = metadata !{i32 786451, metadata !534, null, metadata !"quoting_options", i32 64, i64 288, i64 32, i32 0, i32 0, null, metadata !545, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [quoting_options] [line 64, size 288, align 32, offset 0] [de
!545 = metadata !{metadata !546, metadata !547}
!546 = metadata !{i32 786445, metadata !534, metadata !544, metadata !"style", i32 67, i64 32, i64 32, i64 0, i32 0, metadata !515} ; [ DW_TAG_member ] [style] [line 67, size 32, align 32, offset 0] [from quoting_style]
!547 = metadata !{i32 786445, metadata !534, metadata !544, metadata !"quote_these_too", i32 71, i64 256, i64 32, i64 32, i32 0, metadata !548} ; [ DW_TAG_member ] [quote_these_too] [line 71, size 256, align 32, offset 32] [from ]
!548 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !255, metadata !549, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!549 = metadata !{metadata !550}
!550 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!551 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"get_quoting_style", metadata !"get_quoting_style", metadata !"", i32 117, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*)* @get
!552 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!553 = metadata !{metadata !515, metadata !543}
!554 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"set_quoting_style", metadata !"set_quoting_style", metadata !"", i32 125, metadata !555, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoting_options*, i32)
!555 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!556 = metadata !{null, metadata !543, metadata !515}
!557 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"set_char_quoting", metadata !"set_char_quoting", metadata !"", i32 136, metadata !558, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.quoting_options*, i8, i32
!558 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!559 = metadata !{metadata !36, metadata !543, metadata !47, metadata !36}
!560 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_buffer", metadata !"quotearg_buffer", metadata !"", i32 521, metadata !561, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64, %struct.quoting
!561 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !562, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!562 = metadata !{metadata !563, metadata !46, metadata !563, metadata !52, metadata !563, metadata !564}
!563 = metadata !{i32 786454, metadata !534, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!564 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !565} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!565 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !544} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_options]
!566 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_alloc", metadata !"quotearg_alloc", metadata !"", i32 536, metadata !567, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, %struct.quoting_options*)* 
!567 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !568, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!568 = metadata !{metadata !46, metadata !52, metadata !563, metadata !564}
!569 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_free", metadata !"quotearg_free", metadata !"", i32 562, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @quotearg_free, null, null, metadat
!570 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_n", metadata !"quotearg_n", metadata !"", i32 642, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_n, null, null, metadata 
!571 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!572 = metadata !{metadata !46, metadata !36, metadata !52}
!573 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg", metadata !"quotearg", metadata !"", i32 648, metadata !574, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg, null, null, metadata !23, i32 64
!574 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !575, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!575 = metadata !{metadata !46, metadata !52}
!576 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_n_style", metadata !"quotearg_n_style", metadata !"", i32 664, metadata !577, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*)* @quotearg_n_style
!577 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !578, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!578 = metadata !{metadata !46, metadata !36, metadata !515, metadata !52}
!579 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_n_style_mem", metadata !"quotearg_n_style_mem", metadata !"", i32 671, metadata !580, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i32, i8*, i64)* @quo
!580 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !581, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!581 = metadata !{metadata !46, metadata !36, metadata !515, metadata !52, metadata !563}
!582 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_style", metadata !"quotearg_style", metadata !"", i32 679, metadata !583, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @quotearg_style, null, nul
!583 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !584, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!584 = metadata !{metadata !46, metadata !515, metadata !52}
!585 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_char", metadata !"quotearg_char", metadata !"", i32 685, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8)* @quotearg_char, null, null, m
!586 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !587, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!587 = metadata !{metadata !46, metadata !52, metadata !47}
!588 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_colon", metadata !"quotearg_colon", metadata !"", i32 694, metadata !574, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @quotearg_colon, null, null, me
!589 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quoting_options_from_style", metadata !"quoting_options_from_style", metadata !"", i32 655, metadata !590, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.quoti
!590 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !591, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!591 = metadata !{metadata !544, metadata !515}
!592 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_n_options", metadata !"quotearg_n_options", metadata !"", i32 591, metadata !593, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*, i64, %struct.quoting
!593 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !594, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!594 = metadata !{metadata !46, metadata !36, metadata !52, metadata !563, metadata !564}
!595 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"quotearg_buffer_restyled", metadata !"quotearg_buffer_restyled", metadata !"", i32 172, metadata !596, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i8*, i64, i8*, i64
!596 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !597, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!597 = metadata !{metadata !563, metadata !46, metadata !563, metadata !52, metadata !563, metadata !515, metadata !564}
!598 = metadata !{i32 786478, metadata !534, metadata !540, metadata !"gettext_quote", metadata !"gettext_quote", metadata !"", i32 150, metadata !599, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32)* @gettext_quote, null, null, m
!599 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !600, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!600 = metadata !{metadata !52, metadata !52, metadata !515}
!601 = metadata !{metadata !602, metadata !605, metadata !610, metadata !611, metadata !615, metadata !620, metadata !621}
!602 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_args", metadata !"quoting_style_args", metadata !"", metadata !540, i32 75, metadata !603, i32 0, i32 1, [8 x i8*]* @quoting_style_args, null} ; [ DW_TAG_variable ] [quoting_style_args] 
!603 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !604, metadata !549, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from ]
!604 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!605 = metadata !{i32 786484, i32 0, null, metadata !"quoting_style_vals", metadata !"quoting_style_vals", metadata !"", metadata !540, i32 88, metadata !606, i32 0, i32 1, [7 x i32]* @quoting_style_vals, null} ; [ DW_TAG_variable ] [quoting_style_vals] 
!606 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !607, metadata !608, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from ]
!607 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !515} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from quoting_style]
!608 = metadata !{metadata !609}
!609 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!610 = metadata !{i32 786484, i32 0, null, metadata !"default_quoting_options", metadata !"default_quoting_options", metadata !"", metadata !540, i32 100, metadata !544, i32 1, i32 1, %struct.quoting_options* @default_quoting_options, null} ; [ DW_TAG_va
!611 = metadata !{i32 786484, i32 0, null, metadata !"slot0", metadata !"slot0", metadata !"", metadata !540, i32 556, metadata !612, i32 1, i32 1, [256 x i8]* @slot0, null} ; [ DW_TAG_variable ] [slot0] [line 556] [local] [def]
!612 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !47, metadata !613, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!613 = metadata !{metadata !614}
!614 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!615 = metadata !{i32 786484, i32 0, null, metadata !"slotvec0", metadata !"slotvec0", metadata !"", metadata !540, i32 558, metadata !616, i32 1, i32 1, %struct.slotvec* @slotvec0, null} ; [ DW_TAG_variable ] [slotvec0] [line 558] [local] [def]
!616 = metadata !{i32 786451, metadata !534, null, metadata !"slotvec", i32 548, i64 128, i64 64, i32 0, i32 0, null, metadata !617, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [slotvec] [line 548, size 128, align 64, offset 0] [def] [from ]
!617 = metadata !{metadata !618, metadata !619}
!618 = metadata !{i32 786445, metadata !534, metadata !616, metadata !"size", i32 550, i64 64, i64 64, i64 0, i32 0, metadata !563} ; [ DW_TAG_member ] [size] [line 550, size 64, align 64, offset 0] [from size_t]
!619 = metadata !{i32 786445, metadata !534, metadata !616, metadata !"val", i32 551, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [val] [line 551, size 64, align 64, offset 64] [from ]
!620 = metadata !{i32 786484, i32 0, null, metadata !"nslots", metadata !"nslots", metadata !"", metadata !540, i32 557, metadata !255, i32 1, i32 1, i32* @nslots, null} ; [ DW_TAG_variable ] [nslots] [line 557] [local] [def]
!621 = metadata !{i32 786484, i32 0, null, metadata !"slotvec", metadata !"slotvec", metadata !"", metadata !540, i32 559, metadata !622, i32 1, i32 1, %struct.slotvec** @slotvec, null} ; [ DW_TAG_variable ] [slotvec] [line 559] [local] [def]
!622 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !616} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from slotvec]
!623 = metadata !{i32 786449, metadata !624, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !625, metadata !23, metadata !636, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_uni
!624 = metadata !{metadata !"xmalloc.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!625 = metadata !{metadata !626}
!626 = metadata !{i32 786436, metadata !627, metadata !628, metadata !"", i32 199, i64 32, i64 32, i32 0, i32 0, null, metadata !634, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 199, size 32, align 32, offset 0] [def] [from ]
!627 = metadata !{metadata !"./xalloc.h", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!628 = metadata !{i32 786478, metadata !627, metadata !629, metadata !"x2nrealloc", metadata !"x2nrealloc", metadata !"", i32 187, metadata !630, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*, i64)* @x2nrealloc, null, null, met
!629 = metadata !{i32 786473, metadata !627}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!630 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !631, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!631 = metadata !{metadata !97, metadata !97, metadata !632, metadata !633}
!632 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !633} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from size_t]
!633 = metadata !{i32 786454, metadata !627, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!634 = metadata !{metadata !635}
!635 = metadata !{i32 786472, metadata !"DEFAULT_MXFAST", i64 64} ; [ DW_TAG_enumerator ] [DEFAULT_MXFAST :: 64]
!636 = metadata !{metadata !637, metadata !640, metadata !628, metadata !643, metadata !646, metadata !650, metadata !653, metadata !656, metadata !657, metadata !658, metadata !661}
!637 = metadata !{i32 786478, metadata !627, metadata !629, metadata !"xnmalloc", metadata !"xnmalloc", metadata !"", i32 113, metadata !638, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xnmalloc, null, null, metadata !23, i
!638 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!639 = metadata !{metadata !97, metadata !633, metadata !633}
!640 = metadata !{i32 786478, metadata !627, metadata !629, metadata !"xnrealloc", metadata !"xnrealloc", metadata !"", i32 124, metadata !641, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64, i64)* @xnrealloc, null, null, metadat
!641 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!642 = metadata !{metadata !97, metadata !97, metadata !633, metadata !633}
!643 = metadata !{i32 786478, metadata !627, metadata !629, metadata !"xcharalloc", metadata !"xcharalloc", metadata !"", i32 224, metadata !644, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xcharalloc, null, null, metadata !23, 
!644 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !645, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!645 = metadata !{metadata !46, metadata !633}
!646 = metadata !{i32 786478, metadata !624, metadata !647, metadata !"xmalloc", metadata !"xmalloc", metadata !"", i32 48, metadata !648, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xmalloc, null, null, metadata !23, i32 49} ; 
!647 = metadata !{i32 786473, metadata !624}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xmalloc.c]
!648 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !649, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!649 = metadata !{metadata !97, metadata !633}
!650 = metadata !{i32 786478, metadata !624, metadata !647, metadata !"xrealloc", metadata !"xrealloc", metadata !"", i32 60, metadata !651, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xrealloc, null, null, metadata !23, i3
!651 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!652 = metadata !{metadata !97, metadata !97, metadata !633}
!653 = metadata !{i32 786478, metadata !624, metadata !647, metadata !"x2realloc", metadata !"x2realloc", metadata !"", i32 75, metadata !654, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*)* @x2realloc, null, null, metadata !23
!654 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !655, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!655 = metadata !{metadata !97, metadata !97, metadata !632}
!656 = metadata !{i32 786478, metadata !624, metadata !647, metadata !"xzalloc", metadata !"xzalloc", metadata !"", i32 85, metadata !648, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64)* @xzalloc, null, null, metadata !23, i32 86} ; 
!657 = metadata !{i32 786478, metadata !624, metadata !647, metadata !"xcalloc", metadata !"xcalloc", metadata !"", i32 94, metadata !638, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i64, i64)* @xcalloc, null, null, metadata !23, i32 9
!658 = metadata !{i32 786478, metadata !624, metadata !647, metadata !"xmemdup", metadata !"xmemdup", metadata !"", i32 112, metadata !659, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64)* @xmemdup, null, null, metadata !23, i32 
!659 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!660 = metadata !{metadata !97, metadata !135, metadata !633}
!661 = metadata !{i32 786478, metadata !624, metadata !647, metadata !"xstrdup", metadata !"xstrdup", metadata !"", i32 120, metadata !574, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*)* @xstrdup, null, null, metadata !23, i32 121} 
!662 = metadata !{i32 786449, metadata !663, i32 12, metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)", i1 false, metadata !"", i32 0, metadata !23, metadata !23, metadata !664, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit
!663 = metadata !{metadata !"close-stream.c", metadata !"/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib"}
!664 = metadata !{metadata !665}
!665 = metadata !{i32 786478, metadata !663, metadata !666, metadata !"close_stream", metadata !"close_stream", metadata !"", i32 54, metadata !667, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct._IO_FILE*)* @close_stream, null, n
!666 = metadata !{i32 786473, metadata !663}      ; [ DW_TAG_file_type ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/close-stream.c]
!667 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !668, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!668 = metadata !{metadata !36, metadata !669}
!669 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !670} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!670 = metadata !{i32 786454, metadata !663, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !671} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!671 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !672, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [def] [from ]
!672 = metadata !{metadata !673, metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !693, metadata !694, metadata !6
!673 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!674 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!675 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!676 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!677 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!678 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!679 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!680 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!681 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!682 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!683 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!684 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!685 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !686} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!686 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !687} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!687 = metadata !{i32 786451, metadata !209, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !688, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [def] [from
!688 = metadata !{metadata !689, metadata !690, metadata !692}
!689 = metadata !{i32 786445, metadata !209, metadata !687, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !686} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!690 = metadata !{i32 786445, metadata !209, metadata !687, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !691} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!691 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !671} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!692 = metadata !{i32 786445, metadata !209, metadata !687, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!693 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !691} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!694 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!695 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !36} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!696 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !235} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!697 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !89} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!698 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !91} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!699 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !93} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!700 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !97} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!701 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !241} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!702 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!703 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!704 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!705 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !97} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!706 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !247} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!707 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !36} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!708 = metadata !{i32 786445, metadata !209, metadata !671, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !108} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!709 = metadata !{i32 786449, metadata !710, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !711, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!710 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!711 = metadata !{metadata !712}
!712 = metadata !{i32 786478, metadata !710, metadata !713, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", i32 12, metadata !714, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_check, 
!713 = metadata !{i32 786473, metadata !710}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_div_zero_check.c]
!714 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !715, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!715 = metadata !{null, metadata !716}
!716 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!717 = metadata !{metadata !718}
!718 = metadata !{i32 786689, metadata !712, metadata !"z", metadata !713, i32 16777228, metadata !716, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!719 = metadata !{i32 786449, metadata !720, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !721, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!720 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/klee_int.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!721 = metadata !{metadata !722}
!722 = metadata !{i32 786478, metadata !720, metadata !723, metadata !"klee_int", metadata !"klee_int", metadata !"", i32 13, metadata !724, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !726, i32 13}
!723 = metadata !{i32 786473, metadata !720}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_int.c]
!724 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !725, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!725 = metadata !{metadata !36, metadata !52}
!726 = metadata !{metadata !727, metadata !728}
!727 = metadata !{i32 786689, metadata !722, metadata !"name", metadata !723, i32 16777229, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!728 = metadata !{i32 786688, metadata !722, metadata !"x", metadata !723, i32 14, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!729 = metadata !{i32 786449, metadata !730, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !731, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!730 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/klee_mark_arg_symbolic.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!731 = metadata !{metadata !732, metadata !742, metadata !747}
!732 = metadata !{i32 786478, metadata !730, metadata !733, metadata !"klee_mark_arg_symbolic", metadata !"klee_mark_arg_symbolic", metadata !"", i32 23, metadata !734, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8**)* @klee_mark
!733 = metadata !{i32 786473, metadata !730}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_mark_arg_symbolic.c]
!734 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !735, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!735 = metadata !{null, metadata !36, metadata !45}
!736 = metadata !{metadata !737, metadata !738, metadata !739, metadata !740, metadata !741}
!737 = metadata !{i32 786689, metadata !732, metadata !"argc", metadata !733, i32 16777239, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 23]
!738 = metadata !{i32 786689, metadata !732, metadata !"argv", metadata !733, i32 33554455, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 23]
!739 = metadata !{i32 786688, metadata !732, metadata !"i", metadata !733, i32 24, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 24]
!740 = metadata !{i32 786688, metadata !732, metadata !"j", metadata !733, i32 24, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 24]
!741 = metadata !{i32 786688, metadata !732, metadata !"len", metadata !733, i32 24, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 24]
!742 = metadata !{i32 786478, metadata !730, metadata !733, metadata !"__isprint", metadata !"__isprint", metadata !"", i32 19, metadata !743, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !745, i32 19} ; [ DW_TAG_sub
!743 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !744, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!744 = metadata !{metadata !36, metadata !53}
!745 = metadata !{metadata !746}
!746 = metadata !{i32 786689, metadata !742, metadata !"c", metadata !733, i32 16777235, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 19]
!747 = metadata !{i32 786478, metadata !730, metadata !733, metadata !"my_strlen", metadata !"my_strlen", metadata !"", i32 13, metadata !748, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !750, i32 13} ; [ DW_TAG_sub
!748 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !749, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!749 = metadata !{metadata !36, metadata !46}
!750 = metadata !{metadata !751, metadata !752}
!751 = metadata !{i32 786689, metadata !747, metadata !"s", metadata !733, i32 16777229, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 13]
!752 = metadata !{i32 786688, metadata !747, metadata !"i", metadata !733, i32 14, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 14]
!753 = metadata !{i32 786449, metadata !754, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !755, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!754 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!755 = metadata !{metadata !756}
!756 = metadata !{i32 786478, metadata !754, metadata !757, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", i32 20, metadata !758, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_overshift
!757 = metadata !{i32 786473, metadata !754}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_overshift_check.c]
!758 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!759 = metadata !{null, metadata !760, metadata !760}
!760 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!761 = metadata !{metadata !762, metadata !763}
!762 = metadata !{i32 786689, metadata !756, metadata !"bitWidth", metadata !757, i32 16777236, metadata !760, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!763 = metadata !{i32 786689, metadata !756, metadata !"shift", metadata !757, i32 33554452, metadata !760, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!764 = metadata !{i32 786449, metadata !765, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !766, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!765 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!766 = metadata !{metadata !767}
!767 = metadata !{i32 786478, metadata !765, metadata !768, metadata !"klee_range", metadata !"klee_range", metadata !"", i32 13, metadata !769, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null, metada
!768 = metadata !{i32 786473, metadata !765}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c]
!769 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !770, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!770 = metadata !{metadata !36, metadata !36, metadata !36, metadata !52}
!771 = metadata !{metadata !772, metadata !773, metadata !774, metadata !775}
!772 = metadata !{i32 786689, metadata !767, metadata !"start", metadata !768, i32 16777229, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!773 = metadata !{i32 786689, metadata !767, metadata !"end", metadata !768, i32 33554445, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!774 = metadata !{i32 786689, metadata !767, metadata !"name", metadata !768, i32 50331661, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!775 = metadata !{i32 786688, metadata !767, metadata !"x", metadata !768, i32 14, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!776 = metadata !{i32 786449, metadata !777, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !778, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!777 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/memcpy.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!778 = metadata !{metadata !779}
!779 = metadata !{i32 786478, metadata !777, metadata !780, metadata !"memcpy", metadata !"memcpy", metadata !"", i32 12, metadata !781, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memcpy, null, null, metadata !784, i32
!780 = metadata !{i32 786473, metadata !777}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/memcpy.c]
!781 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !782, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!782 = metadata !{metadata !97, metadata !97, metadata !135, metadata !783}
!783 = metadata !{i32 786454, metadata !777, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!784 = metadata !{metadata !785, metadata !786, metadata !787, metadata !788, metadata !789}
!785 = metadata !{i32 786689, metadata !779, metadata !"destaddr", metadata !780, i32 16777228, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!786 = metadata !{i32 786689, metadata !779, metadata !"srcaddr", metadata !780, i32 33554444, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!787 = metadata !{i32 786689, metadata !779, metadata !"len", metadata !780, i32 50331660, metadata !783, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!788 = metadata !{i32 786688, metadata !779, metadata !"dest", metadata !780, i32 13, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!789 = metadata !{i32 786688, metadata !779, metadata !"src", metadata !780, i32 14, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!790 = metadata !{i32 786449, metadata !791, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !792, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!791 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/memmove.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!792 = metadata !{metadata !793}
!793 = metadata !{i32 786478, metadata !791, metadata !794, metadata !"memmove", metadata !"memmove", metadata !"", i32 12, metadata !795, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @memmove, null, null, metadata !798, 
!794 = metadata !{i32 786473, metadata !791}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/memmove.c]
!795 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !796, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!796 = metadata !{metadata !97, metadata !97, metadata !135, metadata !797}
!797 = metadata !{i32 786454, metadata !791, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!798 = metadata !{metadata !799, metadata !800, metadata !801, metadata !802, metadata !803}
!799 = metadata !{i32 786689, metadata !793, metadata !"dst", metadata !794, i32 16777228, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!800 = metadata !{i32 786689, metadata !793, metadata !"src", metadata !794, i32 33554444, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!801 = metadata !{i32 786689, metadata !793, metadata !"count", metadata !794, i32 50331660, metadata !797, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!802 = metadata !{i32 786688, metadata !793, metadata !"a", metadata !794, i32 13, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!803 = metadata !{i32 786688, metadata !793, metadata !"b", metadata !794, i32 14, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!804 = metadata !{i32 786449, metadata !805, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !806, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!805 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/mempcpy.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!806 = metadata !{metadata !807}
!807 = metadata !{i32 786478, metadata !805, metadata !808, metadata !"mempcpy", metadata !"mempcpy", metadata !"", i32 11, metadata !809, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata !812, 
!808 = metadata !{i32 786473, metadata !805}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/mempcpy.c]
!809 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !810, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!810 = metadata !{metadata !97, metadata !97, metadata !135, metadata !811}
!811 = metadata !{i32 786454, metadata !805, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!812 = metadata !{metadata !813, metadata !814, metadata !815, metadata !816, metadata !817}
!813 = metadata !{i32 786689, metadata !807, metadata !"destaddr", metadata !808, i32 16777227, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!814 = metadata !{i32 786689, metadata !807, metadata !"srcaddr", metadata !808, i32 33554443, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!815 = metadata !{i32 786689, metadata !807, metadata !"len", metadata !808, i32 50331659, metadata !811, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!816 = metadata !{i32 786688, metadata !807, metadata !"dest", metadata !808, i32 12, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!817 = metadata !{i32 786688, metadata !807, metadata !"src", metadata !808, i32 13, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!818 = metadata !{i32 786449, metadata !819, i32 1, metadata !"clang version 3.4.2 (tags/RELEASE_342/final)", i1 true, metadata !"", i32 0, metadata !23, metadata !23, metadata !820, metadata !23, metadata !23, metadata !""} ; [ DW_TAG_compile_unit ] [/h
!819 = metadata !{metadata !"/home/jl/deploy/use/src/runtime/Intrinsic/memset.c", metadata !"/home/jl/deploy/use/build/runtime/Intrinsic"}
!820 = metadata !{metadata !821}
!821 = metadata !{i32 786478, metadata !819, metadata !822, metadata !"memset", metadata !"memset", metadata !"", i32 11, metadata !823, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !826, i32
!822 = metadata !{i32 786473, metadata !819}      ; [ DW_TAG_file_type ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/memset.c]
!823 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!824 = metadata !{metadata !97, metadata !97, metadata !36, metadata !825}
!825 = metadata !{i32 786454, metadata !819, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!826 = metadata !{metadata !827, metadata !828, metadata !829, metadata !830}
!827 = metadata !{i32 786689, metadata !821, metadata !"dst", metadata !822, i32 16777227, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!828 = metadata !{i32 786689, metadata !821, metadata !"s", metadata !822, i32 33554443, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!829 = metadata !{i32 786689, metadata !821, metadata !"count", metadata !822, i32 50331659, metadata !825, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!830 = metadata !{i32 786688, metadata !821, metadata !"a", metadata !822, i32 12, metadata !831, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!831 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !832} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!832 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!833 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!834 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!835 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
!836 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_342/final)"}
!837 = metadata !{i32 19, i32 0, metadata !838, null}
!838 = metadata !{i32 786443, metadata !26, metadata !25, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!839 = metadata !{i32 20, i32 0, metadata !838, null}
!840 = metadata !{i32 22, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !26, metadata !842, i32 22, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!842 = metadata !{i32 786443, metadata !26, metadata !838, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!843 = metadata !{i32 25, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !26, metadata !841, i32 22, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!845 = metadata !{i32 26, i32 0, metadata !844, null}
!846 = metadata !{i32 28, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !26, metadata !844, i32 28, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!848 = metadata !{i32 31, i32 0, metadata !849, null}
!849 = metadata !{i32 786443, metadata !26, metadata !847, i32 28, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!850 = metadata !{i32 32, i32 0, metadata !851, null}
!851 = metadata !{i32 786443, metadata !26, metadata !849, i32 32, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!852 = metadata !{i32 33, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !26, metadata !851, i32 32, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!854 = metadata !{i32 34, i32 0, metadata !853, null}
!855 = metadata !{i32 35, i32 0, metadata !853, null}
!856 = metadata !{i32 36, i32 0, metadata !853, null}
!857 = metadata !{i32 38, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !26, metadata !851, i32 37, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!859 = metadata !{i32 40, i32 0, metadata !860, null}
!860 = metadata !{i32 786443, metadata !26, metadata !849, i32 40, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!861 = metadata !{i32 41, i32 0, metadata !862, null}
!862 = metadata !{i32 786443, metadata !26, metadata !860, i32 40, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!863 = metadata !{i32 42, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !26, metadata !862, i32 42, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!865 = metadata !{i32 43, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !26, metadata !864, i32 42, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!867 = metadata !{i32 44, i32 0, metadata !866, null}
!868 = metadata !{i32 45, i32 0, metadata !866, null}
!869 = metadata !{i32 47, i32 0, metadata !870, null}
!870 = metadata !{i32 786443, metadata !26, metadata !864, i32 46, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!871 = metadata !{i32 51, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !26, metadata !860, i32 50, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!873 = metadata !{i32 56, i32 0, metadata !874, null}
!874 = metadata !{i32 786443, metadata !26, metadata !847, i32 55, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_macros.h]
!875 = metadata !{i32 59, i32 0, metadata !844, null}
!876 = metadata !{i32 60, i32 0, metadata !844, null}
!877 = metadata !{i32 61, i32 0, metadata !842, null}
!878 = metadata !{i32 64, i32 0, metadata !25, null}
!879 = metadata !{i32 4, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !32, metadata !31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src//home/shadowvm/shadow/shadow-llvm-tools/include/klee_change_functions.h]
!881 = metadata !{i32 5, i32 0, metadata !37, null}
!882 = metadata !{i32 198, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !884, i32 198, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!884 = metadata !{i32 786443, metadata !1, metadata !38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!885 = metadata !{i32 199, i32 0, metadata !883, null}
!886 = metadata !{i32 203, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !883, i32 202, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!888 = metadata !{i32 207, i32 0, metadata !887, null}
!889 = metadata !{i32 211, i32 0, metadata !887, null}
!890 = metadata !{i32 214, i32 0, metadata !887, null}
!891 = metadata !{i32 219, i32 0, metadata !887, null}
!892 = metadata !{i32 225, i32 0, metadata !887, null}
!893 = metadata !{i32 229, i32 0, metadata !887, null}
!894 = metadata !{i32 234, i32 0, metadata !887, null}
!895 = metadata !{i32 235, i32 0, metadata !887, null}
!896 = metadata !{i32 236, i32 0, metadata !887, null}
!897 = metadata !{i32 242, i32 0, metadata !887, null}
!898 = metadata !{i32 252, i32 0, metadata !887, null}
!899 = metadata !{i32 254, i32 0, metadata !884, null}
!900 = metadata !{i32 594, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !113, metadata !151} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/./system.h]
!902 = metadata !{i32 595, i32 0, metadata !901, null}
!903 = metadata !{i32 771, i32 0, metadata !42, null}
!904 = metadata !{i32 775, i32 0, metadata !42, null}
!905 = metadata !{i32 776, i32 0, metadata !42, null}
!906 = metadata !{i32 780, i32 0, metadata !42, null}
!907 = metadata !{i32 782, i32 0, metadata !42, null}
!908 = metadata !{i32 785, i32 0, metadata !42, null}
!909 = metadata !{i32 787, i32 0, metadata !42, null}
!910 = metadata !{i32 788, i32 0, metadata !42, null}
!911 = metadata !{i32 790, i32 0, metadata !42, null}
!912 = metadata !{i32 792, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !42, i32 791, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!914 = metadata !{i32 797, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !916, i32 797, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!916 = metadata !{i32 786443, metadata !1, metadata !913, i32 793, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!917 = metadata !{i32 798, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !915, i32 798, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!919 = metadata !{i32 799, i32 0, metadata !916, null}
!920 = metadata !{i32 800, i32 0, metadata !916, null}
!921 = metadata !{i32 801, i32 0, metadata !916, null}
!922 = metadata !{i32 805, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !1, metadata !916, i32 805, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!924 = metadata !{i32 806, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !923, i32 806, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!926 = metadata !{i32 807, i32 0, metadata !916, null}
!927 = metadata !{i32 808, i32 0, metadata !916, null}
!928 = metadata !{i32 809, i32 0, metadata !916, null}
!929 = metadata !{i32 814, i32 0, metadata !930, null}
!930 = metadata !{i32 786443, metadata !1, metadata !916, i32 814, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!931 = metadata !{i32 815, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !930, i32 815, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!933 = metadata !{i32 816, i32 0, metadata !916, null}
!934 = metadata !{i32 817, i32 0, metadata !916, null}
!935 = metadata !{i32 818, i32 0, metadata !916, null}
!936 = metadata !{i32 821, i32 0, metadata !916, null}
!937 = metadata !{i32 824, i32 0, metadata !916, null}
!938 = metadata !{i32 825, i32 0, metadata !916, null}
!939 = metadata !{i32 826, i32 0, metadata !916, null}
!940 = metadata !{i32 827, i32 0, metadata !916, null}
!941 = metadata !{i32 833, i32 0, metadata !916, null}
!942 = metadata !{i32 834, i32 0, metadata !916, null}
!943 = metadata !{i32 837, i32 0, metadata !916, null}
!944 = metadata !{i32 838, i32 0, metadata !916, null}
!945 = metadata !{i32 840, i32 0, metadata !916, null}
!946 = metadata !{i32 842, i32 0, metadata !916, null}
!947 = metadata !{i32 845, i32 0, metadata !916, null}
!948 = metadata !{i32 846, i32 0, metadata !916, null}
!949 = metadata !{i32 849, i32 0, metadata !950, null}
!950 = metadata !{i32 786443, metadata !1, metadata !42, i32 849, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!951 = metadata !{i32 850, i32 0, metadata !952, null}
!952 = metadata !{i32 786443, metadata !1, metadata !950, i32 850, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!953 = metadata !{i32 852, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !42, i32 852, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!955 = metadata !{i32 853, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !954, i32 853, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!957 = metadata !{i32 856, i32 0, metadata !958, null}
!958 = metadata !{i32 786443, metadata !1, metadata !42, i32 856, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!959 = metadata !{i32 857, i32 0, metadata !960, null}
!960 = metadata !{i32 786443, metadata !1, metadata !958, i32 857, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!961 = metadata !{i32 860, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !1, metadata !42, i32 860, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!963 = metadata !{i32 862, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !1, metadata !962, i32 861, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!965 = metadata !{i32 865, i32 0, metadata !966, null}
!966 = metadata !{i32 786443, metadata !1, metadata !964, i32 865, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!967 = metadata !{i32 866, i32 0, metadata !966, null}
!968 = metadata !{i32 870, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !42, i32 870, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!970 = metadata !{i32 872, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !1, metadata !972, i32 872, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!972 = metadata !{i32 786443, metadata !1, metadata !969, i32 871, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!973 = metadata !{i32 873, i32 0, metadata !974, null}
!974 = metadata !{i32 786443, metadata !1, metadata !971, i32 873, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!975 = metadata !{i32 875, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !971, i32 875, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!977 = metadata !{i32 878, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !1, metadata !42, i32 878, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!979 = metadata !{i32 879, i32 0, metadata !978, null}
!980 = metadata !{i32 881, i32 0, metadata !981, null}
!981 = metadata !{i32 786443, metadata !1, metadata !42, i32 881, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!982 = metadata !{i32 884, i32 0, metadata !983, null}
!983 = metadata !{i32 786443, metadata !1, metadata !981, i32 882, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!984 = metadata !{i32 885, i32 0, metadata !983, null}
!985 = metadata !{i32 886, i32 0, metadata !983, null}
!986 = metadata !{i32 887, i32 0, metadata !983, null}
!987 = metadata !{i32 888, i32 0, metadata !983, null}
!988 = metadata !{i32 890, i32 0, metadata !989, null}
!989 = metadata !{i32 786443, metadata !1, metadata !42, i32 890, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!990 = metadata !{i32 891, i32 0, metadata !989, null}
!991 = metadata !{i32 893, i32 0, metadata !992, null}
!992 = metadata !{i32 786443, metadata !1, metadata !989, i32 893, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!993 = metadata !{i32 894, i32 0, metadata !992, null}
!994 = metadata !{i32 896, i32 0, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !42, i32 896, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!996 = metadata !{i32 897, i32 0, metadata !995, null}
!997 = metadata !{i32 899, i32 0, metadata !998, null}
!998 = metadata !{i32 786443, metadata !1, metadata !42, i32 899, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!999 = metadata !{i32 901, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !998, i32 900, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1001 = metadata !{i32 902, i32 0, metadata !1000, null}
!1002 = metadata !{i32 903, i32 0, metadata !1000, null}
!1003 = metadata !{i32 905, i32 0, metadata !42, null}
!1004 = metadata !{i32 185, i32 0, metadata !143, null}
!1005 = metadata !{i32 186, i32 0, metadata !143, null}
!1006 = metadata !{i32 187, i32 0, metadata !143, null}
!1007 = metadata !{i32 188, i32 0, metadata !143, null}
!1008 = metadata !{i32 189, i32 0, metadata !143, null}
!1009 = metadata !{i32 190, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !143, i32 190, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1011 = metadata !{i32 191, i32 0, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !1, metadata !1010, i32 190, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1013 = metadata !{i32 193, i32 0, metadata !143, null}
!1014 = metadata !{i32 288, i32 0, metadata !140, null}
!1015 = metadata !{i32 292, i32 0, metadata !140, null}
!1016 = metadata !{i32 298, i32 0, metadata !137, null}
!1017 = metadata !{i32 358, i32 0, metadata !127, null}
!1018 = metadata !{i32 359, i32 0, metadata !127, null}
!1019 = metadata !{i32 360, i32 0, metadata !127, null}
!1020 = metadata !{i32 361, i32 0, metadata !127, null}
!1021 = metadata !{i32 362, i32 0, metadata !127, null}
!1022 = metadata !{i32 363, i32 0, metadata !127, null}
!1023 = metadata !{i32 366, i32 0, metadata !127, null}
!1024 = metadata !{i32 367, i32 0, metadata !127, null}
!1025 = metadata !{i32 368, i32 0, metadata !127, null}
!1026 = metadata !{i32 370, i32 0, metadata !127, null}
!1027 = metadata !{i32 375, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !1, metadata !127, i32 375, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1029 = metadata !{i32 377, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1, metadata !1031, i32 377, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1031 = metadata !{i32 786443, metadata !1, metadata !1028, i32 376, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1032 = metadata !{i32 379, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1030, i32 378, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1034 = metadata !{i32 381, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1033, i32 381, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1036 = metadata !{i32 382, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1035, i32 382, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1038 = metadata !{i32 383, i32 0, metadata !1033, null}
!1039 = metadata !{i32 384, i32 0, metadata !1033, null}
!1040 = metadata !{i32 386, i32 0, metadata !1033, null}
!1041 = metadata !{i32 387, i32 0, metadata !1033, null}
!1042 = metadata !{i32 388, i32 0, metadata !1033, null}
!1043 = metadata !{i32 389, i32 0, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !1, metadata !1030, i32 389, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1045 = metadata !{i32 391, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !1044, i32 390, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1047 = metadata !{i32 393, i32 0, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !1, metadata !1046, i32 393, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1049 = metadata !{i32 395, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !1048, i32 394, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1051 = metadata !{i32 397, i32 0, metadata !1052, null}
!1052 = metadata !{i32 786443, metadata !1, metadata !1050, i32 397, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1053 = metadata !{i32 398, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !1052, i32 398, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1055 = metadata !{i32 402, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1, metadata !1050, i32 402, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1057 = metadata !{i32 405, i32 0, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !1, metadata !1056, i32 403, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1059 = metadata !{i32 406, i32 0, metadata !1058, null}
!1060 = metadata !{i32 407, i32 0, metadata !1058, null}
!1061 = metadata !{i32 411, i32 0, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !1, metadata !1063, i32 411, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1063 = metadata !{i32 786443, metadata !1, metadata !1056, i32 409, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1064 = metadata !{i32 412, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !1062, i32 412, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1066 = metadata !{i32 415, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1, metadata !1063, i32 415, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1068 = metadata !{i32 420, i32 0, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !1, metadata !1070, i32 420, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1070 = metadata !{i32 786443, metadata !1, metadata !1067, i32 416, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1071 = metadata !{i32 425, i32 0, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !1, metadata !1073, i32 425, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1073 = metadata !{i32 786443, metadata !1, metadata !1069, i32 421, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1074 = metadata !{i32 428, i32 0, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !1, metadata !1072, i32 426, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1076 = metadata !{i32 429, i32 0, metadata !1075, null}
!1077 = metadata !{i32 434, i32 0, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !1, metadata !1079, i32 434, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1079 = metadata !{i32 786443, metadata !1, metadata !1080, i32 434, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1080 = metadata !{i32 786443, metadata !1, metadata !1072, i32 431, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1081 = metadata !{i32 434, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !1, metadata !1078, i32 434, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1083 = metadata !{i32 434, i32 0, metadata !1079, null}
!1084 = metadata !{i32 438, i32 0, metadata !1073, null}
!1085 = metadata !{i32 439, i32 0, metadata !1073, null}
!1086 = metadata !{i32 444, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1, metadata !1088, i32 444, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1088 = metadata !{i32 786443, metadata !1, metadata !1089, i32 444, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1089 = metadata !{i32 786443, metadata !1, metadata !1067, i32 442, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1090 = metadata !{i32 444, i32 0, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !1, metadata !1087, i32 444, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1092 = metadata !{i32 444, i32 0, metadata !1088, null}
!1093 = metadata !{i32 445, i32 0, metadata !1089, null}
!1094 = metadata !{i32 447, i32 0, metadata !1063, null}
!1095 = metadata !{i32 450, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1, metadata !1048, i32 450, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1097 = metadata !{i32 453, i32 0, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !1, metadata !1099, i32 453, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1099 = metadata !{i32 786443, metadata !1, metadata !1100, i32 453, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1100 = metadata !{i32 786443, metadata !1, metadata !1096, i32 451, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1101 = metadata !{i32 453, i32 0, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !1, metadata !1098, i32 453, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1103 = metadata !{i32 453, i32 0, metadata !1099, null}
!1104 = metadata !{i32 454, i32 0, metadata !1100, null}
!1105 = metadata !{i32 455, i32 0, metadata !1100, null}
!1106 = metadata !{i32 456, i32 0, metadata !1100, null}
!1107 = metadata !{i32 458, i32 0, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !1, metadata !1046, i32 458, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1109 = metadata !{i32 463, i32 0, metadata !1046, null}
!1110 = metadata !{i32 464, i32 0, metadata !1046, null}
!1111 = metadata !{i32 465, i32 0, metadata !1046, null}
!1112 = metadata !{i32 466, i32 0, metadata !1046, null}
!1113 = metadata !{i32 467, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1, metadata !1044, i32 467, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1115 = metadata !{i32 472, i32 0, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !1, metadata !1117, i32 472, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1117 = metadata !{i32 786443, metadata !1, metadata !1114, i32 468, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1118 = metadata !{i32 473, i32 0, metadata !1116, null}
!1119 = metadata !{i32 474, i32 0, metadata !1117, null}
!1120 = metadata !{i32 476, i32 0, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !1, metadata !1117, i32 476, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1122 = metadata !{i32 477, i32 0, metadata !1121, null}
!1123 = metadata !{i32 479, i32 0, metadata !1121, null}
!1124 = metadata !{i32 482, i32 0, metadata !1125, null}
!1125 = metadata !{i32 786443, metadata !1, metadata !1117, i32 482, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1126 = metadata !{i32 487, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1, metadata !1125, i32 483, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1128 = metadata !{i32 488, i32 0, metadata !1127, null}
!1129 = metadata !{i32 489, i32 0, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !1, metadata !1127, i32 489, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1131 = metadata !{i32 491, i32 0, metadata !1130, null}
!1132 = metadata !{i32 490, i32 0, metadata !1130, null}
!1133 = metadata !{i32 493, i32 0, metadata !1130, null}
!1134 = metadata !{i32 495, i32 0, metadata !1127, null}
!1135 = metadata !{i32 496, i32 0, metadata !1127, null}
!1136 = metadata !{i32 499, i32 0, metadata !1117, null}
!1137 = metadata !{i32 500, i32 0, metadata !1117, null}
!1138 = metadata !{i32 502, i32 0, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !1, metadata !1114, i32 502, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1140 = metadata !{i32 505, i32 0, metadata !127, null}
!1141 = metadata !{i32 506, i32 0, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !1, metadata !127, i32 506, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1143 = metadata !{i32 508, i32 0, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !1, metadata !1145, i32 508, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1145 = metadata !{i32 786443, metadata !1, metadata !1142, i32 507, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1146 = metadata !{i32 509, i32 0, metadata !1144, null}
!1147 = metadata !{i32 516, i32 0, metadata !127, null}
!1148 = metadata !{i32 518, i32 0, metadata !127, null}
!1149 = metadata !{i32 521, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1, metadata !127, i32 521, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1151 = metadata !{i32 528, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1, metadata !1150, i32 522, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1153 = metadata !{i32 529, i32 0, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !1, metadata !1152, i32 529, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1155 = metadata !{i32 530, i32 8, metadata !1154, null}
!1156 = metadata !{i32 531, i32 0, metadata !1154, null}
!1157 = metadata !{i32 533, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1152, i32 533, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1159 = metadata !{i32 534, i32 0, metadata !1158, null}
!1160 = metadata !{i32 537, i32 0, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !1, metadata !127, i32 537, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1162 = metadata !{i32 539, i32 30, metadata !1161, null}
!1163 = metadata !{i32 540, i32 0, metadata !1161, null}
!1164 = metadata !{i32 542, i32 0, metadata !127, null}
!1165 = metadata !{i32 544, i32 0, metadata !127, null}
!1166 = metadata !{i32 734, i32 0, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !1, metadata !48, i32 734, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1168 = metadata !{i32 736, i32 0, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !1, metadata !1167, i32 735, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1170 = metadata !{i32 737, i32 0, metadata !1169, null}
!1171 = metadata !{i32 738, i32 0, metadata !1169, null}
!1172 = metadata !{i32 741, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1, metadata !1167, i32 740, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1174 = metadata !{i32 742, i32 0, metadata !1175, null}
!1175 = metadata !{i32 786443, metadata !1, metadata !1173, i32 742, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1176 = metadata !{i32 744, i32 0, metadata !1177, null}
!1177 = metadata !{i32 786443, metadata !1, metadata !1175, i32 743, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1178 = metadata !{i32 745, i32 0, metadata !1177, null}
!1179 = metadata !{i32 749, i32 0, metadata !48, null}
!1180 = metadata !{i32 751, i32 0, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !1, metadata !48, i32 751, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1182 = metadata !{i32 753, i32 0, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !1, metadata !1181, i32 752, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1184 = metadata !{i32 754, i32 0, metadata !1183, null}
!1185 = metadata !{i32 756, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !1, metadata !48, i32 756, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1187 = metadata !{i32 757, i32 0, metadata !1186, null}
!1188 = metadata !{i32 758, i32 0, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !1, metadata !1186, i32 758, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1190 = metadata !{i32 760, i32 0, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !1, metadata !1189, i32 759, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1192 = metadata !{i32 761, i32 0, metadata !1191, null}
!1193 = metadata !{i32 763, i32 0, metadata !48, null}
!1194 = metadata !{i32 764, i32 0, metadata !48, null}
!1195 = metadata !{i32 720, i32 0, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !1, metadata !54, i32 720, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1197 = metadata !{i32 721, i32 0, metadata !1196, null}
!1198 = metadata !{i32 723, i32 0, metadata !1196, null}
!1199 = metadata !{i32 724, i32 0, metadata !54, null}
!1200 = metadata !{i32 557, i32 0, metadata !126, null}
!1201 = metadata !{i32 558, i32 0, metadata !126, null}
!1202 = metadata !{i32 559, i32 0, metadata !126, null}
!1203 = metadata !{i32 563, i32 0, metadata !1204, null}
!1204 = metadata !{i32 786443, metadata !1, metadata !126, i32 560, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1205 = metadata !{i32 565, i32 0, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !1, metadata !1204, i32 565, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1207 = metadata !{i32 567, i32 0, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !1, metadata !1206, i32 566, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1209 = metadata !{i32 568, i32 0, metadata !1208, null}
!1210 = metadata !{i32 569, i32 0, metadata !1208, null}
!1211 = metadata !{i32 570, i32 0, metadata !1208, null}
!1212 = metadata !{i32 571, i32 0, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !1, metadata !1206, i32 571, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1214 = metadata !{i32 573, i32 0, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !1, metadata !1216, i32 573, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1216 = metadata !{i32 786443, metadata !1, metadata !1213, i32 572, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1217 = metadata !{i32 574, i32 0, metadata !1215, null}
!1218 = metadata !{i32 580, i32 0, metadata !1219, null}
!1219 = metadata !{i32 786443, metadata !1, metadata !1213, i32 578, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1220 = metadata !{i32 581, i32 0, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !1, metadata !1219, i32 581, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1222 = metadata !{i32 583, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1, metadata !1224, i32 583, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1224 = metadata !{i32 786443, metadata !1, metadata !1221, i32 582, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1225 = metadata !{i32 585, i32 0, metadata !1226, null}
!1226 = metadata !{i32 786443, metadata !1, metadata !1223, i32 584, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1227 = metadata !{i32 587, i32 0, metadata !1226, null}
!1228 = metadata !{i32 588, i32 0, metadata !1224, null}
!1229 = metadata !{i32 589, i32 0, metadata !1224, null}
!1230 = metadata !{i32 590, i32 0, metadata !1224, null}
!1231 = metadata !{i32 593, i32 0, metadata !126, null}
!1232 = metadata !{i32 601, i32 0, metadata !111, null}
!1233 = metadata !{i32 602, i32 0, metadata !111, null}
!1234 = metadata !{i32 605, i32 0, metadata !111, null}
!1235 = metadata !{i32 606, i32 0, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !1, metadata !111, i32 606, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1237 = metadata !{i32 609, i32 0, metadata !111, null}
!1238 = metadata !{i32 617, i32 0, metadata !111, null}
!1239 = metadata !{i32 619, i32 0, metadata !111, null}
!1240 = metadata !{i32 621, i32 0, metadata !1241, null}
!1241 = metadata !{i32 786443, metadata !1, metadata !1242, i32 621, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1242 = metadata !{i32 786443, metadata !1, metadata !111, i32 620, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1243 = metadata !{i32 626, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1, metadata !1241, i32 622, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1245 = metadata !{i32 628, i32 0, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !1, metadata !1244, i32 628, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1247 = metadata !{i32 630, i32 0, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !1, metadata !1246, i32 629, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1249 = metadata !{i32 631, i32 0, metadata !1248, null}
!1250 = metadata !{i32 632, i32 0, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !1, metadata !1248, i32 632, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1252 = metadata !{i32 634, i32 0, metadata !1248, null}
!1253 = metadata !{i32 637, i32 0, metadata !1244, null}
!1254 = metadata !{i32 638, i32 0, metadata !1244, null}
!1255 = metadata !{i32 643, i32 8, metadata !1256, null}
!1256 = metadata !{i32 786443, metadata !1, metadata !1244, i32 643, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1257 = metadata !{i32 645, i32 0, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !1, metadata !1259, i32 645, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1259 = metadata !{i32 786443, metadata !1, metadata !1256, i32 644, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1260 = metadata !{i32 651, i32 0, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !1, metadata !1258, i32 650, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1262 = metadata !{i32 653, i32 0, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !1, metadata !1261, i32 653, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1264 = metadata !{i32 654, i32 0, metadata !1263, null}
!1265 = metadata !{i32 658, i32 0, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !1, metadata !1244, i32 658, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1267 = metadata !{i32 661, i32 0, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !1, metadata !1266, i32 659, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1269 = metadata !{i32 662, i32 0, metadata !1268, null}
!1270 = metadata !{i32 663, i32 0, metadata !1268, null}
!1271 = metadata !{i32 664, i32 0, metadata !1244, null}
!1272 = metadata !{i32 665, i32 0, metadata !1244, null}
!1273 = metadata !{i32 667, i32 0, metadata !1274, null}
!1274 = metadata !{i32 786443, metadata !1, metadata !1242, i32 667, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1275 = metadata !{i32 669, i32 0, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !1, metadata !1277, i32 669, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1277 = metadata !{i32 786443, metadata !1, metadata !1274, i32 668, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1278 = metadata !{i32 671, i32 0, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !1, metadata !1280, i32 671, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1280 = metadata !{i32 786443, metadata !1, metadata !1276, i32 670, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1281 = metadata !{i32 673, i32 0, metadata !1282, null}
!1282 = metadata !{i32 786443, metadata !1, metadata !1279, i32 672, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1283 = metadata !{i32 675, i32 0, metadata !1282, null}
!1284 = metadata !{i32 676, i32 0, metadata !1280, null}
!1285 = metadata !{i32 678, i32 0, metadata !1280, null}
!1286 = metadata !{i32 680, i32 0, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !1, metadata !1280, i32 679, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1288 = metadata !{i32 681, i32 0, metadata !1287, null}
!1289 = metadata !{i32 685, i32 0, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !1, metadata !1276, i32 684, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1291 = metadata !{i32 692, i32 0, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !1, metadata !1242, i32 692, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1293 = metadata !{i32 694, i32 0, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !1, metadata !1292, i32 693, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1295 = metadata !{i32 695, i32 0, metadata !1296, null}
!1296 = metadata !{i32 786443, metadata !1, metadata !1294, i32 695, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1297 = metadata !{i32 697, i32 0, metadata !1298, null}
!1298 = metadata !{i32 786443, metadata !1, metadata !1296, i32 696, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1299 = metadata !{i32 698, i32 0, metadata !1298, null}
!1300 = metadata !{i32 699, i32 0, metadata !1298, null}
!1301 = metadata !{i32 702, i32 0, metadata !1302, null}
!1302 = metadata !{i32 786443, metadata !1, metadata !1242, i32 702, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1303 = metadata !{i32 703, i32 0, metadata !1302, null}
!1304 = metadata !{i32 704, i32 0, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !1, metadata !1302, i32 704, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1306 = metadata !{i32 706, i32 0, metadata !1307, null}
!1307 = metadata !{i32 786443, metadata !1, metadata !1308, i32 706, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1308 = metadata !{i32 786443, metadata !1, metadata !1305, i32 705, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1309 = metadata !{i32 708, i32 0, metadata !1307, null}
!1310 = metadata !{i32 709, i32 0, metadata !1311, null}
!1311 = metadata !{i32 786443, metadata !1, metadata !1308, i32 709, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1312 = metadata !{i32 711, i32 0, metadata !1308, null}
!1313 = metadata !{i32 712, i32 0, metadata !1308, null}
!1314 = metadata !{i32 713, i32 0, metadata !1308, null}
!1315 = metadata !{i32 715, i32 0, metadata !111, null}
!1316 = metadata !{i32 315, i32 0, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !1, metadata !118} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1318 = metadata !{i32 317, i32 39, metadata !1317, null}
!1319 = metadata !{i32 319, i32 0, metadata !1317, null}
!1320 = metadata !{i32 320, i32 0, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !1, metadata !1317, i32 320, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1322 = metadata !{i32 321, i32 0, metadata !1321, null}
!1323 = metadata !{i32 323, i32 0, metadata !1317, null}
!1324 = metadata !{i32 263, i32 0, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !113, metadata !112} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/./system.h]
!1326 = metadata !{i32 280, i32 0, metadata !125, null}
!1327 = metadata !{i32 281, i32 0, metadata !125, null}
!1328 = metadata !{i32 304, i32 0, metadata !122, null}
!1329 = metadata !{i32 331, i32 0, metadata !132, null}
!1330 = metadata !{i32 332, i32 0, metadata !132, null}
!1331 = metadata !{i32 333, i32 0, metadata !132, null}
!1332 = metadata !{i32 261, i32 0, metadata !131, null}
!1333 = metadata !{i32 262, i32 0, metadata !1334, null}
!1334 = metadata !{i32 786443, metadata !1, metadata !131, i32 262, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1335 = metadata !{i32 265, i32 0, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !1, metadata !1334, i32 263, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/src/cut.c]
!1337 = metadata !{i32 267, i32 0, metadata !131, null}
!1338 = metadata !{i32 268, i32 0, metadata !131, null}
!1339 = metadata !{i32 273, i32 0, metadata !128, null}
!1340 = metadata !{i32 274, i32 0, metadata !128, null}
!1341 = metadata !{i32 275, i32 0, metadata !128, null}
!1342 = metadata !{i32 51, i32 0, metadata !1343, null}
!1343 = metadata !{i32 786443, metadata !196, metadata !202, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/version-etc.c]
!1344 = metadata !{i32 53, i32 0, metadata !1343, null}
!1345 = metadata !{i32 54, i32 0, metadata !1343, null}
!1346 = metadata !{i32 55, i32 0, metadata !1343, null}
!1347 = metadata !{i32 58, i32 0, metadata !1348, null} ; [ DW_TAG_imported_module ]
!1348 = metadata !{i32 786443, metadata !196, metadata !202, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/version-etc.c]
!1349 = metadata !{i32 59, i32 0, metadata !1348, null}
!1350 = metadata !{i32 61, i32 0, metadata !1348, null}
!1351 = metadata !{i32 66, i32 0, metadata !202, null}
!1352 = metadata !{i32 68, i32 0, metadata !202, null}
!1353 = metadata !{i32 77, i32 0, metadata !202, null}
!1354 = metadata !{i32 81, i32 0, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !196, metadata !202, i32 78, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/version-etc.c]
!1356 = metadata !{i32 84, i32 0, metadata !1355, null}
!1357 = metadata !{i32 85, i32 0, metadata !1355, null}
!1358 = metadata !{i32 88, i32 0, metadata !1355, null}
!1359 = metadata !{i32 89, i32 0, metadata !1355, null}
!1360 = metadata !{i32 92, i32 0, metadata !1355, null}
!1361 = metadata !{i32 93, i32 0, metadata !1355, null}
!1362 = metadata !{i32 98, i32 0, metadata !1355, null}
!1363 = metadata !{i32 99, i32 0, metadata !1355, null}
!1364 = metadata !{i32 104, i32 0, metadata !1355, null}
!1365 = metadata !{i32 105, i32 0, metadata !1355, null}
!1366 = metadata !{i32 110, i32 0, metadata !1355, null}
!1367 = metadata !{i32 112, i32 0, metadata !1355, null}
!1368 = metadata !{i32 117, i32 0, metadata !1355, null}
!1369 = metadata !{i32 119, i32 0, metadata !1355, null}
!1370 = metadata !{i32 124, i32 0, metadata !1355, null}
!1371 = metadata !{i32 127, i32 0, metadata !1355, null}
!1372 = metadata !{i32 132, i32 0, metadata !1355, null}
!1373 = metadata !{i32 135, i32 0, metadata !1355, null}
!1374 = metadata !{i32 142, i32 0, metadata !1355, null}
!1375 = metadata !{i32 145, i32 0, metadata !1355, null}
!1376 = metadata !{i32 147, i32 0, metadata !202, null}
!1377 = metadata !{i32 148, i32 0, metadata !202, null}
!1378 = metadata !{i32 171, i32 0, metadata !259, null}
!1379 = metadata !{i32 172, i32 0, metadata !259, null}
!1380 = metadata !{i32 173, i32 0, metadata !259, null}
!1381 = metadata !{i32 35, i32 0, metadata !273, null}
!1382 = metadata !{i32 41, i32 0, metadata !273, null}
!1383 = metadata !{i32 33, i32 0, metadata !278, null}
!1384 = metadata !{i32 34, i32 0, metadata !1385, null}
!1385 = metadata !{i32 786443, metadata !276, metadata !278, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xstrndup.c]
!1386 = metadata !{i32 35, i32 0, metadata !1385, null}
!1387 = metadata !{i32 36, i32 0, metadata !278, null}
!1388 = metadata !{i32 43, i32 0, metadata !286, null}
!1389 = metadata !{i32 44, i32 0, metadata !286, null}
!1390 = metadata !{i32 72, i32 0, metadata !1391, null}
!1391 = metadata !{i32 786443, metadata !284, metadata !290, i32 72, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/closeout.c]
!1392 = metadata !{i32 74, i32 0, metadata !1393, null}
!1393 = metadata !{i32 786443, metadata !284, metadata !1391, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/closeout.c]
!1394 = metadata !{i32 75, i32 0, metadata !1395, null}
!1395 = metadata !{i32 786443, metadata !284, metadata !1393, i32 75, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/closeout.c]
!1396 = metadata !{i32 76, i32 0, metadata !1395, null}
!1397 = metadata !{i32 79, i32 0, metadata !1395, null}
!1398 = metadata !{i32 81, i32 0, metadata !1393, null}
!1399 = metadata !{i32 84, i32 0, metadata !1400, null}
!1400 = metadata !{i32 786443, metadata !284, metadata !290, i32 84, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/closeout.c]
!1401 = metadata !{i32 85, i32 0, metadata !1400, null}
!1402 = metadata !{i32 86, i32 0, metadata !290, null}
!1403 = metadata !{i32 56, i32 0, metadata !302, null}
!1404 = metadata !{i32 57, i32 0, metadata !302, null}
!1405 = metadata !{i32 58, i32 0, metadata !302, null} ; [ DW_TAG_imported_module ]
!1406 = metadata !{i32 60, i32 0, metadata !1407, null}
!1407 = metadata !{i32 786443, metadata !300, metadata !302, i32 60, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1408 = metadata !{i32 62, i32 0, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !300, metadata !1407, i32 61, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1410 = metadata !{i32 63, i32 0, metadata !1409, null}
!1411 = metadata !{i32 64, i32 0, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !300, metadata !1409, i32 64, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1413 = metadata !{i32 65, i32 0, metadata !1412, null}
!1414 = metadata !{i32 68, i32 0, metadata !1415, null}
!1415 = metadata !{i32 786443, metadata !300, metadata !302, i32 68, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1416 = metadata !{i32 71, i32 0, metadata !302, null}
!1417 = metadata !{i32 72, i32 0, metadata !302, null}
!1418 = metadata !{i32 74, i32 0, metadata !1419, null}
!1419 = metadata !{i32 786443, metadata !300, metadata !302, i32 74, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1420 = metadata !{i32 87, i32 0, metadata !1421, null}
!1421 = metadata !{i32 786443, metadata !300, metadata !1422, i32 87, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1422 = metadata !{i32 786443, metadata !300, metadata !1423, i32 78, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1423 = metadata !{i32 786443, metadata !300, metadata !302, i32 77, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1424 = metadata !{i32 89, i32 0, metadata !1425, null}
!1425 = metadata !{i32 786443, metadata !300, metadata !1421, i32 88, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1426 = metadata !{i32 92, i32 0, metadata !1427, null}
!1427 = metadata !{i32 786443, metadata !300, metadata !1425, i32 92, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1428 = metadata !{i32 93, i32 0, metadata !1427, null}
!1429 = metadata !{i32 95, i32 0, metadata !1430, null}
!1430 = metadata !{i32 786443, metadata !300, metadata !1425, i32 95, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1431 = metadata !{i32 97, i32 0, metadata !1432, null}
!1432 = metadata !{i32 786443, metadata !300, metadata !1430, i32 96, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1433 = metadata !{i32 98, i32 0, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !300, metadata !1432, i32 98, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1435 = metadata !{i32 100, i32 0, metadata !1432, null}
!1436 = metadata !{i32 101, i32 0, metadata !1432, null}
!1437 = metadata !{i32 103, i32 0, metadata !1425, null}
!1438 = metadata !{i32 104, i32 0, metadata !1425, null}
!1439 = metadata !{i32 105, i32 0, metadata !1440, null}
!1440 = metadata !{i32 786443, metadata !300, metadata !1425, i32 105, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1441 = metadata !{i32 107, i32 0, metadata !1425, null}
!1442 = metadata !{i32 108, i32 0, metadata !1425, null}
!1443 = metadata !{i32 109, i32 0, metadata !1425, null}
!1444 = metadata !{i32 110, i32 0, metadata !1425, null}
!1445 = metadata !{i32 112, i32 0, metadata !1422, null}
!1446 = metadata !{i32 113, i32 0, metadata !1447, null}
!1447 = metadata !{i32 786443, metadata !300, metadata !1422, i32 113, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1448 = metadata !{i32 116, i32 0, metadata !1449, null}
!1449 = metadata !{i32 786443, metadata !300, metadata !1450, i32 116, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1450 = metadata !{i32 786443, metadata !300, metadata !1447, i32 114, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1451 = metadata !{i32 122, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !300, metadata !1422, i32 122, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1453 = metadata !{i32 124, i32 0, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !300, metadata !1452, i32 123, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1455 = metadata !{i32 125, i32 0, metadata !1454, null}
!1456 = metadata !{i32 126, i32 0, metadata !1454, null}
!1457 = metadata !{i32 128, i32 0, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !300, metadata !1422, i32 128, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/getndelim2.c]
!1459 = metadata !{i32 135, i32 0, metadata !302, null}
!1460 = metadata !{i32 137, i32 0, metadata !302, null}
!1461 = metadata !{i32 140, i32 0, metadata !302, null}
!1462 = metadata !{i32 141, i32 0, metadata !302, null}
!1463 = metadata !{i32 142, i32 0, metadata !302, null}
!1464 = metadata !{i32 143, i32 0, metadata !302, null}
!1465 = metadata !{i32 150, i32 0, metadata !353, null}
!1466 = metadata !{i32 158, i32 0, metadata !402, null}
!1467 = metadata !{i32 166, i32 0, metadata !403, null}
!1468 = metadata !{i32 175, i32 0, metadata !404, null}
!1469 = metadata !{i32 177, i32 0, metadata !1470, null}
!1470 = metadata !{i32 786443, metadata !351, metadata !404, i32 177, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1471 = metadata !{i32 179, i32 0, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !351, metadata !1473, i32 179, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1473 = metadata !{i32 786443, metadata !351, metadata !1470, i32 178, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1474 = metadata !{i32 181, i32 0, metadata !1475, null}
!1475 = metadata !{i32 786443, metadata !351, metadata !1472, i32 180, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1476 = metadata !{i32 182, i32 0, metadata !1475, null}
!1477 = metadata !{i32 184, i32 0, metadata !1475, null}
!1478 = metadata !{i32 185, i32 0, metadata !1475, null}
!1479 = metadata !{i32 187, i32 0, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !351, metadata !1475, i32 187, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1481 = metadata !{i32 188, i32 0, metadata !1480, null}
!1482 = metadata !{i32 192, i32 0, metadata !404, null}
!1483 = metadata !{i32 202, i32 0, metadata !405, null}
!1484 = metadata !{i32 203, i32 0, metadata !405, null}
!1485 = metadata !{i32 205, i32 0, metadata !1486, null}
!1486 = metadata !{i32 786443, metadata !351, metadata !405, i32 205, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1487 = metadata !{i32 207, i32 0, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !351, metadata !1489, i32 207, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1489 = metadata !{i32 786443, metadata !351, metadata !1486, i32 206, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1490 = metadata !{i32 209, i32 0, metadata !1491, null}
!1491 = metadata !{i32 786443, metadata !351, metadata !1488, i32 208, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1492 = metadata !{i32 212, i32 0, metadata !1491, null}
!1493 = metadata !{i32 213, i32 0, metadata !1491, null}
!1494 = metadata !{i32 216, i32 0, metadata !1491, null}
!1495 = metadata !{i32 217, i32 0, metadata !1491, null}
!1496 = metadata !{i32 221, i32 0, metadata !1497, null}
!1497 = metadata !{i32 786443, metadata !351, metadata !405, i32 221, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1498 = metadata !{i32 222, i32 0, metadata !1497, null}
!1499 = metadata !{i32 224, i32 0, metadata !405, null}
!1500 = metadata !{i32 225, i32 0, metadata !405, null}
!1501 = metadata !{i32 230, i32 0, metadata !408, null}
!1502 = metadata !{i32 231, i32 0, metadata !408, null}
!1503 = metadata !{i32 232, i32 0, metadata !408, null}
!1504 = metadata !{i32 233, i32 0, metadata !408, null}
!1505 = metadata !{i32 235, i32 0, metadata !408, null}
!1506 = metadata !{i32 236, i32 0, metadata !408, null}
!1507 = metadata !{i32 237, i32 0, metadata !408, null}
!1508 = metadata !{i32 240, i32 0, metadata !408, null}
!1509 = metadata !{i32 242, i32 0, metadata !408, null}
!1510 = metadata !{i32 250, i32 0, metadata !451, null}
!1511 = metadata !{i32 251, i32 0, metadata !451, null}
!1512 = metadata !{i32 254, i32 0, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !351, metadata !451, i32 254, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1514 = metadata !{i32 255, i32 0, metadata !1513, null}
!1515 = metadata !{i32 257, i32 0, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !351, metadata !451, i32 257, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1517 = metadata !{i32 258, i32 0, metadata !1516, null}
!1518 = metadata !{i32 260, i32 0, metadata !1519, null}
!1519 = metadata !{i32 786443, metadata !351, metadata !451, i32 260, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1520 = metadata !{i32 261, i32 0, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !351, metadata !1519, i32 261, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1522 = metadata !{i32 262, i32 0, metadata !1521, null}
!1523 = metadata !{i32 264, i32 0, metadata !451, null}
!1524 = metadata !{i32 265, i32 0, metadata !451, null}
!1525 = metadata !{i32 281, i32 0, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !351, metadata !454, i32 281, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1527 = metadata !{i32 282, i32 0, metadata !1526, null}
!1528 = metadata !{i32 284, i32 0, metadata !1529, null}
!1529 = metadata !{i32 786443, metadata !351, metadata !454, i32 284, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1530 = metadata !{i32 285, i32 0, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !351, metadata !1529, i32 285, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1532 = metadata !{i32 286, i32 0, metadata !1531, null}
!1533 = metadata !{i32 287, i32 0, metadata !1534, null}
!1534 = metadata !{i32 786443, metadata !351, metadata !1531, i32 287, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1535 = metadata !{i32 288, i32 0, metadata !1534, null}
!1536 = metadata !{i32 289, i32 0, metadata !454, null}
!1537 = metadata !{i32 298, i32 0, metadata !457, null}
!1538 = metadata !{i32 299, i32 0, metadata !457, null}
!1539 = metadata !{i32 302, i32 0, metadata !1540, null}
!1540 = metadata !{i32 786443, metadata !351, metadata !457, i32 302, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1541 = metadata !{i32 303, i32 0, metadata !1540, null}
!1542 = metadata !{i32 306, i32 0, metadata !1543, null}
!1543 = metadata !{i32 786443, metadata !351, metadata !457, i32 306, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1544 = metadata !{i32 307, i32 0, metadata !1545, null}
!1545 = metadata !{i32 786443, metadata !351, metadata !1543, i32 307, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1546 = metadata !{i32 308, i32 0, metadata !1545, null}
!1547 = metadata !{i32 311, i32 0, metadata !457, null}
!1548 = metadata !{i32 312, i32 0, metadata !1549, null}
!1549 = metadata !{i32 786443, metadata !351, metadata !457, i32 312, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1550 = metadata !{i32 313, i32 0, metadata !1549, null}
!1551 = metadata !{i32 316, i32 0, metadata !457, null}
!1552 = metadata !{i32 317, i32 0, metadata !457, null}
!1553 = metadata !{i32 327, i32 0, metadata !458, null}
!1554 = metadata !{i32 331, i32 0, metadata !1555, null}
!1555 = metadata !{i32 786443, metadata !351, metadata !458, i32 331, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1556 = metadata !{i32 333, i32 0, metadata !1557, null}
!1557 = metadata !{i32 786443, metadata !351, metadata !1558, i32 333, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1558 = metadata !{i32 786443, metadata !351, metadata !1555, i32 332, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1559 = metadata !{i32 335, i32 0, metadata !1560, null}
!1560 = metadata !{i32 786443, metadata !351, metadata !1561, i32 335, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1561 = metadata !{i32 786443, metadata !351, metadata !1557, i32 334, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1562 = metadata !{i32 337, i32 0, metadata !1563, null}
!1563 = metadata !{i32 786443, metadata !351, metadata !1564, i32 337, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1564 = metadata !{i32 786443, metadata !351, metadata !1560, i32 336, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1565 = metadata !{i32 338, i32 0, metadata !1563, null}
!1566 = metadata !{i32 339, i32 0, metadata !1564, null}
!1567 = metadata !{i32 344, i32 0, metadata !458, null}
!1568 = metadata !{i32 345, i32 0, metadata !458, null}
!1569 = metadata !{i32 359, i32 0, metadata !462, null}
!1570 = metadata !{i32 363, i32 0, metadata !1571, null}
!1571 = metadata !{i32 786443, metadata !351, metadata !462, i32 363, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1572 = metadata !{i32 365, i32 0, metadata !1573, null}
!1573 = metadata !{i32 786443, metadata !351, metadata !1574, i32 365, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1574 = metadata !{i32 786443, metadata !351, metadata !1571, i32 364, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1575 = metadata !{i32 367, i32 0, metadata !1576, null}
!1576 = metadata !{i32 786443, metadata !351, metadata !1577, i32 367, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1577 = metadata !{i32 786443, metadata !351, metadata !1573, i32 366, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1578 = metadata !{i32 369, i32 0, metadata !1579, null}
!1579 = metadata !{i32 786443, metadata !351, metadata !1580, i32 369, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1580 = metadata !{i32 786443, metadata !351, metadata !1576, i32 368, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1581 = metadata !{i32 371, i32 0, metadata !1580, null}
!1582 = metadata !{i32 370, i32 0, metadata !1579, null}
!1583 = metadata !{i32 376, i32 0, metadata !462, null}
!1584 = metadata !{i32 377, i32 0, metadata !462, null}
!1585 = metadata !{i32 421, i32 0, metadata !469, null}
!1586 = metadata !{i32 424, i32 0, metadata !1587, null}
!1587 = metadata !{i32 786443, metadata !351, metadata !469, i32 424, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1588 = metadata !{i32 425, i32 0, metadata !1587, null}
!1589 = metadata !{i32 426, i32 0, metadata !469, null}
!1590 = metadata !{i32 472, i32 0, metadata !472, null}
!1591 = metadata !{i32 473, i32 0, metadata !472, null}
!1592 = metadata !{i32 544, i32 0, metadata !1593, null}
!1593 = metadata !{i32 786443, metadata !351, metadata !476, i32 544, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1594 = metadata !{i32 545, i32 0, metadata !1593, null}
!1595 = metadata !{i32 547, i32 0, metadata !476, null}
!1596 = metadata !{i32 548, i32 0, metadata !1597, null}
!1597 = metadata !{i32 786443, metadata !351, metadata !476, i32 548, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1598 = metadata !{i32 549, i32 0, metadata !1597, null}
!1599 = metadata !{i32 551, i32 0, metadata !1600, null}
!1600 = metadata !{i32 786443, metadata !351, metadata !476, i32 551, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1601 = metadata !{i32 552, i32 0, metadata !1600, null}
!1602 = metadata !{i32 553, i32 0, metadata !476, null}
!1603 = metadata !{i32 554, i32 0, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !351, metadata !476, i32 554, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1605 = metadata !{i32 564, i32 0, metadata !1606, null}
!1606 = metadata !{i32 786443, metadata !351, metadata !476, i32 564, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1607 = metadata !{i32 566, i32 0, metadata !1608, null}
!1608 = metadata !{i32 786443, metadata !351, metadata !1606, i32 565, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1609 = metadata !{i32 567, i32 0, metadata !1610, null}
!1610 = metadata !{i32 786443, metadata !351, metadata !1608, i32 567, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1611 = metadata !{i32 569, i32 0, metadata !1608, null}
!1612 = metadata !{i32 570, i32 0, metadata !1608, null}
!1613 = metadata !{i32 572, i32 0, metadata !1614, null}
!1614 = metadata !{i32 786443, metadata !351, metadata !476, i32 572, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1615 = metadata !{i32 574, i32 0, metadata !476, null}
!1616 = metadata !{i32 575, i32 0, metadata !1617, null}
!1617 = metadata !{i32 786443, metadata !351, metadata !476, i32 575, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1618 = metadata !{i32 578, i32 0, metadata !476, null}
!1619 = metadata !{i32 579, i32 0, metadata !476, null}
!1620 = metadata !{i32 580, i32 0, metadata !476, null}
!1621 = metadata !{i32 581, i32 0, metadata !476, null}
!1622 = metadata !{i32 583, i32 0, metadata !476, null}
!1623 = metadata !{i32 584, i32 0, metadata !476, null}
!1624 = metadata !{i32 585, i32 0, metadata !476, null}
!1625 = metadata !{i32 587, i32 0, metadata !476, null}
!1626 = metadata !{i32 591, i32 0, metadata !476, null}
!1627 = metadata !{i32 594, i32 0, metadata !476, null}
!1628 = metadata !{i32 595, i32 0, metadata !476, null}
!1629 = metadata !{i32 596, i32 0, metadata !476, null}
!1630 = metadata !{i32 607, i32 0, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !351, metadata !480, i32 607, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1632 = metadata !{i32 609, i32 0, metadata !1633, null}
!1633 = metadata !{i32 786443, metadata !351, metadata !1634, i32 609, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1634 = metadata !{i32 786443, metadata !351, metadata !1631, i32 608, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1635 = metadata !{i32 615, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !351, metadata !1637, i32 615, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1637 = metadata !{i32 786443, metadata !351, metadata !1633, i32 610, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1638 = metadata !{i32 617, i32 0, metadata !1639, null}
!1639 = metadata !{i32 786443, metadata !351, metadata !1640, i32 617, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1640 = metadata !{i32 786443, metadata !351, metadata !1636, i32 616, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1641 = metadata !{i32 618, i32 0, metadata !1639, null}
!1642 = metadata !{i32 619, i32 0, metadata !1640, null}
!1643 = metadata !{i32 621, i32 0, metadata !1640, null}
!1644 = metadata !{i32 624, i32 0, metadata !1640, null}
!1645 = metadata !{i32 625, i32 0, metadata !1640, null}
!1646 = metadata !{i32 629, i32 0, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !351, metadata !1637, i32 629, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1648 = metadata !{i32 630, i32 0, metadata !1647, null}
!1649 = metadata !{i32 631, i32 0, metadata !1637, null}
!1650 = metadata !{i32 632, i32 0, metadata !1637, null}
!1651 = metadata !{i32 633, i32 0, metadata !1637, null}
!1652 = metadata !{i32 636, i32 0, metadata !480, null}
!1653 = metadata !{i32 637, i32 0, metadata !480, null}
!1654 = metadata !{i32 638, i32 0, metadata !480, null}
!1655 = metadata !{i32 653, i32 0, metadata !1656, null}
!1656 = metadata !{i32 786443, metadata !351, metadata !483, i32 653, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1657 = metadata !{i32 655, i32 0, metadata !1658, null}
!1658 = metadata !{i32 786443, metadata !351, metadata !1659, i32 655, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1659 = metadata !{i32 786443, metadata !351, metadata !1656, i32 654, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1660 = metadata !{i32 657, i32 0, metadata !1661, null}
!1661 = metadata !{i32 786443, metadata !351, metadata !1662, i32 657, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1662 = metadata !{i32 786443, metadata !351, metadata !1658, i32 656, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1663 = metadata !{i32 659, i32 0, metadata !1664, null}
!1664 = metadata !{i32 786443, metadata !351, metadata !1665, i32 659, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1665 = metadata !{i32 786443, metadata !351, metadata !1661, i32 658, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1666 = metadata !{i32 661, i32 0, metadata !1667, null}
!1667 = metadata !{i32 786443, metadata !351, metadata !1664, i32 660, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1668 = metadata !{i32 674, i32 0, metadata !1669, null}
!1669 = metadata !{i32 786443, metadata !351, metadata !483, i32 674, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1670 = metadata !{i32 676, i32 0, metadata !1671, null}
!1671 = metadata !{i32 786443, metadata !351, metadata !1672, i32 676, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1672 = metadata !{i32 786443, metadata !351, metadata !1669, i32 675, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1673 = metadata !{i32 678, i32 0, metadata !1674, null}
!1674 = metadata !{i32 786443, metadata !351, metadata !1671, i32 677, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1675 = metadata !{i32 679, i32 0, metadata !1674, null}
!1676 = metadata !{i32 684, i32 0, metadata !1677, null}
!1677 = metadata !{i32 786443, metadata !351, metadata !483, i32 684, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1678 = metadata !{i32 686, i32 0, metadata !1679, null}
!1679 = metadata !{i32 786443, metadata !351, metadata !1677, i32 685, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1680 = metadata !{i32 687, i32 0, metadata !1679, null}
!1681 = metadata !{i32 693, i32 0, metadata !483, null}
!1682 = metadata !{i32 694, i32 0, metadata !483, null}
!1683 = metadata !{i32 695, i32 0, metadata !483, null}
!1684 = metadata !{i32 824, i32 0, metadata !484, null}
!1685 = metadata !{i32 826, i32 0, metadata !1686, null}
!1686 = metadata !{i32 786443, metadata !351, metadata !484, i32 826, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1687 = metadata !{i32 827, i32 0, metadata !1686, null}
!1688 = metadata !{i32 834, i32 0, metadata !484, null}
!1689 = metadata !{i32 836, i32 0, metadata !1690, null}
!1690 = metadata !{i32 786443, metadata !351, metadata !484, i32 836, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1691 = metadata !{i32 837, i32 0, metadata !1692, null}
!1692 = metadata !{i32 786443, metadata !351, metadata !1690, i32 837, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1693 = metadata !{i32 838, i32 0, metadata !1694, null}
!1694 = metadata !{i32 786443, metadata !351, metadata !1692, i32 838, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1695 = metadata !{i32 840, i32 0, metadata !1696, null}
!1696 = metadata !{i32 786443, metadata !351, metadata !1694, i32 839, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1697 = metadata !{i32 841, i32 0, metadata !1696, null}
!1698 = metadata !{i32 843, i32 0, metadata !1696, null}
!1699 = metadata !{i32 845, i32 0, metadata !1700, null}
!1700 = metadata !{i32 786443, metadata !351, metadata !1696, i32 845, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1701 = metadata !{i32 846, i32 0, metadata !1700, null}
!1702 = metadata !{i32 848, i32 0, metadata !1696, null}
!1703 = metadata !{i32 850, i32 0, metadata !1704, null}
!1704 = metadata !{i32 786443, metadata !351, metadata !1696, i32 850, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1705 = metadata !{i32 852, i32 0, metadata !1706, null}
!1706 = metadata !{i32 786443, metadata !351, metadata !1707, i32 852, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1707 = metadata !{i32 786443, metadata !351, metadata !1704, i32 851, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1708 = metadata !{i32 856, i32 0, metadata !1709, null}
!1709 = metadata !{i32 786443, metadata !351, metadata !1706, i32 853, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1710 = metadata !{i32 858, i32 0, metadata !1711, null}
!1711 = metadata !{i32 786443, metadata !351, metadata !1709, i32 858, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1712 = metadata !{i32 859, i32 0, metadata !1711, null}
!1713 = metadata !{i32 861, i32 0, metadata !1709, null}
!1714 = metadata !{i32 862, i32 0, metadata !1709, null}
!1715 = metadata !{i32 863, i32 0, metadata !1709, null}
!1716 = metadata !{i32 864, i32 0, metadata !1709, null}
!1717 = metadata !{i32 869, i32 0, metadata !1718, null}
!1718 = metadata !{i32 786443, metadata !351, metadata !1706, i32 866, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1719 = metadata !{i32 870, i32 0, metadata !1718, null}
!1720 = metadata !{i32 879, i32 0, metadata !1721, null}
!1721 = metadata !{i32 786443, metadata !351, metadata !1704, i32 874, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1722 = metadata !{i32 880, i32 0, metadata !1721, null}
!1723 = metadata !{i32 881, i32 0, metadata !1724, null}
!1724 = metadata !{i32 786443, metadata !351, metadata !1721, i32 881, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1725 = metadata !{i32 882, i32 0, metadata !1724, null}
!1726 = metadata !{i32 886, i32 0, metadata !484, null}
!1727 = metadata !{i32 887, i32 0, metadata !484, null}
!1728 = metadata !{i32 888, i32 0, metadata !484, null}
!1729 = metadata !{i32 889, i32 0, metadata !484, null}
!1730 = metadata !{i32 890, i32 0, metadata !484, null}
!1731 = metadata !{i32 891, i32 0, metadata !484, null}
!1732 = metadata !{i32 896, i32 0, metadata !484, null}
!1733 = metadata !{i32 898, i32 0, metadata !484, null}
!1734 = metadata !{i32 899, i32 0, metadata !484, null}
!1735 = metadata !{i32 912, i32 0, metadata !1736, null}
!1736 = metadata !{i32 786443, metadata !351, metadata !487, i32 912, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1737 = metadata !{i32 913, i32 0, metadata !1736, null}
!1738 = metadata !{i32 916, i32 0, metadata !1739, null}
!1739 = metadata !{i32 786443, metadata !351, metadata !487, i32 916, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1740 = metadata !{i32 917, i32 0, metadata !1739, null}
!1741 = metadata !{i32 921, i32 0, metadata !1742, null}
!1742 = metadata !{i32 786443, metadata !351, metadata !487, i32 921, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1743 = metadata !{i32 923, i32 0, metadata !1744, null}
!1744 = metadata !{i32 786443, metadata !351, metadata !1742, i32 922, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1745 = metadata !{i32 925, i32 0, metadata !1746, null}
!1746 = metadata !{i32 786443, metadata !351, metadata !1744, i32 925, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1747 = metadata !{i32 926, i32 0, metadata !1746, null}
!1748 = metadata !{i32 930, i32 0, metadata !1744, null}
!1749 = metadata !{i32 931, i32 0, metadata !1744, null}
!1750 = metadata !{i32 932, i32 0, metadata !1744, null}
!1751 = metadata !{i32 933, i32 0, metadata !1744, null}
!1752 = metadata !{i32 934, i32 0, metadata !1744, null}
!1753 = metadata !{i32 939, i32 0, metadata !487, null}
!1754 = metadata !{i32 940, i32 0, metadata !487, null}
!1755 = metadata !{i32 941, i32 0, metadata !487, null}
!1756 = metadata !{i32 948, i32 0, metadata !1757, null}
!1757 = metadata !{i32 786443, metadata !351, metadata !487, i32 948, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1758 = metadata !{i32 953, i32 0, metadata !1759, null}
!1759 = metadata !{i32 786443, metadata !351, metadata !1757, i32 950, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1760 = metadata !{i32 954, i32 0, metadata !1761, null}
!1761 = metadata !{i32 786443, metadata !351, metadata !1759, i32 954, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1762 = metadata !{i32 957, i32 0, metadata !1763, null}
!1763 = metadata !{i32 786443, metadata !351, metadata !1761, i32 956, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1764 = metadata !{i32 958, i32 0, metadata !1763, null}
!1765 = metadata !{i32 964, i32 0, metadata !1766, null}
!1766 = metadata !{i32 786443, metadata !351, metadata !1763, i32 964, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1767 = metadata !{i32 965, i32 0, metadata !1766, null}
!1768 = metadata !{i32 968, i32 0, metadata !1769, null}
!1769 = metadata !{i32 786443, metadata !351, metadata !1763, i32 968, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1770 = metadata !{i32 969, i32 0, metadata !1769, null}
!1771 = metadata !{i32 973, i32 0, metadata !487, null}
!1772 = metadata !{i32 974, i32 0, metadata !487, null}
!1773 = metadata !{i32 986, i32 0, metadata !490, null}
!1774 = metadata !{i32 987, i32 0, metadata !1775, null}
!1775 = metadata !{i32 786443, metadata !351, metadata !490, i32 987, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1776 = metadata !{i32 988, i32 0, metadata !1775, null}
!1777 = metadata !{i32 990, i32 0, metadata !490, null}
!1778 = metadata !{i32 991, i32 0, metadata !1779, null}
!1779 = metadata !{i32 786443, metadata !351, metadata !490, i32 991, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1780 = metadata !{i32 993, i32 0, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !351, metadata !1779, i32 992, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1782 = metadata !{i32 998, i32 0, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !351, metadata !1781, i32 998, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1784 = metadata !{i32 1003, i32 0, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !351, metadata !1783, i32 1000, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1786 = metadata !{i32 1004, i32 0, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !351, metadata !1785, i32 1004, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1788 = metadata !{i32 1007, i32 0, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !351, metadata !1787, i32 1006, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1790 = metadata !{i32 1008, i32 0, metadata !1789, null}
!1791 = metadata !{i32 1014, i32 0, metadata !1789, null}
!1792 = metadata !{i32 1015, i32 0, metadata !1789, null}
!1793 = metadata !{i32 1019, i32 0, metadata !490, null}
!1794 = metadata !{i32 1020, i32 0, metadata !490, null}
!1795 = metadata !{i32 484, i32 0, metadata !507, null}
!1796 = metadata !{i32 491, i32 0, metadata !507, null}
!1797 = metadata !{i32 493, i32 0, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !351, metadata !507, i32 493, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1799 = metadata !{i32 500, i32 0, metadata !1798, null}
!1800 = metadata !{i32 502, i32 0, metadata !507, null}
!1801 = metadata !{i32 503, i32 0, metadata !507, null}
!1802 = metadata !{i32 504, i32 0, metadata !507, null}
!1803 = metadata !{i32 457, i32 0, metadata !1804, null}
!1804 = metadata !{i32 786443, metadata !351, metadata !501, i32 457, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1805 = metadata !{i32 458, i32 0, metadata !1804, null}
!1806 = metadata !{i32 461, i32 0, metadata !501, null}
!1807 = metadata !{i32 463, i32 0, metadata !501, null}
!1808 = metadata !{i32 464, i32 0, metadata !501, null}
!1809 = metadata !{i32 466, i32 0, metadata !501, null}
!1810 = metadata !{i32 707, i32 0, metadata !1811, null}
!1811 = metadata !{i32 786443, metadata !351, metadata !498, i32 707, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1812 = metadata !{i32 709, i32 0, metadata !1813, null}
!1813 = metadata !{i32 786443, metadata !351, metadata !1811, i32 708, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1814 = metadata !{i32 710, i32 0, metadata !1813, null}
!1815 = metadata !{i32 711, i32 0, metadata !1813, null}
!1816 = metadata !{i32 717, i32 0, metadata !1817, null}
!1817 = metadata !{i32 786443, metadata !351, metadata !1811, i32 713, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1818 = metadata !{i32 721, i32 0, metadata !498, null}
!1819 = metadata !{i32 730, i32 0, metadata !495, null}
!1820 = metadata !{i32 731, i32 0, metadata !495, null}
!1821 = metadata !{i32 732, i32 0, metadata !495, null}
!1822 = metadata !{i32 733, i32 0, metadata !495, null}
!1823 = metadata !{i32 745, i32 0, metadata !491, null}
!1824 = metadata !{i32 746, i32 0, metadata !491, null}
!1825 = metadata !{i32 749, i32 0, metadata !1826, null}
!1826 = metadata !{i32 786443, metadata !351, metadata !491, i32 749, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1827 = metadata !{i32 750, i32 0, metadata !1826, null}
!1828 = metadata !{i32 752, i32 0, metadata !491, null}
!1829 = metadata !{i32 755, i32 0, metadata !1830, null}
!1830 = metadata !{i32 786443, metadata !351, metadata !491, i32 755, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1831 = metadata !{i32 756, i32 0, metadata !1830, null}
!1832 = metadata !{i32 759, i32 0, metadata !1833, null}
!1833 = metadata !{i32 786443, metadata !351, metadata !491, i32 759, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1834 = metadata !{i32 761, i32 0, metadata !1835, null}
!1835 = metadata !{i32 786443, metadata !351, metadata !1833, i32 760, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1836 = metadata !{i32 763, i32 0, metadata !1837, null}
!1837 = metadata !{i32 786443, metadata !351, metadata !1835, i32 763, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1838 = metadata !{i32 765, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !351, metadata !1840, i32 765, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1840 = metadata !{i32 786443, metadata !351, metadata !1837, i32 764, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1841 = metadata !{i32 767, i32 0, metadata !1842, null}
!1842 = metadata !{i32 786443, metadata !351, metadata !1839, i32 766, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1843 = metadata !{i32 771, i32 0, metadata !1842, null}
!1844 = metadata !{i32 772, i32 0, metadata !1842, null}
!1845 = metadata !{i32 773, i32 0, metadata !1842, null}
!1846 = metadata !{i32 776, i32 0, metadata !1847, null}
!1847 = metadata !{i32 786443, metadata !351, metadata !1839, i32 775, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1848 = metadata !{i32 780, i32 0, metadata !1835, null}
!1849 = metadata !{i32 784, i32 0, metadata !1850, null}
!1850 = metadata !{i32 786443, metadata !351, metadata !491, i32 784, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1851 = metadata !{i32 786, i32 0, metadata !1852, null}
!1852 = metadata !{i32 786443, metadata !351, metadata !1853, i32 786, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1853 = metadata !{i32 786443, metadata !351, metadata !1850, i32 785, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1854 = metadata !{i32 788, i32 0, metadata !1855, null}
!1855 = metadata !{i32 786443, metadata !351, metadata !1852, i32 787, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1856 = metadata !{i32 790, i32 0, metadata !1857, null}
!1857 = metadata !{i32 786443, metadata !351, metadata !1855, i32 790, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1858 = metadata !{i32 792, i32 0, metadata !1859, null}
!1859 = metadata !{i32 786443, metadata !351, metadata !1857, i32 791, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1860 = metadata !{i32 796, i32 0, metadata !1859, null}
!1861 = metadata !{i32 797, i32 0, metadata !1859, null}
!1862 = metadata !{i32 798, i32 0, metadata !1859, null}
!1863 = metadata !{i32 800, i32 0, metadata !1855, null}
!1864 = metadata !{i32 805, i32 0, metadata !491, null}
!1865 = metadata !{i32 806, i32 0, metadata !491, null}
!1866 = metadata !{i32 437, i32 0, metadata !504, null}
!1867 = metadata !{i32 438, i32 0, metadata !504, null}
!1868 = metadata !{i32 440, i32 0, metadata !504, null}
!1869 = metadata !{i32 442, i32 0, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !351, metadata !504, i32 441, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/hash.c]
!1871 = metadata !{i32 443, i32 0, metadata !1870, null}
!1872 = metadata !{i32 444, i32 0, metadata !1870, null}
!1873 = metadata !{i32 445, i32 0, metadata !1870, null}
!1874 = metadata !{i32 447, i32 0, metadata !504, null}
!1875 = metadata !{i32 32, i32 0, metadata !526, null}
!1876 = metadata !{i32 40, i32 0, metadata !530, null}
!1877 = metadata !{i32 108, i32 0, metadata !539, null}
!1878 = metadata !{i32 109, i32 0, metadata !539, null}
!1879 = metadata !{i32 111, i32 0, metadata !539, null}
!1880 = metadata !{i32 112, i32 0, metadata !539, null}
!1881 = metadata !{i32 119, i32 0, metadata !551, null}
!1882 = metadata !{i32 127, i32 0, metadata !554, null}
!1883 = metadata !{i32 128, i32 0, metadata !554, null}
!1884 = metadata !{i32 138, i32 0, metadata !557, null}
!1885 = metadata !{i32 139, i32 0, metadata !557, null}
!1886 = metadata !{i32 141, i32 0, metadata !557, null}
!1887 = metadata !{i32 142, i32 0, metadata !557, null}
!1888 = metadata !{i32 143, i32 0, metadata !557, null}
!1889 = metadata !{i32 144, i32 0, metadata !557, null}
!1890 = metadata !{i32 525, i32 0, metadata !560, null}
!1891 = metadata !{i32 526, i32 0, metadata !560, null}
!1892 = metadata !{i32 527, i32 0, metadata !560, null}
!1893 = metadata !{i32 529, i32 0, metadata !560, null}
!1894 = metadata !{i32 530, i32 0, metadata !560, null}
!1895 = metadata !{i32 539, i32 0, metadata !566, null}
!1896 = metadata !{i32 540, i32 0, metadata !566, null}
!1897 = metadata !{i32 541, i32 0, metadata !566, null}
!1898 = metadata !{i32 542, i32 0, metadata !566, null}
!1899 = metadata !{i32 543, i32 0, metadata !566, null}
!1900 = metadata !{i32 544, i32 0, metadata !566, null}
!1901 = metadata !{i32 564, i32 0, metadata !569, null}
!1902 = metadata !{i32 566, i32 0, metadata !1903, null}
!1903 = metadata !{i32 786443, metadata !534, metadata !569, i32 566, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1904 = metadata !{i32 567, i32 0, metadata !1903, null}
!1905 = metadata !{i32 568, i32 0, metadata !1906, null}
!1906 = metadata !{i32 786443, metadata !534, metadata !569, i32 568, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1907 = metadata !{i32 570, i32 0, metadata !1908, null}
!1908 = metadata !{i32 786443, metadata !534, metadata !1906, i32 569, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1909 = metadata !{i32 571, i32 0, metadata !1908, null}
!1910 = metadata !{i32 572, i32 0, metadata !1908, null}
!1911 = metadata !{i32 573, i32 0, metadata !1908, null}
!1912 = metadata !{i32 574, i32 0, metadata !1913, null}
!1913 = metadata !{i32 786443, metadata !534, metadata !569, i32 574, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1914 = metadata !{i32 576, i32 0, metadata !1915, null}
!1915 = metadata !{i32 786443, metadata !534, metadata !1913, i32 575, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1916 = metadata !{i32 577, i32 0, metadata !1915, null}
!1917 = metadata !{i32 578, i32 0, metadata !1915, null}
!1918 = metadata !{i32 579, i32 0, metadata !569, null}
!1919 = metadata !{i32 580, i32 0, metadata !569, null}
!1920 = metadata !{i32 644, i32 0, metadata !570, null}
!1921 = metadata !{i32 650, i32 0, metadata !573, null}
!1922 = metadata !{i32 666, i32 0, metadata !576, null}
!1923 = metadata !{i32 667, i32 0, metadata !576, null}
!1924 = metadata !{i32 674, i32 0, metadata !579, null}
!1925 = metadata !{i32 675, i32 0, metadata !579, null}
!1926 = metadata !{i32 681, i32 0, metadata !582, null}
!1927 = metadata !{i32 688, i32 0, metadata !585, null}
!1928 = metadata !{i32 689, i32 0, metadata !585, null}
!1929 = metadata !{i32 690, i32 0, metadata !585, null}
!1930 = metadata !{i32 696, i32 0, metadata !588, null}
!1931 = metadata !{i32 178, i32 0, metadata !595, null}
!1932 = metadata !{i32 179, i32 0, metadata !595, null}
!1933 = metadata !{i32 180, i32 0, metadata !595, null}
!1934 = metadata !{i32 181, i32 0, metadata !595, null}
!1935 = metadata !{i32 182, i32 0, metadata !595, null}
!1936 = metadata !{i32 193, i32 0, metadata !595, null}
!1937 = metadata !{i32 196, i32 0, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !534, metadata !1939, i32 196, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1939 = metadata !{i32 786443, metadata !534, metadata !1940, i32 196, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1940 = metadata !{i32 786443, metadata !534, metadata !595, i32 194, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1941 = metadata !{i32 196, i32 0, metadata !1939, null}
!1942 = metadata !{i32 197, i32 0, metadata !1940, null}
!1943 = metadata !{i32 198, i32 0, metadata !1940, null}
!1944 = metadata !{i32 199, i32 0, metadata !1940, null}
!1945 = metadata !{i32 200, i32 0, metadata !1940, null}
!1946 = metadata !{i32 203, i32 0, metadata !1940, null}
!1947 = metadata !{i32 204, i32 0, metadata !1940, null}
!1948 = metadata !{i32 229, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !534, metadata !1940, i32 208, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1950 = metadata !{i32 230, i32 0, metadata !1949, null}
!1951 = metadata !{i32 231, i32 0, metadata !1952, null}
!1952 = metadata !{i32 786443, metadata !534, metadata !1949, i32 231, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1953 = metadata !{i32 232, i32 0, metadata !1954, null}
!1954 = metadata !{i32 786443, metadata !534, metadata !1955, i32 232, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1955 = metadata !{i32 786443, metadata !534, metadata !1952, i32 232, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1956 = metadata !{i32 232, i32 0, metadata !1955, null}
!1957 = metadata !{i32 233, i32 0, metadata !1949, null}
!1958 = metadata !{i32 234, i32 0, metadata !1949, null}
!1959 = metadata !{i32 235, i32 0, metadata !1949, null}
!1960 = metadata !{i32 237, i32 0, metadata !1940, null}
!1961 = metadata !{i32 240, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !534, metadata !1963, i32 240, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1963 = metadata !{i32 786443, metadata !534, metadata !1940, i32 240, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1964 = metadata !{i32 240, i32 0, metadata !1963, null}
!1965 = metadata !{i32 241, i32 0, metadata !1940, null}
!1966 = metadata !{i32 242, i32 0, metadata !1940, null}
!1967 = metadata !{i32 243, i32 0, metadata !1940, null}
!1968 = metadata !{i32 249, i32 0, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !534, metadata !595, i32 249, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1970 = metadata !{i32 254, i32 0, metadata !1971, null}
!1971 = metadata !{i32 786443, metadata !534, metadata !1972, i32 254, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1972 = metadata !{i32 786443, metadata !534, metadata !1969, i32 250, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1973 = metadata !{i32 257, i32 0, metadata !1971, null}
!1974 = metadata !{i32 258, i32 0, metadata !1975, null}
!1975 = metadata !{i32 786443, metadata !534, metadata !1976, i32 258, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1976 = metadata !{i32 786443, metadata !534, metadata !1971, i32 258, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1977 = metadata !{i32 258, i32 0, metadata !1976, null}
!1978 = metadata !{i32 260, i32 0, metadata !1972, null}
!1979 = metadata !{i32 261, i32 0, metadata !1972, null}
!1980 = metadata !{i32 264, i32 0, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !534, metadata !1982, i32 264, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1982 = metadata !{i32 786443, metadata !534, metadata !1972, i32 262, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1983 = metadata !{i32 266, i32 0, metadata !1984, null}
!1984 = metadata !{i32 786443, metadata !534, metadata !1985, i32 266, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1985 = metadata !{i32 786443, metadata !534, metadata !1986, i32 266, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1986 = metadata !{i32 786443, metadata !534, metadata !1981, i32 265, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1987 = metadata !{i32 266, i32 0, metadata !1985, null}
!1988 = metadata !{i32 267, i32 0, metadata !1989, null}
!1989 = metadata !{i32 786443, metadata !534, metadata !1990, i32 267, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1990 = metadata !{i32 786443, metadata !534, metadata !1986, i32 267, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1991 = metadata !{i32 267, i32 0, metadata !1990, null}
!1992 = metadata !{i32 268, i32 0, metadata !1993, null}
!1993 = metadata !{i32 786443, metadata !534, metadata !1994, i32 268, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1994 = metadata !{i32 786443, metadata !534, metadata !1986, i32 268, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!1995 = metadata !{i32 268, i32 0, metadata !1994, null}
!1996 = metadata !{i32 269, i32 0, metadata !1986, null}
!1997 = metadata !{i32 270, i32 0, metadata !1986, null}
!1998 = metadata !{i32 274, i32 0, metadata !1982, null}
!1999 = metadata !{i32 280, i32 0, metadata !2000, null}
!2000 = metadata !{i32 786443, metadata !534, metadata !2001, i32 280, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2001 = metadata !{i32 786443, metadata !534, metadata !1982, i32 275, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2002 = metadata !{i32 281, i32 0, metadata !2000, null}
!2003 = metadata !{i32 288, i32 0, metadata !2004, null}
!2004 = metadata !{i32 786443, metadata !534, metadata !2000, i32 282, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2005 = metadata !{i32 289, i32 0, metadata !2004, null}
!2006 = metadata !{i32 290, i32 0, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !534, metadata !2008, i32 290, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2008 = metadata !{i32 786443, metadata !534, metadata !2004, i32 290, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2009 = metadata !{i32 290, i32 0, metadata !2008, null}
!2010 = metadata !{i32 291, i32 0, metadata !2011, null}
!2011 = metadata !{i32 786443, metadata !534, metadata !2012, i32 291, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2012 = metadata !{i32 786443, metadata !534, metadata !2004, i32 291, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2013 = metadata !{i32 291, i32 0, metadata !2012, null}
!2014 = metadata !{i32 292, i32 0, metadata !2015, null}
!2015 = metadata !{i32 786443, metadata !534, metadata !2016, i32 292, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2016 = metadata !{i32 786443, metadata !534, metadata !2004, i32 292, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2017 = metadata !{i32 292, i32 0, metadata !2016, null}
!2018 = metadata !{i32 293, i32 0, metadata !2004, null}
!2019 = metadata !{i32 305, i32 0, metadata !1982, null}
!2020 = metadata !{i32 306, i32 0, metadata !1982, null}
!2021 = metadata !{i32 307, i32 0, metadata !1982, null}
!2022 = metadata !{i32 308, i32 0, metadata !1982, null}
!2023 = metadata !{i32 309, i32 0, metadata !1982, null}
!2024 = metadata !{i32 310, i32 0, metadata !1982, null}
!2025 = metadata !{i32 311, i32 0, metadata !1982, null}
!2026 = metadata !{i32 312, i32 0, metadata !1982, null}
!2027 = metadata !{i32 315, i32 0, metadata !2028, null}
!2028 = metadata !{i32 786443, metadata !534, metadata !1982, i32 315, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2029 = metadata !{i32 318, i32 0, metadata !2030, null}
!2030 = metadata !{i32 786443, metadata !534, metadata !1982, i32 318, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2031 = metadata !{i32 320, i32 0, metadata !2032, null}
!2032 = metadata !{i32 786443, metadata !534, metadata !2030, i32 319, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2033 = metadata !{i32 321, i32 0, metadata !2032, null}
!2034 = metadata !{i32 326, i32 0, metadata !2035, null}
!2035 = metadata !{i32 786443, metadata !534, metadata !1982, i32 326, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2036 = metadata !{i32 330, i32 0, metadata !2037, null}
!2037 = metadata !{i32 786443, metadata !534, metadata !1982, i32 330, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2038 = metadata !{i32 346, i32 0, metadata !2039, null}
!2039 = metadata !{i32 786443, metadata !534, metadata !1982, i32 346, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2040 = metadata !{i32 351, i32 0, metadata !1982, null}
!2041 = metadata !{i32 357, i32 0, metadata !2042, null}
!2042 = metadata !{i32 786443, metadata !534, metadata !2043, i32 357, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2043 = metadata !{i32 786443, metadata !534, metadata !2044, i32 357, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2044 = metadata !{i32 786443, metadata !534, metadata !1982, i32 352, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2045 = metadata !{i32 357, i32 0, metadata !2043, null}
!2046 = metadata !{i32 358, i32 0, metadata !2047, null}
!2047 = metadata !{i32 786443, metadata !534, metadata !2048, i32 358, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2048 = metadata !{i32 786443, metadata !534, metadata !2044, i32 358, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2049 = metadata !{i32 358, i32 0, metadata !2048, null}
!2050 = metadata !{i32 359, i32 0, metadata !2051, null}
!2051 = metadata !{i32 786443, metadata !534, metadata !2052, i32 359, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2052 = metadata !{i32 786443, metadata !534, metadata !2044, i32 359, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2053 = metadata !{i32 359, i32 0, metadata !2052, null}
!2054 = metadata !{i32 360, i32 0, metadata !2044, null}
!2055 = metadata !{i32 395, i32 0, metadata !2056, null}
!2056 = metadata !{i32 786443, metadata !534, metadata !2057, i32 395, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2057 = metadata !{i32 786443, metadata !534, metadata !1982, i32 389, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2058 = metadata !{i32 397, i32 0, metadata !2059, null}
!2059 = metadata !{i32 786443, metadata !534, metadata !2056, i32 396, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2060 = metadata !{i32 398, i32 0, metadata !2059, null}
!2061 = metadata !{i32 399, i32 0, metadata !2059, null}
!2062 = metadata !{i32 403, i32 0, metadata !2063, null}
!2063 = metadata !{i32 786443, metadata !534, metadata !2056, i32 401, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2064 = metadata !{i32 405, i32 0, metadata !2063, null}
!2065 = metadata !{i32 406, i32 0, metadata !2063, null}
!2066 = metadata !{i32 407, i32 0, metadata !2067, null}
!2067 = metadata !{i32 786443, metadata !534, metadata !2063, i32 407, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2068 = metadata !{i32 408, i32 0, metadata !2067, null}
!2069 = metadata !{i32 413, i32 0, metadata !2070, null}
!2070 = metadata !{i32 786443, metadata !534, metadata !2063, i32 411, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2071 = metadata !{i32 415, i32 0, metadata !2072, null}
!2072 = metadata !{i32 786443, metadata !534, metadata !2070, i32 415, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2073 = metadata !{i32 417, i32 0, metadata !2074, null}
!2074 = metadata !{i32 786443, metadata !534, metadata !2072, i32 417, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2075 = metadata !{i32 419, i32 0, metadata !2076, null}
!2076 = metadata !{i32 786443, metadata !534, metadata !2074, i32 418, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2077 = metadata !{i32 420, i32 0, metadata !2076, null}
!2078 = metadata !{i32 422, i32 0, metadata !2079, null}
!2079 = metadata !{i32 786443, metadata !534, metadata !2074, i32 422, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2080 = metadata !{i32 424, i32 0, metadata !2081, null}
!2081 = metadata !{i32 786443, metadata !534, metadata !2079, i32 423, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2082 = metadata !{i32 425, i32 0, metadata !2081, null}
!2083 = metadata !{i32 426, i32 0, metadata !2081, null}
!2084 = metadata !{i32 435, i32 0, metadata !2085, null}
!2085 = metadata !{i32 786443, metadata !534, metadata !2086, i32 435, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2086 = metadata !{i32 786443, metadata !534, metadata !2079, i32 430, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2087 = metadata !{i32 438, i32 0, metadata !2088, null}
!2088 = metadata !{i32 786443, metadata !534, metadata !2089, i32 438, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2089 = metadata !{i32 786443, metadata !534, metadata !2085, i32 436, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2090 = metadata !{i32 439, i32 0, metadata !2088, null}
!2091 = metadata !{i32 450, i32 0, metadata !2092, null}
!2092 = metadata !{i32 786443, metadata !534, metadata !2086, i32 450, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2093 = metadata !{i32 451, i32 0, metadata !2092, null}
!2094 = metadata !{i32 452, i32 0, metadata !2086, null}
!2095 = metadata !{i32 455, i32 0, metadata !2063, null}
!2096 = metadata !{i32 458, i32 0, metadata !2097, null}
!2097 = metadata !{i32 786443, metadata !534, metadata !2057, i32 458, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2098 = metadata !{i32 462, i32 0, metadata !2099, null}
!2099 = metadata !{i32 786443, metadata !534, metadata !2097, i32 459, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2100 = metadata !{i32 464, i32 0, metadata !2101, null}
!2101 = metadata !{i32 786443, metadata !534, metadata !2099, i32 464, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2102 = metadata !{i32 466, i32 0, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !534, metadata !2104, i32 466, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2104 = metadata !{i32 786443, metadata !534, metadata !2101, i32 465, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2105 = metadata !{i32 468, i32 0, metadata !2106, null}
!2106 = metadata !{i32 786443, metadata !534, metadata !2107, i32 468, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2107 = metadata !{i32 786443, metadata !534, metadata !2108, i32 468, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2108 = metadata !{i32 786443, metadata !534, metadata !2103, i32 467, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2109 = metadata !{i32 468, i32 0, metadata !2107, null}
!2110 = metadata !{i32 469, i32 0, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !534, metadata !2112, i32 469, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2112 = metadata !{i32 786443, metadata !534, metadata !2108, i32 469, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2113 = metadata !{i32 469, i32 0, metadata !2112, null}
!2114 = metadata !{i32 470, i32 0, metadata !2115, null}
!2115 = metadata !{i32 786443, metadata !534, metadata !2116, i32 470, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2116 = metadata !{i32 786443, metadata !534, metadata !2108, i32 470, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2117 = metadata !{i32 470, i32 0, metadata !2116, null}
!2118 = metadata !{i32 471, i32 0, metadata !2108, null}
!2119 = metadata !{i32 472, i32 0, metadata !2108, null}
!2120 = metadata !{i32 473, i32 0, metadata !2121, null}
!2121 = metadata !{i32 786443, metadata !534, metadata !2104, i32 473, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2122 = metadata !{i32 475, i32 0, metadata !2123, null}
!2123 = metadata !{i32 786443, metadata !534, metadata !2124, i32 475, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2124 = metadata !{i32 786443, metadata !534, metadata !2104, i32 475, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2125 = metadata !{i32 475, i32 0, metadata !2124, null}
!2126 = metadata !{i32 476, i32 0, metadata !2104, null}
!2127 = metadata !{i32 477, i32 0, metadata !2104, null}
!2128 = metadata !{i32 484, i32 0, metadata !2129, null}
!2129 = metadata !{i32 786443, metadata !534, metadata !1972, i32 484, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2130 = metadata !{i32 489, i32 0, metadata !2131, null}
!2131 = metadata !{i32 786443, metadata !534, metadata !2132, i32 489, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2132 = metadata !{i32 786443, metadata !534, metadata !1972, i32 489, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2133 = metadata !{i32 489, i32 0, metadata !2132, null}
!2134 = metadata !{i32 492, i32 0, metadata !2135, null}
!2135 = metadata !{i32 786443, metadata !534, metadata !2136, i32 492, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2136 = metadata !{i32 786443, metadata !534, metadata !1972, i32 492, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2137 = metadata !{i32 492, i32 0, metadata !2136, null}
!2138 = metadata !{i32 495, i32 0, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !534, metadata !595, i32 495, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2140 = metadata !{i32 498, i32 0, metadata !2141, null}
!2141 = metadata !{i32 786443, metadata !534, metadata !595, i32 498, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2142 = metadata !{i32 499, i32 0, metadata !2143, null}
!2143 = metadata !{i32 786443, metadata !534, metadata !2141, i32 499, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2144 = metadata !{i32 500, i32 0, metadata !2145, null}
!2145 = metadata !{i32 786443, metadata !534, metadata !2146, i32 500, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2146 = metadata !{i32 786443, metadata !534, metadata !2143, i32 500, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2147 = metadata !{i32 500, i32 0, metadata !2146, null}
!2148 = metadata !{i32 502, i32 0, metadata !2149, null}
!2149 = metadata !{i32 786443, metadata !534, metadata !595, i32 502, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2150 = metadata !{i32 503, i32 0, metadata !2149, null}
!2151 = metadata !{i32 504, i32 0, metadata !595, null}
!2152 = metadata !{i32 507, i32 0, metadata !595, null}
!2153 = metadata !{i32 509, i32 0, metadata !595, null}
!2154 = metadata !{i32 594, i32 0, metadata !592, null}
!2155 = metadata !{i32 596, i32 0, metadata !592, null}
!2156 = metadata !{i32 597, i32 0, metadata !592, null}
!2157 = metadata !{i32 599, i32 0, metadata !2158, null}
!2158 = metadata !{i32 786443, metadata !534, metadata !592, i32 599, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2159 = metadata !{i32 600, i32 0, metadata !2158, null}
!2160 = metadata !{i32 602, i32 0, metadata !2161, null}
!2161 = metadata !{i32 786443, metadata !534, metadata !592, i32 602, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2162 = metadata !{i32 609, i32 0, metadata !2163, null}
!2163 = metadata !{i32 786443, metadata !534, metadata !2161, i32 603, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2164 = metadata !{i32 610, i32 0, metadata !2163, null}
!2165 = metadata !{i32 612, i32 0, metadata !2166, null}
!2166 = metadata !{i32 786443, metadata !534, metadata !2163, i32 612, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2167 = metadata !{i32 613, i32 0, metadata !2166, null}
!2168 = metadata !{i32 615, i32 0, metadata !2163, null}
!2169 = metadata !{i32 616, i32 0, metadata !2170, null}
!2170 = metadata !{i32 786443, metadata !534, metadata !2163, i32 616, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2171 = metadata !{i32 617, i32 0, metadata !2170, null}
!2172 = metadata !{i32 618, i32 0, metadata !2163, null}
!2173 = metadata !{i32 619, i32 0, metadata !2163, null}
!2174 = metadata !{i32 620, i32 0, metadata !2163, null}
!2175 = metadata !{i32 623, i32 0, metadata !2176, null}
!2176 = metadata !{i32 786443, metadata !534, metadata !592, i32 622, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2177 = metadata !{i32 624, i32 0, metadata !2176, null}
!2178 = metadata !{i32 625, i32 0, metadata !2176, null}
!2179 = metadata !{i32 627, i32 0, metadata !2180, null}
!2180 = metadata !{i32 786443, metadata !534, metadata !2176, i32 627, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2181 = metadata !{i32 629, i32 0, metadata !2182, null}
!2182 = metadata !{i32 786443, metadata !534, metadata !2180, i32 628, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2183 = metadata !{i32 630, i32 0, metadata !2184, null}
!2184 = metadata !{i32 786443, metadata !534, metadata !2182, i32 630, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2185 = metadata !{i32 631, i32 0, metadata !2184, null}
!2186 = metadata !{i32 632, i32 0, metadata !2182, null}
!2187 = metadata !{i32 633, i32 0, metadata !2182, null}
!2188 = metadata !{i32 634, i32 0, metadata !2182, null}
!2189 = metadata !{i32 636, i32 0, metadata !2176, null}
!2190 = metadata !{i32 637, i32 0, metadata !2176, null}
!2191 = metadata !{i32 658, i32 0, metadata !589, null}
!2192 = metadata !{i32 659, i32 0, metadata !589, null}
!2193 = metadata !{i32 660, i32 0, metadata !589, null}
!2194 = metadata !{i32 152, i32 0, metadata !598, null}
!2195 = metadata !{i32 153, i32 0, metadata !2196, null}
!2196 = metadata !{i32 786443, metadata !534, metadata !598, i32 153, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/quotearg.c]
!2197 = metadata !{i32 154, i32 0, metadata !2196, null}
!2198 = metadata !{i32 155, i32 0, metadata !598, null}
!2199 = metadata !{i32 115, i32 0, metadata !2200, null}
!2200 = metadata !{i32 786443, metadata !627, metadata !637, i32 115, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2201 = metadata !{i32 116, i32 0, metadata !2200, null}
!2202 = metadata !{i32 117, i32 0, metadata !637, null}
!2203 = metadata !{i32 50, i32 0, metadata !2204, null}
!2204 = metadata !{i32 786443, metadata !624, metadata !646} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xmalloc.c]
!2205 = metadata !{i32 51, i32 0, metadata !2206, null}
!2206 = metadata !{i32 786443, metadata !624, metadata !2204, i32 51, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xmalloc.c]
!2207 = metadata !{i32 52, i32 0, metadata !2206, null}
!2208 = metadata !{i32 53, i32 0, metadata !2204, null}
!2209 = metadata !{i32 126, i32 0, metadata !2210, null}
!2210 = metadata !{i32 786443, metadata !627, metadata !640, i32 126, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2211 = metadata !{i32 127, i32 0, metadata !2210, null}
!2212 = metadata !{i32 128, i32 0, metadata !640, null}
!2213 = metadata !{i32 62, i32 0, metadata !650, null}
!2214 = metadata !{i32 63, i32 0, metadata !2215, null}
!2215 = metadata !{i32 786443, metadata !624, metadata !650, i32 63, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xmalloc.c]
!2216 = metadata !{i32 64, i32 0, metadata !2215, null}
!2217 = metadata !{i32 65, i32 0, metadata !650, null}
!2218 = metadata !{i32 189, i32 0, metadata !628, null}
!2219 = metadata !{i32 191, i32 0, metadata !2220, null}
!2220 = metadata !{i32 786443, metadata !627, metadata !628, i32 191, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2221 = metadata !{i32 193, i32 0, metadata !2222, null}
!2222 = metadata !{i32 786443, metadata !627, metadata !2223, i32 193, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2223 = metadata !{i32 786443, metadata !627, metadata !2220, i32 192, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2224 = metadata !{i32 201, i32 0, metadata !2225, null}
!2225 = metadata !{i32 786443, metadata !627, metadata !2222, i32 194, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2226 = metadata !{i32 202, i32 0, metadata !2225, null}
!2227 = metadata !{i32 203, i32 0, metadata !2225, null}
!2228 = metadata !{i32 211, i32 0, metadata !2229, null}
!2229 = metadata !{i32 786443, metadata !627, metadata !2230, i32 211, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2230 = metadata !{i32 786443, metadata !627, metadata !2220, i32 206, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/./xalloc.h]
!2231 = metadata !{i32 212, i32 0, metadata !2229, null}
!2232 = metadata !{i32 213, i32 0, metadata !2230, null}
!2233 = metadata !{i32 216, i32 0, metadata !628, null}
!2234 = metadata !{i32 217, i32 0, metadata !628, null}
!2235 = metadata !{i32 226, i32 0, metadata !643, null}
!2236 = metadata !{i32 77, i32 0, metadata !653, null}
!2237 = metadata !{i32 87, i32 0, metadata !656, null}
!2238 = metadata !{i32 102, i32 0, metadata !2239, null}
!2239 = metadata !{i32 786443, metadata !624, metadata !657, i32 101, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/xmalloc.c]
!2240 = metadata !{i32 103, i32 0, metadata !2239, null}
!2241 = metadata !{i32 104, i32 0, metadata !657, null}
!2242 = metadata !{i32 114, i32 0, metadata !658, null}
!2243 = metadata !{i32 122, i32 0, metadata !661, null}
!2244 = metadata !{i32 56, i32 0, metadata !665, null}
!2245 = metadata !{i32 57, i32 0, metadata !665, null}
!2246 = metadata !{i32 58, i32 0, metadata !665, null} ; [ DW_TAG_imported_module ]
!2247 = metadata !{i32 68, i32 0, metadata !2248, null}
!2248 = metadata !{i32 786443, metadata !663, metadata !665, i32 68, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/close-stream.c]
!2249 = metadata !{i32 70, i32 0, metadata !2250, null}
!2250 = metadata !{i32 786443, metadata !663, metadata !2251, i32 70, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/close-stream.c]
!2251 = metadata !{i32 786443, metadata !663, metadata !2248, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/shadowvm/shadow/shadow-test/coreutils/ar-4-1/lib/close-stream.c]
!2252 = metadata !{i32 71, i32 0, metadata !2250, null}
!2253 = metadata !{i32 72, i32 0, metadata !2251, null}
!2254 = metadata !{i32 75, i32 0, metadata !665, null}
!2255 = metadata !{i32 76, i32 0, metadata !665, null}
!2256 = metadata !{i32 13, i32 0, metadata !2257, null}
!2257 = metadata !{i32 786443, metadata !710, metadata !712, i32 13, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_div_zero_check.c]
!2258 = metadata !{i32 14, i32 0, metadata !2257, null}
!2259 = metadata !{i32 15, i32 0, metadata !712, null}
!2260 = metadata !{i32 15, i32 0, metadata !722, null}
!2261 = metadata !{i32 16, i32 0, metadata !722, null}
!2262 = metadata !{metadata !2263, metadata !2263, i64 0}
!2263 = metadata !{metadata !"int", metadata !2264, i64 0}
!2264 = metadata !{metadata !"omnipotent char", metadata !2265, i64 0}
!2265 = metadata !{metadata !"Simple C/C++ TBAA"}
!2266 = metadata !{i32 25, i32 0, metadata !2267, null}
!2267 = metadata !{i32 786443, metadata !730, metadata !732, i32 25, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_mark_arg_symbolic.c]
!2268 = metadata !{i32 26, i32 0, metadata !2269, null}
!2269 = metadata !{i32 786443, metadata !730, metadata !2267, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_mark_arg_symbolic.c]
!2270 = metadata !{metadata !2271, metadata !2271, i64 0}
!2271 = metadata !{metadata !"any pointer", metadata !2264, i64 0}
!2272 = metadata !{i32 15, i32 0, metadata !747, metadata !2268}
!2273 = metadata !{metadata !2264, metadata !2264, i64 0}
!2274 = metadata !{i32 27, i32 0, metadata !2269, null}
!2275 = metadata !{i32 28, i32 0, metadata !2269, null}
!2276 = metadata !{i32 29, i32 0, metadata !2277, null}
!2277 = metadata !{i32 786443, metadata !730, metadata !2269, i32 29, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_mark_arg_symbolic.c]
!2278 = metadata !{i32 33, i32 0, metadata !2279, null}
!2279 = metadata !{i32 786443, metadata !730, metadata !2277, i32 29, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_mark_arg_symbolic.c]
!2280 = metadata !{i32 21, i32 0, metadata !742, metadata !2278}
!2281 = metadata !{i32 35, i32 0, metadata !2269, null}
!2282 = metadata !{i32 37, i32 0, metadata !732, null}
!2283 = metadata !{i32 21, i32 0, metadata !2284, null}
!2284 = metadata !{i32 786443, metadata !754, metadata !756, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_overshift_check.c]
!2285 = metadata !{i32 27, i32 0, metadata !2286, null}
!2286 = metadata !{i32 786443, metadata !754, metadata !2284, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_overshift_check.c]
!2287 = metadata !{i32 29, i32 0, metadata !756, null}
!2288 = metadata !{i32 16, i32 0, metadata !2289, null}
!2289 = metadata !{i32 786443, metadata !765, metadata !767, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c]
!2290 = metadata !{i32 17, i32 0, metadata !2289, null}
!2291 = metadata !{i32 19, i32 0, metadata !2292, null}
!2292 = metadata !{i32 786443, metadata !765, metadata !767, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c]
!2293 = metadata !{i32 22, i32 0, metadata !2294, null}
!2294 = metadata !{i32 786443, metadata !765, metadata !2292, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c]
!2295 = metadata !{i32 25, i32 0, metadata !2296, null}
!2296 = metadata !{i32 786443, metadata !765, metadata !2294, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c]
!2297 = metadata !{i32 26, i32 0, metadata !2298, null}
!2298 = metadata !{i32 786443, metadata !765, metadata !2296, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c]
!2299 = metadata !{i32 27, i32 0, metadata !2298, null}
!2300 = metadata !{i32 28, i32 0, metadata !2301, null}
!2301 = metadata !{i32 786443, metadata !765, metadata !2296, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/klee_range.c]
!2302 = metadata !{i32 29, i32 0, metadata !2301, null}
!2303 = metadata !{i32 32, i32 0, metadata !2294, null}
!2304 = metadata !{i32 34, i32 0, metadata !767, null}
!2305 = metadata !{i32 16, i32 0, metadata !779, null}
!2306 = metadata !{i32 17, i32 0, metadata !779, null}
!2307 = metadata !{metadata !2307, metadata !2308, metadata !2309}
!2308 = metadata !{metadata !"llvm.vectorizer.width", i32 1}
!2309 = metadata !{metadata !"llvm.vectorizer.unroll", i32 1}
!2310 = metadata !{metadata !2310, metadata !2308, metadata !2309}
!2311 = metadata !{i32 18, i32 0, metadata !779, null}
!2312 = metadata !{i32 16, i32 0, metadata !2313, null}
!2313 = metadata !{i32 786443, metadata !791, metadata !793, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/memmove.c]
!2314 = metadata !{i32 19, i32 0, metadata !2315, null}
!2315 = metadata !{i32 786443, metadata !791, metadata !793, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/memmove.c]
!2316 = metadata !{i32 20, i32 0, metadata !2317, null}
!2317 = metadata !{i32 786443, metadata !791, metadata !2315, i32 19, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/memmove.c]
!2318 = metadata !{metadata !2318, metadata !2308, metadata !2309}
!2319 = metadata !{metadata !2319, metadata !2308, metadata !2309}
!2320 = metadata !{i32 22, i32 0, metadata !2321, null}
!2321 = metadata !{i32 786443, metadata !791, metadata !2315, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/jl/deploy/use/build/runtime/Intrinsic//home/jl/deploy/use/src/runtime/Intrinsic/memmove.c]
!2322 = metadata !{i32 24, i32 0, metadata !2321, null}
!2323 = metadata !{i32 23, i32 0, metadata !2321, null}
!2324 = metadata !{metadata !2324, metadata !2308, metadata !2309}
!2325 = metadata !{metadata !2325, metadata !2308, metadata !2309}
!2326 = metadata !{i32 28, i32 0, metadata !793, null}
!2327 = metadata !{i32 15, i32 0, metadata !807, null}
!2328 = metadata !{i32 16, i32 0, metadata !807, null}
!2329 = metadata !{metadata !2329, metadata !2308, metadata !2309}
!2330 = metadata !{metadata !2330, metadata !2308, metadata !2309}
!2331 = metadata !{i32 17, i32 0, metadata !807, null}
!2332 = metadata !{i32 13, i32 0, metadata !821, null}
!2333 = metadata !{i32 14, i32 0, metadata !821, null}
!2334 = metadata !{i32 15, i32 0, metadata !821, null}
