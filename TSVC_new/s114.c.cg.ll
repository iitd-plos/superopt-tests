; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s114.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s114.c"
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
define dso_local i32 @s114() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !75
  br label %for.cond1.preheader, !dbg !76

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup3
  %lsr.iv39 = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond.cleanup3 ]
  %lsr.iv = phi [256 x [256 x i32]]* [ bitcast (i32* getelementptr inbounds ([256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 1, i64 0) to [256 x [256 x i32]]*), %entry ], [ %6, %for.cond.cleanup3 ]
  %indvars.iv32 = phi i64 [ 0, %entry ], [ %indvars.iv.next33, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv32, metadata !69, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !77
  %0 = lshr i64 %indvars.iv32, 1, !dbg !78
  %1 = shl nuw nsw i64 %0, 1, !dbg !78
  %cmp229.not = icmp eq i64 %indvars.iv32, 0, !dbg !78
  br i1 %cmp229.not, label %for.cond.cleanup3, label %for.body4.preheader, !dbg !80

for.body4.preheader:                              ; preds = %for.cond1.preheader
  %2 = icmp eq i64 %indvars.iv32, 1, !dbg !80
  br i1 %2, label %for.cond.cleanup3.loopexit.unr-lcssa, label %for.body4.preheader.new, !dbg !80

for.body4.preheader.new:                          ; preds = %for.body4.preheader
  br label %for.body4, !dbg !80

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret i32 0, !dbg !81

for.cond.cleanup3.loopexit.unr-lcssa:             ; preds = %for.body4, %for.body4.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next.1, %for.body4 ]
  %3 = and i64 %indvars.iv32, 1, !dbg !80
  %lcmp.mod.not = icmp eq i64 %3, 0, !dbg !80
  br i1 %lcmp.mod.not, label %for.cond.cleanup3, label %for.body4.epil, !dbg !80

for.body4.epil:                                   ; preds = %for.cond.cleanup3.loopexit.unr-lcssa
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !71, metadata !DIExpression()), !dbg !77
  %arrayidx6.epil = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %indvars.iv.unr, i64 %indvars.iv32, !dbg !82
  %4 = load i32, i32* %arrayidx6.epil, align 4, !dbg !82
  %arrayidx10.epil = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @bb, i64 0, i64 %indvars.iv32, i64 %indvars.iv.unr, !dbg !84
  %5 = load i32, i32* %arrayidx10.epil, align 4, !dbg !84
  %add.epil = add i32 %5, %4, !dbg !85
  %arrayidx14.epil = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* @aa, i64 0, i64 %indvars.iv32, i64 %indvars.iv.unr, !dbg !86
  store i32 %add.epil, i32* %arrayidx14.epil, align 4, !dbg !87
  call void @llvm.dbg.value(metadata i64 %indvars.iv.unr, metadata !71, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !77
  br label %for.cond.cleanup3, !dbg !88

for.cond.cleanup3:                                ; preds = %for.body4.epil, %for.cond.cleanup3.loopexit.unr-lcssa, %for.cond1.preheader
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !88
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next33, metadata !69, metadata !DIExpression()), !dbg !75
  %scevgep = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv, i64 0, i64 0, i64 1, !dbg !76
  %6 = bitcast i32* %scevgep to [256 x [256 x i32]]*, !dbg !76
  %lsr.iv.next = add nuw nsw i64 %lsr.iv39, 1024, !dbg !76
  %exitcond34.not = icmp eq i64 %indvars.iv.next33, 256, !dbg !89
  br i1 %exitcond34.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !76, !llvm.loop !90

for.body4:                                        ; preds = %for.body4, %for.body4.preheader.new
  %lsr.iv35 = phi [256 x [256 x i32]]* [ %19, %for.body4 ], [ %lsr.iv, %for.body4.preheader.new ]
  %indvars.iv = phi i64 [ 0, %for.body4.preheader.new ], [ %indvars.iv.next.1, %for.body4 ]
  %lsr.iv3537 = bitcast [256 x [256 x i32]]* %lsr.iv35 to i32*
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression()), !dbg !77
  %scevgep38 = getelementptr i32, i32* %lsr.iv3537, i64 -256, !dbg !82
  %7 = load i32, i32* %scevgep38, align 4, !dbg !82
  %8 = shl i64 %indvars.iv, 2, !dbg !84
  %9 = add i64 %lsr.iv39, %8, !dbg !84
  %uglygep42 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %9, !dbg !84
  %uglygep4243 = bitcast i8* %uglygep42 to i32*
  %10 = load i32, i32* %uglygep4243, align 8, !dbg !84
  %add = add i32 %10, %7, !dbg !85
  %11 = shl i64 %indvars.iv, 2, !dbg !87
  %12 = add i64 %lsr.iv39, %11, !dbg !87
  %uglygep47 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %12, !dbg !87
  %uglygep4748 = bitcast i8* %uglygep47 to i32*
  store i32 %add, i32* %uglygep4748, align 8, !dbg !87
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !77
  %13 = load i32, i32* %lsr.iv3537, align 4, !dbg !82
  %14 = shl i64 %indvars.iv, 2, !dbg !84
  %15 = add i64 %lsr.iv39, %14, !dbg !84
  %uglygep = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @bb to i8*), i64 %15, !dbg !84
  %uglygep40 = bitcast i8* %uglygep to i32*
  %scevgep41 = getelementptr i32, i32* %uglygep40, i64 1, !dbg !84
  %16 = load i32, i32* %scevgep41, align 4, !dbg !84
  %add.1 = add i32 %16, %13, !dbg !85
  %17 = shl i64 %indvars.iv, 2, !dbg !87
  %18 = add i64 %lsr.iv39, %17, !dbg !87
  %uglygep44 = getelementptr i8, i8* bitcast ([256 x [256 x i32]]* @aa to i8*), i64 %18, !dbg !87
  %uglygep4445 = bitcast i8* %uglygep44 to i32*
  %scevgep46 = getelementptr i32, i32* %uglygep4445, i64 1, !dbg !87
  store i32 %add.1, i32* %scevgep46, align 4, !dbg !87
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2, !dbg !92
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.1, metadata !71, metadata !DIExpression()), !dbg !77
  %scevgep36 = getelementptr [256 x [256 x i32]], [256 x [256 x i32]]* %lsr.iv35, i64 0, i64 2, i64 0, !dbg !80
  %19 = bitcast i32* %scevgep36 to [256 x [256 x i32]]*, !dbg !80
  %niter.ncmp.1 = icmp eq i64 %1, %indvars.iv.next.1, !dbg !80
  br i1 %niter.ncmp.1, label %for.cond.cleanup3.loopexit.unr-lcssa, label %for.body4, !dbg !80, !llvm.loop !93

; uselistorder directives
  uselistorder i64 %indvars.iv.next.1, { 1, 0, 2 }
  uselistorder i32* %lsr.iv3537, { 1, 0 }
  uselistorder i64 %indvars.iv, { 4, 1, 3, 0, 2 }
  uselistorder [256 x [256 x i32]]* %lsr.iv35, { 1, 0 }
  uselistorder i64 %indvars.iv.unr, { 2, 1, 0 }
  uselistorder i64 %indvars.iv32, { 7, 3, 4, 5, 0, 2, 6, 1 }
  uselistorder i64 %lsr.iv39, { 1, 3, 0, 2, 4 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @aa to i8*), { 1, 0 }
  uselistorder i8* bitcast ([256 x [256 x i32]]* @bb to i8*), { 1, 0 }
  uselistorder i64 2, { 4, 5, 1, 3, 0, 2 }
  uselistorder i32 0, { 1, 0 }
  uselistorder i64 1, { 3, 4, 5, 8, 0, 7, 1, 2, 6 }
  uselistorder [256 x [256 x i32]]* @aa, { 0, 2, 3, 1 }
  uselistorder i64 0, { 1, 2, 7, 3, 4, 10, 11, 12, 8, 9, 13, 14, 5, 6, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 6, 4, 7, 1, 2, 5, 3, 8 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s114.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s114", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s114.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !71}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 10, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 10, column: 3)
!71 = !DILocalVariable(name: "j", scope: !72, file: !65, line: 11, type: !10)
!72 = distinct !DILexicalBlock(scope: !73, file: !65, line: 11, column: 4)
!73 = distinct !DILexicalBlock(scope: !74, file: !65, line: 10, column: 34)
!74 = distinct !DILexicalBlock(scope: !70, file: !65, line: 10, column: 3)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocation(line: 10, column: 3, scope: !70)
!77 = !DILocation(line: 0, scope: !72)
!78 = !DILocation(line: 11, column: 22, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !65, line: 11, column: 4)
!80 = !DILocation(line: 11, column: 4, scope: !72)
!81 = !DILocation(line: 15, column: 2, scope: !64)
!82 = !DILocation(line: 12, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !65, line: 11, column: 32)
!84 = !DILocation(line: 12, column: 27, scope: !83)
!85 = !DILocation(line: 12, column: 25, scope: !83)
!86 = !DILocation(line: 12, column: 5, scope: !83)
!87 = !DILocation(line: 12, column: 14, scope: !83)
!88 = !DILocation(line: 10, column: 30, scope: !74)
!89 = !DILocation(line: 10, column: 21, scope: !74)
!90 = distinct !{!90, !76, !91}
!91 = !DILocation(line: 14, column: 3, scope: !70)
!92 = !DILocation(line: 11, column: 28, scope: !79)
!93 = distinct !{!93, !80, !94}
!94 = !DILocation(line: 13, column: 4, scope: !72)
