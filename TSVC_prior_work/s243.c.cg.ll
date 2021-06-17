; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s243.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s243.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@d = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@e = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s243() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  br label %vector.body, !dbg !16

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ 0, %entry ], !dbg !17
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep5354, align 16, !dbg !20
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !21
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %wide.load43 = load <4 x i32>, <4 x i32>* %uglygep5758, align 16, !dbg !21
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !22
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %wide.load44 = load <4 x i32>, <4 x i32>* %uglygep5960, align 16, !dbg !22
  %0 = mul <4 x i32> %wide.load44, %wide.load43, !dbg !23
  %1 = add <4 x i32> %0, %wide.load, !dbg !24
  %uglygep61 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !25
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %wide.load45 = load <4 x i32>, <4 x i32>* %uglygep6162, align 16, !dbg !25
  %2 = mul <4 x i32> %wide.load45, %wide.load44, !dbg !26
  %3 = add <4 x i32> %2, %1, !dbg !27
  %uglygep55 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !28
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  store <4 x i32> %3, <4 x i32>* %uglygep5556, align 16, !dbg !28
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !29
  %uglygep49 = getelementptr i8, i8* %uglygep, i64 4, !dbg !29
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %wide.load46 = load <4 x i32>, <4 x i32>* %uglygep4950, align 4, !dbg !29
  %4 = mul <4 x i32> %wide.load46, %wide.load44, !dbg !30
  %5 = add <4 x i32> %4, %3, !dbg !31
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !32
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  store <4 x i32> %5, <4 x i32>* %uglygep5152, align 16, !dbg !32
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 16, !dbg !17
  %6 = icmp eq i64 %lsr.iv.next, 127984, !dbg !17
  br i1 %6, label %for.body, label %vector.body, !dbg !17, !llvm.loop !33

for.body:                                         ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 31996, metadata !13, metadata !DIExpression()), !dbg !15
  %7 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), align 16, !dbg !20
  %8 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31996), align 16, !dbg !21
  %9 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i64 0, i64 31996), align 16, !dbg !22
  %mul = mul i32 %9, %8, !dbg !23
  %add = add i32 %mul, %7, !dbg !24
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31996), align 16, !dbg !25
  %mul13 = mul i32 %10, %9, !dbg !26
  %add14 = add i32 %mul13, %add, !dbg !27
  store i32 %add14, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), align 16, !dbg !28
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !29
  %mul24 = mul i32 %11, %9, !dbg !30
  %add25 = add i32 %mul24, %add14, !dbg !31
  store i32 %add25, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !32
  call void @llvm.dbg.value(metadata i64 31997, metadata !13, metadata !DIExpression()), !dbg !15
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), align 4, !dbg !20
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31997), align 4, !dbg !21
  %14 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i64 0, i64 31997), align 4, !dbg !22
  %mul.1 = mul i32 %14, %13, !dbg !23
  %add.1 = add i32 %mul.1, %12, !dbg !24
  %15 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31997), align 4, !dbg !25
  %mul13.1 = mul i32 %15, %14, !dbg !26
  %add14.1 = add i32 %mul13.1, %add.1, !dbg !27
  store i32 %add14.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), align 4, !dbg !28
  %16 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !29
  %mul24.1 = mul i32 %16, %14, !dbg !30
  %add25.1 = add i32 %mul24.1, %add14.1, !dbg !31
  store i32 %add25.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !32
  call void @llvm.dbg.value(metadata i64 31998, metadata !13, metadata !DIExpression()), !dbg !15
  %17 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), align 8, !dbg !20
  %18 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31998), align 8, !dbg !21
  %19 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i64 0, i64 31998), align 8, !dbg !22
  %mul.2 = mul i32 %19, %18, !dbg !23
  %add.2 = add i32 %mul.2, %17, !dbg !24
  %20 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31998), align 8, !dbg !25
  %mul13.2 = mul i32 %20, %19, !dbg !26
  %add14.2 = add i32 %mul13.2, %add.2, !dbg !27
  store i32 %add14.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), align 8, !dbg !28
  %21 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31999), align 4, !dbg !29
  %mul24.2 = mul i32 %21, %19, !dbg !30
  %add25.2 = add i32 %mul24.2, %add14.2, !dbg !31
  store i32 %add25.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !32
  call void @llvm.dbg.value(metadata i64 31999, metadata !13, metadata !DIExpression()), !dbg !15
  ret i32 0, !dbg !36

; uselistorder directives
  uselistorder i64 %lsr.iv, { 7, 5, 6, 3, 0, 1, 2, 4 }
  uselistorder i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), { 1, 0 }
  uselistorder i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), { 1, 0 }
  uselistorder i64 31996, { 1, 0, 2, 3, 4 }
  uselistorder i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), { 1, 0 }
  uselistorder [32000 x i32]* @a, { 1, 2, 4, 3, 0 }
  uselistorder [32000 x i32]* @e, { 1, 2, 3, 0 }
  uselistorder [32000 x i32]* @d, { 1, 2, 3, 0 }
  uselistorder [32000 x i32]* @c, { 1, 2, 3, 0 }
  uselistorder [32000 x i32]* @b, { 1, 2, 3, 0 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 11, 12, 14, 15, 16, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 3, 2, 4 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s243.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s243", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s243.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 9, column: 3, scope: !14)
!17 = !DILocation(line: 12, column: 21, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !8, line: 9, column: 35)
!19 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!20 = !DILocation(line: 10, column: 11, scope: !18)
!21 = !DILocation(line: 10, column: 18, scope: !18)
!22 = !DILocation(line: 10, column: 27, scope: !18)
!23 = !DILocation(line: 10, column: 25, scope: !18)
!24 = !DILocation(line: 10, column: 16, scope: !18)
!25 = !DILocation(line: 11, column: 27, scope: !18)
!26 = !DILocation(line: 11, column: 25, scope: !18)
!27 = !DILocation(line: 11, column: 16, scope: !18)
!28 = !DILocation(line: 11, column: 9, scope: !18)
!29 = !DILocation(line: 12, column: 18, scope: !18)
!30 = !DILocation(line: 12, column: 25, scope: !18)
!31 = !DILocation(line: 12, column: 16, scope: !18)
!32 = !DILocation(line: 12, column: 9, scope: !18)
!33 = distinct !{!33, !16, !34, !35}
!34 = !DILocation(line: 13, column: 3, scope: !14)
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !DILocation(line: 14, column: 2, scope: !7)
