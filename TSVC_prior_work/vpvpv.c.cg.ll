; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vpvpv.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vpvpv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @vpvpv() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  br label %vector.body, !dbg !16

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !17
  %uglygep22 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !19
  %uglygep2223 = bitcast i8* %uglygep22 to <4 x i32>*
  %scevgep24 = getelementptr <4 x i32>, <4 x i32>* %uglygep2223, i64 8000, !dbg !19
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep24, align 16, !dbg !19
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2223, i64 8001, !dbg !19
  %wide.load12 = load <4 x i32>, <4 x i32>* %scevgep25, align 16, !dbg !19
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3233 = bitcast i8* %uglygep32 to <4 x i32>*
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 8000, !dbg !21
  %wide.load13 = load <4 x i32>, <4 x i32>* %scevgep34, align 16, !dbg !21
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 8001, !dbg !21
  %wide.load14 = load <4 x i32>, <4 x i32>* %scevgep35, align 16, !dbg !21
  %0 = add <4 x i32> %wide.load13, %wide.load, !dbg !22
  %1 = add <4 x i32> %wide.load14, %wide.load12, !dbg !22
  %uglygep46 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 8000, !dbg !23
  %wide.load15 = load <4 x i32>, <4 x i32>* %scevgep48, align 16, !dbg !23
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 8001, !dbg !23
  %wide.load16 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !23
  %2 = add <4 x i32> %0, %wide.load15, !dbg !23
  %3 = add <4 x i32> %1, %wide.load16, !dbg !23
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i64 8000, !dbg !23
  store <4 x i32> %2, <4 x i32>* %scevgep51, align 16, !dbg !23
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i64 8001, !dbg !23
  store <4 x i32> %3, <4 x i32>* %scevgep52, align 16, !dbg !23
  %uglygep19 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !19
  %uglygep1920 = bitcast i8* %uglygep19 to <4 x i32>*
  %scevgep21 = getelementptr <4 x i32>, <4 x i32>* %uglygep1920, i64 8002, !dbg !19
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep21, align 16, !dbg !19
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !19
  %uglygep18 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep18, i64 8003, !dbg !19
  %wide.load12.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !19
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8002, !dbg !21
  %wide.load13.1 = load <4 x i32>, <4 x i32>* %scevgep31, align 16, !dbg !21
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8003, !dbg !21
  %wide.load14.1 = load <4 x i32>, <4 x i32>* %scevgep28, align 16, !dbg !21
  %4 = add <4 x i32> %wide.load13.1, %wide.load.1, !dbg !22
  %5 = add <4 x i32> %wide.load14.1, %wide.load12.1, !dbg !22
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 8002, !dbg !23
  %wide.load15.1 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !23
  %uglygep40 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep4041, i64 8003, !dbg !23
  %wide.load16.1 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !23
  %6 = add <4 x i32> %4, %wide.load15.1, !dbg !23
  %7 = add <4 x i32> %5, %wide.load16.1, !dbg !23
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %uglygep3637, i64 8002, !dbg !23
  store <4 x i32> %6, <4 x i32>* %scevgep38, align 16, !dbg !23
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %uglygep3637, i64 8003, !dbg !23
  store <4 x i32> %7, <4 x i32>* %scevgep39, align 16, !dbg !23
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !17
  %8 = icmp eq i64 %lsr.iv.next, 0, !dbg !17
  br i1 %8, label %for.cond.cleanup, label %vector.body, !dbg !17, !llvm.loop !24

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !27

; uselistorder directives
  uselistorder i64 %lsr.iv, { 11, 4, 3, 2, 7, 6, 10, 9, 0, 1, 5, 8 }
  uselistorder i64 8003, { 1, 0, 2, 3 }
  uselistorder i64 8002, { 1, 0, 2, 3 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 2, 1, 0 }
  uselistorder i64 8001, { 1, 0, 2, 3 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vpvpv.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "vpvpv", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/vpvpv.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
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
!19 = !DILocation(line: 10, column: 12, scope: !20)
!20 = distinct !DILexicalBlock(scope: !18, file: !8, line: 9, column: 33)
!21 = !DILocation(line: 10, column: 19, scope: !20)
!22 = !DILocation(line: 10, column: 17, scope: !20)
!23 = !DILocation(line: 10, column: 9, scope: !20)
!24 = distinct !{!24, !16, !25, !26}
!25 = !DILocation(line: 11, column: 3, scope: !14)
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !DILocation(line: 12, column: 2, scope: !7)
