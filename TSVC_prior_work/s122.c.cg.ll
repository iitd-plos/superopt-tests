; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s122.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s122.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s122(i32 %n1, i32 %n3) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %n1, metadata !13, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 %n3, metadata !14, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 1, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !19
  %sub = add i32 %n1, -1, !dbg !20
  call void @llvm.dbg.value(metadata i32 %sub, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !19
  %cmp12 = icmp slt i32 %sub, 32000, !dbg !22
  br i1 %cmp12, label %for.body.preheader, label %for.cond.cleanup, !dbg !24

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !24

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret i32 0, !dbg !25

for.body:                                         ; preds = %for.body.preheader, %for.body
  %lsr.iv = phi i32 [ 31999, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  %i.014 = phi i32 [ %add5, %for.body ], [ %sub, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.014, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 undef, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 undef, metadata !16, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !19
  %idxprom = sext i32 %lsr.iv to i64, !dbg !26
  %arrayidx = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %idxprom, !dbg !26
  %0 = load i32, i32* %arrayidx, align 4, !dbg !26
  %idxprom2 = sext i32 %i.014 to i64, !dbg !28
  %arrayidx3 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom2, !dbg !28
  %1 = load i32, i32* %arrayidx3, align 4, !dbg !29
  %add4 = add i32 %1, %0, !dbg !29
  store i32 %add4, i32* %arrayidx3, align 4, !dbg !29
  %add5 = add i32 %i.014, %n3, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add5, metadata !17, metadata !DIExpression()), !dbg !21
  %lsr.iv.next = add i32 %lsr.iv, -1, !dbg !22
  %cmp = icmp slt i32 %add5, 32000, !dbg !22
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !24, !llvm.loop !31

; uselistorder directives
  uselistorder i32 %add5, { 1, 0 }
  uselistorder i32 %lsr.iv, { 1, 0 }
  uselistorder i32 32000, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 4, 3, 1, 0, 2, 5, 6, 9, 7, 8 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s122.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s122", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s122.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14, !15, !16, !17}
!13 = !DILocalVariable(name: "n1", arg: 1, scope: !7, file: !8, line: 3, type: !11)
!14 = !DILocalVariable(name: "n3", arg: 2, scope: !7, file: !8, line: 3, type: !11)
!15 = !DILocalVariable(name: "j", scope: !7, file: !8, line: 10, type: !11)
!16 = !DILocalVariable(name: "k", scope: !7, file: !8, line: 10, type: !11)
!17 = !DILocalVariable(name: "i", scope: !18, file: !8, line: 13, type: !11)
!18 = distinct !DILexicalBlock(scope: !7, file: !8, line: 13, column: 3)
!19 = !DILocation(line: 0, scope: !7)
!20 = !DILocation(line: 13, column: 18, scope: !18)
!21 = !DILocation(line: 0, scope: !18)
!22 = !DILocation(line: 13, column: 24, scope: !23)
!23 = distinct !DILexicalBlock(scope: !18, file: !8, line: 13, column: 3)
!24 = !DILocation(line: 13, column: 3, scope: !18)
!25 = !DILocation(line: 17, column: 2, scope: !7)
!26 = !DILocation(line: 15, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !8, line: 13, column: 40)
!28 = !DILocation(line: 15, column: 4, scope: !27)
!29 = !DILocation(line: 15, column: 9, scope: !27)
!30 = !DILocation(line: 13, column: 33, scope: !23)
!31 = distinct !{!31, !24, !32}
!32 = !DILocation(line: 16, column: 3, scope: !18)
