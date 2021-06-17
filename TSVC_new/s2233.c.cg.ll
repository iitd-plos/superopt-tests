; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s2233.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s2233.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s2233() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !69, metadata !DIExpression()), !dbg !77
  br label %for.cond1.preheader, !dbg !78

for.cond1.preheader:                              ; preds = %entry, %for.body19
  %lsr.iv90 = phi i64 [ 1028, %entry ], [ %lsr.iv.next91, %for.body19 ]
  %lsr.iv70 = phi i64 [ 3076, %entry ], [ %lsr.iv.next71, %for.body19 ]
  %indvars.iv65 = phi i64 [ 1, %entry ], [ %indvars.iv.next66, %for.body19 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv65, metadata !69, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 1, metadata !71, metadata !DIExpression()), !dbg !79
  %arrayidx6.phi.trans.insert = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 0, i64 %indvars.iv65, !dbg !80
  %.pre = load i32, i32* %arrayidx6.phi.trans.insert, align 4, !dbg !83
  br label %for.body4, !dbg !84

for.cond.cleanup:                                 ; preds = %for.body19
  ret i32 0, !dbg !85

for.cond16.preheader:                             ; preds = %for.body4
  call void @llvm.dbg.value(metadata i32 1, metadata !75, metadata !DIExpression()), !dbg !86
  %0 = add nsw i64 %indvars.iv65, -1, !dbg !87
  br label %vector.body, !dbg !90

vector.body:                                      ; preds = %vector.body.1, %for.cond16.preheader
  %lsr.iv88 = phi i64 [ %lsr.iv.next89, %vector.body.1 ], [ -992, %for.cond16.preheader ]
  %1 = add i64 %lsr.iv90, %lsr.iv88, !dbg !91
  %uglygep98 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %1, !dbg !91
  %uglygep9899 = bitcast i8* %uglygep98 to <4 x i32>*
  %scevgep100 = getelementptr <4 x i32>, <4 x i32>* %uglygep9899, i64 -2, !dbg !91
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep100, align 4, !dbg !91
  %2 = add i64 %lsr.iv90, %lsr.iv88, !dbg !92
  %uglygep107 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %2, !dbg !92
  %uglygep107108 = bitcast i8* %uglygep107 to <4 x i32>*
  %scevgep109 = getelementptr <4 x i32>, <4 x i32>* %uglygep107108, i64 62, !dbg !92
  %wide.load69 = load <4 x i32>, <4 x i32>* %scevgep109, align 4, !dbg !92
  %3 = add <4 x i32> %wide.load69, %wide.load, !dbg !93
  %4 = add i64 %lsr.iv90, %lsr.iv88, !dbg !94
  %uglygep101 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %4, !dbg !94
  %uglygep101102 = bitcast i8* %uglygep101 to <4 x i32>*
  %scevgep103 = getelementptr <4 x i32>, <4 x i32>* %uglygep101102, i64 62, !dbg !94
  store <4 x i32> %3, <4 x i32>* %scevgep103, align 4, !dbg !94
  %5 = icmp eq i64 %lsr.iv88, 0
  br i1 %5, label %for.body19, label %vector.body.1, !llvm.loop !95

for.body4:                                        ; preds = %for.body4, %for.cond1.preheader
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.body4 ], [ -261120, %for.cond1.preheader ], !dbg !83
  %6 = phi i32 [ %.pre, %for.cond1.preheader ], [ %add.2, %for.body4 ], !dbg !83
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression()), !dbg !79
  %7 = add i64 %lsr.iv70, %lsr.iv, !dbg !98
  %uglygep82 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %7, !dbg !98
  %uglygep8283 = bitcast i8* %uglygep82 to i32*
  %scevgep84 = getelementptr i32, i32* %uglygep8283, i64 64768, !dbg !98
  %8 = load i32, i32* %scevgep84, align 4, !dbg !98
  %add = add i32 %8, %6, !dbg !99
  %9 = add i64 %lsr.iv70, %lsr.iv, !dbg !100
  %uglygep73 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %9, !dbg !100
  %uglygep7374 = bitcast i8* %uglygep73 to i32*
  %scevgep75 = getelementptr i32, i32* %uglygep7374, i64 64768, !dbg !100
  store i32 %add, i32* %scevgep75, align 4, !dbg !100
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !79
  %10 = add i64 %lsr.iv70, %lsr.iv, !dbg !98
  %uglygep85 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %10, !dbg !98
  %uglygep8586 = bitcast i8* %uglygep85 to i32*
  %scevgep87 = getelementptr i32, i32* %uglygep8586, i64 65024, !dbg !98
  %11 = load i32, i32* %scevgep87, align 4, !dbg !98
  %add.1 = add i32 %11, %add, !dbg !99
  %12 = add i64 %lsr.iv70, %lsr.iv, !dbg !100
  %uglygep76 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %12, !dbg !100
  %uglygep7677 = bitcast i8* %uglygep76 to i32*
  %scevgep78 = getelementptr i32, i32* %uglygep7677, i64 65024, !dbg !100
  store i32 %add.1, i32* %scevgep78, align 4, !dbg !100
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !79
  %13 = add i64 %lsr.iv70, %lsr.iv, !dbg !98
  %uglygep79 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %13, !dbg !98
  %uglygep7980 = bitcast i8* %uglygep79 to i32*
  %scevgep81 = getelementptr i32, i32* %uglygep7980, i64 65280, !dbg !98
  %14 = load i32, i32* %scevgep81, align 4, !dbg !98
  %add.2 = add i32 %14, %add.1, !dbg !99
  %15 = add i64 %lsr.iv70, %lsr.iv, !dbg !100
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %15, !dbg !100
  %uglygep72 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep72, i64 65280, !dbg !100
  store i32 %add.2, i32* %scevgep, align 4, !dbg !100
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !79
  %lsr.iv.next = add nsw i64 %lsr.iv, 3072, !dbg !101
  %exitcond.not.2 = icmp eq i64 %lsr.iv.next, 0, !dbg !101
  br i1 %exitcond.not.2, label %for.cond16.preheader, label %for.body4, !dbg !84, !llvm.loop !102

for.body19:                                       ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 253, metadata !75, metadata !DIExpression()), !dbg !86
  %arrayidx24 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %0, i64 253, !dbg !91
  %16 = load i32, i32* %arrayidx24, align 4, !dbg !91
  %arrayidx28 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @cc, i64 0, i64 %indvars.iv65, i64 253, !dbg !92
  %17 = load i32, i32* %arrayidx28, align 4, !dbg !92
  %add29 = add i32 %17, %16, !dbg !93
  %arrayidx33 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %indvars.iv65, i64 253, !dbg !104
  store i32 %add29, i32* %arrayidx33, align 4, !dbg !94
  call void @llvm.dbg.value(metadata i64 254, metadata !75, metadata !DIExpression()), !dbg !86
  %arrayidx24.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %0, i64 254, !dbg !91
  %18 = load i32, i32* %arrayidx24.1, align 8, !dbg !91
  %arrayidx28.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @cc, i64 0, i64 %indvars.iv65, i64 254, !dbg !92
  %19 = load i32, i32* %arrayidx28.1, align 8, !dbg !92
  %add29.1 = add i32 %19, %18, !dbg !93
  %arrayidx33.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %indvars.iv65, i64 254, !dbg !104
  store i32 %add29.1, i32* %arrayidx33.1, align 8, !dbg !94
  call void @llvm.dbg.value(metadata i64 255, metadata !75, metadata !DIExpression()), !dbg !86
  %arrayidx24.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %0, i64 255, !dbg !91
  %20 = load i32, i32* %arrayidx24.2, align 4, !dbg !91
  %arrayidx28.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @cc, i64 0, i64 %indvars.iv65, i64 255, !dbg !92
  %21 = load i32, i32* %arrayidx28.2, align 4, !dbg !92
  %add29.2 = add i32 %21, %20, !dbg !93
  %arrayidx33.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %indvars.iv65, i64 255, !dbg !104
  store i32 %add29.2, i32* %arrayidx33.2, align 4, !dbg !94
  call void @llvm.dbg.value(metadata i64 256, metadata !75, metadata !DIExpression()), !dbg !86
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next66, metadata !69, metadata !DIExpression()), !dbg !77
  %lsr.iv.next71 = add nuw nsw i64 %lsr.iv70, 4, !dbg !78
  %lsr.iv.next91 = add nuw nsw i64 %lsr.iv90, 1024, !dbg !78
  %exitcond68.not = icmp eq i64 %indvars.iv.next66, 256, !dbg !106
  br i1 %exitcond68.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !78, !llvm.loop !107

vector.body.1:                                    ; preds = %vector.body
  %22 = add i64 %lsr.iv90, %lsr.iv88, !dbg !91
  %uglygep95 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %22, !dbg !91
  %uglygep9596 = bitcast i8* %uglygep95 to <4 x i32>*
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9596, i64 -1, !dbg !91
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep97, align 4, !dbg !91
  %23 = add i64 %lsr.iv90, %lsr.iv88, !dbg !92
  %uglygep104 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %23, !dbg !92
  %uglygep104105 = bitcast i8* %uglygep104 to <4 x i32>*
  %scevgep106 = getelementptr <4 x i32>, <4 x i32>* %uglygep104105, i64 63, !dbg !92
  %wide.load69.1 = load <4 x i32>, <4 x i32>* %scevgep106, align 4, !dbg !92
  %24 = add <4 x i32> %wide.load69.1, %wide.load.1, !dbg !93
  %25 = add i64 %lsr.iv90, %lsr.iv88, !dbg !94
  %uglygep92 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %25, !dbg !94
  %uglygep9293 = bitcast i8* %uglygep92 to <4 x i32>*
  %scevgep94 = getelementptr <4 x i32>, <4 x i32>* %uglygep9293, i64 63, !dbg !94
  store <4 x i32> %24, <4 x i32>* %scevgep94, align 4, !dbg !94
  %lsr.iv.next89 = add nsw i64 %lsr.iv88, 32
  br label %vector.body

; uselistorder directives
  uselistorder i32 %add.2, { 1, 0 }
  uselistorder i64 %lsr.iv, { 6, 5, 2, 3, 0, 4, 1 }
  uselistorder i64 %lsr.iv88, { 7, 5, 1, 4, 6, 2, 0, 3 }
  uselistorder i64 %indvars.iv65, { 8, 0, 1, 2, 3, 6, 5, 7, 4 }
  uselistorder i64 %lsr.iv70, { 6, 5, 2, 3, 0, 4, 1 }
  uselistorder i64 %lsr.iv90, { 5, 1, 4, 6, 2, 0, 3 }
  uselistorder i64 63, { 1, 0 }
  uselistorder i64 255, { 2, 1, 0 }
  uselistorder i64 254, { 2, 1, 0 }
  uselistorder i64 253, { 2, 1, 0 }
  uselistorder i64 65280, { 1, 0 }
  uselistorder i64 65024, { 1, 0 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @aa to i8*), { 2, 0, 1 }
  uselistorder i64 64768, { 1, 0 }
  uselistorder i64 62, { 1, 0 }
  uselistorder [256 x [256 x i32]]* @cc, { 1, 2, 3, 0 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @cc to i8*), { 1, 4, 2, 3, 0 }
  uselistorder [256 x [256 x i32]]* @bb, { 1, 2, 3, 4, 5, 6, 0 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @bb to i8*), { 3, 2, 0, 1 }
  uselistorder i32 0, { 1, 0 }
  uselistorder i64 0, { 2, 3, 4, 5, 6, 7, 10, 11, 12, 1, 0, 8, 9 }
  uselistorder [256 x [256 x i32]] zeroinitializer, { 0, 2, 1, 3 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 11, 0, 1, 9, 5, 2, 3, 10, 7, 6, 8, 4, 12 }
  uselistorder label %for.cond1.preheader, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !8, line: 21, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s2233.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s2233", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s2233.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !71, !75}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 9, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 9, column: 3)
!71 = !DILocalVariable(name: "j", scope: !72, file: !65, line: 10, type: !10)
!72 = distinct !DILexicalBlock(scope: !73, file: !65, line: 10, column: 4)
!73 = distinct !DILexicalBlock(scope: !74, file: !65, line: 9, column: 34)
!74 = distinct !DILexicalBlock(scope: !70, file: !65, line: 9, column: 3)
!75 = !DILocalVariable(name: "j", scope: !76, file: !65, line: 13, type: !10)
!76 = distinct !DILexicalBlock(scope: !73, file: !65, line: 13, column: 4)
!77 = !DILocation(line: 0, scope: !70)
!78 = !DILocation(line: 9, column: 3, scope: !70)
!79 = !DILocation(line: 0, scope: !72)
!80 = !DILocation(line: 0, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !65, line: 10, column: 35)
!82 = distinct !DILexicalBlock(scope: !72, file: !65, line: 10, column: 4)
!83 = !DILocation(line: 11, column: 16, scope: !81)
!84 = !DILocation(line: 10, column: 4, scope: !72)
!85 = !DILocation(line: 17, column: 2, scope: !64)
!86 = !DILocation(line: 0, scope: !76)
!87 = !DILocation(line: 0, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !65, line: 13, column: 35)
!89 = distinct !DILexicalBlock(scope: !76, file: !65, line: 13, column: 4)
!90 = !DILocation(line: 13, column: 4, scope: !76)
!91 = !DILocation(line: 14, column: 16, scope: !88)
!92 = !DILocation(line: 14, column: 29, scope: !88)
!93 = !DILocation(line: 14, column: 27, scope: !88)
!94 = !DILocation(line: 14, column: 14, scope: !88)
!95 = distinct !{!95, !90, !96, !97}
!96 = !DILocation(line: 15, column: 4, scope: !76)
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !DILocation(line: 11, column: 29, scope: !81)
!99 = !DILocation(line: 11, column: 27, scope: !81)
!100 = !DILocation(line: 11, column: 14, scope: !81)
!101 = !DILocation(line: 10, column: 22, scope: !82)
!102 = distinct !{!102, !84, !103}
!103 = !DILocation(line: 12, column: 4, scope: !72)
!104 = !DILocation(line: 14, column: 5, scope: !88)
!105 = !DILocation(line: 9, column: 30, scope: !74)
!106 = !DILocation(line: 9, column: 21, scope: !74)
!107 = distinct !{!107, !78, !108}
!108 = !DILocation(line: 16, column: 3, scope: !70)
