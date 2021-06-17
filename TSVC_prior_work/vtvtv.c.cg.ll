; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vtvtv.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vtvtv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @vtvtv() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  br label %vector.body, !dbg !16

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !17
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !19
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8000, !dbg !19
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep31, align 16, !dbg !19
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8001, !dbg !19
  %wide.load15 = load <4 x i32>, <4 x i32>* %scevgep36, align 16, !dbg !19
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 8000, !dbg !21
  %wide.load16 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !21
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 8001, !dbg !21
  %wide.load17 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !21
  %0 = mul <4 x i32> %wide.load16, %wide.load, !dbg !22
  %1 = mul <4 x i32> %wide.load17, %wide.load15, !dbg !22
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !23
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i64 8000, !dbg !23
  %wide.load18 = load <4 x i32>, <4 x i32>* %scevgep55, align 16, !dbg !23
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i64 8001, !dbg !23
  %wide.load19 = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !23
  %2 = mul <4 x i32> %0, %wide.load18, !dbg !24
  %3 = mul <4 x i32> %1, %wide.load19, !dbg !24
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !25
  %uglygep3233 = bitcast i8* %uglygep32 to <4 x i32>*
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 8000, !dbg !25
  store <4 x i32> %2, <4 x i32>* %scevgep34, align 16, !dbg !25
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 8001, !dbg !25
  store <4 x i32> %3, <4 x i32>* %scevgep35, align 16, !dbg !25
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !19
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8002, !dbg !19
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep28, align 16, !dbg !19
  %uglygep23 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !19
  %uglygep2324 = bitcast i8* %uglygep23 to <4 x i32>*
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2324, i64 8003, !dbg !19
  %wide.load15.1 = load <4 x i32>, <4 x i32>* %scevgep25, align 16, !dbg !19
  %uglygep40 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep4041, i64 8002, !dbg !21
  %wide.load16.1 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !21
  %uglygep37 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3738 = bitcast i8* %uglygep37 to <4 x i32>*
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %uglygep3738, i64 8003, !dbg !21
  %wide.load17.1 = load <4 x i32>, <4 x i32>* %scevgep39, align 16, !dbg !21
  %4 = mul <4 x i32> %wide.load16.1, %wide.load.1, !dbg !22
  %5 = mul <4 x i32> %wide.load17.1, %wide.load15.1, !dbg !22
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !23
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %uglygep5051, i64 8002, !dbg !23
  %wide.load18.1 = load <4 x i32>, <4 x i32>* %scevgep52, align 16, !dbg !23
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i64 8003, !dbg !23
  %wide.load19.1 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !23
  %6 = mul <4 x i32> %4, %wide.load18.1, !dbg !24
  %7 = mul <4 x i32> %5, %wide.load19.1, !dbg !24
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !25
  %uglygep21 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep21, i64 8002, !dbg !25
  store <4 x i32> %6, <4 x i32>* %scevgep, align 16, !dbg !25
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep21, i64 8003, !dbg !25
  store <4 x i32> %7, <4 x i32>* %scevgep22, align 16, !dbg !25
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !17
  %8 = icmp eq i64 %lsr.iv.next, 0, !dbg !17
  br i1 %8, label %for.cond.cleanup, label %vector.body, !dbg !17, !llvm.loop !26

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !29

; uselistorder directives
  uselistorder i64 %lsr.iv, { 11, 10, 2, 1, 5, 4, 9, 8, 6, 0, 3, 7 }
  uselistorder i64 8003, { 3, 0, 1, 2 }
  uselistorder i64 8002, { 3, 0, 1, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
  uselistorder i64 8001, { 3, 0, 1, 2 }
  uselistorder i64 8000, { 2, 0, 1, 3 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 3, 2, 0, 1 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vtvtv.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "vtvtv", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/vtvtv.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 9, column: 3, scope: !14)
!17 = !DILocation(line: 9, column: 29, scope: !18)
!18 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!19 = !DILocation(line: 10, column: 11, scope: !20)
!20 = distinct !DILexicalBlock(scope: !18, file: !8, line: 9, column: 33)
!21 = !DILocation(line: 10, column: 18, scope: !20)
!22 = !DILocation(line: 10, column: 16, scope: !20)
!23 = !DILocation(line: 10, column: 25, scope: !20)
!24 = !DILocation(line: 10, column: 23, scope: !20)
!25 = !DILocation(line: 10, column: 9, scope: !20)
!26 = distinct !{!26, !16, !27, !28}
!27 = !DILocation(line: 11, column: 3, scope: !14)
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !DILocation(line: 12, column: 2, scope: !7)
