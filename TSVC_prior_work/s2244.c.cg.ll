; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s2244.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s2244.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@e = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s2244() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  br label %vector.body, !dbg !16

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -127968, %entry ], !dbg !17
  %uglygep42 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep4243 = bitcast i8* %uglygep42 to <4 x i32>*
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %uglygep4243, i64 7998, !dbg !20
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep44, align 16, !dbg !20
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4243, i64 7999, !dbg !20
  %wide.load22 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !20
  %uglygep46 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !21
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 7998, !dbg !21
  %wide.load23 = load <4 x i32>, <4 x i32>* %scevgep48, align 16, !dbg !21
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 7999, !dbg !21
  %wide.load24 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !21
  %0 = add <4 x i32> %wide.load23, %wide.load, !dbg !22
  %1 = add <4 x i32> %wide.load24, %wide.load22, !dbg !22
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep28 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep28, i64 7998, !dbg !23
  %scevgep29 = bitcast <4 x i32>* %scevgep to i8*
  %uglygep30 = getelementptr i8, i8* %scevgep29, i64 4, !dbg !23
  %uglygep3031 = bitcast i8* %uglygep30 to <4 x i32>*
  store <4 x i32> %0, <4 x i32>* %uglygep3031, align 4, !dbg !23
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep3233 = bitcast i8* %uglygep32 to <4 x i32>*
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 7999, !dbg !23
  %scevgep3435 = bitcast <4 x i32>* %scevgep34 to i8*
  %uglygep36 = getelementptr i8, i8* %scevgep3435, i64 4, !dbg !23
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  store <4 x i32> %1, <4 x i32>* %uglygep3637, align 4, !dbg !23
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !24
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %uglygep5051, i64 7998, !dbg !24
  %wide.load25 = load <4 x i32>, <4 x i32>* %scevgep52, align 16, !dbg !24
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5051, i64 7999, !dbg !24
  %wide.load26 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !24
  %2 = add <4 x i32> %wide.load25, %wide.load, !dbg !25
  %3 = add <4 x i32> %wide.load26, %wide.load22, !dbg !25
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !26
  %uglygep3839 = bitcast i8* %uglygep38 to <4 x i32>*
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %uglygep3839, i64 7998, !dbg !26
  store <4 x i32> %2, <4 x i32>* %scevgep40, align 16, !dbg !26
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %uglygep3839, i64 7999, !dbg !26
  store <4 x i32> %3, <4 x i32>* %scevgep41, align 16, !dbg !26
  %lsr.iv.next = add nsw i64 %lsr.iv, 32, !dbg !17
  %4 = icmp eq i64 %lsr.iv.next, 0, !dbg !17
  br i1 %4, label %for.body, label %vector.body, !dbg !17, !llvm.loop !27

for.body:                                         ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 31992, metadata !13, metadata !DIExpression()), !dbg !15
  %5 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31992), align 16, !dbg !20
  %6 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31992), align 16, !dbg !21
  %add = add i32 %6, %5, !dbg !22
  store i32 %add, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31993), align 4, !dbg !23
  %7 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31992), align 16, !dbg !24
  %add10 = add i32 %7, %5, !dbg !25
  store i32 %add10, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31992), align 16, !dbg !26
  call void @llvm.dbg.value(metadata i64 31993, metadata !13, metadata !DIExpression()), !dbg !15
  %8 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31993), align 4, !dbg !20
  %9 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31993), align 4, !dbg !21
  %add.1 = add i32 %9, %8, !dbg !22
  store i32 %add.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31994), align 8, !dbg !23
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31993), align 4, !dbg !24
  %add10.1 = add i32 %10, %8, !dbg !25
  store i32 %add10.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31993), align 4, !dbg !26
  call void @llvm.dbg.value(metadata i64 31994, metadata !13, metadata !DIExpression()), !dbg !15
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31994), align 8, !dbg !20
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31994), align 8, !dbg !21
  %add.2 = add i32 %12, %11, !dbg !22
  store i32 %add.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31995), align 4, !dbg !23
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31994), align 8, !dbg !24
  %add10.2 = add i32 %13, %11, !dbg !25
  store i32 %add10.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31994), align 8, !dbg !26
  call void @llvm.dbg.value(metadata i64 31995, metadata !13, metadata !DIExpression()), !dbg !15
  %14 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31995), align 4, !dbg !20
  %15 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31995), align 4, !dbg !21
  %add.3 = add i32 %15, %14, !dbg !22
  store i32 %add.3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !23
  %16 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31995), align 4, !dbg !24
  %add10.3 = add i32 %16, %14, !dbg !25
  store i32 %add10.3, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31995), align 4, !dbg !26
  call void @llvm.dbg.value(metadata i64 31996, metadata !13, metadata !DIExpression()), !dbg !15
  %17 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), align 16, !dbg !20
  %18 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31996), align 16, !dbg !21
  %add.4 = add i32 %18, %17, !dbg !22
  store i32 %add.4, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !23
  %19 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31996), align 16, !dbg !24
  %add10.4 = add i32 %19, %17, !dbg !25
  store i32 %add10.4, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31996), align 16, !dbg !26
  call void @llvm.dbg.value(metadata i64 31997, metadata !13, metadata !DIExpression()), !dbg !15
  %20 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), align 4, !dbg !20
  %21 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31997), align 4, !dbg !21
  %add.5 = add i32 %21, %20, !dbg !22
  store i32 %add.5, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !23
  %22 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31997), align 4, !dbg !24
  %add10.5 = add i32 %22, %20, !dbg !25
  store i32 %add10.5, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !26
  call void @llvm.dbg.value(metadata i64 31998, metadata !13, metadata !DIExpression()), !dbg !15
  %23 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), align 8, !dbg !20
  %24 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31998), align 8, !dbg !21
  %add.6 = add i32 %24, %23, !dbg !22
  store i32 %add.6, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31999), align 4, !dbg !23
  %25 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31998), align 8, !dbg !24
  %add10.6 = add i32 %25, %23, !dbg !25
  store i32 %add10.6, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !26
  call void @llvm.dbg.value(metadata i64 31999, metadata !13, metadata !DIExpression()), !dbg !15
  ret i32 0, !dbg !30

; uselistorder directives
  uselistorder i64 %lsr.iv, { 6, 3, 0, 4, 5, 1, 2 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 0 }
  uselistorder [32000 x i32]* @c, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder [32000 x i32]* @a, { 1, 2, 3, 4, 5, 6, 7, 8, 0 }
  uselistorder [32000 x i32]* @e, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder i64 7999, { 3, 0, 4, 1, 2 }
  uselistorder i64 7998, { 3, 0, 4, 1, 2 }
  uselistorder [32000 x i32]* @b, { 1, 2, 3, 4, 5, 6, 7, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 3, 4, 5, 7, 6, 8 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s2244.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s2244", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s2244.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 9, column: 3, scope: !14)
!17 = !DILocation(line: 10, column: 7, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !8, line: 9, column: 35)
!19 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!20 = !DILocation(line: 10, column: 13, scope: !18)
!21 = !DILocation(line: 10, column: 20, scope: !18)
!22 = !DILocation(line: 10, column: 18, scope: !18)
!23 = !DILocation(line: 10, column: 11, scope: !18)
!24 = !DILocation(line: 11, column: 18, scope: !18)
!25 = !DILocation(line: 11, column: 16, scope: !18)
!26 = !DILocation(line: 11, column: 9, scope: !18)
!27 = distinct !{!27, !16, !28, !29}
!28 = !DILocation(line: 12, column: 3, scope: !14)
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !DILocation(line: 13, column: 2, scope: !7)
