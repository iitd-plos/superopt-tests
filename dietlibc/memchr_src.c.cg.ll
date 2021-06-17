; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/dietlibc/memchr_src.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memchr_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i8* @memchr(i8* readonly %s, i32 %c, i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %c, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i8* %s, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !23, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !27
  %tobool.not6 = icmp eq i32 %n, 0, !dbg !28
  br i1 %tobool.not6, label %cleanup, label %for.body.preheader, !dbg !28

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !28

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %dec8.in = phi i32 [ %dec8, %for.inc ], [ %n, %for.body.preheader ]
  %pc.07 = phi i8* [ %incdec.ptr, %for.inc ], [ %s, %for.body.preheader ]
  %dec8 = add i32 %dec8.in, -1, !dbg !30
  call void @llvm.dbg.value(metadata i8* %pc.07, metadata !24, metadata !DIExpression()), !dbg !27
  %0 = load i8, i8* %pc.07, align 1, !dbg !32
  %conv = zext i8 %0 to i32, !dbg !32
  %cmp = icmp eq i32 %conv, %c, !dbg !35
  br i1 %cmp, label %cleanup, label %for.inc, !dbg !36

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i8, i8* %pc.07, i64 1, !dbg !37
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %dec8, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %dec8, metadata !23, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !27
  %tobool.not = icmp eq i32 %dec8, 0, !dbg !28
  br i1 %tobool.not, label %cleanup, label %for.body, !dbg !28, !llvm.loop !38

cleanup:                                          ; preds = %for.inc, %for.body, %entry
  %retval.0 = phi i8* [ null, %entry ], [ null, %for.inc ], [ %pc.07, %for.body ], !dbg !27
  ret i8* %retval.0, !dbg !41

; uselistorder directives
  uselistorder i8* %pc.07, { 0, 2, 1 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 !dbg !42 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !49, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i8** %argv, metadata !50, metadata !DIExpression()), !dbg !51
  ret i32 0, !dbg !52

; uselistorder directives
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 3, 2, 4, 6, 5, 0, 1, 7, 8, 10, 9 }
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
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memchr_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/dietlibc")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!11 = distinct !DISubprogram(name: "memchr", scope: !12, file: !12, line: 4, type: !13, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!12 = !DIFile(filename: "dietlibc/memchr_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 2, baseType: !19)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !12, line: 4, type: !15)
!22 = !DILocalVariable(name: "c", arg: 2, scope: !11, file: !12, line: 4, type: !17)
!23 = !DILocalVariable(name: "n", arg: 3, scope: !11, file: !12, line: 4, type: !18)
!24 = !DILocalVariable(name: "pc", scope: !11, file: !12, line: 5, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!27 = !DILocation(line: 0, scope: !11)
!28 = !DILocation(line: 6, column: 3, scope: !29)
!29 = distinct !DILexicalBlock(scope: !11, file: !12, line: 6, column: 3)
!30 = !DILocation(line: 6, column: 10, scope: !31)
!31 = distinct !DILexicalBlock(scope: !29, file: !12, line: 6, column: 3)
!32 = !DILocation(line: 7, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !12, line: 7, column: 9)
!34 = distinct !DILexicalBlock(scope: !31, file: !12, line: 6, column: 19)
!35 = !DILocation(line: 7, column: 13, scope: !33)
!36 = !DILocation(line: 7, column: 9, scope: !34)
!37 = !DILocation(line: 6, column: 15, scope: !31)
!38 = distinct !{!38, !28, !39, !40}
!39 = !DILocation(line: 9, column: 3, scope: !29)
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !DILocation(line: 11, column: 1, scope: !11)
!42 = distinct !DISubprogram(name: "main", scope: !12, file: !12, line: 14, type: !43, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!43 = !DISubroutineType(types: !44)
!44 = !{!17, !17, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !{!49, !50}
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !42, file: !12, line: 14, type: !17)
!50 = !DILocalVariable(name: "argv", arg: 2, scope: !42, file: !12, line: 14, type: !45)
!51 = !DILocation(line: 0, scope: !42)
!52 = !DILocation(line: 19, column: 3, scope: !42)
