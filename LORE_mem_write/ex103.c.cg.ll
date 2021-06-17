; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex103.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex103.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !0
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !21
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex103() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !61
  br label %vector.ph, !dbg !62

vector.ph:                                        ; preds = %for.cond.cleanup3, %entry
  %lsr.iv91 = phi i64 [ %lsr.iv.next92, %for.cond.cleanup3 ], [ 48, %entry ]
  %indvars.iv46 = phi i64 [ 0, %entry ], [ %indvars.iv.next47, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !53, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !63
  br label %vector.body, !dbg !64

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv93 = phi i64 [ %lsr.iv.next94, %vector.body ], [ -1024, %vector.ph ], !dbg !65
  %0 = shl nsw i64 %lsr.iv93, 2, !dbg !67
  %1 = add i64 %lsr.iv91, %0, !dbg !67
  %uglygep101 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %1, !dbg !67
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %scevgep103 = getelementptr <4 x i32>, <4 x i32>* %uglygep101102, i64 253, !dbg !67
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep103, align 16, !dbg !67
  %2 = shl nsw i64 %lsr.iv93, 2, !dbg !67
  %3 = add i64 %lsr.iv91, %2, !dbg !67
  %uglygep104 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %3, !dbg !67
  %uglygep104105 = bitcast i8* %uglygep104 to <4 x i32>*
  %scevgep106 = getelementptr <4 x i32>, <4 x i32>* %uglygep104105, i64 254, !dbg !67
  %wide.load49 = load <4 x i32>, <4 x i32>* %scevgep106, align 16, !dbg !67
  %4 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %5 = add i64 %lsr.iv91, %4, !dbg !68
  %uglygep119 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %5, !dbg !68
  %uglygep119120 = bitcast i8* %uglygep119 to <4 x i32>*
  %scevgep121 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i64 253, !dbg !68
  %wide.load50 = load <4 x i32>, <4 x i32>* %scevgep121, align 16, !dbg !68
  %6 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %7 = add i64 %lsr.iv91, %6, !dbg !68
  %uglygep128 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %7, !dbg !68
  %uglygep128129 = bitcast i8* %uglygep128 to <4 x i32>*
  %scevgep130 = getelementptr <4 x i32>, <4 x i32>* %uglygep128129, i64 254, !dbg !68
  %wide.load51 = load <4 x i32>, <4 x i32>* %scevgep130, align 16, !dbg !68
  %8 = add <4 x i32> %wide.load50, %wide.load, !dbg !68
  %9 = add <4 x i32> %wide.load51, %wide.load49, !dbg !68
  %10 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %11 = add i64 %lsr.iv91, %10, !dbg !68
  %uglygep122 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %11, !dbg !68
  %uglygep122123 = bitcast i8* %uglygep122 to <4 x i32>*
  %scevgep124 = getelementptr <4 x i32>, <4 x i32>* %uglygep122123, i64 253, !dbg !68
  store <4 x i32> %8, <4 x i32>* %scevgep124, align 16, !dbg !68
  %12 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %13 = add i64 %lsr.iv91, %12, !dbg !68
  %uglygep125 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %13, !dbg !68
  %uglygep125126 = bitcast i8* %uglygep125 to <4 x i32>*
  %scevgep127 = getelementptr <4 x i32>, <4 x i32>* %uglygep125126, i64 254, !dbg !68
  store <4 x i32> %9, <4 x i32>* %scevgep127, align 16, !dbg !68
  %14 = shl nsw i64 %lsr.iv93, 2, !dbg !67
  %15 = add i64 %lsr.iv91, %14, !dbg !67
  %uglygep98 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %15, !dbg !67
  %uglygep9899 = bitcast i8* %uglygep98 to <4 x i32>*
  %scevgep100 = getelementptr <4 x i32>, <4 x i32>* %uglygep9899, i64 255, !dbg !67
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep100, align 16, !dbg !67
  %16 = shl nsw i64 %lsr.iv93, 2, !dbg !67
  %17 = add i64 %lsr.iv91, %16, !dbg !67
  %uglygep95 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %17, !dbg !67
  %uglygep9596 = bitcast i8* %uglygep95 to <4 x i32>*
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9596, i64 256, !dbg !67
  %wide.load49.1 = load <4 x i32>, <4 x i32>* %scevgep97, align 16, !dbg !67
  %18 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %19 = add i64 %lsr.iv91, %18, !dbg !68
  %uglygep116 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %19, !dbg !68
  %uglygep116117 = bitcast i8* %uglygep116 to <4 x i32>*
  %scevgep118 = getelementptr <4 x i32>, <4 x i32>* %uglygep116117, i64 255, !dbg !68
  %wide.load50.1 = load <4 x i32>, <4 x i32>* %scevgep118, align 16, !dbg !68
  %20 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %21 = add i64 %lsr.iv91, %20, !dbg !68
  %uglygep113 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %21, !dbg !68
  %uglygep113114 = bitcast i8* %uglygep113 to <4 x i32>*
  %scevgep115 = getelementptr <4 x i32>, <4 x i32>* %uglygep113114, i64 256, !dbg !68
  %wide.load51.1 = load <4 x i32>, <4 x i32>* %scevgep115, align 16, !dbg !68
  %22 = add <4 x i32> %wide.load50.1, %wide.load.1, !dbg !68
  %23 = add <4 x i32> %wide.load51.1, %wide.load49.1, !dbg !68
  %24 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %25 = add i64 %lsr.iv91, %24, !dbg !68
  %uglygep107 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %25, !dbg !68
  %uglygep107108 = bitcast i8* %uglygep107 to <4 x i32>*
  %scevgep109 = getelementptr <4 x i32>, <4 x i32>* %uglygep107108, i64 255, !dbg !68
  store <4 x i32> %22, <4 x i32>* %scevgep109, align 16, !dbg !68
  %26 = shl nsw i64 %lsr.iv93, 2, !dbg !68
  %27 = add i64 %lsr.iv91, %26, !dbg !68
  %uglygep110 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %27, !dbg !68
  %uglygep110111 = bitcast i8* %uglygep110 to <4 x i32>*
  %scevgep112 = getelementptr <4 x i32>, <4 x i32>* %uglygep110111, i64 256, !dbg !68
  store <4 x i32> %23, <4 x i32>* %scevgep112, align 16, !dbg !68
  %lsr.iv.next94 = add nsw i64 %lsr.iv93, 16, !dbg !65
  %28 = icmp eq i64 %lsr.iv.next94, 0, !dbg !65
  br i1 %28, label %for.cond.cleanup3, label %vector.body, !dbg !65, !llvm.loop !69

for.cond.cleanup3:                                ; preds = %vector.body
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !72
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !53, metadata !DIExpression()), !dbg !61
  %lsr.iv.next92 = add nuw nsw i64 %lsr.iv91, 4096, !dbg !62
  %exitcond48.not = icmp eq i64 %indvars.iv.next47, 1024, !dbg !73
  br i1 %exitcond48.not, label %vector.body54.preheader, label %vector.ph, !dbg !62, !llvm.loop !74

vector.body54.preheader:                          ; preds = %for.cond.cleanup3
  br label %vector.body54, !dbg !76

vector.body54:                                    ; preds = %vector.body54.preheader, %vector.body54
  %lsr.iv = phi i64 [ -128000, %vector.body54.preheader ], [ %lsr.iv.next, %vector.body54 ], !dbg !77
  %uglygep69 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep6970 = bitcast i8* %uglygep69 to <4 x i32>*
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %uglygep6970, i64 8000, !dbg !79
  %wide.load60 = load <4 x i32>, <4 x i32>* %scevgep71, align 16, !dbg !79
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %uglygep6970, i64 8001, !dbg !79
  %wide.load61 = load <4 x i32>, <4 x i32>* %scevgep72, align 16, !dbg !79
  %uglygep83 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !80
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i64 8000, !dbg !80
  %wide.load62 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !80
  %scevgep90 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i64 8001, !dbg !80
  %wide.load63 = load <4 x i32>, <4 x i32>* %scevgep90, align 16, !dbg !80
  %29 = add <4 x i32> %wide.load62, %wide.load60, !dbg !80
  %30 = add <4 x i32> %wide.load63, %wide.load61, !dbg !80
  %uglygep86 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !80
  %uglygep8687 = bitcast i8* %uglygep86 to <4 x i32>*
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i64 8000, !dbg !80
  store <4 x i32> %29, <4 x i32>* %scevgep88, align 16, !dbg !80
  %scevgep89 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i64 8001, !dbg !80
  store <4 x i32> %30, <4 x i32>* %scevgep89, align 16, !dbg !80
  %uglygep66 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep6667 = bitcast i8* %uglygep66 to <4 x i32>*
  %scevgep68 = getelementptr <4 x i32>, <4 x i32>* %uglygep6667, i64 8002, !dbg !79
  %wide.load60.1 = load <4 x i32>, <4 x i32>* %scevgep68, align 16, !dbg !79
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep65 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep65, i64 8003, !dbg !79
  %wide.load61.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !79
  %uglygep80 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !80
  %uglygep8081 = bitcast i8* %uglygep80 to <4 x i32>*
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %uglygep8081, i64 8002, !dbg !80
  %wide.load62.1 = load <4 x i32>, <4 x i32>* %scevgep82, align 16, !dbg !80
  %uglygep77 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !80
  %uglygep7778 = bitcast i8* %uglygep77 to <4 x i32>*
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %uglygep7778, i64 8003, !dbg !80
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %scevgep79, align 16, !dbg !80
  %31 = add <4 x i32> %wide.load62.1, %wide.load60.1, !dbg !80
  %32 = add <4 x i32> %wide.load63.1, %wide.load61.1, !dbg !80
  %uglygep73 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !80
  %uglygep7374 = bitcast i8* %uglygep73 to <4 x i32>*
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %uglygep7374, i64 8002, !dbg !80
  store <4 x i32> %31, <4 x i32>* %scevgep75, align 16, !dbg !80
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %uglygep7374, i64 8003, !dbg !80
  store <4 x i32> %32, <4 x i32>* %scevgep76, align 16, !dbg !80
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !77
  %33 = icmp eq i64 %lsr.iv.next, 0, !dbg !77
  br i1 %33, label %for.cond.cleanup17, label %vector.body54, !dbg !77, !llvm.loop !81

for.cond.cleanup17:                               ; preds = %vector.body54
  ret i32 0, !dbg !83

; uselistorder directives
  uselistorder i64 %lsr.iv, { 8, 4, 3, 2, 7, 6, 0, 1, 5 }
  uselistorder i64 %lsr.iv93, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 %lsr.iv91, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 8003, { 1, 0, 2 }
  uselistorder i64 8002, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i64 8001, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
  uselistorder i64 256, { 1, 0, 2 }
  uselistorder i64 255, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), { 6, 7, 5, 4, 1, 2, 0, 3 }
  uselistorder i64 254, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), { 3, 2, 0, 1 }
  uselistorder i64 2, { 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 0, { 1, 0, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 0, 3, 4 }
  uselistorder label %vector.body54, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex103.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_mem_write")
!4 = !{}
!5 = !{!6, !13, !15, !17, !19, !0, !21, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 33554432, elements: !24)
!24 = !{!25, !25}
!25 = !DISubrange(count: 1024)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "dd", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
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
!47 = distinct !DISubprogram(name: "ex103", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_mem_write/ex103.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53, !55, !58}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocalVariable(name: "j", scope: !56, file: !48, line: 7, type: !10)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 7, column: 4)
!57 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!58 = !DILocalVariable(name: "i", scope: !59, file: !48, line: 9, type: !10)
!59 = distinct !DILexicalBlock(scope: !47, file: !48, line: 9, column: 2)
!60 = !DILocation(line: 0, scope: !47)
!61 = !DILocation(line: 0, scope: !54)
!62 = !DILocation(line: 6, column: 2, scope: !54)
!63 = !DILocation(line: 0, scope: !56)
!64 = !DILocation(line: 7, column: 4, scope: !56)
!65 = !DILocation(line: 7, column: 31, scope: !66)
!66 = distinct !DILexicalBlock(scope: !56, file: !48, line: 7, column: 4)
!67 = !DILocation(line: 8, column: 16, scope: !66)
!68 = !DILocation(line: 8, column: 13, scope: !66)
!69 = distinct !{!69, !64, !70, !71}
!70 = !DILocation(line: 8, column: 23, scope: !56)
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !DILocation(line: 6, column: 29, scope: !57)
!73 = !DILocation(line: 6, column: 20, scope: !57)
!74 = distinct !{!74, !62, !75}
!75 = !DILocation(line: 8, column: 23, scope: !54)
!76 = !DILocation(line: 9, column: 2, scope: !59)
!77 = !DILocation(line: 9, column: 28, scope: !78)
!78 = distinct !DILexicalBlock(scope: !59, file: !48, line: 9, column: 2)
!79 = !DILocation(line: 10, column: 11, scope: !78)
!80 = !DILocation(line: 10, column: 8, scope: !78)
!81 = distinct !{!81, !76, !82, !71}
!82 = !DILocation(line: 10, column: 14, scope: !59)
!83 = !DILocation(line: 11, column: 2, scope: !47)
