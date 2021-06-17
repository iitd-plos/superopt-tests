; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s176.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s176.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s176() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 16000, metadata !13, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !21
  br label %for.cond1.preheader, !dbg !22

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup3
  %lsr.iv = phi [32000 x i32]* [ bitcast (i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 16011) to [32000 x i32]*), %entry ], [ %11, %for.cond.cleanup3 ]
  %indvars.iv27 = phi i64 [ 0, %entry ], [ %indvars.iv.next28, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !14, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !23
  %arrayidx7 = getelementptr [32000 x i32], [32000 x i32]* @c, i64 0, i64 %indvars.iv27, !dbg !24
  %0 = load i32, i32* %arrayidx7, align 4, !dbg !24
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !27
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !27
  %broadcast.splatinsert32 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !27
  %broadcast.splat33 = shufflevector <4 x i32> %broadcast.splatinsert32, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !27
  br label %vector.body, !dbg !27

vector.body:                                      ; preds = %vector.body, %for.cond1.preheader
  %lsr.iv36 = phi i64 [ %lsr.iv.next, %vector.body ], [ 0, %for.cond1.preheader ], !dbg !28
  %1 = bitcast [32000 x i32]* %lsr.iv to i8*
  %uglygep42 = getelementptr i8, i8* %1, i64 %lsr.iv36, !dbg !29
  %uglygep4243 = bitcast i8* %uglygep42 to <4 x i32>*
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %uglygep4243, i64 -3, !dbg !29
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep44, align 4, !dbg !29
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4243, i64 -2, !dbg !29
  %wide.load31 = load <4 x i32>, <4 x i32>* %scevgep45, align 4, !dbg !29
  %2 = mul <4 x i32> %broadcast.splat, %wide.load, !dbg !30
  %3 = mul <4 x i32> %broadcast.splat33, %wide.load31, !dbg !30
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv36, !dbg !31
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %wide.load34 = load <4 x i32>, <4 x i32>* %uglygep5758, align 16, !dbg !31
  %scevgep62 = getelementptr <4 x i32>, <4 x i32>* %uglygep5758, i64 1, !dbg !31
  %wide.load35 = load <4 x i32>, <4 x i32>* %scevgep62, align 16, !dbg !31
  %4 = add <4 x i32> %wide.load34, %2, !dbg !31
  %5 = add <4 x i32> %wide.load35, %3, !dbg !31
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv36, !dbg !31
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  store <4 x i32> %4, <4 x i32>* %uglygep5960, align 16, !dbg !31
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %uglygep5960, i64 1, !dbg !31
  store <4 x i32> %5, <4 x i32>* %scevgep61, align 16, !dbg !31
  %uglygep39 = getelementptr i8, i8* %1, i64 %lsr.iv36, !dbg !29
  %uglygep3940 = bitcast i8* %uglygep39 to <4 x i32>*
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %uglygep3940, i64 -1, !dbg !29
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep41, align 4, !dbg !29
  %uglygep = getelementptr i8, i8* %1, i64 %lsr.iv36, !dbg !29
  %uglygep38 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load31.1 = load <4 x i32>, <4 x i32>* %uglygep38, align 4, !dbg !29
  %6 = mul <4 x i32> %broadcast.splat, %wide.load.1, !dbg !30
  %7 = mul <4 x i32> %broadcast.splat33, %wide.load31.1, !dbg !30
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv36, !dbg !31
  %uglygep5455 = bitcast i8* %uglygep54 to <4 x i32>*
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %uglygep5455, i64 2, !dbg !31
  %wide.load34.1 = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !31
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv36, !dbg !31
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 3, !dbg !31
  %wide.load35.1 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !31
  %8 = add <4 x i32> %wide.load34.1, %6, !dbg !31
  %9 = add <4 x i32> %wide.load35.1, %7, !dbg !31
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv36, !dbg !31
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i64 2, !dbg !31
  store <4 x i32> %8, <4 x i32>* %scevgep49, align 16, !dbg !31
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i64 3, !dbg !31
  store <4 x i32> %9, <4 x i32>* %scevgep50, align 16, !dbg !31
  %lsr.iv.next = add nuw nsw i64 %lsr.iv36, 64, !dbg !28
  %10 = icmp eq i64 %lsr.iv.next, 64000, !dbg !28
  br i1 %10, label %for.cond.cleanup3, label %vector.body, !dbg !28, !llvm.loop !32

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret i32 0, !dbg !35

for.cond.cleanup3:                                ; preds = %vector.body
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !36
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next28, metadata !14, metadata !DIExpression()), !dbg !21
  %scevgep = getelementptr [32000 x i32], [32000 x i32]* %lsr.iv, i64 0, i64 -1, !dbg !22
  %11 = bitcast i32* %scevgep to [32000 x i32]*, !dbg !22
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 16000, !dbg !37
  br i1 %exitcond30.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !22, !llvm.loop !38

; uselistorder directives
  uselistorder i64 %lsr.iv36, { 8, 4, 3, 2, 7, 6, 0, 1, 5 }
  uselistorder i64 %indvars.iv27, { 1, 0 }
  uselistorder [32000 x i32]* %lsr.iv, { 1, 0 }
  uselistorder i64 3, { 1, 0 }
  uselistorder i64 2, { 1, 0 }
  uselistorder i64 -1, { 1, 0 }
  uselistorder i64 1, { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder i64 0, { 1, 0, 4, 3, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 0, 3, 4 }
  uselistorder label %for.cond1.preheader, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s176.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s176", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s176.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14, !16}
!13 = !DILocalVariable(name: "m", scope: !7, file: !8, line: 8, type: !11)
!14 = !DILocalVariable(name: "j", scope: !15, file: !8, line: 9, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!16 = !DILocalVariable(name: "i", scope: !17, file: !8, line: 10, type: !11)
!17 = distinct !DILexicalBlock(scope: !18, file: !8, line: 10, column: 4)
!18 = distinct !DILexicalBlock(scope: !19, file: !8, line: 9, column: 37)
!19 = distinct !DILexicalBlock(scope: !15, file: !8, line: 9, column: 3)
!20 = !DILocation(line: 0, scope: !7)
!21 = !DILocation(line: 0, scope: !15)
!22 = !DILocation(line: 9, column: 3, scope: !15)
!23 = !DILocation(line: 0, scope: !17)
!24 = !DILocation(line: 0, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !8, line: 10, column: 32)
!26 = distinct !DILexicalBlock(scope: !17, file: !8, line: 10, column: 4)
!27 = !DILocation(line: 10, column: 4, scope: !17)
!28 = !DILocation(line: 10, column: 28, scope: !26)
!29 = !DILocation(line: 11, column: 13, scope: !25)
!30 = !DILocation(line: 11, column: 24, scope: !25)
!31 = !DILocation(line: 11, column: 10, scope: !25)
!32 = distinct !{!32, !27, !33, !34}
!33 = !DILocation(line: 12, column: 4, scope: !17)
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !DILocation(line: 15, column: 2, scope: !7)
!36 = !DILocation(line: 9, column: 33, scope: !19)
!37 = !DILocation(line: 9, column: 21, scope: !19)
!38 = distinct !{!38, !22, !39}
!39 = !DILocation(line: 14, column: 3, scope: !15)
