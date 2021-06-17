; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/dietlibc/memccpy_src.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memccpy_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i8* @memccpy(i8* %dst, i8* nocapture readonly %src, i32 %c, i32 %count) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i8* %dst, metadata !19, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %src, metadata !20, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 %c, metadata !21, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 %count, metadata !22, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %dst, metadata !23, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* %src, metadata !26, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 %count, metadata !22, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !29
  %tobool.not10 = icmp eq i32 %count, 0, !dbg !30
  br i1 %tobool.not10, label %cleanup, label %while.body.preheader, !dbg !30

while.body.preheader:                             ; preds = %entry
  %0 = zext i32 %count to i64, !dbg !30
  br label %while.body, !dbg !30

while.cond:                                       ; preds = %while.body
  call void @llvm.dbg.value(metadata i8* undef, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  call void @llvm.dbg.value(metadata i8* undef, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  call void @llvm.dbg.value(metadata i32 undef, metadata !22, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !29
  call void @llvm.dbg.value(metadata i32 undef, metadata !22, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !29
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 1, !dbg !30
  %tmp = trunc i64 %lsr.iv.next to i32
  %tmp15 = trunc i64 %0 to i32
  %tobool.not = icmp eq i32 %tmp15, %tmp, !dbg !30
  br i1 %tobool.not, label %cleanup, label %while.body, !dbg !30, !llvm.loop !31

while.body:                                       ; preds = %while.body.preheader, %while.cond
  %lsr.iv = phi i64 [ 0, %while.body.preheader ], [ %lsr.iv.next, %while.cond ]
  %scevgep = getelementptr i8, i8* %src, i64 %lsr.iv, !dbg !34
  %scevgep18 = getelementptr i8, i8* %dst, i64 %lsr.iv, !dbg !34
  call void @llvm.dbg.value(metadata i8* undef, metadata !26, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression()), !dbg !29
  %1 = load i8, i8* %scevgep, align 1, !dbg !35
  call void @llvm.dbg.value(metadata i8* undef, metadata !23, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  store i8 %1, i8* %scevgep18, align 1, !dbg !37
  %2 = load i8, i8* %scevgep, align 1, !dbg !38
  %conv = sext i8 %2 to i32, !dbg !38
  %cmp = icmp eq i32 %conv, %c, !dbg !40
  call void @llvm.dbg.value(metadata i8* undef, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !29
  br i1 %cmp, label %while.body.cleanup.loopexit_crit_edge, label %while.cond, !dbg !41

while.body.cleanup.loopexit_crit_edge:            ; preds = %while.body
  %scevgep16 = getelementptr i8, i8* %dst, i64 1, !dbg !41
  %scevgep17 = getelementptr i8, i8* %scevgep16, i64 %lsr.iv, !dbg !41
  br label %cleanup, !dbg !41

cleanup:                                          ; preds = %while.body.cleanup.loopexit_crit_edge, %while.cond, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %scevgep17, %while.body.cleanup.loopexit_crit_edge ], [ null, %while.cond ], !dbg !29
  ret i8* %retval.0, !dbg !42

; uselistorder directives
  uselistorder i64 %lsr.iv, { 1, 0, 2, 3 }
  uselistorder i64 %lsr.iv.next, { 1, 0 }
  uselistorder i8* %dst, { 1, 0 }
  uselistorder label %while.body, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !48, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i8** %argv, metadata !49, metadata !DIExpression()), !dbg !50
  ret i32 0, !dbg !51

; uselistorder directives
  uselistorder i32 0, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 5, 4, 6, 7, 2, 1, 8, 11, 10, 9, 0, 3, 12, 13, 14, 17, 16, 15 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memccpy_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/dietlibc")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!9 = distinct !DISubprogram(name: "memccpy", scope: !10, file: !10, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!10 = !DIFile(filename: "dietlibc/memccpy_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !4, !13, !15, !16}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 2, baseType: !17)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23, !26}
!19 = !DILocalVariable(name: "dst", arg: 1, scope: !9, file: !10, line: 3, type: !4)
!20 = !DILocalVariable(name: "src", arg: 2, scope: !9, file: !10, line: 3, type: !13)
!21 = !DILocalVariable(name: "c", arg: 3, scope: !9, file: !10, line: 3, type: !15)
!22 = !DILocalVariable(name: "count", arg: 4, scope: !9, file: !10, line: 3, type: !16)
!23 = !DILocalVariable(name: "a", scope: !9, file: !10, line: 4, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DILocalVariable(name: "b", scope: !9, file: !10, line: 5, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!29 = !DILocation(line: 0, scope: !9)
!30 = !DILocation(line: 6, column: 5, scope: !9)
!31 = distinct !{!31, !30, !32, !33}
!32 = !DILocation(line: 14, column: 5, scope: !9)
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !DILocation(line: 6, column: 17, scope: !9)
!35 = !DILocation(line: 7, column: 16, scope: !36)
!36 = distinct !DILexicalBlock(scope: !9, file: !10, line: 6, column: 21)
!37 = !DILocation(line: 7, column: 14, scope: !36)
!38 = !DILocation(line: 8, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !10, line: 8, column: 13)
!40 = !DILocation(line: 8, column: 16, scope: !39)
!41 = !DILocation(line: 8, column: 13, scope: !36)
!42 = !DILocation(line: 16, column: 1, scope: !9)
!43 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 18, type: !44, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!44 = !DISubroutineType(types: !45)
!45 = !{!15, !15, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!47 = !{!48, !49}
!48 = !DILocalVariable(name: "argc", arg: 1, scope: !43, file: !10, line: 18, type: !15)
!49 = !DILocalVariable(name: "argv", arg: 2, scope: !43, file: !10, line: 18, type: !46)
!50 = !DILocation(line: 0, scope: !43)
!51 = !DILocation(line: 27, column: 3, scope: !43)
