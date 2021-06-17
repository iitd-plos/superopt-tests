; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s4115.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s4115.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
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
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s4115(i32* nocapture readonly %ip) local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32* %ip, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !74
  br label %for.body, !dbg !75

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %add.3, metadata !70, metadata !DIExpression()), !dbg !73
  store i32 %add.3, i32* @temp, align 4, !dbg !76
  ret i32 0, !dbg !77

for.body:                                         ; preds = %for.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.body ], [ 12, %entry ]
  %sum.011 = phi i32 [ 0, %entry ], [ %add.3, %for.body ]
  %0 = bitcast i32* %ip to i8*
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 %sum.011, metadata !70, metadata !DIExpression()), !dbg !73
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !78
  %uglygep2021 = bitcast i8* %uglygep20 to i32*
  %scevgep22 = getelementptr i32, i32* %uglygep2021, i64 -3, !dbg !78
  %1 = load i32, i32* %scevgep22, align 16, !dbg !78
  %uglygep32 = getelementptr i8, i8* %0, i64 %lsr.iv, !dbg !81
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i64 -3, !dbg !81
  %2 = load i32, i32* %scevgep34, align 4, !dbg !81
  %idxprom3 = sext i32 %2 to i64, !dbg !82
  %arrayidx4 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %idxprom3, !dbg !82
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !82
  %mul = mul i32 %3, %1, !dbg !83
  %add = add i32 %mul, %sum.011, !dbg !84
  call void @llvm.dbg.value(metadata i32 %add, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !74
  %uglygep15 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !78
  %uglygep1516 = bitcast i8* %uglygep15 to i32*
  %scevgep17 = getelementptr i32, i32* %uglygep1516, i64 -2, !dbg !78
  %4 = load i32, i32* %scevgep17, align 4, !dbg !78
  %uglygep27 = getelementptr i8, i8* %0, i64 %lsr.iv, !dbg !81
  %uglygep2728 = bitcast i8* %uglygep27 to i32*
  %scevgep29 = getelementptr i32, i32* %uglygep2728, i64 -2, !dbg !81
  %5 = load i32, i32* %scevgep29, align 4, !dbg !81
  %idxprom3.1 = sext i32 %5 to i64, !dbg !82
  %arrayidx4.1 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %idxprom3.1, !dbg !82
  %6 = load i32, i32* %arrayidx4.1, align 4, !dbg !82
  %mul.1 = mul i32 %6, %4, !dbg !83
  %add.1 = add i32 %mul.1, %add, !dbg !84
  call void @llvm.dbg.value(metadata i32 %add.1, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !74
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !78
  %uglygep14 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep14, i64 -1, !dbg !78
  %7 = load i32, i32* %scevgep, align 8, !dbg !78
  %uglygep24 = getelementptr i8, i8* %0, i64 %lsr.iv, !dbg !81
  %uglygep2425 = bitcast i8* %uglygep24 to i32*
  %scevgep26 = getelementptr i32, i32* %uglygep2425, i64 -1, !dbg !81
  %8 = load i32, i32* %scevgep26, align 4, !dbg !81
  %idxprom3.2 = sext i32 %8 to i64, !dbg !82
  %arrayidx4.2 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %idxprom3.2, !dbg !82
  %9 = load i32, i32* %arrayidx4.2, align 4, !dbg !82
  %mul.2 = mul i32 %9, %7, !dbg !83
  %add.2 = add i32 %mul.2, %add.1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %add.2, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value)), !dbg !74
  %uglygep18 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !78
  %uglygep1819 = bitcast i8* %uglygep18 to i32*
  %10 = load i32, i32* %uglygep1819, align 4, !dbg !78
  %uglygep30 = getelementptr i8, i8* %0, i64 %lsr.iv, !dbg !81
  %uglygep3031 = bitcast i8* %uglygep30 to i32*
  %11 = load i32, i32* %uglygep3031, align 4, !dbg !81
  %idxprom3.3 = sext i32 %11 to i64, !dbg !82
  %arrayidx4.3 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %idxprom3.3, !dbg !82
  %12 = load i32, i32* %arrayidx4.3, align 4, !dbg !82
  %mul.3 = mul i32 %12, %10, !dbg !83
  %add.3 = add i32 %mul.3, %add.2, !dbg !84
  call void @llvm.dbg.value(metadata i32 %add.3, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 undef, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !74
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 16, !dbg !85
  %exitcond.not.3 = icmp eq i64 %lsr.iv.next, 128012, !dbg !85
  br i1 %exitcond.not.3, label %for.cond.cleanup, label %for.body, !dbg !75, !llvm.loop !86

; uselistorder directives
  uselistorder i8* %0, { 2, 0, 1, 3 }
  uselistorder i64 %lsr.iv, { 8, 1, 5, 3, 7, 2, 6, 0, 4 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 5, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 1, 3, 2, 0 }
  uselistorder i32 0, { 0, 2, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 3, 4, 5, 10, 9, 7, 6, 8, 11, 12, 13 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s4115.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s4115", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s4115.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10, !55}
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(name: "ip", arg: 1, scope: !64, file: !65, line: 3, type: !55)
!70 = !DILocalVariable(name: "sum", scope: !64, file: !65, line: 10, type: !10)
!71 = !DILocalVariable(name: "i", scope: !72, file: !65, line: 12, type: !10)
!72 = distinct !DILexicalBlock(scope: !64, file: !65, line: 12, column: 3)
!73 = !DILocation(line: 0, scope: !64)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 12, column: 3, scope: !72)
!76 = !DILocation(line: 15, column: 7, scope: !64)
!77 = !DILocation(line: 16, column: 2, scope: !64)
!78 = !DILocation(line: 13, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !65, line: 12, column: 33)
!80 = distinct !DILexicalBlock(scope: !72, file: !65, line: 12, column: 3)
!81 = !DILocation(line: 13, column: 20, scope: !79)
!82 = !DILocation(line: 13, column: 18, scope: !79)
!83 = !DILocation(line: 13, column: 16, scope: !79)
!84 = !DILocation(line: 13, column: 8, scope: !79)
!85 = !DILocation(line: 12, column: 21, scope: !80)
!86 = distinct !{!86, !75, !87}
!87 = !DILocation(line: 14, column: 3, scope: !72)
