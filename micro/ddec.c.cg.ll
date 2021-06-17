; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/micro/ddec.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/micro/ddec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !6

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @ddec(i32 %x, i32 %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %n, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %x, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !23
  %cmp.not12 = icmp eq i32 %n, 0, !dbg !24
  br i1 %cmp.not12, label %for.end, label %for.body.preheader, !dbg !27

for.body.preheader:                               ; preds = %entry
  %0 = add i32 %n, -1, !dbg !27
  %xtraiter = and i32 %n, 3, !dbg !27
  %1 = icmp ult i32 %0, 3, !dbg !27
  br i1 %1, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new, !dbg !27

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i32 %n, -4, !dbg !27
  br label %for.body, !dbg !27

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %y.015 = phi i32 [ %x, %for.body.preheader.new ], [ %add.3, %for.body ]
  %k.014 = phi i32 [ 0, %for.body.preheader.new ], [ %spec.select.3, %for.body ]
  %i.013 = phi i32 [ 0, %for.body.preheader.new ], [ %inc.3, %for.body ]
  call void @llvm.dbg.value(metadata i32 %y.015, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %k.014, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %i.013, metadata !20, metadata !DIExpression()), !dbg !23
  %mul = mul i32 %k.014, 5, !dbg !28
  %add = add i32 %y.015, %mul, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %k.014, metadata !21, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  %cmp2 = icmp sgt i32 %i.013, 4, !dbg !31
  %spec.select.v = select i1 %cmp2, i32 4, i32 1, !dbg !33
  %spec.select = add i32 %spec.select.v, %k.014, !dbg !33
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %i.013, metadata !20, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  %mul.1 = mul i32 %spec.select, 5, !dbg !28
  %add.1 = add i32 %add, %mul.1, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add.1, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !21, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  %cmp2.1.inv = icmp slt i32 %i.013, 4, !dbg !33
  %spec.select.v.1 = select i1 %cmp2.1.inv, i32 1, i32 4, !dbg !33
  %spec.select.1 = add i32 %spec.select.v.1, %spec.select, !dbg !33
  call void @llvm.dbg.value(metadata i32 %spec.select.1, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %i.013, metadata !20, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !23
  %mul.2 = mul i32 %spec.select.1, 5, !dbg !28
  %add.2 = add i32 %add.1, %mul.2, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add.2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %spec.select.1, metadata !21, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  %cmp2.2 = icmp sgt i32 %i.013, 2, !dbg !31
  %spec.select.v.2 = select i1 %cmp2.2, i32 4, i32 1, !dbg !33
  %spec.select.2 = add i32 %spec.select.v.2, %spec.select.1, !dbg !33
  call void @llvm.dbg.value(metadata i32 %spec.select.2, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %i.013, metadata !20, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !23
  %mul.3 = mul i32 %spec.select.2, 5, !dbg !28
  %add.3 = add i32 %add.2, %mul.3, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add.3, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %spec.select.2, metadata !21, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  %cmp2.3 = icmp sgt i32 %i.013, 1, !dbg !31
  %spec.select.v.3 = select i1 %cmp2.3, i32 4, i32 1, !dbg !33
  %spec.select.3 = add i32 %spec.select.v.3, %spec.select.2, !dbg !33
  call void @llvm.dbg.value(metadata i32 %spec.select.3, metadata !21, metadata !DIExpression()), !dbg !23
  %inc.3 = add nuw i32 %i.013, 4, !dbg !34
  call void @llvm.dbg.value(metadata i32 %inc.3, metadata !20, metadata !DIExpression()), !dbg !23
  %niter.ncmp.3 = icmp eq i32 %unroll_iter, %inc.3, !dbg !27
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body, !dbg !27, !llvm.loop !35

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %add.lcssa.ph = phi i32 [ undef, %for.body.preheader ], [ %add.3, %for.body ]
  %y.015.unr = phi i32 [ %x, %for.body.preheader ], [ %add.3, %for.body ]
  %k.014.unr = phi i32 [ 0, %for.body.preheader ], [ %spec.select.3, %for.body ]
  %i.013.unr = phi i32 [ 0, %for.body.preheader ], [ %inc.3, %for.body ]
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !27
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader, !dbg !27

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa
  br label %for.body.epil, !dbg !27

for.body.epil:                                    ; preds = %for.body.epil.preheader, %for.body.epil
  %y.015.epil = phi i32 [ %add.epil, %for.body.epil ], [ %y.015.unr, %for.body.epil.preheader ]
  %k.014.epil = phi i32 [ %spec.select.epil, %for.body.epil ], [ %k.014.unr, %for.body.epil.preheader ]
  %i.013.epil = phi i32 [ %inc.epil, %for.body.epil ], [ %i.013.unr, %for.body.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %for.body.epil.preheader ]
  call void @llvm.dbg.value(metadata i32 %y.015.epil, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %k.014.epil, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %i.013.epil, metadata !20, metadata !DIExpression()), !dbg !23
  %mul.epil = mul i32 %k.014.epil, 5, !dbg !28
  %add.epil = add i32 %y.015.epil, %mul.epil, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add.epil, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %k.014.epil, metadata !21, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !23
  %cmp2.epil = icmp sgt i32 %i.013.epil, 4, !dbg !31
  %spec.select.v.epil = select i1 %cmp2.epil, i32 4, i32 1, !dbg !33
  %spec.select.epil = add i32 %spec.select.v.epil, %k.014.epil, !dbg !33
  call void @llvm.dbg.value(metadata i32 %spec.select.epil, metadata !21, metadata !DIExpression()), !dbg !23
  %inc.epil = add nuw i32 %i.013.epil, 1, !dbg !34
  call void @llvm.dbg.value(metadata i32 %inc.epil, metadata !20, metadata !DIExpression()), !dbg !23
  %epil.iter.sub = add i32 %epil.iter, -1, !dbg !27
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.sub, 0, !dbg !27
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !dbg !27, !llvm.loop !37

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %entry
  %y.0.lcssa = phi i32 [ %x, %entry ], [ %add.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %add.epil, %for.body.epil ], !dbg !23
  call void @llvm.dbg.value(metadata i32 %y.0.lcssa, metadata !22, metadata !DIExpression()), !dbg !23
  ret i32 %y.0.lcssa, !dbg !39

; uselistorder directives
  uselistorder i32 %k.014, { 1, 0 }
  uselistorder i32 1, { 4, 5, 1, 0, 2, 3, 6 }
  uselistorder i32 4, { 5, 6, 0, 2, 3, 4, 1, 7, 8 }
  uselistorder i32 5, { 3, 0, 1, 2, 4 }
  uselistorder i32 0, { 0, 3, 4, 5, 1, 2, 6, 7, 8 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 22, 12, 13, 14, 15, 16, 17, 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 26, 23, 24, 25, 21, 20, 19, 27, 28, 29, 31, 30 }
  uselistorder i32 %x, { 0, 2, 1 }
  uselistorder label %for.body.epil, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 7bc95ea4aa5dd5d0201ff961f9b6b6b1754ff7ac)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/micro/ddec.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/micro")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "micro/ddec.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 7bc95ea4aa5dd5d0201ff961f9b6b6b1754ff7ac)"}
!14 = distinct !DISubprogram(name: "ddec", scope: !8, file: !8, line: 15, type: !15, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!9, !9, !9}
!17 = !{!18, !19, !20, !21, !22}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !14, file: !8, line: 15, type: !9)
!19 = !DILocalVariable(name: "n", arg: 2, scope: !14, file: !8, line: 15, type: !9)
!20 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 17, type: !9)
!21 = !DILocalVariable(name: "k", scope: !14, file: !8, line: 17, type: !9)
!22 = !DILocalVariable(name: "y", scope: !14, file: !8, line: 18, type: !9)
!23 = !DILocation(line: 0, scope: !14)
!24 = !DILocation(line: 19, column: 14, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !8, line: 19, column: 3)
!26 = distinct !DILexicalBlock(scope: !14, file: !8, line: 19, column: 3)
!27 = !DILocation(line: 19, column: 3, scope: !26)
!28 = !DILocation(line: 21, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !8, line: 20, column: 3)
!30 = !DILocation(line: 21, column: 7, scope: !29)
!31 = !DILocation(line: 23, column: 11, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !8, line: 23, column: 9)
!33 = !DILocation(line: 23, column: 9, scope: !29)
!34 = !DILocation(line: 19, column: 19, scope: !25)
!35 = distinct !{!35, !27, !36}
!36 = !DILocation(line: 25, column: 3, scope: !26)
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !DILocation(line: 26, column: 3, scope: !14)
