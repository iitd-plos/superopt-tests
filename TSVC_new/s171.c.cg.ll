; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s171.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s171.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
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
define dso_local i32 @s171(i32 %inc) local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 %inc, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !73
  %ident.check.not = icmp eq i32 %inc, 1, !dbg !74
  br i1 %ident.check.not, label %vector.body.preheader, label %for.body.preheader, !dbg !74

for.body.preheader:                               ; preds = %entry
  %0 = shl i32 %inc, 1, !dbg !74
  br label %for.body, !dbg !74

vector.body.preheader:                            ; preds = %entry
  %1 = shl i32 %inc, 3, !dbg !74
  %2 = shl i32 %inc, 4, !dbg !74
  br label %vector.body, !dbg !74

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %lsr.iv23 = phi i32 [ 0, %vector.body.preheader ], [ %lsr.iv.next24, %vector.body ], !dbg !75
  %lsr.iv = phi i64 [ -128000, %vector.body.preheader ], [ %lsr.iv.next, %vector.body ], !dbg !75
  %uglygep19 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !77
  %uglygep1920 = bitcast i8* %uglygep19 to <4 x i32>*
  %scevgep21 = getelementptr <4 x i32>, <4 x i32>* %uglygep1920, i64 8000, !dbg !77
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep21, align 16, !dbg !77
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep1920, i64 8001, !dbg !77
  %wide.load9 = load <4 x i32>, <4 x i32>* %scevgep22, align 16, !dbg !77
  %3 = sext i32 %lsr.iv23 to i64, !dbg !79
  %4 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %3, !dbg !79
  %5 = bitcast i32* %4 to <4 x i32>*, !dbg !80
  %wide.load10 = load <4 x i32>, <4 x i32>* %5, align 16, !dbg !80
  %6 = getelementptr i32, i32* %4, i64 4, !dbg !80
  %7 = bitcast i32* %6 to <4 x i32>*, !dbg !80
  %wide.load11 = load <4 x i32>, <4 x i32>* %7, align 4, !dbg !80
  %8 = add <4 x i32> %wide.load10, %wide.load, !dbg !80
  %9 = add <4 x i32> %wide.load11, %wide.load9, !dbg !80
  %10 = bitcast i32* %4 to <4 x i32>*, !dbg !80
  store <4 x i32> %8, <4 x i32>* %10, align 16, !dbg !80
  %11 = bitcast i32* %6 to <4 x i32>*, !dbg !80
  store <4 x i32> %9, <4 x i32>* %11, align 4, !dbg !80
  %uglygep16 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !77
  %uglygep1617 = bitcast i8* %uglygep16 to <4 x i32>*
  %scevgep18 = getelementptr <4 x i32>, <4 x i32>* %uglygep1617, i64 8002, !dbg !77
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep18, align 16, !dbg !77
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !77
  %uglygep15 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep15, i64 8003, !dbg !77
  %wide.load9.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !77
  %12 = add i32 %1, %lsr.iv23, !dbg !79
  %13 = sext i32 %12 to i64, !dbg !79
  %14 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %13, !dbg !79
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !80
  %wide.load10.1 = load <4 x i32>, <4 x i32>* %15, align 16, !dbg !80
  %16 = getelementptr i32, i32* %14, i64 4, !dbg !80
  %17 = bitcast i32* %16 to <4 x i32>*, !dbg !80
  %wide.load11.1 = load <4 x i32>, <4 x i32>* %17, align 4, !dbg !80
  %18 = add <4 x i32> %wide.load10.1, %wide.load.1, !dbg !80
  %19 = add <4 x i32> %wide.load11.1, %wide.load9.1, !dbg !80
  %20 = bitcast i32* %14 to <4 x i32>*, !dbg !80
  store <4 x i32> %18, <4 x i32>* %20, align 16, !dbg !80
  %21 = bitcast i32* %16 to <4 x i32>*, !dbg !80
  store <4 x i32> %19, <4 x i32>* %21, align 4, !dbg !80
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !75
  %lsr.iv.next24 = add i32 %lsr.iv23, %2, !dbg !75
  %22 = icmp eq i64 %lsr.iv.next, 0, !dbg !75
  br i1 %22, label %for.cond.cleanup, label %vector.body, !dbg !75, !llvm.loop !81

for.cond.cleanup:                                 ; preds = %for.body, %vector.body
  ret i32 0, !dbg !84

for.body:                                         ; preds = %for.body.preheader, %for.body
  %lsr.iv34 = phi i32 [ 0, %for.body.preheader ], [ %lsr.iv.next35, %for.body ]
  %lsr.iv25 = phi i64 [ -128000, %for.body.preheader ], [ %lsr.iv.next26, %for.body ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !70, metadata !DIExpression()), !dbg !73
  %uglygep31 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv25, !dbg !77
  %uglygep3132 = bitcast i8* %uglygep31 to i32*
  %scevgep33 = getelementptr i32, i32* %uglygep3132, i64 32000, !dbg !77
  %23 = load i32, i32* %scevgep33, align 8, !dbg !77
  %idxprom1 = sext i32 %lsr.iv34 to i64, !dbg !79
  %arrayidx2 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom1, !dbg !79
  %24 = load i32, i32* %arrayidx2, align 8, !dbg !80
  %add = add i32 %24, %23, !dbg !80
  store i32 %add, i32* %arrayidx2, align 8, !dbg !80
  call void @llvm.dbg.value(metadata i64 undef, metadata !70, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !73
  %uglygep28 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv25, !dbg !77
  %uglygep2829 = bitcast i8* %uglygep28 to i32*
  %scevgep30 = getelementptr i32, i32* %uglygep2829, i64 32001, !dbg !77
  %25 = load i32, i32* %scevgep30, align 4, !dbg !77
  %26 = add i32 %inc, %lsr.iv34, !dbg !79
  %idxprom1.1 = sext i32 %26 to i64, !dbg !79
  %arrayidx2.1 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom1.1, !dbg !79
  %27 = load i32, i32* %arrayidx2.1, align 4, !dbg !80
  %add.1 = add i32 %27, %25, !dbg !80
  store i32 %add.1, i32* %arrayidx2.1, align 4, !dbg !80
  call void @llvm.dbg.value(metadata i64 undef, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !73
  %lsr.iv.next26 = add nsw i64 %lsr.iv25, 8, !dbg !85
  %lsr.iv.next35 = add i32 %lsr.iv34, %0, !dbg !85
  %exitcond.not.1 = icmp eq i64 %lsr.iv.next26, 0, !dbg !85
  br i1 %exitcond.not.1, label %for.cond.cleanup, label %for.body, !dbg !74, !llvm.loop !86

; uselistorder directives
  uselistorder i64 %lsr.iv25, { 2, 1, 0 }
  uselistorder i32 %lsr.iv34, { 2, 1, 0 }
  uselistorder i32* %4, { 1, 2, 0 }
  uselistorder i64 %lsr.iv, { 3, 2, 1, 0 }
  uselistorder i32 %lsr.iv23, { 2, 1, 0 }
  uselistorder i64 0, { 0, 2, 5, 1, 3, 4 }
  uselistorder [32000 x i32]* @a, { 0, 3, 1, 2 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 6, 5 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 0, 4, 3, 2 }
  uselistorder i32 0, { 0, 3, 1, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 2, 1, 3, 4 }
  uselistorder i32 %inc, { 0, 2, 3, 1, 4 }
  uselistorder label %for.body, { 1, 0 }
  uselistorder label %vector.body, { 1, 0 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s171.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s171", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s171.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10, !10}
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "inc", arg: 1, scope: !64, file: !65, line: 3, type: !10)
!70 = !DILocalVariable(name: "i", scope: !71, file: !65, line: 9, type: !10)
!71 = distinct !DILexicalBlock(scope: !64, file: !65, line: 9, column: 3)
!72 = !DILocation(line: 0, scope: !64)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocation(line: 9, column: 3, scope: !71)
!75 = !DILocation(line: 9, column: 29, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !65, line: 9, column: 3)
!77 = !DILocation(line: 10, column: 18, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !65, line: 9, column: 33)
!79 = !DILocation(line: 10, column: 4, scope: !78)
!80 = !DILocation(line: 10, column: 15, scope: !78)
!81 = distinct !{!81, !74, !82, !83}
!82 = !DILocation(line: 11, column: 3, scope: !71)
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !DILocation(line: 12, column: 2, scope: !64)
!85 = !DILocation(line: 9, column: 21, scope: !76)
!86 = distinct !{!86, !74, !82, !83}
