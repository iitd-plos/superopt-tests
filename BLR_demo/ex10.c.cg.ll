; ModuleID = '/home/nitin/superopt-project/superopt-tests/BLR_demo/ex10.c'
source_filename = "/home/nitin/superopt-project/superopt-tests/BLR_demo/ex10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @ex10() local_unnamed_addr #0 !dbg !22 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !33
  br label %vector.ph57, !dbg !34

vector.ph57:                                      ; preds = %for.end21, %entry
  %lsr.iv = phi [1024 x [1024 x i32]]* [ %21, %for.end21 ], [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 12) to [1024 x [1024 x i32]]*), %entry ]
  %indvars.iv46 = phi i64 [ 0, %entry ], [ %indvars.iv.next47, %for.end21 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !33
  br label %vector.body56, !dbg !36

vector.body56:                                    ; preds = %vector.body56, %vector.ph57
  %lsr.iv69 = phi i64 [ %lsr.iv.next, %vector.body56 ], [ 0, %vector.ph57 ], !dbg !38
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %7, %vector.body56 ]
  %vec.phi62 = phi <4 x i32> [ zeroinitializer, %vector.ph57 ], [ %8, %vector.body56 ]
  %0 = bitcast [1024 x [1024 x i32]]* %lsr.iv to i8*
  %uglygep75 = getelementptr i8, i8* %0, i64 %lsr.iv69, !dbg !40
  %uglygep7576 = bitcast i8* %uglygep75 to <4 x i32>*
  %scevgep77 = getelementptr <4 x i32>, <4 x i32>* %uglygep7576, i64 -3, !dbg !40
  %wide.load63 = load <4 x i32>, <4 x i32>* %scevgep77, align 16, !dbg !40
  %scevgep78 = getelementptr <4 x i32>, <4 x i32>* %uglygep7576, i64 -2, !dbg !40
  %wide.load64 = load <4 x i32>, <4 x i32>* %scevgep78, align 16, !dbg !40
  %uglygep86 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv69, !dbg !41
  %uglygep8687 = bitcast i8* %uglygep86 to <4 x i32>*
  %wide.load65 = load <4 x i32>, <4 x i32>* %uglygep8687, align 16, !dbg !41
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i64 1, !dbg !41
  %wide.load66 = load <4 x i32>, <4 x i32>* %scevgep88, align 16, !dbg !41
  %1 = mul <4 x i32> %wide.load65, %wide.load63, !dbg !42
  %2 = mul <4 x i32> %wide.load66, %wide.load64, !dbg !42
  %3 = add <4 x i32> %1, %vec.phi, !dbg !43
  %4 = add <4 x i32> %2, %vec.phi62, !dbg !43
  %uglygep72 = getelementptr i8, i8* %0, i64 %lsr.iv69, !dbg !40
  %uglygep7273 = bitcast i8* %uglygep72 to <4 x i32>*
  %scevgep74 = getelementptr <4 x i32>, <4 x i32>* %uglygep7273, i64 -1, !dbg !40
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %scevgep74, align 16, !dbg !40
  %uglygep = getelementptr i8, i8* %0, i64 %lsr.iv69, !dbg !40
  %uglygep71 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load64.1 = load <4 x i32>, <4 x i32>* %uglygep71, align 16, !dbg !40
  %uglygep83 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv69, !dbg !41
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i64 2, !dbg !41
  %wide.load65.1 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !41
  %uglygep80 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv69, !dbg !41
  %uglygep8081 = bitcast i8* %uglygep80 to <4 x i32>*
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %uglygep8081, i64 3, !dbg !41
  %wide.load66.1 = load <4 x i32>, <4 x i32>* %scevgep82, align 16, !dbg !41
  %5 = mul <4 x i32> %wide.load65.1, %wide.load63.1, !dbg !42
  %6 = mul <4 x i32> %wide.load66.1, %wide.load64.1, !dbg !42
  %7 = add <4 x i32> %5, %3, !dbg !43
  %8 = add <4 x i32> %6, %4, !dbg !43
  %lsr.iv.next = add nuw nsw i64 %lsr.iv69, 64, !dbg !38
  %9 = icmp eq i64 %lsr.iv.next, 4096, !dbg !38
  br i1 %9, label %middle.block54, label %vector.body56, !dbg !38, !llvm.loop !44

middle.block54:                                   ; preds = %vector.body56
  %bin.rdx = add <4 x i32> %8, %7, !dbg !36
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !36
  %bin.rdx117 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !36
  %rdx.shuf118 = shufflevector <4 x i32> %bin.rdx117, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !36
  %bin.rdx119 = add <4 x i32> %bin.rdx117, %rdx.shuf118, !dbg !36
  %10 = extractelement <4 x i32> %bin.rdx119, i32 0, !dbg !36
  call void @llvm.dbg.value(metadata i32 %10, metadata !29, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !33
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %10, i32 0, !dbg !47
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !47
  %broadcast.splatinsert50 = insertelement <4 x i32> undef, i32 %10, i32 0, !dbg !47
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !47
  br label %vector.body, !dbg !47

vector.body:                                      ; preds = %vector.body, %middle.block54
  %lsr.iv89 = phi i64 [ %lsr.iv.next90, %vector.body ], [ 0, %middle.block54 ], !dbg !49
  %11 = bitcast [1024 x [1024 x i32]]* %lsr.iv to i8*
  %uglygep96 = getelementptr i8, i8* %11, i64 %lsr.iv89, !dbg !51
  %uglygep9697 = bitcast i8* %uglygep96 to <4 x i32>*
  %scevgep98 = getelementptr <4 x i32>, <4 x i32>* %uglygep9697, i64 -3, !dbg !51
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep98, align 16, !dbg !51
  %scevgep99 = getelementptr <4 x i32>, <4 x i32>* %uglygep9697, i64 -2, !dbg !51
  %wide.load49 = load <4 x i32>, <4 x i32>* %scevgep99, align 16, !dbg !51
  %12 = mul <4 x i32> %wide.load, %broadcast.splat, !dbg !52
  %13 = mul <4 x i32> %wide.load49, %broadcast.splat51, !dbg !52
  %uglygep111 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv89, !dbg !53
  %uglygep111112 = bitcast i8* %uglygep111 to <4 x i32>*
  %wide.load52 = load <4 x i32>, <4 x i32>* %uglygep111112, align 16, !dbg !53
  %scevgep116 = getelementptr <4 x i32>, <4 x i32>* %uglygep111112, i64 1, !dbg !53
  %wide.load53 = load <4 x i32>, <4 x i32>* %scevgep116, align 16, !dbg !53
  %14 = add <4 x i32> %wide.load52, %12, !dbg !53
  %15 = add <4 x i32> %wide.load53, %13, !dbg !53
  %uglygep113 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv89, !dbg !53
  %uglygep113114 = bitcast i8* %uglygep113 to <4 x i32>*
  store <4 x i32> %14, <4 x i32>* %uglygep113114, align 16, !dbg !53
  %scevgep115 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i64 1, !dbg !53
  store <4 x i32> %15, <4 x i32>* %scevgep115, align 16, !dbg !53
  %uglygep93 = getelementptr i8, i8* %11, i64 %lsr.iv89, !dbg !51
  %uglygep9394 = bitcast i8* %uglygep93 to <4 x i32>*
  %scevgep95 = getelementptr <4 x i32>, <4 x i32>* %uglygep9394, i64 -1, !dbg !51
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep95, align 16, !dbg !51
  %uglygep91 = getelementptr i8, i8* %11, i64 %lsr.iv89, !dbg !51
  %uglygep9192 = bitcast i8* %uglygep91 to <4 x i32>*
  %wide.load49.1 = load <4 x i32>, <4 x i32>* %uglygep9192, align 16, !dbg !51
  %16 = mul <4 x i32> %wide.load.1, %broadcast.splat, !dbg !52
  %17 = mul <4 x i32> %wide.load49.1, %broadcast.splat51, !dbg !52
  %uglygep108 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv89, !dbg !53
  %uglygep108109 = bitcast i8* %uglygep108 to <4 x i32>*
  %scevgep110 = getelementptr <4 x i32>, <4 x i32>* %uglygep108109, i64 2, !dbg !53
  %wide.load52.1 = load <4 x i32>, <4 x i32>* %scevgep110, align 16, !dbg !53
  %uglygep105 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv89, !dbg !53
  %uglygep105106 = bitcast i8* %uglygep105 to <4 x i32>*
  %scevgep107 = getelementptr <4 x i32>, <4 x i32>* %uglygep105106, i64 3, !dbg !53
  %wide.load53.1 = load <4 x i32>, <4 x i32>* %scevgep107, align 16, !dbg !53
  %18 = add <4 x i32> %wide.load52.1, %16, !dbg !53
  %19 = add <4 x i32> %wide.load53.1, %17, !dbg !53
  %uglygep101 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv89, !dbg !53
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %scevgep103 = getelementptr <4 x i32>, <4 x i32>* %uglygep101102, i64 2, !dbg !53
  store <4 x i32> %18, <4 x i32>* %scevgep103, align 16, !dbg !53
  %scevgep104 = getelementptr <4 x i32>, <4 x i32>* %uglygep101102, i64 3, !dbg !53
  store <4 x i32> %19, <4 x i32>* %scevgep104, align 16, !dbg !53
  %lsr.iv.next90 = add nuw nsw i64 %lsr.iv89, 64, !dbg !49
  %20 = icmp eq i64 %lsr.iv.next90, 4096, !dbg !49
  br i1 %20, label %for.end21, label %vector.body, !dbg !49, !llvm.loop !54

for.end21:                                        ; preds = %vector.body
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !56
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !27, metadata !DIExpression()), !dbg !33
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !34
  %21 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !34
  %exitcond48.not = icmp eq i64 %indvars.iv.next47, 1024, !dbg !57
  br i1 %exitcond48.not, label %for.end24, label %vector.ph57, !dbg !34, !llvm.loop !58

for.end24:                                        ; preds = %for.end21
  ret void, !dbg !60

; uselistorder directives
  uselistorder i64 %lsr.iv89, { 8, 4, 3, 2, 7, 6, 0, 1, 5 }
  uselistorder i64 %lsr.iv69, { 6, 2, 1, 5, 4, 0, 3 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i32 0, { 1, 2, 0 }
  uselistorder <4 x i32> undef, { 2, 3, 4, 5, 0, 1 }
  uselistorder i64 3, { 1, 0, 2 }
  uselistorder i64 2, { 1, 0, 2 }
  uselistorder i64 1, { 3, 4, 1, 0, 2 }
  uselistorder [32000 x i32] zeroinitializer, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
  uselistorder i64 0, { 2, 3, 0, 1, 6, 4, 5 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 5, 1, 4, 2, 3, 0, 6 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !15, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://nitin-verma-github@github.com/bsorav/llvm-project2 601c378b47d2d513613553f39a4660e2dd0d8099)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/nitin/superopt-project/superopt-tests/BLR_demo/ex10.c", directory: "/home/nitin/superopt-project/superopt-tests/build/BLR_demo")
!4 = !{}
!5 = !{!6, !13, !0}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "BLR_demo/globals1.h", directory: "/home/nitin/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 33554432, elements: !16)
!16 = !{!17, !17}
!17 = !DISubrange(count: 1024)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 12.0.0 (https://nitin-verma-github@github.com/bsorav/llvm-project2 601c378b47d2d513613553f39a4660e2dd0d8099)"}
!22 = distinct !DISubprogram(name: "ex10", scope: !23, file: !23, line: 4, type: !24, scopeLine: 6, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!23 = !DIFile(filename: "BLR_demo/ex10.c", directory: "/home/nitin/superopt-project/superopt-tests")
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "i", scope: !22, file: !23, line: 7, type: !10)
!28 = !DILocalVariable(name: "j", scope: !22, file: !23, line: 7, type: !10)
!29 = !DILocalVariable(name: "sum1", scope: !30, file: !23, line: 11, type: !10)
!30 = distinct !DILexicalBlock(scope: !31, file: !23, line: 10, column: 3)
!31 = distinct !DILexicalBlock(scope: !32, file: !23, line: 9, column: 3)
!32 = distinct !DILexicalBlock(scope: !22, file: !23, line: 9, column: 3)
!33 = !DILocation(line: 0, scope: !22)
!34 = !DILocation(line: 9, column: 3, scope: !32)
!35 = !DILocation(line: 0, scope: !30)
!36 = !DILocation(line: 12, column: 5, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !23, line: 12, column: 5)
!38 = !DILocation(line: 12, column: 28, scope: !39)
!39 = distinct !DILexicalBlock(scope: !37, file: !23, line: 12, column: 5)
!40 = !DILocation(line: 13, column: 15, scope: !39)
!41 = !DILocation(line: 13, column: 26, scope: !39)
!42 = !DILocation(line: 13, column: 24, scope: !39)
!43 = !DILocation(line: 13, column: 12, scope: !39)
!44 = distinct !{!44, !36, !45, !46}
!45 = !DILocation(line: 13, column: 29, scope: !37)
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !DILocation(line: 14, column: 5, scope: !48)
!48 = distinct !DILexicalBlock(scope: !30, file: !23, line: 14, column: 5)
!49 = !DILocation(line: 14, column: 28, scope: !50)
!50 = distinct !DILexicalBlock(scope: !48, file: !23, line: 14, column: 5)
!51 = !DILocation(line: 15, column: 15, scope: !50)
!52 = !DILocation(line: 15, column: 24, scope: !50)
!53 = !DILocation(line: 15, column: 12, scope: !50)
!54 = distinct !{!54, !47, !55, !46}
!55 = !DILocation(line: 15, column: 26, scope: !48)
!56 = !DILocation(line: 9, column: 26, scope: !31)
!57 = !DILocation(line: 9, column: 17, scope: !31)
!58 = distinct !{!58, !34, !59}
!59 = !DILocation(line: 16, column: 3, scope: !32)
!60 = !DILocation(line: 17, column: 1, scope: !22)
