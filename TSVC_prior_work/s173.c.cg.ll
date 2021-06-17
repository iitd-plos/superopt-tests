; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s173.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s173.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s173() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 16000, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !17
  br label %vector.body, !dbg !18

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -64000, %entry ], !dbg !19
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3233 = bitcast i8* %uglygep32 to <4 x i32>*
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 4000, !dbg !21
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep34, align 16, !dbg !21
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i64 4000, !dbg !23
  %wide.load14 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !23
  %0 = add <4 x i32> %wide.load14, %wide.load, !dbg !24
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !25
  %uglygep3536 = bitcast i8* %uglygep35 to <4 x i32>*
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %uglygep3536, i64 8000, !dbg !25
  store <4 x i32> %0, <4 x i32>* %scevgep37, align 16, !dbg !25
  %uglygep17 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep1718 = bitcast i8* %uglygep17 to <4 x i32>*
  %scevgep19 = getelementptr <4 x i32>, <4 x i32>* %uglygep1718, i64 4001, !dbg !21
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep19, align 16, !dbg !21
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4142 = bitcast i8* %uglygep41 to <4 x i32>*
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i64 4001, !dbg !23
  %wide.load14.1 = load <4 x i32>, <4 x i32>* %scevgep43, align 16, !dbg !23
  %1 = add <4 x i32> %wide.load14.1, %wide.load.1, !dbg !24
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !25
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8001, !dbg !25
  store <4 x i32> %1, <4 x i32>* %scevgep31, align 16, !dbg !25
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep16 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep16, i64 4002, !dbg !21
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !21
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !23
  %uglygep3839 = bitcast i8* %uglygep38 to <4 x i32>*
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %uglygep3839, i64 4002, !dbg !23
  %wide.load14.2 = load <4 x i32>, <4 x i32>* %scevgep40, align 16, !dbg !23
  %2 = add <4 x i32> %wide.load14.2, %wide.load.2, !dbg !24
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !25
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8002, !dbg !25
  store <4 x i32> %2, <4 x i32>* %scevgep28, align 16, !dbg !25
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2021 = bitcast i8* %uglygep20 to <4 x i32>*
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep2021, i64 4003, !dbg !21
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep22, align 16, !dbg !21
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !23
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4445, i64 4003, !dbg !23
  %wide.load14.3 = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !23
  %3 = add <4 x i32> %wide.load14.3, %wide.load.3, !dbg !24
  %uglygep23 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !25
  %uglygep2324 = bitcast i8* %uglygep23 to <4 x i32>*
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2324, i64 8003, !dbg !25
  store <4 x i32> %3, <4 x i32>* %scevgep25, align 16, !dbg !25
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !19
  %4 = icmp eq i64 %lsr.iv.next, 0, !dbg !19
  br i1 %4, label %for.cond.cleanup, label %vector.body, !dbg !19, !llvm.loop !26

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !29

; uselistorder directives
  uselistorder i64 %lsr.iv, { 12, 8, 1, 9, 7, 3, 11, 6, 2, 10, 4, 0, 5 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 3, 2, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 5, 3, 7, 2, 6, 0, 1 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s173.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s173", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s173.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 8, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 9, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!16 = !DILocation(line: 0, scope: !7)
!17 = !DILocation(line: 0, scope: !15)
!18 = !DILocation(line: 9, column: 3, scope: !15)
!19 = !DILocation(line: 9, column: 31, scope: !20)
!20 = distinct !DILexicalBlock(scope: !15, file: !8, line: 9, column: 3)
!21 = !DILocation(line: 10, column: 13, scope: !22)
!22 = distinct !DILexicalBlock(scope: !20, file: !8, line: 9, column: 35)
!23 = !DILocation(line: 10, column: 20, scope: !22)
!24 = !DILocation(line: 10, column: 18, scope: !22)
!25 = !DILocation(line: 10, column: 11, scope: !22)
!26 = distinct !{!26, !18, !27, !28}
!27 = !DILocation(line: 11, column: 3, scope: !15)
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !DILocation(line: 12, column: 2, scope: !7)
