; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s121.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s121.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s121() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !16
  br label %vector.body, !dbg !17

vector.body:                                      ; preds = %vector.body.1, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body.1 ], [ -127936, %entry ], !dbg !18
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 7996, !dbg !21
  %scevgep3536 = bitcast <4 x i32>* %scevgep35 to i8*
  %uglygep37 = getelementptr i8, i8* %scevgep3536, i64 4, !dbg !21
  %uglygep3738 = bitcast i8* %uglygep37 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep3738, align 4, !dbg !21
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3940 = bitcast i8* %uglygep39 to <4 x i32>*
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %uglygep3940, i64 7997, !dbg !21
  %scevgep4142 = bitcast <4 x i32>* %scevgep41 to i8*
  %uglygep43 = getelementptr i8, i8* %scevgep4142, i64 4, !dbg !21
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %wide.load13 = load <4 x i32>, <4 x i32>* %uglygep4344, align 4, !dbg !21
  %uglygep55 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !22
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 7996, !dbg !22
  %wide.load14 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !22
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 7997, !dbg !22
  %wide.load15 = load <4 x i32>, <4 x i32>* %scevgep58, align 16, !dbg !22
  %0 = add <4 x i32> %wide.load14, %wide.load, !dbg !23
  %1 = add <4 x i32> %wide.load15, %wide.load13, !dbg !23
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 7996, !dbg !24
  store <4 x i32> %0, <4 x i32>* %scevgep47, align 16, !dbg !24
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 7997, !dbg !24
  store <4 x i32> %1, <4 x i32>* %scevgep48, align 16, !dbg !24
  %2 = icmp eq i64 %lsr.iv, 0, !dbg !18
  br i1 %2, label %for.body, label %vector.body.1, !dbg !18, !llvm.loop !25

for.body:                                         ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 31992, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i64 31993, metadata !13, metadata !DIExpression()), !dbg !28
  %3 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31993), align 4, !dbg !21
  %4 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31992), align 16, !dbg !22
  %add3 = add i32 %4, %3, !dbg !23
  store i32 %add3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31992), align 16, !dbg !24
  call void @llvm.dbg.value(metadata i64 31993, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i64 31994, metadata !13, metadata !DIExpression()), !dbg !28
  %5 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31994), align 8, !dbg !21
  %6 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31993), align 4, !dbg !22
  %add3.1 = add i32 %6, %5, !dbg !23
  store i32 %add3.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31993), align 4, !dbg !24
  call void @llvm.dbg.value(metadata i64 31994, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i64 31995, metadata !13, metadata !DIExpression()), !dbg !28
  %7 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31995), align 4, !dbg !21
  %8 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31994), align 8, !dbg !22
  %add3.2 = add i32 %8, %7, !dbg !23
  store i32 %add3.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31994), align 8, !dbg !24
  call void @llvm.dbg.value(metadata i64 31995, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i64 31996, metadata !13, metadata !DIExpression()), !dbg !28
  %9 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !21
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31995), align 4, !dbg !22
  %add3.3 = add i32 %10, %9, !dbg !23
  store i32 %add3.3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31995), align 4, !dbg !24
  call void @llvm.dbg.value(metadata i64 31996, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i64 31997, metadata !13, metadata !DIExpression()), !dbg !28
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !21
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), align 16, !dbg !22
  %add3.4 = add i32 %12, %11, !dbg !23
  store i32 %add3.4, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !24
  call void @llvm.dbg.value(metadata i64 31997, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i64 31998, metadata !13, metadata !DIExpression()), !dbg !28
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !21
  %14 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), align 4, !dbg !22
  %add3.5 = add i32 %14, %13, !dbg !23
  store i32 %add3.5, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !24
  call void @llvm.dbg.value(metadata i64 31998, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i64 31999, metadata !13, metadata !DIExpression()), !dbg !28
  %15 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31999), align 4, !dbg !21
  %16 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), align 8, !dbg !22
  %add3.6 = add i32 %16, %15, !dbg !23
  store i32 %add3.6, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !24
  call void @llvm.dbg.value(metadata i64 31999, metadata !14, metadata !DIExpression()), !dbg !16
  ret i32 0, !dbg !29

vector.body.1:                                    ; preds = %vector.body
  %uglygep21 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2122 = bitcast i8* %uglygep21 to <4 x i32>*
  %scevgep23 = getelementptr <4 x i32>, <4 x i32>* %uglygep2122, i64 7998, !dbg !21
  %scevgep2324 = bitcast <4 x i32>* %scevgep23 to i8*
  %uglygep25 = getelementptr i8, i8* %scevgep2324, i64 4, !dbg !21
  %uglygep2526 = bitcast i8* %uglygep25 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %uglygep2526, align 4, !dbg !21
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep17 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep17, i64 7999, !dbg !21
  %scevgep18 = bitcast <4 x i32>* %scevgep to i8*
  %uglygep19 = getelementptr i8, i8* %scevgep18, i64 4, !dbg !21
  %uglygep1920 = bitcast i8* %uglygep19 to <4 x i32>*
  %wide.load13.1 = load <4 x i32>, <4 x i32>* %uglygep1920, align 4, !dbg !21
  %uglygep52 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !22
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5253, i64 7998, !dbg !22
  %wide.load14.1 = load <4 x i32>, <4 x i32>* %scevgep54, align 16, !dbg !22
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !22
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i64 7999, !dbg !22
  %wide.load15.1 = load <4 x i32>, <4 x i32>* %scevgep51, align 16, !dbg !22
  %17 = add <4 x i32> %wide.load14.1, %wide.load.1, !dbg !23
  %18 = add <4 x i32> %wide.load15.1, %wide.load13.1, !dbg !23
  %uglygep30 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep3031 = bitcast i8* %uglygep30 to <4 x i32>*
  %scevgep32 = getelementptr <4 x i32>, <4 x i32>* %uglygep3031, i64 7998, !dbg !24
  store <4 x i32> %17, <4 x i32>* %scevgep32, align 16, !dbg !24
  %uglygep27 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep2728 = bitcast i8* %uglygep27 to <4 x i32>*
  %scevgep29 = getelementptr <4 x i32>, <4 x i32>* %uglygep2728, i64 7999, !dbg !24
  store <4 x i32> %18, <4 x i32>* %scevgep29, align 16, !dbg !24
  %lsr.iv.next = add nsw i64 %lsr.iv, 64
  br label %vector.body

; uselistorder directives
  uselistorder i64 %lsr.iv, { 11, 8, 7, 2, 1, 10, 9, 3, 4, 0, 5, 6 }
  uselistorder i64 7999, { 1, 0, 2 }
  uselistorder i64 7998, { 1, 0, 2 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0 }
  uselistorder [32000 x i32]* @b, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
  uselistorder i64 7997, { 1, 0, 2 }
  uselistorder i64 4, { 3, 2, 0, 1 }
  uselistorder i64 7996, { 1, 0, 2 }
  uselistorder [32000 x i32]* @a, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 3, 6, 5, 0, 1, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 12, 14 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s121.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s121", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s121.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 8, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 9, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!16 = !DILocation(line: 0, scope: !15)
!17 = !DILocation(line: 9, column: 3, scope: !15)
!18 = !DILocation(line: 10, column: 10, scope: !19)
!19 = distinct !DILexicalBlock(scope: !20, file: !8, line: 9, column: 35)
!20 = distinct !DILexicalBlock(scope: !15, file: !8, line: 9, column: 3)
!21 = !DILocation(line: 11, column: 11, scope: !19)
!22 = !DILocation(line: 11, column: 18, scope: !19)
!23 = !DILocation(line: 11, column: 16, scope: !19)
!24 = !DILocation(line: 11, column: 9, scope: !19)
!25 = distinct !{!25, !17, !26, !27}
!26 = !DILocation(line: 12, column: 3, scope: !15)
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !DILocation(line: 0, scope: !7)
!29 = !DILocation(line: 13, column: 2, scope: !7)
