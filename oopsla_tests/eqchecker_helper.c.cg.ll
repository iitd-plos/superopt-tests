; ModuleID = '/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/oopsla_tests/eqchecker_helper.c'
source_filename = "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/oopsla_tests/eqchecker_helper.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@dbgptr = dso_local local_unnamed_addr global void (i32)* @MYmydebug, align 4, !dbg !0
@dbgptr2 = dso_local local_unnamed_addr global void (i32)* @MYmydebug2, align 4, !dbg !125

; Function Attrs: noinline nounwind
define dso_local void @MYmyexit(i32 %ec) local_unnamed_addr #0 !dbg !136 {
entry:
  call void @llvm.dbg.value(metadata i32 %ec, metadata !138, metadata !DIExpression()), !dbg !139
  %call = call i32 bitcast (i32 (...)* @_exit to i32 (i32)*)(i32 %ec) #9, !dbg !140
  ret void, !dbg !141
}

declare dso_local i32 @_exit(...) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local void @MYmymemset(i8* %s, i32 %c, i32 %n) local_unnamed_addr #0 !dbg !142 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !146, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %c, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %n, metadata !148, metadata !DIExpression()), !dbg !149
  %call = call i8* @memset(i8* %s, i32 %c, i32 %n) #9, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: nounwind
declare !dbg !6 dso_local i8* @memset(i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind
define dso_local i8* @MYmymemcpy(i8* %a, i8* %b, i32 %sz) local_unnamed_addr #0 !dbg !152 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i8* %b, metadata !157, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i32 %sz, metadata !158, metadata !DIExpression()), !dbg !159
  %call = call i8* @memcpy(i8* %a, i8* %b, i32 %sz) #9, !dbg !160
  ret i8* %call, !dbg !161
}

; Function Attrs: nounwind
declare !dbg !13 dso_local i8* @memcpy(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind readonly
define dso_local i32 @MYmymemcmp(i8* readonly %a, i8* readonly %b, i32 %sz) local_unnamed_addr #3 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !166, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i8* %b, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata i32 %sz, metadata !168, metadata !DIExpression()), !dbg !169
  %call = call i32 @memcmp(i8* %a, i8* %b, i32 %sz) #10, !dbg !170
  ret i32 %call, !dbg !171
}

; Function Attrs: nounwind readonly
declare !dbg !18 dso_local i32 @memcmp(i8*, i8*, i32) local_unnamed_addr #4

; Function Attrs: noinline nounwind readonly
define dso_local i32 @MYmystrcmp(i8* readonly %s1, i8* readonly %s2) local_unnamed_addr #3 !dbg !172 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !174, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata i8* %s2, metadata !175, metadata !DIExpression()), !dbg !176
  %call = call i32 @strcmp(i8* %s1, i8* %s2) #10, !dbg !177
  ret i32 %call, !dbg !178
}

; Function Attrs: nounwind readonly
declare !dbg !21 dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #4

; Function Attrs: noinline nounwind readonly
define dso_local i32 @MYmystrncmp(i8* readonly %s1, i8* readonly %s2, i32 %n) local_unnamed_addr #3 !dbg !179 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i8* %s2, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %n, metadata !185, metadata !DIExpression()), !dbg !186
  %call = call i32 @strncmp(i8* %s1, i8* %s2, i32 %n) #10, !dbg !187
  ret i32 %call, !dbg !188
}

; Function Attrs: nounwind readonly
declare !dbg !27 dso_local i32 @strncmp(i8*, i8*, i32) local_unnamed_addr #4

; Function Attrs: noinline nounwind
define dso_local noalias i8* @MYmymalloc(i32 %size) local_unnamed_addr #0 !dbg !189 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !193, metadata !DIExpression()), !dbg !194
  %call = call noalias i8* @malloc(i32 %size) #9, !dbg !195
  ret i8* %call, !dbg !196
}

; Function Attrs: nounwind
declare !dbg !30 dso_local noalias i8* @malloc(i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind
define dso_local noalias i8* @MYmycalloc(i32 %nmemb, i32 %size) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata i32 %nmemb, metadata !201, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %size, metadata !202, metadata !DIExpression()), !dbg !203
  %call = call noalias i8* @calloc(i32 %nmemb, i32 %size) #9, !dbg !204
  ret i8* %call, !dbg !205
}

; Function Attrs: nounwind
declare !dbg !34 dso_local noalias i8* @calloc(i32, i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind
define dso_local i8* @MYmyrealloc(i8* %ptr, i32 %size) local_unnamed_addr #0 !dbg !206 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !210, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %size, metadata !211, metadata !DIExpression()), !dbg !212
  %call = call i8* @realloc(i8* %ptr, i32 %size) #9, !dbg !213
  ret i8* %call, !dbg !214
}

; Function Attrs: nounwind
declare !dbg !37 dso_local i8* @realloc(i8*, i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind
define dso_local %struct._IO_FILE* @MYmyfopen(i8* %path, i8* %mode) local_unnamed_addr #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i8* %path, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i8* %mode, metadata !223, metadata !DIExpression()), !dbg !224
  %call = call %struct._IO_FILE* @fopen(i8* %path, i8* %mode) #9, !dbg !225
  ret %struct._IO_FILE* %call, !dbg !226
}

declare !dbg !40 dso_local %struct._IO_FILE* @fopen(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local %struct._IO_FILE* @MYmyfdopen(i32 %fd, i8* %mode) local_unnamed_addr #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata i32 %fd, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i8* %mode, metadata !232, metadata !DIExpression()), !dbg !233
  %call = call i32 bitcast (i32 (...)* @fdopen to i32 (i32, i8*)*)(i32 %fd, i8* %mode) #9, !dbg !234
  %0 = inttoptr i32 %call to %struct._IO_FILE*, !dbg !234
  ret %struct._IO_FILE* %0, !dbg !235
}

declare dso_local i32 @fdopen(...) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local %struct._IO_FILE* @MYmyfreopen(i8* %path, i8* %mode, %struct._IO_FILE* %stream) local_unnamed_addr #0 !dbg !236 {
entry:
  call void @llvm.dbg.value(metadata i8* %path, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i8* %mode, metadata !241, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %stream, metadata !242, metadata !DIExpression()), !dbg !243
  %call = call %struct._IO_FILE* @freopen(i8* %path, i8* %mode, %struct._IO_FILE* %stream) #9, !dbg !244
  ret %struct._IO_FILE* %call, !dbg !245
}

declare !dbg !102 dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local i32 @MYmyfclose(%struct._IO_FILE* %fp) local_unnamed_addr #0 !dbg !246 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !250, metadata !DIExpression()), !dbg !251
  %call = call i32 @fclose(%struct._IO_FILE* %fp) #9, !dbg !252
  ret i32 %call, !dbg !253
}

declare !dbg !105 dso_local i32 @fclose(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local void @MYmyfree(i8* %ptr) local_unnamed_addr #0 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata i8* %ptr, metadata !256, metadata !DIExpression()), !dbg !257
  call void @free(i8* %ptr) #9, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: nounwind
declare !dbg !108 dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noinline nounwind readonly
define dso_local i32 @MYmy_atoi(i8* nonnull readonly %s) local_unnamed_addr #3 !dbg !260 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !264, metadata !DIExpression()), !dbg !265
  %call = call i32 @atoi(i8* %s) #10, !dbg !266
  ret i32 %call, !dbg !267
}

; Function Attrs: noinline nounwind readonly
declare dso_local i32 @atoi(i8* nonnull) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define dso_local i32 @MYmyrand() local_unnamed_addr #0 !dbg !268 {
entry:
  %call = call i32 @rand() #9, !dbg !269
  ret i32 %call, !dbg !270
}

; Function Attrs: nounwind
declare !dbg !111 dso_local i32 @rand() local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind
define dso_local signext i8 @MYmy_char_inc(i8* nocapture %i) local_unnamed_addr #5 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata i8* %i, metadata !275, metadata !DIExpression()), !dbg !277
  %0 = load i8, i8* %i, align 1, !dbg !278
  %add = add i8 %0, 1, !dbg !279
  call void @llvm.dbg.value(metadata i8 %add, metadata !276, metadata !DIExpression()), !dbg !277
  store i8 %add, i8* %i, align 1, !dbg !280
  ret i8 %add, !dbg !281

; uselistorder directives
  uselistorder i8* %i, { 1, 0 }
}

; Function Attrs: noinline nounwind
define dso_local i32 @MYmyrand_char() local_unnamed_addr #0 !dbg !282 {
entry:
  %call = call i32 @rand() #9, !dbg !283
  %rem = srem i32 %call, 255, !dbg !284
  ret i32 %rem, !dbg !285
}

; Function Attrs: noinline nounwind
define dso_local void @MYmyprint_char(i8 signext %c) local_unnamed_addr #0 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i8 %c, metadata !290, metadata !DIExpression()), !dbg !291
  %conv = sext i8 %c to i32, !dbg !292
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 %conv) #9, !dbg !293
  ret void, !dbg !294
}

declare !dbg !114 dso_local i32 @printf(i8*, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local void @MYmyprint_int(i32 %c) local_unnamed_addr #0 !dbg !295 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !297, metadata !DIExpression()), !dbg !298
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %c) #9, !dbg !299
  ret void, !dbg !300
}

; Function Attrs: noinline nounwind
define dso_local i8* @MYmystrdup(i8* %s) local_unnamed_addr #0 !dbg !301 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !305, metadata !DIExpression()), !dbg !306
  %call = call i32 bitcast (i32 (...)* @strdup to i32 (i8*)*)(i8* %s) #9, !dbg !307
  %0 = inttoptr i32 %call to i8*, !dbg !307
  ret i8* %0, !dbg !308
}

declare dso_local i32 @strdup(...) local_unnamed_addr #1

; Function Attrs: noinline nounwind
define dso_local i32 @MYmytoupper(i32 %c) local_unnamed_addr #0 !dbg !309 {
entry:
  call void @llvm.dbg.value(metadata i32 %c, metadata !313, metadata !DIExpression()), !dbg !321
  %call2 = call i32 @toupper(i32 %c) #9, !dbg !322
  call void @llvm.dbg.value(metadata i32 %call2, metadata !314, metadata !DIExpression()), !dbg !323
  ret i32 %call2, !dbg !324
}

; Function Attrs: noinline nounwind
declare dso_local i32 @toupper(i32) local_unnamed_addr #0

; Function Attrs: noinline nounwind
define dso_local i8* @MYmystrerrorno() local_unnamed_addr #0 !dbg !325 {
entry:
  %call = call i32* @__errno_location() #11, !dbg !328
  %0 = load i32, i32* %call, align 4, !dbg !328
  %call1 = call i8* @strerror(i32 %0) #9, !dbg !329
  ret i8* %call1, !dbg !330
}

; Function Attrs: nounwind
declare !dbg !117 dso_local i8* @strerror(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() local_unnamed_addr #6

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @MYmydebug(i32 %n) #7 !dbg !331 {
entry:
  call void @llvm.dbg.value(metadata i32 undef, metadata !333, metadata !DIExpression()), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local void @MYmydebug2(i32 %n) #7 !dbg !336 {
entry:
  call void @llvm.dbg.value(metadata i32 undef, metadata !338, metadata !DIExpression()), !dbg !339
  ret void, !dbg !340

; uselistorder directives
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 3, 4, 5, 6, 8, 7, 9, 10, 11, 14, 12, 13, 16, 15, 18, 17, 20, 19, 22, 21, 23, 26, 24, 25, 28, 27, 31, 29, 30, 34, 32, 33, 37, 35, 36, 38 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable willreturn }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nobuiltin nounwind readonly "no-builtins" }
attributes #11 = { nobuiltin nounwind readnone "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dbgptr", scope: !2, file: !127, line: 147, type: !128, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 11.0.0 (https://github.com/bsorav/llvm-project2.git 088c616cb2ff811e68fbc2b29be278f514a01573)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !124, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/oopsla_tests/eqchecker_helper.c", directory: "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests/build/oopsla_tests")
!4 = !{}
!5 = !{!6, !13, !18, !21, !27, !10, !30, !34, !37, !40, !102, !105, !108, !111, !114, !117, !11, !120, !121}
!6 = !DISubprogram(name: "memset", scope: !7, file: !7, line: 60, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/string.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DISubprogram(name: "memcpy", scope: !7, file: !7, line: 42, type: !14, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!10, !10, !16, !12}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!18 = !DISubprogram(name: "memcmp", scope: !7, file: !7, line: 63, type: !19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!11, !16, !16, !12}
!21 = !DISubprogram(name: "strcmp", scope: !7, file: !7, line: 136, type: !22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!22 = !DISubroutineType(types: !23)
!23 = !{!11, !24, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DISubprogram(name: "strncmp", scope: !7, file: !7, line: 139, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{!11, !24, !24, !12}
!30 = !DISubprogram(name: "malloc", scope: !31, file: !31, line: 539, type: !32, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!31 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!32 = !DISubroutineType(types: !33)
!33 = !{!10, !12}
!34 = !DISubprogram(name: "calloc", scope: !31, file: !31, line: 541, type: !35, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!35 = !DISubroutineType(types: !36)
!36 = !{!10, !12, !12}
!37 = !DISubprogram(name: "realloc", scope: !31, file: !31, line: 549, type: !38, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!38 = !DISubroutineType(types: !39)
!39 = !{!10, !10, !12}
!40 = !DISubprogram(name: "fopen", scope: !41, file: !41, line: 232, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !24, !24}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 245, size: 1184, elements: !47)
!46 = !DIFile(filename: "/usr/include/bits/libio.h", directory: "")
!47 = !{!48, !49, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !68, !69, !70, !71, !75, !77, !79, !83, !86, !90, !91, !92, !93, !94, !97, !98}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 246, baseType: !11, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 251, baseType: !50, size: 32, offset: 32)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 252, baseType: !50, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 253, baseType: !50, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 254, baseType: !50, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 255, baseType: !50, size: 32, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 256, baseType: !50, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 257, baseType: !50, size: 32, offset: 224)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 258, baseType: !50, size: 32, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 260, baseType: !50, size: 32, offset: 288)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 261, baseType: !50, size: 32, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 262, baseType: !50, size: 32, offset: 352)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 264, baseType: !62, size: 32, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 160, size: 96, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !63, file: !46, line: 161, baseType: !62, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !63, file: !46, line: 162, baseType: !44, size: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !63, file: !46, line: 166, baseType: !11, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 266, baseType: !44, size: 32, offset: 416)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 268, baseType: !11, size: 32, offset: 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 272, baseType: !11, size: 32, offset: 480)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 274, baseType: !72, size: 32, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 140, baseType: !74)
!73 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!74 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 278, baseType: !76, size: 16, offset: 544)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 279, baseType: !78, size: 8, offset: 560)
!78 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 280, baseType: !80, size: 8, offset: 568)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 284, baseType: !84, size: 32, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 154, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 293, baseType: !87, size: 64, offset: 608)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 141, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !73, line: 55, baseType: !89)
!89 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !45, file: !46, line: 301, baseType: !10, size: 32, offset: 672)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !45, file: !46, line: 302, baseType: !10, size: 32, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !45, file: !46, line: 303, baseType: !10, size: 32, offset: 736)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !45, file: !46, line: 304, baseType: !10, size: 32, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 306, baseType: !95, size: 32, offset: 800)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 46, baseType: !12)
!96 = !DIFile(filename: "llvm-project/build/lib/clang/11.0.0/include/stddef.h", directory: "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 307, baseType: !11, size: 32, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 309, baseType: !99, size: 320, offset: 864)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 320, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 40)
!102 = !DISubprogram(name: "freopen", scope: !41, file: !41, line: 238, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!103 = !DISubroutineType(types: !104)
!104 = !{!44, !24, !24, !44}
!105 = !DISubprogram(name: "fclose", scope: !41, file: !41, line: 199, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!106 = !DISubroutineType(types: !107)
!107 = !{!11, !44}
!108 = !DISubprogram(name: "free", scope: !31, file: !31, line: 563, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !10}
!111 = !DISubprogram(name: "rand", scope: !31, file: !31, line: 453, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!112 = !DISubroutineType(types: !113)
!113 = !{!11}
!114 = !DISubprogram(name: "printf", scope: !41, file: !41, line: 318, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!115 = !DISubroutineType(types: !116)
!116 = !{!11, !24, null}
!117 = !DISubprogram(name: "strerror", scope: !7, file: !7, line: 396, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!118 = !DISubroutineType(types: !119)
!119 = !{!50, !11}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 32)
!121 = !DISubprogram(name: "strtol", scope: !31, file: !31, line: 176, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!122 = !DISubroutineType(types: !123)
!123 = !{!74, !24, !120, !11}
!124 = !{!0, !125}
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "dbgptr2", scope: !2, file: !127, line: 148, type: !128, isLocal: false, isDefinition: true)
!127 = !DIFile(filename: "oopsla_tests/eqchecker_helper.c", directory: "/var/lib/jenkins/workspace/_prove-memlabels_prove_memlabels/superopt-tests")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !11}
!131 = !{i32 1, !"NumRegisterParameters", i32 0}
!132 = !{i32 7, !"Dwarf Version", i32 4}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{i32 1, !"wchar_size", i32 4}
!135 = !{!"clang version 11.0.0 (https://github.com/bsorav/llvm-project2.git 088c616cb2ff811e68fbc2b29be278f514a01573)"}
!136 = distinct !DISubprogram(name: "MYmyexit", scope: !127, file: !127, line: 9, type: !129, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!137 = !{!138}
!138 = !DILocalVariable(name: "ec", arg: 1, scope: !136, file: !127, line: 9, type: !11)
!139 = !DILocation(line: 0, scope: !136)
!140 = !DILocation(line: 11, column: 3, scope: !136)
!141 = !DILocation(line: 12, column: 1, scope: !136)
!142 = distinct !DISubprogram(name: "MYmymemset", scope: !127, file: !127, line: 17, type: !143, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !10, !11, !95}
!145 = !{!146, !147, !148}
!146 = !DILocalVariable(name: "s", arg: 1, scope: !142, file: !127, line: 17, type: !10)
!147 = !DILocalVariable(name: "c", arg: 2, scope: !142, file: !127, line: 17, type: !11)
!148 = !DILocalVariable(name: "n", arg: 3, scope: !142, file: !127, line: 17, type: !95)
!149 = !DILocation(line: 0, scope: !142)
!150 = !DILocation(line: 19, column: 3, scope: !142)
!151 = !DILocation(line: 20, column: 1, scope: !142)
!152 = distinct !DISubprogram(name: "MYmymemcpy", scope: !127, file: !127, line: 22, type: !153, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{!10, !10, !16, !95}
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "a", arg: 1, scope: !152, file: !127, line: 22, type: !10)
!157 = !DILocalVariable(name: "b", arg: 2, scope: !152, file: !127, line: 22, type: !16)
!158 = !DILocalVariable(name: "sz", arg: 3, scope: !152, file: !127, line: 22, type: !95)
!159 = !DILocation(line: 0, scope: !152)
!160 = !DILocation(line: 24, column: 10, scope: !152)
!161 = !DILocation(line: 24, column: 3, scope: !152)
!162 = distinct !DISubprogram(name: "MYmymemcmp", scope: !127, file: !127, line: 27, type: !163, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!11, !16, !16, !95}
!165 = !{!166, !167, !168}
!166 = !DILocalVariable(name: "a", arg: 1, scope: !162, file: !127, line: 27, type: !16)
!167 = !DILocalVariable(name: "b", arg: 2, scope: !162, file: !127, line: 27, type: !16)
!168 = !DILocalVariable(name: "sz", arg: 3, scope: !162, file: !127, line: 27, type: !95)
!169 = !DILocation(line: 0, scope: !162)
!170 = !DILocation(line: 29, column: 10, scope: !162)
!171 = !DILocation(line: 29, column: 3, scope: !162)
!172 = distinct !DISubprogram(name: "MYmystrcmp", scope: !127, file: !127, line: 32, type: !22, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!173 = !{!174, !175}
!174 = !DILocalVariable(name: "s1", arg: 1, scope: !172, file: !127, line: 32, type: !24)
!175 = !DILocalVariable(name: "s2", arg: 2, scope: !172, file: !127, line: 32, type: !24)
!176 = !DILocation(line: 0, scope: !172)
!177 = !DILocation(line: 34, column: 10, scope: !172)
!178 = !DILocation(line: 34, column: 3, scope: !172)
!179 = distinct !DISubprogram(name: "MYmystrncmp", scope: !127, file: !127, line: 37, type: !180, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!11, !24, !24, !95}
!182 = !{!183, !184, !185}
!183 = !DILocalVariable(name: "s1", arg: 1, scope: !179, file: !127, line: 37, type: !24)
!184 = !DILocalVariable(name: "s2", arg: 2, scope: !179, file: !127, line: 37, type: !24)
!185 = !DILocalVariable(name: "n", arg: 3, scope: !179, file: !127, line: 37, type: !95)
!186 = !DILocation(line: 0, scope: !179)
!187 = !DILocation(line: 39, column: 10, scope: !179)
!188 = !DILocation(line: 39, column: 3, scope: !179)
!189 = distinct !DISubprogram(name: "MYmymalloc", scope: !127, file: !127, line: 42, type: !190, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!10, !95}
!192 = !{!193}
!193 = !DILocalVariable(name: "size", arg: 1, scope: !189, file: !127, line: 42, type: !95)
!194 = !DILocation(line: 0, scope: !189)
!195 = !DILocation(line: 44, column: 18, scope: !189)
!196 = !DILocation(line: 44, column: 3, scope: !189)
!197 = distinct !DISubprogram(name: "MYmycalloc", scope: !127, file: !127, line: 47, type: !198, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!10, !95, !95}
!200 = !{!201, !202}
!201 = !DILocalVariable(name: "nmemb", arg: 1, scope: !197, file: !127, line: 47, type: !95)
!202 = !DILocalVariable(name: "size", arg: 2, scope: !197, file: !127, line: 47, type: !95)
!203 = !DILocation(line: 0, scope: !197)
!204 = !DILocation(line: 49, column: 18, scope: !197)
!205 = !DILocation(line: 49, column: 3, scope: !197)
!206 = distinct !DISubprogram(name: "MYmyrealloc", scope: !127, file: !127, line: 52, type: !207, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!10, !10, !95}
!209 = !{!210, !211}
!210 = !DILocalVariable(name: "ptr", arg: 1, scope: !206, file: !127, line: 52, type: !10)
!211 = !DILocalVariable(name: "size", arg: 2, scope: !206, file: !127, line: 52, type: !95)
!212 = !DILocation(line: 0, scope: !206)
!213 = !DILocation(line: 54, column: 18, scope: !206)
!214 = !DILocation(line: 54, column: 3, scope: !206)
!215 = distinct !DISubprogram(name: "MYmyfopen", scope: !127, file: !127, line: 57, type: !216, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !24, !24}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !220, line: 7, baseType: !45)
!220 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!221 = !{!222, !223}
!222 = !DILocalVariable(name: "path", arg: 1, scope: !215, file: !127, line: 57, type: !24)
!223 = !DILocalVariable(name: "mode", arg: 2, scope: !215, file: !127, line: 57, type: !24)
!224 = !DILocation(line: 0, scope: !215)
!225 = !DILocation(line: 59, column: 10, scope: !215)
!226 = !DILocation(line: 59, column: 3, scope: !215)
!227 = distinct !DISubprogram(name: "MYmyfdopen", scope: !127, file: !127, line: 62, type: !228, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!218, !11, !24}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "fd", arg: 1, scope: !227, file: !127, line: 62, type: !11)
!232 = !DILocalVariable(name: "mode", arg: 2, scope: !227, file: !127, line: 62, type: !24)
!233 = !DILocation(line: 0, scope: !227)
!234 = !DILocation(line: 64, column: 10, scope: !227)
!235 = !DILocation(line: 64, column: 3, scope: !227)
!236 = distinct !DISubprogram(name: "MYmyfreopen", scope: !127, file: !127, line: 67, type: !237, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!218, !24, !24, !218}
!239 = !{!240, !241, !242}
!240 = !DILocalVariable(name: "path", arg: 1, scope: !236, file: !127, line: 67, type: !24)
!241 = !DILocalVariable(name: "mode", arg: 2, scope: !236, file: !127, line: 67, type: !24)
!242 = !DILocalVariable(name: "stream", arg: 3, scope: !236, file: !127, line: 67, type: !218)
!243 = !DILocation(line: 0, scope: !236)
!244 = !DILocation(line: 69, column: 10, scope: !236)
!245 = !DILocation(line: 69, column: 3, scope: !236)
!246 = distinct !DISubprogram(name: "MYmyfclose", scope: !127, file: !127, line: 72, type: !247, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!11, !218}
!249 = !{!250}
!250 = !DILocalVariable(name: "fp", arg: 1, scope: !246, file: !127, line: 72, type: !218)
!251 = !DILocation(line: 0, scope: !246)
!252 = !DILocation(line: 74, column: 10, scope: !246)
!253 = !DILocation(line: 74, column: 3, scope: !246)
!254 = distinct !DISubprogram(name: "MYmyfree", scope: !127, file: !127, line: 77, type: !109, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!255 = !{!256}
!256 = !DILocalVariable(name: "ptr", arg: 1, scope: !254, file: !127, line: 77, type: !10)
!257 = !DILocation(line: 0, scope: !254)
!258 = !DILocation(line: 79, column: 3, scope: !254)
!259 = !DILocation(line: 80, column: 1, scope: !254)
!260 = distinct !DISubprogram(name: "MYmy_atoi", scope: !127, file: !127, line: 84, type: !261, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!11, !24}
!263 = !{!264}
!264 = !DILocalVariable(name: "s", arg: 1, scope: !260, file: !127, line: 84, type: !24)
!265 = !DILocation(line: 0, scope: !260)
!266 = !DILocation(line: 86, column: 10, scope: !260)
!267 = !DILocation(line: 86, column: 3, scope: !260)
!268 = distinct !DISubprogram(name: "MYmyrand", scope: !127, file: !127, line: 89, type: !112, scopeLine: 90, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!269 = !DILocation(line: 91, column: 10, scope: !268)
!270 = !DILocation(line: 91, column: 3, scope: !268)
!271 = distinct !DISubprogram(name: "MYmy_char_inc", scope: !127, file: !127, line: 94, type: !272, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !274)
!272 = !DISubroutineType(types: !273)
!273 = !{!26, !50}
!274 = !{!275, !276}
!275 = !DILocalVariable(name: "i", arg: 1, scope: !271, file: !127, line: 94, type: !50)
!276 = !DILocalVariable(name: "ret", scope: !271, file: !127, line: 96, type: !26)
!277 = !DILocation(line: 0, scope: !271)
!278 = !DILocation(line: 96, column: 14, scope: !271)
!279 = !DILocation(line: 96, column: 17, scope: !271)
!280 = !DILocation(line: 97, column: 6, scope: !271)
!281 = !DILocation(line: 98, column: 3, scope: !271)
!282 = distinct !DISubprogram(name: "MYmyrand_char", scope: !127, file: !127, line: 101, type: !112, scopeLine: 102, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!283 = !DILocation(line: 103, column: 10, scope: !282)
!284 = !DILocation(line: 103, column: 17, scope: !282)
!285 = !DILocation(line: 103, column: 3, scope: !282)
!286 = distinct !DISubprogram(name: "MYmyprint_char", scope: !127, file: !127, line: 107, type: !287, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !26}
!289 = !{!290}
!290 = !DILocalVariable(name: "c", arg: 1, scope: !286, file: !127, line: 107, type: !26)
!291 = !DILocation(line: 0, scope: !286)
!292 = !DILocation(line: 109, column: 16, scope: !286)
!293 = !DILocation(line: 109, column: 3, scope: !286)
!294 = !DILocation(line: 110, column: 1, scope: !286)
!295 = distinct !DISubprogram(name: "MYmyprint_int", scope: !127, file: !127, line: 113, type: !129, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !296)
!296 = !{!297}
!297 = !DILocalVariable(name: "c", arg: 1, scope: !295, file: !127, line: 113, type: !11)
!298 = !DILocation(line: 0, scope: !295)
!299 = !DILocation(line: 115, column: 3, scope: !295)
!300 = !DILocation(line: 116, column: 1, scope: !295)
!301 = distinct !DISubprogram(name: "MYmystrdup", scope: !127, file: !127, line: 119, type: !302, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!50, !24}
!304 = !{!305}
!305 = !DILocalVariable(name: "s", arg: 1, scope: !301, file: !127, line: 119, type: !24)
!306 = !DILocation(line: 0, scope: !301)
!307 = !DILocation(line: 121, column: 10, scope: !301)
!308 = !DILocation(line: 121, column: 3, scope: !301)
!309 = distinct !DISubprogram(name: "MYmytoupper", scope: !127, file: !127, line: 124, type: !310, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!11, !11}
!312 = !{!313, !314, !316}
!313 = !DILocalVariable(name: "c", arg: 1, scope: !309, file: !127, line: 124, type: !11)
!314 = !DILocalVariable(name: "__res", scope: !315, file: !127, line: 126, type: !11)
!315 = distinct !DILexicalBlock(scope: !309, file: !127, line: 126, column: 10)
!316 = !DILocalVariable(name: "__c", scope: !317, file: !127, line: 126, type: !11)
!317 = distinct !DILexicalBlock(scope: !318, file: !127, line: 126, column: 10)
!318 = distinct !DILexicalBlock(scope: !319, file: !127, line: 126, column: 10)
!319 = distinct !DILexicalBlock(scope: !320, file: !127, line: 126, column: 10)
!320 = distinct !DILexicalBlock(scope: !315, file: !127, line: 126, column: 10)
!321 = !DILocation(line: 0, scope: !309)
!322 = !DILocation(line: 126, column: 10, scope: !318)
!323 = !DILocation(line: 0, scope: !315)
!324 = !DILocation(line: 126, column: 3, scope: !309)
!325 = distinct !DISubprogram(name: "MYmystrerrorno", scope: !127, file: !127, line: 130, type: !326, scopeLine: 131, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!326 = !DISubroutineType(types: !327)
!327 = !{!50}
!328 = !DILocation(line: 132, column: 19, scope: !325)
!329 = !DILocation(line: 132, column: 10, scope: !325)
!330 = !DILocation(line: 132, column: 3, scope: !325)
!331 = distinct !DISubprogram(name: "MYmydebug", scope: !127, file: !127, line: 136, type: !129, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!332 = !{!333}
!333 = !DILocalVariable(name: "n", arg: 1, scope: !331, file: !127, line: 136, type: !11)
!334 = !DILocation(line: 0, scope: !331)
!335 = !DILocation(line: 138, column: 3, scope: !331)
!336 = distinct !DISubprogram(name: "MYmydebug2", scope: !127, file: !127, line: 142, type: !129, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!337 = !{!338}
!338 = !DILocalVariable(name: "n", arg: 1, scope: !336, file: !127, line: 142, type: !11)
!339 = !DILocation(line: 0, scope: !336)
!340 = !DILocation(line: 144, column: 3, scope: !336)
