; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s251.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@d = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s251() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !16
  br label %vector.body, !dbg !17

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !18
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep23 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep23, i64 8000, !dbg !20
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !20
  %scevgep24 = getelementptr <4 x i32>, <4 x i32>* %uglygep23, i64 8001, !dbg !20
  %wide.load17 = load <4 x i32>, <4 x i32>* %scevgep24, align 16, !dbg !20
  %uglygep25 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep2526 = bitcast i8* %uglygep25 to <4 x i32>*
  %scevgep27 = getelementptr <4 x i32>, <4 x i32>* %uglygep2526, i64 8000, !dbg !22
  %wide.load18 = load <4 x i32>, <4 x i32>* %scevgep27, align 16, !dbg !22
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2526, i64 8001, !dbg !22
  %wide.load19 = load <4 x i32>, <4 x i32>* %scevgep28, align 16, !dbg !22
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !23
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8000, !dbg !23
  %wide.load20 = load <4 x i32>, <4 x i32>* %scevgep31, align 16, !dbg !23
  %scevgep32 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8001, !dbg !23
  %wide.load21 = load <4 x i32>, <4 x i32>* %scevgep32, align 16, !dbg !23
  %0 = mul <4 x i32> %wide.load20, %wide.load18, !dbg !24
  %1 = mul <4 x i32> %wide.load21, %wide.load19, !dbg !24
  %2 = add <4 x i32> %0, %wide.load, !dbg !25
  %3 = add <4 x i32> %1, %wide.load17, !dbg !25
  %4 = mul <4 x i32> %2, %2, !dbg !26
  %5 = mul <4 x i32> %3, %3, !dbg !26
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !27
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 8000, !dbg !27
  store <4 x i32> %4, <4 x i32>* %scevgep35, align 16, !dbg !27
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 8001, !dbg !27
  store <4 x i32> %5, <4 x i32>* %scevgep36, align 16, !dbg !27
  %lsr.iv.next = add nsw i64 %lsr.iv, 32, !dbg !18
  %6 = icmp eq i64 %lsr.iv.next, 0, !dbg !18
  br i1 %6, label %for.cond.cleanup, label %vector.body, !dbg !18, !llvm.loop !28

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !31

; uselistorder directives
  uselistorder i64 %lsr.iv, { 4, 0, 1, 2, 3 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s251.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s251", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s251.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "s", scope: !7, file: !8, line: 9, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 10, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 10, column: 3)
!16 = !DILocation(line: 0, scope: !15)
!17 = !DILocation(line: 10, column: 3, scope: !15)
!18 = !DILocation(line: 10, column: 29, scope: !19)
!19 = distinct !DILexicalBlock(scope: !15, file: !8, line: 10, column: 3)
!20 = !DILocation(line: 11, column: 8, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !8, line: 10, column: 33)
!22 = !DILocation(line: 11, column: 15, scope: !21)
!23 = !DILocation(line: 11, column: 22, scope: !21)
!24 = !DILocation(line: 11, column: 20, scope: !21)
!25 = !DILocation(line: 11, column: 13, scope: !21)
!26 = !DILocation(line: 12, column: 13, scope: !21)
!27 = !DILocation(line: 12, column: 9, scope: !21)
!28 = distinct !{!28, !17, !29, !30}
!29 = !DILocation(line: 13, column: 3, scope: !15)
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !DILocation(line: 14, column: 2, scope: !7)
