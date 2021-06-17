; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1351.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1351.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s1351() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !20
  br label %vector.body, !dbg !21

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ]
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !22
  %uglygep4142 = bitcast i8* %uglygep41 to <4 x i32>*
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i64 8000, !dbg !22
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep43, align 16, !dbg !22
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i64 8001, !dbg !22
  %wide.load23 = load <4 x i32>, <4 x i32>* %scevgep44, align 16, !dbg !22
  %uglygep31 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !25
  %uglygep3132 = bitcast i8* %uglygep31 to <4 x i32>*
  %scevgep33 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 8000, !dbg !25
  %wide.load24 = load <4 x i32>, <4 x i32>* %scevgep33, align 16, !dbg !25
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 8001, !dbg !25
  %wide.load25 = load <4 x i32>, <4 x i32>* %scevgep34, align 16, !dbg !25
  %0 = add <4 x i32> %wide.load24, %wide.load, !dbg !26
  %1 = add <4 x i32> %wide.load25, %wide.load23, !dbg !26
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !27
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8000, !dbg !27
  store <4 x i32> %0, <4 x i32>* %scevgep53, align 16, !dbg !27
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8001, !dbg !27
  store <4 x i32> %1, <4 x i32>* %scevgep54, align 16, !dbg !27
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !22
  %uglygep3839 = bitcast i8* %uglygep38 to <4 x i32>*
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %uglygep3839, i64 8002, !dbg !22
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep40, align 16, !dbg !22
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !22
  %uglygep3536 = bitcast i8* %uglygep35 to <4 x i32>*
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %uglygep3536, i64 8003, !dbg !22
  %wide.load23.1 = load <4 x i32>, <4 x i32>* %scevgep37, align 16, !dbg !22
  %uglygep28 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !25
  %uglygep2829 = bitcast i8* %uglygep28 to <4 x i32>*
  %scevgep30 = getelementptr <4 x i32>, <4 x i32>* %uglygep2829, i64 8002, !dbg !25
  %wide.load24.1 = load <4 x i32>, <4 x i32>* %scevgep30, align 16, !dbg !25
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !25
  %uglygep27 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep27, i64 8003, !dbg !25
  %wide.load25.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !25
  %2 = add <4 x i32> %wide.load24.1, %wide.load.1, !dbg !26
  %3 = add <4 x i32> %wide.load25.1, %wide.load23.1, !dbg !26
  %uglygep48 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !27
  %uglygep4849 = bitcast i8* %uglygep48 to <4 x i32>*
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %uglygep4849, i64 8002, !dbg !27
  store <4 x i32> %2, <4 x i32>* %scevgep50, align 16, !dbg !27
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !27
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 8003, !dbg !27
  store <4 x i32> %3, <4 x i32>* %scevgep47, align 16, !dbg !27
  %lsr.iv.next = add nsw i64 %lsr.iv, 64
  %4 = icmp eq i64 %lsr.iv.next, 0
  br i1 %4, label %for.cond.cleanup, label %vector.body, !llvm.loop !28

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !31

; uselistorder directives
  uselistorder i64 %lsr.iv, { 9, 2, 1, 8, 7, 5, 4, 0, 6, 3 }
  uselistorder i64 8003, { 0, 2, 1 }
  uselistorder i64 8002, { 0, 2, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 2, 1, 0 }
  uselistorder i64 8001, { 0, 2, 1 }
  uselistorder i64 8000, { 0, 2, 1 }
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
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1351.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s1351", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s1351.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !16, !17, !18}
!13 = !DILocalVariable(name: "A", scope: !7, file: !8, line: 8, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!16 = !DILocalVariable(name: "B", scope: !7, file: !8, line: 9, type: !14)
!17 = !DILocalVariable(name: "C", scope: !7, file: !8, line: 10, type: !14)
!18 = !DILocalVariable(name: "i", scope: !19, file: !8, line: 11, type: !11)
!19 = distinct !DILexicalBlock(scope: !7, file: !8, line: 11, column: 3)
!20 = !DILocation(line: 0, scope: !19)
!21 = !DILocation(line: 11, column: 3, scope: !19)
!22 = !DILocation(line: 12, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !8, line: 11, column: 33)
!24 = distinct !DILexicalBlock(scope: !19, file: !8, line: 11, column: 3)
!25 = !DILocation(line: 12, column: 12, scope: !23)
!26 = !DILocation(line: 12, column: 11, scope: !23)
!27 = !DILocation(line: 12, column: 7, scope: !23)
!28 = distinct !{!28, !21, !29, !30}
!29 = !DILocation(line: 16, column: 3, scope: !19)
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !DILocation(line: 17, column: 2, scope: !7)
