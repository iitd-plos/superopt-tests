; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/dietlibc/memrchr_dst.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memrchr_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i8* @memrchr(i8* readonly %s, i32 %c, i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %c, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !23, metadata !DIExpression()), !dbg !27
  %cmp.not = icmp eq i32 %n, 0, !dbg !28
  br i1 %cmp.not, label %cleanup, label %if.then, !dbg !30

if.then:                                          ; preds = %entry
  %idx.ext = zext i32 %n to i64, !dbg !31
  call void @llvm.dbg.value(metadata i8* undef, metadata !24, metadata !DIExpression()), !dbg !27
  %0 = trunc i32 %c to i8, !dbg !33
  br label %do.body, !dbg !36

do.body:                                          ; preds = %do.cond, %if.then
  %lsr.iv = phi i64 [ %lsr.iv.next, %do.cond ], [ %idx.ext, %if.then ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 undef, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i8* undef, metadata !24, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !27
  %sunkaddr = getelementptr i8, i8* %s, i64 %lsr.iv, !dbg !37
  %sunkaddr16 = getelementptr i8, i8* %sunkaddr, i64 -1, !dbg !37
  %1 = load i8, i8* %sunkaddr16, align 1, !dbg !37
  %cmp3 = icmp eq i8 %1, %0, !dbg !38
  br i1 %cmp3, label %do.body.cleanup.loopexit_crit_edge, label %do.cond, !dbg !39

do.cond:                                          ; preds = %do.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !23, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !27
  %lsr.iv.next = add nsw i64 %lsr.iv, -1, !dbg !40
  %tmp = trunc i64 %lsr.iv.next to i32
  %cmp6.not = icmp eq i32 %tmp, 0, !dbg !40
  br i1 %cmp6.not, label %cleanup, label %do.body, !dbg !41, !llvm.loop !42

do.body.cleanup.loopexit_crit_edge:               ; preds = %do.body
  %scevgep = getelementptr i8, i8* %s, i64 -1, !dbg !39
  %scevgep13 = getelementptr i8, i8* %scevgep, i64 %lsr.iv, !dbg !39
  br label %cleanup, !dbg !39

cleanup:                                          ; preds = %do.body.cleanup.loopexit_crit_edge, %do.cond, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %scevgep13, %do.body.cleanup.loopexit_crit_edge ], [ null, %do.cond ], !dbg !27
  ret i8* %retval.0, !dbg !45

; uselistorder directives
  uselistorder i64 %lsr.iv, { 1, 2, 0 }
  uselistorder i64 -1, { 1, 2, 0 }
  uselistorder i8* %s, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i8** %argv, metadata !54, metadata !DIExpression()), !dbg !55
  ret i32 0, !dbg !56

; uselistorder directives
  uselistorder i32 0, { 1, 0, 2 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 1, 0, 2, 3, 5, 4, 6, 7, 9, 8 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memrchr_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/dietlibc")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!11 = distinct !DISubprogram(name: "memrchr", scope: !12, file: !12, line: 4, type: !13, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!12 = !DIFile(filename: "dietlibc/memrchr_dst.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 3, baseType: !19)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !12, line: 4, type: !15)
!22 = !DILocalVariable(name: "c", arg: 2, scope: !11, file: !12, line: 4, type: !17)
!23 = !DILocalVariable(name: "n", arg: 3, scope: !11, file: !12, line: 4, type: !18)
!24 = !DILocalVariable(name: "cp", scope: !11, file: !12, line: 5, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!27 = !DILocation(line: 0, scope: !11)
!28 = !DILocation(line: 7, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !11, file: !12, line: 7, column: 9)
!30 = !DILocation(line: 7, column: 9, scope: !11)
!31 = !DILocation(line: 8, column: 33, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !12, line: 7, column: 17)
!33 = !DILocation(line: 0, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !12, line: 10, column: 17)
!35 = distinct !DILexicalBlock(scope: !32, file: !12, line: 9, column: 12)
!36 = !DILocation(line: 9, column: 9, scope: !32)
!37 = !DILocation(line: 10, column: 17, scope: !34)
!38 = !DILocation(line: 10, column: 25, scope: !34)
!39 = !DILocation(line: 10, column: 17, scope: !35)
!40 = !DILocation(line: 12, column: 22, scope: !32)
!41 = !DILocation(line: 12, column: 9, scope: !35)
!42 = distinct !{!42, !36, !43, !44}
!43 = !DILocation(line: 12, column: 26, scope: !32)
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !DILocation(line: 15, column: 1, scope: !11)
!46 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 17, type: !47, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!47 = !DISubroutineType(types: !48)
!48 = !{!17, !17, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "argc", arg: 1, scope: !46, file: !12, line: 17, type: !17)
!54 = !DILocalVariable(name: "argv", arg: 2, scope: !46, file: !12, line: 17, type: !49)
!55 = !DILocation(line: 0, scope: !46)
!56 = !DILocation(line: 22, column: 3, scope: !46)
