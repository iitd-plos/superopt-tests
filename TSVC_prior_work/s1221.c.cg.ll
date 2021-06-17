; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1221.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1221.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s1221() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 4, metadata !13, metadata !DIExpression()), !dbg !15
  %load_initial = load <4 x i32>, <4 x i32>* bitcast ([32000 x i32]* @b to <4 x i32>*), align 16
  br label %vector.body, !dbg !16

vector.body:                                      ; preds = %vector.body.3, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body.3 ], [ -127936, %entry ]
  %store_forwarded = phi <4 x i32> [ %load_initial, %entry ], [ %4, %vector.body.3 ]
  %uglygep18 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !17
  %uglygep1819 = bitcast i8* %uglygep18 to <4 x i32>*
  %scevgep20 = getelementptr <4 x i32>, <4 x i32>* %uglygep1819, i64 7997, !dbg !17
  %wide.load12 = load <4 x i32>, <4 x i32>* %scevgep20, align 16, !dbg !17
  %0 = add <4 x i32> %wide.load12, %store_forwarded, !dbg !20
  %uglygep30 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3031 = bitcast i8* %uglygep30 to <4 x i32>*
  %scevgep32 = getelementptr <4 x i32>, <4 x i32>* %uglygep3031, i64 7997, !dbg !21
  store <4 x i32> %0, <4 x i32>* %scevgep32, align 16, !dbg !21
  %uglygep15 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !17
  %uglygep1516 = bitcast i8* %uglygep15 to <4 x i32>*
  %scevgep17 = getelementptr <4 x i32>, <4 x i32>* %uglygep1516, i64 7998, !dbg !17
  %wide.load12.1 = load <4 x i32>, <4 x i32>* %scevgep17, align 16, !dbg !17
  %1 = add <4 x i32> %wide.load12.1, %0, !dbg !20
  %uglygep27 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2728 = bitcast i8* %uglygep27 to <4 x i32>*
  %scevgep29 = getelementptr <4 x i32>, <4 x i32>* %uglygep2728, i64 7998, !dbg !21
  store <4 x i32> %1, <4 x i32>* %scevgep29, align 16, !dbg !21
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !17
  %uglygep14 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep14, i64 7999, !dbg !17
  %wide.load12.2 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !17
  %2 = add <4 x i32> %wide.load12.2, %1, !dbg !20
  %uglygep24 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2425 = bitcast i8* %uglygep24 to <4 x i32>*
  %scevgep26 = getelementptr <4 x i32>, <4 x i32>* %uglygep2425, i64 7999, !dbg !21
  store <4 x i32> %2, <4 x i32>* %scevgep26, align 16, !dbg !21
  %3 = icmp eq i64 %lsr.iv, 0
  br i1 %3, label %for.cond.cleanup, label %vector.body.3, !llvm.loop !22

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !25

vector.body.3:                                    ; preds = %vector.body
  %uglygep21 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !17
  %uglygep2122 = bitcast i8* %uglygep21 to <4 x i32>*
  %scevgep23 = getelementptr <4 x i32>, <4 x i32>* %uglygep2122, i64 8000, !dbg !17
  %wide.load12.3 = load <4 x i32>, <4 x i32>* %scevgep23, align 16, !dbg !17
  %4 = add <4 x i32> %wide.load12.3, %2, !dbg !20
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 8000, !dbg !21
  store <4 x i32> %4, <4 x i32>* %scevgep35, align 16, !dbg !21
  %lsr.iv.next = add nsw i64 %lsr.iv, 64
  br label %vector.body

; uselistorder directives
  uselistorder <4 x i32> %4, { 1, 0 }
  uselistorder i64 %lsr.iv, { 9, 1, 5, 0, 4, 8, 3, 7, 2, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 0, 3, 2, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 0, 3, 2, 1 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1221.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s1221", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s1221.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 8, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 8, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 8, column: 3, scope: !14)
!17 = !DILocation(line: 9, column: 22, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !8, line: 8, column: 33)
!19 = distinct !DILexicalBlock(scope: !14, file: !8, line: 8, column: 3)
!20 = !DILocation(line: 9, column: 20, scope: !18)
!21 = !DILocation(line: 9, column: 9, scope: !18)
!22 = distinct !{!22, !16, !23, !24}
!23 = !DILocation(line: 10, column: 3, scope: !14)
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !DILocation(line: 11, column: 2, scope: !7)
