; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s162.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s162.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s162(i32 %k) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %k, metadata !13, metadata !DIExpression()), !dbg !18
  %cmp = icmp sgt i32 %k, 0, !dbg !19
  br i1 %cmp, label %vector.scevcheck, label %if.end, !dbg !20

vector.scevcheck:                                 ; preds = %entry
  %0 = icmp sgt i32 %k, 2147451649, !dbg !21
  br i1 %0, label %for.body.prol, label %vector.memcheck, !dbg !21

vector.memcheck:                                  ; preds = %vector.scevcheck
  %1 = sext i32 %k to i64, !dbg !21
  %scevgep = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %1, !dbg !21
  %2 = add nsw i64 %1, 31999, !dbg !21
  %scevgep19 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %2, !dbg !21
  %bound0 = icmp ugt i32* %scevgep19, getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 0), !dbg !21
  %bound1 = icmp ult i32* %scevgep, getelementptr inbounds ([32000 x i32], [32000 x i32]* @a, i64 0, i64 31999), !dbg !21
  %found.conflict = and i1 %bound0, %bound1, !dbg !21
  br i1 %found.conflict, label %for.body.prol, label %vector.body.preheader, !dbg !21

vector.body.preheader:                            ; preds = %vector.memcheck
  %3 = zext i32 %k to i64, !dbg !21
  br label %vector.body, !dbg !21

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ], !dbg !22
  %4 = add i64 %3, %index, !dbg !24
  %tmp59 = trunc i64 %4 to i32
  %5 = sext i32 %tmp59 to i64, !dbg !24
  %6 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %5, !dbg !24
  %7 = bitcast i32* %6 to <4 x i32>*, !dbg !24
  %wide.load = load <4 x i32>, <4 x i32>* %7, align 4, !dbg !24, !alias.scope !26
  %8 = getelementptr i32, i32* %6, i64 4, !dbg !24
  %9 = bitcast i32* %8 to <4 x i32>*, !dbg !24
  %wide.load21 = load <4 x i32>, <4 x i32>* %9, align 4, !dbg !24, !alias.scope !26
  %10 = shl nuw nsw i64 %index, 2, !dbg !29
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %10, !dbg !29
  %uglygep4445 = bitcast i8* %uglygep44 to <4 x i32>*
  %wide.load22 = load <4 x i32>, <4 x i32>* %uglygep4445, align 16, !dbg !29
  %11 = shl nuw nsw i64 %index, 2, !dbg !29
  %uglygep46 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %11, !dbg !29
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 1, !dbg !29
  %wide.load23 = load <4 x i32>, <4 x i32>* %scevgep48, align 16, !dbg !29
  %12 = shl nuw nsw i64 %index, 2, !dbg !30
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %12, !dbg !30
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %wide.load24 = load <4 x i32>, <4 x i32>* %uglygep4950, align 16, !dbg !30
  %13 = shl nuw nsw i64 %index, 2, !dbg !30
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %13, !dbg !30
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 1, !dbg !30
  %wide.load25 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !30
  %14 = mul <4 x i32> %wide.load24, %wide.load22, !dbg !31
  %15 = mul <4 x i32> %wide.load25, %wide.load23, !dbg !31
  %16 = add <4 x i32> %14, %wide.load, !dbg !32
  %17 = add <4 x i32> %15, %wide.load21, !dbg !32
  %18 = shl nuw nsw i64 %index, 2, !dbg !33
  %uglygep54 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %18, !dbg !33
  %uglygep5455 = bitcast i8* %uglygep54 to <4 x i32>*
  store <4 x i32> %16, <4 x i32>* %uglygep5455, align 16, !dbg !33, !alias.scope !34, !noalias !26
  %19 = shl nuw nsw i64 %index, 2, !dbg !33
  %uglygep56 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %19, !dbg !33
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %scevgep58 = getelementptr <4 x i32>, <4 x i32>* %uglygep5657, i64 1, !dbg !33
  store <4 x i32> %17, <4 x i32>* %scevgep58, align 16, !dbg !33, !alias.scope !34, !noalias !26
  %index.next = add i64 %index, 8, !dbg !22
  %20 = icmp eq i64 %index.next, 31992, !dbg !22
  br i1 %20, label %for.body.prol, label %vector.body, !dbg !22, !llvm.loop !36

for.body.prol:                                    ; preds = %vector.body, %vector.memcheck, %vector.scevcheck
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 31992, %vector.body ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !14, metadata !DIExpression()), !dbg !39
  %21 = trunc i64 %indvars.iv.ph to i32, !dbg !40
  %add.prol = add i32 %21, %k, !dbg !40
  %idxprom.prol = sext i32 %add.prol to i64, !dbg !24
  %arrayidx.prol = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom.prol, !dbg !24
  %22 = load i32, i32* %arrayidx.prol, align 4, !dbg !24
  %arrayidx3.prol = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %indvars.iv.ph, !dbg !29
  %23 = load i32, i32* %arrayidx3.prol, align 16, !dbg !29
  %arrayidx5.prol = getelementptr [32000 x i32], [32000 x i32]* @c, i64 0, i64 %indvars.iv.ph, !dbg !30
  %24 = load i32, i32* %arrayidx5.prol, align 16, !dbg !30
  %mul.prol = mul i32 %24, %23, !dbg !31
  %add6.prol = add i32 %mul.prol, %22, !dbg !32
  %arrayidx8.prol = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %indvars.iv.ph, !dbg !41
  store i32 %add6.prol, i32* %arrayidx8.prol, align 16, !dbg !33
  call void @llvm.dbg.value(metadata i64 %indvars.iv.ph, metadata !14, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !39
  %25 = add nuw nsw i64 %indvars.iv.ph, -31998, !dbg !21
  %26 = zext i32 %k to i64, !dbg !21
  br label %for.body, !dbg !21

for.body:                                         ; preds = %for.body, %for.body.prol
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.body ], [ %25, %for.body.prol ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !14, metadata !DIExpression()), !dbg !39
  %27 = add i64 %26, %lsr.iv, !dbg !24
  %28 = add i64 %27, 31999, !dbg !24
  %tmp = trunc i64 %28 to i32
  %idxprom = sext i32 %tmp to i64, !dbg !24
  %arrayidx = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom, !dbg !24
  %29 = load i32, i32* %arrayidx, align 4, !dbg !24
  %30 = shl i64 %lsr.iv, 2, !dbg !29
  %uglygep37 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %30, !dbg !29
  %uglygep3738 = bitcast i8* %uglygep37 to i32*
  %scevgep39 = getelementptr i32, i32* %uglygep3738, i64 31999, !dbg !29
  %31 = load i32, i32* %scevgep39, align 4, !dbg !29
  %32 = shl i64 %lsr.iv, 2, !dbg !30
  %uglygep31 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %32, !dbg !30
  %uglygep3132 = bitcast i8* %uglygep31 to i32*
  %scevgep33 = getelementptr i32, i32* %uglygep3132, i64 31999, !dbg !30
  %33 = load i32, i32* %scevgep33, align 4, !dbg !30
  %mul = mul i32 %33, %31, !dbg !31
  %add6 = add i32 %mul, %29, !dbg !32
  %34 = shl i64 %lsr.iv, 2, !dbg !33
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %34, !dbg !33
  %uglygep26 = bitcast i8* %uglygep to i32*
  %scevgep27 = getelementptr i32, i32* %uglygep26, i64 31999, !dbg !33
  store i32 %add6, i32* %scevgep27, align 4, !dbg !33
  call void @llvm.dbg.value(metadata i64 undef, metadata !14, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !39
  %35 = add i64 %26, %lsr.iv, !dbg !24
  %36 = add i64 %35, 32000, !dbg !24
  %tmp43 = trunc i64 %36 to i32
  %idxprom.1 = sext i32 %tmp43 to i64, !dbg !24
  %arrayidx.1 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %idxprom.1, !dbg !24
  %37 = load i32, i32* %arrayidx.1, align 4, !dbg !24
  %38 = shl i64 %lsr.iv, 2, !dbg !29
  %uglygep40 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %38, !dbg !29
  %uglygep4041 = bitcast i8* %uglygep40 to i32*
  %scevgep42 = getelementptr i32, i32* %uglygep4041, i64 32000, !dbg !29
  %39 = load i32, i32* %scevgep42, align 4, !dbg !29
  %40 = shl i64 %lsr.iv, 2, !dbg !30
  %uglygep34 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %40, !dbg !30
  %uglygep3435 = bitcast i8* %uglygep34 to i32*
  %scevgep36 = getelementptr i32, i32* %uglygep3435, i64 32000, !dbg !30
  %41 = load i32, i32* %scevgep36, align 4, !dbg !30
  %mul.1 = mul i32 %41, %39, !dbg !31
  %add6.1 = add i32 %mul.1, %37, !dbg !32
  %42 = shl i64 %lsr.iv, 2, !dbg !33
  %uglygep28 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %42, !dbg !33
  %uglygep2829 = bitcast i8* %uglygep28 to i32*
  %scevgep30 = getelementptr i32, i32* %uglygep2829, i64 32000, !dbg !33
  store i32 %add6.1, i32* %scevgep30, align 4, !dbg !33
  call void @llvm.dbg.value(metadata i64 undef, metadata !14, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !39
  %lsr.iv.next = add i64 %lsr.iv, 2, !dbg !42
  %exitcond.not.1 = icmp eq i64 %lsr.iv.next, 0, !dbg !42
  br i1 %exitcond.not.1, label %if.end, label %for.body, !dbg !21, !llvm.loop !43

if.end:                                           ; preds = %for.body, %entry
  ret i32 0, !dbg !44

; uselistorder directives
  uselistorder i64 %lsr.iv, { 8, 5, 3, 1, 0, 6, 4, 2, 7 }
  uselistorder i32* %6, { 1, 0 }
  uselistorder i64 %index, { 7, 1, 2, 3, 4, 5, 6, 0 }
  uselistorder i64 32000, { 3, 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 3, 0, 1 }
  uselistorder [32000 x i32]* @c, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 2, 3, 0, 1 }
  uselistorder [32000 x i32]* @b, { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 3, 0, 1 }
  uselistorder i64 2, { 12, 10, 8, 6, 11, 9, 7, 0, 1, 2, 3, 4, 5 }
  uselistorder i64 31999, { 2, 1, 0, 3, 5, 4 }
  uselistorder i64 0, { 0, 2, 15, 3, 4, 5, 6, 7, 8, 11, 1, 14, 9, 10, 12, 13 }
  uselistorder [32000 x i32]* @a, { 1, 9, 2, 3, 0, 5, 8, 4, 6, 7 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 4, 3, 1, 2, 5 }
  uselistorder i32 %k, { 1, 2, 0, 4, 3, 5 }
  uselistorder label %vector.body, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s162.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s162", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s162.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "k", arg: 1, scope: !7, file: !8, line: 3, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 9, type: !11)
!15 = distinct !DILexicalBlock(scope: !16, file: !8, line: 9, column: 4)
!16 = distinct !DILexicalBlock(scope: !17, file: !8, line: 8, column: 14)
!17 = distinct !DILexicalBlock(scope: !7, file: !8, line: 8, column: 7)
!18 = !DILocation(line: 0, scope: !7)
!19 = !DILocation(line: 8, column: 9, scope: !17)
!20 = !DILocation(line: 8, column: 7, scope: !7)
!21 = !DILocation(line: 9, column: 4, scope: !15)
!22 = !DILocation(line: 9, column: 32, scope: !23)
!23 = distinct !DILexicalBlock(scope: !15, file: !8, line: 9, column: 4)
!24 = !DILocation(line: 10, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !23, file: !8, line: 9, column: 36)
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !DILocation(line: 10, column: 23, scope: !25)
!30 = !DILocation(line: 10, column: 30, scope: !25)
!31 = !DILocation(line: 10, column: 28, scope: !25)
!32 = !DILocation(line: 10, column: 21, scope: !25)
!33 = !DILocation(line: 10, column: 10, scope: !25)
!34 = !{!35}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !21, !37, !38}
!37 = !DILocation(line: 11, column: 4, scope: !15)
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !DILocation(line: 0, scope: !15)
!40 = !DILocation(line: 10, column: 16, scope: !25)
!41 = !DILocation(line: 10, column: 5, scope: !25)
!42 = !DILocation(line: 9, column: 22, scope: !23)
!43 = distinct !{!43, !21, !37, !38}
!44 = !DILocation(line: 13, column: 2, scope: !7)
