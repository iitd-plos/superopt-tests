; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/vif.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !22
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
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
define dso_local i32 @vif() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !71
  br label %vector.body, !dbg !72

vector.body:                                      ; preds = %pred.store.continue26, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %pred.store.continue26 ], [ -128000, %entry ], !dbg !73
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !75
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8000, !dbg !75
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !75
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8001, !dbg !75
  %wide.load12 = load <4 x i32>, <4 x i32>* %scevgep54, align 16, !dbg !75
  %0 = icmp sgt <4 x i32> %wide.load, zeroinitializer, !dbg !78
  %1 = extractelement <4 x i1> %0, i32 0, !dbg !79
  br i1 %1, label %pred.store.if, label %pred.store.continue, !dbg !73

pred.store.if:                                    ; preds = %vector.body
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep4748 = bitcast i8* %uglygep47 to i32*
  %scevgep49 = getelementptr i32, i32* %uglygep4748, i64 32000, !dbg !81
  %2 = extractelement <4 x i32> %wide.load, i32 0, !dbg !81
  store i32 %2, i32* %scevgep49, align 16, !dbg !81
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %3 = icmp sgt <4 x i32> %wide.load, zeroinitializer, !dbg !78
  %4 = extractelement <4 x i1> %3, i32 1, !dbg !81
  br i1 %4, label %pred.store.if13, label %pred.store.continue14, !dbg !81

pred.store.if13:                                  ; preds = %pred.store.continue
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep28 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep28, i64 32001, !dbg !81
  %5 = extractelement <4 x i32> %wide.load, i32 1, !dbg !81
  store i32 %5, i32* %scevgep, align 4, !dbg !81
  br label %pred.store.continue14

pred.store.continue14:                            ; preds = %pred.store.if13, %pred.store.continue
  %6 = icmp sgt <4 x i32> %wide.load, zeroinitializer, !dbg !78
  %7 = extractelement <4 x i1> %6, i32 2, !dbg !81
  br i1 %7, label %pred.store.if15, label %pred.store.continue16, !dbg !81

pred.store.if15:                                  ; preds = %pred.store.continue14
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep2930 = bitcast i8* %uglygep29 to i32*
  %scevgep31 = getelementptr i32, i32* %uglygep2930, i64 32002, !dbg !81
  %8 = extractelement <4 x i32> %wide.load, i32 2, !dbg !81
  store i32 %8, i32* %scevgep31, align 8, !dbg !81
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue14
  %9 = icmp sgt <4 x i32> %wide.load, zeroinitializer, !dbg !78
  %10 = extractelement <4 x i1> %9, i32 3, !dbg !81
  br i1 %10, label %pred.store.if17, label %pred.store.continue18, !dbg !81

pred.store.if17:                                  ; preds = %pred.store.continue16
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i64 32003, !dbg !81
  %11 = extractelement <4 x i32> %wide.load, i32 3, !dbg !81
  store i32 %11, i32* %scevgep34, align 4, !dbg !81
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %12 = icmp sgt <4 x i32> %wide.load12, zeroinitializer, !dbg !78
  %13 = extractelement <4 x i1> %12, i32 0, !dbg !81
  br i1 %13, label %pred.store.if19, label %pred.store.continue20, !dbg !81

pred.store.if19:                                  ; preds = %pred.store.continue18
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep4445 = bitcast i8* %uglygep44 to i32*
  %scevgep46 = getelementptr i32, i32* %uglygep4445, i64 32004, !dbg !81
  %14 = extractelement <4 x i32> %wide.load12, i32 0, !dbg !81
  store i32 %14, i32* %scevgep46, align 16, !dbg !81
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %15 = icmp sgt <4 x i32> %wide.load12, zeroinitializer, !dbg !78
  %16 = extractelement <4 x i1> %15, i32 1, !dbg !81
  br i1 %16, label %pred.store.if21, label %pred.store.continue22, !dbg !81

pred.store.if21:                                  ; preds = %pred.store.continue20
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep3536 = bitcast i8* %uglygep35 to i32*
  %scevgep37 = getelementptr i32, i32* %uglygep3536, i64 32005, !dbg !81
  %17 = extractelement <4 x i32> %wide.load12, i32 1, !dbg !81
  store i32 %17, i32* %scevgep37, align 4, !dbg !81
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue20
  %18 = icmp sgt <4 x i32> %wide.load12, zeroinitializer, !dbg !78
  %19 = extractelement <4 x i1> %18, i32 2, !dbg !81
  br i1 %19, label %pred.store.if23, label %pred.store.continue24, !dbg !81

pred.store.if23:                                  ; preds = %pred.store.continue22
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep3839 = bitcast i8* %uglygep38 to i32*
  %scevgep40 = getelementptr i32, i32* %uglygep3839, i64 32006, !dbg !81
  %20 = extractelement <4 x i32> %wide.load12, i32 2, !dbg !81
  store i32 %20, i32* %scevgep40, align 8, !dbg !81
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %21 = icmp sgt <4 x i32> %wide.load12, zeroinitializer, !dbg !78
  %22 = extractelement <4 x i1> %21, i32 3, !dbg !81
  br i1 %22, label %pred.store.if25, label %pred.store.continue26, !dbg !81

pred.store.if25:                                  ; preds = %pred.store.continue24
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep4142 = bitcast i8* %uglygep41 to i32*
  %scevgep43 = getelementptr i32, i32* %uglygep4142, i64 32007, !dbg !81
  %23 = extractelement <4 x i32> %wide.load12, i32 3, !dbg !81
  store i32 %23, i32* %scevgep43, align 4, !dbg !81
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %lsr.iv.next = add nsw i64 %lsr.iv, 32, !dbg !73
  %24 = icmp eq i64 %lsr.iv.next, 0, !dbg !73
  br i1 %24, label %for.cond.cleanup, label %vector.body, !dbg !73, !llvm.loop !82

for.cond.cleanup:                                 ; preds = %pred.store.continue26
  ret i32 0, !dbg !85

; uselistorder directives
  uselistorder <4 x i32> %wide.load12, { 4, 3, 5, 2, 6, 1, 7, 0 }
  uselistorder <4 x i32> %wide.load, { 3, 2, 4, 1, 5, 0, 6, 7 }
  uselistorder i64 %lsr.iv, { 9, 3, 4, 5, 2, 6, 7, 8, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 3, 4, 1, 5, 6, 7, 0 }
  uselistorder i32 0, { 5, 0, 1, 2, 3, 4 }
  uselistorder <4 x i32> zeroinitializer, { 3, 2, 1, 0, 6, 5, 4, 7 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 6, 5 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/vif.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!65 = distinct !DISubprogram(name: "vif", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/vif.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69}
!69 = !DILocalVariable(name: "i", scope: !70, file: !66, line: 9, type: !6)
!70 = distinct !DILexicalBlock(scope: !65, file: !66, line: 9, column: 3)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 9, column: 3, scope: !70)
!73 = !DILocation(line: 9, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !66, line: 9, column: 3)
!75 = !DILocation(line: 10, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !66, line: 10, column: 8)
!77 = distinct !DILexicalBlock(scope: !74, file: !66, line: 9, column: 33)
!78 = !DILocation(line: 10, column: 13, scope: !76)
!79 = !DILocation(line: 11, column: 5, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !66, line: 10, column: 25)
!81 = !DILocation(line: 11, column: 10, scope: !80)
!82 = distinct !{!82, !72, !83, !84}
!83 = !DILocation(line: 13, column: 3, scope: !70)
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !DILocation(line: 14, column: 2, scope: !65)
