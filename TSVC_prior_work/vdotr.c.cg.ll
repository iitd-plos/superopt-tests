; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vdotr.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vdotr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@temp = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @vdotr() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !17
  br label %vector.body, !dbg !18

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !19
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %6, %vector.body ]
  %vec.phi11 = phi <4 x i32> [ zeroinitializer, %entry ], [ %7, %vector.body ]
  %uglygep22 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2223 = bitcast i8* %uglygep22 to <4 x i32>*
  %scevgep24 = getelementptr <4 x i32>, <4 x i32>* %uglygep2223, i64 8000, !dbg !21
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep24, align 16, !dbg !21
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2223, i64 8001, !dbg !21
  %wide.load12 = load <4 x i32>, <4 x i32>* %scevgep25, align 16, !dbg !21
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !23
  %uglygep3233 = bitcast i8* %uglygep32 to <4 x i32>*
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 8000, !dbg !23
  %wide.load13 = load <4 x i32>, <4 x i32>* %scevgep34, align 16, !dbg !23
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 8001, !dbg !23
  %wide.load14 = load <4 x i32>, <4 x i32>* %scevgep35, align 16, !dbg !23
  %0 = mul <4 x i32> %wide.load13, %wide.load, !dbg !24
  %1 = mul <4 x i32> %wide.load14, %wide.load12, !dbg !24
  %2 = add <4 x i32> %0, %vec.phi, !dbg !25
  %3 = add <4 x i32> %1, %vec.phi11, !dbg !25
  %uglygep19 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep1920 = bitcast i8* %uglygep19 to <4 x i32>*
  %scevgep21 = getelementptr <4 x i32>, <4 x i32>* %uglygep1920, i64 8002, !dbg !21
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep21, align 16, !dbg !21
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep18 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep18, i64 8003, !dbg !21
  %wide.load12.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !21
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !23
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 8002, !dbg !23
  %wide.load13.1 = load <4 x i32>, <4 x i32>* %scevgep31, align 16, !dbg !23
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !23
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8003, !dbg !23
  %wide.load14.1 = load <4 x i32>, <4 x i32>* %scevgep28, align 16, !dbg !23
  %4 = mul <4 x i32> %wide.load13.1, %wide.load.1, !dbg !24
  %5 = mul <4 x i32> %wide.load14.1, %wide.load12.1, !dbg !24
  %6 = add <4 x i32> %4, %2, !dbg !25
  %7 = add <4 x i32> %5, %3, !dbg !25
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !19
  %8 = icmp eq i64 %lsr.iv.next, 0, !dbg !19
  br i1 %8, label %middle.block, label %vector.body, !dbg !19, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %7, %6, !dbg !18
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !18
  %bin.rdx36 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !18
  %rdx.shuf37 = shufflevector <4 x i32> %bin.rdx36, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !18
  %bin.rdx38 = add <4 x i32> %bin.rdx36, %rdx.shuf37, !dbg !18
  %9 = extractelement <4 x i32> %bin.rdx38, i32 0, !dbg !18
  call void @llvm.dbg.value(metadata i32 %9, metadata !13, metadata !DIExpression()), !dbg !16
  store i32 %9, i32* @temp, align 4, !dbg !29
  ret i32 0, !dbg !30

; uselistorder directives
  uselistorder i64 %lsr.iv, { 6, 2, 1, 5, 4, 0, 3 }
  uselistorder i32 0, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vdotr.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "vdotr", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/vdotr.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "dot", scope: !7, file: !8, line: 9, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 11, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 11, column: 3)
!16 = !DILocation(line: 0, scope: !7)
!17 = !DILocation(line: 0, scope: !15)
!18 = !DILocation(line: 11, column: 3, scope: !15)
!19 = !DILocation(line: 11, column: 29, scope: !20)
!20 = distinct !DILexicalBlock(scope: !15, file: !8, line: 11, column: 3)
!21 = !DILocation(line: 12, column: 11, scope: !22)
!22 = distinct !DILexicalBlock(scope: !20, file: !8, line: 11, column: 33)
!23 = !DILocation(line: 12, column: 18, scope: !22)
!24 = !DILocation(line: 12, column: 16, scope: !22)
!25 = !DILocation(line: 12, column: 8, scope: !22)
!26 = distinct !{!26, !18, !27, !28}
!27 = !DILocation(line: 13, column: 3, scope: !15)
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !DILocation(line: 14, column: 7, scope: !7)
!30 = !DILocation(line: 15, column: 2, scope: !7)
