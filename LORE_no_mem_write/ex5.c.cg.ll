; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex5.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !19
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !24
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex5() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !61
  br label %vector.body, !dbg !62

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv92 = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !63
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %8, %vector.body ]
  %vec.phi45 = phi <4 x i32> [ zeroinitializer, %entry ], [ %9, %vector.body ]
  %uglygep111 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep111112 = bitcast i8* %uglygep111 to <4 x i32>*
  %scevgep113 = getelementptr <4 x i32>, <4 x i32>* %uglygep111112, i64 8000, !dbg !65
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep113, align 16, !dbg !65
  %scevgep114 = getelementptr <4 x i32>, <4 x i32>* %uglygep111112, i64 8001, !dbg !65
  %wide.load46 = load <4 x i32>, <4 x i32>* %scevgep114, align 16, !dbg !65
  %0 = add <4 x i32> %wide.load, %vec.phi, !dbg !66
  %1 = add <4 x i32> %wide.load46, %vec.phi45, !dbg !66
  %uglygep118 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep118119 = bitcast i8* %uglygep118 to <4 x i32>*
  %scevgep120 = getelementptr <4 x i32>, <4 x i32>* %uglygep118119, i64 8002, !dbg !65
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep120, align 16, !dbg !65
  %uglygep115 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep115116 = bitcast i8* %uglygep115 to <4 x i32>*
  %scevgep117 = getelementptr <4 x i32>, <4 x i32>* %uglygep115116, i64 8003, !dbg !65
  %wide.load46.1 = load <4 x i32>, <4 x i32>* %scevgep117, align 16, !dbg !65
  %2 = add <4 x i32> %wide.load.1, %0, !dbg !66
  %3 = add <4 x i32> %wide.load46.1, %1, !dbg !66
  %uglygep108 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep108109 = bitcast i8* %uglygep108 to <4 x i32>*
  %scevgep110 = getelementptr <4 x i32>, <4 x i32>* %uglygep108109, i64 8004, !dbg !65
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep110, align 16, !dbg !65
  %uglygep105 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep105106 = bitcast i8* %uglygep105 to <4 x i32>*
  %scevgep107 = getelementptr <4 x i32>, <4 x i32>* %uglygep105106, i64 8005, !dbg !65
  %wide.load46.2 = load <4 x i32>, <4 x i32>* %scevgep107, align 16, !dbg !65
  %4 = add <4 x i32> %wide.load.2, %2, !dbg !66
  %5 = add <4 x i32> %wide.load46.2, %3, !dbg !66
  %uglygep102 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep102103 = bitcast i8* %uglygep102 to <4 x i32>*
  %scevgep104 = getelementptr <4 x i32>, <4 x i32>* %uglygep102103, i64 8006, !dbg !65
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep104, align 16, !dbg !65
  %uglygep99 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep99100 = bitcast i8* %uglygep99 to <4 x i32>*
  %scevgep101 = getelementptr <4 x i32>, <4 x i32>* %uglygep99100, i64 8007, !dbg !65
  %wide.load46.3 = load <4 x i32>, <4 x i32>* %scevgep101, align 16, !dbg !65
  %6 = add <4 x i32> %wide.load.3, %4, !dbg !66
  %7 = add <4 x i32> %wide.load46.3, %5, !dbg !66
  %uglygep96 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep9697 = bitcast i8* %uglygep96 to <4 x i32>*
  %scevgep98 = getelementptr <4 x i32>, <4 x i32>* %uglygep9697, i64 8008, !dbg !65
  %wide.load.4 = load <4 x i32>, <4 x i32>* %scevgep98, align 16, !dbg !65
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv92, !dbg !65
  %uglygep94 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep95 = getelementptr <4 x i32>, <4 x i32>* %uglygep94, i64 8009, !dbg !65
  %wide.load46.4 = load <4 x i32>, <4 x i32>* %scevgep95, align 16, !dbg !65
  %8 = add <4 x i32> %wide.load.4, %6, !dbg !66
  %9 = add <4 x i32> %wide.load46.4, %7, !dbg !66
  %lsr.iv.next = add nsw i64 %lsr.iv92, 160, !dbg !63
  %10 = icmp eq i64 %lsr.iv.next, 0, !dbg !63
  br i1 %10, label %middle.block, label %vector.body, !dbg !63, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %9, %8, !dbg !62
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !62
  %bin.rdx121 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !62
  %rdx.shuf122 = shufflevector <4 x i32> %bin.rdx121, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !62
  %bin.rdx123 = add <4 x i32> %bin.rdx121, %rdx.shuf122, !dbg !62
  %11 = extractelement <4 x i32> %bin.rdx123, i32 0, !dbg !62
  br label %vector.ph50, !dbg !70

vector.ph50:                                      ; preds = %middle.block47, %middle.block
  %lsr.iv = phi [1024 x [1024 x i32]]* [ %23, %middle.block47 ], [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 28) to [1024 x [1024 x i32]]*), %middle.block ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %middle.block47 ], [ 0, %middle.block ]
  %ret.135 = phi i32 [ %22, %middle.block47 ], [ %11, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv39, metadata !55, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 %ret.135, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !57, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 %ret.135, metadata !52, metadata !DIExpression()), !dbg !60
  %12 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.135, i32 0, !dbg !73
  br label %vector.body49, !dbg !73

vector.body49:                                    ; preds = %vector.body49, %vector.ph50
  %index51 = phi i64 [ 0, %vector.ph50 ], [ %index.next52.3, %vector.body49 ], !dbg !74
  %vec.phi55 = phi <4 x i32> [ %12, %vector.ph50 ], [ %19, %vector.body49 ]
  %vec.phi56 = phi <4 x i32> [ zeroinitializer, %vector.ph50 ], [ %20, %vector.body49 ]
  %scevgep86 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep8687 = bitcast i32* %scevgep86 to <4 x i32>*
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %scevgep8687, i64 -7, !dbg !76
  %wide.load57 = load <4 x i32>, <4 x i32>* %scevgep88, align 16, !dbg !76
  %scevgep89 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep8990 = bitcast i32* %scevgep89 to <4 x i32>*
  %scevgep91 = getelementptr <4 x i32>, <4 x i32>* %scevgep8990, i64 -6, !dbg !76
  %wide.load58 = load <4 x i32>, <4 x i32>* %scevgep91, align 16, !dbg !76
  %13 = add <4 x i32> %wide.load57, %vec.phi55, !dbg !77
  %14 = add <4 x i32> %wide.load58, %vec.phi56, !dbg !77
  %scevgep78 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep7879 = bitcast i32* %scevgep78 to <4 x i32>*
  %scevgep80 = getelementptr <4 x i32>, <4 x i32>* %scevgep7879, i64 -5, !dbg !76
  %wide.load57.1 = load <4 x i32>, <4 x i32>* %scevgep80, align 16, !dbg !76
  %scevgep75 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep7576 = bitcast i32* %scevgep75 to <4 x i32>*
  %scevgep77 = getelementptr <4 x i32>, <4 x i32>* %scevgep7576, i64 -4, !dbg !76
  %wide.load58.1 = load <4 x i32>, <4 x i32>* %scevgep77, align 16, !dbg !76
  %15 = add <4 x i32> %wide.load57.1, %13, !dbg !77
  %16 = add <4 x i32> %wide.load58.1, %14, !dbg !77
  %scevgep72 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep7273 = bitcast i32* %scevgep72 to <4 x i32>*
  %scevgep74 = getelementptr <4 x i32>, <4 x i32>* %scevgep7273, i64 -3, !dbg !76
  %wide.load57.2 = load <4 x i32>, <4 x i32>* %scevgep74, align 16, !dbg !76
  %scevgep69 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep6970 = bitcast i32* %scevgep69 to <4 x i32>*
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %scevgep6970, i64 -2, !dbg !76
  %wide.load58.2 = load <4 x i32>, <4 x i32>* %scevgep71, align 16, !dbg !76
  %17 = add <4 x i32> %wide.load57.2, %15, !dbg !77
  %18 = add <4 x i32> %wide.load58.2, %16, !dbg !77
  %scevgep83 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep8384 = bitcast i32* %scevgep83 to <4 x i32>*
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %scevgep8384, i64 -1, !dbg !76
  %wide.load57.3 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !76
  %scevgep81 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index51, !dbg !76
  %scevgep8182 = bitcast i32* %scevgep81 to <4 x i32>*
  %wide.load58.3 = load <4 x i32>, <4 x i32>* %scevgep8182, align 16, !dbg !76
  %19 = add <4 x i32> %wide.load57.3, %17, !dbg !77
  %20 = add <4 x i32> %wide.load58.3, %18, !dbg !77
  %index.next52.3 = add nuw nsw i64 %index51, 32, !dbg !74
  %21 = icmp eq i64 %index.next52.3, 1024, !dbg !74
  br i1 %21, label %middle.block47, label %vector.body49, !dbg !74, !llvm.loop !78

middle.block47:                                   ; preds = %vector.body49
  %bin.rdx59 = add <4 x i32> %20, %19, !dbg !73
  %rdx.shuf124 = shufflevector <4 x i32> %bin.rdx59, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !73
  %bin.rdx125 = add <4 x i32> %bin.rdx59, %rdx.shuf124, !dbg !73
  %rdx.shuf126 = shufflevector <4 x i32> %bin.rdx125, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !73
  %bin.rdx127 = add <4 x i32> %bin.rdx125, %rdx.shuf126, !dbg !73
  %22 = extractelement <4 x i32> %bin.rdx127, i32 0, !dbg !73
  call void @llvm.dbg.value(metadata i32 %22, metadata !52, metadata !DIExpression()), !dbg !60
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1, !dbg !80
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next40, metadata !55, metadata !DIExpression()), !dbg !71
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !70
  %23 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !70
  %exitcond41.not = icmp eq i64 %indvars.iv.next40, 1024, !dbg !81
  br i1 %exitcond41.not, label %for.cond.cleanup4, label %vector.ph50, !dbg !70, !llvm.loop !82

for.cond.cleanup4:                                ; preds = %middle.block47
  call void @llvm.dbg.value(metadata i32 %22, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %22, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %22, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %22, metadata !52, metadata !DIExpression()), !dbg !60
  ret i32 %22, !dbg !84

; uselistorder directives
  uselistorder i64 %indvars.iv.next40, { 1, 0 }
  uselistorder i32 %22, { 1, 0 }
  uselistorder i64 %index51, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder i64 %lsr.iv92, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 1024, { 1, 0 }
  uselistorder i32 0, { 0, 5, 2, 3, 4, 1, 6, 7 }
  uselistorder i64 0, { 17, 18, 7, 8, 5, 6, 15, 16, 13, 14, 11, 12, 9, 10, 1, 2, 3, 4, 21, 22, 19, 20, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 7, 2, 1, 0, 9, 8, 5, 6, 4, 3, 10, 11 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex5.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
!4 = !{}
!5 = !{!0, !6, !13, !15, !17, !19, !24, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_no_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 33554432, elements: !22)
!22 = !{!23, !23}
!23 = !DISubrange(count: 1024)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "dd", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "aaa", scope: !2, file: !8, line: 25, type: !34, isLocal: false, isDefinition: true, align: 128)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 536870912, elements: !35)
!35 = !{!36, !36, !36}
!36 = !DISubrange(count: 256)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "bbb", scope: !2, file: !8, line: 25, type: !34, isLocal: false, isDefinition: true, align: 128)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 26, type: !10, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !8, line: 26, type: !10, isLocal: false, isDefinition: true)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!47 = distinct !DISubprogram(name: "ex5", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex5.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53, !55, !57}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocalVariable(name: "i", scope: !56, file: !48, line: 8, type: !10)
!56 = distinct !DILexicalBlock(scope: !47, file: !48, line: 8, column: 2)
!57 = !DILocalVariable(name: "j", scope: !58, file: !48, line: 9, type: !10)
!58 = distinct !DILexicalBlock(scope: !59, file: !48, line: 9, column: 4)
!59 = distinct !DILexicalBlock(scope: !56, file: !48, line: 8, column: 2)
!60 = !DILocation(line: 0, scope: !47)
!61 = !DILocation(line: 0, scope: !54)
!62 = !DILocation(line: 6, column: 2, scope: !54)
!63 = !DILocation(line: 6, column: 28, scope: !64)
!64 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!65 = !DILocation(line: 7, column: 10, scope: !64)
!66 = !DILocation(line: 7, column: 7, scope: !64)
!67 = distinct !{!67, !62, !68, !69}
!68 = !DILocation(line: 7, column: 13, scope: !54)
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !DILocation(line: 8, column: 2, scope: !56)
!71 = !DILocation(line: 0, scope: !56)
!72 = !DILocation(line: 0, scope: !58)
!73 = !DILocation(line: 9, column: 4, scope: !58)
!74 = !DILocation(line: 9, column: 31, scope: !75)
!75 = distinct !DILexicalBlock(scope: !58, file: !48, line: 9, column: 4)
!76 = !DILocation(line: 10, column: 12, scope: !75)
!77 = !DILocation(line: 10, column: 9, scope: !75)
!78 = distinct !{!78, !73, !79, !69}
!79 = !DILocation(line: 10, column: 19, scope: !58)
!80 = !DILocation(line: 8, column: 29, scope: !59)
!81 = !DILocation(line: 8, column: 20, scope: !59)
!82 = distinct !{!82, !70, !83}
!83 = !DILocation(line: 10, column: 19, scope: !56)
!84 = !DILocation(line: 11, column: 2, scope: !47)
