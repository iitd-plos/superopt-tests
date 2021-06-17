; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s119.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s119.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
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
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s119() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !69, metadata !DIExpression()), !dbg !75
  br label %for.cond1.preheader, !dbg !76

for.cond1.preheader:                              ; preds = %entry, %for.body4
  %lsr.iv = phi i64 [ 1028, %entry ], [ %lsr.iv.next, %for.body4 ]
  %indvars.iv32 = phi i64 [ 1, %entry ], [ %indvars.iv.next33, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv32, metadata !69, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 1, metadata !71, metadata !DIExpression()), !dbg !77
  %0 = add nsw i64 %indvars.iv32, -1, !dbg !78
  br label %vector.body, !dbg !81

vector.body:                                      ; preds = %vector.body.1, %for.cond1.preheader
  %lsr.iv37 = phi i64 [ %lsr.iv.next38, %vector.body.1 ], [ -248, %for.cond1.preheader ]
  %1 = shl nsw i64 %lsr.iv37, 2, !dbg !82
  %2 = add i64 %lsr.iv, %1, !dbg !82
  %uglygep46 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %2, !dbg !82
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 -2, !dbg !82
  %scevgep4849 = bitcast <4 x i32>* %scevgep48 to i8*
  %uglygep50 = getelementptr i8, i8* %scevgep4849, i64 -4, !dbg !82
  %uglygep5051 = bitcast i8* %uglygep50 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep5051, align 16, !dbg !82
  %3 = shl nsw i64 %lsr.iv37, 2, !dbg !83
  %4 = add i64 %lsr.iv, %3, !dbg !83
  %uglygep58 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %4, !dbg !83
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %uglygep5859, i64 62, !dbg !83
  %wide.load36 = load <4 x i32>, <4 x i32>* %scevgep60, align 4, !dbg !83
  %5 = add <4 x i32> %wide.load36, %wide.load, !dbg !84
  %6 = shl nsw i64 %lsr.iv37, 2, !dbg !85
  %7 = add i64 %lsr.iv, %6, !dbg !85
  %uglygep52 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %7, !dbg !85
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5253, i64 62, !dbg !85
  store <4 x i32> %5, <4 x i32>* %scevgep54, align 4, !dbg !85
  %8 = icmp eq i64 %lsr.iv37, 0
  br i1 %8, label %for.body4, label %vector.body.1, !llvm.loop !86

for.cond.cleanup:                                 ; preds = %for.body4
  ret i32 0, !dbg !89

for.body4:                                        ; preds = %vector.body
  call void @llvm.dbg.value(metadata i64 253, metadata !71, metadata !DIExpression()), !dbg !77
  %arrayidx7 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %0, i64 252, !dbg !82
  %9 = load i32, i32* %arrayidx7, align 16, !dbg !82
  %arrayidx11 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %indvars.iv32, i64 253, !dbg !83
  %10 = load i32, i32* %arrayidx11, align 4, !dbg !83
  %add = add i32 %10, %9, !dbg !84
  %arrayidx15 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %indvars.iv32, i64 253, !dbg !90
  store i32 %add, i32* %arrayidx15, align 4, !dbg !85
  call void @llvm.dbg.value(metadata i64 254, metadata !71, metadata !DIExpression()), !dbg !77
  %arrayidx7.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %0, i64 253, !dbg !82
  %11 = load i32, i32* %arrayidx7.1, align 4, !dbg !82
  %arrayidx11.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %indvars.iv32, i64 254, !dbg !83
  %12 = load i32, i32* %arrayidx11.1, align 8, !dbg !83
  %add.1 = add i32 %12, %11, !dbg !84
  %arrayidx15.1 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %indvars.iv32, i64 254, !dbg !90
  store i32 %add.1, i32* %arrayidx15.1, align 8, !dbg !85
  call void @llvm.dbg.value(metadata i64 255, metadata !71, metadata !DIExpression()), !dbg !77
  %arrayidx7.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %0, i64 254, !dbg !82
  %13 = load i32, i32* %arrayidx7.2, align 8, !dbg !82
  %arrayidx11.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %indvars.iv32, i64 255, !dbg !83
  %14 = load i32, i32* %arrayidx11.2, align 4, !dbg !83
  %add.2 = add i32 %14, %13, !dbg !84
  %arrayidx15.2 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %indvars.iv32, i64 255, !dbg !90
  store i32 %add.2, i32* %arrayidx15.2, align 4, !dbg !85
  call void @llvm.dbg.value(metadata i64 256, metadata !71, metadata !DIExpression()), !dbg !77
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !91
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next33, metadata !69, metadata !DIExpression()), !dbg !75
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 1024, !dbg !76
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, 256, !dbg !92
  br i1 %exitcond35.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !76, !llvm.loop !93

vector.body.1:                                    ; preds = %vector.body
  %15 = shl nsw i64 %lsr.iv37, 2, !dbg !82
  %16 = add i64 %lsr.iv, %15, !dbg !82
  %uglygep40 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %16, !dbg !82
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep4041, i64 -1, !dbg !82
  %scevgep4243 = bitcast <4 x i32>* %scevgep42 to i8*
  %uglygep44 = getelementptr i8, i8* %scevgep4243, i64 -4, !dbg !82
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %wide.load.1 = load <4 x i32>, <4 x i32>* %uglygep4445, align 16, !dbg !82
  %17 = shl nsw i64 %lsr.iv37, 2, !dbg !83
  %18 = add i64 %lsr.iv, %17, !dbg !83
  %uglygep55 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %18, !dbg !83
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 63, !dbg !83
  %wide.load36.1 = load <4 x i32>, <4 x i32>* %scevgep57, align 4, !dbg !83
  %19 = add <4 x i32> %wide.load36.1, %wide.load.1, !dbg !84
  %20 = shl nsw i64 %lsr.iv37, 2, !dbg !85
  %21 = add i64 %lsr.iv, %20, !dbg !85
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %21, !dbg !85
  %uglygep39 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep39, i64 63, !dbg !85
  store <4 x i32> %19, <4 x i32>* %scevgep, align 4, !dbg !85
  %lsr.iv.next38 = add nsw i64 %lsr.iv37, 8
  br label %vector.body

; uselistorder directives
  uselistorder i64 %lsr.iv37, { 7, 6, 2, 5, 0, 3, 1, 4 }
  uselistorder i64 %indvars.iv32, { 7, 0, 1, 2, 3, 5, 4, 6 }
  uselistorder i64 %lsr.iv, { 5, 1, 4, 6, 2, 0, 3 }
  uselistorder i64 63, { 1, 0 }
  uselistorder i64 255, { 1, 0 }
  uselistorder i64 254, { 0, 2, 1 }
  uselistorder i64 253, { 0, 2, 1 }
  uselistorder i32 0, { 1, 0 }
  uselistorder i64 0, { 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 }
  uselistorder i64 62, { 1, 0 }
  uselistorder [256 x [256 x i32]]* @bb, { 1, 2, 3, 0 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @bb to i8*), { 1, 0 }
  uselistorder i64 -4, { 1, 0 }
  uselistorder [256 x [256 x i32]]* @aa, { 1, 2, 3, 4, 5, 6, 0 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @aa to i8*), { 3, 2, 0, 1 }
  uselistorder i64 2, { 5, 1, 4, 2, 0, 3 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 6, 0, 1, 5, 3, 4, 2, 7 }
  uselistorder label %for.cond1.preheader, { 1, 0 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s119.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s119", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s119.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !71}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 9, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 9, column: 3)
!71 = !DILocalVariable(name: "j", scope: !72, file: !65, line: 10, type: !10)
!72 = distinct !DILexicalBlock(scope: !73, file: !65, line: 10, column: 4)
!73 = distinct !DILexicalBlock(scope: !74, file: !65, line: 9, column: 34)
!74 = distinct !DILexicalBlock(scope: !70, file: !65, line: 9, column: 3)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocation(line: 9, column: 3, scope: !70)
!77 = !DILocation(line: 0, scope: !72)
!78 = !DILocation(line: 0, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !65, line: 10, column: 35)
!80 = distinct !DILexicalBlock(scope: !72, file: !65, line: 10, column: 4)
!81 = !DILocation(line: 10, column: 4, scope: !72)
!82 = !DILocation(line: 11, column: 16, scope: !79)
!83 = !DILocation(line: 11, column: 31, scope: !79)
!84 = !DILocation(line: 11, column: 29, scope: !79)
!85 = !DILocation(line: 11, column: 14, scope: !79)
!86 = distinct !{!86, !81, !87, !88}
!87 = !DILocation(line: 12, column: 4, scope: !72)
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !DILocation(line: 14, column: 2, scope: !64)
!90 = !DILocation(line: 11, column: 5, scope: !79)
!91 = !DILocation(line: 9, column: 30, scope: !74)
!92 = !DILocation(line: 9, column: 21, scope: !74)
!93 = distinct !{!93, !76, !94}
!94 = !DILocation(line: 13, column: 3, scope: !70)
