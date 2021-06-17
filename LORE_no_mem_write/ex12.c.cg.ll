; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex12.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !19
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

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @ex12() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !59
  br label %for.body, !dbg !60

for.body:                                         ; preds = %entry, %middle.block
  %lsr.iv108 = phi [1024 x [1024 x i32]]* [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 7, i64 0) to [1024 x [1024 x i32]]*), %entry ], [ %41, %middle.block ]
  %lsr.iv = phi [1024 x [1024 x i32]]* [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 12) to [1024 x [1024 x i32]]*), %entry ], [ %40, %middle.block ]
  %indvars.iv61 = phi i64 [ 0, %entry ], [ %indvars.iv.next62, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv61, metadata !52, metadata !DIExpression()), !dbg !59
  %arrayidx = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %indvars.iv61, !dbg !61
  call void @llvm.dbg.value(metadata i32 undef, metadata !54, metadata !DIExpression()), !dbg !62
  %arrayidx2 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %indvars.iv61, !dbg !63
  %0 = load i32, i32* %arrayidx2, align 4, !dbg !63
  call void @llvm.dbg.value(metadata i32 %0, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !59
  %1 = load i32, i32* %arrayidx, align 4, !dbg !61
  call void @llvm.dbg.value(metadata i32 %1, metadata !54, metadata !DIExpression()), !dbg !62
  %2 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %1, i32 0, !dbg !64
  br label %vector.body68, !dbg !64

vector.body68:                                    ; preds = %vector.body68, %for.body
  %lsr.iv88 = phi i64 [ %lsr.iv.next, %vector.body68 ], [ 0, %for.body ], !dbg !66
  %vec.phi74 = phi <4 x i32> [ %2, %for.body ], [ %10, %vector.body68 ]
  %vec.phi75 = phi <4 x i32> [ zeroinitializer, %for.body ], [ %11, %vector.body68 ]
  %3 = bitcast [1024 x [1024 x i32]]* %lsr.iv to i8*
  %uglygep94 = getelementptr i8, i8* %3, i64 %lsr.iv88, !dbg !68
  %uglygep9495 = bitcast i8* %uglygep94 to <4 x i32>*
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 -3, !dbg !68
  %wide.load76 = load <4 x i32>, <4 x i32>* %scevgep96, align 16, !dbg !68
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 -2, !dbg !68
  %wide.load77 = load <4 x i32>, <4 x i32>* %scevgep97, align 16, !dbg !68
  %uglygep105 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv88, !dbg !69
  %uglygep105106 = bitcast i8* %uglygep105 to <4 x i32>*
  %wide.load78 = load <4 x i32>, <4 x i32>* %uglygep105106, align 16, !dbg !69
  %scevgep107 = getelementptr <4 x i32>, <4 x i32>* %uglygep105106, i64 1, !dbg !69
  %wide.load79 = load <4 x i32>, <4 x i32>* %scevgep107, align 16, !dbg !69
  %4 = mul <4 x i32> %wide.load78, %wide.load76, !dbg !70
  %5 = mul <4 x i32> %wide.load79, %wide.load77, !dbg !70
  %6 = add <4 x i32> %4, %vec.phi74, !dbg !71
  %7 = add <4 x i32> %5, %vec.phi75, !dbg !71
  %uglygep91 = getelementptr i8, i8* %3, i64 %lsr.iv88, !dbg !68
  %uglygep9192 = bitcast i8* %uglygep91 to <4 x i32>*
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %uglygep9192, i64 -1, !dbg !68
  %wide.load76.1 = load <4 x i32>, <4 x i32>* %scevgep93, align 16, !dbg !68
  %uglygep = getelementptr i8, i8* %3, i64 %lsr.iv88, !dbg !68
  %uglygep90 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load77.1 = load <4 x i32>, <4 x i32>* %uglygep90, align 16, !dbg !68
  %uglygep102 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv88, !dbg !69
  %uglygep102103 = bitcast i8* %uglygep102 to <4 x i32>*
  %scevgep104 = getelementptr <4 x i32>, <4 x i32>* %uglygep102103, i64 2, !dbg !69
  %wide.load78.1 = load <4 x i32>, <4 x i32>* %scevgep104, align 16, !dbg !69
  %uglygep99 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv88, !dbg !69
  %uglygep99100 = bitcast i8* %uglygep99 to <4 x i32>*
  %scevgep101 = getelementptr <4 x i32>, <4 x i32>* %uglygep99100, i64 3, !dbg !69
  %wide.load79.1 = load <4 x i32>, <4 x i32>* %scevgep101, align 16, !dbg !69
  %8 = mul <4 x i32> %wide.load78.1, %wide.load76.1, !dbg !70
  %9 = mul <4 x i32> %wide.load79.1, %wide.load77.1, !dbg !70
  %10 = add <4 x i32> %8, %6, !dbg !71
  %11 = add <4 x i32> %9, %7, !dbg !71
  %lsr.iv.next = add nuw nsw i64 %lsr.iv88, 64, !dbg !66
  %12 = icmp eq i64 %lsr.iv.next, 4096, !dbg !66
  br i1 %12, label %middle.block66, label %vector.body68, !dbg !66, !llvm.loop !72

middle.block66:                                   ; preds = %vector.body68
  %bin.rdx80 = add <4 x i32> %11, %10, !dbg !64
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx80, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !64
  %bin.rdx127 = add <4 x i32> %bin.rdx80, %rdx.shuf, !dbg !64
  %rdx.shuf128 = shufflevector <4 x i32> %bin.rdx127, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !64
  %bin.rdx129 = add <4 x i32> %bin.rdx127, %rdx.shuf128, !dbg !64
  %13 = extractelement <4 x i32> %bin.rdx129, i32 0, !dbg !64
  call void @llvm.dbg.value(metadata i32 %13, metadata !54, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 %0, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !59
  %14 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %0, i32 0, !dbg !75
  br label %vector.body, !dbg !75

vector.body:                                      ; preds = %vector.body, %middle.block66
  %lsr.iv120 = phi i64 [ %lsr.iv.next121, %vector.body ], [ -4096, %middle.block66 ], !dbg !77
  %lsr.iv110 = phi [1024 x [1024 x i32]]* [ %35, %vector.body ], [ %lsr.iv108, %middle.block66 ], !dbg !77
  %vec.phi = phi <4 x i32> [ %14, %middle.block66 ], [ %33, %vector.body ]
  %vec.phi64 = phi <4 x i32> [ zeroinitializer, %middle.block66 ], [ %34, %vector.body ]
  %lsr.iv110112 = bitcast [1024 x [1024 x i32]]* %lsr.iv110 to i32*
  %scevgep119 = getelementptr i32, i32* %lsr.iv110112, i64 -7168, !dbg !79
  %scevgep118 = getelementptr i32, i32* %lsr.iv110112, i64 -6144, !dbg !79
  %scevgep117 = getelementptr i32, i32* %lsr.iv110112, i64 -5120, !dbg !79
  %scevgep116 = getelementptr i32, i32* %lsr.iv110112, i64 -4096, !dbg !79
  %scevgep115 = getelementptr i32, i32* %lsr.iv110112, i64 -3072, !dbg !79
  %scevgep114 = getelementptr i32, i32* %lsr.iv110112, i64 -2048, !dbg !79
  %scevgep113 = getelementptr i32, i32* %lsr.iv110112, i64 -1024, !dbg !79
  %15 = load i32, i32* %scevgep119, align 4, !dbg !79
  %16 = load i32, i32* %scevgep118, align 4, !dbg !79
  %17 = load i32, i32* %scevgep117, align 4, !dbg !79
  %18 = load i32, i32* %scevgep116, align 4, !dbg !79
  %19 = insertelement <4 x i32> undef, i32 %15, i32 0, !dbg !79
  %20 = insertelement <4 x i32> %19, i32 %16, i32 1, !dbg !79
  %21 = insertelement <4 x i32> %20, i32 %17, i32 2, !dbg !79
  %22 = insertelement <4 x i32> %21, i32 %18, i32 3, !dbg !79
  %23 = load i32, i32* %scevgep115, align 4, !dbg !79
  %24 = load i32, i32* %scevgep114, align 4, !dbg !79
  %25 = load i32, i32* %scevgep113, align 4, !dbg !79
  %26 = load i32, i32* %lsr.iv110112, align 4, !dbg !79
  %27 = insertelement <4 x i32> undef, i32 %23, i32 0, !dbg !80
  %28 = insertelement <4 x i32> %27, i32 %24, i32 1, !dbg !80
  %29 = insertelement <4 x i32> %28, i32 %25, i32 2, !dbg !80
  %30 = insertelement <4 x i32> %29, i32 %26, i32 3, !dbg !80
  %uglygep123 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv120, !dbg !80
  %uglygep123124 = bitcast i8* %uglygep123 to <4 x i32>*
  %scevgep125 = getelementptr <4 x i32>, <4 x i32>* %uglygep123124, i64 256, !dbg !80
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep125, align 16, !dbg !80
  %scevgep126 = getelementptr <4 x i32>, <4 x i32>* %uglygep123124, i64 257, !dbg !80
  %wide.load65 = load <4 x i32>, <4 x i32>* %scevgep126, align 16, !dbg !80
  %31 = mul <4 x i32> %wide.load, %22, !dbg !77
  %32 = mul <4 x i32> %wide.load65, %30, !dbg !77
  %33 = add <4 x i32> %31, %vec.phi, !dbg !81
  %34 = add <4 x i32> %32, %vec.phi64, !dbg !81
  %scevgep111 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv110, i64 0, i64 8, i64 0, !dbg !77
  %35 = bitcast i32* %scevgep111 to [1024 x [1024 x i32]]*, !dbg !77
  %lsr.iv.next121 = add nsw i64 %lsr.iv120, 32, !dbg !77
  %36 = icmp eq i64 %lsr.iv.next121, 0, !dbg !77
  br i1 %36, label %middle.block, label %vector.body, !dbg !77, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %34, %33, !dbg !75
  %rdx.shuf130 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !75
  %bin.rdx131 = add <4 x i32> %bin.rdx, %rdx.shuf130, !dbg !75
  %rdx.shuf132 = shufflevector <4 x i32> %bin.rdx131, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !75
  %bin.rdx133 = add <4 x i32> %bin.rdx131, %rdx.shuf132, !dbg !75
  %37 = extractelement <4 x i32> %bin.rdx133, i32 0, !dbg !75
  call void @llvm.dbg.value(metadata i32 %37, metadata !58, metadata !DIExpression()), !dbg !62
  %sunkaddr = mul i64 %indvars.iv61, 4, !dbg !84
  %sunkaddr134 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %sunkaddr, !dbg !84
  %38 = bitcast i8* %sunkaddr134 to i32*, !dbg !84
  store i32 %13, i32* %38, align 4, !dbg !84
  %sunkaddr135 = mul i64 %indvars.iv61, 4, !dbg !85
  %sunkaddr136 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %sunkaddr135, !dbg !85
  %39 = bitcast i8* %sunkaddr136 to i32*, !dbg !85
  store i32 %37, i32* %39, align 4, !dbg !85
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !86
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next62, metadata !52, metadata !DIExpression()), !dbg !59
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !60
  %40 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !60
  %scevgep109 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv108, i64 0, i64 0, i64 1, !dbg !60
  %41 = bitcast i32* %scevgep109 to [1024 x [1024 x i32]]*, !dbg !60
  %exitcond63.not = icmp eq i64 %indvars.iv.next62, 1024, !dbg !87
  br i1 %exitcond63.not, label %for.end32, label %for.body, !dbg !60, !llvm.loop !88

for.end32:                                        ; preds = %middle.block
  ret void, !dbg !90

; uselistorder directives
  uselistorder i32* %lsr.iv110112, { 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv110, { 1, 0 }
  uselistorder i64 %lsr.iv120, { 1, 0 }
  uselistorder i64 %lsr.iv88, { 6, 2, 1, 5, 4, 0, 3 }
  uselistorder i64 %indvars.iv61, { 4, 0, 1, 3, 2 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv108, { 1, 0 }
  uselistorder i64 -4096, { 1, 0 }
  uselistorder <4 x i32> undef, { 0, 1, 4, 5, 2, 3 }
  uselistorder i64 1, { 0, 2, 3, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 0, 1, 4, 3, 2 }
  uselistorder <4 x i32> zeroinitializer, { 1, 0 }
  uselistorder i32 0, { 0, 7, 8, 6, 1, 5, 2, 3, 4, 9, 10 }
  uselistorder i64 0, { 3, 4, 8, 9, 0, 1, 2, 7, 13, 14, 12, 10, 11, 5, 6 }
  uselistorder [1024 x [1024 x i32]]* @aa, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 9, 4, 2, 3, 5, 0, 6, 7, 8, 1, 10 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex12.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
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
!47 = distinct !DISubprogram(name: "ex12", scope: !48, file: !48, line: 5, type: !49, scopeLine: 7, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex12.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !{!52, !53, !54, !58}
!52 = !DILocalVariable(name: "i", scope: !47, file: !48, line: 8, type: !10)
!53 = !DILocalVariable(name: "j", scope: !47, file: !48, line: 8, type: !10)
!54 = !DILocalVariable(name: "sum1", scope: !55, file: !48, line: 11, type: !10)
!55 = distinct !DILexicalBlock(scope: !56, file: !48, line: 10, column: 30)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 10, column: 3)
!57 = distinct !DILexicalBlock(scope: !47, file: !48, line: 10, column: 3)
!58 = !DILocalVariable(name: "sum2", scope: !55, file: !48, line: 11, type: !10)
!59 = !DILocation(line: 0, scope: !47)
!60 = !DILocation(line: 10, column: 3, scope: !57)
!61 = !DILocation(line: 11, column: 16, scope: !55)
!62 = !DILocation(line: 0, scope: !55)
!63 = !DILocation(line: 11, column: 33, scope: !55)
!64 = !DILocation(line: 12, column: 5, scope: !65)
!65 = distinct !DILexicalBlock(scope: !55, file: !48, line: 12, column: 5)
!66 = !DILocation(line: 12, column: 28, scope: !67)
!67 = distinct !DILexicalBlock(scope: !65, file: !48, line: 12, column: 5)
!68 = !DILocation(line: 13, column: 15, scope: !67)
!69 = !DILocation(line: 13, column: 26, scope: !67)
!70 = !DILocation(line: 13, column: 24, scope: !67)
!71 = !DILocation(line: 13, column: 12, scope: !67)
!72 = distinct !{!72, !64, !73, !74}
!73 = !DILocation(line: 13, column: 29, scope: !65)
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !DILocation(line: 14, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !55, file: !48, line: 14, column: 5)
!77 = !DILocation(line: 14, column: 28, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !48, line: 14, column: 5)
!79 = !DILocation(line: 15, column: 15, scope: !78)
!80 = !DILocation(line: 15, column: 26, scope: !78)
!81 = !DILocation(line: 15, column: 12, scope: !78)
!82 = distinct !{!82, !75, !83, !74}
!83 = !DILocation(line: 15, column: 29, scope: !76)
!84 = !DILocation(line: 16, column: 10, scope: !55)
!85 = !DILocation(line: 17, column: 10, scope: !55)
!86 = !DILocation(line: 10, column: 26, scope: !56)
!87 = !DILocation(line: 10, column: 17, scope: !56)
!88 = distinct !{!88, !60, !89}
!89 = !DILocation(line: 18, column: 3, scope: !57)
!90 = !DILocation(line: 19, column: 1, scope: !47)
