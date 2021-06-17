; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/dietlibc/memrchr_src.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memrchr_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i8* @memrchr(i8* readonly %s, i32 %c, i32 %n) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !19, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %c, metadata !20, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %n, metadata !21, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %s, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* null, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %n, metadata !27, metadata !DIExpression()), !dbg !28
  %tobool.not8 = icmp eq i32 %n, 0, !dbg !29
  br i1 %tobool.not8, label %for.end, label %for.body.preheader, !dbg !29

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !29

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.011 = phi i32 [ %dec, %for.body ], [ %n, %for.body.preheader ]
  %last.010 = phi i8* [ %spec.select, %for.body ], [ null, %for.body.preheader ]
  %t.09 = phi i8* [ %incdec.ptr, %for.body ], [ %s, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.011, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %last.010, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %t.09, metadata !22, metadata !DIExpression()), !dbg !28
  %0 = load i8, i8* %t.09, align 1, !dbg !31
  %conv = sext i8 %0 to i32, !dbg !31
  %cmp = icmp eq i32 %conv, %c, !dbg !35
  %spec.select = select i1 %cmp, i8* %t.09, i8* %last.010, !dbg !36
  call void @llvm.dbg.value(metadata i8* %spec.select, metadata !26, metadata !DIExpression()), !dbg !28
  %incdec.ptr = getelementptr i8, i8* %t.09, i64 1, !dbg !37
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !22, metadata !DIExpression()), !dbg !28
  %dec = add i32 %i.011, -1, !dbg !38
  call void @llvm.dbg.value(metadata i32 %dec, metadata !27, metadata !DIExpression()), !dbg !28
  %tobool.not = icmp eq i32 %dec, 0, !dbg !29
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !29, !llvm.loop !39

for.end:                                          ; preds = %for.body, %entry
  %last.0.lcssa = phi i8* [ null, %entry ], [ %spec.select, %for.body ], !dbg !28
  call void @llvm.dbg.value(metadata i8* %last.0.lcssa, metadata !26, metadata !DIExpression()), !dbg !28
  ret i8* %last.0.lcssa, !dbg !42

; uselistorder directives
  uselistorder i8* %t.09, { 1, 2, 0 }
  uselistorder i8* null, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: noinline norecurse nounwind readnone
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #1 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !49, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i8** %argv, metadata !50, metadata !DIExpression()), !dbg !51
  ret i32 0, !dbg !52

; uselistorder directives
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 5, 4, 3, 8, 6, 7, 2, 1, 0, 9, 10, 11, 14, 12, 13 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/dietlibc/memrchr_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/dietlibc")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!9 = distinct !DISubprogram(name: "memrchr", scope: !10, file: !10, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!10 = !DIFile(filename: "dietlibc/memrchr_src.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13, !15, !16}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 2, baseType: !17)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !26, !27}
!19 = !DILocalVariable(name: "s", arg: 1, scope: !9, file: !10, line: 3, type: !13)
!20 = !DILocalVariable(name: "c", arg: 2, scope: !9, file: !10, line: 3, type: !15)
!21 = !DILocalVariable(name: "n", arg: 3, scope: !9, file: !10, line: 3, type: !16)
!22 = !DILocalVariable(name: "t", scope: !9, file: !10, line: 4, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DILocalVariable(name: "last", scope: !9, file: !10, line: 5, type: !23)
!27 = !DILocalVariable(name: "i", scope: !9, file: !10, line: 6, type: !15)
!28 = !DILocation(line: 0, scope: !9)
!29 = !DILocation(line: 7, column: 3, scope: !30)
!30 = distinct !DILexicalBlock(scope: !9, file: !10, line: 7, column: 3)
!31 = !DILocation(line: 8, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !10, line: 8, column: 9)
!33 = distinct !DILexicalBlock(scope: !34, file: !10, line: 7, column: 21)
!34 = distinct !DILexicalBlock(scope: !30, file: !10, line: 7, column: 3)
!35 = !DILocation(line: 8, column: 11, scope: !32)
!36 = !DILocation(line: 8, column: 9, scope: !33)
!37 = !DILocation(line: 10, column: 5, scope: !33)
!38 = !DILocation(line: 7, column: 16, scope: !34)
!39 = distinct !{!39, !29, !40, !41}
!40 = !DILocation(line: 11, column: 3, scope: !30)
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !DILocation(line: 12, column: 3, scope: !9)
!43 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 15, type: !44, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!44 = !DISubroutineType(types: !45)
!45 = !{!15, !15, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!48 = !{!49, !50}
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !43, file: !10, line: 15, type: !15)
!50 = !DILocalVariable(name: "argv", arg: 2, scope: !43, file: !10, line: 15, type: !46)
!51 = !DILocation(line: 0, scope: !43)
!52 = !DILocation(line: 22, column: 3, scope: !43)
