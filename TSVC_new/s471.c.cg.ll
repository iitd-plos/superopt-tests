; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s471.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s471.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s471() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 32000, metadata !69, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !76
  br label %vector.body, !dbg !77

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv93 = phi i64 [ %lsr.iv.next94, %vector.body ], [ 0, %entry ], !dbg !78
  %uglygep102 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv93, !dbg !80
  %uglygep102103 = bitcast i8* %uglygep102 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep102103, align 16, !dbg !80
  %uglygep109 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv93, !dbg !82
  %uglygep109110 = bitcast i8* %uglygep109 to <4 x i32>*
  %wide.load50 = load <4 x i32>, <4 x i32>* %uglygep109110, align 16, !dbg !82
  %0 = mul <4 x i32> %wide.load50, %wide.load50, !dbg !83
  %1 = add <4 x i32> %0, %wide.load, !dbg !84
  %uglygep114 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv93, !dbg !85
  %uglygep114115 = bitcast i8* %uglygep114 to <4 x i32>*
  store <4 x i32> %1, <4 x i32>* %uglygep114115, align 16, !dbg !85
  %uglygep119 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv93, !dbg !86
  %uglygep119120 = bitcast i8* %uglygep119 to <4 x i32>*
  %wide.load51 = load <4 x i32>, <4 x i32>* %uglygep119120, align 16, !dbg !86
  %uglygep124 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv93, !dbg !87
  %uglygep124125 = bitcast i8* %uglygep124 to <4 x i32>*
  %wide.load52 = load <4 x i32>, <4 x i32>* %uglygep124125, align 16, !dbg !87
  %2 = mul <4 x i32> %wide.load52, %wide.load50, !dbg !88
  %3 = add <4 x i32> %2, %wide.load51, !dbg !89
  %uglygep104 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv93, !dbg !90
  %uglygep104105 = bitcast i8* %uglygep104 to <4 x i32>*
  store <4 x i32> %3, <4 x i32>* %uglygep104105, align 16, !dbg !90
  %uglygep99 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv93, !dbg !80
  %uglygep99100 = bitcast i8* %uglygep99 to <4 x i32>*
  %scevgep101 = getelementptr <4 x i32>, <4 x i32>* %uglygep99100, i64 1, !dbg !80
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep101, align 16, !dbg !80
  %uglygep106 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv93, !dbg !82
  %uglygep106107 = bitcast i8* %uglygep106 to <4 x i32>*
  %scevgep108 = getelementptr <4 x i32>, <4 x i32>* %uglygep106107, i64 1, !dbg !82
  %wide.load50.1 = load <4 x i32>, <4 x i32>* %scevgep108, align 16, !dbg !82
  %4 = mul <4 x i32> %wide.load50.1, %wide.load50.1, !dbg !83
  %5 = add <4 x i32> %4, %wide.load.1, !dbg !84
  %uglygep111 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv93, !dbg !85
  %uglygep111112 = bitcast i8* %uglygep111 to <4 x i32>*
  %scevgep113 = getelementptr <4 x i32>, <4 x i32>* %uglygep111112, i64 1, !dbg !85
  store <4 x i32> %5, <4 x i32>* %scevgep113, align 16, !dbg !85
  %uglygep116 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv93, !dbg !86
  %uglygep116117 = bitcast i8* %uglygep116 to <4 x i32>*
  %scevgep118 = getelementptr <4 x i32>, <4 x i32>* %uglygep116117, i64 1, !dbg !86
  %wide.load51.1 = load <4 x i32>, <4 x i32>* %scevgep118, align 16, !dbg !86
  %uglygep121 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv93, !dbg !87
  %uglygep121122 = bitcast i8* %uglygep121 to <4 x i32>*
  %scevgep123 = getelementptr <4 x i32>, <4 x i32>* %uglygep121122, i64 1, !dbg !87
  %wide.load52.1 = load <4 x i32>, <4 x i32>* %scevgep123, align 16, !dbg !87
  %6 = mul <4 x i32> %wide.load52.1, %wide.load50.1, !dbg !88
  %7 = add <4 x i32> %6, %wide.load51.1, !dbg !89
  %uglygep96 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv93, !dbg !90
  %uglygep9697 = bitcast i8* %uglygep96 to <4 x i32>*
  %scevgep98 = getelementptr <4 x i32>, <4 x i32>* %uglygep9697, i64 1, !dbg !90
  store <4 x i32> %7, <4 x i32>* %scevgep98, align 16, !dbg !90
  %lsr.iv.next94 = add nuw nsw i64 %lsr.iv93, 32, !dbg !78
  %8 = icmp eq i64 %lsr.iv.next94, 128000, !dbg !78
  br i1 %8, label %vector.body55.preheader, label %vector.body, !dbg !78, !llvm.loop !91

vector.body55.preheader:                          ; preds = %vector.body
  br label %vector.body55, !dbg !94

vector.body55:                                    ; preds = %vector.body55.preheader, %vector.body55
  %lsr.iv = phi i64 [ -128000, %vector.body55.preheader ], [ %lsr.iv.next, %vector.body55 ], !dbg !95
  %vec.phi = phi <4 x i32> [ %17, %vector.body55 ], [ zeroinitializer, %vector.body55.preheader ]
  %vec.phi61 = phi <4 x i32> [ %18, %vector.body55 ], [ zeroinitializer, %vector.body55.preheader ]
  %uglygep83 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i64 8000, !dbg !97
  %wide.load62 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !97
  %scevgep86 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i64 8001, !dbg !97
  %wide.load63 = load <4 x i32>, <4 x i32>* %scevgep86, align 16, !dbg !97
  %9 = add <4 x i32> %wide.load62, %vec.phi, !dbg !99
  %10 = add <4 x i32> %wide.load63, %vec.phi61, !dbg !99
  %uglygep90 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep9091 = bitcast i8* %uglygep90 to <4 x i32>*
  %scevgep92 = getelementptr <4 x i32>, <4 x i32>* %uglygep9091, i64 8002, !dbg !97
  %wide.load62.1 = load <4 x i32>, <4 x i32>* %scevgep92, align 16, !dbg !97
  %uglygep87 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep8788 = bitcast i8* %uglygep87 to <4 x i32>*
  %scevgep89 = getelementptr <4 x i32>, <4 x i32>* %uglygep8788, i64 8003, !dbg !97
  %wide.load63.1 = load <4 x i32>, <4 x i32>* %scevgep89, align 16, !dbg !97
  %11 = add <4 x i32> %wide.load62.1, %9, !dbg !99
  %12 = add <4 x i32> %wide.load63.1, %10, !dbg !99
  %uglygep80 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep8081 = bitcast i8* %uglygep80 to <4 x i32>*
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %uglygep8081, i64 8004, !dbg !97
  %wide.load62.2 = load <4 x i32>, <4 x i32>* %scevgep82, align 16, !dbg !97
  %uglygep77 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep7778 = bitcast i8* %uglygep77 to <4 x i32>*
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %uglygep7778, i64 8005, !dbg !97
  %wide.load63.2 = load <4 x i32>, <4 x i32>* %scevgep79, align 16, !dbg !97
  %13 = add <4 x i32> %wide.load62.2, %11, !dbg !99
  %14 = add <4 x i32> %wide.load63.2, %12, !dbg !99
  %uglygep74 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep7475 = bitcast i8* %uglygep74 to <4 x i32>*
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %uglygep7475, i64 8006, !dbg !97
  %wide.load62.3 = load <4 x i32>, <4 x i32>* %scevgep76, align 16, !dbg !97
  %uglygep71 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep7172 = bitcast i8* %uglygep71 to <4 x i32>*
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %uglygep7172, i64 8007, !dbg !97
  %wide.load63.3 = load <4 x i32>, <4 x i32>* %scevgep73, align 16, !dbg !97
  %15 = add <4 x i32> %wide.load62.3, %13, !dbg !99
  %16 = add <4 x i32> %wide.load63.3, %14, !dbg !99
  %uglygep68 = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep6869 = bitcast i8* %uglygep68 to <4 x i32>*
  %scevgep70 = getelementptr <4 x i32>, <4 x i32>* %uglygep6869, i64 8008, !dbg !97
  %wide.load62.4 = load <4 x i32>, <4 x i32>* %scevgep70, align 16, !dbg !97
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @x to i8*), i64 %lsr.iv, !dbg !97
  %uglygep67 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep67, i64 8009, !dbg !97
  %wide.load63.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !97
  %17 = add <4 x i32> %wide.load62.4, %15, !dbg !99
  %18 = add <4 x i32> %wide.load63.4, %16, !dbg !99
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !95
  %19 = icmp eq i64 %lsr.iv.next, 0, !dbg !95
  br i1 %19, label %middle.block53, label %vector.body55, !dbg !95, !llvm.loop !100

middle.block53:                                   ; preds = %vector.body55
  %bin.rdx = add <4 x i32> %18, %17, !dbg !94
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !94
  %bin.rdx126 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !94
  %rdx.shuf127 = shufflevector <4 x i32> %bin.rdx126, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !94
  %bin.rdx128 = add <4 x i32> %bin.rdx126, %rdx.shuf127, !dbg !94
  %20 = extractelement <4 x i32> %bin.rdx128, i32 0, !dbg !94
  call void @llvm.dbg.value(metadata i32 %20, metadata !72, metadata !DIExpression()), !dbg !75
  store i32 %20, i32* @temp, align 4, !dbg !102
  ret i32 0, !dbg !103

; uselistorder directives
  uselistorder <4 x i32> %18, { 1, 0 }
  uselistorder <4 x i32> %17, { 1, 0 }
  uselistorder i64 %lsr.iv, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 %lsr.iv93, { 12, 11, 1, 3, 5, 7, 10, 8, 0, 2, 4, 6, 9 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder i64 1, { 5, 0, 1, 2, 3, 4 }
  uselistorder i8* bitcast ([32000 x i32]* @e to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @x to i8*), { 10, 9, 8, 7, 6, 5, 3, 2, 4, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 6, 8, 9, 10, 11, 12, 2, 4, 7, 3, 5 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 3, 2, 0, 1 }
  uselistorder i64 0, { 1, 0 }
  uselistorder label %vector.body55, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !8, line: 21, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s471.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
!4 = !{}
!5 = !{!0, !6, !13, !15, !17, !19, !21, !26, !28, !30, !32, !34, !36, !38, !40, !45, !47, !49, !51, !53, !56, !58}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "X", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "TSVC_new/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "Y", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "Z", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "U", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "V", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "array", scope: !2, file: !8, line: 24, type: !23, isLocal: false, isDefinition: true, align: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 65536)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 26, type: !9, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !8, line: 27, type: !10, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !43)
!43 = !{!44, !44}
!44 = !DISubrange(count: 256)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !8, line: 33, type: !9, isLocal: false, isDefinition: true, align: 128)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !8, line: 36, type: !55, isLocal: false, isDefinition: true)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !8, line: 37, type: !55, isLocal: false, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !8, line: 38, type: !9, isLocal: false, isDefinition: true)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!64 = distinct !DISubprogram(name: "s471", scope: !65, file: !65, line: 3, type: !66, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s471.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !70, !72, !73}
!69 = !DILocalVariable(name: "m", scope: !64, file: !65, line: 5, type: !10)
!70 = !DILocalVariable(name: "i", scope: !71, file: !65, line: 6, type: !10)
!71 = distinct !DILexicalBlock(scope: !64, file: !65, line: 6, column: 3)
!72 = !DILocalVariable(name: "sum", scope: !64, file: !65, line: 10, type: !10)
!73 = !DILocalVariable(name: "i", scope: !74, file: !65, line: 11, type: !10)
!74 = distinct !DILexicalBlock(scope: !64, file: !65, line: 11, column: 2)
!75 = !DILocation(line: 0, scope: !64)
!76 = !DILocation(line: 0, scope: !71)
!77 = !DILocation(line: 6, column: 3, scope: !71)
!78 = !DILocation(line: 6, column: 27, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !65, line: 6, column: 3)
!80 = !DILocation(line: 7, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !79, file: !65, line: 6, column: 31)
!82 = !DILocation(line: 7, column: 18, scope: !81)
!83 = !DILocation(line: 7, column: 23, scope: !81)
!84 = !DILocation(line: 7, column: 16, scope: !81)
!85 = !DILocation(line: 7, column: 9, scope: !81)
!86 = !DILocation(line: 8, column: 11, scope: !81)
!87 = !DILocation(line: 8, column: 25, scope: !81)
!88 = !DILocation(line: 8, column: 23, scope: !81)
!89 = !DILocation(line: 8, column: 16, scope: !81)
!90 = !DILocation(line: 8, column: 9, scope: !81)
!91 = distinct !{!91, !77, !92, !93}
!92 = !DILocation(line: 9, column: 3, scope: !71)
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !DILocation(line: 11, column: 2, scope: !74)
!95 = !DILocation(line: 11, column: 28, scope: !96)
!96 = distinct !DILexicalBlock(scope: !74, file: !65, line: 11, column: 2)
!97 = !DILocation(line: 12, column: 10, scope: !98)
!98 = distinct !DILexicalBlock(scope: !96, file: !65, line: 11, column: 31)
!99 = !DILocation(line: 12, column: 7, scope: !98)
!100 = distinct !{!100, !94, !101, !93}
!101 = !DILocation(line: 13, column: 2, scope: !74)
!102 = !DILocation(line: 14, column: 8, scope: !64)
!103 = !DILocation(line: 15, column: 2, scope: !64)
