; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/sum1d.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/sum1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @sum1d() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !17
  br label %vector.body, !dbg !18

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !19
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %8, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %entry ], [ %9, %vector.body ]
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8000, !dbg !21
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep31, align 16, !dbg !21
  %scevgep32 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8001, !dbg !21
  %wide.load9 = load <4 x i32>, <4 x i32>* %scevgep32, align 16, !dbg !21
  %0 = add <4 x i32> %wide.load, %vec.phi, !dbg !22
  %1 = add <4 x i32> %wide.load9, %vec.phi8, !dbg !22
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %uglygep3637, i64 8002, !dbg !21
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep38, align 16, !dbg !21
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 8003, !dbg !21
  %wide.load9.1 = load <4 x i32>, <4 x i32>* %scevgep35, align 16, !dbg !21
  %2 = add <4 x i32> %wide.load.1, %0, !dbg !22
  %3 = add <4 x i32> %wide.load9.1, %1, !dbg !22
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8004, !dbg !21
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep28, align 16, !dbg !21
  %uglygep23 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2324 = bitcast i8* %uglygep23 to <4 x i32>*
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2324, i64 8005, !dbg !21
  %wide.load9.2 = load <4 x i32>, <4 x i32>* %scevgep25, align 16, !dbg !21
  %4 = add <4 x i32> %wide.load.2, %2, !dbg !22
  %5 = add <4 x i32> %wide.load9.2, %3, !dbg !22
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2021 = bitcast i8* %uglygep20 to <4 x i32>*
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep2021, i64 8006, !dbg !21
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep22, align 16, !dbg !21
  %uglygep17 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep1718 = bitcast i8* %uglygep17 to <4 x i32>*
  %scevgep19 = getelementptr <4 x i32>, <4 x i32>* %uglygep1718, i64 8007, !dbg !21
  %wide.load9.3 = load <4 x i32>, <4 x i32>* %scevgep19, align 16, !dbg !21
  %6 = add <4 x i32> %wide.load.3, %4, !dbg !22
  %7 = add <4 x i32> %wide.load9.3, %5, !dbg !22
  %uglygep14 = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep1415 = bitcast i8* %uglygep14 to <4 x i32>*
  %scevgep16 = getelementptr <4 x i32>, <4 x i32>* %uglygep1415, i64 8008, !dbg !21
  %wide.load.4 = load <4 x i32>, <4 x i32>* %scevgep16, align 16, !dbg !21
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @arr to i8*), i64 %lsr.iv, !dbg !21
  %uglygep13 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep13, i64 8009, !dbg !21
  %wide.load9.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !21
  %8 = add <4 x i32> %wide.load.4, %6, !dbg !22
  %9 = add <4 x i32> %wide.load9.4, %7, !dbg !22
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !19
  %10 = icmp eq i64 %lsr.iv.next, 0, !dbg !19
  br i1 %10, label %middle.block, label %vector.body, !dbg !19, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %9, %8, !dbg !18
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !18
  %bin.rdx39 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !18
  %rdx.shuf40 = shufflevector <4 x i32> %bin.rdx39, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !18
  %bin.rdx41 = add <4 x i32> %bin.rdx39, %rdx.shuf40, !dbg !18
  %11 = extractelement <4 x i32> %bin.rdx41, i32 0, !dbg !18
  call void @llvm.dbg.value(metadata i32 %11, metadata !13, metadata !DIExpression()), !dbg !16
  ret i32 %11, !dbg !26

; uselistorder directives
  uselistorder i64 %lsr.iv, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @arr to i8*), { 8, 7, 6, 5, 4, 3, 1, 0, 2 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/sum1d.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "sum1d", scope: !8, file: !8, line: 3, type: !9, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/sum1d.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "ret", scope: !7, file: !8, line: 4, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 5, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 5, column: 2)
!16 = !DILocation(line: 0, scope: !7)
!17 = !DILocation(line: 0, scope: !15)
!18 = !DILocation(line: 5, column: 2, scope: !15)
!19 = !DILocation(line: 5, column: 28, scope: !20)
!20 = distinct !DILexicalBlock(scope: !15, file: !8, line: 5, column: 2)
!21 = !DILocation(line: 6, column: 10, scope: !20)
!22 = !DILocation(line: 6, column: 7, scope: !20)
!23 = distinct !{!23, !18, !24, !25}
!24 = !DILocation(line: 6, column: 15, scope: !15)
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !DILocation(line: 7, column: 2, scope: !7)
