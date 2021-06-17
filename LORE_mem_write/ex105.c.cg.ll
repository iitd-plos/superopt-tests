; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex105.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex105.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !19
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !24
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex105() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !61
  br label %vector.body, !dbg !62

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv100 = phi i64 [ %lsr.iv.next101, %vector.body ], [ -128000, %entry ], !dbg !63
  %uglygep109 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv100, !dbg !65
  %uglygep109110 = bitcast i8* %uglygep109 to <4 x i32>*
  %scevgep111 = getelementptr <4 x i32>, <4 x i32>* %uglygep109110, i64 8000, !dbg !65
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep111, align 16, !dbg !65
  %scevgep112 = getelementptr <4 x i32>, <4 x i32>* %uglygep109110, i64 8001, !dbg !65
  %wide.load49 = load <4 x i32>, <4 x i32>* %scevgep112, align 16, !dbg !65
  %uglygep123 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv100, !dbg !66
  %uglygep123124 = bitcast i8* %uglygep123 to <4 x i32>*
  %scevgep125 = getelementptr <4 x i32>, <4 x i32>* %uglygep123124, i64 8000, !dbg !66
  %wide.load50 = load <4 x i32>, <4 x i32>* %scevgep125, align 16, !dbg !66
  %scevgep130 = getelementptr <4 x i32>, <4 x i32>* %uglygep123124, i64 8001, !dbg !66
  %wide.load51 = load <4 x i32>, <4 x i32>* %scevgep130, align 16, !dbg !66
  %0 = add <4 x i32> %wide.load50, %wide.load, !dbg !66
  %1 = add <4 x i32> %wide.load51, %wide.load49, !dbg !66
  %uglygep126 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv100, !dbg !66
  %uglygep126127 = bitcast i8* %uglygep126 to <4 x i32>*
  %scevgep128 = getelementptr <4 x i32>, <4 x i32>* %uglygep126127, i64 8000, !dbg !66
  store <4 x i32> %0, <4 x i32>* %scevgep128, align 16, !dbg !66
  %scevgep129 = getelementptr <4 x i32>, <4 x i32>* %uglygep126127, i64 8001, !dbg !66
  store <4 x i32> %1, <4 x i32>* %scevgep129, align 16, !dbg !66
  %uglygep106 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv100, !dbg !65
  %uglygep106107 = bitcast i8* %uglygep106 to <4 x i32>*
  %scevgep108 = getelementptr <4 x i32>, <4 x i32>* %uglygep106107, i64 8002, !dbg !65
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep108, align 16, !dbg !65
  %uglygep103 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv100, !dbg !65
  %uglygep103104 = bitcast i8* %uglygep103 to <4 x i32>*
  %scevgep105 = getelementptr <4 x i32>, <4 x i32>* %uglygep103104, i64 8003, !dbg !65
  %wide.load49.1 = load <4 x i32>, <4 x i32>* %scevgep105, align 16, !dbg !65
  %uglygep120 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv100, !dbg !66
  %uglygep120121 = bitcast i8* %uglygep120 to <4 x i32>*
  %scevgep122 = getelementptr <4 x i32>, <4 x i32>* %uglygep120121, i64 8002, !dbg !66
  %wide.load50.1 = load <4 x i32>, <4 x i32>* %scevgep122, align 16, !dbg !66
  %uglygep117 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv100, !dbg !66
  %uglygep117118 = bitcast i8* %uglygep117 to <4 x i32>*
  %scevgep119 = getelementptr <4 x i32>, <4 x i32>* %uglygep117118, i64 8003, !dbg !66
  %wide.load51.1 = load <4 x i32>, <4 x i32>* %scevgep119, align 16, !dbg !66
  %2 = add <4 x i32> %wide.load50.1, %wide.load.1, !dbg !66
  %3 = add <4 x i32> %wide.load51.1, %wide.load49.1, !dbg !66
  %uglygep113 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv100, !dbg !66
  %uglygep113114 = bitcast i8* %uglygep113 to <4 x i32>*
  %scevgep115 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i64 8002, !dbg !66
  store <4 x i32> %2, <4 x i32>* %scevgep115, align 16, !dbg !66
  %scevgep116 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i64 8003, !dbg !66
  store <4 x i32> %3, <4 x i32>* %scevgep116, align 16, !dbg !66
  %lsr.iv.next101 = add nsw i64 %lsr.iv100, 64, !dbg !63
  %4 = icmp eq i64 %lsr.iv.next101, 0, !dbg !63
  br i1 %4, label %vector.ph55.preheader, label %vector.body, !dbg !63, !llvm.loop !67

vector.ph55.preheader:                            ; preds = %vector.body
  br label %vector.ph55, !dbg !70

vector.ph55:                                      ; preds = %vector.ph55.preheader, %for.cond.cleanup10
  %lsr.iv = phi i64 [ 48, %vector.ph55.preheader ], [ %lsr.iv.next, %for.cond.cleanup10 ]
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.cond.cleanup10 ], [ 0, %vector.ph55.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv43, metadata !55, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 0, metadata !57, metadata !DIExpression()), !dbg !72
  br label %vector.body54, !dbg !73

vector.body54:                                    ; preds = %vector.body54, %vector.ph55
  %lsr.iv64 = phi i64 [ %lsr.iv.next65, %vector.body54 ], [ -1024, %vector.ph55 ], !dbg !74
  %5 = shl nsw i64 %lsr.iv64, 2, !dbg !76
  %6 = add i64 %lsr.iv, %5, !dbg !76
  %uglygep70 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %6, !dbg !76
  %uglygep7071 = bitcast i8* %uglygep70 to <4 x i32>*
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %uglygep7071, i64 253, !dbg !76
  %wide.load60 = load <4 x i32>, <4 x i32>* %scevgep72, align 16, !dbg !76
  %7 = shl nsw i64 %lsr.iv64, 2, !dbg !76
  %8 = add i64 %lsr.iv, %7, !dbg !76
  %uglygep73 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %8, !dbg !76
  %uglygep7374 = bitcast i8* %uglygep73 to <4 x i32>*
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %uglygep7374, i64 254, !dbg !76
  %wide.load61 = load <4 x i32>, <4 x i32>* %scevgep75, align 16, !dbg !76
  %9 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %10 = add i64 %lsr.iv, %9, !dbg !77
  %uglygep88 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %10, !dbg !77
  %uglygep8889 = bitcast i8* %uglygep88 to <4 x i32>*
  %scevgep90 = getelementptr <4 x i32>, <4 x i32>* %uglygep8889, i64 253, !dbg !77
  %wide.load62 = load <4 x i32>, <4 x i32>* %scevgep90, align 16, !dbg !77
  %11 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %12 = add i64 %lsr.iv, %11, !dbg !77
  %uglygep97 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %12, !dbg !77
  %uglygep9798 = bitcast i8* %uglygep97 to <4 x i32>*
  %scevgep99 = getelementptr <4 x i32>, <4 x i32>* %uglygep9798, i64 254, !dbg !77
  %wide.load63 = load <4 x i32>, <4 x i32>* %scevgep99, align 16, !dbg !77
  %13 = add <4 x i32> %wide.load62, %wide.load60, !dbg !77
  %14 = add <4 x i32> %wide.load63, %wide.load61, !dbg !77
  %15 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %16 = add i64 %lsr.iv, %15, !dbg !77
  %uglygep91 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %16, !dbg !77
  %uglygep9192 = bitcast i8* %uglygep91 to <4 x i32>*
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %uglygep9192, i64 253, !dbg !77
  store <4 x i32> %13, <4 x i32>* %scevgep93, align 16, !dbg !77
  %17 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %18 = add i64 %lsr.iv, %17, !dbg !77
  %uglygep94 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %18, !dbg !77
  %uglygep9495 = bitcast i8* %uglygep94 to <4 x i32>*
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 254, !dbg !77
  store <4 x i32> %14, <4 x i32>* %scevgep96, align 16, !dbg !77
  %19 = shl nsw i64 %lsr.iv64, 2, !dbg !76
  %20 = add i64 %lsr.iv, %19, !dbg !76
  %uglygep67 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %20, !dbg !76
  %uglygep6768 = bitcast i8* %uglygep67 to <4 x i32>*
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %uglygep6768, i64 255, !dbg !76
  %wide.load60.1 = load <4 x i32>, <4 x i32>* %scevgep69, align 16, !dbg !76
  %21 = shl nsw i64 %lsr.iv64, 2, !dbg !76
  %22 = add i64 %lsr.iv, %21, !dbg !76
  %uglygep = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %22, !dbg !76
  %uglygep66 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep66, i64 256, !dbg !76
  %wide.load61.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !76
  %23 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %24 = add i64 %lsr.iv, %23, !dbg !77
  %uglygep85 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %24, !dbg !77
  %uglygep8586 = bitcast i8* %uglygep85 to <4 x i32>*
  %scevgep87 = getelementptr <4 x i32>, <4 x i32>* %uglygep8586, i64 255, !dbg !77
  %wide.load62.1 = load <4 x i32>, <4 x i32>* %scevgep87, align 16, !dbg !77
  %25 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %26 = add i64 %lsr.iv, %25, !dbg !77
  %uglygep82 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %26, !dbg !77
  %uglygep8283 = bitcast i8* %uglygep82 to <4 x i32>*
  %scevgep84 = getelementptr <4 x i32>, <4 x i32>* %uglygep8283, i64 256, !dbg !77
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %scevgep84, align 16, !dbg !77
  %27 = add <4 x i32> %wide.load62.1, %wide.load60.1, !dbg !77
  %28 = add <4 x i32> %wide.load63.1, %wide.load61.1, !dbg !77
  %29 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %30 = add i64 %lsr.iv, %29, !dbg !77
  %uglygep76 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %30, !dbg !77
  %uglygep7677 = bitcast i8* %uglygep76 to <4 x i32>*
  %scevgep78 = getelementptr <4 x i32>, <4 x i32>* %uglygep7677, i64 255, !dbg !77
  store <4 x i32> %27, <4 x i32>* %scevgep78, align 16, !dbg !77
  %31 = shl nsw i64 %lsr.iv64, 2, !dbg !77
  %32 = add i64 %lsr.iv, %31, !dbg !77
  %uglygep79 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %32, !dbg !77
  %uglygep7980 = bitcast i8* %uglygep79 to <4 x i32>*
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %uglygep7980, i64 256, !dbg !77
  store <4 x i32> %28, <4 x i32>* %scevgep81, align 16, !dbg !77
  %lsr.iv.next65 = add nsw i64 %lsr.iv64, 16, !dbg !74
  %33 = icmp eq i64 %lsr.iv.next65, 0, !dbg !74
  br i1 %33, label %for.cond.cleanup10, label %vector.body54, !dbg !74, !llvm.loop !78

for.cond.cleanup6:                                ; preds = %for.cond.cleanup10
  ret i32 0, !dbg !80

for.cond.cleanup10:                               ; preds = %vector.body54
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !dbg !81
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next44, metadata !55, metadata !DIExpression()), !dbg !71
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4096, !dbg !70
  %exitcond45.not = icmp eq i64 %indvars.iv.next44, 1024, !dbg !82
  br i1 %exitcond45.not, label %for.cond.cleanup6, label %vector.ph55, !dbg !70, !llvm.loop !83

; uselistorder directives
  uselistorder i64 %indvars.iv.next44, { 1, 0 }
  uselistorder i64 %lsr.iv64, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 %lsr.iv, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 %lsr.iv100, { 8, 4, 3, 2, 7, 6, 0, 1, 5 }
  uselistorder i64 256, { 1, 0, 2 }
  uselistorder i64 255, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), { 6, 7, 5, 4, 1, 2, 0, 3 }
  uselistorder i64 254, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), { 3, 2, 0, 1 }
  uselistorder i64 2, { 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 0, { 1, 2, 0 }
  uselistorder i64 8003, { 1, 0, 2 }
  uselistorder i64 8002, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i64 8001, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 0, 3, 4 }
  uselistorder label %vector.ph55, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex105.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_mem_write")
!4 = !{}
!5 = !{!0, !6, !13, !15, !17, !19, !24, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
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
!47 = distinct !DISubprogram(name: "ex105", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_mem_write/ex105.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
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
!65 = !DILocation(line: 7, column: 11, scope: !64)
!66 = !DILocation(line: 7, column: 8, scope: !64)
!67 = distinct !{!67, !62, !68, !69}
!68 = !DILocation(line: 7, column: 14, scope: !54)
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !DILocation(line: 8, column: 2, scope: !56)
!71 = !DILocation(line: 0, scope: !56)
!72 = !DILocation(line: 0, scope: !58)
!73 = !DILocation(line: 9, column: 4, scope: !58)
!74 = !DILocation(line: 9, column: 31, scope: !75)
!75 = distinct !DILexicalBlock(scope: !58, file: !48, line: 9, column: 4)
!76 = !DILocation(line: 10, column: 17, scope: !75)
!77 = !DILocation(line: 10, column: 14, scope: !75)
!78 = distinct !{!78, !73, !79, !69}
!79 = !DILocation(line: 10, column: 24, scope: !58)
!80 = !DILocation(line: 11, column: 2, scope: !47)
!81 = !DILocation(line: 8, column: 29, scope: !59)
!82 = !DILocation(line: 8, column: 20, scope: !59)
!83 = distinct !{!83, !70, !84}
!84 = !DILocation(line: 10, column: 24, scope: !56)
