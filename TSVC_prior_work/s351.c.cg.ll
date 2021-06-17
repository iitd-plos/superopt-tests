; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s351.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s351.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s351() local_unnamed_addr #0 !dbg !7 {
entry:
  %0 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 0), align 16, !dbg !17
  call void @llvm.dbg.value(metadata i32 %0, metadata !13, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 0, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression()), !dbg !18
  %1 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !20
  %2 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !20
  br label %for.body, !dbg !23

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0, !dbg !24

for.body:                                         ; preds = %for.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.body ], [ -10, %entry ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !18
  %3 = shl nsw i64 %lsr.iv, 2, !dbg !25
  %uglygep93 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %3, !dbg !25
  %uglygep9394 = bitcast i8* %uglygep93 to <4 x i32>*
  %scevgep95 = getelementptr <4 x i32>, <4 x i32>* %uglygep9394, i64 2, !dbg !25
  %scevgep9596 = bitcast <4 x i32>* %scevgep95 to i8*
  %uglygep97 = getelementptr i8, i8* %scevgep9596, i64 8, !dbg !25
  %uglygep9798 = bitcast i8* %uglygep97 to <4 x i32>*
  %4 = load <4 x i32>, <4 x i32>* %uglygep9798, align 8, !dbg !25
  %5 = mul <4 x i32> %4, %2, !dbg !20
  %6 = shl nsw i64 %lsr.iv, 2, !dbg !26
  %uglygep69 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %6, !dbg !26
  %uglygep6970 = bitcast i8* %uglygep69 to <4 x i32>*
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %uglygep6970, i64 2, !dbg !26
  %scevgep7172 = bitcast <4 x i32>* %scevgep71 to i8*
  %uglygep73 = getelementptr i8, i8* %scevgep7172, i64 8, !dbg !26
  %uglygep7374 = bitcast i8* %uglygep73 to <4 x i32>*
  %7 = load <4 x i32>, <4 x i32>* %uglygep7374, align 8, !dbg !26
  %8 = add <4 x i32> %7, %5, !dbg !26
  %9 = shl nsw i64 %lsr.iv, 2, !dbg !26
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %9, !dbg !26
  %uglygep6364 = bitcast i8* %uglygep63 to <4 x i32>*
  %scevgep65 = getelementptr <4 x i32>, <4 x i32>* %uglygep6364, i64 2, !dbg !26
  %scevgep6566 = bitcast <4 x i32>* %scevgep65 to i8*
  %uglygep67 = getelementptr i8, i8* %scevgep6566, i64 8, !dbg !26
  %uglygep6768 = bitcast i8* %uglygep67 to <4 x i32>*
  store <4 x i32> %8, <4 x i32>* %uglygep6768, align 8, !dbg !26
  %10 = shl nsw i64 %lsr.iv, 2, !dbg !27
  %uglygep90 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %10, !dbg !27
  %uglygep9091 = bitcast i8* %uglygep90 to i32*
  %scevgep92 = getelementptr i32, i32* %uglygep9091, i64 14, !dbg !27
  %11 = load i32, i32* %scevgep92, align 8, !dbg !27
  %mul30 = mul i32 %11, %0, !dbg !28
  %12 = shl nsw i64 %lsr.iv, 2, !dbg !29
  %uglygep60 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %12, !dbg !29
  %uglygep6061 = bitcast i8* %uglygep60 to i32*
  %scevgep62 = getelementptr i32, i32* %uglygep6061, i64 14, !dbg !29
  %13 = load i32, i32* %scevgep62, align 8, !dbg !29
  %add34 = add i32 %13, %mul30, !dbg !29
  store i32 %add34, i32* %scevgep62, align 8, !dbg !29
  call void @llvm.dbg.value(metadata i64 undef, metadata !15, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !19
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !18
  %14 = shl nsw i64 %lsr.iv, 2, !dbg !25
  %uglygep99 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %14, !dbg !25
  %uglygep99100 = bitcast i8* %uglygep99 to <4 x i32>*
  %scevgep101 = getelementptr <4 x i32>, <4 x i32>* %uglygep99100, i64 3, !dbg !25
  %scevgep101102 = bitcast <4 x i32>* %scevgep101 to i8*
  %uglygep103 = getelementptr i8, i8* %scevgep101102, i64 12, !dbg !25
  %uglygep103104 = bitcast i8* %uglygep103 to <4 x i32>*
  %15 = load <4 x i32>, <4 x i32>* %uglygep103104, align 4, !dbg !25
  %16 = mul <4 x i32> %15, %2, !dbg !20
  %17 = shl nsw i64 %lsr.iv, 2, !dbg !26
  %uglygep81 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %17, !dbg !26
  %uglygep8182 = bitcast i8* %uglygep81 to <4 x i32>*
  %scevgep83 = getelementptr <4 x i32>, <4 x i32>* %uglygep8182, i64 3, !dbg !26
  %scevgep8384 = bitcast <4 x i32>* %scevgep83 to i8*
  %uglygep85 = getelementptr i8, i8* %scevgep8384, i64 12, !dbg !26
  %uglygep8586 = bitcast i8* %uglygep85 to <4 x i32>*
  %18 = load <4 x i32>, <4 x i32>* %uglygep8586, align 4, !dbg !26
  %19 = add <4 x i32> %18, %16, !dbg !26
  %20 = shl nsw i64 %lsr.iv, 2, !dbg !26
  %uglygep75 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %20, !dbg !26
  %uglygep7576 = bitcast i8* %uglygep75 to <4 x i32>*
  %scevgep77 = getelementptr <4 x i32>, <4 x i32>* %uglygep7576, i64 3, !dbg !26
  %scevgep7778 = bitcast <4 x i32>* %scevgep77 to i8*
  %uglygep79 = getelementptr i8, i8* %scevgep7778, i64 12, !dbg !26
  %uglygep7980 = bitcast i8* %uglygep79 to <4 x i32>*
  store <4 x i32> %19, <4 x i32>* %uglygep7980, align 4, !dbg !26
  %21 = shl nsw i64 %lsr.iv, 2, !dbg !27
  %uglygep87 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %21, !dbg !27
  %uglygep8788 = bitcast i8* %uglygep87 to i32*
  %scevgep89 = getelementptr i32, i32* %uglygep8788, i64 19, !dbg !27
  %22 = load i32, i32* %scevgep89, align 4, !dbg !27
  %mul30.1 = mul i32 %22, %0, !dbg !28
  %23 = shl nsw i64 %lsr.iv, 2, !dbg !29
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %23, !dbg !29
  %uglygep59 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep59, i64 19, !dbg !29
  %24 = load i32, i32* %scevgep, align 4, !dbg !29
  %add34.1 = add i32 %24, %mul30.1, !dbg !29
  store i32 %add34.1, i32* %scevgep, align 4, !dbg !29
  call void @llvm.dbg.value(metadata i64 undef, metadata !15, metadata !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value)), !dbg !19
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression()), !dbg !18
  %lsr.iv.next = add nsw i64 %lsr.iv, 10, !dbg !30
  %cmp.1 = icmp ult i64 %lsr.iv.next, 31990, !dbg !30
  br i1 %cmp.1, label %for.body, label %for.cond.cleanup, !dbg !23, !llvm.loop !31

; uselistorder directives
  uselistorder i32* %scevgep, { 1, 0 }
  uselistorder i32* %scevgep62, { 1, 0 }
  uselistorder i64 %lsr.iv, { 10, 9, 3, 5, 4, 0, 8, 2, 7, 6, 1 }
  uselistorder i32 %0, { 0, 2, 1 }
  uselistorder i64 19, { 1, 0 }
  uselistorder i64 12, { 2, 1, 0 }
  uselistorder i64 3, { 2, 1, 0 }
  uselistorder i64 14, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 5, 1, 0, 4, 3, 2 }
  uselistorder i64 8, { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 3, 0, 2, 1 }
  uselistorder i64 2, { 12, 4, 6, 5, 0, 11, 3, 9, 10, 7, 8, 1, 2 }
  uselistorder i32 0, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 7, 6, 5, 3, 4, 8, 9, 10 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s351.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s351", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s351.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14, !15}
!13 = !DILocalVariable(name: "alpha", scope: !7, file: !8, line: 9, type: !11)
!14 = !DILocalVariable(name: "i1", scope: !7, file: !8, line: 10, type: !11)
!15 = !DILocalVariable(name: "i", scope: !16, file: !8, line: 11, type: !11)
!16 = distinct !DILexicalBlock(scope: !7, file: !8, line: 11, column: 3)
!17 = !DILocation(line: 9, column: 15, scope: !7)
!18 = !DILocation(line: 0, scope: !7)
!19 = !DILocation(line: 0, scope: !16)
!20 = !DILocation(line: 13, column: 18, scope: !21)
!21 = distinct !DILexicalBlock(scope: !22, file: !8, line: 11, column: 37)
!22 = distinct !DILexicalBlock(scope: !16, file: !8, line: 11, column: 3)
!23 = !DILocation(line: 11, column: 3, scope: !16)
!24 = !DILocation(line: 19, column: 2, scope: !7)
!25 = !DILocation(line: 13, column: 20, scope: !21)
!26 = !DILocation(line: 13, column: 9, scope: !21)
!27 = !DILocation(line: 17, column: 24, scope: !21)
!28 = !DILocation(line: 17, column: 22, scope: !21)
!29 = !DILocation(line: 17, column: 13, scope: !21)
!30 = !DILocation(line: 11, column: 21, scope: !22)
!31 = distinct !{!31, !23, !32}
!32 = !DILocation(line: 18, column: 3, scope: !16)
