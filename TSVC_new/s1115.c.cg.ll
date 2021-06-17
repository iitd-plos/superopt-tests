; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1115.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1115.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
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
define dso_local i32 @s1115() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !75
  br label %vector.ph, !dbg !76

vector.ph:                                        ; preds = %for.cond.cleanup3, %entry
  %lsr.iv48 = phi i64 [ %lsr.iv.next49, %for.cond.cleanup3 ], [ 0, %entry ]
  %lsr.iv = phi [256 x [256 x i32]]* [ %11, %for.cond.cleanup3 ], [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @cc, i64 0, i64 3, i64 0) to [256 x [256 x i32]]*), %entry ]
  %indvars.iv36 = phi i64 [ 0, %entry ], [ %indvars.iv.next37, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv36, metadata !69, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !77
  br label %vector.body, !dbg !78

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv50 = phi i64 [ %lsr.iv.next51, %vector.body ], [ %lsr.iv48, %vector.ph ], !dbg !79
  %lsr.iv40 = phi i64 [ %lsr.iv.next, %vector.body ], [ 0, %vector.ph ], !dbg !79
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv50, !dbg !81
  %uglygep53 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep53, align 16, !dbg !81
  %scevgep46 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i64 0, i64 0, i64 %lsr.iv40, !dbg !83
  %scevgep47 = getelementptr i32, i32* %scevgep46, i64 -768, !dbg !83
  %scevgep44 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i64 0, i64 0, i64 %lsr.iv40, !dbg !83
  %scevgep45 = getelementptr i32, i32* %scevgep44, i64 -512, !dbg !83
  %scevgep42 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i64 0, i64 0, i64 %lsr.iv40, !dbg !83
  %scevgep43 = getelementptr i32, i32* %scevgep42, i64 -256, !dbg !83
  %scevgep41 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i64 0, i64 0, i64 %lsr.iv40, !dbg !83
  %0 = load i32, i32* %scevgep47, align 4, !dbg !83
  %1 = load i32, i32* %scevgep45, align 4, !dbg !83
  %2 = load i32, i32* %scevgep43, align 4, !dbg !83
  %3 = load i32, i32* %scevgep41, align 4, !dbg !83
  %4 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !79
  %5 = insertelement <4 x i32> %4, i32 %1, i32 1, !dbg !79
  %6 = insertelement <4 x i32> %5, i32 %2, i32 2, !dbg !79
  %7 = insertelement <4 x i32> %6, i32 %3, i32 3, !dbg !79
  %8 = mul <4 x i32> %7, %wide.load, !dbg !79
  %uglygep56 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %lsr.iv50, !dbg !84
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %wide.load39 = load <4 x i32>, <4 x i32>* %uglygep5657, align 16, !dbg !84
  %9 = add <4 x i32> %8, %wide.load39, !dbg !85
  %uglygep54 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %lsr.iv50, !dbg !86
  %uglygep5455 = bitcast i8* %uglygep54 to <4 x i32>*
  store <4 x i32> %9, <4 x i32>* %uglygep5455, align 16, !dbg !86
  %lsr.iv.next = add nuw nsw i64 %lsr.iv40, 1024, !dbg !79
  %lsr.iv.next51 = add nuw nsw i64 %lsr.iv50, 16, !dbg !79
  %10 = icmp eq i64 %lsr.iv.next, 65536, !dbg !79
  br i1 %10, label %for.cond.cleanup3, label %vector.body, !dbg !79, !llvm.loop !87

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret i32 0, !dbg !90

for.cond.cleanup3:                                ; preds = %vector.body
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1, !dbg !91
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next37, metadata !69, metadata !DIExpression()), !dbg !75
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i64 0, i64 0, i64 1, !dbg !76
  %11 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !76
  %lsr.iv.next49 = add nuw nsw i64 %lsr.iv48, 1024, !dbg !76
  %exitcond38.not = icmp eq i64 %indvars.iv.next37, 256, !dbg !92
  br i1 %exitcond38.not, label %for.cond.cleanup, label %vector.ph, !dbg !76, !llvm.loop !93

; uselistorder directives
  uselistorder i64 %lsr.iv40, { 4, 3, 2, 1, 0 }
  uselistorder i64 %lsr.iv50, { 3, 1, 0, 2 }
  uselistorder [256 x [256 x i32]]* %lsr.iv, { 4, 3, 2, 1, 0 }
  uselistorder i64 %lsr.iv48, { 1, 0 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder [256 x [256 x i32]] zeroinitializer, { 0, 2, 1, 3 }
  uselistorder i64 0, { 10, 11, 7, 8, 5, 6, 3, 4, 1, 2, 9, 14, 12, 13, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 0, 3 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1115.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s1115", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s1115.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !71}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 8, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 8, column: 3)
!71 = !DILocalVariable(name: "j", scope: !72, file: !65, line: 9, type: !10)
!72 = distinct !DILexicalBlock(scope: !73, file: !65, line: 9, column: 4)
!73 = distinct !DILexicalBlock(scope: !74, file: !65, line: 8, column: 34)
!74 = distinct !DILexicalBlock(scope: !70, file: !65, line: 8, column: 3)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocation(line: 8, column: 3, scope: !70)
!77 = !DILocation(line: 0, scope: !72)
!78 = !DILocation(line: 9, column: 4, scope: !72)
!79 = !DILocation(line: 9, column: 31, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !65, line: 9, column: 4)
!81 = !DILocation(line: 10, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !80, file: !65, line: 9, column: 35)
!83 = !DILocation(line: 10, column: 25, scope: !82)
!84 = !DILocation(line: 10, column: 36, scope: !82)
!85 = !DILocation(line: 10, column: 34, scope: !82)
!86 = !DILocation(line: 10, column: 14, scope: !82)
!87 = distinct !{!87, !78, !88, !89}
!88 = !DILocation(line: 11, column: 4, scope: !72)
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !DILocation(line: 13, column: 2, scope: !64)
!91 = !DILocation(line: 8, column: 30, scope: !74)
!92 = !DILocation(line: 8, column: 21, scope: !74)
!93 = distinct !{!93, !76, !94}
!94 = !DILocation(line: 12, column: 3, scope: !70)
