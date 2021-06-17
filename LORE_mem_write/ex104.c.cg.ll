; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex104.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex104.c"
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
define dso_local i32 @ex104() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !60
  br label %vector.ph, !dbg !61

vector.ph:                                        ; preds = %for.cond.cleanup3, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.cleanup3 ], [ 48, %entry ]
  %indvars.iv32 = phi i64 [ 0, %entry ], [ %indvars.iv.next33, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv32, metadata !53, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !62
  br label %vector.body, !dbg !63

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv38 = phi i64 [ %lsr.iv.next39, %vector.body ], [ -1024, %vector.ph ], !dbg !64
  %0 = shl nsw i64 %lsr.iv38, 2, !dbg !66
  %1 = add i64 %lsr.iv, %0, !dbg !66
  %uglygep44 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %1, !dbg !66
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %scevgep46 = getelementptr <4 x i32>, <4 x i32>* %uglygep4445, i64 253, !dbg !66
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep46, align 16, !dbg !66
  %2 = shl nsw i64 %lsr.iv38, 2, !dbg !66
  %3 = add i64 %lsr.iv, %2, !dbg !66
  %uglygep47 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %3, !dbg !66
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %scevgep49 = getelementptr <4 x i32>, <4 x i32>* %uglygep4748, i64 254, !dbg !66
  %wide.load35 = load <4 x i32>, <4 x i32>* %scevgep49, align 16, !dbg !66
  %4 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %5 = add i64 %lsr.iv, %4, !dbg !67
  %uglygep62 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %5, !dbg !67
  %uglygep6263 = bitcast i8* %uglygep62 to <4 x i32>*
  %scevgep64 = getelementptr <4 x i32>, <4 x i32>* %uglygep6263, i64 253, !dbg !67
  %wide.load36 = load <4 x i32>, <4 x i32>* %scevgep64, align 16, !dbg !67
  %6 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %7 = add i64 %lsr.iv, %6, !dbg !67
  %uglygep71 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %7, !dbg !67
  %uglygep7172 = bitcast i8* %uglygep71 to <4 x i32>*
  %scevgep73 = getelementptr <4 x i32>, <4 x i32>* %uglygep7172, i64 254, !dbg !67
  %wide.load37 = load <4 x i32>, <4 x i32>* %scevgep73, align 16, !dbg !67
  %8 = add <4 x i32> %wide.load36, %wide.load, !dbg !67
  %9 = add <4 x i32> %wide.load37, %wide.load35, !dbg !67
  %10 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %11 = add i64 %lsr.iv, %10, !dbg !67
  %uglygep65 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %11, !dbg !67
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  %scevgep67 = getelementptr <4 x i32>, <4 x i32>* %uglygep6566, i64 253, !dbg !67
  store <4 x i32> %8, <4 x i32>* %scevgep67, align 16, !dbg !67
  %12 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %13 = add i64 %lsr.iv, %12, !dbg !67
  %uglygep68 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %13, !dbg !67
  %uglygep6869 = bitcast i8* %uglygep68 to <4 x i32>*
  %scevgep70 = getelementptr <4 x i32>, <4 x i32>* %uglygep6869, i64 254, !dbg !67
  store <4 x i32> %9, <4 x i32>* %scevgep70, align 16, !dbg !67
  %14 = shl nsw i64 %lsr.iv38, 2, !dbg !66
  %15 = add i64 %lsr.iv, %14, !dbg !66
  %uglygep41 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %15, !dbg !66
  %uglygep4142 = bitcast i8* %uglygep41 to <4 x i32>*
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i64 255, !dbg !66
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep43, align 16, !dbg !66
  %16 = shl nsw i64 %lsr.iv38, 2, !dbg !66
  %17 = add i64 %lsr.iv, %16, !dbg !66
  %uglygep = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %17, !dbg !66
  %uglygep40 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep40, i64 256, !dbg !66
  %wide.load35.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !66
  %18 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %19 = add i64 %lsr.iv, %18, !dbg !67
  %uglygep59 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %19, !dbg !67
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %scevgep61 = getelementptr <4 x i32>, <4 x i32>* %uglygep5960, i64 255, !dbg !67
  %wide.load36.1 = load <4 x i32>, <4 x i32>* %scevgep61, align 16, !dbg !67
  %20 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %21 = add i64 %lsr.iv, %20, !dbg !67
  %uglygep56 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %21, !dbg !67
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %uglygep5657, i64 256, !dbg !67
  %wide.load37.1 = load <4 x i32>, <4 x i32>* %scevgep58, align 16, !dbg !67
  %22 = add <4 x i32> %wide.load36.1, %wide.load.1, !dbg !67
  %23 = add <4 x i32> %wide.load37.1, %wide.load35.1, !dbg !67
  %24 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %25 = add i64 %lsr.iv, %24, !dbg !67
  %uglygep50 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %25, !dbg !67
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  %scevgep52 = getelementptr <4 x i32>, <4 x i32>* %uglygep5051, i64 255, !dbg !67
  store <4 x i32> %22, <4 x i32>* %scevgep52, align 16, !dbg !67
  %26 = shl nsw i64 %lsr.iv38, 2, !dbg !67
  %27 = add i64 %lsr.iv, %26, !dbg !67
  %uglygep53 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %27, !dbg !67
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i64 256, !dbg !67
  store <4 x i32> %23, <4 x i32>* %scevgep55, align 16, !dbg !67
  %lsr.iv.next39 = add nsw i64 %lsr.iv38, 16, !dbg !64
  %28 = icmp eq i64 %lsr.iv.next39, 0, !dbg !64
  br i1 %28, label %for.cond.cleanup3, label %vector.body, !dbg !64, !llvm.loop !68

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret i32 0, !dbg !71

for.cond.cleanup3:                                ; preds = %vector.body
  %arrayidx12 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %indvars.iv32, !dbg !72
  %29 = load i32, i32* %arrayidx12, align 4, !dbg !72
  %arrayidx14 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %indvars.iv32, !dbg !73
  %30 = load i32, i32* %arrayidx14, align 4, !dbg !74
  %add15 = add i32 %30, %29, !dbg !74
  store i32 %add15, i32* %arrayidx14, align 4, !dbg !74
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !75
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next33, metadata !53, metadata !DIExpression()), !dbg !60
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4096, !dbg !61
  %exitcond34.not = icmp eq i64 %indvars.iv.next33, 1024, !dbg !76
  br i1 %exitcond34.not, label %for.cond.cleanup, label %vector.ph, !dbg !61, !llvm.loop !77

; uselistorder directives
  uselistorder i64 %lsr.iv38, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 %indvars.iv32, { 2, 1, 0 }
  uselistorder i64 %lsr.iv, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 256, { 1, 0, 2 }
  uselistorder i64 255, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), { 6, 7, 5, 4, 1, 2, 0, 3 }
  uselistorder i64 254, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), { 3, 2, 0, 1 }
  uselistorder i64 2, { 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 0, { 2, 3, 0, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 0, 3, 4 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex104.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_mem_write")
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
!47 = distinct !DISubprogram(name: "ex104", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_mem_write/ex104.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53, !55}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocalVariable(name: "j", scope: !56, file: !48, line: 7, type: !10)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 7, column: 4)
!57 = distinct !DILexicalBlock(scope: !58, file: !48, line: 6, column: 33)
!58 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!59 = !DILocation(line: 0, scope: !47)
!60 = !DILocation(line: 0, scope: !54)
!61 = !DILocation(line: 6, column: 2, scope: !54)
!62 = !DILocation(line: 0, scope: !56)
!63 = !DILocation(line: 7, column: 4, scope: !56)
!64 = !DILocation(line: 7, column: 31, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !48, line: 7, column: 4)
!66 = !DILocation(line: 8, column: 17, scope: !65)
!67 = !DILocation(line: 8, column: 14, scope: !65)
!68 = distinct !{!68, !63, !69, !70}
!69 = !DILocation(line: 8, column: 24, scope: !56)
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !DILocation(line: 11, column: 2, scope: !47)
!72 = !DILocation(line: 9, column: 12, scope: !57)
!73 = !DILocation(line: 9, column: 4, scope: !57)
!74 = !DILocation(line: 9, column: 9, scope: !57)
!75 = !DILocation(line: 6, column: 29, scope: !58)
!76 = !DILocation(line: 6, column: 20, scope: !58)
!77 = distinct !{!77, !61, !78}
!78 = !DILocation(line: 10, column: 3, scope: !54)
