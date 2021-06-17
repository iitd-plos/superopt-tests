; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s125.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s125.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
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
define dso_local i32 @s125() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 -1, metadata !69, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !77
  br label %vector.scevcheck, !dbg !78

vector.scevcheck:                                 ; preds = %for.cond.cleanup3, %entry
  %lsr.iv63 = phi i64 [ %lsr.iv.next64, %for.cond.cleanup3 ], [ 4, %entry ]
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.cleanup3 ], [ 16, %entry ]
  %indvars.iv37 = phi i64 [ 0, %entry ], [ %indvars.iv.next38, %for.cond.cleanup3 ]
  %k.035 = phi i32 [ -1, %entry ], [ %inc.lcssa, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !70, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 %k.035, metadata !69, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 %k.035, metadata !69, metadata !DIExpression()), !dbg !76
  %0 = add i32 %k.035, 1, !dbg !80
  %1 = add i32 %k.035, 256, !dbg !80
  %2 = icmp slt i32 %1, %0, !dbg !80
  br i1 %2, label %for.body4.preheader, label %vector.ph, !dbg !80

for.body4.preheader:                              ; preds = %vector.scevcheck
  %3 = zext i32 %k.035 to i64, !dbg !80
  br label %for.body4, !dbg !80

vector.ph:                                        ; preds = %vector.scevcheck
  %ind.end = add i32 %k.035, 256, !dbg !80
  %4 = zext i32 %0 to i64, !dbg !80
  br label %vector.body, !dbg !80

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !81
  %5 = add i64 %4, %index, !dbg !83
  %6 = shl nuw nsw i64 %index, 2, !dbg !83
  %7 = add i64 %lsr.iv, %6, !dbg !83
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %7, !dbg !83
  %uglygep50 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep50, i64 -1, !dbg !83
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !83
  %8 = shl nuw nsw i64 %index, 2, !dbg !83
  %9 = add i64 %lsr.iv, %8, !dbg !83
  %uglygep51 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %9, !dbg !83
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %wide.load42 = load <4 x i32>, <4 x i32>* %uglygep5152, align 16, !dbg !83
  %10 = shl nuw nsw i64 %index, 2, !dbg !85
  %11 = add i64 %lsr.iv, %10, !dbg !85
  %uglygep53 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %11, !dbg !85
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i64 -1, !dbg !85
  %wide.load43 = load <4 x i32>, <4 x i32>* %scevgep55, align 16, !dbg !85
  %12 = shl nuw nsw i64 %index, 2, !dbg !85
  %13 = add i64 %lsr.iv, %12, !dbg !85
  %uglygep56 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %13, !dbg !85
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %wide.load44 = load <4 x i32>, <4 x i32>* %uglygep5657, align 16, !dbg !85
  %14 = shl nuw nsw i64 %index, 2, !dbg !86
  %15 = add i64 %lsr.iv, %14, !dbg !86
  %uglygep58 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %15, !dbg !86
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %uglygep5859, i64 -1, !dbg !86
  %wide.load45 = load <4 x i32>, <4 x i32>* %scevgep60, align 16, !dbg !86
  %16 = shl nuw nsw i64 %index, 2, !dbg !86
  %17 = add i64 %lsr.iv, %16, !dbg !86
  %uglygep61 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %17, !dbg !86
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %wide.load46 = load <4 x i32>, <4 x i32>* %uglygep6162, align 16, !dbg !86
  %18 = mul <4 x i32> %wide.load45, %wide.load43, !dbg !87
  %19 = mul <4 x i32> %wide.load46, %wide.load44, !dbg !87
  %20 = add <4 x i32> %18, %wide.load, !dbg !88
  %21 = add <4 x i32> %19, %wide.load42, !dbg !88
  %tmp = trunc i64 %5 to i32
  %22 = sext i32 %tmp to i64, !dbg !89
  %23 = getelementptr [65536 x i32], [65536 x i32]* @array, i64 0, i64 %22, !dbg !89
  %24 = bitcast i32* %23 to <4 x i32>*, !dbg !90
  store <4 x i32> %20, <4 x i32>* %24, align 4, !dbg !90
  %25 = getelementptr i32, i32* %23, i64 4, !dbg !90
  %26 = bitcast i32* %25 to <4 x i32>*, !dbg !90
  store <4 x i32> %21, <4 x i32>* %26, align 4, !dbg !90
  %index.next = add i64 %index, 8, !dbg !81
  %27 = icmp eq i64 %index.next, 256, !dbg !81
  br i1 %27, label %for.cond.cleanup3, label %vector.body, !dbg !81, !llvm.loop !91

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret i32 0, !dbg !94

for.cond.cleanup3.loopexit:                       ; preds = %for.body4
  %28 = zext i32 %k.035 to i64, !dbg !95
  %29 = add i64 %28, %indvars.iv.next.1, !dbg !95
  %tmp80 = trunc i64 %29 to i32
  br label %for.cond.cleanup3, !dbg !95

for.cond.cleanup3:                                ; preds = %vector.body, %for.cond.cleanup3.loopexit
  %inc.lcssa = phi i32 [ %tmp80, %for.cond.cleanup3.loopexit ], [ %ind.end, %vector.body ], !dbg !96
  call void @llvm.dbg.value(metadata i32 %inc.lcssa, metadata !69, metadata !DIExpression()), !dbg !76
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !95
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !70, metadata !DIExpression()), !dbg !77
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 1024, !dbg !78
  %lsr.iv.next64 = add nuw nsw i64 %lsr.iv63, 1024, !dbg !78
  %exitcond39.not = icmp eq i64 %indvars.iv.next38, 256, !dbg !97
  br i1 %exitcond39.not, label %for.cond.cleanup, label %vector.scevcheck, !dbg !78, !llvm.loop !98

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body4 ], [ 0, %for.body4.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !72, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !76
  %30 = add i64 %3, %indvars.iv, !dbg !83
  %31 = add i64 %30, 1, !dbg !83
  %32 = shl nuw nsw i64 %indvars.iv, 2, !dbg !83
  %33 = add i64 %lsr.iv63, %32, !dbg !83
  %uglygep67 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %33, !dbg !83
  %uglygep6768 = bitcast i8* %uglygep67 to i32*
  %scevgep69 = getelementptr i32, i32* %uglygep6768, i64 -1, !dbg !83
  %34 = load i32, i32* %scevgep69, align 8, !dbg !83
  %35 = shl nuw nsw i64 %indvars.iv, 2, !dbg !85
  %36 = add i64 %lsr.iv63, %35, !dbg !85
  %uglygep72 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %36, !dbg !85
  %uglygep7273 = bitcast i8* %uglygep72 to i32*
  %scevgep74 = getelementptr i32, i32* %uglygep7273, i64 -1, !dbg !85
  %37 = load i32, i32* %scevgep74, align 8, !dbg !85
  %38 = shl nuw nsw i64 %indvars.iv, 2, !dbg !86
  %39 = add i64 %lsr.iv63, %38, !dbg !86
  %uglygep77 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %39, !dbg !86
  %uglygep7778 = bitcast i8* %uglygep77 to i32*
  %scevgep79 = getelementptr i32, i32* %uglygep7778, i64 -1, !dbg !86
  %40 = load i32, i32* %scevgep79, align 8, !dbg !86
  %mul = mul i32 %40, %37, !dbg !87
  %add = add i32 %mul, %34, !dbg !88
  %tmp82 = trunc i64 %31 to i32
  %idxprom15 = sext i32 %tmp82 to i64, !dbg !89
  %arrayidx16 = getelementptr [65536 x i32], [65536 x i32]* @array, i64 0, i64 %idxprom15, !dbg !89
  store i32 %add, i32* %arrayidx16, align 4, !dbg !90
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !72, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !79
  call void @llvm.dbg.value(metadata i32 undef, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !76
  %41 = add i64 %3, %indvars.iv, !dbg !83
  %42 = add i64 %41, 2, !dbg !83
  %43 = shl nuw nsw i64 %indvars.iv, 2, !dbg !83
  %44 = add i64 %lsr.iv63, %43, !dbg !83
  %uglygep65 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %44, !dbg !83
  %uglygep6566 = bitcast i8* %uglygep65 to i32*
  %45 = load i32, i32* %uglygep6566, align 4, !dbg !83
  %46 = shl nuw nsw i64 %indvars.iv, 2, !dbg !85
  %47 = add i64 %lsr.iv63, %46, !dbg !85
  %uglygep70 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %47, !dbg !85
  %uglygep7071 = bitcast i8* %uglygep70 to i32*
  %48 = load i32, i32* %uglygep7071, align 4, !dbg !85
  %49 = shl nuw nsw i64 %indvars.iv, 2, !dbg !86
  %50 = add i64 %lsr.iv63, %49, !dbg !86
  %uglygep75 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @cc to i8*), i64 %50, !dbg !86
  %uglygep7576 = bitcast i8* %uglygep75 to i32*
  %51 = load i32, i32* %uglygep7576, align 4, !dbg !86
  %mul.1 = mul i32 %51, %48, !dbg !87
  %add.1 = add i32 %mul.1, %45, !dbg !88
  %tmp81 = trunc i64 %42 to i32
  %idxprom15.1 = sext i32 %tmp81 to i64, !dbg !89
  %arrayidx16.1 = getelementptr [65536 x i32], [65536 x i32]* @array, i64 0, i64 %idxprom15.1, !dbg !89
  store i32 %add.1, i32* %arrayidx16.1, align 4, !dbg !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !81
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !72, metadata !DIExpression()), !dbg !79
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256, !dbg !100
  br i1 %exitcond.not.1, label %for.cond.cleanup3.loopexit, label %for.body4, !dbg !80, !llvm.loop !101

; uselistorder directives
  uselistorder i64 %indvars.iv.next.1, { 1, 0, 2 }
  uselistorder i64 %indvars.iv, { 8, 3, 5, 7, 1, 2, 4, 6, 0 }
  uselistorder i32* %23, { 1, 0 }
  uselistorder i64 %index, { 7, 1, 2, 3, 4, 5, 6, 0 }
  uselistorder i64 %3, { 1, 0 }
  uselistorder i32 %k.035, { 1, 3, 0, 2, 4 }
  uselistorder i64 %lsr.iv, { 6, 0, 1, 2, 3, 4, 5 }
  uselistorder i64 %lsr.iv63, { 1, 3, 5, 0, 2, 4, 6 }
  uselistorder i32 0, { 1, 0 }
  uselistorder i64 256, { 0, 2, 1 }
  uselistorder [65536 x i32]* @array, { 0, 2, 1 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @cc to i8*), { 1, 0, 2, 3 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @bb to i8*), { 1, 0, 2, 3 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @aa to i8*), { 1, 0, 2, 3 }
  uselistorder i64 2, { 13, 2, 4, 6, 0, 1, 3, 5, 7, 8, 9, 10, 11, 12 }
  uselistorder i32 256, { 1, 0 }
  uselistorder i64 0, { 1, 5, 0, 2, 3, 4 }
  uselistorder i64 4, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 10, 9, 5, 4, 11, 8, 6, 7, 3, 2, 12, 13 }
  uselistorder label %for.body4, { 1, 0 }
  uselistorder label %for.cond.cleanup3, { 1, 0 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s125.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s125", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s125.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !70, !72}
!69 = !DILocalVariable(name: "k", scope: !64, file: !65, line: 9, type: !10)
!70 = !DILocalVariable(name: "i", scope: !71, file: !65, line: 11, type: !10)
!71 = distinct !DILexicalBlock(scope: !64, file: !65, line: 11, column: 3)
!72 = !DILocalVariable(name: "j", scope: !73, file: !65, line: 12, type: !10)
!73 = distinct !DILexicalBlock(scope: !74, file: !65, line: 12, column: 4)
!74 = distinct !DILexicalBlock(scope: !75, file: !65, line: 11, column: 34)
!75 = distinct !DILexicalBlock(scope: !71, file: !65, line: 11, column: 3)
!76 = !DILocation(line: 0, scope: !64)
!77 = !DILocation(line: 0, scope: !71)
!78 = !DILocation(line: 11, column: 3, scope: !71)
!79 = !DILocation(line: 0, scope: !73)
!80 = !DILocation(line: 12, column: 4, scope: !73)
!81 = !DILocation(line: 12, column: 31, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !65, line: 12, column: 4)
!83 = !DILocation(line: 14, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !82, file: !65, line: 12, column: 35)
!85 = !DILocation(line: 14, column: 27, scope: !84)
!86 = !DILocation(line: 14, column: 38, scope: !84)
!87 = !DILocation(line: 14, column: 36, scope: !84)
!88 = !DILocation(line: 14, column: 25, scope: !84)
!89 = !DILocation(line: 14, column: 5, scope: !84)
!90 = !DILocation(line: 14, column: 14, scope: !84)
!91 = distinct !{!91, !80, !92, !93}
!92 = !DILocation(line: 15, column: 4, scope: !73)
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !DILocation(line: 17, column: 2, scope: !64)
!95 = !DILocation(line: 11, column: 30, scope: !75)
!96 = !DILocation(line: 13, column: 6, scope: !84)
!97 = !DILocation(line: 11, column: 21, scope: !75)
!98 = distinct !{!98, !78, !99}
!99 = !DILocation(line: 16, column: 3, scope: !71)
!100 = !DILocation(line: 12, column: 22, scope: !82)
!101 = distinct !{!101, !80, !92, !93}
