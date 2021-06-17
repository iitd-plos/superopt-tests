; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/localmem-tests/alloca.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/alloca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @alloca_0(i32 %n) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !15, metadata !DIExpression()), !dbg !19
  %cmp = icmp slt i32 %n, 1, !dbg !20
  br i1 %cmp, label %return, label %if.end, !dbg !22

if.end:                                           ; preds = %entry
  %conv20 = zext i32 %n to i64, !dbg !23
  %0 = alloca i32, i64 %conv20, align 16, !dbg !23
  call void @llvm.dbg.value(metadata i32* %0, metadata !16, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %0, align 16, !dbg !24
  call void @llvm.dbg.value(metadata i32 1, metadata !17, metadata !DIExpression()), !dbg !25
  %cmp121.not = icmp eq i32 %n, 1, !dbg !26
  br i1 %cmp121.not, label %return, label %for.body.preheader, !dbg !28

for.body.preheader:                               ; preds = %if.end
  %1 = add nsw i64 %conv20, -1, !dbg !28
  %2 = add nsw i64 %conv20, -2, !dbg !28
  %xtraiter = and i64 %1, 3, !dbg !28
  %3 = icmp ult i64 %2, 3, !dbg !28
  br i1 %3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new, !dbg !28

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %1, -4, !dbg !28
  br label %for.body, !dbg !28

for.cond.cleanup.loopexit.unr-lcssa.loopexit:     ; preds = %for.body
  %4 = add i64 %lsr.iv.next, 1, !dbg !28
  br label %for.cond.cleanup.loopexit.unr-lcssa, !dbg !28

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.cond.cleanup.loopexit.unr-lcssa.loopexit, %for.body.preheader
  %.unr = phi i32 [ 0, %for.body.preheader ], [ %add.3, %for.cond.cleanup.loopexit.unr-lcssa.loopexit ]
  %indvars.iv.unr = phi i64 [ 1, %for.body.preheader ], [ %4, %for.cond.cleanup.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28
  br i1 %lcmp.mod.not, label %for.cond.cleanup.loopexit, label %for.body.epil.preheader, !dbg !28

for.body.epil.preheader:                          ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  br label %for.body.epil, !dbg !28

for.body.epil:                                    ; preds = %for.body.epil.preheader, %for.body.epil
  %5 = phi i32 [ %add.epil, %for.body.epil ], [ %.unr, %for.body.epil.preheader ], !dbg !29
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %for.body.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %for.body.epil.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.epil, metadata !17, metadata !DIExpression()), !dbg !25
  %tmp = trunc i64 %indvars.iv.epil to i32
  %mul4.epil = mul i32 %tmp, %tmp, !dbg !31
  %add.epil = add i32 %5, %mul4.epil, !dbg !32
  %scevgep = getelementptr i32, i32* %0, i64 %indvars.iv.epil, !dbg !33
  store i32 %add.epil, i32* %scevgep, align 4, !dbg !33
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1, !dbg !34
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.epil, metadata !17, metadata !DIExpression()), !dbg !25
  %epil.iter.sub = add i64 %epil.iter, -1, !dbg !28
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0, !dbg !28
  br i1 %epil.iter.cmp.not, label %for.cond.cleanup.loopexit, label %for.body.epil, !dbg !28, !llvm.loop !35

for.cond.cleanup.loopexit:                        ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa
  %.pre = load i32, i32* %0, align 16, !dbg !37
  br label %return, !dbg !37

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.body ], [ 0, %for.body.preheader.new ], !dbg !29
  %6 = phi i32 [ 0, %for.body.preheader.new ], [ %add.3, %for.body ], !dbg !29
  call void @llvm.dbg.value(metadata i64 undef, metadata !17, metadata !DIExpression()), !dbg !25
  %7 = add i64 %lsr.iv, 1, !dbg !31
  %tmp34 = trunc i64 %7 to i32
  %mul4 = mul i32 %tmp34, %tmp34, !dbg !31
  %add = add i32 %6, %mul4, !dbg !32
  %sunkaddr = mul i64 %lsr.iv, 4, !dbg !33
  %8 = bitcast i32* %0 to i8*, !dbg !33
  %sunkaddr36 = getelementptr i8, i8* %8, i64 %sunkaddr, !dbg !33
  %sunkaddr37 = getelementptr i8, i8* %sunkaddr36, i64 4, !dbg !33
  %9 = bitcast i8* %sunkaddr37 to i32*, !dbg !33
  store i32 %add, i32* %9, align 4, !dbg !33
  call void @llvm.dbg.value(metadata i64 undef, metadata !17, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !25
  %10 = add i64 %lsr.iv, 2, !dbg !31
  %tmp35 = trunc i64 %10 to i32
  %mul4.1 = mul i32 %tmp35, %tmp35, !dbg !31
  %add.1 = add i32 %add, %mul4.1, !dbg !32
  %sunkaddr38 = mul i64 %lsr.iv, 4, !dbg !33
  %11 = bitcast i32* %0 to i8*, !dbg !33
  %sunkaddr39 = getelementptr i8, i8* %11, i64 %sunkaddr38, !dbg !33
  %sunkaddr40 = getelementptr i8, i8* %sunkaddr39, i64 8, !dbg !33
  %12 = bitcast i8* %sunkaddr40 to i32*, !dbg !33
  store i32 %add.1, i32* %12, align 4, !dbg !33
  call void @llvm.dbg.value(metadata i64 undef, metadata !17, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !25
  %13 = add i64 %lsr.iv, 3, !dbg !31
  %tmp33 = trunc i64 %13 to i32
  %mul4.2 = mul i32 %tmp33, %tmp33, !dbg !31
  %add.2 = add i32 %add.1, %mul4.2, !dbg !32
  %sunkaddr41 = mul i64 %lsr.iv, 4, !dbg !33
  %14 = bitcast i32* %0 to i8*, !dbg !33
  %sunkaddr42 = getelementptr i8, i8* %14, i64 %sunkaddr41, !dbg !33
  %sunkaddr43 = getelementptr i8, i8* %sunkaddr42, i64 12, !dbg !33
  %15 = bitcast i8* %sunkaddr43 to i32*, !dbg !33
  store i32 %add.2, i32* %15, align 4, !dbg !33
  call void @llvm.dbg.value(metadata i64 undef, metadata !17, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !25
  %16 = add i64 %lsr.iv, 4, !dbg !31
  %tmp32 = trunc i64 %16 to i32
  %mul4.3 = mul i32 %tmp32, %tmp32, !dbg !31
  %add.3 = add i32 %add.2, %mul4.3, !dbg !32
  %sunkaddr44 = mul i64 %lsr.iv, 4, !dbg !33
  %17 = bitcast i32* %0 to i8*, !dbg !33
  %sunkaddr45 = getelementptr i8, i8* %17, i64 %sunkaddr44, !dbg !33
  %sunkaddr46 = getelementptr i8, i8* %sunkaddr45, i64 16, !dbg !33
  %18 = bitcast i8* %sunkaddr46 to i32*, !dbg !33
  store i32 %add.3, i32* %18, align 4, !dbg !33
  call void @llvm.dbg.value(metadata i64 undef, metadata !17, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !25
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4, !dbg !28
  %niter.ncmp.3 = icmp eq i64 %unroll_iter, %lsr.iv.next, !dbg !28
  br i1 %niter.ncmp.3, label %for.cond.cleanup.loopexit.unr-lcssa.loopexit, label %for.body, !dbg !28, !llvm.loop !38

return:                                           ; preds = %if.end, %for.cond.cleanup.loopexit, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %.pre, %for.cond.cleanup.loopexit ], [ 0, %if.end ], !dbg !19
  ret i32 %retval.0, !dbg !41

; uselistorder directives
  uselistorder i32 %add.3, { 2, 0, 1 }
  uselistorder i64 %lsr.iv, { 8, 0, 7, 1, 6, 2, 4, 3, 5 }
  uselistorder i64 %indvars.iv.epil, { 2, 1, 0 }
  uselistorder i32* %0, { 0, 1, 2, 3, 5, 4, 6 }
  uselistorder i64 4, { 6, 0, 5, 1, 2, 3, 4 }
  uselistorder i64 1, { 0, 3, 2, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 2, 6, 5, 3, 4, 7, 9, 8 }
  uselistorder label %return, { 1, 0, 2 }
  uselistorder label %for.body.epil, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main() local_unnamed_addr #0 !dbg !42 {
entry:
  ret i32 0, !dbg !45

; uselistorder directives
  uselistorder i32 0, { 4, 2, 3, 0, 1, 5 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/localmem-tests/alloca.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/localmem-tests")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 e9e62cf08636a61a96ae6bd6404a0900be4363e0)"}
!10 = distinct !DISubprogram(name: "alloca_0", scope: !11, file: !11, line: 3, type: !12, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!11 = !DIFile(filename: "localmem-tests/alloca.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!12 = !DISubroutineType(types: !13)
!13 = !{!5, !5}
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !11, line: 3, type: !5)
!16 = !DILocalVariable(name: "p", scope: !10, file: !11, line: 8, type: !4)
!17 = !DILocalVariable(name: "i", scope: !18, file: !11, line: 11, type: !5)
!18 = distinct !DILexicalBlock(scope: !10, file: !11, line: 11, column: 3)
!19 = !DILocation(line: 0, scope: !10)
!20 = !DILocation(line: 5, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !10, file: !11, line: 5, column: 7)
!22 = !DILocation(line: 5, column: 7, scope: !10)
!23 = !DILocation(line: 8, column: 18, scope: !10)
!24 = !DILocation(line: 9, column: 8, scope: !10)
!25 = !DILocation(line: 0, scope: !18)
!26 = !DILocation(line: 11, column: 21, scope: !27)
!27 = distinct !DILexicalBlock(scope: !18, file: !11, line: 11, column: 3)
!28 = !DILocation(line: 11, column: 3, scope: !18)
!29 = !DILocation(line: 12, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !11, line: 11, column: 31)
!31 = !DILocation(line: 12, column: 22, scope: !30)
!32 = !DILocation(line: 12, column: 19, scope: !30)
!33 = !DILocation(line: 12, column: 10, scope: !30)
!34 = !DILocation(line: 11, column: 26, scope: !27)
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !DILocation(line: 14, column: 10, scope: !10)
!38 = distinct !{!38, !28, !39, !40}
!39 = !DILocation(line: 13, column: 3, scope: !18)
!40 = !{!"llvm.loop.vectorize.width", i32 1}
!41 = !DILocation(line: 15, column: 1, scope: !10)
!42 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 17, type: !43, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!43 = !DISubroutineType(types: !44)
!44 = !{!5}
!45 = !DILocation(line: 19, column: 3, scope: !42)
