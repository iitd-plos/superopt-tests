; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/va.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/va.c"
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
define dso_local i32 @va() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !71
  br label %vector.body, !dbg !72

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !73
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep5455 = bitcast i8* %uglygep54 to <4 x i32>*
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %uglygep5455, i64 8000, !dbg !75
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !75
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5455, i64 8001, !dbg !75
  %wide.load8 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !75
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8000, !dbg !77
  store <4 x i32> %wide.load, <4 x i32>* %scevgep28, align 16, !dbg !77
  %scevgep29 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8001, !dbg !77
  store <4 x i32> %wide.load8, <4 x i32>* %scevgep29, align 16, !dbg !77
  %uglygep61 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %scevgep63 = getelementptr <4 x i32>, <4 x i32>* %uglygep6162, i64 8002, !dbg !75
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep63, align 16, !dbg !75
  %uglygep58 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %uglygep5859, i64 8003, !dbg !75
  %wide.load8.1 = load <4 x i32>, <4 x i32>* %scevgep60, align 16, !dbg !75
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 8002, !dbg !77
  store <4 x i32> %wide.load.1, <4 x i32>* %scevgep35, align 16, !dbg !77
  %uglygep30 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep3031 = bitcast i8* %uglygep30 to <4 x i32>*
  %scevgep32 = getelementptr <4 x i32>, <4 x i32>* %uglygep3031, i64 8003, !dbg !77
  store <4 x i32> %wide.load8.1, <4 x i32>* %scevgep32, align 16, !dbg !77
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8004, !dbg !75
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !75
  %uglygep48 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep4849 = bitcast i8* %uglygep48 to <4 x i32>*
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %uglygep4849, i64 8005, !dbg !75
  %wide.load8.2 = load <4 x i32>, <4 x i32>* %scevgep50, align 16, !dbg !75
  %uglygep23 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep2324 = bitcast i8* %uglygep23 to <4 x i32>*
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2324, i64 8004, !dbg !77
  store <4 x i32> %wide.load.2, <4 x i32>* %scevgep25, align 16, !dbg !77
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep2021 = bitcast i8* %uglygep20 to <4 x i32>*
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep2021, i64 8005, !dbg !77
  store <4 x i32> %wide.load8.2, <4 x i32>* %scevgep22, align 16, !dbg !77
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 8006, !dbg !75
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep47, align 16, !dbg !75
  %uglygep42 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep4243 = bitcast i8* %uglygep42 to <4 x i32>*
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %uglygep4243, i64 8007, !dbg !75
  %wide.load8.3 = load <4 x i32>, <4 x i32>* %scevgep44, align 16, !dbg !75
  %uglygep17 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep1718 = bitcast i8* %uglygep17 to <4 x i32>*
  %scevgep19 = getelementptr <4 x i32>, <4 x i32>* %uglygep1718, i64 8006, !dbg !77
  store <4 x i32> %wide.load.3, <4 x i32>* %scevgep19, align 16, !dbg !77
  %uglygep14 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep1415 = bitcast i8* %uglygep14 to <4 x i32>*
  %scevgep16 = getelementptr <4 x i32>, <4 x i32>* %uglygep1415, i64 8007, !dbg !77
  store <4 x i32> %wide.load8.3, <4 x i32>* %scevgep16, align 16, !dbg !77
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep3940 = bitcast i8* %uglygep39 to <4 x i32>*
  %scevgep41 = getelementptr <4 x i32>, <4 x i32>* %uglygep3940, i64 8008, !dbg !75
  %wide.load.4 = load <4 x i32>, <4 x i32>* %scevgep41, align 16, !dbg !75
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %uglygep3637, i64 8009, !dbg !75
  %wide.load8.4 = load <4 x i32>, <4 x i32>* %scevgep38, align 16, !dbg !75
  %uglygep11 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep1112 = bitcast i8* %uglygep11 to <4 x i32>*
  %scevgep13 = getelementptr <4 x i32>, <4 x i32>* %uglygep1112, i64 8008, !dbg !77
  store <4 x i32> %wide.load.4, <4 x i32>* %scevgep13, align 16, !dbg !77
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !77
  %uglygep10 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep10, i64 8009, !dbg !77
  store <4 x i32> %wide.load8.4, <4 x i32>* %scevgep, align 16, !dbg !77
  %lsr.iv.next = add nsw i64 %lsr.iv, 160, !dbg !73
  %0 = icmp eq i64 %lsr.iv.next, 0, !dbg !73
  br i1 %0, label %for.cond.cleanup, label %vector.body, !dbg !73, !llvm.loop !78

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !81

; uselistorder directives
  uselistorder i64 %lsr.iv, { 18, 17, 16, 8, 7, 15, 14, 6, 5, 13, 12, 4, 3, 10, 9, 1, 0, 11, 2 }
  uselistorder i32 0, { 1, 0 }
  uselistorder i64 8009, { 1, 0 }
  uselistorder i64 8008, { 1, 0 }
  uselistorder i64 8007, { 1, 0 }
  uselistorder i64 8006, { 1, 0 }
  uselistorder i64 8005, { 1, 0 }
  uselistorder i64 8004, { 1, 0 }
  uselistorder i64 8003, { 1, 0 }
  uselistorder i64 8002, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 8, 7, 6, 5, 4, 3, 1, 0, 2 }
  uselistorder i64 8001, { 1, 0 }
  uselistorder i64 8000, { 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 6, 5 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 8, 7, 6, 5, 4, 3, 1, 0, 2 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/va.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "va", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/va.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 9, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 9, column: 3)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 9, column: 3, scope: !70)
!73 = !DILocation(line: 9, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !65, line: 9, column: 3)
!75 = !DILocation(line: 10, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !74, file: !65, line: 9, column: 33)
!77 = !DILocation(line: 10, column: 9, scope: !76)
!78 = distinct !{!78, !72, !79, !80}
!79 = !DILocation(line: 11, column: 3, scope: !70)
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !DILocation(line: 12, column: 2, scope: !64)
