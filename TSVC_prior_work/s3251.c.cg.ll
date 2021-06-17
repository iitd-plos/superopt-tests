; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s3251.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s3251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@e = external dso_local local_unnamed_addr global [32000 x i32], align 16
@d = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s3251() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  %.pre = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 0), align 16, !dbg !16
  %vector.recur.init = insertelement <4 x i32> undef, i32 %.pre, i32 3, !dbg !19
  br label %vector.body, !dbg !19

vector.body:                                      ; preds = %vector.body.1, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body.1 ], [ 0, %entry ], !dbg !20
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %entry ], [ %14, %vector.body.1 ]
  %uglygep48 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep4849 = bitcast i8* %uglygep48 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep4849, align 16, !dbg !21
  %uglygep55 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %wide.load31 = load <4 x i32>, <4 x i32>* %uglygep5556, align 16, !dbg !22
  %0 = add <4 x i32> %wide.load31, %wide.load, !dbg !23
  %1 = shufflevector <4 x i32> %vector.recur, <4 x i32> %0, <4 x i32> <i32 3, i32 4, i32 5, i32 6>, !dbg !20
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep40 = getelementptr i8, i8* %uglygep38, i64 4, !dbg !24
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  store <4 x i32> %0, <4 x i32>* %uglygep4041, align 4, !dbg !24
  %uglygep60 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !25
  %uglygep6061 = bitcast i8* %uglygep60 to <4 x i32>*
  %wide.load32 = load <4 x i32>, <4 x i32>* %uglygep6061, align 16, !dbg !25
  %2 = mul <4 x i32> %wide.load32, %wide.load31, !dbg !26
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !27
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  store <4 x i32> %2, <4 x i32>* %uglygep5051, align 16, !dbg !27
  %3 = mul <4 x i32> %1, %wide.load32, !dbg !28
  %uglygep65 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !29
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  store <4 x i32> %3, <4 x i32>* %uglygep6566, align 16, !dbg !29
  %4 = icmp eq i64 %lsr.iv, 127968, !dbg !20
  br i1 %4, label %for.body, label %vector.body.1, !dbg !20, !llvm.loop !30

for.body:                                         ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %0, i32 3, !dbg !19
  call void @llvm.dbg.value(metadata i64 31996, metadata !13, metadata !DIExpression()), !dbg !15
  %5 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), align 16, !dbg !21
  %6 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31996), align 16, !dbg !22
  %add = add i32 %6, %5, !dbg !23
  store i32 %add, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31997), align 4, !dbg !24
  %7 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31996), align 16, !dbg !25
  %mul = mul i32 %7, %6, !dbg !26
  store i32 %mul, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), align 16, !dbg !27
  %mul16 = mul i32 %vector.recur.extract, %7, !dbg !28
  store i32 %mul16, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i64 0, i64 31996), align 16, !dbg !29
  call void @llvm.dbg.value(metadata i64 31997, metadata !13, metadata !DIExpression()), !dbg !15
  %8 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), align 4, !dbg !21
  %9 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31997), align 4, !dbg !22
  %add.1 = add i32 %9, %8, !dbg !23
  store i32 %add.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31998), align 8, !dbg !24
  %10 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31997), align 4, !dbg !25
  %mul.1 = mul i32 %10, %9, !dbg !26
  store i32 %mul.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), align 4, !dbg !27
  %mul16.1 = mul i32 %add, %10, !dbg !28
  store i32 %mul16.1, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i64 0, i64 31997), align 4, !dbg !29
  call void @llvm.dbg.value(metadata i64 31998, metadata !13, metadata !DIExpression()), !dbg !15
  %11 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), align 8, !dbg !21
  %12 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @c, i64 0, i64 31998), align 8, !dbg !22
  %add.2 = add i32 %12, %11, !dbg !23
  store i32 %add.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31999), align 4, !dbg !24
  %13 = load i32, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @e, i64 0, i64 31998), align 8, !dbg !25
  %mul.2 = mul i32 %13, %12, !dbg !26
  store i32 %mul.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), align 8, !dbg !27
  %mul16.2 = mul i32 %add.1, %13, !dbg !28
  store i32 %mul16.2, i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @d, i64 0, i64 31998), align 8, !dbg !29
  call void @llvm.dbg.value(metadata i64 31999, metadata !13, metadata !DIExpression()), !dbg !15
  ret i32 0, !dbg !33

vector.body.1:                                    ; preds = %vector.body
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 1, !dbg !21
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep47, align 16, !dbg !21
  %uglygep52 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5253, i64 1, !dbg !22
  %wide.load31.1 = load <4 x i32>, <4 x i32>* %scevgep54, align 16, !dbg !22
  %14 = add <4 x i32> %wide.load31.1, %wide.load.1, !dbg !23
  %15 = shufflevector <4 x i32> %0, <4 x i32> %14, <4 x i32> <i32 3, i32 4, i32 5, i32 6>, !dbg !20
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep34 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep34, i64 1, !dbg !24
  %scevgep35 = bitcast <4 x i32>* %scevgep to i8*
  %uglygep36 = getelementptr i8, i8* %scevgep35, i64 4, !dbg !24
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  store <4 x i32> %14, <4 x i32>* %uglygep3637, align 4, !dbg !24
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !25
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %scevgep59 = getelementptr <4 x i32>, <4 x i32>* %uglygep5758, i64 1, !dbg !25
  %wide.load32.1 = load <4 x i32>, <4 x i32>* %scevgep59, align 16, !dbg !25
  %16 = mul <4 x i32> %wide.load32.1, %wide.load31.1, !dbg !26
  %uglygep42 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !27
  %uglygep4243 = bitcast i8* %uglygep42 to <4 x i32>*
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %uglygep4243, i64 1, !dbg !27
  store <4 x i32> %16, <4 x i32>* %scevgep44, align 16, !dbg !27
  %17 = mul <4 x i32> %15, %wide.load32.1, !dbg !28
  %uglygep62 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !29
  %uglygep6263 = bitcast i8* %uglygep62 to <4 x i32>*
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %uglygep6263, i64 1, !dbg !29
  store <4 x i32> %17, <4 x i32>* %scevgep64, align 16, !dbg !29
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 32
  br label %vector.body

; uselistorder directives
  uselistorder <4 x i32> %14, { 1, 2, 0 }
  uselistorder <4 x i32> %0, { 1, 0, 3, 2 }
  uselistorder i64 %lsr.iv, { 13, 1, 9, 3, 12, 5, 8, 10, 0, 6, 2, 11, 4, 7 }
  uselistorder i64 1, { 0, 4, 1, 5, 2, 3 }
  uselistorder i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31998), { 1, 0 }
  uselistorder i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31997), { 1, 0 }
  uselistorder i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 31996), { 1, 0 }
  uselistorder [32000 x i32]* @d, { 1, 2, 3, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 1, 0 }
  uselistorder [32000 x i32]* @e, { 1, 2, 3, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @e to i8*), { 1, 0 }
  uselistorder i64 4, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 1, 0 }
  uselistorder [32000 x i32]* @c, { 1, 2, 3, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder [32000 x i32]* @b, { 1, 2, 3, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 3, 2, 0, 1 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 0, 16, 17 }
  uselistorder [32000 x i32]* @a, { 1, 2, 3, 0, 4 }
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
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s3251.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s3251", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s3251.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 12, column: 13, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !8, line: 9, column: 34)
!18 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!19 = !DILocation(line: 9, column: 3, scope: !14)
!20 = !DILocation(line: 10, column: 7, scope: !17)
!21 = !DILocation(line: 10, column: 13, scope: !17)
!22 = !DILocation(line: 10, column: 18, scope: !17)
!23 = !DILocation(line: 10, column: 17, scope: !17)
!24 = !DILocation(line: 10, column: 11, scope: !17)
!25 = !DILocation(line: 11, column: 18, scope: !17)
!26 = !DILocation(line: 11, column: 17, scope: !17)
!27 = !DILocation(line: 11, column: 11, scope: !17)
!28 = !DILocation(line: 12, column: 17, scope: !17)
!29 = !DILocation(line: 12, column: 11, scope: !17)
!30 = distinct !{!30, !19, !31, !32}
!31 = !DILocation(line: 13, column: 3, scope: !14)
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !DILocation(line: 14, column: 2, scope: !7)
