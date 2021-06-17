; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex9.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !21
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @ex9() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !58
  br label %vector.ph63, !dbg !59

vector.ph63:                                      ; preds = %for.end25, %entry
  %lsr.iv = phi [1024 x [1024 x i32]]* [ %21, %for.end25 ], [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 12) to [1024 x [1024 x i32]]*), %entry ]
  %indvars.iv52 = phi i64 [ 0, %entry ], [ %indvars.iv.next53, %for.end25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv52, metadata !52, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 0, metadata !54, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !58
  br label %vector.body62, !dbg !61

vector.body62:                                    ; preds = %vector.body62, %vector.ph63
  %lsr.iv75 = phi i64 [ %lsr.iv.next, %vector.body62 ], [ 0, %vector.ph63 ], !dbg !63
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph63 ], [ %7, %vector.body62 ]
  %vec.phi68 = phi <4 x i32> [ zeroinitializer, %vector.ph63 ], [ %8, %vector.body62 ]
  %0 = bitcast [1024 x [1024 x i32]]* %lsr.iv to i8*
  %uglygep81 = getelementptr i8, i8* %0, i64 %lsr.iv75, !dbg !65
  %uglygep8182 = bitcast i8* %uglygep81 to <4 x i32>*
  %scevgep83 = getelementptr <4 x i32>, <4 x i32>* %uglygep8182, i64 -3, !dbg !65
  %wide.load69 = load <4 x i32>, <4 x i32>* %scevgep83, align 16, !dbg !65
  %scevgep84 = getelementptr <4 x i32>, <4 x i32>* %uglygep8182, i64 -2, !dbg !65
  %wide.load70 = load <4 x i32>, <4 x i32>* %scevgep84, align 16, !dbg !65
  %uglygep92 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !66
  %uglygep9293 = bitcast i8* %uglygep92 to <4 x i32>*
  %wide.load71 = load <4 x i32>, <4 x i32>* %uglygep9293, align 16, !dbg !66
  %scevgep94 = getelementptr <4 x i32>, <4 x i32>* %uglygep9293, i64 1, !dbg !66
  %wide.load72 = load <4 x i32>, <4 x i32>* %scevgep94, align 16, !dbg !66
  %1 = mul <4 x i32> %wide.load71, %wide.load69, !dbg !67
  %2 = mul <4 x i32> %wide.load72, %wide.load70, !dbg !67
  %3 = add <4 x i32> %1, %vec.phi, !dbg !68
  %4 = add <4 x i32> %2, %vec.phi68, !dbg !68
  %uglygep78 = getelementptr i8, i8* %0, i64 %lsr.iv75, !dbg !65
  %uglygep7879 = bitcast i8* %uglygep78 to <4 x i32>*
  %scevgep80 = getelementptr <4 x i32>, <4 x i32>* %uglygep7879, i64 -1, !dbg !65
  %wide.load69.1 = load <4 x i32>, <4 x i32>* %scevgep80, align 16, !dbg !65
  %uglygep = getelementptr i8, i8* %0, i64 %lsr.iv75, !dbg !65
  %uglygep77 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load70.1 = load <4 x i32>, <4 x i32>* %uglygep77, align 16, !dbg !65
  %uglygep89 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !66
  %uglygep8990 = bitcast i8* %uglygep89 to <4 x i32>*
  %scevgep91 = getelementptr <4 x i32>, <4 x i32>* %uglygep8990, i64 2, !dbg !66
  %wide.load71.1 = load <4 x i32>, <4 x i32>* %scevgep91, align 16, !dbg !66
  %uglygep86 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv75, !dbg !66
  %uglygep8687 = bitcast i8* %uglygep86 to <4 x i32>*
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i64 3, !dbg !66
  %wide.load72.1 = load <4 x i32>, <4 x i32>* %scevgep88, align 16, !dbg !66
  %5 = mul <4 x i32> %wide.load71.1, %wide.load69.1, !dbg !67
  %6 = mul <4 x i32> %wide.load72.1, %wide.load70.1, !dbg !67
  %7 = add <4 x i32> %5, %3, !dbg !68
  %8 = add <4 x i32> %6, %4, !dbg !68
  %lsr.iv.next = add nuw nsw i64 %lsr.iv75, 64, !dbg !63
  %9 = icmp eq i64 %lsr.iv.next, 4096, !dbg !63
  br i1 %9, label %middle.block60, label %vector.body62, !dbg !63, !llvm.loop !69

middle.block60:                                   ; preds = %vector.body62
  %bin.rdx = add <4 x i32> %8, %7, !dbg !61
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !61
  %bin.rdx123 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !61
  %rdx.shuf124 = shufflevector <4 x i32> %bin.rdx123, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !61
  %bin.rdx125 = add <4 x i32> %bin.rdx123, %rdx.shuf124, !dbg !61
  %10 = extractelement <4 x i32> %bin.rdx125, i32 0, !dbg !61
  call void @llvm.dbg.value(metadata i32 %10, metadata !54, metadata !DIExpression()), !dbg !60
  %arrayidx9 = getelementptr [32000 x i32], [32000 x i32]* @e, i64 0, i64 %indvars.iv52, !dbg !72
  store i32 %10, i32* %arrayidx9, align 4, !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !58
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %10, i32 0, !dbg !74
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !74
  %broadcast.splatinsert56 = insertelement <4 x i32> undef, i32 %10, i32 0, !dbg !74
  %broadcast.splat57 = shufflevector <4 x i32> %broadcast.splatinsert56, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !74
  br label %vector.body, !dbg !74

vector.body:                                      ; preds = %vector.body, %middle.block60
  %lsr.iv95 = phi i64 [ %lsr.iv.next96, %vector.body ], [ 0, %middle.block60 ], !dbg !76
  %11 = bitcast [1024 x [1024 x i32]]* %lsr.iv to i8*
  %uglygep102 = getelementptr i8, i8* %11, i64 %lsr.iv95, !dbg !78
  %uglygep102103 = bitcast i8* %uglygep102 to <4 x i32>*
  %scevgep104 = getelementptr <4 x i32>, <4 x i32>* %uglygep102103, i64 -3, !dbg !78
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep104, align 16, !dbg !78
  %scevgep105 = getelementptr <4 x i32>, <4 x i32>* %uglygep102103, i64 -2, !dbg !78
  %wide.load55 = load <4 x i32>, <4 x i32>* %scevgep105, align 16, !dbg !78
  %12 = mul <4 x i32> %wide.load, %broadcast.splat, !dbg !79
  %13 = mul <4 x i32> %wide.load55, %broadcast.splat57, !dbg !79
  %uglygep117 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv95, !dbg !80
  %uglygep117118 = bitcast i8* %uglygep117 to <4 x i32>*
  %wide.load58 = load <4 x i32>, <4 x i32>* %uglygep117118, align 16, !dbg !80
  %scevgep122 = getelementptr <4 x i32>, <4 x i32>* %uglygep117118, i64 1, !dbg !80
  %wide.load59 = load <4 x i32>, <4 x i32>* %scevgep122, align 16, !dbg !80
  %14 = add <4 x i32> %wide.load58, %12, !dbg !80
  %15 = add <4 x i32> %wide.load59, %13, !dbg !80
  %uglygep119 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv95, !dbg !80
  %uglygep119120 = bitcast i8* %uglygep119 to <4 x i32>*
  store <4 x i32> %14, <4 x i32>* %uglygep119120, align 16, !dbg !80
  %scevgep121 = getelementptr <4 x i32>, <4 x i32>* %uglygep119120, i64 1, !dbg !80
  store <4 x i32> %15, <4 x i32>* %scevgep121, align 16, !dbg !80
  %uglygep99 = getelementptr i8, i8* %11, i64 %lsr.iv95, !dbg !78
  %uglygep99100 = bitcast i8* %uglygep99 to <4 x i32>*
  %scevgep101 = getelementptr <4 x i32>, <4 x i32>* %uglygep99100, i64 -1, !dbg !78
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep101, align 16, !dbg !78
  %uglygep97 = getelementptr i8, i8* %11, i64 %lsr.iv95, !dbg !78
  %uglygep9798 = bitcast i8* %uglygep97 to <4 x i32>*
  %wide.load55.1 = load <4 x i32>, <4 x i32>* %uglygep9798, align 16, !dbg !78
  %16 = mul <4 x i32> %wide.load.1, %broadcast.splat, !dbg !79
  %17 = mul <4 x i32> %wide.load55.1, %broadcast.splat57, !dbg !79
  %uglygep114 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv95, !dbg !80
  %uglygep114115 = bitcast i8* %uglygep114 to <4 x i32>*
  %scevgep116 = getelementptr <4 x i32>, <4 x i32>* %uglygep114115, i64 2, !dbg !80
  %wide.load58.1 = load <4 x i32>, <4 x i32>* %scevgep116, align 16, !dbg !80
  %uglygep111 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv95, !dbg !80
  %uglygep111112 = bitcast i8* %uglygep111 to <4 x i32>*
  %scevgep113 = getelementptr <4 x i32>, <4 x i32>* %uglygep111112, i64 3, !dbg !80
  %wide.load59.1 = load <4 x i32>, <4 x i32>* %scevgep113, align 16, !dbg !80
  %18 = add <4 x i32> %wide.load58.1, %16, !dbg !80
  %19 = add <4 x i32> %wide.load59.1, %17, !dbg !80
  %uglygep107 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv95, !dbg !80
  %uglygep107108 = bitcast i8* %uglygep107 to <4 x i32>*
  %scevgep109 = getelementptr <4 x i32>, <4 x i32>* %uglygep107108, i64 2, !dbg !80
  store <4 x i32> %18, <4 x i32>* %scevgep109, align 16, !dbg !80
  %scevgep110 = getelementptr <4 x i32>, <4 x i32>* %uglygep107108, i64 3, !dbg !80
  store <4 x i32> %19, <4 x i32>* %scevgep110, align 16, !dbg !80
  %lsr.iv.next96 = add nuw nsw i64 %lsr.iv95, 64, !dbg !76
  %20 = icmp eq i64 %lsr.iv.next96, 4096, !dbg !76
  br i1 %20, label %for.end25, label %vector.body, !dbg !76, !llvm.loop !81

for.end25:                                        ; preds = %vector.body
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1, !dbg !83
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next53, metadata !52, metadata !DIExpression()), !dbg !58
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !59
  %21 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !59
  %exitcond54.not = icmp eq i64 %indvars.iv.next53, 1024, !dbg !84
  br i1 %exitcond54.not, label %for.end28, label %vector.ph63, !dbg !59, !llvm.loop !85

for.end28:                                        ; preds = %for.end25
  ret void, !dbg !87

; uselistorder directives
  uselistorder i64 %lsr.iv95, { 8, 4, 3, 2, 7, 6, 0, 1, 5 }
  uselistorder i64 %lsr.iv75, { 6, 2, 1, 5, 4, 0, 3 }
  uselistorder i64 %indvars.iv52, { 1, 0 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i32 0, { 1, 2, 0, 3, 4 }
  uselistorder <4 x i32> undef, { 2, 3, 4, 5, 0, 1 }
  uselistorder i64 3, { 1, 0, 2 }
  uselistorder i64 2, { 1, 0, 2 }
  uselistorder i64 1, { 3, 4, 1, 0, 2 }
  uselistorder [32000 x i32] zeroinitializer, { 1, 4, 2, 0, 3 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
  uselistorder i64 0, { 2, 3, 0, 7, 1, 6, 4, 5 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 5, 4, 3, 1, 2, 0, 6 }
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
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex9.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
!4 = !{}
!5 = !{!6, !13, !15, !17, !19, !0, !21, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_no_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
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
!47 = distinct !DISubprogram(name: "ex9", scope: !48, file: !48, line: 5, type: !49, scopeLine: 7, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex9.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !{!52, !53, !54}
!52 = !DILocalVariable(name: "i", scope: !47, file: !48, line: 8, type: !10)
!53 = !DILocalVariable(name: "j", scope: !47, file: !48, line: 8, type: !10)
!54 = !DILocalVariable(name: "sum1", scope: !55, file: !48, line: 12, type: !10)
!55 = distinct !DILexicalBlock(scope: !56, file: !48, line: 11, column: 3)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 10, column: 3)
!57 = distinct !DILexicalBlock(scope: !47, file: !48, line: 10, column: 3)
!58 = !DILocation(line: 0, scope: !47)
!59 = !DILocation(line: 10, column: 3, scope: !57)
!60 = !DILocation(line: 0, scope: !55)
!61 = !DILocation(line: 13, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !48, line: 13, column: 5)
!63 = !DILocation(line: 13, column: 28, scope: !64)
!64 = distinct !DILexicalBlock(scope: !62, file: !48, line: 13, column: 5)
!65 = !DILocation(line: 14, column: 15, scope: !64)
!66 = !DILocation(line: 14, column: 26, scope: !64)
!67 = !DILocation(line: 14, column: 24, scope: !64)
!68 = !DILocation(line: 14, column: 12, scope: !64)
!69 = distinct !{!69, !61, !70, !71}
!70 = !DILocation(line: 14, column: 29, scope: !62)
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !DILocation(line: 15, column: 5, scope: !55)
!73 = !DILocation(line: 15, column: 10, scope: !55)
!74 = !DILocation(line: 16, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !55, file: !48, line: 16, column: 5)
!76 = !DILocation(line: 16, column: 28, scope: !77)
!77 = distinct !DILexicalBlock(scope: !75, file: !48, line: 16, column: 5)
!78 = !DILocation(line: 17, column: 15, scope: !77)
!79 = !DILocation(line: 17, column: 24, scope: !77)
!80 = !DILocation(line: 17, column: 12, scope: !77)
!81 = distinct !{!81, !74, !82, !71}
!82 = !DILocation(line: 17, column: 29, scope: !75)
!83 = !DILocation(line: 10, column: 26, scope: !56)
!84 = !DILocation(line: 10, column: 17, scope: !56)
!85 = distinct !{!85, !59, !86}
!86 = !DILocation(line: 18, column: 3, scope: !57)
!87 = !DILocation(line: 19, column: 1, scope: !47)
