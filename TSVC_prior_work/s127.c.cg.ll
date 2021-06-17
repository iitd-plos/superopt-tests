; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s127.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s127.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@d = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@e = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s127() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 -1, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !17
  br label %vector.body, !dbg !18

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ 0, %entry ], !dbg !19
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep4748, align 16, !dbg !21
  %uglygep52 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !23
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %wide.load37 = load <4 x i32>, <4 x i32>* %uglygep5253, align 16, !dbg !23
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !24
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %wide.load38 = load <4 x i32>, <4 x i32>* %uglygep5758, align 16, !dbg !24
  %0 = mul <4 x i32> %wide.load38, %wide.load37, !dbg !25
  %1 = add <4 x i32> %0, %wide.load, !dbg !26
  %uglygep62 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !27
  %uglygep6263 = bitcast i8* %uglygep62 to <4 x i32>*
  %wide.load39 = load <4 x i32>, <4 x i32>* %uglygep6263, align 16, !dbg !27
  %2 = mul <4 x i32> %wide.load39, %wide.load38, !dbg !28
  %3 = add <4 x i32> %2, %wide.load, !dbg !29
  %4 = shl nuw nsw i64 %lsr.iv, 1, !dbg !30
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %4, !dbg !30
  %uglygep4142 = bitcast i8* %uglygep41 to <8 x i32>*
  %interleaved.vec = shufflevector <4 x i32> %1, <4 x i32> %3, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !30
  store <8 x i32> %interleaved.vec, <8 x i32>* %uglygep4142, align 4, !dbg !30
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4445, i64 1, !dbg !21
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !21
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i64 1, !dbg !23
  %wide.load37.1 = load <4 x i32>, <4 x i32>* %scevgep51, align 16, !dbg !23
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !24
  %uglygep5455 = bitcast i8* %uglygep54 to <4 x i32>*
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %uglygep5455, i64 1, !dbg !24
  %wide.load38.1 = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !24
  %5 = mul <4 x i32> %wide.load38.1, %wide.load37.1, !dbg !25
  %6 = add <4 x i32> %5, %wide.load.1, !dbg !26
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !27
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %uglygep5960, i64 1, !dbg !27
  %wide.load39.1 = load <4 x i32>, <4 x i32>* %scevgep61, align 16, !dbg !27
  %7 = mul <4 x i32> %wide.load39.1, %wide.load38.1, !dbg !28
  %8 = add <4 x i32> %7, %wide.load.1, !dbg !29
  %9 = shl nuw nsw i64 %lsr.iv, 1, !dbg !30
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %9, !dbg !30
  %uglygep40 = bitcast i8* %uglygep to <8 x i32>*
  %scevgep = getelementptr <8 x i32>, <8 x i32>* %uglygep40, i64 1, !dbg !30
  %interleaved.vec.1 = shufflevector <4 x i32> %6, <4 x i32> %8, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>, !dbg !30
  store <8 x i32> %interleaved.vec.1, <8 x i32>* %scevgep, align 4, !dbg !30
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 32, !dbg !19
  %10 = icmp eq i64 %lsr.iv.next, 64000, !dbg !19
  br i1 %10, label %for.cond.cleanup, label %vector.body, !dbg !19, !llvm.loop !31

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !34

; uselistorder directives
  uselistorder i64 %lsr.iv, { 10, 9, 1, 3, 5, 7, 8, 0, 2, 4, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 1, 0 }
  uselistorder i64 1, { 5, 6, 0, 1, 2, 3, 4 }
  uselistorder i8* bitcast ([32000 x i32]* @e to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s127.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s127", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s127.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 9, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 11, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 11, column: 3)
!16 = !DILocation(line: 0, scope: !7)
!17 = !DILocation(line: 0, scope: !15)
!18 = !DILocation(line: 11, column: 3, scope: !15)
!19 = !DILocation(line: 11, column: 31, scope: !20)
!20 = distinct !DILexicalBlock(scope: !15, file: !8, line: 11, column: 3)
!21 = !DILocation(line: 13, column: 11, scope: !22)
!22 = distinct !DILexicalBlock(scope: !20, file: !8, line: 11, column: 35)
!23 = !DILocation(line: 13, column: 18, scope: !22)
!24 = !DILocation(line: 13, column: 25, scope: !22)
!25 = !DILocation(line: 13, column: 23, scope: !22)
!26 = !DILocation(line: 13, column: 16, scope: !22)
!27 = !DILocation(line: 15, column: 25, scope: !22)
!28 = !DILocation(line: 15, column: 23, scope: !22)
!29 = !DILocation(line: 15, column: 16, scope: !22)
!30 = !DILocation(line: 15, column: 9, scope: !22)
!31 = distinct !{!31, !18, !32, !33}
!32 = !DILocation(line: 16, column: 3, scope: !15)
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !DILocation(line: 17, column: 2, scope: !7)
