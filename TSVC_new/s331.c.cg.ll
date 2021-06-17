; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s331.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s331.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !22
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
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
define dso_local i32 @s331() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 -1, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !74
  br label %for.body, !dbg !75

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %spec.select.4, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 %spec.select.4, metadata !70, metadata !DIExpression()), !dbg !73
  %add = add i32 %spec.select.4, 1, !dbg !76
  store i32 %add, i32* @temp, align 4, !dbg !77
  ret i32 0, !dbg !78

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %14, %for.body ]
  %j.09 = phi i32 [ -1, %entry ], [ %spec.select.4, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 %j.09, metadata !69, metadata !DIExpression()), !dbg !73
  %0 = shl nuw nsw i64 %indvars.iv, 2, !dbg !79
  %uglygep18 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %0, !dbg !79
  %uglygep1819 = bitcast i8* %uglygep18 to i32*
  %1 = load i32, i32* %uglygep1819, align 4, !dbg !79
  %cmp1 = icmp slt i32 %1, 0, !dbg !83
  %tmp = trunc i64 %indvars.iv to i32
  %spec.select = select i1 %cmp1, i32 %tmp, i32 %j.09, !dbg !84
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !74
  %2 = shl nuw nsw i64 %indvars.iv, 2, !dbg !79
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %2, !dbg !79
  %uglygep2021 = bitcast i8* %uglygep20 to i32*
  %scevgep22 = getelementptr i32, i32* %uglygep2021, i64 1, !dbg !79
  %3 = load i32, i32* %scevgep22, align 4, !dbg !79
  %cmp1.1 = icmp slt i32 %3, 0, !dbg !83
  %4 = add i64 %indvars.iv, 1, !dbg !84
  %lsr.chain = trunc i64 %4 to i32, !dbg !84
  %spec.select.1 = select i1 %cmp1.1, i32 %lsr.chain, i32 %spec.select, !dbg !84
  call void @llvm.dbg.value(metadata i32 %spec.select.1, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !74
  %5 = shl nuw nsw i64 %indvars.iv, 2, !dbg !79
  %uglygep15 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %5, !dbg !79
  %uglygep1516 = bitcast i8* %uglygep15 to i32*
  %scevgep17 = getelementptr i32, i32* %uglygep1516, i64 2, !dbg !79
  %6 = load i32, i32* %scevgep17, align 4, !dbg !79
  %cmp1.2 = icmp slt i32 %6, 0, !dbg !83
  %7 = add i64 %4, 1, !dbg !84
  %lsr.chain23 = trunc i64 %7 to i32, !dbg !84
  %spec.select.2 = select i1 %cmp1.2, i32 %lsr.chain23, i32 %spec.select.1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %spec.select.2, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !74
  %8 = shl nuw nsw i64 %indvars.iv, 2, !dbg !79
  %uglygep12 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %8, !dbg !79
  %uglygep1213 = bitcast i8* %uglygep12 to i32*
  %scevgep14 = getelementptr i32, i32* %uglygep1213, i64 3, !dbg !79
  %9 = load i32, i32* %scevgep14, align 4, !dbg !79
  %cmp1.3 = icmp slt i32 %9, 0, !dbg !83
  %10 = add i64 %7, 1, !dbg !84
  %lsr.chain24 = trunc i64 %10 to i32, !dbg !84
  %spec.select.3 = select i1 %cmp1.3, i32 %lsr.chain24, i32 %spec.select.2, !dbg !84
  call void @llvm.dbg.value(metadata i32 %spec.select.3, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !74
  %11 = shl nuw nsw i64 %indvars.iv, 2, !dbg !79
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %11, !dbg !79
  %uglygep11 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep11, i64 4, !dbg !79
  %12 = load i32, i32* %scevgep, align 4, !dbg !79
  %cmp1.4 = icmp slt i32 %12, 0, !dbg !83
  %13 = add i64 %10, 1, !dbg !84
  %lsr.chain25 = trunc i64 %13 to i32, !dbg !84
  %spec.select.4 = select i1 %cmp1.4, i32 %lsr.chain25, i32 %spec.select.3, !dbg !84
  call void @llvm.dbg.value(metadata i32 %spec.select.4, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !74
  %14 = add i64 %13, 1, !dbg !85
  %exitcond.not.4 = icmp eq i64 %14, 32000, !dbg !85
  br i1 %exitcond.not.4, label %for.cond.cleanup, label %for.body, !dbg !75, !llvm.loop !86

; uselistorder directives
  uselistorder i64 %14, { 1, 0 }
  uselistorder i64 %indvars.iv, { 6, 5, 4, 0, 2, 1, 3 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i64 2, { 5, 4, 2, 3, 0, 1 }
  uselistorder i32 0, { 0, 1, 2, 3, 6, 5, 4 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 3, 4, 5, 6, 7, 12, 11, 9, 8, 15, 10, 13, 14 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !10, line: 21, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s331.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!65 = distinct !DISubprogram(name: "s331", scope: !66, file: !66, line: 4, type: !67, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s331.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(name: "j", scope: !65, file: !66, line: 10, type: !6)
!70 = !DILocalVariable(name: "chksum", scope: !65, file: !66, line: 11, type: !6)
!71 = !DILocalVariable(name: "i", scope: !72, file: !66, line: 13, type: !6)
!72 = distinct !DILexicalBlock(scope: !65, file: !66, line: 13, column: 3)
!73 = !DILocation(line: 0, scope: !65)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 13, column: 3, scope: !72)
!76 = !DILocation(line: 19, column: 10, scope: !65)
!77 = !DILocation(line: 19, column: 7, scope: !65)
!78 = !DILocation(line: 20, column: 2, scope: !65)
!79 = !DILocation(line: 14, column: 8, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !66, line: 14, column: 8)
!81 = distinct !DILexicalBlock(scope: !82, file: !66, line: 13, column: 33)
!82 = distinct !DILexicalBlock(scope: !72, file: !66, line: 13, column: 3)
!83 = !DILocation(line: 14, column: 13, scope: !80)
!84 = !DILocation(line: 14, column: 8, scope: !81)
!85 = !DILocation(line: 13, column: 21, scope: !82)
!86 = distinct !{!86, !75, !87}
!87 = !DILocation(line: 17, column: 3, scope: !72)
