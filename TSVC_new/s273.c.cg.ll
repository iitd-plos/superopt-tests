; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s273.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s273.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !37
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !39
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !22
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !41
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !46
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !48
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !50
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !52
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !54
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !57
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !59

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s273() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !71
  br label %vector.body, !dbg !72

vector.body:                                      ; preds = %pred.store.continue44, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %pred.store.continue44 ], [ 0, %entry ], !dbg !73
  %uglygep57 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !75
  %uglygep5758 = bitcast i8* %uglygep57 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep5758, align 16, !dbg !75
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !77
  %uglygep5960 = bitcast i8* %uglygep59 to <4 x i32>*
  %wide.load37 = load <4 x i32>, <4 x i32>* %uglygep5960, align 16, !dbg !77
  %0 = mul <4 x i32> %wide.load37, %wide.load, !dbg !78
  %uglygep61 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !79
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %wide.load38 = load <4 x i32>, <4 x i32>* %uglygep6162, align 16, !dbg !79
  %1 = add <4 x i32> %wide.load38, %0, !dbg !79
  store <4 x i32> %1, <4 x i32>* %uglygep6162, align 16, !dbg !79
  %2 = icmp slt <4 x i32> %1, zeroinitializer, !dbg !80
  %3 = extractelement <4 x i1> %2, i32 0, !dbg !82
  br i1 %3, label %pred.store.if, label %pred.store.continue, !dbg !73

pred.store.if:                                    ; preds = %vector.body
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !82
  %uglygep5455 = bitcast i8* %uglygep54 to i32*
  %4 = load i32, i32* %uglygep5455, align 16, !dbg !82
  %5 = extractelement <4 x i32> %0, i32 0, !dbg !82
  %6 = add i32 %4, %5, !dbg !82
  store i32 %6, i32* %uglygep5455, align 16, !dbg !82
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %7 = icmp slt <4 x i32> %1, zeroinitializer, !dbg !80
  %8 = extractelement <4 x i1> %7, i32 1, !dbg !82
  br i1 %8, label %pred.store.if39, label %pred.store.continue40, !dbg !82

pred.store.if39:                                  ; preds = %pred.store.continue
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !82
  %uglygep47 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep47, i64 1, !dbg !82
  %9 = load i32, i32* %scevgep, align 4, !dbg !82
  %10 = extractelement <4 x i32> %0, i32 1, !dbg !82
  %11 = add i32 %9, %10, !dbg !82
  store i32 %11, i32* %scevgep, align 4, !dbg !82
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue
  %12 = icmp slt <4 x i32> %1, zeroinitializer, !dbg !80
  %13 = extractelement <4 x i1> %12, i32 2, !dbg !82
  br i1 %13, label %pred.store.if41, label %pred.store.continue42, !dbg !82

pred.store.if41:                                  ; preds = %pred.store.continue40
  %uglygep48 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !82
  %uglygep4849 = bitcast i8* %uglygep48 to i32*
  %scevgep50 = getelementptr i32, i32* %uglygep4849, i64 2, !dbg !82
  %14 = load i32, i32* %scevgep50, align 8, !dbg !82
  %15 = extractelement <4 x i32> %0, i32 2, !dbg !82
  %16 = add i32 %14, %15, !dbg !82
  store i32 %16, i32* %scevgep50, align 8, !dbg !82
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %17 = icmp slt <4 x i32> %1, zeroinitializer, !dbg !80
  %18 = extractelement <4 x i1> %17, i32 3, !dbg !82
  br i1 %18, label %pred.store.if43, label %pred.store.continue44, !dbg !82

pred.store.if43:                                  ; preds = %pred.store.continue42
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !82
  %uglygep5152 = bitcast i8* %uglygep51 to i32*
  %scevgep53 = getelementptr i32, i32* %uglygep5152, i64 3, !dbg !82
  %19 = load i32, i32* %scevgep53, align 4, !dbg !82
  %20 = extractelement <4 x i32> %0, i32 3, !dbg !82
  %21 = add i32 %19, %20, !dbg !82
  store i32 %21, i32* %scevgep53, align 4, !dbg !82
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %22 = mul <4 x i32> %1, %wide.load, !dbg !83
  %uglygep65 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !84
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  %wide.load45 = load <4 x i32>, <4 x i32>* %uglygep6566, align 16, !dbg !84
  %23 = add <4 x i32> %wide.load45, %22, !dbg !84
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !84
  %uglygep6364 = bitcast i8* %uglygep63 to <4 x i32>*
  store <4 x i32> %23, <4 x i32>* %uglygep6364, align 16, !dbg !84
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 16, !dbg !73
  %24 = icmp eq i64 %lsr.iv.next, 128000, !dbg !73
  br i1 %24, label %for.cond.cleanup, label %vector.body, !dbg !73, !llvm.loop !85

for.cond.cleanup:                                 ; preds = %pred.store.continue44
  ret i32 0, !dbg !88

; uselistorder directives
  uselistorder i32* %scevgep53, { 1, 0 }
  uselistorder i32* %scevgep50, { 1, 0 }
  uselistorder i32* %scevgep, { 1, 0 }
  uselistorder i32* %uglygep5455, { 1, 0 }
  uselistorder <4 x i32> %1, { 3, 2, 1, 0, 4, 5 }
  uselistorder i64 %lsr.iv, { 9, 1, 0, 6, 7, 8, 5, 2, 3, 4 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i32 3, { 1, 0 }
  uselistorder i32 2, { 1, 0 }
  uselistorder i32 1, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 2, 3, 0 }
  uselistorder i32 0, { 3, 1, 0, 2 }
  uselistorder <4 x i32> zeroinitializer, { 2, 1, 0, 3 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 7, 8, 9, 10, 11, 12, 4, 5, 6, 2, 3 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s273.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!65 = distinct !DISubprogram(name: "s273", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s273.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69}
!69 = !DILocalVariable(name: "i", scope: !70, file: !66, line: 9, type: !6)
!70 = distinct !DILexicalBlock(scope: !65, file: !66, line: 9, column: 3)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 9, column: 3, scope: !70)
!73 = !DILocation(line: 9, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !66, line: 9, column: 3)
!75 = !DILocation(line: 10, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !74, file: !66, line: 9, column: 33)
!77 = !DILocation(line: 10, column: 19, scope: !76)
!78 = !DILocation(line: 10, column: 17, scope: !76)
!79 = !DILocation(line: 10, column: 9, scope: !76)
!80 = !DILocation(line: 11, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !66, line: 11, column: 8)
!82 = !DILocation(line: 12, column: 10, scope: !81)
!83 = !DILocation(line: 13, column: 17, scope: !76)
!84 = !DILocation(line: 13, column: 9, scope: !76)
!85 = distinct !{!85, !72, !86, !87}
!86 = !DILocation(line: 14, column: 3, scope: !70)
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !DILocation(line: 15, column: 2, scope: !65)
