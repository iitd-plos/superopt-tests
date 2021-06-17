; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s252.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s252.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !22
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
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
define dso_local i32 @s252() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !74
  br label %vector.body, !dbg !75

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !76
  %vector.recur = phi <4 x i32> [ <i32 undef, i32 undef, i32 undef, i32 0>, %entry ], [ %1, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !78
  %uglygep20 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep20, i64 8000, !dbg !78
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !78
  %scevgep21 = getelementptr <4 x i32>, <4 x i32>* %uglygep20, i64 8001, !dbg !78
  %wide.load16 = load <4 x i32>, <4 x i32>* %scevgep21, align 16, !dbg !78
  %uglygep22 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !80
  %uglygep2223 = bitcast i8* %uglygep22 to <4 x i32>*
  %scevgep24 = getelementptr <4 x i32>, <4 x i32>* %uglygep2223, i64 8000, !dbg !80
  %wide.load17 = load <4 x i32>, <4 x i32>* %scevgep24, align 16, !dbg !80
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2223, i64 8001, !dbg !80
  %wide.load18 = load <4 x i32>, <4 x i32>* %scevgep25, align 16, !dbg !80
  %0 = mul <4 x i32> %wide.load17, %wide.load, !dbg !81
  %1 = mul <4 x i32> %wide.load18, %wide.load16, !dbg !81
  %2 = shufflevector <4 x i32> %vector.recur, <4 x i32> %0, <4 x i32> <i32 3, i32 4, i32 5, i32 6>, !dbg !82
  %3 = shufflevector <4 x i32> %0, <4 x i32> %1, <4 x i32> <i32 3, i32 4, i32 5, i32 6>, !dbg !82
  %4 = add <4 x i32> %0, %2, !dbg !82
  %5 = add <4 x i32> %1, %3, !dbg !82
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !83
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8000, !dbg !83
  store <4 x i32> %4, <4 x i32>* %scevgep28, align 16, !dbg !83
  %scevgep29 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8001, !dbg !83
  store <4 x i32> %5, <4 x i32>* %scevgep29, align 16, !dbg !83
  %lsr.iv.next = add nsw i64 %lsr.iv, 32, !dbg !76
  %6 = icmp eq i64 %lsr.iv.next, 0, !dbg !76
  br i1 %6, label %for.cond.cleanup, label %vector.body, !dbg !76, !llvm.loop !84

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !87

; uselistorder directives
  uselistorder <4 x i32> %1, { 2, 1, 0 }
  uselistorder <4 x i32> %0, { 2, 0, 1 }
  uselistorder i64 %lsr.iv, { 3, 0, 1, 2 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 6, 4, 5 }
  uselistorder i32 0, { 2, 0, 1 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s252.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!65 = distinct !DISubprogram(name: "s252", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s252.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(name: "t", scope: !65, file: !66, line: 9, type: !6)
!70 = !DILocalVariable(name: "s", scope: !65, file: !66, line: 9, type: !6)
!71 = !DILocalVariable(name: "i", scope: !72, file: !66, line: 11, type: !6)
!72 = distinct !DILexicalBlock(scope: !65, file: !66, line: 11, column: 3)
!73 = !DILocation(line: 0, scope: !65)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 11, column: 3, scope: !72)
!76 = !DILocation(line: 11, column: 29, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !66, line: 11, column: 3)
!78 = !DILocation(line: 12, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !77, file: !66, line: 11, column: 33)
!80 = !DILocation(line: 12, column: 15, scope: !79)
!81 = !DILocation(line: 12, column: 13, scope: !79)
!82 = !DILocation(line: 13, column: 13, scope: !79)
!83 = !DILocation(line: 13, column: 9, scope: !79)
!84 = distinct !{!84, !75, !85, !86}
!85 = !DILocation(line: 15, column: 3, scope: !72)
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !DILocation(line: 16, column: 2, scope: !65)
