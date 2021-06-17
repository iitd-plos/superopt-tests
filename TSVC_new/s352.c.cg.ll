; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s352.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s352.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !22
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !37
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !39
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !41
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !46
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !48
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !50
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !52
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !54
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !57
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !59

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s352() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression()), !dbg !73
  br label %for.body, !dbg !75

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %op.extra.1, metadata !69, metadata !DIExpression()), !dbg !73
  store i32 %op.extra.1, i32* @temp, align 4, !dbg !76
  ret i32 0, !dbg !77

for.body:                                         ; preds = %for.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.body ], [ -10, %entry ]
  %dot.051 = phi i32 [ 0, %entry ], [ %op.extra.1, %for.body ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 %dot.051, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !73
  %0 = shl nsw i64 %lsr.iv, 2, !dbg !78
  %uglygep79 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %0, !dbg !78
  %uglygep7980 = bitcast i8* %uglygep79 to <4 x i32>*
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %uglygep7980, i64 2, !dbg !78
  %scevgep8182 = bitcast <4 x i32>* %scevgep81 to i8*
  %uglygep83 = getelementptr i8, i8* %scevgep8182, i64 8, !dbg !78
  %uglygep8384 = bitcast i8* %uglygep83 to <4 x i32>*
  %1 = load <4 x i32>, <4 x i32>* %uglygep8384, align 8, !dbg !78
  %2 = shl nsw i64 %lsr.iv, 2, !dbg !81
  %uglygep61 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %2, !dbg !81
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %scevgep63 = getelementptr <4 x i32>, <4 x i32>* %uglygep6162, i64 2, !dbg !81
  %scevgep6364 = bitcast <4 x i32>* %scevgep63 to i8*
  %uglygep65 = getelementptr i8, i8* %scevgep6364, i64 8, !dbg !81
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  %3 = load <4 x i32>, <4 x i32>* %uglygep6566, align 8, !dbg !81
  %4 = mul <4 x i32> %3, %1, !dbg !82
  %5 = shl nsw i64 %lsr.iv, 2, !dbg !83
  %uglygep76 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %5, !dbg !83
  %uglygep7677 = bitcast i8* %uglygep76 to i32*
  %scevgep78 = getelementptr i32, i32* %uglygep7677, i64 14, !dbg !83
  %6 = load i32, i32* %scevgep78, align 8, !dbg !83
  %7 = shl nsw i64 %lsr.iv, 2, !dbg !84
  %uglygep58 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %7, !dbg !84
  %uglygep5859 = bitcast i8* %uglygep58 to i32*
  %scevgep60 = getelementptr i32, i32* %uglygep5859, i64 14, !dbg !84
  %8 = load i32, i32* %scevgep60, align 8, !dbg !84
  %mul33 = mul i32 %8, %6, !dbg !85
  %rdx.shuf = shufflevector <4 x i32> %4, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !86
  %bin.rdx = add <4 x i32> %4, %rdx.shuf, !dbg !86
  %rdx.shuf91 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !86
  %bin.rdx92 = add <4 x i32> %bin.rdx, %rdx.shuf91, !dbg !86
  %9 = extractelement <4 x i32> %bin.rdx92, i32 0, !dbg !86
  %10 = add i32 %9, %mul33, !dbg !85
  %op.extra = add i32 %10, %dot.051, !dbg !87
  call void @llvm.dbg.value(metadata i32 %op.extra, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !74
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !73
  %11 = shl nsw i64 %lsr.iv, 2, !dbg !78
  %uglygep85 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %11, !dbg !78
  %uglygep8586 = bitcast i8* %uglygep85 to <4 x i32>*
  %scevgep87 = getelementptr <4 x i32>, <4 x i32>* %uglygep8586, i64 3, !dbg !78
  %scevgep8788 = bitcast <4 x i32>* %scevgep87 to i8*
  %uglygep89 = getelementptr i8, i8* %scevgep8788, i64 12, !dbg !78
  %uglygep8990 = bitcast i8* %uglygep89 to <4 x i32>*
  %12 = load <4 x i32>, <4 x i32>* %uglygep8990, align 4, !dbg !78
  %13 = shl nsw i64 %lsr.iv, 2, !dbg !81
  %uglygep67 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %13, !dbg !81
  %uglygep6768 = bitcast i8* %uglygep67 to <4 x i32>*
  %scevgep69 = getelementptr <4 x i32>, <4 x i32>* %uglygep6768, i64 3, !dbg !81
  %scevgep6970 = bitcast <4 x i32>* %scevgep69 to i8*
  %uglygep71 = getelementptr i8, i8* %scevgep6970, i64 12, !dbg !81
  %uglygep7172 = bitcast i8* %uglygep71 to <4 x i32>*
  %14 = load <4 x i32>, <4 x i32>* %uglygep7172, align 4, !dbg !81
  %15 = mul <4 x i32> %14, %12, !dbg !82
  %16 = shl nsw i64 %lsr.iv, 2, !dbg !83
  %uglygep73 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %16, !dbg !83
  %uglygep7374 = bitcast i8* %uglygep73 to i32*
  %scevgep75 = getelementptr i32, i32* %uglygep7374, i64 19, !dbg !83
  %17 = load i32, i32* %scevgep75, align 4, !dbg !83
  %18 = shl nsw i64 %lsr.iv, 2, !dbg !84
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %18, !dbg !84
  %uglygep57 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep57, i64 19, !dbg !84
  %19 = load i32, i32* %scevgep, align 4, !dbg !84
  %mul33.1 = mul i32 %19, %17, !dbg !85
  %rdx.shuf93 = shufflevector <4 x i32> %15, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !86
  %bin.rdx94 = add <4 x i32> %15, %rdx.shuf93, !dbg !86
  %rdx.shuf95 = shufflevector <4 x i32> %bin.rdx94, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !86
  %bin.rdx96 = add <4 x i32> %bin.rdx94, %rdx.shuf95, !dbg !86
  %20 = extractelement <4 x i32> %bin.rdx96, i32 0, !dbg !86
  %21 = add i32 %20, %mul33.1, !dbg !85
  %op.extra.1 = add i32 %21, %op.extra, !dbg !87
  call void @llvm.dbg.value(metadata i32 %op.extra.1, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 10, DW_OP_stack_value)), !dbg !74
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression()), !dbg !73
  %lsr.iv.next = add nsw i64 %lsr.iv, 10, !dbg !88
  %cmp.1 = icmp ult i64 %lsr.iv.next, 31990, !dbg !88
  br i1 %cmp.1, label %for.body, label %for.cond.cleanup, !dbg !75, !llvm.loop !89

; uselistorder directives
  uselistorder i64 %lsr.iv, { 8, 7, 3, 4, 0, 6, 2, 5, 1 }
  uselistorder i64 19, { 1, 0 }
  uselistorder i64 12, { 1, 0 }
  uselistorder i64 3, { 1, 0 }
  uselistorder i64 14, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 3, 0, 2, 1 }
  uselistorder i64 8, { 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 5, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 3, 0, 2, 1 }
  uselistorder i64 2, { 9, 4, 5, 0, 8, 3, 6, 7, 1, 2 }
  uselistorder i32 0, { 0, 1, 2, 4, 3 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 3, 11, 10, 8, 9, 5, 4, 7, 6, 12, 13, 14 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !10, line: 21, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s352.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !14, !16, !18, !20, !22, !27, !29, !31, !33, !35, !37, !39, !41, !46, !48, !50, !52, !54, !57, !59}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "X", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!10 = !DIFile(filename: "TSVC_new/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024000, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 32000)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "Y", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "Z", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "U", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "V", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "array", scope: !2, file: !10, line: 24, type: !24, isLocal: false, isDefinition: true, align: 128)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2097152, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 65536)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !10, line: 26, type: !11, isLocal: false, isDefinition: true, align: 128)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !10, line: 27, type: !6, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2097152, elements: !44)
!44 = !{!45, !45}
!45 = !DISubrange(count: 256)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !10, line: 33, type: !11, isLocal: false, isDefinition: true, align: 128)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !10, line: 36, type: !56, isLocal: false, isDefinition: true)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !10, line: 37, type: !56, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !10, line: 38, type: !11, isLocal: false, isDefinition: true)
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!65 = distinct !DISubprogram(name: "s352", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s352.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(name: "dot", scope: !65, file: !66, line: 9, type: !6)
!70 = !DILocalVariable(name: "i1", scope: !65, file: !66, line: 11, type: !6)
!71 = !DILocalVariable(name: "i", scope: !72, file: !66, line: 12, type: !6)
!72 = distinct !DILexicalBlock(scope: !65, file: !66, line: 12, column: 3)
!73 = !DILocation(line: 0, scope: !65)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 12, column: 3, scope: !72)
!76 = !DILocation(line: 17, column: 7, scope: !65)
!77 = !DILocation(line: 18, column: 2, scope: !65)
!78 = !DILocation(line: 14, column: 16, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !66, line: 12, column: 36)
!80 = distinct !DILexicalBlock(scope: !72, file: !66, line: 12, column: 3)
!81 = !DILocation(line: 14, column: 23, scope: !79)
!82 = !DILocation(line: 14, column: 21, scope: !79)
!83 = !DILocation(line: 15, column: 40, scope: !79)
!84 = !DILocation(line: 15, column: 51, scope: !79)
!85 = !DILocation(line: 15, column: 49, scope: !79)
!86 = !DILocation(line: 15, column: 38, scope: !79)
!87 = !DILocation(line: 14, column: 14, scope: !79)
!88 = !DILocation(line: 12, column: 21, scope: !80)
!89 = distinct !{!89, !75, !90}
!90 = !DILocation(line: 16, column: 3, scope: !72)
