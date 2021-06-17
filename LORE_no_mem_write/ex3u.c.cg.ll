; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex3u.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex3u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !21
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex3u() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !61
  br label %vector.ph, !dbg !62

vector.ph:                                        ; preds = %middle.block, %entry
  %lsr.iv96 = phi [1024 x [1024 x i32]]* [ %11, %middle.block ], [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 28) to [1024 x [1024 x i32]]*), %entry ]
  %indvars.iv42 = phi i64 [ 0, %entry ], [ %indvars.iv.next43, %middle.block ]
  %ret.037 = phi i32 [ 0, %entry ], [ %10, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv42, metadata !53, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %ret.037, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32 %ret.037, metadata !52, metadata !DIExpression()), !dbg !60
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.037, i32 0, !dbg !64
  br label %vector.body, !dbg !64

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ], !dbg !65
  %vec.phi = phi <4 x i32> [ %0, %vector.ph ], [ %7, %vector.body ]
  %vec.phi45 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %scevgep115 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep115116 = bitcast i32* %scevgep115 to <4 x i32>*
  %scevgep117 = getelementptr <4 x i32>, <4 x i32>* %scevgep115116, i64 -7, !dbg !67
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep117, align 16, !dbg !67
  %scevgep118 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep118119 = bitcast i32* %scevgep118 to <4 x i32>*
  %scevgep120 = getelementptr <4 x i32>, <4 x i32>* %scevgep118119, i64 -6, !dbg !67
  %wide.load46 = load <4 x i32>, <4 x i32>* %scevgep120, align 16, !dbg !67
  %1 = add <4 x i32> %wide.load, %vec.phi, !dbg !68
  %2 = add <4 x i32> %wide.load46, %vec.phi45, !dbg !68
  %scevgep107 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep107108 = bitcast i32* %scevgep107 to <4 x i32>*
  %scevgep109 = getelementptr <4 x i32>, <4 x i32>* %scevgep107108, i64 -5, !dbg !67
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep109, align 16, !dbg !67
  %scevgep104 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep104105 = bitcast i32* %scevgep104 to <4 x i32>*
  %scevgep106 = getelementptr <4 x i32>, <4 x i32>* %scevgep104105, i64 -4, !dbg !67
  %wide.load46.1 = load <4 x i32>, <4 x i32>* %scevgep106, align 16, !dbg !67
  %3 = add <4 x i32> %wide.load.1, %1, !dbg !68
  %4 = add <4 x i32> %wide.load46.1, %2, !dbg !68
  %scevgep101 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep101102 = bitcast i32* %scevgep101 to <4 x i32>*
  %scevgep103 = getelementptr <4 x i32>, <4 x i32>* %scevgep101102, i64 -3, !dbg !67
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep103, align 16, !dbg !67
  %scevgep98 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep9899 = bitcast i32* %scevgep98 to <4 x i32>*
  %scevgep100 = getelementptr <4 x i32>, <4 x i32>* %scevgep9899, i64 -2, !dbg !67
  %wide.load46.2 = load <4 x i32>, <4 x i32>* %scevgep100, align 16, !dbg !67
  %5 = add <4 x i32> %wide.load.2, %3, !dbg !68
  %6 = add <4 x i32> %wide.load46.2, %4, !dbg !68
  %scevgep112 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep112113 = bitcast i32* %scevgep112 to <4 x i32>*
  %scevgep114 = getelementptr <4 x i32>, <4 x i32>* %scevgep112113, i64 -1, !dbg !67
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep114, align 16, !dbg !67
  %scevgep110 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 0, i64 %index, !dbg !67
  %scevgep110111 = bitcast i32* %scevgep110 to <4 x i32>*
  %wide.load46.3 = load <4 x i32>, <4 x i32>* %scevgep110111, align 16, !dbg !67
  %7 = add <4 x i32> %wide.load.3, %5, !dbg !68
  %8 = add <4 x i32> %wide.load46.3, %6, !dbg !68
  %index.next.3 = add nuw nsw i64 %index, 32, !dbg !65
  %9 = icmp eq i64 %index.next.3, 1024, !dbg !65
  br i1 %9, label %middle.block, label %vector.body, !dbg !65, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %8, %7, !dbg !64
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !64
  %bin.rdx121 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !64
  %rdx.shuf122 = shufflevector <4 x i32> %bin.rdx121, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !64
  %bin.rdx123 = add <4 x i32> %bin.rdx121, %rdx.shuf122, !dbg !64
  %10 = extractelement <4 x i32> %bin.rdx123, i32 0, !dbg !64
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !60
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !dbg !72
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next43, metadata !53, metadata !DIExpression()), !dbg !61
  %scevgep97 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv96, i64 0, i64 1, i64 0, !dbg !62
  %11 = bitcast i32* %scevgep97 to [1024 x [1024 x i32]]*, !dbg !62
  %exitcond44.not = icmp eq i64 %indvars.iv.next43, 1024, !dbg !73
  br i1 %exitcond44.not, label %vector.ph50, label %vector.ph, !dbg !62, !llvm.loop !74

vector.ph50:                                      ; preds = %middle.block
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !60
  %12 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %10, i32 0, !dbg !76
  br label %vector.body49, !dbg !76

vector.body49:                                    ; preds = %vector.body49, %vector.ph50
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body49 ], [ -128000, %vector.ph50 ], !dbg !77
  %vec.phi55 = phi <4 x i32> [ %12, %vector.ph50 ], [ %21, %vector.body49 ]
  %vec.phi56 = phi <4 x i32> [ zeroinitializer, %vector.ph50 ], [ %22, %vector.body49 ]
  %uglygep86 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep8687 = bitcast i8* %uglygep86 to <4 x i32>*
  %scevgep88 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i64 8000, !dbg !79
  %wide.load57 = load <4 x i32>, <4 x i32>* %scevgep88, align 16, !dbg !79
  %scevgep89 = getelementptr <4 x i32>, <4 x i32>* %uglygep8687, i64 8001, !dbg !79
  %wide.load58 = load <4 x i32>, <4 x i32>* %scevgep89, align 16, !dbg !79
  %13 = add <4 x i32> %wide.load57, %vec.phi55, !dbg !80
  %14 = add <4 x i32> %wide.load58, %vec.phi56, !dbg !80
  %uglygep93 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep9394 = bitcast i8* %uglygep93 to <4 x i32>*
  %scevgep95 = getelementptr <4 x i32>, <4 x i32>* %uglygep9394, i64 8002, !dbg !79
  %wide.load57.1 = load <4 x i32>, <4 x i32>* %scevgep95, align 16, !dbg !79
  %uglygep90 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep9091 = bitcast i8* %uglygep90 to <4 x i32>*
  %scevgep92 = getelementptr <4 x i32>, <4 x i32>* %uglygep9091, i64 8003, !dbg !79
  %wide.load58.1 = load <4 x i32>, <4 x i32>* %scevgep92, align 16, !dbg !79
  %15 = add <4 x i32> %wide.load57.1, %13, !dbg !80
  %16 = add <4 x i32> %wide.load58.1, %14, !dbg !80
  %uglygep83 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %scevgep85 = getelementptr <4 x i32>, <4 x i32>* %uglygep8384, i64 8004, !dbg !79
  %wide.load57.2 = load <4 x i32>, <4 x i32>* %scevgep85, align 16, !dbg !79
  %uglygep80 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep8081 = bitcast i8* %uglygep80 to <4 x i32>*
  %scevgep82 = getelementptr <4 x i32>, <4 x i32>* %uglygep8081, i64 8005, !dbg !79
  %wide.load58.2 = load <4 x i32>, <4 x i32>* %scevgep82, align 16, !dbg !79
  %17 = add <4 x i32> %wide.load57.2, %15, !dbg !80
  %18 = add <4 x i32> %wide.load58.2, %16, !dbg !80
  %uglygep77 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep7778 = bitcast i8* %uglygep77 to <4 x i32>*
  %scevgep79 = getelementptr <4 x i32>, <4 x i32>* %uglygep7778, i64 8006, !dbg !79
  %wide.load57.3 = load <4 x i32>, <4 x i32>* %scevgep79, align 16, !dbg !79
  %uglygep74 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep7475 = bitcast i8* %uglygep74 to <4 x i32>*
  %scevgep76 = getelementptr <4 x i32>, <4 x i32>* %uglygep7475, i64 8007, !dbg !79
  %wide.load58.3 = load <4 x i32>, <4 x i32>* %scevgep76, align 16, !dbg !79
  %19 = add <4 x i32> %wide.load57.3, %17, !dbg !80
  %20 = add <4 x i32> %wide.load58.3, %18, !dbg !80
  %uglygep71 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep7172 = bitcast i8* %uglygep71 to <4 x i32>*
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %uglygep7172, i64 8008, !dbg !79
  %wide.load57.4 = load <4 x i32>, <4 x i32>* %scevgep73, align 16, !dbg !79
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep70 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep70, i64 8009, !dbg !79
  %wide.load58.4 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !79
  %21 = add <4 x i32> %wide.load57.4, %19, !dbg !80
  %22 = add <4 x i32> %wide.load58.4, %20, !dbg !80
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !77
  %23 = icmp eq i64 %lsr.iv.next, 0, !dbg !77
  br i1 %23, label %middle.block47, label %vector.body49, !dbg !77, !llvm.loop !81

middle.block47:                                   ; preds = %vector.body49
  %bin.rdx59 = add <4 x i32> %22, %21, !dbg !76
  %rdx.shuf124 = shufflevector <4 x i32> %bin.rdx59, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !76
  %bin.rdx125 = add <4 x i32> %bin.rdx59, %rdx.shuf124, !dbg !76
  %rdx.shuf126 = shufflevector <4 x i32> %bin.rdx125, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !76
  %bin.rdx127 = add <4 x i32> %bin.rdx125, %rdx.shuf126, !dbg !76
  %24 = extractelement <4 x i32> %bin.rdx127, i32 0, !dbg !76
  call void @llvm.dbg.value(metadata i32 %24, metadata !52, metadata !DIExpression()), !dbg !60
  ret i32 %24, !dbg !83

; uselistorder directives
  uselistorder i64 %lsr.iv, { 9, 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i32 %10, { 1, 0 }
  uselistorder i64 %index, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv96, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 1024, { 1, 0 }
  uselistorder i32 0, { 0, 5, 1, 6, 2, 3, 4, 7, 8, 9 }
  uselistorder i64 0, { 20, 16, 17, 6, 7, 4, 5, 14, 15, 12, 13, 10, 11, 8, 9, 0, 1, 2, 3, 21, 22, 18, 19 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 6, 0, 7, 5, 3, 4, 2, 1, 8, 9 }
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
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex3u.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
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
!47 = distinct !DISubprogram(name: "ex3u", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex3u.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53, !55, !58}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocalVariable(name: "j", scope: !56, file: !48, line: 8, type: !10)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 8, column: 4)
!57 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!58 = !DILocalVariable(name: "i", scope: !59, file: !48, line: 12, type: !10)
!59 = distinct !DILexicalBlock(scope: !47, file: !48, line: 12, column: 2)
!60 = !DILocation(line: 0, scope: !47)
!61 = !DILocation(line: 0, scope: !54)
!62 = !DILocation(line: 6, column: 2, scope: !54)
!63 = !DILocation(line: 0, scope: !56)
!64 = !DILocation(line: 8, column: 4, scope: !56)
!65 = !DILocation(line: 8, column: 31, scope: !66)
!66 = distinct !DILexicalBlock(scope: !56, file: !48, line: 8, column: 4)
!67 = !DILocation(line: 9, column: 11, scope: !66)
!68 = !DILocation(line: 9, column: 8, scope: !66)
!69 = distinct !{!69, !64, !70, !71}
!70 = !DILocation(line: 9, column: 18, scope: !56)
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !DILocation(line: 6, column: 29, scope: !57)
!73 = !DILocation(line: 6, column: 20, scope: !57)
!74 = distinct !{!74, !62, !75}
!75 = !DILocation(line: 9, column: 18, scope: !54)
!76 = !DILocation(line: 12, column: 2, scope: !59)
!77 = !DILocation(line: 12, column: 28, scope: !78)
!78 = distinct !DILexicalBlock(scope: !59, file: !48, line: 12, column: 2)
!79 = !DILocation(line: 13, column: 10, scope: !78)
!80 = !DILocation(line: 13, column: 7, scope: !78)
!81 = distinct !{!81, !76, !82, !71}
!82 = !DILocation(line: 13, column: 13, scope: !59)
!83 = !DILocation(line: 14, column: 2, scope: !47)
