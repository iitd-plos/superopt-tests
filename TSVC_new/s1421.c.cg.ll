; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1421.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1421.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@b = dso_local global [32000 x i32] zeroinitializer, align 16, !dbg !32
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s1421() local_unnamed_addr #0 !dbg !64 {
entry:
  store i32* getelementptr inbounds ([32000 x i32], [32000 x i32]* @b, i64 0, i64 16000), i32** @xx, align 8, !dbg !74
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !75
  br label %vector.body, !dbg !76

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv75 = phi i64 [ %lsr.iv.next76, %vector.body ], [ -64000, %entry ], !dbg !77
  %uglygep90 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !79
  %uglygep9091 = bitcast i8* %uglygep90 to <4 x i32>*
  %scevgep92 = getelementptr <4 x i32>, <4 x i32>* %uglygep9091, i64 8000, !dbg !79
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep92, align 16, !dbg !79
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %uglygep9091, i64 8001, !dbg !79
  %wide.load32 = load <4 x i32>, <4 x i32>* %scevgep93, align 16, !dbg !79
  %uglygep104 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv75, !dbg !81
  %uglygep104105 = bitcast i8* %uglygep104 to <4 x i32>*
  %scevgep106 = getelementptr <4 x i32>, <4 x i32>* %uglygep104105, i64 4000, !dbg !81
  %wide.load33 = load <4 x i32>, <4 x i32>* %scevgep106, align 16, !dbg !81
  %scevgep107 = getelementptr <4 x i32>, <4 x i32>* %uglygep104105, i64 4001, !dbg !81
  %wide.load34 = load <4 x i32>, <4 x i32>* %scevgep107, align 16, !dbg !81
  %0 = add <4 x i32> %wide.load33, %wide.load, !dbg !82
  %1 = add <4 x i32> %wide.load34, %wide.load32, !dbg !82
  %uglygep94 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !83
  %uglygep9495 = bitcast i8* %uglygep94 to <4 x i32>*
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 4000, !dbg !83
  store <4 x i32> %0, <4 x i32>* %scevgep96, align 16, !dbg !83
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 4001, !dbg !83
  store <4 x i32> %1, <4 x i32>* %scevgep97, align 16, !dbg !83
  %uglygep81 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !79
  %uglygep8182 = bitcast i8* %uglygep81 to <4 x i32>*
  %scevgep83 = getelementptr <4 x i32>, <4 x i32>* %uglygep8182, i64 8002, !dbg !79
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep83, align 16, !dbg !79
  %uglygep78 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !79
  %uglygep7879 = bitcast i8* %uglygep78 to <4 x i32>*
  %scevgep80 = getelementptr <4 x i32>, <4 x i32>* %uglygep7879, i64 8003, !dbg !79
  %wide.load32.1 = load <4 x i32>, <4 x i32>* %scevgep80, align 16, !dbg !79
  %uglygep101 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv75, !dbg !81
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %scevgep103 = getelementptr <4 x i32>, <4 x i32>* %uglygep101102, i64 4002, !dbg !81
  %wide.load33.1 = load <4 x i32>, <4 x i32>* %scevgep103, align 16, !dbg !81
  %uglygep98 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv75, !dbg !81
  %uglygep9899 = bitcast i8* %uglygep98 to <4 x i32>*
  %scevgep100 = getelementptr <4 x i32>, <4 x i32>* %uglygep9899, i64 4003, !dbg !81
  %wide.load34.1 = load <4 x i32>, <4 x i32>* %scevgep100, align 16, !dbg !81
  %2 = add <4 x i32> %wide.load33.1, %wide.load.1, !dbg !82
  %3 = add <4 x i32> %wide.load34.1, %wide.load32.1, !dbg !82
  %uglygep87 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !83
  %uglygep8788 = bitcast i8* %uglygep87 to <4 x i32>*
  %scevgep89 = getelementptr <4 x i32>, <4 x i32>* %uglygep8788, i64 4002, !dbg !83
  store <4 x i32> %2, <4 x i32>* %scevgep89, align 16, !dbg !83
  %uglygep84 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !83
  %uglygep8485 = bitcast i8* %uglygep84 to <4 x i32>*
  %scevgep86 = getelementptr <4 x i32>, <4 x i32>* %uglygep8485, i64 4003, !dbg !83
  store <4 x i32> %3, <4 x i32>* %scevgep86, align 16, !dbg !83
  %lsr.iv.next76 = add nsw i64 %lsr.iv75, 64, !dbg !77
  %4 = icmp eq i64 %lsr.iv.next76, 0, !dbg !77
  br i1 %4, label %vector.body37.preheader, label %vector.body, !dbg !77, !llvm.loop !84

vector.body37.preheader:                          ; preds = %vector.body
  br label %vector.body37, !dbg !87

vector.body37:                                    ; preds = %vector.body37.preheader, %vector.body37
  %lsr.iv = phi i64 [ -64000, %vector.body37.preheader ], [ %lsr.iv.next, %vector.body37 ], !dbg !88
  %vec.phi = phi <4 x i32> [ %13, %vector.body37 ], [ zeroinitializer, %vector.body37.preheader ]
  %vec.phi43 = phi <4 x i32> [ %14, %vector.body37 ], [ zeroinitializer, %vector.body37.preheader ]
  %uglygep65 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  %scevgep67 = getelementptr <4 x i32>, <4 x i32>* %uglygep6566, i64 8000, !dbg !90
  %wide.load44 = load <4 x i32>, <4 x i32>* %scevgep67, align 16, !dbg !90
  %scevgep68 = getelementptr <4 x i32>, <4 x i32>* %uglygep6566, i64 8001, !dbg !90
  %wide.load45 = load <4 x i32>, <4 x i32>* %scevgep68, align 16, !dbg !90
  %5 = add <4 x i32> %wide.load44, %vec.phi, !dbg !92
  %6 = add <4 x i32> %wide.load45, %vec.phi43, !dbg !92
  %uglygep72 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep7273 = bitcast i8* %uglygep72 to <4 x i32>*
  %scevgep74 = getelementptr <4 x i32>, <4 x i32>* %uglygep7273, i64 8002, !dbg !90
  %wide.load44.1 = load <4 x i32>, <4 x i32>* %scevgep74, align 16, !dbg !90
  %uglygep69 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep6970 = bitcast i8* %uglygep69 to <4 x i32>*
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %uglygep6970, i64 8003, !dbg !90
  %wide.load45.1 = load <4 x i32>, <4 x i32>* %scevgep71, align 16, !dbg !90
  %7 = add <4 x i32> %wide.load44.1, %5, !dbg !92
  %8 = add <4 x i32> %wide.load45.1, %6, !dbg !92
  %uglygep62 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep6263 = bitcast i8* %uglygep62 to <4 x i32>*
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %uglygep6263, i64 8004, !dbg !90
  %wide.load44.2 = load <4 x i32>, <4 x i32>* %scevgep64, align 16, !dbg !90
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %uglygep5960, i64 8005, !dbg !90
  %wide.load45.2 = load <4 x i32>, <4 x i32>* %scevgep61, align 16, !dbg !90
  %9 = add <4 x i32> %wide.load44.2, %7, !dbg !92
  %10 = add <4 x i32> %wide.load45.2, %8, !dbg !92
  %uglygep56 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %uglygep5657, i64 8006, !dbg !90
  %wide.load44.3 = load <4 x i32>, <4 x i32>* %scevgep58, align 16, !dbg !90
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i64 8007, !dbg !90
  %wide.load45.3 = load <4 x i32>, <4 x i32>* %scevgep55, align 16, !dbg !90
  %11 = add <4 x i32> %wide.load44.3, %9, !dbg !92
  %12 = add <4 x i32> %wide.load45.3, %10, !dbg !92
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %uglygep5051, i64 8008, !dbg !90
  %wide.load44.4 = load <4 x i32>, <4 x i32>* %scevgep52, align 16, !dbg !90
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !90
  %uglygep49 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep49, i64 8009, !dbg !90
  %wide.load45.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !90
  %13 = add <4 x i32> %wide.load44.4, %11, !dbg !92
  %14 = add <4 x i32> %wide.load45.4, %12, !dbg !92
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !88
  %15 = icmp eq i64 %lsr.iv.next, 0, !dbg !88
  br i1 %15, label %middle.block35, label %vector.body37, !dbg !88, !llvm.loop !93

middle.block35:                                   ; preds = %vector.body37
  %bin.rdx = add <4 x i32> %14, %13, !dbg !87
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !87
  %bin.rdx108 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !87
  %rdx.shuf109 = shufflevector <4 x i32> %bin.rdx108, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !87
  %bin.rdx110 = add <4 x i32> %bin.rdx108, %rdx.shuf109, !dbg !87
  %16 = extractelement <4 x i32> %bin.rdx110, i32 0, !dbg !87
  call void @llvm.dbg.value(metadata i32 %16, metadata !71, metadata !DIExpression()), !dbg !95
  store i32 %16, i32* @temp, align 4, !dbg !96
  ret i32 0, !dbg !97

; uselistorder directives
  uselistorder <4 x i32> %14, { 1, 0 }
  uselistorder <4 x i32> %13, { 1, 0 }
  uselistorder i64 %lsr.iv, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 %lsr.iv75, { 9, 6, 5, 2, 1, 8, 7, 3, 0, 4 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder i64 4003, { 1, 0 }
  uselistorder i64 4002, { 1, 0 }
  uselistorder i64 8003, { 1, 0 }
  uselistorder i64 8002, { 1, 0 }
  uselistorder i64 4001, { 1, 0 }
  uselistorder i64 4000, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
  uselistorder i64 8001, { 1, 0 }
  uselistorder i64 8000, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 14, 13, 12, 11, 10, 9, 7, 6, 8, 3, 2, 5, 4, 0, 1 }
  uselistorder i64 -64000, { 1, 0 }
  uselistorder i64 0, { 1, 0, 2 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 6, 5 }
  uselistorder label %vector.body37, { 1, 0 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1421.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s1421", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s1421.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !71, !72}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 10, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 10, column: 3)
!71 = !DILocalVariable(name: "sum", scope: !64, file: !65, line: 13, type: !10)
!72 = !DILocalVariable(name: "i", scope: !73, file: !65, line: 14, type: !10)
!73 = distinct !DILexicalBlock(scope: !64, file: !65, line: 14, column: 2)
!74 = !DILocation(line: 9, column: 5, scope: !64)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocation(line: 10, column: 3, scope: !70)
!77 = !DILocation(line: 10, column: 31, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !65, line: 10, column: 3)
!79 = !DILocation(line: 11, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !78, file: !65, line: 10, column: 35)
!81 = !DILocation(line: 11, column: 19, scope: !80)
!82 = !DILocation(line: 11, column: 17, scope: !80)
!83 = !DILocation(line: 11, column: 9, scope: !80)
!84 = distinct !{!84, !76, !85, !86}
!85 = !DILocation(line: 12, column: 3, scope: !70)
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !DILocation(line: 14, column: 2, scope: !73)
!88 = !DILocation(line: 14, column: 30, scope: !89)
!89 = distinct !DILexicalBlock(scope: !73, file: !65, line: 14, column: 2)
!90 = !DILocation(line: 15, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !89, file: !65, line: 14, column: 33)
!92 = !DILocation(line: 15, column: 7, scope: !91)
!93 = distinct !{!93, !87, !94, !86}
!94 = !DILocation(line: 16, column: 2, scope: !73)
!95 = !DILocation(line: 0, scope: !64)
!96 = !DILocation(line: 17, column: 8, scope: !64)
!97 = !DILocation(line: 18, column: 2, scope: !64)
